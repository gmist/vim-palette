" local syntax file - set colors on a per-machine basis:
" Maintainer:	urbangabo@gmail.com
" Last Change:	2014.05.08
" Revision 0: start

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "dubs_green"

" TODO : test console

hi Normal guifg=azure guibg=DarkGreen ctermfg=lightyellow	ctermbg=darkgreen
hi Repeat guifg=cyan  ctermfg=DarkGrey
hi LineNr   guifg=LightCoral  ctermfg=green
hi Special     guifg=LightBlue	ctermfg=darkyellow
hi Comment guifg=plum1
hi Cursor guifg=black	guibg=NavajoWhite ctermfg=black	ctermbg=white
hi todo	 guifg=yellow   guibg=DarkRed  ctermfg=black	ctermbg=yellow
hi Macro		guifg=PeachPuff1	ctermfg=lightgreen		gui=bold 

" --------------------

hi constant	     guifg=yellow   	ctermfg=white

hi Statement	guifg=BlanchedAlmond	     ctermfg=LightGrey		gui=none

hi Number   guifg=gold   ctermfg=red
hi Float guifg=DarkGoldenrod   ctermfg=red
hi VertSplit gui=none guifg=NavajoWhite guibg=blue	ctermfg=blue	ctermbg=blue
hi String guifg=orchid ctermfg=lightmagenta
hi Function 	guifg=LightSkyBlue1	ctermfg=black	ctermbg=Yellow
hi Structure 	guifg=SkyBlue	ctermfg=black	ctermbg=Yellow
hi Visual   term=reverse  ctermfg=black	ctermbg=darkCyan guifg=black guibg=sienna1

"
" --------------------
"

hi Conditional  guifg=LawnGreen	ctermfg=lightmagenta

" hi Conditional  guifg=LightSeaGreen	ctermfg=lightmagenta

hi Identifier guifg=gainsboro		ctermfg=cyan

hi Keyword     guifg=PapayaWhip   ctermfg=Brown

hi Type			guifg=coral	ctermfg=lightmagenta	

hi NonText		guifg=magenta	ctermfg=magenta
hi preproc		guifg=LemonChiffon	ctermfg=cyan
hi Underlined	guifg=cyan		ctermfg=cyan	gui=underline	cterm=underline
hi label		guifg=yellow	ctermfg=yellow
hi operator		guifg=lightYellow gui=bold	ctermfg=lightRed	
hi ErrorMsg		guifg=orange	guibg=darkBlue	ctermfg=lightRed
hi WarningMsg	guifg=cyan		guibg=darkBlue	ctermfg=cyan	gui=bold
hi ModeMsg		guifg=yellow	gui=NONE	ctermfg=yellow
hi MoreMsg		guifg=yellow	gui=NONE	ctermfg=yellow
hi Error		guifg=red		guibg=darkBlue	gui=underline	ctermfg=red
hi Search		guifg=black		guibg=maroon	ctermfg=black	ctermbg=darkYellow
hi IncSearch	guifg=black		guibg=yellow	ctermfg=black	ctermbg=darkYellow
hi title		guifg=white	gui=bold	cterm=bold
hi StatusLineNC	gui=NONE	guifg=black guibg=blue	ctermfg=black  ctermbg=blue
hi StatusLine	gui=bold	guifg=cyan	guibg=blue	ctermfg=cyan   ctermbg=blue

hi DiffChange	guibg=darkGreen		guifg=black	ctermbg=darkGreen	ctermfg=black
hi DiffText		guibg=olivedrab		guifg=black		ctermbg=lightGreen	ctermfg=black
hi DiffAdd		guibg=slateblue		guifg=black		ctermbg=blue		ctermfg=black
hi DiffDelete   guibg=coral			guifg=black	ctermbg=cyan		ctermfg=black
hi Folded		guibg=orange		guifg=black		ctermbg=yellow		ctermfg=black
hi FoldColumn	guibg=gray30		guifg=black	ctermbg=gray		ctermfg=black
hi cIf0			guifg=gray			ctermfg=gray

hi PreCondit		guifg=burlywood1	ctermfg=lightmagenta
hi Define		guifg=plum	ctermfg=lightgreen		gui=bold


