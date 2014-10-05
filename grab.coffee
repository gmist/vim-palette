AdmZip = require 'adm-zip'
Promise = require 'bluebird'
cheerio = require 'cheerio'
fs = require 'fs'
path = require 'path'
request = Promise.promisify(require('request'))


github_base_url = "https://raw.githubusercontent.com"
vim_max_schemes = 1000
vim_base_url="http://www.vim.org/"
vim_search_schemes_url = """#{vim_base_url}scripts/script_search_results.php?
&script_type=color%20scheme&show_me=#{vim_max_schemes}"""


get_html = (link) ->
  request(link).then (result) ->
    return Promise.resolve(result[1])


download_scheme_vim_org = (scheme) ->
  request(scheme.download_link, {encoding: null}).spread (resp, body) ->
    filename = resp.headers['content-disposition']
    if /^attachment; filename=/.test filename
      filename = filename.replace /^attachment; filename=/, ''
      filename = path.join('./colors', filename)
      console.log """Downloading "#{filename}" color scheme"""
      if /\.vim$/i.test filename
        file = fs.createWriteStream(filename)
        file.once "open", ->
          file.write body
          file.end()
        res = {}
        res[path.basename(filename)] = scheme.link
        return res
      else if /\.zip$/i.test filename
        return new Promise((resolve) ->
          zfile = fs.createWriteStream(filename)
          zfile.once "open", ->
            zfile.write body
            zfile.end()
          zfile.on 'finish', ->
            zip = new AdmZip(filename)
            zipEntries = zip.getEntries()
            files = []
            zipEntries.forEach (zipEntry)->
              if /\.vim$/i.test zipEntry.entryName
                sp = zipEntry.entryName.split(path.sep)
                if sp.length > 1 and sp[sp.length-2] != "colors"
                  console.log "Skip, #{zipEntry.entryName} is not colorscheme"
                else
                  entry_basename = path.basename(zipEntry.entryName)
                  if not fs.existsSync path.join('colors', entry_basename)
                    console.log "Unpack #{zipEntry.entryName} from #{filename}"
                    zip.extractEntryTo zipEntry.entryName, "colors/", false, true
                    files.push entry_basename
            fs.unlink(filename)
            res = {}
            for file in files
              res[file] = scheme.link
            resolve res
        )
      else
        console.log "Oops, file format #{filename} is not supported"
        return null
    else
      filename = path.join('./colors', scheme.name)
      console.log """Downloading "#{filename}" color scheme"""
      file = fs.createWriteStream(filename)
      file.once "open", ->
        file.write body
        file.end()
      res = {}
      res[scheme.name] = scheme.download_link
      return res


grab_colors = ->
  get_html(vim_search_schemes_url).then((html) ->
    html_rows = []
    $ = cheerio.load(html)
    $('tr').each ->
      e = $(@)
      if e.html().indexOf('script.php?script_id=') != -1 and
      e.children().length == 5
        html_rows.push e.html()

    schemes = []
    for e in html_rows
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
    return Promise.resolve(schemes)
  ).then((schemes) ->
    console.log "Found #{Object.keys(schemes).length} schemes"
    console.log "Fetching download urls, please be patient..."
    get_download_link = (scheme) ->
      get_html(scheme.link).then((html) ->
        $ = cheerio.load(html)
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
        scheme['download_name'] = download_name
        scheme['download_link'] = download_link
        return scheme
      )
    return Promise.map(schemes, get_download_link)
  ).then((schemes) ->
    clear_schemes = []
    for scheme in schemes
      if scheme and scheme.download_link
        clear_schemes.push scheme
    return Promise.map(clear_schemes, download_scheme_vim_org)
  ).then((schemes) ->
    return new Promise((resolve) ->
      fs.readFile 'custom.json', 'utf-8', (err, data) ->
        data = JSON.parse(data).github
        raw = []
        pack = []
        Promise.map(data, get_html).then((github_res) ->
          github_schemes = []
          for el in github_res
            $ = cheerio.load(el)
            $('.js-directory-link').each ->
              e = $(@)
              name = e.text
              link = e.attr('href')
              if /\.vim$/.test name and link
                scheme = {}
                scheme['download_link'] = [
                  github_base_url, link.replace('/blob', '')].join('')
                scheme['name'] = link.split('/').pop()
                github_schemes.push scheme
          Promise.map(github_schemes, download_scheme_vim_org).then((gschemes) ->
            flat = {}
            for scheme in schemes
              for k, v of scheme
                flat[k] = v
            for scheme in gschemes
              for k, v of scheme
                flat[k] = v
            resolve(flat)
        )
      )
    )
  ).then((schemes) ->
    console.log "Total of #{Object.keys(schemes).length} color schemes:"
    sorted_res = {}
    Object.keys(schemes).sort().forEach((key) ->
      sorted_res[key] = schemes[key]
    )
    for k, v of sorted_res
      console.log "* [#{k}](#{v})"
  )

grab_colors()
