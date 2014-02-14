" Name:         white.vim
" Maintainer:	Ronan Sousa Sales Neto <ronnankde@gmail.com>
" License:      public domain
" Version:      0.5
" Last Change:	September 5 2011

set background=light

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "white"

" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine 	guifg=NONE    guibg=#E5E5E5
  hi CursorColumn 	guifg=#000000 guibg=#FFFFFF
  hi MatchParen 	guifg=#FFFFFF guibg=#6B6B6B gui=BOLD
  hi Pmenu 		guifg=#000000 guibg=#EFEFEF gui=NONE
  hi PmenuSel 		guifg=#000000 guibg=#C6DEFF gui=BOLD
endif

" GUI: {{{1
hi Cursor 		guifg=#FFFFFF guibg=#000000
hi Normal 		guifg=#000000 guibg=#FFFFFF
hi LineNr 		guifg=#CCCCCC guibg=#444444
hi StatusLine 		guifg=#FFFFFF guibg=#000000 gui=BOLD
hi StatusLineNC         guifg=#E5E5E5 guibg=#000000 gui=NONE
hi VertSplit 		guifg=#000000 guibg=#FFFFFF
hi Title 		guifg=#000000 guibg=#FFFFFF
hi Visual 		guifg=NONE    guibg=#C6DEFF gui=NONE
hi treeDir              guifg=#E41717 guibg=NONE
hi SpellBad		guifg=#FFFFFF guibg=#E41717
hi Directory            guifg=#EA1717 guibg=NONE    gui=BOLD
hi Folded               guifg=#EA1717 guibg=#444444 gui=BOLD
hi NonText              guifg=#888888 guibg=NONE    gui=BOLD
hi SpecialKey           guifg=#888888 guibg=NONE    gui=BOLD

" Search: {{{1
hi IncSearch            guifg=NONE    guibg=#FFCE77 gui=NONE
hi Search               guifg=NONE    guibg=#FFE6BB gui=NONE

" Syntax: {{{1
hi Comment 		guifg=#7F7F7F guibg=NONE
hi Todo 		guifg=NONE    guibg=NONE gui=BOLD,reverse
hi Constant 		guifg=#000000 guibg=NONE gui=BOLD
hi String 		guifg=#000000 guibg=NONE
hi Identifier 		guifg=#000000 guibg=NONE gui=BOLD
hi Function 		guifg=#000000 guibg=NONE
hi Type 		guifg=#000000 guibg=NONE gui=BOLD
hi Statement 		guifg=#000000 guibg=NONE gui=BOLD
hi Keyword		guifg=#000000 guibg=NONE gui=BOLD
hi PreProc 		guifg=#000000 guibg=NONE gui=BOLD
hi Number		guifg=#000000 guibg=NONE gui=BOLD
hi Special		guifg=#000000 guibg=NONE gui=BOLD
hi Character            guifg=#000000 guibg=NONE gui=BOLD
hi Boolean              guifg=#000000 guibg=NONE gui=BOLD
hi Float                guifg=#000000 guibg=NONE gui=BOLD
hi Repeat               guifg=#000000 guibg=NONE gui=BOLD
hi Label                guifg=#000000 guibg=NONE gui=BOLD
hi Exception            guifg=#000000 guibg=NONE gui=BOLD
hi Include              guifg=#000000 guibg=NONE gui=BOLD
hi Define               guifg=#000000 guibg=NONE gui=BOLD
hi Macro                guifg=#000000 guibg=NONE gui=BOLD
hi PreCondit            guifg=#000000 guibg=NONE gui=BOLD
hi StorageClass         guifg=#000000 guibg=NONE gui=BOLD
hi Structure            guifg=#000000 guibg=NONE gui=BOLD
hi Typedef              guifg=#000000 guibg=NONE gui=BOLD
hi Tag                  guifg=#000000 guibg=NONE gui=BOLD
hi SpecialChar          guifg=#000000 guibg=NONE gui=BOLD
hi SpecialComment       guifg=#000000 guibg=NONE gui=BOLD
hi Debug                guifg=#000000 guibg=NONE gui=BOLD

" Error: {{{1
hi Error 		guifg=NONE    guibg=NONE    gui=undercurl guisp=#E41717
hi ErrorMsg 		guifg=#FFFFFF guibg=#E41717 gui=BOLD
hi WarningMsg 		guifg=#FFFFFF guibg=#E41717 gui=BOLD
hi ModeMsg 		guifg=#E5E5E5 guibg=#E41717 gui=BOLD
hi MoreMsg		guifg=#2D6D2D guibg=NONE    gui=BOLD
hi Question 		guifg=#2D6D2D guibg=NONE    gui=BOLD

" Python: {{{1
hi link pythonEscape          Keyword
hi link pythonStatement       Keyword
hi link pythonFunction        Function
hi link pythonRepeat          Keyword
hi link pythonConditional     Keyword
hi link pythonPreCondit       Keyword
hi link pythonException       Keyword
hi link pythonOperator        Keyword
hi link pythonDecorator       Keyword
hi link pythonDottedName      Keyword
hi link pythonDot             Keyword
hi link pythonComment         Comment
hi link pythonRun             Keyword
hi link pythonCoding          Keyword
hi link pythonTodo            Todo
hi link pythonBuiltinFunc     Keyword
hi link pythonUniRawString    Keyword
hi link pythonRawString       Keyword
hi link pythonUniString       Keyword
hi link pythonBuiltinObj      Keyword

" HTML: {{{1
hi htmlTag               guifg=#000000 guibg=NONE gui=BOLD
hi htmlEndTag            guifg=#000000 guibg=NONE gui=BOLD
hi htmlTagName           guifg=#000000 guibg=NONE gui=BOLD
hi htmlArg               guifg=#000000 guibg=NONE gui=BOLD
hi htmlSpecialChar       guifg=#000000 guibg=NONE gui=BOLD
hi htmlLink 		 guifg=#000000 guibg=NONE gui=underline
hi htmlH1                guifg=#000000 guibg=NONE gui=BOLD
hi htmlH2                guifg=#000000 guibg=NONE gui=BOLD
hi htmlH3                guifg=#000000 guibg=NONE gui=BOLD
hi htmlH4                guifg=#000000 guibg=NONE gui=BOLD
hi htmlH5                guifg=#000000 guibg=NONE gui=BOLD
hi htmlH6                guifg=#000000 guibg=NONE gui=BOLD

" JavaScript: {{{1
hi javaScriptFunction       guifg=#000000 guibg=NONE gui=BOLD
hi javaScriptFuncName       guifg=#000000 guibg=NONE gui=BOLD
hi javaScriptLabel          guifg=#000000 guibg=NONE gui=BOLD
hi javaScriptRailsFunction  guifg=#000000 guibg=NONE gui=BOLD
hi javaScriptType           guifg=#000000 guibg=NONE gui=BOLD
hi javaScriptArgument       guifg=#000000 guibg=NONE gui=BOLD
hi javaScriptRegexpString   guifg=#000000 guibg=NONE gui=BOLD
hi javaScriptSpecial        guifg=#000000 guibg=NONE gui=BOLD

" YAML: {{{1
hi yamlAnchor          guifg=#000000 guibg=NONE gui=BOLD
hi yamlAlias           guifg=#000000 guibg=NONE gui=BOLD
hi yamlDocumentHeader  guifg=#000000 guibg=NONE gui=BOLD

" CSS: {{{1
hi cssTagName                                   guifg=#000000 guibg=NONE gui=BOLD
hi cssIdentifier                                guifg=#000000 guibg=NONE gui=BOLD
hi link cssClassName              cssIdentifier
hi cssDefinition			        guifg=#000000 guibg=NONE gui=BOLD
hi link cssRenderProp             cssDefinition
hi link cssTextProp               cssDefinition
hi link cssFontProp               cssDefinition
hi link cssColorProp              cssDefinition
hi link cssBoxProp                cssDefinition
hi link cssGeneratedContentProp   cssDefinition
hi link cssUIProp cssDefinition
hi cssCommonAttr                                guifg=#000000 guibg=NONE gui=BOLD
hi link cssRenderAttr             cssCommonAttr
hi link cssTextAttr               cssCommonAttr
hi link cssFontAttr               cssCommonAttr
hi link cssGeneratedContentAttr   cssCommonAttr
hi cssURL                                       guifg=#000000 guibg=NONE gui=BOLD
hi cssFunctionName                              guifg=#000000 guibg=NONE gui=BOLD
hi cssColor                                     guifg=#000000 guibg=NONE gui=BOLD
hi cssValueLength                               guifg=#000000 guibg=NONE gui=BOLD
hi cssImportant                                 guifg=#000000 guibg=NONE gui=BOLD

" Vimscript: {{{1
hi vimGroup                 			guifg=#007B22 guibg=NONE gui=BOLD
hi link vimHiGroup          vimGroup
hi vimCommentTitle          			guifg=#3C4C72 guibg=NONE gui=BOLD
hi helpSpecial              			guifg=#6E79F1 guibg=NONE gui=NONE

" Markdown: {{{1
hi markdownBold      				guifg=#000000 guibg=NONE gui=BOLD
hi markdownItalic   				guifg=#000000 guibg=NONE gui=NONE
hi markdownCode      				guifg=#007B22 guibg=NONE gui=NONE
hi link markdownCodeBlock   markdownCode

" Outliner: {{{1
hi BT1 guifg=#808080 guibg=NONE gui=NONE
hi OL1 guifg=#000000 guibg=NONE gui=BOLD
hi OL2 guifg=#0000A2 guibg=NONE gui=BOLD
hi OL3 guifg=#007B22 guibg=NONE gui=BOLD
hi OL4 guifg=#6E79F1 guibg=NONE gui=NONE
" Modelines: {{{1
" vim: nowrap fdm=marker
" }}}
