AdmZip = require 'adm-zip'
async = require 'async'
cheerio = require 'cheerio'
fs = require 'fs'
path = require 'path'
request = require 'request'

max_schemes = 1000
base_url="http://www.vim.org/"
schemes_url = """#{base_url}scripts/script_search_results.php?
&script_type=color%20scheme&show_me=#{max_schemes}"""

get_html = (link, cb) ->
  request link, (err, resp, html) ->
    console.log "Fetch page #{link}"
    if err
      throw err
    cb null, html

download_vim_org = (scheme, cb) ->
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

async.auto
  get_pages_links: (next) ->
    request schemes_url, (error, response, html) ->
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
              link = [base_url, el.find('a').attr('href')].join('')
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
                  [base_url, 'scripts/', $(@).find('a').attr('href')].join('')
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
      async.map schemes, download_vim_org, (err, res) ->
        flat = {}
        for files in res
          for file in files
            for k,v of file
              flat[k] = v
        next null, flat
  ]

  statistics: ['download_schemes'
    (next, res) ->
      res = res.download_schemes
      console.log "Downloaded #{Object.keys(res).length} schemes"
      sorted_res = {}
      Object.keys(res).sort().forEach((key) ->
        sorted_res[key] = res[key]
      )
      console.log sorted_res
  ]
