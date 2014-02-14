" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" intended for use with vim-r-plugin by Jakson Aquino http://www.vim.org/scripts/script.php?script_id=2628
" Maintainer:	Juraj Medzihorsky juraj.medzihorsky<at>gmail<dot>com
" Last Change:	17 August 2012

set background=light

hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "rgbr"

autocmd InsertEnter * setlocal cursorline
autocmd InsertLeave * setlocal nocursorline

hi Comment 		guifg=DarkGray					 								ctermfg=DarkGray 					 
hi Constant     guifg=#8b0a50
hi Normal 		guifg=black 	guibg=white													 
hi Cursor                       guibg=Orange                                   			   	    ctermbg=214 
hi CursorColumn                 guibg=Yellow                term=NONE	          				ctermbg=Yellow    cterm=NONE
hi CursorLine                   guibg=LightYellow         	term=NONE	          				ctermbg=Yellow    cterm=NONE
hi Number	 	guifg=DarkRed                               term=underline 		ctermfg=Red
hi Boolean		guifg=DarkRed								term=underline 		ctermfg=Red
hi Special 		guifg=DarkGreen	                            term=bold 			ctermfg=Red
hi String       guifg=#8b4513
hi Identifier 	guifg=DarkBlue		                        term=underline 		ctermfg=Blue 					 
hi Statement 	guifg=DarkBlue 	                            term=NONE 			ctermfg=DarkRed
hi Operator		guifg=DarkGreen
hi PreProc 		guifg=Cyan4                                 term=underline 		ctermfg=Magenta 				 
hi Type 		guifg=Blue				    	gui=none 	term=underline 		ctermfg=Blue 					 	
hi Visual 	    guifg=Black     guibg=khaki		gui=none   						ctermfg=Yellow 	ctermbg=Red 	 cterm=reverse
hi Search 		guifg=Black 	guibg=Cyan 		gui=NONE    term=reverse 		ctermfg=Black 	ctermbg=Cyan	 
hi Tag 			guifg=DarkGreen								term=bold 			ctermfg=DarkGreen 				 
hi Error 		guifg=Red 		guibg=Yellow 				term=reverse 		ctermfg=15 		ctermbg=9 		 
hi Todo 		guifg=Blue  	guibg=Yellow    			term=standout 		ctermfg=Black	ctermbg=Yellow 	 
hi StatusLine 	guifg=Yellow	guibg=DarkGray  gui=NONE 	term=bold,reverse 	ctermfg=Yellow 	ctermbg=DarkGray cterm=NONE  
hi! link MoreMsg 	Comment
hi! link ErrorMsg 	Visual
hi! link WarningMsg ErrorMsg
hi! link Question 	Comment
hi link Character	Constant
hi link Float		Number
hi link Function	Identifier
hi link Conditional	Statement
hi link Repeat		Statement
hi link Label		Statement
hi link Keyword		Statement
hi link Exception	Statement
hi link Include		PreProc
hi link Define		PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef		Type
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special
