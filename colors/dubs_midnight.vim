" local syntax file - set colors on a per-machine basis:
" Maintainer:	urbangabo@gmail.com
" Last Change:	2017.02.19
" Revision 0.1: start

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "dubs_midnight"

hi Normal guifg=azure guibg=DarkCyan   ctermfg=lightyellow	ctermbg=DarkMagenta
hi Conditional  guifg=LawnGreen	ctermfg=lightmagenta
hi LineNr   guifg=yellow  ctermfg=yellow
hi Cursor guifg=black	guibg=NavajoWhite ctermfg=black	ctermbg=white
hi Comment guifg=#80a0ff
hi todo	 guifg=MistyRose   guibg=DarkGrey  ctermfg=black	ctermbg=yellow
hi Macro	     guifg=LightBlue	ctermfg=lightgreen     gui=bold 
hi PreCondit	     guifg=Green	ctermfg=lightmagenta
hi Number   guifg=gold   ctermfg=red
hi Float guifg=gold   ctermfg=red
hi String ctermfg=magenta guifg=#ffa0a0 cterm=none
hi Define	  guifg=plum	ctermfg=lightgreen		gui=bold
hi Keyword guifg=LightSkyBlue  ctermfg=Blue
hi constant	     guifg=blue   	ctermfg=white
hi Repeat guifg=aquamarine  ctermfg=DarkGrey
hi Identifier guifg=azure	    ctermfg=cyan
hi Search		guifg=black		guibg=maroon	ctermfg=black	ctermbg=darkYellow
hi IncSearch	guifg=black		guibg=yellow	ctermfg=black	ctermbg=darkYellow
hi Statement	guifg=BlanchedAlmond	     ctermfg=LightGrey		gui=none
hi VertSplit gui=none guifg=NavajoWhite guibg=gold1	ctermfg=blue	ctermbg=blue
hi Function 	guifg=CadetBlue1	ctermfg=black	ctermbg=Yellow
hi Structure 	guifg=SkyBlue	ctermfg=black	ctermbg=Yellow
hi operator		guifg=lightYellow gui=bold	ctermfg=lightRed
hi preproc		guifg=LightSkyBlue1	ctermfg=cyan
hi ErrorMsg		guifg=orange	guibg=darkBlue	ctermfg=lightRed
hi DiffDelete   guibg=red			guifg=black	ctermbg=cyan		ctermfg=black
hi label		guifg=white	ctermfg=white
hi Error		guifg=red		guibg=darkBlue	gui=underline	ctermfg=red
hi StatusLine	gui=bold	guifg=cyan	guibg=green	ctermfg=cyan   ctermbg=blue
hi Define		guifg=plum	ctermfg=lightgreen		gui=bold
hi Special     guifg=LightBlue	ctermfg=darkyellow
hi Visual   term=reverse  ctermfg=black	ctermbg=darkCyan guifg=black guibg=sienna1
hi ModeMsg		guifg=yellow	gui=NONE	ctermfg=yellow
hi MoreMsg		guifg=yellow	gui=NONE	ctermfg=yellow
hi Type			guifg=coral	ctermfg=lightmagenta	
hi NonText		guifg=magenta	ctermfg=magenta
hi Underlined	guifg=cyan		ctermfg=cyan	gui=underline	cterm=underline
hi WarningMsg	guifg=cyan		guibg=darkBlue	ctermfg=cyan	gui=bold
hi title		guifg=white	gui=bold	cterm=bold
hi StatusLineNC	gui=NONE	guifg=black guibg=blue	ctermfg=black  ctermbg=blue
hi DiffChange	guibg=darkGreen		guifg=black	ctermbg=darkGreen	ctermfg=black
hi DiffText		guibg=olivedrab		guifg=black		ctermbg=lightGreen	ctermfg=black
hi DiffAdd		guibg=slateblue		guifg=black		ctermbg=blue		ctermfg=black
hi Folded		guibg=orange		guifg=black		ctermbg=yellow		ctermfg=black
hi FoldColumn	guibg=gray30		guifg=black	ctermbg=gray		ctermfg=black
hi cIf0			guifg=gray			ctermfg=gray



