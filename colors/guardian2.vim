" Vim color file
" Maintainer: Miikka-Markus Leskinen <miikka@leskinen.net>
" First Created: Apr 2005 (Guardian 1)
" Last Update: 31 Jan 2017

" Guardian color scheme, version 2.0

" Rich-syntax colors for coding and other vimming.
" 2017: Guardian 2. Updated for modern Ultra HD monitors. Deeper colors.

set background=dark
hi clear
syntax reset

" Colors for the User Interface.

hi Cursor      guibg=#ff4455  guifg=white    gui=bold ctermbg=4 ctermfg=15
hi link CursorIM Cursor
hi Normal      guibg=#101830  guifg=white    gui=none ctermbg=0 ctermfg=15
hi NonText     guibg=#445566  guifg=#ffeecc  gui=bold ctermbg=8 ctermfg=14
hi Visual      guibg=#99cc99  guifg=#334433    gui=none ctermbg=9 ctermfg=15

hi Linenr      guibg=bg	      guifg=#aaaaaa  gui=none ctermbg=bg ctermfg=7

hi Directory   guibg=bg	      guifg=#337700  gui=none ctermbg=bg ctermfg=10

hi IncSearch   guibg=#0066cc  guifg=white    gui=none ctermbg=1 ctermfg=15
hi link Seach IncSearch

hi SpecialKey  guibg=bg	guifg=fg       gui=none ctermbg=bg ctermfg=fg
hi Titled      guibg=bg	guifg=fg       gui=none ctermbg=bg ctermfg=fg

hi ErrorMsg    guibg=bg	guifg=#ff0000  gui=bold ctermbg=bg ctermfg=12
hi ModeMsg     guibg=bg	guifg=#ffeecc  gui=none ctermbg=bg ctermfg=14
hi link	 MoreMsg     ModeMsg
hi Question    guibg=bg	guifg=#ccffcc  gui=bold ctermbg=bg ctermfg=10
hi link	 WarningMsg  ErrorMsg

hi StatusLine	  guibg=#ffeecc	 guifg=black	gui=bold ctermbg=14 ctermfg=0
hi StatusLineNC	  guibg=#ff4455	 guifg=white	gui=none ctermbg=4  ctermfg=11
hi VertSplit	  guibg=#ff4455	 guifg=white	gui=none ctermbg=4  ctermfg=11

hi DiffAdd     guibg=#446688  guifg=fg	  gui=none ctermbg=1 ctermfg=fg
hi DiffChange  guibg=#558855  guifg=fg	  gui=none ctermbg=2 ctermfg=fg
hi DiffDelete  guibg=#884444  guifg=fg	  gui=none ctermbg=4 ctermfg=fg
hi DiffText    guibg=#884444  guifg=fg	  gui=bold ctermbg=4 ctermfg=fg

" Colors for Syntax Highlighting.

hi Comment  guibg=#334455  guifg=#dddddd  gui=none    ctermbg=8	  ctermfg=7

hi Constant    guibg=bg	   guifg=white	  gui=bold    ctermbg=8	  ctermfg=15
hi String      guibg=bg	   guifg=#ffffcc  gui=italic  ctermbg=bg  ctermfg=14
hi Character   guibg=bg	   guifg=#ffffcc  gui=bold    ctermbg=bg  ctermfg=14
hi Number      guibg=bg	   guifg=#bbddff  gui=bold    ctermbg=1   ctermfg=15
hi Boolean     guibg=bg	   guifg=#bbddff  gui=none    ctermbg=1   ctermfg=15
hi Float       guibg=bg	   guifg=#bbddff  gui=bold    ctermbg=1   ctermfg=15

hi Identifier  guibg=bg    guifg=#55cc55  gui=bold    ctermbg=bg  ctermfg=12
hi Function    guibg=bg    guifg=#ff66aa  gui=bold    ctermbg=bg  ctermfg=12
hi Statement   guibg=bg    guifg=#ffff99  gui=bold    ctermbg=bg  ctermfg=14

hi Conditional guibg=bg    guifg=#ff6666  gui=bold    ctermbg=bg  ctermfg=12
hi Repeat      guibg=bg    guifg=#ff9900  gui=bold    ctermbg=4   ctermfg=14
hi Label       guibg=bg    guifg=#cc99ff  gui=bold    ctermbg=bg   ctermfg=13
hi Operator    guibg=bg    guifg=#ffbb66  gui=bold    ctermbg=6   ctermfg=15
hi Keyword     guibg=bg	   guifg=#44ffdd  gui=bold    ctermbg=bg  ctermfg=10
hi Exception   guibg=bg	   guifg=#44ffdd  gui=bold    ctermbg=bg  ctermfg=10

hi PreProc	  guibg=bg	 guifg=#ffbb66	gui=bold ctermbg=4  ctermfg=14
hi Include	  guibg=bg	 guifg=#99cc99	gui=bold ctermbg=bg ctermfg=10
hi link Define	  Include
hi link Macro	  Include
hi link PreCondit Include

hi Type		  guibg=bg	 guifg=#ff5566  gui=bold    ctermbg=bg	ctermfg=12
hi StorageClass	  guibg=bg	 guifg=#99cc99  gui=bold    ctermbg=bg	ctermfg=10
hi Structure	  guibg=bg	 guifg=#99ff99  gui=bold    ctermbg=bg	ctermfg=10
hi Typedef	  guibg=bg	 guifg=#99cc99  gui=italic  ctermbg=bg	ctermfg=10

hi Special	  guibg=bg	 guifg=#bbddff	gui=bold    ctermbg=1	ctermfg=15
hi SpecialChar	  guibg=bg	 guifg=#bbddff	gui=bold    ctermbg=1	ctermfg=15
hi Tag		  guibg=bg	 guifg=#bbddff	gui=bold    ctermbg=1	ctermfg=15
hi Delimiter	  guibg=bg	 guifg=fg	gui=bold    ctermbg=1	ctermfg=fg
hi SpecialComment guibg=#334455	 guifg=#dddddd	gui=italic  ctermbg=1	ctermfg=15
hi Debug	  guibg=bg	 guifg=#ff9999	gui=none    ctermbg=8	ctermfg=12

hi Underlined guibg=bg guifg=#99ccff gui=underline ctermbg=bg ctermfg=9 cterm=underline

hi Title    guibg=#445566  guifg=white	  gui=bold    ctermbg=1	  ctermfg=15
hi Ignore   guibg=bg	   guifg=#cccccc  gui=italic  ctermbg=bg  ctermfg=8
hi Error    guibg=#ff0000  guifg=white	  gui=bold    ctermbg=12  ctermfg=15
hi Todo	    guibg=#556677  guifg=#ff0000  gui=bold    ctermbg=1	  ctermfg=12

hi htmlH2 guibg=bg guifg=fg gui=bold ctermbg=8 ctermfg=fg
hi link htmlH3 htmlH2
hi link htmlH4 htmlH3
hi link htmlH5 htmlH4
hi link htmlH6 htmlH5

" And finally.

let g:colors_name = "Guardian2"
let colors_name   = "Guardian2"

