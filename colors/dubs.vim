" local syntax file - set colors on a per-machine basis:
" Maintainer:	urbangabo@gmail.com
" Last Change:	2013.03.04
" Revision 1: start

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "dubs"
hi Normal		guifg=black	guibg=SteelBlue	ctermfg=lightgreen	ctermbg=darkblue
hi NonText		guifg=magenta	ctermfg=magenta

hi comment		guifg=plum		ctermfg=grey		gui=bold 
hi constant		guifg=orange		ctermfg=yellow
hi identifier	guifg=gainsboro		ctermfg=red
hi statement	guifg=white		ctermfg=white		gui=none
hi preproc		guifg=green		ctermfg=green
hi type			guifg=coral	ctermfg=lightRed	
hi special		guifg=magenta	ctermfg=lightMagenta	
hi Underlined	guifg=cyan		ctermfg=cyan	gui=underline	cterm=underline
hi label		guifg=yellow	ctermfg=yellow
hi operator		guifg=lightYellow gui=bold	ctermfg=lightRed	

hi ErrorMsg		guifg=orange	guibg=darkBlue	ctermfg=lightRed
hi WarningMsg	guifg=cyan		guibg=darkBlue	ctermfg=cyan	gui=bold
hi ModeMsg		guifg=yellow	gui=NONE	ctermfg=yellow
hi MoreMsg		guifg=yellow	gui=NONE	ctermfg=yellow
hi Error		guifg=red		guibg=darkBlue	gui=underline	ctermfg=red

hi Todo			guifg=gainsboro		guibg=blue	ctermfg=black	ctermbg=darkYellow
hi Cursor		guifg=black		guibg=white		ctermfg=black	ctermbg=white
hi Search		guifg=black		guibg=maroon	ctermfg=black	ctermbg=darkYellow
hi IncSearch	guifg=black		guibg=yellow	ctermfg=black	ctermbg=darkYellow
hi LineNr		guifg=lightRed 	ctermfg=lightRed
hi title		guifg=white	gui=bold	cterm=bold

hi StatusLineNC	gui=NONE	guifg=black guibg=blue	ctermfg=black  ctermbg=blue
hi StatusLine	gui=bold	guifg=cyan	guibg=blue	ctermfg=cyan   ctermbg=blue
hi VertSplit	gui=none	guifg=blue	guibg=blue	ctermfg=blue	ctermbg=blue

hi Visual		term=reverse		ctermfg=black	ctermbg=darkCyan	guifg=black		guibg=darkCyan

hi DiffChange	guibg=darkGreen		guifg=black	ctermbg=darkGreen	ctermfg=black
hi DiffText		guibg=olivedrab		guifg=black		ctermbg=lightGreen	ctermfg=black
hi DiffAdd		guibg=slateblue		guifg=black		ctermbg=blue		ctermfg=black
hi DiffDelete   guibg=coral			guifg=black	ctermbg=cyan		ctermfg=black

hi Folded		guibg=orange		guifg=black		ctermbg=yellow		ctermfg=black
hi FoldColumn	guibg=gray30		guifg=black	ctermbg=gray		ctermfg=black
hi cIf0			guifg=gray			ctermfg=gray

