"  ________  ________  ________  ________  ___       ___  ___  _________  _______      
" |\   __  \|\   __  \|\   ____\|\   __  \|\  \     |\  \|\  \|\___   ___\\  ___ \     
" \ \  \|\  \ \  \|\ /\ \  \___|\ \  \|\  \ \  \    \ \  \\\  \|___ \  \_\ \   __/|    
"  \ \   __  \ \   __  \ \_____  \ \  \\\  \ \  \    \ \  \\\  \   \ \  \ \ \  \_|/__  
"   \ \  \ \  \ \  \|\  \|____|\  \ \  \\\  \ \  \____\ \  \\\  \   \ \  \ \ \  \_|\ \ 
"    \ \__\ \__\ \_______\____\_\  \ \_______\ \_______\ \_______\   \ \__\ \ \_______\
"     \|__|\|__|\|_______|\_________\|_______|\|_______|\|_______|    \|__|  \|_______|
"                        \|_________|                                                  
                                                                                     

" A Terminal && Vim colorscheme
" Author:       Alessandro Yorba
" Script URL:   https://github.com/AlessandroYorba/Absolute
" License:      MIT

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
" ABSOLUTE TERMINAL:
"=================================================================================
"     Foreground    #6c6c6c             |      Selection     #bcbcbc             |
"     Background    #e4e4e4             |      Selected Text #121212             |
"     Bold          #ffffff             |                                        |
"     Links         #af87af             |                                        |
"     CursorColor   #121212             |                                        |
"     CursorText    #ffffff             |                                        |
"=================================================================================
" ANSI COLORS:                                                                   |
"=================================================================================
"---------------------------------------|-----------------------------------------
"     NORMAL        Hex          xterm  |      BRIGHT        Hex          xterm  |
"---------------------------------------|-----------------------------------------
"     Black         #e4e4e4      0      |      brBlack       #b2b2b2      8      |
"     Red           #af1c5f      1      |      brRed         #af1c5f      9      |
"     Green         #008787      2      |      brGreen       #00afaf      10     |
"     Yellow        #d78700      3      |      brYellow      #d78700      11     |
"     Blue          #0087af      4      |      brBlue        #0087af      12     |
"     Magenta       #875f87      5      |      brMagenta     #af87af      13     |
"     Cyan          #5f87af      6      |      brCyan        #8787af      14     |
"     White         #af5f87      7      |      brWhite       #d75f87      15     |
"---------------------------------------|-----------------------------------------
"=================================================================================

"=================================================================================
" SETUP:
"=================================================================================

set background=light

highlight clear
if exists("syntax_on")
    syntax reset
endif

"================================================================================
" SET DEFAULT PARAMETERS:
"================================================================================

let g:colors_name="absolute"

"================================================================================
" ABSOLUTE HIGHLIGHTING:
"================================================================================

highlight! String                 guifg=#008787  guibg=NONE     gui=NONE       ctermfg=30     ctermbg=NONE  cterm=NONE
highlight! Directory              guifg=#008787  guibg=NONE     gui=NONE       ctermfg=30     ctermbg=NONE  cterm=NONE

highlight! PreProc                guifg=#af005f  guibg=NONE     gui=NONE       ctermfg=125    ctermbg=NONE  cterm=NONE
highlight! Title                  guifg=#5f5faf  guibg=NONE     gui=NONE       ctermfg=61    ctermbg=NONE  cterm=NONE

highlight! htmlSpecialTagName     guifg=#af5f87  guibg=NONE     gui=NONE       ctermfg=132    ctermbg=NONE  cterm=NONE
highlight! Define                 guifg=#af5f87  guibg=NONE     gui=NONE       ctermfg=132    ctermbg=NONE  cterm=NONE

highlight! Identifier             guifg=#0087af  guibg=NONE     gui=NONE       ctermfg=31     ctermbg=NONE  cterm=NONE
highlight! Function               guifg=#0087af  guibg=NONE     gui=NONE       ctermfg=31     ctermbg=NONE  cterm=NONE
highlight! ModeMsg                guifg=#0087af  guibg=NONE     gui=NONE       ctermfg=31     ctermbg=NONE  cterm=NONE

highlight! Operator               guifg=#875f87  guibg=NONE     gui=NONE       ctermfg=96     ctermbg=NONE  cterm=NONE
highlight! Constant               guifg=#af87af  guibg=NONE     gui=NONE       ctermfg=139    ctermbg=NONE  cterm=NONE

highlight! Statement              guifg=#d78700  guibg=NONE     gui=NONE       ctermfg=172    ctermbg=NONE  cterm=NONE

highlight! htmlTagName            guifg=#0087af  guibg=NONE     gui=NONE       ctermfg=31    ctermbg=NONE  cterm=NONE
highlight! htmlTag                guifg=#0087af  guibg=NONE     gui=NONE       ctermfg=31    ctermbg=NONE  cterm=NONE
highlight! htmlEndTag             guifg=#0087af  guibg=NONE     gui=NONE       ctermfg=31    ctermbg=NONE  cterm=NONE

highlight! MoreMsg                guifg=#005f87  guibg=NONE     gui=NONE       ctermfg=24     ctermbg=NONE  cterm=NONE
highlight! Question               guifg=#005f87  guibg=NONE     gui=NONE       ctermfg=24     ctermbg=NONE  cterm=NONE

highlight! htmlItalic             guifg=#767676  guibg=NONE     gui=NONE       ctermfg=243    ctermbg=NONE  cterm=NONE
highlight! Underlined             guifg=#767676  guibg=NONE     gui=NONE       ctermfg=243    ctermbg=NONE  cterm=underline

highlight! Error                  guifg=#ff5f87  guibg=#005f87  gui=reverse    ctermfg=204    ctermbg=24    cterm=reverse
highlight! ErrorMsg               guifg=#ff5f87  guibg=#005f87  gui=reverse    ctermfg=204    ctermbg=24    cterm=reverse

highlight! SignColumn             guifg=#dadada  guibg=NONE     gui=NONE       ctermfg=253    ctermbg=NONE  cterm=NONE
highlight! FoldColumn             guifg=#dadada  guibg=NONE     gui=NONE       ctermfg=253    ctermbg=NONE  cterm=NONE

highlight! Visual                 guifg=#121212  guibg=#bcbcbc  gui=NONE       ctermfg=233    ctermbg=250    cterm=NONE
highlight! Special                guifg=#00afaf  guibg=NONE     gui=NONE       ctermfg=37     ctermbg=NONE  cterm=NONE
highlight! Conditional            guifg=#d75f87  guibg=NONE     gui=NONE       ctermfg=168    ctermbg=NONE  cterm=NONE
highlight! Type                   guifg=#8787af  guibg=NONE     gui=NONE       ctermfg=103    ctermbg=NONE  cterm=NONE
highlight! WarningMsg             guifg=#d78787  guibg=NONE     gui=NONE       ctermfg=174    ctermbg=NONE  cterm=NONE
highlight! WildMenu               guifg=#ffffff  guibg=#005f87  gui=reverse    ctermfg=231    ctermbg=24    cterm=reverse
highlight! Search                 guifg=#5f87af  guibg=#eeeeee  gui=reverse    ctermfg=67     ctermbg=255   cterm=reverse
highlight! MatchParen             guifg=#8787af  guibg=#eeeeee  gui=reverse    ctermfg=103    ctermbg=255   cterm=reverse
highlight! Todo                   guifg=#c6c6c6  guibg=#1c1c1c  gui=reverse    ctermfg=251    ctermbg=234   cterm=reverse

highlight! CursorLineNr           guifg=#5f87af  guibg=NONE     gui=reverse    ctermfg=67     ctermbg=NONE  cterm=reverse
highlight! VimCommentTitle        guifg=#af87af  guibg=NONE     gui=reverse    ctermfg=139    ctermbg=NONE  cterm=reverse
highlight! SpecialComment         guifg=#af87af  guibg=NONE     gui=reverse    ctermfg=139    ctermbg=NONE  cterm=reverse

highlight! DiffAdd                guifg=#87afaf  guibg=#262626  gui=reverse    ctermfg=109    ctermbg=235   cterm=reverse        
highlight! DiffChange             guifg=#8787af  guibg=#262626  gui=reverse    ctermfg=103    ctermbg=235   cterm=reverse        
highlight! DiffDelete             guifg=#ff5f87  guibg=#262626  gui=reverse    ctermfg=204    ctermbg=235   cterm=reverse        
highlight! DiffText               guifg=#afafff  guibg=#262626  gui=reverse    ctermfg=147    ctermbg=235   cterm=reverse        

highlight! SpellBad               guifg=#ff5f87  guibg=NONE     gui=undercurl  ctermfg=204    ctermbg=NONE  cterm=undercurl
highlight! SpellLocal             guifg=#8787af  guibg=NONE     gui=undercurl  ctermfg=103    ctermbg=NONE  cterm=undercurl
highlight! SpellCap               guifg=#ff5f87  guibg=NONE     gui=undercurl  ctermfg=204    ctermbg=NONE  cterm=undercurl
highlight! SpellRare              guifg=#87afaf  guibg=NONE     gui=undercurl  ctermfg=109    ctermbg=NONE  cterm=undercurl

"================================================================================
" BREAKFAST:
"================================================================================
if 1
    highlight! CursorLine           guifg=NONE     guibg=#eeeeee  gui=NONE      ctermfg=NONE  ctermbg=255   cterm=NONE
    highlight! CursorColumn         guifg=NONE     guibg=#eeeeee  gui=NONE      ctermfg=NONE  ctermbg=255   cterm=NONE
    highlight! ColorColumn          guifg=NONE     guibg=#eeeeee  gui=NONE      ctermfg=NONE  ctermbg=255   cterm=NONE

    highlight! StatusLine           guifg=#eeeeee  guibg=#5f87af  gui=NONE      ctermfg=255   ctermbg=67    cterm=NONE
    highlight! TabLineSel           guifg=#eeeeee  guibg=#5f87af  gui=NONE      ctermfg=255   ctermbg=67    cterm=NONE
    highlight! PmenuSel             guifg=#eeeeee  guibg=#005f87  gui=NONE      ctermfg=255   ctermbg=24    cterm=NONE

    highlight! StatusLineNC         guifg=#5f87af  guibg=#dadada  gui=NONE      ctermfg=67    ctermbg=253   cterm=NONE
    highlight! TabLine              guifg=#5f87af  guibg=#dadada  gui=NONE      ctermfg=67    ctermbg=253   cterm=NONE
    highlight! Pmenu                guifg=#00afd7  guibg=#005f87  gui=NONE      ctermfg=38    ctermbg=24    cterm=NONE
    highlight! LineNr               guifg=#c6c6c6  guibg=#eeeeee  gui=NONE      ctermfg=251   ctermbg=255   cterm=NONE

    highlight! NonText              guifg=#bcbcbc  guibg=NONE     gui=NONE      ctermfg=250   ctermbg=NONE  cterm=NONE
    highlight! SpecialKey           guifg=#bcbcbc  guibg=NONE     gui=NONE      ctermfg=250   ctermbg=NONE  cterm=NONE

    highlight! PmenuSbar            guifg=#005f87  guibg=#005f87  gui=NONE      ctermfg=24    ctermbg=24    cterm=NONE
    highlight! PmenuThumb           guifg=#005f87  guibg=#005f87  gui=NONE      ctermfg=24    ctermbg=24    cterm=NONE
    highlight! VertSplit            guifg=#bcbcbc  guibg=NONE     gui=NONE      ctermfg=250    ctermbg=NONE  cterm=NONE

    highlight! Comment              guifg=#b2b2b2  guibg=NONE     gui=NONE      ctermfg=249   ctermbg=NONE  cterm=NONE
    highlight! Folded               guifg=#767676  guibg=NONE     gui=NONE      ctermfg=243   ctermbg=NONE  cterm=NONE

    highlight! TabLineFill          guifg=#005f87  guibg=#dadada  gui=NONE      ctermfg=24    ctermbg=253   cterm=NONE
    highlight! Normal               guifg=#6c6c6c  guibg=#e4e4e4  gui=NONE      ctermfg=242   ctermbg=254   cterm=NONE
endif
