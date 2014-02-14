" Vim color file
" Maintainer:   larrupingpig <larrupingpig@gmail.com>
" Last Change: 2011 April 5 
" GUI & Term
" $Revision: 1.2 $

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
"colorscheme default
let g:colors_name = "tortex"

" hardcoded colors :
" GUI Comment : #80a0ff = Light blue

" syn match    	cBraces		"[{}]"
" hi cBraces	              guifg=#C777EF
" GUI
hi Normal       guifg=Grey80         guibg=Black          ctermfg=251 ctermbg=16 cterm=none
hi Search       guifg=Black          guibg=orange         gui=bold ctermfg=252 ctermbg=61 cterm=none
hi Visual      guifg=Grey25          guibg=DarkGrey       gui=bold ctermbg=251  ctermfg=238 cterm=bold 
hi Cursor       guifg=Black          guibg=Green          gui=bold  ctermfg=0 ctermbg=46 cterm=none
hi cursorline                        guibg=#333333                            ctermbg=237 cterm=none
hi CursorColumn                      guibg=#333333                            ctermbg=237 cterm=none
hi Special      guifg=Orange                                       ctermfg=214 ctermbg=16 cterm=none
hi StatusLine   guifg=White          guibg=darkblue       gui=NONE		 ctermfg=231 ctermbg=18 cterm=none
hi Statement    guifg=Yellow                              gui=NONE ctermfg=226 ctermbg=16 cterm=none
hi Type         guifg=#60ff60                gui=NONE  ctermfg=82 cterm=none
hi Pmenu        guifg=white          guibg=#445599        gui=none ctermfg=231 ctermbg=61 cterm=none
hi PmenuSel     guifg=#445599        guibg=gray ctermfg=61 ctermbg=250 cterm=none
hi Comment                                                gui=italic ctermfg=75  ctermbg=16 cterm=none
hi matchparen	guifg=cyan           guibg=#6C6C6C        gui=bold
hi linenr       guifg=burlywood3                          gui=none  ctermfg=172
hi ErrorMsg     guifg=white          guibg=red            gui=none ctermfg=231 ctermbg=196 cterm=none
hi Folded       guifg=DarkSlateGray3 guibg=grey30         gui=none ctermfg=116 ctermbg=239 cterm=none
hi FoldColumn   guifg=tan            guibg=grey30         gui=none ctermfg=180 ctermbg=239 cterm=none
hi IncSearch    guifg=#b0ffff        guibg=#2050d0 ctermfg=159 ctermbg=26 cterm=none
hi ModeMsg      guifg=SkyBlue                             gui=none ctermfg=117 ctermbg=16 cterm=none
hi MoreMsg      guifg=SeaGreen                            gui=none ctermfg=72 ctermbg=16 cterm=none
hi NonText      guifg=cyan                                gui=none ctermfg=51 ctermbg=16 cterm=none
hi Question     guifg=springgreen                         gui=none ctermfg=48 ctermbg=16 cterm=none
hi Search       guifg=gray80         guibg=#445599        gui=none ctermfg=252 ctermbg=61 cterm=none
hi SpecialKey   guifg=cyan                                gui=none ctermfg=51 ctermbg=16 cterm=none
hi Title        guifg=#ff4400                             gui=bold ctermfg=202 ctermbg=16 cterm=bold
hi WarningMsg   guifg=salmon                              gui=none ctermfg=210 ctermbg=16 cterm=none
hi WildMenu     guifg=gray           guibg=gray17         gui=none ctermfg=250 ctermbg=235 cterm=none
hi DiffAdd      guifg=black          guibg=wheat1 ctermfg=16 ctermbg=223 cterm=none
hi DiffChange   guifg=black          guibg=skyblue1 ctermfg=16 ctermbg=117 cterm=none
hi DiffText     guifg=black          guibg=hotpink1       gui=none ctermfg=16 ctermbg=205 cterm=none
hi DiffDelete   guibg=gray45         guifg=black          gui=none ctermfg=16 ctermbg=243 cterm=none
hi Ignore       guifg=red                                 gui=none ctermfg=196 ctermbg=16 cterm=none
hi Todo         guifg=red            guibg=yellow2        gui=none ctermfg=196 ctermbg=226 cterm=none

"========================================================
" Highlight All Math Operator
"========================================================
hi PreProc         guifg=#ff80ff                ctermfg=171 
hi Constant        guifg=#ffa0a0                ctermfg=217

hi Function	    guifg=#C777EF     gui=NONE  ctermfg=177 ctermbg=16 cterm=none
hi StdFunction      guifg=#C777EF     gui=bold  ctermfg=177 ctermbg=16 cterm=bold
hi UserLabel2	    guifg=#c96129     gui=bold  ctermfg=166 ctermbg=16 cterm=bold
hi StdName	    guifg=#5276e6     gui=bold  ctermfg=69 ctermbg=16 cterm=bold
hi MicroController  guifg=#d00000     gui=bold  ctermfg=160 ctermbg=16 cterm=bold
hi AnsiFuncPtr	    guifg=#ff0000     gui=NONE  ctermfg=196 ctermbg=16 cterm=none
hi PreCondit        guifg=#a06129     gui=NONE  ctermfg=130 ctermbg=16 cterm=none
hi Operator         guifg=Yellow      gui=NONE  ctermfg=226 ctermbg=16 cterm=none
hi OperatorBold	    guifg=Yellow      gui=bold  ctermfg=226 ctermbg=16 cterm=bold
hi BlockBraces	    guifg=Yellow      gui=bold  ctermfg=226 ctermbg=16 cterm=bold
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" C math operators
syn match       cMathOperator     display "[-+\*\%=]"" C pointer operators
syn match       cPointerOperator  display "->\|\."
syn match       cLogicalOperator  display "[!<>]=\="
syn match       cLogicalOperator  display "=="
syn match       cBinaryOperator   display "\(&\||\|\^\|<<\|>>\)=\="
syn match       cBinaryOperator   display "\~"
syn match       cBinaryOperatorError display "\~="
syn match       cLogicalOperator  display "&&\|||"
syn match       cLogicalOperatorError display "\(&&\|||\)="
syn match       cFenhao           display ";"
hi cMathOperator            guifg=#3EFFE2                          ctermfg=14
hi cPointerOperator         guifg=#3EFFE2                          ctermfg=14
hi cLogicalOperator         guifg=#3EFFE2                          ctermfg=14
hi cLogicalOperator         guifg=#3EFFE2                          ctermfg=14
hi cBinaryOperator          guifg=#F0088C               gui=NONE   ctermfg=161  ctermbg=16 
hi cBinaryOperatorError     guifg=white     guibg=Red   gui=NONE 
hi cBraces	            guifg=#C777EF   gui=NONE               ctermfg=177 ctermbg=16 cterm=none
hi cFenhao                  guifg=#FFA70F                          ctermfg=202 ctermbg=16 cterm=none
hi cMaohao                  guifg=#3EFFE2                          ctermfg=14


" ClassName       : Class
" DefinedName     : Define
" Enumerator      : Enumerator
" Function        : Function or method
" EnumerationName : Enumeration name
" Member          : Member (of structure or class)
" Structure       : Structure Name
" Type            : Typedef
" Union           : Union Name
" GlobalConstant  : Global Constant
" GlobalVariable  : Global Variable
" LocalVariable   : Local Variable



hi  Class               guifg=Purple   ctermfg=129 ctermbg=16 cterm=none
hi  DefinedName         guifg=#ee82ee  ctermfg=213 ctermbg=16 cterm=none
hi  EnumerationValue    guifg=#ff8080 ctermfg=210 ctermbg=16 cterm=none
hi  EnumerationName     guifg=#ff22ff  ctermfg=201 ctermbg=16 cterm=none
hi  Member              guifg=DarkGrey ctermfg=248 ctermbg=16 cterm=none
hi  Union               guifg=Grey    ctermfg=250 ctermbg=16 cterm=none
hi  GlobalVariable      guifg=#00C0C0  ctermfg=37 ctermbg=16 cterm=none
hi  LocalVariable       guifg=#808000  ctermfg=100 ctermbg=16 cterm=none
hi  GlobalConstant      guifg=#006868   ctermfg=23 ctermbg=16 cterm=none

"========================================================
" My Own DataType
"========================================================
syn keyword cType  uint8 int8 uint16 int16 uint32 int32 fp32 fp64 BOOLEAN INT8U INT8S INT16U INT16S INT32U INT32S FP32 FP64 REAL_TYPE SAVE_Num STORAGE_TYPE gLLJ_Num g_Storage_Object g_RealData

"" xxx term=underline ctermfg=9 guifg=Wheat 
"" ClassName       : Class
"hi def link ClassName cType
"" DefinedName     : Define
"hi def link DefinedName Macro
"" Enumerator      : Enumerator
"hi def link Enumerator  Macro
"" Function        : Function or method
"hi Function       gui=NONE guifg=#C777EF
"" EnumerationName : Enumeration name
"hi def link EnumerationName cType
"" Member          : Member (of structure or class)
"hi def link Member Normal
"" hi Member ctermfg=117 guifg=#87ceeb 
"" Structure       : Structure Name
"" hi  Structure ctermfg=214 ctermbg=16 guifg=Orange
"" cType
"" Type            : Typedef
"hi def link Type cType
"" hi Type ctermfg=2 gui=bold guifg=#00c000
"" Union           : Union Name
"hi def link Union cType
"" GlobalConstant  : Global Constant
"" hi def link GlobalConstant Macro
"hi GlobalConstant ctermfg=214 ctermbg=16 guifg=Orange
"" GlobalVariable  : Global Variable
"" hi def link GlobalVariable Macro
"hi def link GlobalVariable GlobalConstant
"" LocalVariable   : Local Variable
"hi def link LocalVariable   Normal
