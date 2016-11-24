" Vim color file
" Maintainer: Yuheng Xie <thinelephant@gmail.com>
" Last Change: Nov 22, 2016

if &background != "light"
	set background=dark
endif

highlight clear Normal
if !exists("g:colors_name")
	set background&
endif
highlight clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "greens"

hi Cursor                         guifg=Black      guibg=#FFBF00
hi Normal      ctermfg=Grey       guifg=#A4A090    guibg=Black

hi Comment     ctermfg=DarkGreen  guifg=DarkGreen
hi Constant    ctermfg=Red        guifg=Red
hi Special     ctermfg=Yellow     guifg=Yellow                        gui=BOLD  cterm=BOLD
hi Identifier  ctermfg=Cyan       guifg=#40D8D0                       gui=NONE  cterm=NONE
hi Statement   ctermfg=Yellow     guifg=Yellow                        gui=BOLD  cterm=BOLD
hi PreProc     ctermfg=Green      guifg=Green
hi Type        ctermfg=White      guifg=White                         gui=BOLD  cterm=BOLD
hi Ignore      ctermfg=DarkGrey   guifg=#22201C

hi FoldColumn  ctermfg=Black      guifg=Black      guibg=Grey         ctermbg=Grey
hi Folded      ctermfg=Black      guifg=Black      guibg=Grey         ctermbg=Grey

hi DiffAdd                                         guibg=DarkRed      ctermbg=DarkRed
hi DiffDelete                                      guibg=DarkCyan     ctermbg=DarkCyan  gui=NONE  cterm=NONE
hi DiffText                                        guibg=DarkBlue     ctermbg=DarkBlue  gui=NONE  cterm=NONE
hi DiffChange                                      guibg=DarkMagenta  ctermbg=DarkMagenta

if v:version >= 700

hi! link CursorLine   Visual
hi! link CursorColumn Visual

hi MatchParen  ctermfg=White      guifg=White      guibg=DarkGreen    ctermbg=DarkGreen

hi Pmenu       ctermfg=Black      guifg=Black      guibg=LightGrey    ctermbg=LightGrey
hi PmenuSel    ctermfg=Black      guifg=Black      guibg=Yellow       ctermbg=Yellow
hi PmenuSbar   ctermfg=Black      guifg=Black      guibg=White        ctermbg=White
hi PmenuThumb  ctermfg=Black      guifg=Black      guibg=DarkGrey     ctermbg=DarkGrey  gui=NONE  cterm=NONE

hi TabLine     ctermfg=Grey       guifg=#A4A090    guibg=Black        ctermbg=NONE      gui=NONE  cterm=NONE
hi TabLineFill ctermfg=Grey       guifg=#A4A090    guibg=Black        ctermbg=NONE      gui=NONE  cterm=NONE
hi TabLineSel  ctermfg=White      guifg=White      guibg=Black        ctermbg=NONE      gui=NONE  cterm=NONE

endif

if &background == "light"

if &t_Co < 256
hi Normal      ctermfg=DarkGrey   guifg=#444030    guibg=LightYellow
else
hi Normal      ctermfg=240        guifg=#444030    guibg=LightYellow
endif

hi Comment     ctermfg=DarkGreen  guifg=DarkGreen
hi Constant    ctermfg=Red        guifg=Red
hi Special     ctermfg=DarkYellow guifg=#948000                       gui=BOLD  cterm=BOLD
hi Identifier  ctermfg=DarkCyan   guifg=DarkCyan                      gui=NONE  cterm=NONE
hi Statement   ctermfg=DarkYellow guifg=#948000                       gui=BOLD  cterm=BOLD
hi PreProc     ctermfg=Green      guifg=Green                                             
hi Type        ctermfg=Black      guifg=Black                         gui=BOLD  cterm=BOLD
hi Ignore      ctermfg=LightGrey  guifg=#949080

hi FoldColumn  ctermfg=White      guifg=White      guibg=Grey         ctermbg=Grey
hi Folded      ctermfg=White      guifg=White      guibg=Grey         ctermbg=Grey

hi DiffAdd                                         guibg=LightRed     ctermbg=LightRed
hi DiffDelete                                      guibg=LightCyan    ctermbg=LightCyan gui=NONE  cterm=NONE
hi DiffText                                        guibg=#60D8FF      ctermbg=LightBlue gui=NONE  cterm=NONE
hi DiffChange                                      guibg=LightMagenta ctermbg=LightMagenta

if v:version >= 700

hi TabLine     ctermfg=Black      guifg=#042000    guibg=#D4D090      ctermbg=NONE      gui=NONE  cterm=NONE
hi TabLineFill ctermfg=Black      guifg=#042000    guibg=#D4D090      ctermbg=NONE      gui=NONE  cterm=NONE
hi TabLineSel  ctermfg=Red        guifg=White      guibg=#D4D090      ctermbg=NONE      gui=NONE  cterm=NONE

endif

endif

" vim: ts=2 sw=2 noet
