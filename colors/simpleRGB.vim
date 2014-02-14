" Vim color scheme
" Author: Peter Zeman <andrej.kupecky@gmail.com>
" Description: This color scheme uses just 4 colors: Red, Green, Blue and White. It's supposed to be simple and only for
"              terminals. It currently is, sort of, optimized for C and C++.

" Reset.
set background=light
highlight clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "simpleRGB"

" Line Number
hi LineNr ctermfg=White

" Normal
hi Normal ctermfg=White

" Comment
hi Comment ctermfg=Green

" Constant
hi Constant ctermfg=White
hi Boolean ctermfg=Blue

" Special
hi Special ctermfg=White

" Identifier
hi Identifier ctermfg=White

" Statement
hi Statement ctermfg=Blue

" PreProc
hi PreProc ctermfg=Blue

" Type
hi Type ctermfg=Blue

" String
hi String ctermfg=Red
hi cIncluded ctermfg=Blue

" Character
hi Character ctermfg=Red
