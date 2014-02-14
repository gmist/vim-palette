" Vim color file
"
" Author: Felippe Alves <flipgm@gmail.com>
"
" Note: Based on github.vim theme from Anthony Carapetis.

hi clear

set background=dark
if version > 580
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="darkgit"

hi Normal       guifg=#ffffff guibg=#181811

"  Cursor
hi Cursor		guibg=#bbbbab guifg=#080800
hi CursorLine	guibg=#282822
hi CursorColumn	guibg=#181811
" 

"  Diff
hi DiffAdd         guifg=#003300 guibg=#DDFFDD gui=none
hi DiffChange                    guibg=#ececec gui=none
hi DiffText        guifg=#000033 guibg=#DDDDFF gui=none
hi DiffDelete      guifg=#DDCCCC guibg=#FFDDDD gui=none
" 

"  Folding / Line Numbering / Status Lines
hi Folded		guibg=#ECECEC guifg=#808080 gui=none
hi vimFold		guibg=#ECECEC guifg=#808080 gui=none
hi FoldColumn	guibg=#ECECEC guifg=#808080 gui=none
hi LineNr		guifg=#ECECEC guibg=#111111 gui=none
hi NonText		guifg=#ECECEC guibg=#111111
hi Folded		guifg=#111111 guibg=#ECECEC gui=none
hi FoldeColumn  guifg=#111111 guibg=#ECECEC gui=none

hi VertSplit	guibg=#bbbbbb guifg=#bbbbbb gui=none
hi StatusLine   guibg=#bbbbbb guifg=#404040 gui=none
hi StatusLineNC guibg=#d4d4d4 guifg=#404040 gui=italic
" 

"  Misc
hi ModeMsg		guifg=#990000
hi MoreMsg		guifg=#990000

hi Title		guifg=#ef5939
hi WarningMsg	guifg=#ef5939
hi SpecialKey   guifg=#177F80 gui=italic

hi MatchParen	guibg=#cdcdfd guifg=#000000
hi Underlined	guifg=#ffffff gui=underline
hi Directory	guifg=#990000
" 

"  Search, Visual, etc
hi Visual		guifg=#FFFFFF guibg=#3465a4 gui=none
hi VisualNOS    guifg=#FFFFFF guibg=#204a87 gui=none
hi IncSearch	guibg=#cdcdfd guifg=#000000 gui=italic
hi Search		guibg=#cdcdfd guifg=#000000 gui=italic
" 

"  Syntax groups
hi Ignore		guifg=#808080
hi Identifier	guifg=#0086B3
hi PreProc		guifg=#b81745 gui=none
hi Comment		guifg=#999988
hi Constant		guifg=#177F80 gui=none
hi String		guifg=#D81745
hi Function		guifg=#cc1177 gui=none
hi Statement	guifg=#ffffff gui=italic
hi Type			guifg=#962B73 gui=none
hi Number		guifg=#1C9898
hi Todo			guifg=#FFFFFF guibg=#990000 gui=none
hi Special		guifg=#159828 gui=none
hi rubySymbol   guifg=#960B73
hi Error        guibg=#181811 guifg=#ff1100 gui=underline
hi Todo         guibg=#181811 guifg=#ff1100 gui=underline
hi Label        guifg=#ffffff gui=none
hi StorageClass guifg=#ffffff gui=none
hi Structure    guifg=#ffffff gui=none
hi TypeDef      guifg=#ffffff gui=none
" 

"  Completion menus()
hi WildMenu     guifg=#7fbdff guibg=#425c78 gui=none

hi Pmenu        guibg=#0086B3 guifg=#ffffff gui=none
hi PmenuSel     guibg=#D81745 guifg=#ffffff gui=italic
hi PmenuSbar    guibg=#000000 guifg=#444444
hi PmenuThumb   guibg=#aaaaaa guifg=#aaaaaa
" 

"  Spelling
hi spellBad     guisp=#fcaf3e
hi spellCap     guisp=#73d216
hi spellRare    guisp=#fcaf3e
hi spellLocal   guisp=#729fcf
" 

"  Aliases
hi link cppSTL          Function
hi link cppSTLType      Type
hi link Character		Number
hi link htmlTag			htmlEndTag
hi link htmlTagName     htmlTag
hi link htmlLink		Underlined
hi link pythonFunction	Identifier
hi link Question		Type
hi link CursorIM		Cursor
hi link VisualNOS		Visual
hi link xmlTag			Identifier
hi link xmlTagName		Identifier
hi link shDeref			Identifier
hi link shVariable		Function
hi link rubySharpBang	Special
hi link perlSharpBang	Special
hi link schemeFunc      Statement
hi link shSpecialVariables Constant
hi link bashSpecialVariables Constant
" 

"  Tabs (non-gui0
hi TabLine		guifg=#404040 guibg=#dddddd gui=none
hi TabLineFill	guifg=#404040 guibg=#dddddd gui=none
hi TabLineSel	guifg=#404040 gui=none
" 
"
"vim: sw=4 ts=4 foldmethod=marker
