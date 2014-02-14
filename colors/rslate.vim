"%% SiSU Vim color file
" rslate
" Maintainer:	Juraj Medzihorsky juraj.medzihorsky<at>gmail<dot>com
" Last Change:	21 January 2012
" intended to be used with vim-r-plugin by Jakson Aquino http://www.vim.org/scripts/script.php?script_id=2628
" this theme is a modified Slate theme by Ralph Amissah <ralph@amissah.com>
autocmd InsertEnter * setlocal cursorline
autocmd InsertLeave * setlocal nocursorline

:set background=dark
:highlight clear
if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif
let colors_name = "rslate"
:hi Normal 	guifg=White 		guibg=grey15
:hi Cursor 	guifg=slategrey		guibg=khaki 		
:hi CursorLine	guibg=Grey10 		term=NONE	          			
:hi VertSplit 	guifg=grey40		guibg=#c2bfa5 		 	gui=none 	cterm=reverse
:hi Folded 	guifg=navajowhite4	guibg=grey15	gui=bold 	ctermfg=grey 	ctermbg=darkgrey
:hi FoldColumn 	guifg=navajowhite4	guibg=grey15 		 	ctermfg=4 	ctermbg=7
:hi ColorColumn guibg=grey20 		ctermbg=darkgrey
:hi IncSearch 	guifg=green 		guibg=black 	cterm=none 	ctermfg=yellow ctermbg=green
:hi ModeMsg 	guifg=goldenrod 	cterm=none 		ctermfg=brown
:hi MoreMsg 	guifg=SeaGreen 		ctermfg=darkgreen
:hi NonText 	guifg=RoyalBlue 	guibg=grey15 	cterm=bold ctermfg=blue
:hi Question 	guifg=springgreen 	ctermfg=green
:hi Search 	guibg=peru 		guifg=wheat 	cterm=none ctermfg=grey ctermbg=blue
:hi SpecialKey 	guifg=yellowgreen 	ctermfg=darkgreen
:hi StatusLine 	guibg=#c2bfa5 		guifg=black 	gui=none cterm=bold,reverse
:hi StatusLineNC guibg=#c2bfa5 		guifg=grey40 	gui=none cterm=reverse
:hi Title 		guifg=gold 			gui=bold 		cterm=bold ctermfg=yellow
:hi Statement 	guifg=CornflowerBlue ctermfg=lightblue
:hi Visual 		gui=none 			guifg=khaki guibg=olivedrab cterm=reverse
:hi WarningMsg 	guifg=salmon 		ctermfg=1
:hi String 		guifg=SkyBlue 		ctermfg=darkcyan
:hi Comment 	term=bold 			ctermfg=11 guifg=grey70
:hi Constant 	guifg=#ffa0a0 		ctermfg=brown
:hi Special 	guifg=darkkhaki 	ctermfg=brown
:hi Identifier 	guifg=salmon 		ctermfg=red
:hi Include 	guifg=red 			ctermfg=red
:hi PreProc 	guifg=darkgreen 	term=bold ctermfg=red
:hi Operator 	guifg=SeaGreen 		ctermfg=Red
:hi Define 		guifg=gold 			gui=bold ctermfg=yellow
:hi Type 		guifg=CornflowerBlue ctermfg=2
:hi Function 	guifg=navajowhite 	ctermfg=brown
:hi Structure 	guifg=green 		ctermfg=green
:hi LineNr 		guifg=grey50 		ctermfg=3
:hi Ignore 		guifg=grey40 		cterm=bold ctermfg=7
:hi Todo 		guifg=orangered 	guibg=yellow2
:hi Directory 	ctermfg=darkcyan
:hi ErrorMsg 	cterm=bold 			guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1
:hi VisualNOS 	cterm=bold,underline
:hi WildMenu 	ctermfg=0 			ctermbg=3
:hi DiffAdd 	ctermbg=4
:hi DiffChange 	ctermbg=5
:hi DiffDelete 	cterm=bold 			ctermfg=4 ctermbg=6
:hi DiffText 	cterm=bold 			ctermbg=1
:hi Underlined 	cterm=underline 	ctermfg=5
:hi Error 		guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1
:hi SpellErrors guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1
