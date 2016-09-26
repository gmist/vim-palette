" Vim color file

" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "muratori"

" Normal should come first
hi Normal		 guifg=#D8B07A guibg=Grey12
hi NonText		 guifg=#607d8b guibg=Grey12

hi Cursor       guifg=Black guibg=Green3
hi lCursor      guifg=NONE guibg=Green3
hi CursorLine   guibg=#00008B guifg=NONE gui=NONE

hi Visual       guifg=NONE guibg=#191970
hi VisualNOS    gui=underline

hi Folded       guifg=#858E8F guibg=Grey20 gui=none

hi LineNr       guifg=#858E8F guibg=Grey20
hi StatusLineNC guifg=Grey65 guibg=#191970 gui=reverse,underline
hi VertSplit    guifg=Grey65 guibg=#191970
hi StatusLine   guifg=#191970 guibg=Grey65 gui=underline

hi Pmenu         guifg=#191970 guibg=Grey65
hi PmenuSel      guifg=#191970 guibg=#FFDAB9

hi Search         guibg=#D2B48C guifg=Black gui=bold
hi MatchParen     guibg=#00008B

hi DiffAdd       guibg=LightBlue
hi DiffChange    guibg=LightMagenta
hi DiffDelete    gui=bold guifg=Blue guibg=LightCyan
hi DiffText      gui=bold guibg=Red
hi ErrorMsg      guibg=White guifg=DarkRed	   
hi Error         guibg=White guifg=DarkRed	   
hi FoldColumn    guibg=Grey guifg=DarkBlue
hi IncSearch     gui=reverse
hi ModeMsg       gui=bold
hi MoreMsg       gui=bold guifg=SeaGreen
hi Question      gui=bold guifg=SeaGreen
hi SpecialKey    guifg=Blue
hi Title         gui=bold guifg=Magenta3
hi WarningMsg    guifg=Red2
hi WildMenu      guibg=Yellow guifg=Black

" Syntax highlighting
"""""""""""""""""""""

hi Comment          guifg=#607d8b
hi String           guifg=#6B8E23
hi Constant         guifg=#6B8E23
hi Operator         guifg=#B8860B

hi Statement        guifg=#B8860B gui=bold
hi StorageClass     guifg=#B8860B gui=bold
hi Identifier       guifg=#D8B07A
hi Function         guifg=#D8B07A

hi Type	           guifg=#B8860B gui=bold
hi PreProc          guifg=#D8B07A

hi Special          guifg=#2BAE2B

hi Directory        guifg=#B8860B gui=bold

" vim: sw=2
