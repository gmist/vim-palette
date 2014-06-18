" Vim color file

set bg=dark
hi clear
if exists("syntax_on")
 syntax reset
endif

let colors_name = "purpledrop"

hi Normal guifg=#ffffdd guibg=#330044
hi ErrorMsg guifg=#ffffff guibg=#287eff
hi Visual guifg=#8080ff guibg=fg gui=reverse
hi VisualNOS guifg=#8080ff guibg=fg gui=reverse,underline
hi Todo guifg=#d14a14 guibg=#1248d1
hi Search guifg=#90fff0 guibg=#2050d0
hi IncSearch guifg=#b0ffff guibg=#2050d0

hi SpecialKey guifg=cyan
hi Directory guifg=cyan
hi Title guifg=magenta gui=none
hi WarningMsg guifg=red
hi WildMenu guifg=yellow guibg=black
hi ModeMsg guifg=#22cce2
hi MoreMsg guifg=darkgreen
hi Question guifg=green gui=none
hi NonText guifg=#0030ff

hi StatusLine guifg=blue guibg=darkgray gui=none
hi StatusLineNC guifg=black guibg=darkgray gui=none
hi VertSplit guifg=black guibg=darkgray gui=none

hi Folded guifg=#808080 guibg=#000040
hi FoldColumn guifg=#808080 guibg=#000040
hi LineNr guifg=#90f020

hi DiffAdd guibg=darkblue
hi DiffChange guibg=darkmagenta
hi DiffDelete gui=bold guifg=Blue guibg=DarkCyan
hi DiffText gui=bold guibg=Red

hi Cursor guifg=black guibg=yellow
hi lCursor guifg=black guibg=white


hi Comment guifg=#80a0ff
hi Constant guifg=lightyellow
hi Special guifg=Orange gui=none
hi Identifier guifg=#40ffff
hi Statement guifg=#ffff60 gui=none
hi PreProc guifg=#ff0000 gui=none
hi type guifg=cornflowerblue gui=none
hi Underlined term=underline
hi Ignore guifg=bg
