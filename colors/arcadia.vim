"     ______  ____    ____     ______  ____    ______   ______     
"    /\  _  \/\  _`\ /\  _`\  /\  _  \/\  _`\ /\__  _\ /\  _  \    
"    \ \ \L\ \ \ \L\ \ \ \/\_\\ \ \L\ \ \ \/\ \/_/\ \/ \ \ \L\ \   
"     \ \  __ \ \ ,  /\ \ \/_/_\ \  __ \ \ \ \ \ \ \ \  \ \  __ \  
"      \ \ \/\ \ \ \\ \\ \ \L\ \\ \ \/\ \ \ \_\ \ \_\ \__\ \ \/\ \ 
"       \ \_\ \_\ \_\ \_\ \____/ \ \_\ \_\ \____/ /\_____\\ \_\ \_\
"        \/_/\/_/\/_/\/ /\/___/   \/_/\/_/\/___/  \/_____/ \/_/\/_/
                                                              
" A Terminal Vim colorscheme
" Author:       Alessandro Yorba
" Script URL:   https://github.com/AlessandroYorba/Arcadia
" License:      MIT

"================================================================================
" COLOR PALETTE:
"================================================================================

"White:
"================================================================================
"Cloud          254      #e4e4e4      http://www.colorhexa.com/e4e4e4

"Black:
"================================================================================
"Pitch          232      #080808      http://www.colorhexa.com/080808
"Midnight       233      #121212      http://www.colorhexa.com/121212
"Twilight       234      #1c1c1c      http://www.colorhexa.com/1c1c1c

"Gray:
"================================================================================
"Stars          188      #dfdfdf      http://www.colorhexa.com/dfdfdf
"Sunset         235      #262626      http://www.colorhexa.com/262626
"Day            236      #303030      http://www.colorhexa.com/303030
"Shade          237      #3a3a3a      http://www.colorhexa.com/3a3a3a
"Pebble         239      #4e4e4e      http://www.colorhexa.com/4e4e4e
"Fog            241      #626262      http://www.colorhexa.com/626262
"Ash            243      #767676      http://www.colorhexa.com/767676
"Dust           244      #808080      http://www.colorhexa.com/808080
"Stone          245      #8a8a8a      http://www.colorhexa.com/8a8a8a

"Red:
"================================================================================
"Firecracker    131      #af5f5f      http://www.colorhexa.com/af5f5f
"Scarlet        160      #d70000      http://www.colorhexa.com/d70000
"Rose           167      #d75f5f      http://www.colorhexa.com/d75f5f

"Green:
"================================================================================
"Foxton         36       #00af87      http://www.colorhexa.com/00af87
"Fern           65       #5f875f      http://www.colorhexa.com/5f875f
"Jade           79       #5fd7af      http://www.colorhexa.com/5fd7af
"Sage           107      #87af5f      http://www.colorhexa.com/87af5f
"Marsh          108      #87af87      http://www.colorhexa.com/87af87
"Pistachio      119      #87ff5f      http://www.colorhexa.com/87ff5f
"Emerald        151      #afd7af      http://www.colorhexa.com/afd7af
"Chartreuse     190      #dfff00      http://www.colorhexa.com/dfff00
"Lime           191      #dfff5f      http://www.colorhexa.com/dfff5f
"Parakeet       192      #dfff87      http://www.colorhexa.com/dfff87
"Ocean          194      #dfffdf      http://www.colorhexa.com/dfffdf

"Yellow:
"================================================================================
"Dune           187      #dfdfaf      http://www.colorhexa.com/dfdfaf
"Firefly        230      #ffffdf      http://www.colorhexa.com/ffffdf

"Cyan:
"================================================================================
"Oasis          109      #87afaf      http://www.colorhexa.com/87afaf
"Robin          111      #87afff      http://www.colorhexa.com/87afff

"Blue:
"================================================================================

"Purple:
"================================================================================
"Wisteria       147     #afafff       http://www.colorhexa.com/afafff

"Orange:
"================================================================================
"Pomegranate    209     #ff875f       http://www.colorhexa.com/ff875f
"Sorbet         216     #ffaf87       http://www.colorhexa.com/ffaf87


set background=dark

highlight clear
if exists("syntax_on")
    syntax reset
endif

"================================================================================
" SET DEFAULT PARAMETERS:
"================================================================================

let g:colors_name="arcadia"

if !exists("g:arcadia_Sunset")
    let g:arcadia_Sunset = 0
endif

if !exists("g:arcadia_Twilight")
    let g:arcadia_Twilight = 0
endif

if !exists("g:arcadia_Midnight")
    let g:arcadia_Midnight = 0
endif

if !exists("g:arcadia_Pitch")
    let g:arcadia_Pitch = 0
endif

if !exists("g:arcadia_Clear_Skies")
    let g:arcadia_Clear_Skies = 0
endif

if !exists("g:arcadia_Campfire")
    let g:arcadia_Campfire = 0
endif

"================================================================================
" COMMON SETTINGS:
"================================================================================

" File Navigation:
hi Directory         ctermfg=36         guifg=#00af87       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi Search            ctermfg=147        guifg=#afafff       ctermbg=232       guibg=#080808      cterm=reverse  gui=reverse

" Prompt Status:
hi Title             ctermfg=151        guifg=#afd7af      ctermbg=NONE      guibg=NONE          cterm=NONE     gui=NONE
hi ModeMsg           ctermfg=230        guifg=#ffffdf       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi MoreMsg           ctermfg=190        guifg=#dfff00       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi Question          ctermfg=190        guifg=#dfff00       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE

" Number Column:
hi Folded            ctermfg=187        guifg=#dfdfaf       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
"FIXME
hi FoldColumn        ctermfg=109        guifg=#87afaf       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
"FIXME
hi SignColumn        ctermfg=108        guifg=#87af87       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE

" Visual Aid:
hi SpecialKey        ctermfg=187        guifg=#dfdfaf       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi Underlined        ctermfg=187        guifg=#dfdfaf       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi WarningMsg        ctermfg=36         guifg=#00af87       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi Todo              ctermfg=232        guifg=#080808       ctermbg=36        guibg=#00af87      cterm=NONE     gui=NONE
hi Error             ctermfg=167        guifg=#d75f5f       ctermbg=233       guibg=#121212      cterm=reverse  gui=reverse
hi ErrorMsg          ctermfg=167        guifg=#d75f5f       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE

" Variable Types:
hi Constant          ctermfg=107        guifg=#87af5f       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi String            ctermfg=194        guifg=#dfffdf       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi Identifier        ctermfg=36         guifg=#00af87       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi Function          ctermfg=36         guifg=#00af87       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi StorageClass      ctermfg=192        guifg=#dfff87       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE

" Language Constructs:
hi Label             ctermfg=192        guifg=#dfff00       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi Statement         ctermfg=79         guifg=#5fd7af       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi Operator          ctermfg=79         guifg=#5fd7af       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi Special           ctermfg=190        guifg=#dfff00       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE

" C Like:
hi PreProc           ctermfg=151        guifg=#afd7af       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi Type              ctermfg=151        guifg=#afd7af       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE

" HTML:
hi htmlStatement     ctermfg=36        guifg=#00af87       ctermbg=NONE       guibg=NONE         cterm=NONE     gui=NONE
hi htmlItalic        ctermfg=107        guifg=#87af5f       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE
hi htmlArg           ctermfg=151        guifg=#afd7af       ctermbg=NONE      guibg=NONE         cterm=NONE     gui=NONE

" Diff:
hi DiffAdd           ctermfg=234        guifg=#1c1c1c       ctermbg=227       guibg=#ffff5f      cterm=NONE     gui=NONE
hi DiffChange        ctermfg=234        guifg=#1c1c1c       ctermbg=36        guibg=#00af87      cterm=NONE     gui=NONE
hi DiffText          ctermfg=234        guifg=#1c1c1c       ctermbg=151       guibg=#afd7af      cterm=NONE     gui=NONE
hi DiffDelete        ctermfg=187        guifg=#dfdfaf       ctermbg=167       guibg=#d75f5f      cterm=NONE     gui=NONE

"FIXME:
" Spelling:
hi SpellBad          ctermfg=167        guifg=#d75f5f       ctermbg=NONE      guibg=NONE         cterm=undercurl gui=undercurl
hi SpellLocal        ctermfg=65         guifg=#5f875f       ctermbg=NONE      guibg=NONE         cterm=undercurl gui=undercurl
hi SpellCap          ctermfg=111        guifg=#87afff       ctermbg=NONE      guibg=NONE         cterm=undercurl gui=undercurl
hi SpellRare         ctermfg=208        guifg=#ff8700       ctermbg=NONE      guibg=NONE         cterm=undercurl gui=undercurl

"================================================================================
" DAY:
"================================================================================
if 1
    " Editor Settings:
    hi Normal            ctermfg=254        guifg=#e4e4e4         ctermbg=236      guibg=#303030      cterm=NONE     gui=NONE
    hi LineNr            ctermfg=245        guifg=#8a8a8a         ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
    hi CursorLine        ctermfg=NONE       guifg=NONE            ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
    hi CursorLineNr      ctermfg=187        guifg=#dfdfaf         ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
    hi CursorColumn      ctermfg=NONE       guifg=NONE            ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
    hi ColorColumn       ctermfg=NONE       guifg=NONE            ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE

    " WindowTab Delimiters:
    hi StatusLine        ctermfg=187        guifg=#dfdfaf         ctermbg=239      guibg=#4e4e4e      cterm=NONE     gui=NONE
    hi StatusLineNC      ctermfg=245        guifg=#8a8a8a         ctermbg=239      guibg=#4e4e4e      cterm=NONE     gui=NONE
    hi VertSplit         ctermfg=245        guifg=#8a8a8a         ctermbg=239      guibg=#4e4e4e      cterm=NONE     gui=NONE
    hi TabLine           ctermfg=245        guifg=#8a8a8a         ctermbg=239      guibg=#4e4e4e      cterm=NONE     gui=NONE
    hi TabLineSel        ctermfg=187        guifg=#dfdfaf         ctermbg=239      guibg=#4e4e4e      cterm=NONE     gui=NONE
    hi TabLineFill       ctermfg=NONE       guifg=NONE            ctermbg=239      guibg=#4e4e4e      cterm=NONE     gui=NONE

    " Language Constructs:
    hi Comment           ctermfg=245        guifg=#8a8a8a         ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE

    " Completion Menu:
    hi WildMenu          ctermfg=236        guifg=#303030         ctermbg=187      guibg=#dfdfaf      cterm=NONE     gui=NONE
    hi Pmenu             ctermfg=187        guifg=#dfdfaf         ctermbg=239      guibg=#4e4e4e      cterm=NONE     gui=NONE
    hi PmenuSel          ctermfg=236        guifg=#303030         ctermbg=187      guibg=#dfdfaf      cterm=NONE     gui=NONE
    hi PmenuSbar         ctermfg=239        guifg=#4e4e4e         ctermbg=239      guibg=#4e4e4e      cterm=NONE     gui=NONE
    hi PmenuThumb        ctermfg=239        guifg=#4e4e4e         ctermbg=239      guibg=#4e4e4e      cterm=NONE     gui=NONE

    " Visual Aid:
    hi MatchParen        ctermfg=147        guifg=#afafff         ctermbg=239      guibg=#4e4e4e      cterm=NONE     gui=NONE
    hi Visual            ctermfg=236        guifg=#303030         ctermbg=191      guibg=#dfff5f      cterm=NONE     gui=NONE
    hi NonText           ctermfg=239        guifg=#4e4e4e         ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
    hi Error             ctermfg=167        guifg=#d75f5f         ctermbg=235      guibg=#262626      cterm=reverse  gui=reverse
end

"================================================================================
" SUNSET:
"================================================================================
if g:arcadia_Sunset
    " Editor Settings:
    hi Normal            ctermfg=188        guifg=#dfdfdf         ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
    hi LineNr            ctermfg=244        guifg=#808080         ctermbg=234      guibg=#1c1c1c      cterm=NONE     gui=NONE
    hi CursorLine        ctermfg=NONE       guifg=NONE            ctermbg=234      guibg=#1c1c1c      cterm=NONE     gui=NONE
    hi CursorLineNr      ctermfg=187        guifg=#dfdfaf         ctermbg=234      guibg=#1c1c1c      cterm=NONE     gui=NONE
    hi CursorColumn      ctermfg=NONE       guifg=NONE            ctermbg=234      guibg=#1c1c1c      cterm=NONE     gui=NONE
    hi ColorColumn       ctermfg=NONE       guifg=NONE            ctermbg=234      guibg=#1c1c1c      cterm=NONE     gui=NONE

    " WindowTab Delimiters:
    hi StatusLine        ctermfg=187        guifg=#dfdfaf         ctermbg=238      guibg=#444444      cterm=NONE     gui=NONE
    hi StatusLineNC      ctermfg=244        guifg=#808080         ctermbg=238      guibg=#444444      cterm=NONE     gui=NONE
    hi VertSplit         ctermfg=244        guifg=#808080         ctermbg=238      guibg=#444444      cterm=NONE     gui=NONE
    hi TabLine           ctermfg=244        guifg=#808080         ctermbg=238      guibg=#444444      cterm=NONE     gui=NONE
    hi TabLineSel        ctermfg=187        guifg=#dfdfaf         ctermbg=238      guibg=#444444      cterm=NONE     gui=NONE
    hi TabLineFill       ctermfg=NONE       guifg=NONE            ctermbg=238      guibg=#444444      cterm=NONE     gui=NONE

    " Language Constructs:
    hi Comment           ctermfg=244        guifg=#808080         ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE

    " Completion Menu:
    hi WildMenu          ctermfg=235        guifg=#262626         ctermbg=187      guibg=#dfdfaf      cterm=NONE     gui=NONE
    hi Pmenu             ctermfg=187        guifg=#dfdfaf         ctermbg=238      guibg=#444444      cterm=NONE     gui=NONE
    hi PmenuSel          ctermfg=235        guifg=#262626         ctermbg=187      guibg=#dfdfaf      cterm=NONE     gui=NONE
    hi PmenuSbar         ctermfg=238        guifg=#444444         ctermbg=238      guibg=#444444      cterm=NONE     gui=NONE
    hi PmenuThumb        ctermfg=238        guifg=#444444         ctermbg=238      guibg=#444444      cterm=NONE     gui=NONE

    " Visual Aid:
    hi MatchParen        ctermfg=147        guifg=#afafff         ctermbg=238      guibg=#444444      cterm=NONE     gui=NONE
    hi Visual            ctermfg=235        guifg=#262626         ctermbg=191      guibg=#dfff5f      cterm=NONE     gui=NONE
    hi NonText           ctermfg=239        guifg=#4e4e4e         ctermbg=234      guibg=#1c1c1c      cterm=NONE     gui=NONE
    hi Error             ctermfg=167        guifg=#d75f5f         ctermbg=235      guibg=#262626      cterm=reverse  gui=reverse
end

"================================================================================
" TWILIGHT:
"================================================================================
if g:arcadia_Twilight
    " Editor Settings:
    hi Normal            ctermfg=188        guifg=#dfdfdf         ctermbg=234      guibg=#1c1c1c      cterm=NONE     gui=NONE
    hi LineNr            ctermfg=243        guifg=#767676         ctermbg=233      guibg=#121212      cterm=NONE     gui=NONE
    hi CursorLine        ctermfg=NONE       guifg=NONE            ctermbg=233      guibg=#121212      cterm=NONE     gui=NONE
    hi CursorLineNr      ctermfg=187        guifg=#dfdfaf         ctermbg=233      guibg=#121212      cterm=NONE     gui=NONE
    hi CursorColumn      ctermfg=NONE       guifg=NONE            ctermbg=233      guibg=#121212      cterm=NONE     gui=NONE
    hi ColorColumn       ctermfg=NONE       guifg=NONE            ctermbg=233      guibg=#121212      cterm=NONE     gui=NONE

    " WindowTab Delimiters:
    hi StatusLine        ctermfg=187        guifg=#dfdfaf         ctermbg=237      guibg=#3a3a3a      cterm=NONE     gui=NONE
    hi StatusLineNC      ctermfg=243        guifg=#767676         ctermbg=237      guibg=#3a3a3a      cterm=NONE     gui=NONE
    hi VertSplit         ctermfg=243        guifg=#767676         ctermbg=237      guibg=#3a3a3a      cterm=NONE     gui=NONE
    hi TabLine           ctermfg=243        guifg=#767676         ctermbg=237      guibg=#3a3a3a      cterm=NONE     gui=NONE
    hi TabLineSel        ctermfg=187        guifg=#dfdfaf         ctermbg=237      guibg=#3a3a3a      cterm=NONE     gui=NONE
    hi TabLineFill       ctermfg=NONE       guifg=NONE            ctermbg=237      guibg=#3a3a3a      cterm=NONE     gui=NONE

    " Language Constructs:
    hi Comment           ctermfg=243        guifg=#767676         ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE

    " Completion Menu:
    hi WildMenu          ctermfg=234        guifg=#1c1c1c         ctermbg=187      guibg=#dfdfaf      cterm=NONE     gui=NONE
    hi Pmenu             ctermfg=187        guifg=#dfdfaf         ctermbg=237      guibg=#3a3a3a      cterm=NONE     gui=NONE
    hi PmenuSel          ctermfg=234        guifg=#1c1c1c         ctermbg=187      guibg=#dfdfaf      cterm=NONE     gui=NONE
    hi PmenuSbar         ctermfg=237        guifg=#3a3a3a         ctermbg=237      guibg=#3a3a3a      cterm=NONE     gui=NONE
    hi PmenuThumb        ctermfg=234        guifg=#3a3a3a         ctermbg=237      guibg=#3a3a3a      cterm=NONE     gui=NONE

    " Visual Aid:
    hi MatchParen        ctermfg=147        guifg=#afafff         ctermbg=237      guibg=#3a3a3a      cterm=NONE     gui=NONE
    hi Visual            ctermfg=234        guifg=#1c1c1c         ctermbg=191      guibg=#dfff5f      cterm=NONE     gui=NONE
    hi NonText           ctermfg=239        guifg=#4e4e4e         ctermbg=233      guibg=#121212      cterm=NONE     gui=NONE
    hi Error             ctermfg=167        guifg=#d75f5f         ctermbg=234      guibg=#1c1c1c      cterm=reverse  gui=reverse
end

"================================================================================
" MIDNIGHT:
"================================================================================
if g:arcadia_Midnight
    " Editor Settings:
    hi Normal            ctermfg=188        guifg=#dfdfdf         ctermbg=233      guibg=#121212      cterm=NONE     gui=NONE
    hi LineNr            ctermfg=242        guifg=#6c6c6c         ctermbg=234      guibg=#1c1c1c      cterm=NONE     gui=NONE
    hi CursorLine        ctermfg=NONE       guifg=NONE            ctermbg=234      guibg=#1c1c1c      cterm=NONE     gui=NONE
    hi CursorLineNr      ctermfg=187        guifg=#dfdfaf         ctermbg=234      guibg=#121212      cterm=NONE     gui=NONE
    hi CursorColumn      ctermfg=NONE       guifg=NONE            ctermbg=234      guibg=#1c1c1c      cterm=NONE     gui=NONE
    hi ColorColumn       ctermfg=NONE       guifg=NONE            ctermbg=234      guibg=#1c1c1c      cterm=NONE     gui=NONE

    " WindowTab Delimiters:
    hi StatusLine        ctermfg=187        guifg=#dfdfaf         ctermbg=236      guibg=#303030      cterm=NONE     gui=NONE
    hi StatusLineNC      ctermfg=242        guifg=#6c6c6c         ctermbg=236      guibg=#303030      cterm=NONE     gui=NONE
    hi VertSplit         ctermfg=242        guifg=#6c6c6c         ctermbg=236      guibg=#303030      cterm=NONE     gui=NONE
    hi TabLine           ctermfg=242        guifg=#6c6c6c         ctermbg=236      guibg=#303030      cterm=NONE     gui=NONE
    hi TabLineSel        ctermfg=187        guifg=#dfdfaf         ctermbg=236      guibg=#303030      cterm=NONE     gui=NONE
    hi TabLineFill       ctermfg=NONE       guifg=NONE            ctermbg=236      guibg=#303030      cterm=NONE     gui=NONE

    " Language Constructs:
    hi Comment           ctermfg=242        guifg=#6c6c6c         ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE

    " Completion Menu:
    hi WildMenu          ctermfg=233        guifg=#121212         ctermbg=187      guibg=#dfdfaf      cterm=NONE     gui=NONE
    hi Pmenu             ctermfg=187        guifg=#dfdfaf         ctermbg=236      guibg=#303030      cterm=NONE     gui=NONE
    hi PmenuSel          ctermfg=233        guifg=#121212         ctermbg=187      guibg=#dfdfaf      cterm=NONE     gui=NONE
    hi PmenuSbar         ctermfg=236        guifg=#303030         ctermbg=236      guibg=#303030      cterm=NONE     gui=NONE
    hi PmenuThumb        ctermfg=236        guifg=#303030         ctermbg=236      guibg=#303030      cterm=NONE     gui=NONE

    " Visual Aid:
    hi MatchParen        ctermfg=147        guifg=#afafff         ctermbg=236      guibg=#303030      cterm=NONE     gui=NONE
    hi Visual            ctermfg=236        guifg=#303030         ctermbg=191      guibg=#dfff5f      cterm=NONE     gui=NONE
    hi NonText           ctermfg=239        guifg=#4e4e4e         ctermbg=234      guibg=#1c1c1c      cterm=NONE     gui=NONE
    hi Error             ctermfg=167        guifg=#d75f5f         ctermbg=233      guibg=#121212      cterm=reverse  gui=reverse
end

"================================================================================
" PITCH:
"================================================================================
if g:arcadia_Pitch
    " Editor Settings:
    hi Normal            ctermfg=188        guifg=#dfdfdf         ctermbg=232      guibg=#080808      cterm=NONE     gui=NONE
    hi LineNr            ctermfg=241        guifg=#626262         ctermbg=233      guibg=#121212      cterm=NONE     gui=NONE
    hi CursorLine        ctermfg=NONE       guifg=NONE            ctermbg=233      guibg=#121212      cterm=NONE     gui=NONE
    hi CursorLineNr      ctermfg=187        guifg=#dfdfaf         ctermbg=233      guibg=#121212      cterm=NONE     gui=NONE
    hi CursorColumn      ctermfg=NONE       guifg=NONE            ctermbg=233      guibg=#121212      cterm=NONE     gui=NONE
    hi ColorColumn       ctermfg=NONE       guifg=NONE            ctermbg=233      guibg=#121212      cterm=NONE     gui=NONE

    " WindowTab Delimiters:
    hi StatusLine        ctermfg=187        guifg=#dfdfaf         ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
    hi StatusLineNC      ctermfg=241        guifg=#626262         ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
    hi VertSplit         ctermfg=241        guifg=#626262         ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
    hi TabLine           ctermfg=241        guifg=#626262         ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
    hi TabLineSel        ctermfg=187        guifg=#dfdfaf         ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
    hi TabLineFill       ctermfg=NONE       guifg=NONE            ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE

    " Language Constructs:
    hi Comment           ctermfg=241        guifg=#626262         ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE

    " Completion Menu:
    hi WildMenu          ctermfg=232        guifg=#080808         ctermbg=187      guibg=#dfdfaf      cterm=NONE     gui=NONE
    hi Pmenu             ctermfg=187        guifg=#dfdfaf         ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
    hi PmenuSel          ctermfg=233        guifg=#121212         ctermbg=187      guibg=#dfdfaf      cterm=NONE     gui=NONE
    hi PmenuSbar         ctermfg=235        guifg=#262626         ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
    hi PmenuThumb        ctermfg=235        guifg=#262626         ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE

    " Visual Aid:
    hi MatchParen        ctermfg=147        guifg=#afafff         ctermbg=235      guibg=#262626      cterm=NONE     gui=NONE
    hi Visual            ctermfg=232        guifg=#080808         ctermbg=191      guibg=#dfff5f      cterm=NONE     gui=NONE
    hi NonText          ctermfg=239         guifg=#4e4e4e         ctermbg=233      guibg=#121212      cterm=NONE     gui=NONE
    hi Error            ctermfg=167         guifg=#d75f5f         ctermbg=232      guibg=#080808      cterm=reverse  gui=reverse
end

if g:arcadia_Clear_Skies
    " Editor Settings:
    hi CursorLine        ctermfg=NONE       guifg=NONE            ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE
    hi CursorColumn      ctermfg=NONE       guifg=NONE            ctermbg=NONE     guibg=NONE         cterm=NONE     gui=NONE
end

"================================================================================
" CAMPFIRE:
"================================================================================
if g:arcadia_Campfire
    let arcadia_Hour = strftime("%H")

    "Day: 7am - 5pm
    if 7 <= arcadia_Hour && arcadia_Hour < 17
        let g:arcadia_Sunset = 0
        let g:arcadia_Twilight = 0
        let g:arcadia_Midnight = 0
        let g:arcadia_Pitch = 0

    "Sunset: 5pm - 7pm
    elseif 17 <= arcadia_Hour && arcadia_Hour < 19
        let g:arcadia_Sunset = 1
        let g:arcadia_Twilight = 0
        let g:arcadia_Midnight = 0
        let g:arcadia_Pitch = 0

    "Twilight: 7pm - 9pm
    elseif 19 <= arcadia_Hour && arcadia_Hour < 21
        let g:arcadia_Sunset = 0
        let g:arcadia_Twilight = 1
        let g:arcadia_Midnight = 0
        let g:arcadia_Pitch = 0

    "Midnight: 9pm - 12am
    elseif 21 <= arcadia_Hour && arcadia_Hour < 24
        let g:arcadia_Sunset = 0
        let g:arcadia_Twilight = 0
        let g:arcadia_Midnight = 1
        let g:arcadia_Pitch = 0

    "Pitch: 12am - 7am
    else
        let g:arcadia_Sunset = 0
        let g:arcadia_Twilight = 0
        let g:arcadia_Midnight = 0
        let g:arcadia_Pitch = 1

    endif
end
