"
" Tango-Light Vim Color Scheme
" =======================
"
" author:   shady <vimpimps@gmail.com>
"

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "tangolight"


"hi Normal guibg=grey15 guifg=#eeeeec 
"hi Normal guibg=#0D0D0D guifg=#eeeeec 
hi Normal guibg=#171717 guifg=#eeeeec 

"hi Normal guibg=#272727 guifg=#eeeeec 

highlight SpecialKey      guifg=#729FCF
highlight NonText         guifg=#729FCF
highlight Directory       guifg=#729FCF
highlight ErrorMsg        guifg=#D3D7CF guibg=#ef2929
highlight IncSearch       gui=reverse
highlight Search          guibg=#EDD400
highlight MoreMsg         guifg=#73D216
" highlight ModeMsg         gui=bold
"highlight LineNr          guifg=#666666 guibg=#151515
highlight LineNr          guifg=#666666 guibg=#262626
"highlight LineNr          term=underline ctermfg=3 guifg=#EDD400 guibg=bg
highlight Question        guifg=#73D216
highlight StatusLine      gui=reverse
highlight StatusLineNC    gui=reverse
highlight VertSplit       gui=reverse
highlight Title           guifg=#AD7FA8
" highlight Visual          term=reverse cterm=reverse guibg=#D3D7CF
highlight Visual          guibg=#7E7E7E
highlight VisualNOS       gui=underline
highlight WarningMsg      guifg=#ef2929
highlight WildMenu        guifg=#2E3436 guibg=#EDD400
"highlight Folded          term=standout ctermfg=4 ctermbg=7 guifg=#729FCF guibg=#D3D7CF
"highlight FoldColumn      term=standout ctermfg=4 ctermbg=7 guifg=#D3D7CF guibg=#D3D7CF
hi Folded guibg=black guifg=grey40 ctermfg=grey ctermbg=darkgrey
hi FoldColumn guibg=black guifg=grey20 ctermfg=4 ctermbg=7
highlight DiffAdd         guibg=#729FCF
highlight DiffChange      guibg=#AD7FA8
highlight DiffDelete      guifg=#729FCF guibg=#AD7FA8
highlight DiffText        guibg=#ef2929
highlight SignColumn      guifg=#000000 guibg=#D3D7CF
highlight SpellBad        gui=undercurl guisp=#ef2929
highlight SpellCap        gui=undercurl guisp=#729FCF
highlight SpellRare       gui=undercurl guisp=#AD7FA8
highlight SpellLocal      gui=undercurl guisp=#AD7FA8
highlight Pmenu           guibg=#AD7FA8 guifg=#000000
highlight PmenuSel        guibg=#D3D7CF guifg=#000000
highlight PmenuSbar       guibg=#AD7FA8
highlight PmenuThumb      gui=reverse
highlight TabLine         gui=underline guibg=#D3D7CF guifg=#000000
"highlight TabLineSel      gui=bold
highlight TabLineFill     gui=reverse
highlight CursorColumn    guibg=#D3D7CF guifg=#000000
highlight CursorLine      guibg=#D3D7CF guifg=#000000
highlight Cursor          guifg=bg guibg=fg
highlight lCursor         guifg=bg guibg=fg
highlight MatchParen      guibg=#AD7FA8
hi Comment         guifg=#729FCF
hi Constant        guifg=#ef2929
hi Special         guifg=#AD7FA8
highlight Identifier      guifg=#34E2E2
hi Statement       guifg=#EDD400
hi PreProc         guifg=#AD7FA8
hi Type            guifg=#73D216
hi Underlined      gui=underline guifg=#AD7FA8
hi Ignore          guifg=#2E3436
hi Error           guifg=#D3D7CF guibg=#ef2929
highlight Todo     guifg=Blue guibg=Yellow 
