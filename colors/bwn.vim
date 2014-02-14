" Vim color file
" Maintainer: Vijay Singh
" Last Change: Aug,02 2012
" bwn color scheme 1.0
set background=light

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "bwn"

" Ideally, the bg color would be grey but VIM cannot print grey on black!
hi String       guifg=#0056d2
highlight Float ctermfg=black ctermbg=grey guifg=black guibg=grey
hi Constant     guifg=#0036d2
highlight Conditional	ctermfg=red ctermbg=grey guifg=black guibg=grey
hi Number       guifg=#0086f7                   gui=bold
hi Statement    guifg=#00660a                   gui=bold
hi Function     guifg=#00ff86                   gui=bold
hi PreProc      guifg=#009907                   gui=bold
"hi Comment      guifg=lightgreen   guibg=grey      gui=italic
hi Comment      guifg=#400080   guibg=grey      gui=italic

hi Type         guifg=#000000                   gui=bold
hi Error        guifg=#ef0f0f   guibg=grey
hi Identifier   guifg=#00ff86                   gui=bold
hi Label        guifg=#00ff86
highlight Repeat	    ctermfg=black ctermbg=grey guifg=black guibg=grey
highlight Operator	    ctermfg=black ctermbg=grey guifg=black guibg=grey
highlight Special	    cterm=italic ctermfg=black ctermbg=grey gui=italic guifg=black guibg=grey
highlight SpecialComment cterm=italic ctermfg=black ctermbg=grey gui=italic guifg=black guibg=grey
highlight Todo		    cterm=italic,bold ctermfg=black ctermbg=grey gui=italic,bold guifg=black guibg=grey
highlight Normal	    cterm=NONE ctermfg=black ctermbg=grey gui=NONE guifg=black guibg=grey
highlight NonText	    ctermfg=black ctermbg=grey guifg=black guibg=grey
highlight LineNr        cterm=italic ctermfg=black ctermbg=grey gui=italic guifg=black guibg=grey
highlight Character	    ctermfg=black ctermbg=grey guifg=black guibg=grey
