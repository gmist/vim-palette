" GURU color scheme
"
" Name:         guru.vim
" Maintainer:   Shaon Diwakar <shaon@shaon.net>
" License:      Public Domain
" Version:      1.1
"
" This scheme should work in the GUI and in xterm's 256 color mode. It won't
" work in 8/16 color terminals. Part of this is forked from work done by Jo Vermeulen


set background=dark

hi clear
if exists("syntax_on")
   syntax reset
endif

let g:colors_name = "guru"

if has("gui_running")
    highlight Normal              guifg=White   guibg=#262626
    highlight Cursor              guifg=Black   guibg=#bcd427
    highlight Keyword             guifg=#ff6600
    highlight Define              guifg=#ff6600
    highlight Comment             guifg=#9933cc
    highlight LineNr              guifg=#8a8a8a guibg=NONE gui=NONE
    highlight Type                guifg=White   gui=NONE
    highlight Identifier          guifg=White   gui=NONE
    highlight Constant            guifg=#ffee98
    highlight Function            guifg=#ffcc00 gui=NONE
    highlight Include             guifg=#ffcc00 gui=NONE
    highlight Statement           guifg=#ff6600 gui=NONE
    highlight String              guifg=#66ff00
    highlight Search              guifg=White   guibg=#d7005f
    highlight CursorLine          guibg=#303030
    highlight CursorColumn        guibg=#303030
    highlight CursorLineNr        guibg=#303030
    highlight MatchParen          guibg=#ff0087
    highlight StatusLine          guibg=#1c1c1c guifg=#dadada gui=NONE
    highlight Visual              guibg=#444444
    highlight VertSplit           guifg=#444444 guibg=#3a3a3a gui=NONE
    highlight ErrorMsg            guibg=#d7005f
    highlight WarningMsg          guifg=#d7005f
    highlight Pmenu               guifg=#bcbcbc guibg=#1c1c1c
    highlight PmenuSbar           guifg=#d700d7
    highlight PmenuSel            guibg=#808080
    highlight PmenuThumb          guibg=#ffff00

    " Diff colours
    "highlight DiffAdd             guibg=#005f00
    highlight DiffAdd             guibg=#005f5f
    highlight DiffChange          guibg=#8700ff
    highlight DiffDelete          guibg=#d7005f guifg=#af005f
    highlight DiffText            guibg=#0000af

    " Spelling highlight
    highlight SpellBad            gui=underline

    " Ruby Bindings
    highlight rubySymbol          guifg=#339999 gui=NONE
    highlight rubyStringDelimiter guifg=#66ff00
    highlight rubyInterpolation   guifg=White
    highlight rubyPseudoVariable  guifg=#339999

    " JavaScript Bindings
    highlight javaScriptType              guifg=#afe459
    highlight javaScriptNumber            guifg=#66d9ef
    highlight javaScriptFuncName          guifg=#f58e42
    highlight javaScriptThis              guifg=#66d9ef
    highlight javaScriptNull              guifg=#d7005f
    highlight javaScriptCommentTodo       guifg=#ff0000
    highlight jsThis                      guifg=#66d9ef
    highlight jsNull                      guifg=#d7005f
    highlight jsNumber                    guifg=#66d9ef
    highlight jsFunctionKey               guifg=#afe459
    highlight jsPrototype                 guifg=#6d9cbe

    " General updates for invisible characters
    highlight NonText             guifg=#353535
    highlight SpecialKey          guifg=#353535

    " Adding support for indent guides (GUI only)
    highlight IndentGuidesOdd     guibg=red     ctermbg=3
    highlight IndentGuidesEven    guibg=green   ctermbg=4
    highlight Conceal             guifg=#353535 guibg=NONE

    " Support for folds
    highlight FoldColumn          guibg=#262626   guifg=#d6d5d1
    highlight Folded              guibg=#262626   guifg=#808080

    " Support for vim-indent-guides
    "highlight IndentGuidesOdd  guibg=#
    "highlight IndentGuidesEven guibg=green ctermbg=4
endif


" --- COLORS ---
"  Refer to Xterm color chart
"
" Foreground      #a0a0a0
" Background      #161616
" Highlight bg    #505354
" Light Blue      #66d9ef 67
" Dark Green      #a1d052 71
" Red             #ff3c83 160
" Light Green     #afe459 118
" Dark Orange     #ffa542 130
" Purple          #b28bf8 91
" Grey            #708488 237
" Light Grey      #d6d5d1 214
" Pink            #ff669d 161
" Brown           #f2882d
" Hot Pink        #6d9cbe 161
" Tan             #ffc66d 180
