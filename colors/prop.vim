" Vim syntax file
" Language:         prop
" Maintainer:       Douglas Drumond (self@douglasdrumond.com)
" Latest Revision:  2011-11-11

if exists("b:current_syntax")
    finish
endif

hi def prop_name_color ctermfg=blue guifg=#00a2e8
hi def prop_value_color ctermfg=gray guifg=gray

syn match prop_name '\[.*\]:' 
syn match prop_value '\s\[.*\]' 


hi def link prop_name prop_name_color
hi def link prop_value prop_value_color
