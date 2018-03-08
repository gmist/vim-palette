" Vim color file

" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "BlueSmoke"

" Normal should come first
hi Normal	         guifg=Black guibg=White

hi Comment         guifg=Green4
hi String          guifg=Green4
hi Character       guifg=Green4
hi Constant        guifg=Black
hi Operator        guifg=Red4
hi SyntaxChar      guifg=Black
hi Statement       guifg=Blue3 gui=bold
hi StorageClass    guifg=Blue3 gui=bold
hi Keyword         guifg=Blue3 gui=bold
hi cType           guifg=Black gui=bold
hi Type            guifg=Black gui=bold
hi Function        guifg=Black gui=bold
hi Identifier      guifg=Magenta4 gui=bold
hi PreProc         guifg=Magenta4

" printf() formatting specifiers
hi Special         guifg=Magenta4

hi Cursor       guifg=White	guibg=Red
hi lCursor      guifg=NONE guibg=Cyan

hi Visual       guibg=#b6d6fd
hi VisualNOS    gui=underline


hi Folded       guifg=#808080 guibg=#ECECEC gui=none

hi StatusLineNC	guifg=Grey75 guibg=NavyBlue gui=reverse,underline
hi VertSplit    guifg=Grey75 guibg=NavyBlue
hi StatusLine   guifg=NavyBlue guibg=Grey75 gui=bold,underline

hi LineNr       guifg=#959595 guibg=#ECECEC
hi CursorLine   guibg=#FFF4CE

hi DiffAdd       guibg=LightBlue
hi DiffChange    guibg=LightMagenta
hi DiffDelete    gui=none guifg=Black guibg=LightCyan
hi DiffText      gui=bold guibg=Red
hi Directory     guifg=Blue
hi ErrorMsg      guibg=White guifg=DarkRed	   
hi Error         guibg=White guifg=DarkRed	   
hi FoldColumn    guibg=Grey guifg=DarkBlue
hi IncSearch     gui=reverse
hi ModeMsg       gui=bold
hi MoreMsg       gui=bold guifg=SeaGreen
hi NonText       gui=bold guifg=gray guibg=white
hi Pmenu         guibg=LightBlue
hi PmenuSel      guifg=White guibg=DarkBlue
hi Question      gui=bold guifg=SeaGreen
hi Search        guibg=Yellow guifg=NONE
hi SpecialKey    guifg=Blue
hi Title         gui=bold guifg=Magenta
hi WarningMsg    guifg=Red
hi WildMenu      guibg=Yellow guifg=Black

" vim: sw=2
