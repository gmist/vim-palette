"  ________  ___  ________  ________  ________   ___  ________
" |\   ____\|\  \|\   ___ \|\   __  \|\   ___  \|\  \|\   __  \
" \ \  \___|\ \  \ \  \_|\ \ \  \|\  \ \  \\ \  \ \  \ \  \|\  \
"  \ \_____  \ \  \ \  \ \\ \ \  \\\  \ \  \\ \  \ \  \ \   __  \
"   \|____|\  \ \  \ \  \_\\ \ \  \\\  \ \  \\ \  \ \  \ \  \ \  \
"     ____\_\  \ \__\ \_______\ \_______\ \__\\ \__\ \__\ \__\ \__\
"    |\_________\|__|\|_______|\|_______|\|__| \|__|\|__|\|__|\|__|
"    \|_________|


" A Vim colorscheme
" Author:       Alessandro Yorba
" Script URL:   https://github.com/AlessandroYorba/Sidonia

" Copyright (c) 2017 Alessandro Yorba
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.

"=================================================================================
" BASIC TERMINAL COLORS:
"=================================================================================
"     Foreground   #c1c9d4              |      Selection     #74929f             |
"     Background   #33434f              |      Selected Text #33434f             |
"     CursorColor  #ffffff              |                                        |
"     Bold         #ffffff              |
"     Links        #e64976              |
"=================================================================================
" ANSI COLORS:
"=================================================================================
"---------------------------------------|-----------------------------------------
"     NORMAL       Hex          xterm   |      BRIGHT       Hex          xterm   |
"---------------------------------------|-----------------------------------------
"     Black        #33434f      0       |      brBlack      #495f71      8       |
"     Red          #e64976      1       |      brRed        #e64976      9       |
"     Green        #5b843e      2       |      brGreen      #5b843e      10      |
"     Yellow       #ffffff      3       |      brYellow     #ffffff      11      |
"     Blue         #8fb4c4      4       |      brBlue       #8fb4c4      12      |
"     Magenta      #896492      5       |      brMagenta    #896492      13      |
"     Cyan         #008097      6       |      brCyan       #008097      14      |
"     White        #74929f      7       |      brWhite      #c1c9d4      15      |
"---------------------------------------|-----------------------------------------

"=================================================================================
" SETUP:
"=================================================================================

set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif

"=======================================================================================================================
"  SIDONIA HIGHLIGHTING:
"=======================================================================================================================

let g:colors_name="sidonia"

highlight! Normal                 guifg=#c1c9d4  guibg=#33434f  gui=NONE       ctermfg=15    ctermbg=0     cterm=NONE
highlight! StorageClass           guifg=#c1c9d4  guibg=#33434f  gui=NONE       ctermfg=15    ctermbg=0     cterm=NONE
highlight! htmlItalic             guifg=#c1c9d4  guibg=#33434f  gui=NONE       ctermfg=15    ctermbg=0     cterm=NONE

highlight! LineNr                 guifg=#495f71  guibg=NONE     gui=NONE       ctermfg=8     ctermbg=NONE  cterm=NONE
highlight! Folded                 guifg=#495f71  guibg=NONE     gui=NONE       ctermfg=8     ctermbg=NONE  cterm=NONE

highlight! TabLineSel             guifg=#33434f  guibg=#74929f  gui=NONE       ctermfg=0     ctermbg=7     cterm=NONE
highlight! ModeMsg                guifg=#33434f  guibg=#74929f  gui=NONE       ctermfg=0     ctermbg=7     cterm=NONE
highlight! CursorLineNr           guifg=#33434f  guibg=#74929f  gui=NONE       ctermfg=0     ctermbg=7     cterm=NONE
highlight! MatchParen             guifg=#33434f  guibg=#74929f  gui=NONE       ctermfg=0     ctermbg=7     cterm=NONE

highlight! CursorLine             guifg=NONE     guibg=#354653  gui=NONE       ctermfg=NONE  ctermbg=0     cterm=NONE
highlight! ColorColumn            guifg=NONE     guibg=#33434f  gui=NONE       ctermfg=NONE  ctermbg=0     cterm=NONE

highlight! Error                  guifg=#ffffff  guibg=#e64976  gui=reverse    ctermfg=3     ctermbg=1  cterm=reverse
highlight! ErrorMsg               guifg=#e64976  guibg=NONE     gui=NONE       ctermfg=1     ctermbg=NONE  cterm=NONE

highlight! StatusLine             guifg=#c1c9d4  guibg=#495f71  gui=NONE       ctermfg=15    ctermbg=8     cterm=NONE
highlight! PmenuSel               guifg=#c1c9d4  guibg=#495f71  gui=NONE       ctermfg=15    ctermbg=8     cterm=NONE

highlight! StatusLineNC           guifg=#33434f  guibg=#495f71  gui=NONE       ctermfg=0     ctermbg=8     cterm=NONE
highlight! Pmenu                  guifg=#33434f  guibg=#495f71  gui=NONE       ctermfg=0     ctermbg=8     cterm=NONE
highlight! TabLine                guifg=#33434f  guibg=#495f71  gui=NONE       ctermfg=0     ctermbg=8     cterm=NONE

highlight! Visual                 guifg=#74929f  guibg=NONE     gui=reverse    ctermfg=7     ctermbg=NONE  cterm=reverse
highlight! WildMenu               guifg=#74929f  guibg=NONE     gui=reverse    ctermfg=7     ctermbg=NONE  cterm=reverse

highlight! Question               guifg=#008097  guibg=NONE     gui=NONE       ctermfg=6     ctermbg=NONE  cterm=NONE
highlight! markdownUrl            guifg=#008097  guibg=NONE     gui=NONE       ctermfg=6     ctermbg=NONE  cterm=NONE

highlight! PmenuSbar              guifg=#495f71  guibg=#495f71  gui=NONE       ctermfg=8     ctermbg=8     cterm=NONE
highlight! PmenuThumb             guifg=#495f71  guibg=#495f71  gui=NONE       ctermfg=8     ctermbg=8     cterm=NONE

highlight! String                 guifg=#008097  guibg=NONE     gui=NONE       ctermfg=6     ctermbg=NONE  cterm=NONE

highlight! Special                guifg=#ffffff  guibg=NONE     gui=NONE       ctermfg=3     ctermbg=NONE  cterm=NONE
highlight! Todo                   guifg=#ffffff  guibg=NONE     gui=reverse    ctermfg=3     ctermbg=NONE  cterm=reverse

highlight! PreProc                guifg=#5b843e  guibg=NONE     gui=NONE       ctermfg=2     ctermbg=NONE  cterm=NONE
highlight! Title                  guifg=#5b843e  guibg=NONE     gui=NONE       ctermfg=2     ctermbg=NONE  cterm=NONE
highlight! FoldColumn             guifg=#5b843e  guibg=NONE     gui=NONE       ctermfg=2     ctermbg=NONE  cterm=NONE
highlight! phpVarSelector         guifg=#5b843e  guibg=NONE     gui=NONE       ctermfg=2     ctermbg=NONE  cterm=NONE
highlight! cssClassName           guifg=#5b843e  guibg=NONE     gui=NONE       ctermfg=2     ctermbg=NONE  cterm=NONE
highlight! cssIdentifier          guifg=#5b843e  guibg=NONE     gui=NONE       ctermfg=2     ctermbg=NONE  cterm=NONE
highlight! markdownLinkText       guifg=#5b843e  guibg=NONE     gui=NONE       ctermfg=2     ctermbg=NONE  cterm=NONE
highlight! Directory              guifg=#5b843e  guibg=NONE     gui=NONE       ctermfg=2     ctermbg=NONE  cterm=NONE
highlight! Number                 guifg=#5b843e  guibg=NONE     gui=NONE       ctermfg=2     ctermbg=NONE  cterm=NONE


highlight! WarningMsg             guifg=#008097  guibg=NONE     gui=NONE       ctermfg=6     ctermbg=NONE  cterm=NONE
highlight! MoreMsg                guifg=#008097  guibg=NONE     gui=NONE       ctermfg=6     ctermbg=NONE  cterm=NONE
highlight! SignColumn             guifg=#008097  guibg=NONE     gui=NONE       ctermfg=6     ctermbg=NONE  cterm=NONE
highlight! Underlined             guifg=#008097  guibg=NONE     gui=NONE       ctermfg=6     ctermbg=NONE  cterm=NONE

highlight! Comment                guifg=#495f71  guibg=NONE     gui=NONE       ctermfg=8     ctermbg=NONE  cterm=NONE
highlight! NonText                guifg=#495f71  guibg=NONE     gui=NONE       ctermfg=8     ctermbg=NONE  cterm=NONE
highlight! SpecialKey             guifg=#495f71  guibg=NONE     gui=NONE       ctermfg=8     ctermbg=NONE  cterm=NONE

highlight! Function               guifg=#74929f  guibg=NONE     gui=NONE       ctermfg=7     ctermbg=NONE  cterm=NONE
highlight! Identifier             guifg=#74929f  guibg=NONE     gui=NONE       ctermfg=7     ctermbg=NONE  cterm=NONE
highlight! Statement              guifg=#74929f  guibg=NONE     gui=NONE       ctermfg=7     ctermbg=NONE  cterm=NONE
highlight! Constant               guifg=#74929f  guibg=NONE     gui=NONE       ctermfg=7     ctermbg=NONE  cterm=NONE
highlight! Operator               guifg=#74929f  guibg=NONE     gui=NONE       ctermfg=7     ctermbg=NONE  cterm=NONE
highlight! Type                   guifg=#74929f  guibg=NONE     gui=NONE       ctermfg=7     ctermbg=NONE  cterm=NONE

highlight! SpecialComment         guifg=#495f71  guibg=NONE     gui=reverse    ctermfg=8     ctermbg=NONE  cterm=reverse
highlight! VimCommentTitle        guifg=#495f71  guibg=NONE     gui=reverse    ctermfg=8     ctermbg=NONE  cterm=reverse
highlight! TabLine                guifg=#33434f  guibg=#495f71  gui=NONE       ctermfg=0     ctermbg=8     cterm=NONE
highlight! TabLineFill            guifg=#495f71  guibg=NONE     gui=underline  ctermfg=8     ctermbg=NONE  cterm=underline
highlight! Search                 guifg=#008097  guibg=NONE     gui=reverse    ctermfg=6     ctermbg=NONE  cterm=reverse
highlight! CursorColumn           guifg=NONE     guibg=#33434f  gui=NONE       ctermfg=NONE  ctermbg=0     cterm=NONE
highlight! VertSplit              guifg=#495f71  guibg=#33434f  gui=NONE       ctermfg=8     ctermbg=0     cterm=NONE

highlight! SpellBad               guifg=#e64976  guibg=NONE     gui=undercurl  ctermfg=1     ctermbg=NONE  cterm=undercurl
highlight! SpellLocal             guifg=#495f71  guibg=NONE     gui=undercurl  ctermfg=8     ctermbg=NONE  cterm=undercurl
highlight! SpellRare              guifg=#495f71  guibg=NONE     gui=undercurl  ctermfg=8     ctermbg=NONE  cterm=undercurl
highlight! SpellCap               guifg=#8fb4c4  guibg=NONE     gui=undercurl  ctermfg=4     ctermbg=NONE  cterm=undercurl

highlight! DiffAdd                guifg=#c1c9d4  guibg=NONE     gui=reverse    ctermfg=15    ctermbg=NONE  cterm=reverse
highlight! DiffText               guifg=#c1c9d4  guibg=NONE     gui=reverse    ctermfg=15    ctermbg=NONE  cterm=reverse
highlight! DiffChange             guifg=#896492  guibg=NONE     gui=reverse    ctermfg=5     ctermbg=NONE  cterm=reverse
highlight! DiffDelete             guifg=#e64976  guibg=NONE     gui=reverse    ctermfg=1     ctermbg=NONE  cterm=reverse
