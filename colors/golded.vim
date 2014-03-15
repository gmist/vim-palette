" GVim & Term color file
" Author: Martin Mauchauffee
" Note: Based on GoldED from Amiga. Using low contrast colors to avoid
" flicking effects when switching beetween windows, like browser and
" terminal which uses black or white background.

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name="golded"

" Highlighting groups for various occasions
hi SpecialKey guifg=#99cc66 guibg=#558822 ctermbg=DarkGreen ctermfg=LightGreen
hi NonText guifg=#99cc66 guibg=#808080 ctermbg=DarkGray ctermfg=LightGreen
hi Directory gui=BOLD guifg=#2244cc cterm=BOLD ctermfg=Blue
hi ErrorMsg gui=BOLD guifg=#ffffff guibg=#cc3300 cterm=BOLD ctermfg=White ctermbg=DarkRed
hi Search guibg=#cccc33 cterm=INVERSE ctermfg=Yellow ctermbg=Black
hi MoreMsg guifg=#99cc66 guibg=#808080 ctermbg=DarkGray ctermfg=LightGreen
hi ModeMsg gui=BOLD guifg=#ffffff guibg=#dd4400 cterm=BOLD ctermfg=White ctermbg=DarkRed
hi LineNr guifg=#666666 guibg=#b3b3b3 ctermfg=DarkGray
hi Question guifg=#99cc66 guibg=#558822 ctermbg=DarkGreen ctermfg=LightGreen
hi StatusLine gui=BOLD guifg=#ffffff guibg=#6688bb cterm=BOLD ctermfg=White ctermbg=Blue
hi StatusLineNC gui=NONE guifg=#dddddd guibg=#6688bb cterm=NONE ctermfg=Black ctermbg=Blue
hi VertSplit gui=NONE guifg=#6688bb guibg=#6688bb cterm=NONE ctermfg=DarkBlue ctermbg=Blue
hi Title gui=BOLD,UNDERLINE guifg=#ffffff guibg=#808080 cterm=BOLD guifg=White
hi Visual guifg=#000000 guibg=#6688bb cterm=NONE ctermfg=Black ctermbg=LightBlue
hi WarningMsg gui=BOLD guifg=#ffffff guibg=#ff6600 cterm=BOLD ctermfg=White ctermbg=DarkRed
hi WildMenu guifg=#000000 guibg=#ffffff ctermbg=White ctermfg=Black
hi Folded guifg=#dddddd guibg=#6688bb ctermbg=Blue ctermfg=Black
hi FoldColumn guifg=#dddddd guibg=#6688bb ctermbg=Blue ctermfg=Black
hi DiffAdd guibg=#7EAB7F ctermbg=Green ctermfg=White
hi DiffChange guibg=#B2B186 ctermbg=Blue ctermfg=White
hi DiffDelete gui=NONE guifg=#000000 guibg=#A28282 ctermbg=Red ctermfg=White
hi DiffText gui=NONE guibg=#99ddcc ctermbg=Cyan ctermfg=White
hi SignColumn guifg=#ffffff guibg=#6688bb ctermfg=White ctermbg=Blue
hi Pmenu guifg=#000000 guibg=#6688bb ctermbg=Blue ctermfg=Black
hi PmenuSel gui=BOLD guifg=#ffffff guibg=#6688bb ctermbg=Blue ctermfg=White
hi PmenuSbar guibg=#6688bb ctermbg=Blue ctermfg=Black
hi PmenuThumb guifg=#88bbcc ctermfg=Cyan
hi TabLine guifg=#dddddd guibg=#6688bb cterm=NONE ctermbg=Blue ctermfg=Black
hi TabLineSel guifg=#ffffff guibg=#6688bb ctermbg=Blue ctermfg=White
hi TabLineFill guifg=#6688bb ctermfg=DarkBlue
hi CursorColumn guibg=#bbbbbb ctermbg=Blue ctermfg=White
hi CursorIM guifg=#000000 guibg=#ffffff
hi CursorLine guibg=#bbbbbb ctermbg=Blue ctermfg=White
hi ColorColumn guibg=#808080 ctermbg=Blue ctermfg=Cyan
hi Cursor guifg=#000000 guibg=#ffffff

" Syntax highlighting groups
hi MatchParen guifg=#000000 guibg=#cc88dd cterm=INVERSE ctermbg=Black ctermfg=Cyan
hi Normal guibg=#a2a2a2 guifg=#000000 ctermfg=Gray
hi Comment gui=BOLD guifg=#ffbbff ctermfg=Magenta
hi Constant guifg=#990000 ctermfg=DarkRed
hi String guifg=#ffff33 ctermfg=Yellow
hi Boolean guifg=#99ffee guibg=#6688bb ctermbg=Blue ctermfg=Cyan
hi Special guifg=#ffdd77 guibg=#808080
hi SpecialChar gui=UNDERLINE guibg=#888800 guifg=#ffff33 ctermbg=Brown ctermfg=White
hi Delimiter guifg=#555555 ctermfg=DarkGray
hi Debug guifg=#ffffff guibg=#916e6e ctermfg=White ctermbg=DarkRed
hi Identifier guifg=#ffffff ctermfg=White
hi Function guifg=#990099 ctermfg=LightMagenta
hi Operator guifg=#555555 ctermfg=DarkGray
hi Conditional gui=BOLD guifg=#aaff00 cterm=BOLD ctermfg=Green
hi Repeat gui=BOLD guifg=#aaff00 cterm=BOLD ctermfg=Green
hi PreProc gui=BOLD guifg=#99ffee cterm=BOLD ctermfg=Cyan
hi Type gui=BOLD guifg=#996644 ctermfg=Brown
hi Underlined gui=UNDERLINE guifg=#ffffcc cterm=UNDERLINE ctermfg=Yellow
hi Error guifg=#ffffff guibg=#dd3333 ctermbg=DarkRed ctermfg=White
hi Todo guifg=White guibg=#bb77cc ctermbg=DarkMagenta ctermfg=White
hi Number guifg=#bb3333 ctermfg=Red

" VIM
hi vimCommentTitle gui=BOLD guifg=#ffffff cterm=BOLD ctermfg=Gray

" PHP
hi Identifier guifg=#ffffff ctermfg=White
hi phpIdentifier guifg=#ffffff ctermfg=White
hi phpVarSelector guifg=#ffffff ctermfg=White
hi phpMemberSelector guifg=#555555 ctermfg=DarkGray
hi phpArrayPair guifg=#555555 ctermfg=DarkGray
hi phpArrayComma guifg=#555555 ctermfg=DarkGray
hi phpSpecialFunction guibg=#997744 guifg=#ffcc33 ctermbg=Brown ctermfg=White
hi phpStatement gui=BOLD guifg=#ffcc33 cterm=BOLD ctermfg=Cyan
hi phpSuperglobal guibg=#669966 guifg=#66ff66 ctermbg=DarkGreen ctermfg=White
hi phpMagicConstant guibg=#996666 guifg=#ff9999 ctermbg=DarkRed ctermfg=White
hi phpQuoteSingle guifg=#ffff33 ctermfg=Yellow
hi phpQuoteDouble guifg=#ffff33 ctermfg=Yellow
hi phpSemicolon guifg=#555555 ctermfg=DarkGray
hi phpSpecialMethods guibg=#775555 guifg=#ff9999 ctermbg=DarkRed ctermfg=White
hi phpRelation guifg=#555555 ctermfg=DarkGray
hi phpDoubleColon guifg=#555555 ctermfg=DarkGray
hi phpBoolean guifg=#99ffee guibg=#6688bb ctermbg=Blue ctermfg=Cyan

" HTML
hi link htmlTag Function
hi link htmlTagName htmlTag
hi link htmlEndTag htmlTag
hi htmlArg guifg=#ffcc33 ctermfg=Brown

" SQL
hi sqlStatement gui=BOLD guifg=#ffcc33 cterm=BOLD ctermfg=Cyan
hi sqlKeyword gui=BOLD guifg=#99ffee cterm=BOLD ctermfg=Cyan
hi link sqlString String
hi link sqlNumber Number
hi link sqlComment Comment
hi link sqlType Type
hi link sqlFunction Function
hi sqlOperator gui=BOLD guifg=#99ffee cterm=BOLD ctermfg=Cyan

" JAVASCRIPT
hi link javascript Normal

" GitGutter
hi lineAdded guifg=#22ff22 guibg=#6688BB ctermfg=Green
hi lineModified guifg=#cccc22 guibg=#6688BB ctermfg=Yellow
hi lineRemoved guifg=#aa2222 guibg=#6688BB ctermfg=Red

