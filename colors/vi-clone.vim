"" vim color file
"" originally "basic", now "vi-clone"
"" in honor of elvis' perfect highlighting
"" originally by: Mikel Ward <mikel@mikelward.com>
"" maintainer: Ryan P.C. McQuen <ryan.q@linux.com>
"" last update: 2014.10

"" remove all existing highlighting and set the defaults
highlight clear

" load the syntax highlighting defaults, if enabled
"if exists("syntax_on")
"  syntax reset
"endif

let colors_name = "vi-clone"

set background=dark

"" remove all highlighting
highlight clear Constant
highlight clear Number
highlight clear Statement
highlight clear PreProc
highlight clear Type
highlight clear Special
highlight clear Identifier

highlight clear String
highlight clear Comment
highlight clear Error
highlight clear LineNr
highlight clear NonText
highlight clear SpecialKey

highlight String term=NONE cterm=NONE ctermfg=grey
highlight PreProc term=NONE cterm=NONE ctermfg=grey
highlight Constant term=NONE cterm=NONE ctermfg=grey
highlight Type term=NONE cterm=NONE ctermfg=grey
highlight Statement term=NONE cterm=NONE ctermfg=grey
highlight Comment term=NONE cterm=NONE ctermfg=grey
highlight Error term=reverse cterm=NONE ctermbg=Red
highlight LineNr term=bold cterm=NONE ctermfg=white
highlight NonText term=NONE cterm=NONE ctermfg=grey
highlight SpecialKey term=NONE cterm=NONE ctermfg=white
highlight Identifier term=NONE cterm=NONE ctermfg=white
highlight Search term=bold cterm=NONE ctermfg=black ctermbg=white
highlight Warning term=NONE cterm=NONE ctermfg=white
