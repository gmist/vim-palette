" Vim color file
" Maintainer: Krzysztof Pawlik <nelchael@gentoo.org>
" Author: Thomas Schmall <ts_nowhere@yahoo.com>
" Author: Krzysztof Pawlik <nelchael@gentoo.org>
" Last Change: 2012 May 14
" Version: 1.1

set background=light
hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name="lingodirector"

hi Normal		guifg=black	guibg=white ctermfg=Black ctermbg=white
hi Title		guifg=black	guibg=white ctermfg=Black ctermbg=white gui=BOLD
hi Visual		guifg=black	guibg=gray
hi lCursor		guibg=Cyan guifg=NONE

hi LineNr		guifg=white guibg=#8c9bfa
hi CursorLineNr	guifg=white guibg=#8c9bfa gui=NONE

hi Comment		ctermfg=Red guifg=#c80000 gui=NONE
hi Operator		term=None cterm=None gui=None

hi Identifier	ctermfg=Green guifg=#008000 gui=NONE

hi Statement	ctermfg=Blue guifg=#0000c8 gui=NONE
hi TypeDef		ctermfg=Blue guifg=#0000c8 gui=NONE
hi Type			ctermfg=Blue guifg=#0000c8 gui=NONE
hi Boolean		ctermfg=Blue guifg=#0000c8 gui=NONE

hi String		ctermfg=Gray guifg=#808080 gui=NONE
hi Number		ctermfg=Gray guifg=#808080 gui=NONE
hi Constant		ctermfg=Gray guifg=#808080 gui=NONE

hi Function		ctermfg=Green guifg=#008040 gui=NONE
hi PreProc		ctermfg=Green guifg=#008040 gui=NONE
hi Keyword		ctermfg=Green guifg=#008040 gui=NONE

" vim: set ts=4 sw=4
