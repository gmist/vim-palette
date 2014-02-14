"Vim color file
"Maintainer: Ricky Wu <rickywu1113 at gmail dot com>
"Note:       If your terminal can use RGB colors, use this escape sequence colors:
"            ff888a85,ffef2929,ff8ae234,ffe9b96e,ff00bfff,ffda70d6,ff87ceeb,ffeeeeec
"            grey     red      green    yellow   blue     magenta  cyan     white
"            The Terminal colors and GUI colors are diffrent.

"First remove all existing highlighting.
set background=light
if version > 580
 "no guarantees for version 5.8 and below
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif
let colors_name = "colorzone"

"High Light For Normal
hi Normal  ctermfg=black ctermfg=yellow guifg=#2e3436 guibg=#eeeeec
hi NonText ctermfg=black guifg=#eeeeec  guibg=#eeeeec

"Cursor
hi Cursor       cterm=reverse ctermbg=red      ctermfg=white guibg=#ef2929 guifg=white
hi CursorIM     cterm=reverse ctermbg=red      ctermfg=white guibg=#ef2929 guifg=white
hi CursorColumn ctermbg=none  ctermfg=none     guibg=#555753
hi CursorLine   ctermbg=none  ctermfg=magenta  guibg=#eeeeec guifg=#e06800

"Symbol
hi Directory    ctermfg=blue   guifg=#3465a4
hi MatchParen   ctermfg=yellow guibg=#fcaf3e guifg=black

"Messages
hi ModeMsg    ctermfg=red    guifg=red
hi MoreMsg    ctermfg=green  guifg=#4e9a06
hi WarningMsg ctermfg=yellow guifg=#cc0000
hi ErrorMsg   ctermbg=red    ctermfg=white   guibg=#cc0000 guifg=#eeeeec

"Menu
"hi Pmenu      ctermbg=yellow   ctermfg=blue guibg=#87ceeb guifg=black
hi Pmenu      cterm=none     ctermbg=green   ctermfg=white  guibg=#6b8e23 guifg=white
hi PmenuSel   cterm=none     ctermbg=blue    ctermfg=yellow guibg=#fcaf3e guifg=black
hi PmenuSbar  ctermbg=none   ctermfg=grey    guibg=#729fcf  guifg=white
hi PmenuThumb ctermfg=cyan   guibg=#729fcf   guifg=white
hi WildMenu   ctermbg=cyan   guibg=#edd400   guifg=#729fcf

"Search
"hi Search ctermbg=LightRed ctermfg=white guibg=#ff4500 guifg=white
hi Search     ctermfg=yellow   ctermbg=LightRed guibg=#fcaf3e guifg=black
hi IncSearch  cterm=reverse    gui=reverse

hi Question   ctermfg=green    guifg=#4e9a06
hi Title      ctermfg=green    guifg=#4e9a06

"Fold
hi Folded     ctermfg=blue     guibg=#d3d7cf guifg=#204a87
hi FoldColumn ctermfg=grey     guibg=#eeeeec guifg=#204a87

"Vim Diff
hi DiffAdd    ctermfg=green    guifg=white guibg=#6b8e23
hi DiffChange ctermfg=yellow   guifg=white guibg=#f57900
hi DiffDelete ctermfg=red      guifg=white guibg=#cc0000
hi DiffText   ctermfg=blue     guifg=white guibg=#3465a4 gui=none

"Spell cheking
hi SpellBad   ctermfg=red      guifg=red
hi SpellCap   ctermfg=green    guifg=green
hi SpellLocal ctermfg=brown    guifg=brown
hi SpellRare  ctermfg=yellow   guifg=yellow

"Debugging
hi Debug      ctermfg=red      guifg=red

"Syntax elements
hi Comment    ctermfg=darkgrey guifg=#888a87 
hi Conditional  ctermfg=cyan   guifg=#4e9a06
hi Delimiter  ctermfg=yellow   guifg=#4e9a06
hi Function   ctermfg=Lightblue guifg=#e06800
hi Identifier ctermfg=yellow   gui=none       guifg=#000000
hi Keyword    ctermfg=yellow   guifg=#4e9a06
hi Label      ctermfg=yellow   guifg=#8a2be2
hi Operator   ctermfg=white    guifg=#4169e1
hi Repeat     ctermfg=cyan     guifg=#4e9a06
hi Statement  ctermfg=Lightgreen gui=none       guifg=#4e9a06

"The name of functions methods and classes 
hi Type      ctermfg=green   gui=none guifg=#4e9a06
hi Boolean   ctermfg=red     guifg=red
hi Character ctermfg=magenta guifg=magenta
hi Constant  ctermfg=red     guifg=#ce5c00 
hi Float     ctermfg=red     guifg=red
hi Number    ctermfg=magenta guifg=#ff00ff
hi String    ctermfg=cyan    guifg=#8a2be2

"The special characters
hi Special    ctermfg=magenta  guifg=#3465a4  guibg=#eeeeec
hi SpecialChar ctermfg=red     guifg=red
hi SpecialComment ctermfg=grey guifg=#2e3436
hi Underlined ctermfg=blue     guifg=#e06800  guibg=#eeeeec
hi ColorColumn  cterm=reverse ctermbg=red ctermfg=white guibg=#fcaf3e guifg=black

"The preprocessors
hi Define      ctermfg=blue        guifg=blue
hi Macro       ctermfg=magenta     guifg=#4169e1
hi Include     ctermfg=magenta     guifg=#4169e1

"Text marking
hi Ignore      ctermfg=grey        guifg=#555753
hi Todo        ctermfg=yellow      guibg=#fce94f     guifg=#204a87
hi Exception   ctermfg=magenta     guifg=magenta
hi Error       ctermfg=red         guibg=#8a2be2     guifg=white

"Embed statement
hi SQL_Statement  ctermfg=LightMagenta guifg=#9400d3
hi CICS_Statement ctermfg=LightMagenta guifg=#4e9a06

hi TabLine        ctermbg=none ctermfg=darkgrey guifg=red
hi TabLineSel     ctermbg=none ctermfg=red      guifg=red 
hi TabLineFill    cterm=none   guifg=#2e3436    guibg=blue

"Tags which can use <C-]> on
hi Tag            ctermfg=magenta  guifg=magenta

"Windows elements
hi VertSplit  ctermbg=white   gui=reverse   guibg=#2e3436 guifg=#eeeeec
hi Visual     cterm=none      ctermbg=green ctermfg=white gui=none  guibg=#6b8e23 guifg=white
hi VisualNOS  cterm=underline gui=underline
hi LineNr     ctermfg=darkgrey   guifg=#2e3436
hi SignColumn cterm=none      ctermbg=none ctermfg=red gui=none guifg=black guibg=#eeeeec 

"StatusLine
hi StatusLine cterm=none ctermbg=none ctermfg=cyan guibg=#fff8dc guifg=black gui=none 
hi StatusLineNC cterm=none ctermbg=none ctermfg=darkgrey guibg=#fff8dc guifg=#555753 gui=none
hi StatuslineBufNr cterm=none ctermfg=black ctermbg=cyan gui=none guibg=#840c0c guifg=#ffffff
hi StatuslineFlag cterm=none ctermfg=black ctermbg=cyan gui=none guibg=#f57900 guifg=black
"hi StatuslinePath cterm=none ctermfg=white ctermbg=green gui=none guibg=#fff8dc guifg=black
"hi StatuslineFileName cterm=none ctermfg=white ctermbg=blue gui=none guibg=#ffc0cb guifg=black
"hi StatuslineFileType cterm=none ctermbg=white ctermfg=black gui=none guibg=#87ceeb guifg=black
"hi StatuslineFileEnc cterm=none ctermfg=white ctermbg=yellow gui=none guibg=#fff8dc guifg=black
"hi StatuslineChar cterm=none ctermbg=white ctermfg=yellow gui=none guibg=#fff8dc guifg=black
hi StatuslinePosition cterm=none ctermfg=white ctermbg=magenta gui=none guibg=#8a2be2 guifg=white
"hi StatuslinePercent cterm=reverse ctermfg=white ctermbg=red gui=none guibg=#ffc0cb guifg=black
hi StatuslineCapsBuddy cterm=none ctermfg=white ctermbg=green gui=none guibg=#8ae234 guifg=black
"hi StatuslineTime cterm=none ctermfg=black ctermbg=cyan gui=none guibg=#fff8dc guifg=black
"hi StatuslineSyn cterm=none ctermbg=white ctermfg=yellow gui=none guibg=#60af9f guifg=black
"hi StatuslineRealSyn cterm=none ctermbg=white ctermfg=yellow gui=none guibg=#5881b7 guifg=black
"hi StatuslineTermEnc cterm=none ctermbg=white ctermfg=yellow gui=none guibg=#77cf77 guifg=black

"----------
"This color scheme uses a light grey background.
"Based on "tango-morning" and "wargreycolorscheme" color scheme 
"Tango color palette: http://tango.freedesktop.org/Tango_Icon_Theme_Guidelines#Color_Palette
"Version:0.1: 2009 Nov: initial vesion
"Version:0.2: 2009 Dec: merge with tango-morning
"Version:0.3: 2010 Mar: optimized for PLI and vim syntax
"Version:0.4: 2010 Mar: changes for some fields' color and highlighting for c/c++
"Version:0.5: 2010 Jun: little changes for some fields' color and statusline
"Version:1.0: 2010 Jun: optimize cterm colors and changes for gui
"Version:1.1: 2012 May: minor changes
"Version:1.2: 2012 May: optimize for go language version 1 
"vim: sw=2
