"
" Vim colour file
"
" Maintainer:  Ruslan Chikirin <ruslanch@gmail.com>
" Last Change: 26 May 2011
" Version:     1.0
"
" This colour file is meant for GUI use.
"

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="calm"


hi Normal        guifg=#000000  guibg=#ededed
hi Title         guifg=#000000  guibg=#ededed
hi Cursor        guibg=slategray
hi LineNr        guifg=#aaaaaa  guibg=#f5f5f5
hi Visual        guibg=#bbddff
hi NonText       guifg=#cccccc  guibg=#f5f5f5
hi StatusLine   guifg=#ffffff   guibg=#404040   gui=none
hi StatusLineNC guifg=#f0f0f0   guibg=#646464   gui=none
hi VertSplit    guifg=#f0f0f0   guibg=#646464   gui=none
hi ModeMsg       guifg=#007050  guibg=#eeeeee  gui=none
hi ErrorMsg      guifg=#f03050  guibg=#eeeeee  gui=none
hi Error         guifg=#bb3355  guibg=white    gui=none


" Vim 7.x specific
if version >= 700
  hi CursorLine  guibg=#eeeeee  gui=none
  hi MatchParen  guibg=#ccffdd  gui=none
  hi Pmenu       guifg=#60656f  guibg=#f0f5ff  gui=none
  hi PmenuSel    guifg=white    guibg=#3585ef  gui=bold
  hi PmenuSbar   guifg=#d0d5dd  guibg=#e0e5ee  gui=bold
  hi PmenuThumb  guifg=#e0e5ee  guibg=#c0c5dd  gui=bold
  hi Search      guibg=#fcfcaa  gui=none
  hi IncSearch   guibg=#ffff33  gui=bold
endif


" Syntax highlighting 
hi Comment       guifg=#668866         gui=none
hi Todo          guifg=#446644  guibg=#ddeecc  gui=italic
hi Operator      guifg=darkslateblue   gui=none
hi Identifier    guifg=saddlebrown     gui=none
hi Function      guifg=saddlebrown     gui=none
hi Statement     guifg=darkviolet      gui=none
hi Type          guifg=#0050b0         gui=none
hi Constant      guifg=mediumblue      gui=none
hi Conditional   guifg=darkviolet      gui=none
hi Delimiter     guifg=#101010         gui=none
hi PreProc       guifg=#008080         gui=none
hi Special       guifg=#a05050         gui=italic
hi Keyword       guifg=#007050         gui=none
hi String        guifg=darkred         gui=none
hi Number        guifg=darkgreen       gui=none
hi Float         guifg=darkgreen       gui=italic
hi Include       guifg=#007070         gui=none
hi PreCondit     guifg=#646400         gui=none
hi Label         guifg=saddlebrown     gui=none
hi Structure     guifg=darkblue        gui=none
hi Macro         guifg=#005050          gui=none
hi Exception     guifg=mediumvioletred gui=none
hi Character     guifg=darkred         gui=none

hi link Function        Normal
"hi link Character       Constant
"hi link String          Constant
hi link Boolean         Constant
"hi link Number          Constant
"hi link Float           Number
hi link Repeat          Conditional
"hi link Label           Statement
"hi link Exception       Statement
"hi link Include         PreProc
hi link Define          PreProc
"hi link Macro           PreProc
"hi link PreCondit       PreProc
hi link StorageClass    Type
"hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special

