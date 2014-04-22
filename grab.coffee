AdmZip = require 'adm-zip'
async = require 'async'
cheerio = require 'cheerio'
fs = require 'fs'
path = require 'path'
request = require 'request'

github_base_url = "https://raw.githubusercontent.com"
vim_max_schemes = 1000
vim_base_url="http://www.vim.org/"
vim_search_schemes_url = """#{vim_base_url}scripts/script_search_results.php?
&script_type=color%20scheme&show_me=#{vim_max_schemes}"""

get_html = (link, cb) ->
  request link, (err, resp, html) ->
    console.log "Fetch page #{link}"
    if err
      throw err
    cb null, html

download_scheme = (scheme, cb) ->
  req = request(scheme.download_link)
  req.on "response", (resp) ->
    filename = resp.headers['content-disposition']
    if /^attachment; filename=/.test filename
      filename = filename.replace /^attachment; filename=/, ''
      filename = path.join('./colors', filename)
      console.log """Downloading "#{filename}" color scheme"""
      if /\.vim$/.test filename
        resp.pipe fs.createWriteStream(filename)
        res = {}
        res[path.basename(filename)] = scheme.link
        res = [res]
        cb null, res
      else if /\.zip$/.test filename
        file = fs.createWriteStream(filename)
        resp.pipe file
        file.on 'finish', ->
          zip = new AdmZip(filename)
          zipEntries = zip.getEntries()
          files = []
          zipEntries.forEach (zipEntry)->
            if /\.vim$/.test zipEntry.entryName
              entry_basename = path.basename(zipEntry.entryName)
              if not fs.existsSync path.join('colors', entry_basename)
                console.log "Unpack #{zipEntry.entryName} from #{filename}"
                zip.extractEntryTo zipEntry.entryName, "colors/", false, true
                files.push entry_basename
          fs.unlink(filename)
          res = []
          for file in files
            el = {}
            el[file] = scheme.link
            res.push el
          cb null, res
      else
        console.log "Oops, file format #{filename} is not supported"
        cb null, []
    else
      filename = path.join('colors', scheme.name)
      console.log """Downloading "#{filename}" color scheme"""
      resp.pipe fs.createWriteStream(filename)
      res = {}
      res[scheme.name] = scheme.download_link
      cb null, res


async.auto
  get_pages_links: (next) ->
    request vim_search_schemes_url, (error, response, html) ->
      if error
        throw error

      schemes = []
      rows = []
      $ = cheerio.load(html)
      $('tr').each ->
        e = $(@)
        if e.html().indexOf('script.php?script_id=') != -1 and
        e.children().length == 5
          rows.push e.html()

      for e in rows
        $ = cheerio.load(e)
        name = ''
        link = ''
        description = ''
        $('td').each (index) ->
          el = $(@)
          switch index
            when 0
              name = el.text()
              link = [vim_base_url, el.find('a').attr('href')].join('')
            when 4 then description = el.text()
            else
        if name and link
          schemes.push {"name": name, "link": link, "description": description}
      console.log "Found #{Object.keys(schemes).length} schemes"
      console.log "Fetching download urls, please be patient..."
      next null, schemes


  get_download_links: [
    'get_pages_links'
    (next, res) ->
      schemes = res.get_pages_links
      urls =  (url.link for url in schemes)
      res = []
      async.map urls, get_html, (err, res) ->
        for el, main_index in res
          $ = cheerio.load(el)
          last_download = $('td .rowodd').first()
          download_link = ''
          download_name = ''
          if last_download
            $(last_download).each (index) ->
              switch index
                when 0
                  download_link =
                  [vim_base_url, 'scripts/', $(@).find('a').attr('href')].join('')
                  download_name = $(@).find('a').text()
                  break
                else
          schemes[main_index]['download_name'] = download_name
          res.push schemes[main_index]['download_link'] = download_link
        schemes = schemes.filter (el) ->
          el.download_link? and el.download_link isnt ''
        next null, schemes
  ]

  download_schemes: ['get_download_links'
    (next, res) ->
      schemes = res.get_download_links
      console.log "Prepare to downloading #{schemes.length} schemes"
      async.map schemes, download_scheme, (err, res) ->
        flat = {}
        for files in res
          for file in files
            for k,v of file
              flat[k] = v
        next null, flat
  ]

  github_custom: ['download_schemes'
    (next, res) ->
      schemes = res.download_schemes
      fs.readFile 'custom.json', 'utf-8', (err, data) ->
        data = JSON.parse(data).github
        raw = []
        pack = []
        async.map data, get_html, (err, github_res) ->
          github_schemes = []
          for el in github_res
            $ = cheerio.load(el)
            $('.js-directory-link').each ->
              e = $(@)
              name = e.text
              link = e.attr('href')
              if /\.vim/.test name and link
                scheme = {}
                scheme['download_link'] = [
                  github_base_url, link.replace('/blob', '')].join('')
                scheme['name'] = link.split('/').pop()
                github_schemes.push scheme
          async.map github_schemes, download_scheme, (err, github_schemes) ->
            flat = {}
            for scheme in github_schemes
              for k, v of scheme
                flat[k] = v
            for k of flat
              schemes[k] = flat[k]
            next null, schemes
  ]

  statistics: ['github_custom'
    (next, res) ->
      res = res.github_custom
      console.log "Total of #{Object.keys(res).length} color schemes:"
      sorted_res = {}
      Object.keys(res).sort().forEach((key) ->
        sorted_res[key] = res[key]
      )
      for k, v of sorted_res
        console.log "* [#{k}](#{v})"
  ]
