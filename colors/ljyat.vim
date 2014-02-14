if !has('gui_running')
   finish
endif

hi clear
set background=dark
if version > 580
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="ljyat"

hi Pmenu     guibg=DarkGreen	 guifg=white
hi PmenuSel  guibg=DarkBlue 	 guifg=white
hi Boolean         guifg=gold4
hi Comment    	   term=bold ctermfg=5 gui=italic guifg=#999999
hi Number          guifg=#F94C87
hi Folded          guifg=white guibg=#403D3D 
hi FoldColumn      guifg=white guibg=#403D3D 
hi Statement       term=bold ctermfg=14  guifg=#86C711
hi Function        guifg=#21BC71 gui=bold 
hi Title           guifg=#21BC71 gui=NONE
hi Keyword         guifg=#E6C84F   gui=NONE

hi Type            guifg=#95e454 gui=NONE
hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
hi VisualNOS                     guibg=#403D3D
hi Visual          guifg=black   guibg=white
hi Normal guifg=White guibg=grey20
hi CursorLine                    guibg=#293739
hi CursorColumn                  guibg=#293739
hi LineNr          guifg=#BCBCBC guibg=#232526
hi NonText         guifg=#BCBCBC guibg=#232526
hi StatusLine      guifg=black   guibg=#C2BFA5 gui=bold
hi Search          guifg=green guibg=black
hi Identifier      guifg=cyan
hi String     guifg=#FF80FF         
hi DefinedName    guifg=#FFCC00
hi clear Constant

hi! def link Typedef        Structure
hi! def link CTagsType        Structure
hi! def link StatusLineNC   StatusLine
hi! def link cLabel	    	Statement
hi! def link cConditional   Statement
hi! def link cRepeat		Statement
hi! def link cStatement     Statement
hi! def link TagListFileName StatusLine 
hi! def link EnumerationValue  DefinedName 

hi! def link Question  Type
"for java
hi! def link Method     Function
hi  Class           guifg=#00E000 gui=NONE
