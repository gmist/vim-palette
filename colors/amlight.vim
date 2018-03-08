" vim:fdm=marker sw=1 sts=2 ts=2 expandtab

hi clear

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let g:colors_name="amlight"

hi Normal          guifg=#555555 guibg=#F8F8F3
hi LineNr          guifg=#909090 guibg=#EBEBE8 
hi SignColumn      guifg=#555555 guibg=#EBEBE8
hi ColorColumn                   guibg=#EFEFEA
hi FoldColumn      guifg=#707065 guibg=#EBEBE8
hi CursorLine                    guibg=#E0F0F5 cterm=none
hi CursorColumn                  guibg=#E0F0F5 cterm=none
hi CursorLineNr    guifg=#000000 guibg=#E0F0F5 gui=bold
hi VisualNOS                     guibg=#C0E0F0
hi Visual                        guibg=#C0E0F0
hi Folded          guifg=#707065 guibg=#C2C2C0
hi Cursor          guifg=#000000 guibg=#50C0FC
hi CursorIM        guifg=#000000 guibg=#50C0FC
hi iCursor         guifg=#000000 guibg=#50C0FC
" hi Scrollbar         
" hi Tooltip           

hi TabLineFill     guifg=#B4B4AA guibg=#B4B4AA
hi TabLine         guibg=#B4B4AA guifg=#404040 gui=none cterm=none
hi TabLineSel      guibg=#005FFF guifg=#FFFFFF gui=none cterm=none

hi StatusLine      guifg=#005FFF guibg=#AFFFFF gui=none cterm=none
hi StatusLineNC    guifg=#EBEBE8 guibg=#707065 gui=none cterm=none
hi User1           guifg=#FFFFFF guibg=#005FFF gui=none cterm=none
hi User2           guifg=#000087 guibg=#00DFFF gui=none cterm=none
hi User3           guifg=#005FFF guibg=#AFFFFF gui=none cterm=none
hi User4           guifg=#900000 guibg=#AFFFFF gui=none cterm=none

hi QuickFixLine    guifg=#000000 guibg=#C0C0A6

" hi Menu              
hi WildMenu        guifg=#FFFFFF guibg=#005FFF gui=bold
hi VertSplit       guifg=#808080 guibg=NONE    gui=bold

hi Delimiter       guifg=#8F8F8F

hi DiffAdd                       guibg=#D8F5C8 
hi DiffChange                    guibg=#F5F0C8
hi DiffDelete      guifg=#802020 guibg=#F5D8C8
hi DiffText                      guibg=#E0E0DC gui=italic,bold

hi MatchParen      guifg=#C00000 guibg=#F0C8BE gui=bold
hi MatchError      guifg=#FFFFFF guibg=#C000C0

hi NonText         guifg=#C0C0C0               gui=NONE
hi EndOfBuffer     guifg=#C0C0C0               gui=NONE
hi SpecialComment  guifg=#C0C0C0               gui=bold
hi SpecialKey      guifg=#C0C0C0              

hi Tag             guifg=#8c32b4               gui=italic
hi Title           guifg=#E04000               gui=bold
hi Todo            guifg=#A09B6B guibg=bg      gui=bold

hi Directory       guifg=#108010               gui=bold

hi Ignore          guifg=#707065 guibg=bg
hi Conceal         guifg=#404040

hi Error           guifg=#D30000 guibg=#F0C8BE
hi ErrorMsg        guifg=#D30000 guibg=#F0C8BE 
hi WarningMsg      guifg=#D0C050 guibg=#F0E580 
hi ModeMsg         guifg=#605000
hi MoreMsg         guifg=#605000

" complete menu
hi Pmenu           guifg=#F0F0F0 guibg=#909085
hi PmenuSel        guifg=#FFFFFF guibg=#005FFF gui=bold
hi PmenuSbar                     guibg=#404035
hi PmenuThumb      guifg=#006EB4

hi Question        guifg=#006EB4

hi    Search       guifg=#000000 guibg=#E5D0F0 gui=none
hi IncSearch       guifg=#000000 guibg=#F5F060 gui=none

" spell checking
if has("spell")
    hi SpellBad    guisp=#D02000 gui=undercurl
    hi SpellCap    guisp=#006EB4 gui=undercurl
    hi SpellLocal  guisp=#009614 gui=undercurl
    hi SpellRare   guisp=#6496AA gui=undercurl
endif


"--------------------------------------------------------------------
" plugins
"--------------------------------------------------------------------
hi Debug       guifg=#BCA3A3                            gui=bold
hi Underlined  guifg=#808080                            gui=underline
hi CleverF     guifg=NONE     guibg=#AFFF87

" yank highlighting
hi Flashy                  guibg=#FAFA90    ctermbg=228
hi HighlightedyankRegion   guibg=#FAFA90    ctermbg=228

" indent line plugin
let g:indentLine_color_term = 253
let g:indentLine_color_gui = '#D0D0CE'

" indent guides plugin
hi IndentGuidesEven guibg=#F2F2EC
hi IndentGuidesOdd  guibg=#F8F8F3
" braceless plugin indent guide
hi BracelessIndent guibg=#E5E5E2 ctermbg=253

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

" highlight all the lowercase marks
hi ShowMarksHLl    guifg=#009619 guibg=#D0F0D0 gui=NONE
" highlight all the uppercase marks
hi ShowMarksHLu    guifg=#009619 guibg=#D0F0D0 gui=bold    
" highlight all other marks
hi ShowMarksHLo    guifg=#006EE0 guibg=#EBEBE8 gui=NONE
" when multiple marks are on the same line
hi ShowMarksHLm    guifg=#EAB000 guibg=#E6E0A0 gui=bold

" ALE (Asynchronous Lint Engine)
hi ALEErrorSign    guifg=#D02000 guibg=#F5D0D0 gui=bold 
hi ALEWarningSign  guifg=#C58000 guibg=#F5F0D0 gui=bold
hi ALEError        guifg=NONE    guibg=#FFA0A0 gui=bold
hi ALEWarning      guifg=NONE    guibg=#FFFFA0 gui=bold
hi ALEInfo         guifg=NONE    guibg=#A0FFFF gui=NONE 
" hi ALEStyleError    guifg=NONE    guibg=#000000 gui=NONE  
" hi ALEStyleWarning  guifg=NONE    guibg=#000000 gui=NONE 

" GitGutter
hi GitGutterAdd               guifg=#009619 guibg=#D0F0D0 gui=bold
hi GitGutterChange            guifg=#EAC520 guibg=#F5F0D0 gui=bold
hi GitGutterDelete            guifg=#D30000 guibg=#F5E0D0 gui=bold
hi GitGutterChangeDelete      guifg=#D30000 guibg=#F5E0D0 gui=bold

" multi-cursor
hi multiple_cursors_cursor term=reverse cterm=reverse gui=reverse
hi link multiple_cursors_visual Visual

" tagbar
hi link TagbarComment Comment
" The header of generic 'kinds' like 'functions' and 'variables'.
hi TagbarKind                  guifg=#000000 gui=bold
" The 'kind' headers in square brackets inside of scopes.
hi TagbarNestedKind            guifg=#009614
" Tags that define a scope like classes, structs etc.
hi link TagbarScope Type
hi link TagbarType  Structure
" function signatures
hi TagbarSignature              guifg=#509030
" The asterisk (*) that signifies a pseudo-tag.
" hi TagbarPseudoID
hi TagbarFoldIcon               guifg=#000000 gui=bold
" The colour that is used for automatically highlighting the current tag.
" hi TagbarHighlight
hi TagbarVisibilityPublic       guifg=#80D080
hi TagbarVisibilityProtected    guifg=#D0C080
hi TagbarVisibilityPrivate      guifg=#F0A0A0

" find & replace
hi FNRFind          guifg=#000000 guibg=#00F220 gui=NONE
hi FNRReplace       guifg=#000000 guibg=#FDB01F gui=NONE
hi FNRIndicatorOff  guifg=#B5B5B0 guibg=NONE    gui=NONE
hi FNRIndicatorOn   guifg=#0050F0 guibg=NONE    gui=bold
hi FNRActiveMode    guifg=#0050F0 guibg=NONE    gui=bold
hi FNRActiveFind    guifg=#00F220 guibg=NONE    gui=bold
hi FNRActiveReplace guifg=#FDB01F guibg=NONE    gui=bold
" hi FNRCursor 

" CtrlP
hi CtrlPMatch       guifg=NONE guibg=#afff87

" startify start screen
hi StartifySection  guifg=#000000 guibg=NONE    gui=bold
hi StartifyHeader   guifg=#808080 guibg=NONE    
hi StartifyFooter   guifg=#808080 guibg=NONE    
hi StartifyBracket  guifg=#E0C0C5 guibg=NONE    
hi StartifyNumber   guifg=#C02070 guibg=NONE    
hi StartifyFile     guifg=#2030D0 guibg=NONE    
hi StartifyPath     guifg=#80A0E0 guibg=NONE    
hi StartifySlash    guifg=#90C0F0 guibg=NONE    
hi StartifySpecial  guifg=#D23296 guibg=NONE    gui=bold
" hi StartifySelect   guifg=#FFF2C0 guibg=#FFF060

" poppy.vim (rainbow parentheses)
hi PoppyLevel1 guibg=#F0C8BE guifg=#C00000 gui=bold
hi PoppyLevel2 guibg=#80C0FF guifg=#0000A0 gui=bold
hi PoppyLevel3 guibg=#B0F080 guifg=#008000 gui=bold
hi PoppyLevel4 guibg=#FFB0E0 guifg=#800080 gui=bold
hi PoppyLevel5 guibg=#FFFF90 guifg=#606000 gui=bold
hi PoppyLevel6 guibg=#FDC560 guifg=#804000 gui=bold
let g:poppyhigh = ['PoppyLevel1', 'PoppyLevel2', 'PoppyLevel3', 'PoppyLevel4', 'PoppyLevel5', 'PoppyLevel6']


"--------------------------------------------------------------------
" syntax higlighting 
"--------------------------------------------------------------------
" built-in
hi Comment         guifg=#A0A090
hi Keyword         guifg=#8C32B4               gui=bold
hi Statement       guifg=#8C32B4               gui=bold
hi Conditional     guifg=#8C32B4               gui=bold
hi Repeat          guifg=#8C32B4               gui=bold
hi Exception       guifg=#8C32B4               gui=bold
hi Loop            guifg=#8C32B4               gui=bold
hi Operator        guifg=#3C3C3C
hi Function        guifg=#3C3C3C               gui=bold
hi Identifier      guifg=#10A000
hi Label           guifg=#F03278               gui=bold

hi Constant        guifg=#8C32B4               gui=bold
hi Boolean         guifg=#8C32B4               gui=bold,italic
hi Character       guifg=#D56020
hi SpecialChar     guifg=#D56020               gui=bold
hi String          guifg=#D56020
hi Number          guifg=#D30000
hi Float           guifg=#D30000

hi Structure       guifg=#8C32B4               gui=bold
hi StorageClass    guifg=#8C32B4               gui=bold
hi Type            guifg=#0070C0               gui=none
hi Typedef         guifg=#0070C0

hi PreProc         guifg=#D23296               gui=bold
hi PreCondit       guifg=#D23296               gui=bold
hi Include         guifg=#D23296               gui=bold
hi cInclude        guifg=#D23296               gui=bold
hi Define          guifg=#D23296               gui=bold
hi Macro           guifg=#C02070               

" easytags
hi      cMember       guifg=#009614
hi      cMemberTag    guifg=#009614 
hi link cTypeTag      Type
hi link cEnumTag      Type
hi link cPreProcTag   PreProc
hi link cFunctionTag  Function 

" xml
hi      xmlAttrib   guifg=#509600
hi link xmlTag      Keyword
hi link xmlTagName  Keyword  
hi link xmlEndTag   xmlTag
" hi xmlNamespace guifg=#  guibg=#  gui=# 
" hi xmlString    guifg=#  guibg=#  gui=# 
" hi xmlRegion    guifg=#  guibg=#  gui=# 
" hi xmlEntity    guifg=#  guibg=#  gui=# 
" hi xmlCdata     guifg=#  guibg=#  gui=# 

" html
hi link htmlTag xmlTag
hi link htmlEndTag xmlEndTag
hi link htmlArg xmlAttrib
" hi link htmlSpecialChar xmlEntity

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
hi      mmaPattern      guifg=#509600
hi      mmaPatternName  guifg=#509600
hi      mmaOperator     guifg=#006eb4  gui=bold
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
" {{{ light terminal colors
" --------------------------------------------------------------------
if &t_Co > 255
    hi Cursor       ctermfg=232  ctermbg=45   cterm=NONE
    hi Visual       ctermfg=NONE ctermbg=187  cterm=NONE
    hi CursorLine   ctermfg=NONE ctermbg=254  cterm=NONE
    hi CursorColumn ctermfg=NONE ctermbg=254  cterm=NONE
    hi ColorColumn  ctermfg=NONE ctermbg=254  cterm=NONE
    hi LineNr       ctermfg=246  ctermbg=253  cterm=NONE
    hi CursorLineNr ctermfg=0    ctermbg=254  cterm=bold
    hi VertSplit    ctermfg=247  ctermbg=247  cterm=NONE
    hi FoldColumn   ctermfg=246  ctermbg=253  cterm=NONE
    hi Folded       ctermfg=30   ctermbg=152  cterm=NONE
    hi SignColumn   ctermfg=NONE ctermbg=251  cterm=NONE
    hi StatusLine   ctermfg=27   ctermbg=159  cterm=bold
    hi StatusLineNC ctermfg=231  ctermbg=241  cterm=NONE
    hi WildMenu     ctermfg=15   ctermbg=27   cterm=NONE
    hi Pmenu        ctermfg=243  ctermbg=253  cterm=NONE
    hi PmenuSel     ctermfg=232  ctermbg=250  cterm=NONE
    hi PmenuSbar    ctermfg=243  ctermbg=250
    hi MatchParen   ctermfg=0    ctermbg=215  cterm=NONE
    hi IncSearch    ctermfg=0    ctermbg=153  cterm=NONE
    hi Search       ctermfg=NONE ctermbg=NONE cterm=underline
    hi Directory    ctermfg=28   ctermbg=NONE cterm=bold
    hi Normal       ctermfg=235  ctermbg=255  cterm=NONE
    hi Comment      ctermfg=101  ctermbg=NONE cterm=NONE
    hi Boolean      ctermfg=93   ctermbg=NONE cterm=NONE
    hi Float        ctermfg=160  ctermbg=NONE cterm=NONE
    hi Character    ctermfg=94   ctermbg=NONE cterm=NONE
    hi SpecialChar  ctermfg=130  ctermbg=NONE cterm=NONE
    hi String       ctermfg=94   ctermbg=NONE cterm=NONE
    hi Number       ctermfg=160  ctermbg=NONE cterm=NONE
    hi Conceal      ctermfg=253  ctermbg=255  cterm=NONE
    hi Type         ctermfg=27   ctermbg=NONE cterm=NONE
    hi Typedef      ctermfg=27   ctermbg=NONE cterm=NONE
    hi StorageClass ctermfg=27   ctermbg=NONE cterm=bold
    hi Structure    ctermfg=27   ctermbg=NONE cterm=bold
    hi Conditional  ctermfg=91   ctermbg=NONE cterm=bold
    hi Keyword      ctermfg=91   ctermbg=NONE cterm=bold
    hi Exception    ctermfg=91   ctermbg=NONE cterm=bold
    hi Loop         ctermfg=91   ctermbg=NONE cterm=bold
    hi Constant     ctermfg=91   ctermbg=NONE cterm=bold
    hi Repeat       ctermfg=91   ctermbg=NONE cterm=bold
    hi Statement    ctermfg=91   ctermbg=NONE cterm=bold
    hi Tag          ctermfg=91   ctermbg=NONE cterm=bold
    hi Function     ctermfg=231  ctermbg=NONE cterm=bold
    hi Identifier   ctermfg=148  ctermbg=NONE cterm=NONE
    hi Label        ctermfg=186  ctermbg=NONE cterm=NONE
    hi Operator     ctermfg=232  ctermbg=NONE cterm=bold
    hi Define       ctermfg=126  ctermbg=NONE cterm=NONE
    hi PreProc      ctermfg=126  ctermbg=NONE cterm=bold
    hi PreCondit    ctermfg=126  ctermbg=NONE cterm=bold
    hi Macro        ctermfg=89   ctermbg=NONE cterm=NONE
    hi NonText      ctermfg=242  ctermbg=NONE cterm=NONE
    hi SpecialKey   ctermfg=242  ctermbg=NONE cterm=NONE
    hi ErrorMsg     ctermfg=231  ctermbg=197  cterm=NONE
    hi WarningMsg   ctermfg=231  ctermbg=197  cterm=NONE
    hi Special      ctermfg=231  ctermbg=NONE cterm=NONE
    hi Tag          ctermfg=161  ctermbg=NONE cterm=NONE
    hi Title        ctermfg=166  ctermbg=NONE cterm=bold
    hi Underlined   ctermfg=NONE ctermbg=NONE cterm=underline
    hi Todo         ctermfg=95   ctermbg=NONE cterm=inverse,bold
    hi DiffAdd      ctermfg=232  ctermbg=114  cterm=NONE
    hi DiffDelete   ctermfg=88   ctermbg=NONE cterm=NONE
    hi DiffChange   ctermfg=NONE ctermbg=NONE cterm=NONE
    hi DiffText     ctermfg=232  ctermbg=195  cterm=NONE
    hi ShowMarksHLl ctermfg=28   ctermbg=251  cterm=NONE
    hi ShowMarksHLu ctermfg=28   ctermbg=251  cterm=bold
    hi ShowMarksHLo ctermfg=25   ctermbg=251  cterm=NONE
    hi ShowMarksHLm ctermfg=94   ctermbg=251  cterm=bold
endif
" }}}

if has("win32") || has("win16") || has("win64")
    let &colorcolumn=join(range(81,999),",")
endif

" Must be at the end, because of ctermbg=234 bug.
set background=light

