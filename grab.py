#!/usr/bin/env python

import urllib2
import re
import os
import zipfile
from StringIO import StringIO

BASE_URL = 'http://www.vim.org/scripts/%s'
SCHEMES_URL = 'http://www.vim.org/scripts/script_search_results.php?\
&script_type=color%20scheme&show_me=1000'
OUT_PATH = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'colors')


def get_scripts():
    response = urllib2.urlopen(SCHEMES_URL)
    data = response.read()
    re_ = re.compile(r'script.php\?script_id=\d+')
    links = re.findall(re_, data)
    links = set(links)
    return [BASE_URL % link for link in links]


def get_script(link):
    response = urllib2.urlopen(link)
    data = response.read()
    re_ = re.compile(r'download_script.php\?src_id=\d+')
    script_link = re.findall(re_, data)
    if not script_link:
        return {'name': None}
    link = BASE_URL % script_link[0]
    re_ = re.compile(r'%s">(\S+)</a>' % script_link[0].replace('?', '\?'))
    name = re.findall(re_, data)[:1]
    if not name:
        return {'name': None}
    name = name[0]
    print 'Found: [%s](%s)' % (name, link)
    return {'name': name, 'link':link}


def save_colorscheme(colorscheme):
    resp = urllib2.urlopen(colorscheme['link'])
    data = resp.read()
    if colorscheme['name'].endswith('.vim'):
        file_ = open(os.path.join(OUT_PATH, colorscheme['name']), 'w')
        file_.write(data)
        file_.close()
    if colorscheme['name'].endswith('.zip'):
        zfile = zipfile.ZipFile(StringIO(data))
        for zf_name in zfile.namelist():
            try:
                if zf_name.endswith('.vim') and\
                    zf_name.split('/')[-2] == 'colors':
                    file_ = open(
                        os.path.join(OUT_PATH, os.path.basename(zf_name)),
                        'w'
                    )
                    file_.write(zfile.read(zf_name))
                    file_.close()
            except IndexError:
                pass
    # todo: add .gz and .tgz


def run():
    links = get_scripts()
    links = [get_script(link) for link in links]
    colorschemes = [link for link in links if link['name']]
    len_ = len(colorschemes)
    print "Found %s colorschemes" % len_
    for i, colorscheme in enumerate(colorschemes):
        print 'Download %s of %s - %s' % (i+1, len_, colorscheme['name'])
        save_colorscheme(colorscheme)

if __name__ == '__main__':
    run()
