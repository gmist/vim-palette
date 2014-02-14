" Colorscheme created with ColorSchemeEditor v1.2.3
"Name: codepaper
"Maintainer: boomzoomer <pirata.russo@gmail.com>
"Version: 2.1
"Last Change: 2013 Apr 20
"License: gpl
" 
"

set background=light
if version > 580
	highlight clear
	if exists("syntax_on")
		syntax reset
	endif
endif
let g:colors_name = "codepaper"

if v:version >= 700
	highlight CursorColumn guibg=#FDD99B gui=NONE
	highlight CursorLine guibg=#E4CC98 gui=NONE
	highlight Pmenu guifg=#443624 guibg=#8F7F5C gui=NONE
	highlight PmenuSel guifg=#443624 guibg=#DBD0C1 gui=NONE
	highlight PmenuSbar guifg=#DBD0C1 guibg=#443624 gui=NONE
	highlight PmenuThumb guifg=#A52A2A guibg=#FDD99B gui=NONE
	highlight TabLine guifg=#652F2F guibg=#FDD99B gui=underline
	highlight TabLineFill gui=reverse
	highlight TabLineSel guifg=#006A7F gui=NONE
	if has('spell')
		highlight SpellBad guifg=#A52A2A guibg=#FDD99B gui=undercurl
		highlight SpellCap gui=undercurl
		highlight SpellLocal gui=undercurl
		highlight SpellRare gui=undercurl
	endif
endif
highlight Cursor guifg=NONE guibg=#1A1A1A gui=NONE
highlight CursorIM gui=NONE
highlight DiffAdd guifg=#E4CC98  guibg=#2E8B57 gui=NONE
highlight DiffChange guifg=#E4CC98 guibg=#006A7F gui=NONE
highlight DiffDelete guifg=#E4CC98 guibg=#A52A2A gui=bold
highlight DiffText guifg=#E4CC98 guibg=#5C5143 gui=bold
highlight Directory guifg=#006A7F gui=NONE
highlight ErrorMsg guifg=#E82320 guibg=#D9BB7A gui=NONE
highlight FoldColumn guifg=#1A1A1A guibg=#D9BB7A gui=NONE
highlight Folded guifg=#652F2F guibg=#E4CC98 gui=NONE
highlight IncSearch guifg=#1A1A1A guibg=#8D7748 gui=NONE
highlight LineNr guifg=#1A1A1A guibg=#D9BB7A gui=NONE
highlight MatchParen guifg=#A52A2A guibg=#8D7748 gui=NONE
highlight ModeMsg guifg=#007050 guibg=#FDD99B gui=NONE
highlight MoreMsg guifg=#2E8B57 guibg=#FDD99B gui=bold
highlight NonText guifg=#A52A2A guibg=#FDD99B gui=NONE
highlight Normal guifg=#652F2F guibg=#FDD99B gui=NONE
highlight Question guifg=#007050 gui=NONE
highlight Search guifg=#1A1A1A guibg=#D9BB7A gui=NONE
highlight SignColumn guifg=#A52A2A guibg=#8D7748 gui=NONE
highlight SpecialKey guifg=#A52A2A guibg=#FDD99B gui=NONE
highlight StatusLine guifg=#1A1A1A guibg=#D9BB7A gui=NONE
highlight StatusLineNC guifg=#5C5143 guibg=#D9BB7A gui=NONE
highlight Title guifg=#652F2F guibg=#FDD99B gui=NONE
highlight VertSplit guifg=#1A1A1A guibg=#D9BB7A gui=NONE
highlight Visual guifg=#FDD99B guibg=#5C5143 gui=NONE
highlight VisualNOS gui=bold,underline
highlight WarningMsg guifg=#E82320 gui=NONE
highlight WildMenu guifg=#FDD99B guibg=#1A1A1A gui=NONE
highlight link Boolean Constant
highlight link Character Constant
highlight Comment guifg=#8B5A2B gui=italic
highlight Conditional guifg=#A52A2A gui=NONE
highlight Constant guifg=#007050 gui=NONE
highlight link Debug Special
highlight link Define PreProc
highlight Delimiter guifg=#1A1A1A gui=NONE
highlight Error guifg=#E82320 guibg=#D9BB7A gui=undercurl
highlight link Exception Statement
highlight link Float Constant
highlight link Function Identifier
highlight Identifier guifg=#1A1A1A gui=NONE
highlight Ignore guifg=#007050 guibg=#FDD99B gui=NONE
highlight link Include PreProc
highlight Keyword guifg=#A52A2A gui=NONE
highlight link Label Statement
highlight link Macro PreProc
highlight link Number Constant
highlight Operator guifg=#006A7F gui=NONE
highlight link PreCondit PreProc
highlight PreProc guifg=#A52A2A gui=NONE
highlight link Repeat Statement
highlight Special guifg=#007050 guibg=NONE gui=NONE
highlight link SpecialChar Special
highlight link SpecialComment Special
highlight Statement guifg=#A52A2A gui=NONE
highlight link StorageClass Type
highlight link String Constant
highlight link Structure Type
highlight Tag guifg=#006A7F gui=NONE
highlight Todo guifg=#CD853F guibg=#D9BB7A gui=NONE
highlight Type guifg=#006A7F gui=NONE
highlight link Typedef Type
highlight Underlined guifg=#A52A2A guibg=#FDD99B gui=underline
"The colours for tagdbar.
"The "public" visibility symbol.
highlight TagbarVisibilityPublic guifg=#007050 guibg=#FDD99B gui=NONE 
"The "protected" visibility symbol.   
highlight TagbarVisibilityProtected  guifg=#006A7F guibg=#FDD99B gui=NONE
"The "private" visibility symbol    
highlight TagbarVisibilityPrivate guifg=#A52A2A guibg=#FDD99B gui=NONE
   .
"ColorScheme metadata{{{
if v:version >= 700
	let g:codepaper2_Metadata = {
				\"Palette" : "#006A7F:#007050:#1A1A1A:#219128:#443624:#5C5143:#652F2F:#8D7748:#8F7F5C:#A52A2A:#BA8933:#D9BB7A:#DBD0C1:#E4CC98:#E82320:#FDD99B:#0ACC6C:#0AABCB:#000000:#FFFFFF",
				\"Maintainer" : "boomzoomer",
				\"Name" : "codepaper",
				\"License" : ["gpl		",
				\],
				\"Version" : "2.1",
				\"Email" : "pirata.russo@gmail.com",
				\"Last Change" : "2013 Apr 18",
				\}
endif

"}}}
" vim:set foldmethod=marker expandtab filetype=vim:
