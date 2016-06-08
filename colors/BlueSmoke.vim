" Vim color file

" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "BlueSmoke"

" Interesting colors
" SlateBlue, DeepSkyBlue, BlueViolet

" Normal should come first
"Blue tint: #F8F8FF
"Orange tint: #FEF1E0
hi Normal		guifg=Grey10 guibg=White

hi Cursor       guifg=White	guibg=Black
hi lCursor      guifg=NONE guibg=Cyan

hi Visual       guifg=White guibg=#338FFF
hi VisualNOS    gui=underline

hi Folded       guifg=#808080 guibg=#ECECEC

hi StatusLineNC	guifg=Grey75 guibg=NavyBlue gui=reverse,underline
hi VertSplit    guifg=Grey75 guibg=NavyBlue
hi StatusLine   guifg=White guibg=SlateBlue gui=none

hi LineNr       guifg=#959595 guibg=#ECECEC
"#FFF4CE
hi CursorLine   guibg=#FEF1E0

hi DiffAdd       guibg=LightBlue
hi DiffChange    guibg=LightMagenta
hi DiffDelete    gui=bold guifg=Blue guibg=LightCyan
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

" Syntax highlighting

"Cold hue: #607d8b, #858E8F
"Warm hue: Grey50
hi Comment          guifg=#858E8F
hi String           guifg=Red4
hi Constant         guifg=Red4
hi Operator         guifg=Cyan4
hi SyntaxChar       guifg=Black gui=None 

" github #BA1D5D
hi Statement        guifg=Blue3 gui=None
hi StorageClass     guifg=Blue3
hi Identifier       guifg=Cyan4
hi Function         guifg=Cyan4

hi csClassOrStruct  guifg=Blue3
hi Type	            guifg=Blue3 gui=None
hi PreProc          guifg=Magenta4
hi Special          guifg=Orange3

" vim: sw=2
