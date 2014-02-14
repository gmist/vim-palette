"--------------------------------------------------------------------
" Name Of File: newnoise.vim.
" Description: Gvim colorscheme, designed against VIM 7.0 GUI
" By: Olivier Bellemans
" Contact: olivier.bellemans@gmail.com
" Credits: Based on dw_red.vim
" Last Change: Wednesday, June 26, 2013.
" Installation: Drop this file in your $VIMRUNTIME/colors/ directory.
"--------------------------------------------------------------------

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="newnoise"

"--------------------------------------------------------------------

hi Boolean                                       guifg=#ff0000
hi cDefine                                       guifg=#ff0000
hi cInclude                                      guifg=#b0b0b0
hi Comment                                       guifg=#606060
hi Constant                                      guifg=#ff0000
hi Cursor                         guibg=#444444  guifg=#eeeeee
hi CursorColumn                   guibg=#110000
hi CursorLine                     guibg=#030303
hi DiffAdd                        guibg=#333333  guifg=#ff0000
hi DiffChange                     guibg=#333333  guifg=#ff0000
hi DiffDelete                     guibg=#333333  guifg=#ff0000
hi DiffText                       guibg=#333333  guifg=#ffffff
hi Directory                      guibg=#000000  guifg=#ff0000
hi ErrorMsg                       guibg=#ffffff  guifg=#000000
hi FoldColumn                     guibg=#222222  guifg=#ff0000
hi Folded                         guibg=#222222  guifg=#ff0000
hi Function                                      guifg=#a0a0a0
hi Identifier                                    guifg=#cc0000
hi IncSearch       gui=none       guibg=#bb0000  guifg=#000000
hi LineNr                         guibg=#0c0c0c  guifg=#2a2a2a
hi MatchParen      gui=none       guibg=#222222  guifg=#ff0000
hi ModeMsg                                       guifg=#ff0000
hi MoreMsg                                       guifg=#ff0000
hi NonText                        guibg=#0c0c0c  guifg=#b0b0b0
hi Normal          gui=none       guibg=#0c0c0c  guifg=#414141
hi Number          gui=none                      guifg=#696969
hi Operator        gui=none                      guifg=#696969
hi PreProc         gui=bold                      guifg=#a0a0a0
hi Question                                      guifg=#ff0000
hi Search          gui=none       guibg=#dd0000  guifg=#000000
hi SignColumn                     guibg=#111111  guifg=#ffffff
hi Special         gui=bold                      guifg=#dd2222
hi SpecialKey                     guibg=#000000  guifg=#ff0000
hi Statement       gui=bold                      guifg=#dd0000
hi StatusLine      gui=none       guibg=#ff0000  guifg=#000000
hi StatusLineNC    gui=none       guibg=#444444  guifg=#000000
hi String          gui=none                      guifg=#dd2222
hi TabLine         gui=none       guibg=#444444  guifg=#000000
hi TabLineFill     gui=underline  guibg=#000000  guifg=#ffffff
hi TabLineSel      gui=none       guibg=#aa0000  guifg=#000000
hi Title           gui=none                      guifg=#ff0000
hi Todo            gui=none       guibg=#000000  guifg=#ff0000
hi Type            gui=none                      guifg=#dd2222
hi VertSplit       gui=none       guibg=#000000  guifg=#ffffff
hi Visual                         guibg=#dd0000  guifg=#000000
hi WarningMsg                     guibg=#888888  guifg=#000000

"- end of colorscheme -----------------------------------------------  
