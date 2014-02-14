" Vim color file
"
" Name:       xoria256m.vim
" Version:    1.0.3
" Maintainer: Miek Gieben <miek@miek.nl>
" This is a fork of xoria256 suited for my own needs. gvim colors
" match the vim colors. It is only suited for a dark background.
" It was inspired by the Solarized color scheme
" The old Xoria was from: Dmitriy Y. Zotikov (xio) <xio@ungrund.org>

if &t_Co != 256 && ! has("gui_running")
  echomsg ""
  echomsg "err: please use GUI or a 256-color terminal (so that t_Co=256 could be set)"
  echomsg ""
  finish
endif

set background=dark

hi clear	

if exists("syntax_on")
  syntax reset
endif

let colors_name = "xoria256m"

"" General colors
if has("gui_running")
  hi Normal	 ctermfg=248 guifg=#a8a8a8 cterm=none gui=none guibg=#000000
else
  hi Normal	 ctermfg=248 guifg=#a8a8a8 cterm=none gui=none
endif
hi CursorColumn	 ctermbg=233 guibg=#121212 cterm=none gui=none
hi ColorColumn	 ctermbg=233 guibg=#121212 cterm=none gui=none
"hi Cursor ctermfg=248 guibg=#ffaf00 ctermbg=0
"hi Cursor ctermfg=bg ctermbg=fg
hi CursorLine	 ctermbg=233 guibg=#121212 cterm=none gui=none
hi FoldColumn	 ctermfg=248 guifg=#a8a8a8
hi Folded	 ctermfg=255 guifg=#eeeeee ctermbg=60 guibg=#5f5f87
hi IncSearch	 ctermfg=0 guifg=#000000 ctermbg=223 guibg=#ffd7af cterm=none gui=none
hi NonText	 ctermfg=242 guifg=#6c6c6c
hi Pmenu	 ctermfg=0 guifg=#000000 ctermbg=246 guibg=#949494
hi PmenuSbar	 ctermbg=243 guibg=#767676
hi PmenuSel	 ctermfg=0 guifg=#000000 ctermbg=243 guibg=#767676
hi PmenuThumb	 ctermbg=252 guibg=#d0d0d0
hi Search	 ctermfg=248 guifg=#a8a8a8 ctermbg=163 guibg=#d700af
hi SignColumn	 ctermfg=248 guifg=#a8a8a8
hi SpecialKey	 ctermfg=237 guifg=#3a3a3a
hi StatusLine	 ctermbg=239 guibg=#4e4e4e cterm=bold gui=bold
hi StatusLineNC	 ctermbg=237 guibg=#3a3a3a cterm=none gui=none
hi TabLine	 ctermfg=fg guifg=fg ctermbg=242 guibg=#6c6c6c cterm=underline gui=underline
hi TabLineFill	 ctermfg=fg guifg=fg ctermbg=242 guibg=#6c6c6c cterm=underline gui=underline
hi VertSplit	 ctermfg=237 guifg=#3a3a3a ctermbg=237 guibg=#3a3a3a cterm=none gui=none
hi Visual	 ctermfg=24 guifg=#005f87 ctermbg=153 guibg=#afd7ff
hi VIsualNOS	 ctermfg=24 guifg=#005f87 ctermbg=153 guibg=#afd7ff cterm=none gui=none
hi WildMenu	 ctermfg=0 guifg=#000000 ctermbg=184 guibg=#d7d700 cterm=bold gui=bold

"" Syntax highlighting
hi Title	 ctermfg=255 guifg=#eeeeee cterm=none gui=none
hi Comment	 ctermfg=242 guifg=#6c6c6c gui=italic term=italic
"hi Function     ctermfg=67  guifg=#5f87af cterm=bold  gui=bold
hi Constant	 ctermfg=163 guifg=#d700af
hi Error	 ctermfg=15 guifg=#ffffff ctermbg=1 guibg=#800000
hi ErrorMsg	 ctermfg=15 guifg=#ffffff ctermbg=1 guibg=#800000
hi Identifier	 ctermfg=182 guifg=#d7afd7 cterm=none gui=none
hi Ignore	 ctermfg=238 guifg=#444444
hi LineNr	 ctermfg=237 guifg=#3a3a3a
hi MatchParen	 ctermfg=15 guifg=#ffffff ctermbg=1 guibg=#800000
hi Number	 ctermfg=163 guifg=#d700af
hi PreProc	 ctermfg=67 guifg=#5f87af cterm=bold gui=bold
hi Special	 ctermfg=179 guifg=#d7af5f
hi Statement	 ctermfg=67 guifg=#5f87af cterm=bold gui=bold
hi Todo	 ctermfg=15 guifg=#ffffff ctermbg=1 guibg=#800000
hi Type	 ctermfg=83 guifg=#5fff5f cterm=none gui=none
hi Underlined	 ctermfg=39 guifg=#00afff cterm=underline gui=underline

" links
hi link        Define PreProc

""" .diff
hi diffAdded	 ctermfg=150 guifg=#afd787
hi diffRemoved	 ctermfg=174 guifg=#d78787
""" vimdiff
"hi diffAdd	 ctermfg=bg guifg=bg ctermbg=83 guibg=#afd7af
"hi diffDelete	 ctermfg=bg guifg=bg ctermbg=246 guibg=#949494 cterm=none gui=none
"hi diffChange	 ctermfg=bg guifg=bg ctermbg=181 guibg=#d7afaf
"hi diffText	 ctermfg=248 guifg=#a8a8a8 ctermbg=0 guibg=#000000 cterm=none gui=none

"" Spelling
hi SpellCap	 ctermfg=red guifg=red ctermbg=black guibg=black cterm=underline gui=underline
hi SpellBad	 ctermfg=red guifg=red ctermbg=black guibg=black cterm=standout gui=standout

"" Mail
hi mailEmph	 cterm=bold gui=bold

"" Signs
hi SignColumn	 ctermbg=233 guibg=#121212

" vim: set expandtab tabstop=2 shiftwidth=2 smarttab softtabstop=2:
