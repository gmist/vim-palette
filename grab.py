#!/usr/bin/env python

import urllib2
import re
import os
import zipfile
from StringIO import StringIO

LIMIT = 1000
BASE_URL = 'http://www.vim.org/scripts/%s'
SCHEMES_URL = 'http://www.vim.org/scripts/script_search_results.php?\
&script_type=color%%20scheme&show_me=%s' % LIMIT
CUR_DIR = os.path.dirname(os.path.abspath(__file__))
OUT_PATH = os.path.join(CUR_DIR, 'colors')


def get_scripts():
    resp = urllib2.urlopen(SCHEMES_URL)
    data = resp.read()
    resp.close()
    re_ = re.compile(r'script.php\?script_id=\d+')
    links = re.findall(re_, data)
    links = set(links)
    return [BASE_URL % link for link in links]


def get_script(link):
    resp = urllib2.urlopen(link)
    data = resp.read()
    resp.close()
    re_ = re.compile(r'download_script.php\?src_id=\d+')
    script_link = re.findall(re_, data)
    if not script_link:
        return {'name': None}
    link = BASE_URL % script_link[0]
    re_ = re.compile(r'%s">(\S+)</a>' % script_link[0].replace('?', r'\?'))
    name = re.findall(re_, data)[:1]
    if not name:
        return {'name': None}
    name = name[0]
    print 'Found: [%s](%s)' % (name, link)
    return {'name': name, 'link':link}


def save_colorscheme(colorscheme):
    resp = urllib2.urlopen(colorscheme['link'])
    data = resp.read()
    resp.close()
    if colorscheme['name'].endswith('.vim'):
        file_ = open(os.path.join(OUT_PATH, colorscheme['name']), 'w')
        file_.write(data)
        file_.close()
        return True
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
                    return True
            except IndexError:
                pass
    # todo: add .gz and .tgz
    return False


def load_readme_links():
    rfile = open(os.path.join(CUR_DIR, 'README.md'), 'r')
    data = rfile.read()
    rfile.close()
    re_ = re.compile(r'\* \[\S+\.vim\]\(\S+\)')
    links = re.findall(re_, data)
    loaded_links = {}
    for link in links:
        name, link = link.split('](')
        loaded_links[name[3:]] = link[:-1]
    return loaded_links


def print_statistic(dwn_schemes):
    schemes = {}
    collisions = []
    scheme_files = os.listdir(OUT_PATH)
    rlinks = load_readme_links()
    for scheme in scheme_files:
        if scheme in rlinks.keys():
            schemes[scheme] = rlinks[scheme]
            if dwn_schemes.get(scheme)\
                    and rlinks[scheme] != dwn_schemes[scheme]:
                collisions.append(scheme)
        else:
            if scheme in dwn_schemes.keys():
                schemes[scheme] = dwn_schemes[scheme]
            else:
                schemes[scheme] = ''
    print 'Total of **%s** color schemes:' % len(scheme_files)
    print ''
    for scheme, link in sorted(schemes.items()):
        print '* [%s](%s)' % (scheme, link) if link else '* %s' % scheme
    print ''
    print 'Please check %s collision(s)' % len(collisions)
    for collision in collisions:
        print '* [%s](%s) | [%s](%s)' % (
                collision, rlinks[collision],
                collision, dwn_schemes[collision])


def run():
    links = get_scripts()
    links = [get_script(link) for link in links]
    colorschemes = [link for link in links if link['name']]
    len_ = len(colorschemes)
    print "found %s colorschemes" % len_
    dwn_schemes = {}
    for i, colorscheme in enumerate(colorschemes):
        print 'download %s of %s - %s' % (i+1, len_, colorscheme['name'])
        if save_colorscheme(colorscheme):
            dwn_schemes[colorscheme['name']] = colorscheme['link']
    print_statistic(dwn_schemes)


if __name__ == '__main__':
    run()
