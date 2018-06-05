" Vim color file
" Last Change: 2018-03-19
"
" rested.vim is a mangled version of desert.vim that is by Hans Fugal

" This color-scheme was influenced by the quest to find
" "perceptually equidistant colors" or "perceptually-distinct colors".
" The currently used colors do not fit either criteria in any manner!

" Original file info
" -- Maintainer:   Hans Fugal <hans@fugal.net>
" -- URL:          http://hans.fugal.net/vim/colors/desert.vim

set background=dark

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="rested"

hi Normal         guifg=#C5CAD0       guibg=#25272a
hi CursorLine     guibg=#333333
hi CursorLineNr   guibg=#20252a       gui=none
hi CursorColumn   guibg=#333333
hi Directory      guifg=#6394ED

" highlight groups
hi Cursor         guibg=slategrey     guifg=gold
"hi CursorIM
hi DiffAdd        guibg=#225511
hi DiffChange     guibg=#332277
hi DiffDelete     guibg=#555566       guifg=#444455
hi DiffText       guibg=#993322
"hi ErrorMsg
hi VertSplit      guibg=#c2bfa5       guifg=grey50 gui=none
hi Folded         guibg=grey30        guifg=gold
hi FoldColumn     guibg=grey30        guifg=tan
hi IncSearch      guifg=forestgreen   guibg=khaki
hi LineNr         guifg=#999966
hi ModeMsg        guifg=goldenrod
hi MoreMsg        guifg=SeaGreen
hi NonText        guifg=#CCCCCC       guibg=#292929
hi Question       guifg=springgreen
hi Search         guibg=gold
hi SpecialKey     guifg=yellowgreen
hi StatusLine     guibg=#c2bfa5       guifg=gray10 gui=none
hi StatusLineNC   guibg=#c2bfa5       guifg=gray45 gui=none
hi Title          guifg=indianred
hi Visual         gui=none            guibg=DarkOliveGreen
"hi VisualNOS
hi WarningMsg     guifg=salmon
hi WildMenu       guifg=wheat         guibg=darkgreen
"hi Menu
"hi Scrollbar
"hi Tooltip

" syntax highlighting groups
hi Comment        guifg=#90B0D5       gui=none

hi Constant       guifg=#FE69B4       gui=none
hi String         guifg=#F08080       gui=none
hi Character      guifg=#EA7AC1       gui=none
hi Number         guifg=#FF7ADD       gui=none
hi Boolean        guifg=#FAA796       gui=none
hi Float          guifg=#FF65B2       gui=none

hi Identifier     guifg=#009b80       gui=none
hi Function       guifg=#0095c0       gui=none

hi Statement      guifg=#EEE685       gui=none
hi Conditional    guifg=#F2DB6F       gui=none
hi Repeat         guifg=#F1CF5B       gui=none
hi Label          guifg=#FD971F       gui=none
hi Operator       guifg=#F6EF9A       gui=none
hi Keyword        guifg=#F9E8A8       gui=none
hi Exception      guifg=#F0AF0F

hi PreProc        guifg=#FB9986       gui=none
hi Include        guifg=#FF6B6B       gui=none
hi Define         guifg=orchid        gui=none
hi Macro          guifg=brown3        gui=none
hi PreCondit      guifg=#FF4C33       gui=none

hi Type           guifg=#9ACD27       gui=none
hi StorageClass   guifg=#63B017       gui=none
hi Structure      guifg=#389300       gui=none
hi Typedef        guifg=#BAE26b       gui=none

hi Special        guifg=#ba55d3       gui=none
hi SpecialChar    guifg=#B99BF8       gui=none
hi Tag            guifg=#4068E1       gui=none
hi Delimiter      guifg=#a236fb       gui=none
hi SpecialComment guifg=#A77BD3       gui=none
hi Debug          guifg=#00B0EB       gui=none

hi Ignore         guifg=#555566
hi Error          guifg=#FFDFE4       guibg=#F00000
hi Todo           guifg=#F7FFB7       guibg=#FF5E00

hi MatchParen     guifg=#f8f8ff       guibg=DarkCyan

" NOTE: QuickFixLine needs newer vim 8.0
hi QuickFixLine   gui=none            guibg=DarkOliveGreen

hi Pmenu          guifg=#DDBBDD       guibg=#550055
hi PmenuSel       guifg=#FFCCFF       guibg=#770077

hi SignColumn     guibg=grey30        guifg=tan

"vim: sw=4
