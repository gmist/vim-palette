" vim:fdm=marker sw=2 sts=2 ts=2 expandtab

hi clear

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name="amdark"

hi Normal          guifg=#F8F8F2 guibg=#3C3D34
hi LineNr          guifg=#858575 guibg=#414237
hi SignColumn      guifg=#F8F8F2 guibg=#414237
hi ColorColumn                   guibg=#414237
hi FoldColumn      guifg=#858575 guibg=#414237
hi CursorLine                    guibg=#4B4D40 cterm=none
hi CursorColumn                  guibg=#4B4D40 cterm=none
hi CursorLineNr    guifg=#FEFEFA guibg=#4B4D40 gui=bold
hi VisualNOS                     guibg=#606050
hi Visual                        guibg=#606050
hi Folded          guifg=#858575 guibg=#293025
hi Cursor          guifg=#000000 guibg=#80E0FB
hi CursorIM        guifg=#000000 guibg=#80E0FB
hi iCursor         guifg=#000000 guibg=#80E0FB
" hi Scrollbar         
" hi Tooltip           

hi TabLineFill     guifg=#202015 guibg=#202015
hi TabLine         guibg=#202015 guifg=#9CFFD3 gui=none cterm=none
hi TabLineSel      guibg=#dfff00 guifg=#202015 gui=none cterm=none

hi StatusLine      guifg=#9CFFD3 guibg=#202015 gui=none cterm=none
hi StatusLineNC    guifg=#202015 guibg=#858575 gui=none cterm=none
hi User1           guifg=#202015 guibg=#858575 gui=none cterm=none
hi User2           guifg=#e0e0d8 guibg=#585750 gui=none cterm=none
hi User3           guifg=#9CFFD3 guibg=#202015 gui=none cterm=none
hi User4           guifg=#D00000 guibg=#202015 gui=none cterm=none

hi QuickFixLine    guifg=#ffffff guibg=#656555 gui=bold 

" hi Menu              
hi WildMenu        guifg=#202020 guibg=#dfff00 gui=bold
hi VertSplit       guifg=#808080 guibg=NONE    gui=bold

hi Ignore          guifg=#808080 guibg=bg
hi Conceal         guifg=#FFFFFF
hi NonText         guifg=#585750               gui=NONE
hi EndOfBuffer     guifg=#585750               gui=NONE

hi SpecialKey      guifg=#585750
hi SpecialComment  guifg=#7E8E91               gui=bold
hi Special         guifg=#B487E1 guibg=bg      gui=bold
hi Delimiter       guifg=#8F8F8F

hi DiffAdd                       guibg=#205020
hi DiffChange                    guibg=#605020
hi DiffDelete      guifg=#FF8080 guibg=#603020
hi DiffText                      guibg=#4C4745 gui=italic,bold

hi MatchParen      guifg=#000000 guibg=#FD971F gui=bold
hi MatchError      guifg=#FFFFFF guibg=#F02000

hi Tag             guifg=#B487E1               gui=italic
hi Title           guifg=#FF7020               gui=bold
hi Todo            guifg=#A09B6B guibg=bg      gui=bold

hi Directory       guifg=#A6E22E               gui=bold

hi Error           guifg=#ffffff guibg=#A52020
hi ErrorMsg        guifg=#ffffff guibg=#A52020 
hi WarningMsg      guifg=#FFF5A5 guibg=#756020
hi ModeMsg         guifg=#E6DB74
hi MoreMsg         guifg=#E6DB74
hi Question        guifg=#66D9EF

" complete menu
hi Pmenu           guifg=#d5d5d4 guibg=#707065
hi PmenuSel                      guibg=#505045
hi PmenuSbar                     guibg=#404035
hi PmenuThumb      guifg=#66D9EF

hi Search          guifg=#F8F8F2 guibg=#68539F gui=none
hi IncSearch       guifg=#000000 guibg=#E6DC85 gui=none

" spell checking
if has("spell")
    hi SpellBad    guisp=#F05000               gui=undercurl  
    hi SpellCap    guisp=#6060F0               gui=undercurl  
    hi SpellLocal  guisp=#70F0F0               gui=undercurl  
    hi SpellRare   guisp=#F0C000               gui=undercurl  
endif


"--------------------------------------------------------------------
" plugins
"--------------------------------------------------------------------
hi Debug           guifg=#BCA3A3               gui=bold
hi Underlined      guifg=#808080               gui=underline
hi CleverF         guifg=#FF00FF               gui=bold

" yank highlighting
hi Flashy                  guibg=#686865    ctermbg=60
hi HighlightedyankRegion   guibg=#506080    ctermbg=60

" indent line plugin
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#525048'

" indent guides plugin
hi IndentGuidesEven guibg=#3F4037
hi IndentGuidesOdd  guibg=#3C3D34
" braceless plugin indent guide
hi BracelessIndent guibg=#4C4D44 ctermbg=239

" bufexplorer
hi link bufExplorerBufNbr      Number
hi link bufExplorerMapping     Special
hi link bufExplorerHelp        Normal
hi link bufExplorerOpenIn      Identifier
hi link bufExplorerSortBy      Title
hi link bufExplorerSplit       NonText
hi link bufExplorerTitle       NonText
hi link bufExplorerActBuf      Identifier
hi link bufExplorerAltBuf      String
hi link bufExplorerCurBuf      Type
hi link bufExplorerHidBuf      Normal
hi link bufExplorerLockedBuf   Special
hi link bufExplorerModBuf      Exception
hi link bufExplorerUnlBuf      Comment
hi link bufExplorerInactBuf    Comment
  
" signify
" highlight all the lowercase marks
hi ShowMarksHLl    guifg=#B6F22E guibg=#414237 gui=NONE
" highlight all the uppercase marks
hi ShowMarksHLu    guifg=#B6F22E guibg=#414237 gui=bold    
" highlight all other marks
hi ShowMarksHLo    guifg=#22afff guibg=#414237 gui=NONE
" when multiple marks are on the same line
hi ShowMarksHLm    guifg=#EAE530 guibg=#414237 gui=bold

" ALE (Asynchronous Lint Engine)
hi ALEErrorSign     guifg=#F03010 guibg=#414237 gui=bold
hi ALEWarningSign   guifg=#EAE530 guibg=#414237 gui=bold
hi ALEError         guifg=#FF8080 guibg=#600000 gui=bold
hi ALEWarning       guifg=#FFFF80 guibg=#606000 gui=bold
hi ALEInfo          guifg=#A0FFFF guibg=#000060 gui=NONE 
" hi ALEStyleError    guifg=NONE    guibg=#000000 gui=NONE  
" hi ALEStyleWarning  guifg=NONE    guibg=#000000 gui=NONE 

" GitGutter
hi GitGutterAdd               guifg=#B6F22E guibg=#414237 gui=bold
hi GitGutterChange            guifg=#EAE530 guibg=#414237 gui=bold
hi GitGutterDelete            guifg=#F03010 guibg=#414237 gui=bold
hi GitGutterChangeDelete      guifg=#F03010 guibg=#414237 gui=bold

" multi-cursor
hi link multiple_cursors_visual Visual
hi multiple_cursors_cursor term=reverse cterm=reverse gui=reverse

" tagbar
" The header of generic 'kinds' like 'functions' and 'variables'.
hi link TagbarComment Comment
hi TagbarKind                  guifg=#ffffff gui=bold
" The 'kind' headers in square brackets inside of scopes.
hi TagbarNestedKind            guifg=#50dc82
" Tags that define a scope like classes, structs etc.
hi link TagbarScope Type
hi link TagbarType  Structure
" function signatures
hi TagbarSignature              guifg=#A0C070
hi TagbarFoldIcon               guifg=#ffffff gui=bold
hi TagbarVisibilityPublic       guifg=#209020
hi TagbarVisibilityProtected    guifg=#C5A000
hi TagbarVisibilityPrivate      guifg=#C04040

" find & replace
hi FNRFind          guifg=#000000 guibg=#B6F22E gui=NONE
hi FNRReplace       guifg=#000000 guibg=#FDB01F gui=NONE
hi FNRIndicatorOff  guifg=#9585A5 guibg=NONE    gui=NONE
hi FNRIndicatorOn   guifg=#D8C8FF guibg=NONE    gui=bold
hi FNRActiveMode    guifg=#B0A0FF guibg=NONE    gui=bold
hi FNRActiveFind    guifg=#B6F22E guibg=NONE    gui=bold
hi FNRActiveReplace guifg=#FDB01F guibg=NONE    gui=bold

" CtrlP
hi CtrlPMatch       guifg=#B5A5FF

" startify start screen
hi StartifySection  guifg=#ffffff guibg=NONE    gui=bold
hi StartifyHeader   guifg=#bbb0a0 guibg=NONE    
hi StartifyFooter   guifg=#bbb0a0 guibg=NONE    
hi StartifyBracket  guifg=#B04040 guibg=NONE    
hi StartifyNumber   guifg=#FF7038 guibg=NONE    
hi StartifyFile     guifg=#FFF064 guibg=NONE    
hi StartifyPath     guifg=#A28262 guibg=NONE    
hi StartifySlash    guifg=#757055 guibg=NONE    
hi StartifySpecial  guifg=#FEA020 guibg=NONE    gui=bold
hi StartifySelect   guifg=#fff2c0 guibg=#fff060

" poppy.vim (rainbow parentheses)
hi PoppyLevel1 guibg=#F0961E guifg=#000000 gui=bold
hi PoppyLevel2 guibg=#3296F0 guifg=#000000 gui=bold
hi PoppyLevel3 guibg=#96F032 guifg=#000000 gui=bold
hi PoppyLevel4 guibg=#E650DC guifg=#000000 gui=bold
hi PoppyLevel5 guibg=#F1FF32 guifg=#000000 gui=bold
hi PoppyLevel6 guibg=#FF4032 guifg=#000000 gui=bold
let g:poppyhigh = ['PoppyLevel1', 'PoppyLevel2', 'PoppyLevel3', 'PoppyLevel4', 'PoppyLevel5', 'PoppyLevel6']


"--------------------------------------------------------------------
" syntax higlighting 
"--------------------------------------------------------------------
" built-in
hi Comment         guifg=#837E69 
hi Keyword         guifg=#B487E1               gui=bold
hi Statement       guifg=#B487E1               gui=bold
hi Conditional     guifg=#B487E1               gui=bold
hi Repeat          guifg=#B487E1               gui=bold
hi Exception       guifg=#B487E1               gui=bold
hi Loop            guifg=#B487E1               gui=bold
hi Operator        guifg=#F8F8F2
hi Function        guifg=#F8F8F2               gui=bold
hi Identifier      guifg=#D2F0CA
hi Label           guifg=#F080D0               gui=bold

hi Constant        guifg=#B487E1               gui=bold
hi Boolean         guifg=#B487E1               gui=bold,italic
hi Character       guifg=#FFF064
hi SpecialChar     guifg=#F0D020               gui=bold
hi String          guifg=#FFF064
hi Number          guifg=#FFA078
hi Float           guifg=#FFA078

hi Structure       guifg=#B487E1               gui=bold
hi StorageClass    guifg=#B487E1               gui=bold
hi Type            guifg=#73CDE1               gui=none
hi Typedef         guifg=#73CDE1

hi PreProc         guifg=#FA508C               gui=bold
hi PreCondit       guifg=#FA508C               gui=bold
hi Include         guifg=#FA508C               gui=bold
hi cInclude        guifg=#FA508C               gui=bold
hi Define          guifg=#FA508C               gui=bold
hi Macro           guifg=#F286DD               

" easytags
hi      cMember       guifg=#50dc82
hi      cMemberTag    guifg=#50dc82 
hi link cTypeTag      Type
hi link cEnumTag      Type
hi link cPreProcTag   PreProc
hi link cFunctionTag  Function 

" C++ semantic highlighting
" hi      occurrences        guifg=NONE     guibg=#407030
" hi      template params    guifg=#FFAA46  gui=italic
" hi      param declaration  guifg=#A6E22E
" hi      data member        guifg=#50dc82
" hi      namespace          guifg=#6E7D82  gui=italic

" xml
hi link xmlTag Keyword
hi link xmlTagName Keyword  
hi link xmlEndTag xmlTag
hi xmlAttrib    guifg=#A6E22E
" hi xmlNamespace guifg=#  guibg=#  gui=# 
" hi xmlString    guifg=#  guibg=#  gui=# 
" hi xmlRegion    guifg=#  guibg=#  gui=# 
" hi xmlEntity    guifg=#  guibg=#  gui=# 
" hi xmlCdata     guifg=#  guibg=#  gui=# 

" html
hi link htmlTag xmlTag
hi link htmlEndTag xmlEndTag
hi link htmlArg xmlAttrib
hi link htmlSpecialChar xmlEntity

" json
hi link jsonKeyword Normal
hi link jsonPadding Operator
hi link jsonString  String
hi link jsonTest    Label
hi link jsonEscape  SpecialChar
hi link jsonNumber  Number
hi link jsonBraces  Include
hi link jsonNull    Keyword
hi link jsonBoolean Boolean
hi link jsonNoise   Normal
hi link jsonQuote   String

" Mathematica (mma)
hi      mmaPattern      guifg=#A6E22E
hi      mmaPatternName  guifg=#A6E22E
hi      mmaOperator     guifg=#73CDE1  gui=bold
hi link mmaComment      Comment
hi link mmaSymbol       Normal
hi link mmaSystemSymbol Keyword
hi link mmaString       String
hi link mmaSpecial      Normal
hi link mmaNumber       Number
hi link mmaError        Error
hi link mmaBracket      Normal
hi link mmaTodo         Todo
hi link mmaMessage      Type
hi link mmaSlot         Include


" --------------------------------------------------------------------
" {{{ dark terminal colors
" --------------------------------------------------------------------
if &t_Co > 255
    hi Boolean          ctermfg=111  ctermbg=NONE cterm=NONE
    hi Character        ctermfg=226  ctermbg=NONE cterm=NONE
    hi ColorColumn      ctermfg=NONE ctermbg=239  cterm=NONE
    hi Comment          ctermfg=101  ctermbg=NONE cterm=NONE
    hi Conceal          ctermfg=255  ctermbg=237  cterm=NONE
    hi Conditional      ctermfg=147  ctermbg=NONE cterm=bold
    hi Constant         ctermfg=147  ctermbg=NONE cterm=bold
    hi CtrlPMatch       ctermfg=120
    hi Cursor           ctermfg=87   ctermbg=87   cterm=NONE
    hi CursorColumn     ctermfg=NONE ctermbg=239  cterm=NONE
    hi CursorLine       ctermfg=NONE ctermbg=239  cterm=NONE
    hi CursorLineNr     ctermfg=255  ctermbg=239  cterm=NONE
    hi Define           ctermfg=205  ctermbg=NONE cterm=NONE
    hi DiffAdd          ctermfg=231  ctermbg=64   cterm=NONE
    hi DiffChange       ctermfg=NONE ctermbg=NONE cterm=NONE
    hi DiffDelete       ctermfg=88   ctermbg=NONE cterm=NONE
    hi DiffText         ctermfg=231  ctermbg=24   cterm=NONE
    hi Directory        ctermfg=155  ctermbg=NONE cterm=bold
    hi ErrorMsg         ctermfg=231  ctermbg=197  cterm=NONE
    hi Exception        ctermfg=147  ctermbg=NONE cterm=bold
    hi Float            ctermfg=209  ctermbg=NONE cterm=NONE
    hi FoldColumn       ctermfg=102  ctermbg=238  cterm=NONE
    hi Folded           ctermfg=242  ctermbg=235  cterm=NONE
    hi Function         ctermfg=231  ctermbg=NONE cterm=bold
    hi Identifier       ctermfg=150  ctermbg=NONE cterm=NONE
    hi IncSearch        ctermfg=235  ctermbg=228  cterm=NONE
    hi Include          ctermfg=205  ctermbg=NONE cterm=bold
    hi Keyword          ctermfg=147  ctermbg=NONE cterm=bold
    hi Label            ctermfg=186  ctermbg=NONE cterm=NONE
    hi LineNr           ctermfg=102  ctermbg=238  cterm=NONE
    hi Loop             ctermfg=147  ctermbg=NONE cterm=bold
    hi Macro            ctermfg=218  ctermbg=NONE cterm=NONE
    hi MatchParen       ctermfg=0    ctermbg=208  cterm=NONE
    hi NonText          ctermfg=240  ctermbg=NONE cterm=NONE
    hi Normal           ctermfg=255  ctermbg=237  cterm=NONE
    hi Number           ctermfg=209  ctermbg=NONE cterm=NONE
    hi Operator         ctermfg=231  ctermbg=NONE cterm=NONE
    hi Pmenu            ctermfg=253  ctermbg=243  cterm=NONE
    hi PmenuSbar        ctermbg=236
    hi PmenuSel         ctermfg=255  ctermbg=240  cterm=NONE
    hi PreCondit        ctermfg=205  ctermbg=NONE cterm=bold
    hi PreProc          ctermfg=205  ctermbg=NONE cterm=bold
    hi Repeat           ctermfg=147  ctermbg=NONE cterm=bold
    hi Search           ctermfg=NONE ctermbg=61   cterm=NONE
    hi ShowMarksHLl     ctermfg=154  ctermbg=238  cterm=NONE
    hi ShowMarksHLm     ctermfg=226  ctermbg=238  cterm=bold
    hi ShowMarksHLo     ctermfg=33   ctermbg=238  cterm=NONE
    hi ShowMarksHLu     ctermfg=154  ctermbg=238  cterm=bold
    hi SignColumn       ctermfg=NONE ctermbg=238  cterm=NONE
    hi Special          ctermfg=231  ctermbg=NONE cterm=NONE
    hi SpecialChar      ctermfg=220  ctermbg=NONE cterm=NONE
    hi SpecialKey       ctermfg=240  ctermbg=NONE cterm=NONE
    hi Statement        ctermfg=147  ctermbg=NONE cterm=bold
    hi StatusLine       ctermfg=15   ctermbg=238  cterm=bold
    hi StatusLineNC     ctermfg=NONE ctermbg=NONE cterm=NONE
    hi StorageClass     ctermfg=81   ctermbg=NONE cterm=bold
    hi String           ctermfg=226  ctermbg=NONE cterm=NONE
    hi Structure        ctermfg=81   ctermbg=NONE cterm=bold
    hi Tag              ctermfg=147  ctermbg=NONE cterm=bold
    hi Tag              ctermfg=197  ctermbg=NONE cterm=NONE
    hi Title            ctermfg=208  ctermbg=NONE cterm=bold
    hi Todo             ctermfg=95   ctermbg=NONE cterm=inverse,bold
    hi TabLineFill      ctermfg=0    ctermbg=0    cterm=none
    hi TabLine          ctermbg=0    ctermfg=250  cterm=none
    hi TabLineSel       ctermbg=190  ctermfg=0    cterm=none
    hi Type             ctermfg=81   ctermbg=NONE cterm=NONE
    hi Typedef          ctermfg=81   ctermbg=NONE cterm=NONE
    hi Underlined       ctermfg=NONE ctermbg=NONE cterm=underline
    hi VertSplit        ctermfg=241  ctermbg=241  cterm=NONE
    hi Visual           ctermfg=NONE ctermbg=59   cterm=NONE
    hi WarningMsg       ctermfg=231  ctermbg=197  cterm=NONE
    hi WildMenu         ctermfg=235  ctermbg=190  cterm=NONE
endif
" }}}

if has("win32") || has("win16") || has("win64")
    let &colorcolumn=join(range(81,999),",")
endif

" Must be at the end, because of ctermbg=234 bug.
set background=dark

