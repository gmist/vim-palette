request = require('request')
cheerio = require('cheerio')
fs = require('fs')

max_schemes = 10
base_url="http://www.vim.org/"
schemes_url = """#{base_url}scripts/script_search_results.php?
&script_type=color%20scheme&show_me=#{max_schemes}"""

request schemes_url, (error, response, html) ->
  if error
    throw error

  rows = []
  $ = cheerio.load(html)
  $('tr').each ->
    e = $(@)
    if e.html().indexOf('script.php?script_id=') != -1 and e.children().length == 5
      rows.push e.html()
  console.log "Found #{rows.length} schemes"

  schemes = {}
  for e in rows
    $ = cheerio.load(e)
    name = link = description = ''
    $('td').each (index) ->
      el = $(@)
      switch index
        when 0
          name = el.text()
          link = [base_url, el.find('a').attr('href')].join('')
        when 4 then description = el.text()
        else
    if name and link
      schemes[name] = {"link": link, "description": description}

  for name, scheme of schemes
    console.log "Parse #{name} on #{scheme['link']}"
    request scheme.link, (error, response, html) ->
      if error
        console.log "Oops, unable to load #{name}"
        return
      $ = cheerio.load(html)
      last_download = $('td .rowodd').first()
      download_link = ''
      if last_download
        $(last_download).each (index) ->
          switch index
            when 0
              download_link = [base_url, $(@).find('a').attr('href')].join()
            else
      if download_link
        scheme['download_link'] = download_link
        console.log download_link
        schemes[name] = scheme


