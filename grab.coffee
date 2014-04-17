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
      if /\.vim$/.test filename
        console.log """Downloading "#{filename}" color scheme"""
        resp.pipe fs.createWriteStream(filename)
  cb null, null

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
        schemes = schemes.filter (el)->
          el.download_link? and el.download_link isnt ''
        next null, schemes
  ]

  download_schemes: ['get_download_links'
    (next, res) ->
      schemes = res.get_download_links
      console.log "Prepare to downloading #{schemes.length} schemes"
      async.map schemes, download_vim_org, (err, res) ->
  ]
