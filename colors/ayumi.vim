
" vim: tw=0 ts=4 sw=4 noet ft=colours_bandit foldmethod=diff
" Vim colour file
" Maintainer:	A. S. Budden

hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "ayumi"

let ColourAssignment = {}

" Unspecified colours default to NONE, EXCEPT cterm(.*) which default to matching gui(.*)
" ctermfg will default to 'Blue' and ctermbg to 'NONE' if gui(.*) are RGB
"
" In most cases, only GUIFG is therefore important unless support for Black and White
" terminals is essential

" By default, assume the background colour is dark (changes for light backgrounds are handled later)
let ColourAssignment['Normal']          = {"GUIFG": 'White',       "GUIBG":  'Black'}

" Comments are green
let ColourAssignment['Comment']         = {"GUIFG": '#00ff00',     "CTERMFG": 'Green',     "TERM":   'Bold'}

" These are considered to be a different sort of comment, so they get a different shade
" of green: this also allows the doxygen todo error highlighter to be able to spot
" erroneous @todo flags in non-doxygen comments (requires Doxygen Comment Matcher)
let ColourAssignment['DoxygenComment']  = {"GUIFG": '#008800',     "CTERMFG": 'Green',     "TERM":  'Bold'}
let ColourAssignment['DoxygenKeyword']  = {"GUIFG": '#88ffdd',     "CTERMFG": 'Blue'}
let ColourAssignment['DoxygenLink']     = {"GUIFG": '#8888ff',     "CTERMFG": 'Blue'}
let ColourAssignment['DoxygenTable']    = {"GUIFG": '#00bb00',     "CTERMFG": 'Green',     "TERM":  'Bold'}
let ColourAssignment['DoxygenTableLines']  = {"GUIFG": '#88ffdd',     "CTERMFG": 'Blue'}

" These are PC-Lint related comments
let ColourAssignment['LintComment']     = {"GUIFG": '#00ff88',     "CTERMFG": 'Green',     "TERM":  'Bold'}

" Constants are shades of yellow or brown
let ColourAssignment['Constant']        = {"GUIFG": '#FFFF66',     "CTERMFG": 'Yellow',    "TERM":  'Underline'}
let ColourAssignment['String']          = {"GUIFG": 'LightYellow'}
let ColourAssignment['Character']       = {"GUIFG": 'DarkYellow'}

" Preprocessor directives are bold shades of blue
let ColourAssignment['PreProc']         = {"GUIFG": 'Blue',        "GUI":     'Bold',      "TERM":  'Underline'}
let ColourAssignment['Include']         = {"GUIFG": 'Blue',        "GUI":     'Bold'} " preprocessor #include
let ColourAssignment['Define']          = {"GUIFG": '#5555FF',     "GUI":     'Bold'} " preprocessor #define
let ColourAssignment['Macro']           = {"GUIFG": '#5555FF',     "GUI":     'Bold'} " same as Define
let ColourAssignment['PreCondit']       = {"GUIFG": '#000000',     "GUI":     'Bold'} " preprocessor #if, #else, #endif, etc.

" Statements are shades of Blue
let ColourAssignment['Statement']       = {"GUIFG": 'Blue',        "TERM":    'Bold'}
let ColourAssignment['Conditional']     = {"GUIFG": '#5555FF'} " if, then, else, endif, switch, etc.
let ColourAssignment['Repeat']          = {"GUIFG": '#8888FF'} " for, do, while, etc.
let ColourAssignment['Label']           = {"GUIFG": '#2222FF'} " case, default, etc.
let ColourAssignment['Exception']       = {"GUIFG": '#5555AA'} " try, catch, throw

" Operators (+, =, -, % etc): not defined by default C syntax
let ColourAssignment['Operator']        = {"GUIFG": '#CCCCFF'}

" Identifiers are shades of Cyan
let ColourAssignment['Identifier']      = {"GUIFG": 'Cyan',        "TERM":    'Underline'}
let ColourAssignment['Function']        = {"GUIFG": '#007777',     "CTERMFG": 'Cyan'}
let ColourAssignment['Method']          = {"GUIFG": '#009966',     "CTERMFG": 'Cyan'}

" Special additions created by mktypes.py are shades of Purple or Grey
let ColourAssignment['Class']           = {"GUIFG": '#0080f0',      "TERM":  'Underline'}
let ColourAssignment['DefinedName']     = {"GUIFG": '#ee82ee',     "TERM":    'Underline'}
let ColourAssignment['EnumerationValue']= {"GUIFG": '#c000c0'}
let ColourAssignment['EnumerationName'] = {"GUIFG": '#ff22ff',     "TERM":  'Underline'}
let ColourAssignment['Member']          = {"GUIFG": '#776600',    "TERM":    'Underline'}
let ColourAssignment['Union']           = {"GUIFG": 'Grey',        "TERM":    'Underline'}
let ColourAssignment['GlobalVariable']  = {"GUIFG": '#666600',     "CTERMFG": 'Cyan',      "TERM":  'Underline'}
let ColourAssignment['LocalVariable']   = {"GUIFG": '#333333',     "CTERMFG": 'Cyan'}
let ColourAssignment['GlobalConstant']  = {"GUIFG": '#bbbb00',     "CTERMFG": 'Yellow',      "TERM":  'Underline'}

" Types/storage classes etc are shades of orangey-red
let ColourAssignment['Type']            = {"GUIFG": '#ff8000',     "TERM":    'Underline'}
let ColourAssignment['StorageClass']    = {"GUIFG": '#ff4040'} " static, register, volatile, etc.
let ColourAssignment['Structure']       = {"GUIFG": '#ff8080'} " struct, union, enum, etc.

" Special Stuff
let ColourAssignment['Special']         = {"GUIFG": 'Red',         "TERM":    'Bold'}
let ColourAssignment['SpecialChar']     = {"GUIFG": '#AA0000'}     " special character in a constant
let ColourAssignment['SpecialKey']      = {"GUIFG": '#555555'}     " special highlighting for 'listchars' etc
let ColourAssignment['NonText']         = {"GUIFG": '#555555'}     " special highlighting for 'listchars' etc
let ColourAssignment['MatchParen']      = {"GUI":   'Underline',   "GUIFG": "Yellow"}   " Highlighting of matching parentheses

" Errors
let ColourAssignment['Error']           = {"GUIFG": 'White',       "GUIBG":   'Red',       "TERM":  'Reverse'}
let ColourAssignment['NonIndentTabError']={"GUISP": '#FFAA00',     "GUI":   'undercurl',   "CTERMBG": 'Red'}

" Stuff needing doing
let ColourAssignment['Todo']            = {"GUIFG": 'Blue',        "GUIBG":   'Yellow',    "TERM":  'Standout'}

" Folding
let ColourAssignment['FoldColumn']      = {"GUIFG": 'DarkBlue',    "GUIBG":   'Gray'}

" Popup Menu
let ColourAssignment['Pmenu']           = {"GUIFG": '#442206',     "GUIBG": '#ffff77',     "CTERMFG": "Black",   "CTERMBG": "Yellow"}

" Line Numbering
let ColourAssignment['LineNr']          = {"GUIFG": 'Purple',      "GUIBG": 'LightGrey'}

" Status Lines
let ColourAssignment['StatusLine']      = {"GUIFG": 'Black',       "GUIBG": 'LightGrey'}
let ColourAssignment['StatusLineNC']    = {"GUIFG": 'Black',       "GUIBG": 'DarkGrey'}

" Vertical Splits
let ColourAssignment['VertSplit']       = {"GUIFG": 'Black',       "GUIBG": "White"}

" Signs Column
let ColourAssignment['SignColumn']      = {"GUIBG": '#222222'}

" Text Titles
let ColourAssignment['Title']           = {"GUIFG": 'Blue',        "GUI": "Bold"}
let ColourAssignment['htmlH1']          = {"GUIFG": 'Blue'}
let ColourAssignment['htmlH2']          = {"GUIFG": '#8888FF'}
let ColourAssignment['htmlH3']          = {"GUIFG": '#9999DD'}
let ColourAssignment['htmlH4']          = {"GUIFG": '#5555AA'}
let ColourAssignment['htmlH5']          = {"GUIFG": '#8888AA'}
let ColourAssignment['htmlH6']          = {"GUIFG": '#888888'}


" Delimiters
let ColourAssignment['Delimiter']       = {"GUIFG": 'DarkCyan'}
" Rainbow highlighting of nested brackets
" TODO: Find the closest ctermfg match to the various guifg colours
let ColourAssignment['hlLevel0']        = {"GUIFG": 'DarkCyan',    "CTERMFG": 'DarkCyan'}
let ColourAssignment['hlLevel1']        = {"GUIFG": '#bfbf00',     "CTERMFG": 'DarkCyan'}
let ColourAssignment['hlLevel2']        = {"GUIFG": '#990033',     "CTERMFG": 'DarkCyan'}
let ColourAssignment['hlLevel3']        = {"GUIFG": '#334488',     "CTERMFG": 'DarkCyan'}
let ColourAssignment['hlLevel4']        = {"GUIFG": '#996622',     "CTERMFG": 'DarkCyan'}
let ColourAssignment['hlLevel5']        = {"GUIFG": '#ff2222',     "CTERMFG": 'DarkCyan'}
let ColourAssignment['hlLevel6']        = {"GUIFG": '#4444ff',     "CTERMFG": 'DarkCyan'}
let ColourAssignment['hlLevel7']        = {"GUIFG": '#ffff44',     "CTERMFG": 'DarkCyan'}
let ColourAssignment['hlLevel8']        = {"GUIFG": '#96cdcd',     "CTERMFG": 'DarkCyan'}
let ColourAssignment['hlLevel9']        = {"GUIFG": '#698b22',     "CTERMFG": 'DarkCyan'}
" Stop rainbow.vim from overwriting these colours (requires modifications to rainbow.vim v2a
let g:rainbow_delimiter_colours_defined = 1

" ========================================================================
" Other available highlighting groups are listed at the bottom of the file
" Light Background stuff is below the MakeDarker function
" ========================================================================

function! s:MakeDarker(rgb)
	let rgbSplitter = '^#\(\x\{2}\)\(\x\{2}\)\(\x\{2}\)$'
	let matches = matchlist(a:rgb, rgbSplitter)
	if empty(matches)
		return a:rgb
	endif
	let Red = matches[1]
	let Green = matches[2]
	let Blue = matches[3]
	let percentage = 70
	let darken_above_here = 0x7f*3

	let Red = str2nr(Red, 16)
	let Green = str2nr(Green, 16)
	let Blue = str2nr(Blue, 16)
	if (Red+Green+Blue) < darken_above_here
		return a:rgb
	endif

	let Red = Red*percentage/100
	let Green = Green*percentage/100
	let Blue = Blue*percentage/100

	let result = printf("#%02x%02x%02x", Red, Green, Blue)

	return result
	
endfunction


" Now change those that are different for the light background
if &background == 'light'
	" Automatically change any LightXxxxx Colours to DarkXxxxx
	for s:group in keys(ColourAssignment)
		for s:Component in keys(ColourAssignment[s:group])
			if match(ColourAssignment[s:group][s:Component], 'Light') == 0
				let ColourAssignment[s:group][s:Component] = 'Dark'.ColourAssignment[s:group][s:Component][5:]
			elseif match(ColourAssignment[s:group][s:Component], '^#\x\{6}$') != -1
				let ColourAssignment[s:group][s:Component] = s:MakeDarker(ColourAssignment[s:group][s:Component])
			endif
		endfor
	endfor

	" Now add manual alterations
	let ColourAssignment['Normal']              = {"GUIFG": 'Black',     "GUIBG": 'White'}
	let ColourAssignment['Comment']["GUIFG"]    = 'DarkGreen'
	let ColourAssignment['String']["GUIFG"]     = '#663300'
	let ColourAssignment['String']["CTERMFG"]   = 'DarkYellow'
	let ColourAssignment['Union']["GUIFG"]      = 'DarkGrey'
	let ColourAssignment['Identifier']["GUIFG"] = 'Blue'
	let ColourAssignment['Operator']["GUIFG"]   = '#222288'
	let ColourAssignment['LineNr']["GUIBG"]     = 'Grey'
	let ColourAssignment['StatusLine']["GUIBG"] = 'Black'
	let ColourAssignment['StatusLine']["GUIFG"] = 'White'
	let ColourAssignment['SignColumn']["GUIBG"] = "LightGrey"
	let ColourAssignment['SpecialKey']["GUIFG"] = '#AAAAAA'
	let ColourAssignment['NonText']["GUIFG"]    = '#AAAAAA'
endif

hi Ignore ctermfg=DarkGrey guifg=grey20

" Unless there is a need to change the links at the bottom, don't change anything below this line

let s:colours = {}
let valid_cterm_colours = 
			\ [
			\     'Black', 'DarkBlue', 'DarkGreen', 'DarkCyan',
			\     'DarkRed', 'DarkMagenta', 'Brown', 'DarkYellow',
			\     'LightGray', 'LightGrey', 'Gray', 'Grey',
			\     'DarkGray', 'DarkGrey', 'Blue', 'LightBlue',
			\     'Green', 'LightGreen', 'Cyan', 'LightCyan',
			\     'Red', 'LightRed', 'Magenta', 'LightMagenta',
			\     'Yellow', 'LightYellow', 'White',
			\ ]
for key in keys(ColourAssignment)
	let s:colours = ColourAssignment[key]
	if has_key(s:colours, 'TERM')
		let term = s:colours['TERM']
	else
		let term = 'NONE'
	endif
	if has_key(s:colours, 'GUI')
		let gui = s:colours['GUI']
	else
		let gui='NONE'
	endif
	if has_key(s:colours, 'GUIFG')
		let guifg = s:colours['GUIFG']
	else
		let guifg='NONE'
	endif
	if has_key(s:colours, 'GUIBG')
		let guibg = s:colours['GUIBG']
	else
		let guibg='NONE'
	endif
	if has_key(s:colours, 'CTERM')
		let cterm = s:colours['CTERM']
	else
		let cterm=gui
	endif
	if has_key(s:colours, 'CTERMFG')
		let ctermfg = s:colours['CTERMFG']
	else
		if index(valid_cterm_colours, guifg) != -1
			let ctermfg=guifg
		else
			let ctermfg='Blue'
		endif
	endif
	if has_key(s:colours, 'CTERMBG')
		let ctermbg = s:colours['CTERMBG']
	else
		if index(valid_cterm_colours, guibg) != -1
			let ctermbg=guibg
		else
			let ctermbg='NONE'
		endif
	endif
	if has_key(s:colours, 'GUISP')
		let guisp = s:colours['GUISP']
	else
		let guisp='NONE'
	endif

	if key =~ '^\k*$'
		execute "hi ".key." term=".term." cterm=".cterm." gui=".gui." ctermfg=".ctermfg." guifg=".guifg." ctermbg=".ctermbg." guibg=".guibg." guisp=".guisp
	endif
endfor

hi! link MoreMsg        Comment
hi! link ErrorMsg       Visual
hi! link WarningMsg     ErrorMsg
hi! link Question       Comment
hi  link Number         Constant
hi  link Boolean        Number
hi  link Float          Number
hi  link Keyword        Statement
hi  link Typedef        Type
hi  link SpecialComment Special
hi  link Debug          Special

hi link javaParen  hlLevel0
hi link javaParen1 hlLevel1
hi link javaParen2 hlLevel2

" For reference, roughly equivalent syntax highlighting in diffuse
" (http://diffuse.sourceforge.net)
" This is for C++ syntax:
"
" # colours
" colour c++_comment 0.0 0.5 0.0
" colour c++_fixme 0.5 0.5 0.0
" colour c++_keyword 0.2 0.2 0.7
" colour c++_type 0.7 0.3 0.0
" colour c++_cpp 0.0 0.0 0.0
" colour c++_cppkeyword 0.4 0.4 0.7
" colour c++_literal 0.7 0.7 0.3
" colour c++_string 0.4 0.2 0.0
" colour c++_escapedchar 0.7 0.0 0.0
" colour c++_punctuation 0.1 0.1 0.5


"" Customized color


hi Boolean         guifg=#ae81ff               gui=bold
hi Character       guifg=#e6db74
hi Number          guifg=#FF0000
hi String          guifg=#008080
hi Conditional     guifg=#6d8fd9               gui=bold
hi Constant        guifg=#A000A0               gui=bold
hi Cursor          guifg=#FFFFFF guibg=#EF36A2
hi Debug           guifg=#bca3a3               gui=bold
hi Define          guifg=#66d9ef
hi Delimiter       guifg=#8f8f8f
hi DiffAdd                       guibg=#13354a
hi DiffChange      guifg=#89807d guibg=#4c4745
hi DiffDelete      guifg=#960050 guibg=#1e0010
hi DiffText                      guibg=#4c4745 gui=bold
" 888A85
hi Directory       guifg=#838300
hi Error           guifg=#FF0000 guibg=#FFFFFF gui=UNDERLINE
hi ErrorMsg        guifg=#f92672 guibg=#232526 gui=bold
hi Exception       guifg=#a6e22E               gui=bold
hi Float           guifg=#ae81fF
hi FoldColumn      guifg=#465457 guibg=#000000
hi Folded          guifg=#707070 guibg=#E0E0E0
hi Function        guifg=#ff0086
hi Identifier      guifg=#ff0086
hi Ignore          guifg=#808080 guibg=bg
hi IncSearch       guifg=#800000 guibg=#ffae00

hi Keyword         guifg=#f92672               gui=bold
hi Label           guifg=#ff0086               
hi Macro           guifg=#A000E0               gui=bold
hi SpecialKey      guifg=#d3fe36               

hi MatchParen      guifg=#000000 guibg=#fd971f gui=bold
hi ModeMsg         guifg=#e6db74
hi MoreMsg         guifg=#e6db74
hi Operator        guifg=#6d8fd9

" complete menu
hi Pmenu           guifg=#ffffff guibg=#707072
hi PmenuSel                      guibg=#808080
hi PmenuSbar                     guibg=#080808
hi PmenuThumb      guifg=#66d9ef

hi PreCondit       guifg=#A000E0               gui=bold
hi PreProc         guifg=#A000A0
hi Question        guifg=#66d9ef
hi Repeat          guifg=#f92672               gui=bold
hi Search          guifg=#800000 guibg=#ffae00
" marks column
hi SignColumn      guifg=#a6e22e guibg=#232526
hi SpecialChar     guifg=#f92672               gui=bold
hi SpecialComment  guifg=#465457               gui=bold
hi Special         guifg=#A000A0 guibg=bg      
hi SpecialKey      guifg=#888A85               
if has("spell")
  hi SpellBad    guisp=#ff0000 gui=undercurl
  hi SpellCap    guisp=#7070F0 gui=undercurl
  hi SpellLocal  guisp=#70f0f0 gui=undercurl
  hi SpellRare   guisp=#ffffff gui=undercurl
endif
hi Statement       guifg=#0000FF 
hi htmlStatement   guifg=#99b5d9
hi StatusLine      guifg=#E0E0E0 guibg=#707070 gui=bold
hi StatusLineNC    guifg=#E0E0E0 guibg=#909090
hi StorageClass    guifg=#fd971f               
hi Structure       guifg=darkblue
hi Tag             guifg=#f92672               
hi Title           guifg=#202020
hi Todo            guifg=#FF0000               gui=UNDERLINE

hi Typedef         guifg=#66d9ef
hi Type            guifg=#0000FF               gui=none
hi Underlined      guifg=#808080               gui=underline

hi VertSplit       guifg=#909090 guibg=#909090 gui=bold
hi VisualNOS                     guibg=#403d3d
hi Visual          guifg=#FFFFFF guibg=#000080
hi WarningMsg      guifg=#888A85 gui=bold
hi WildMenu        guifg=#66d9ef guibg=#000000

hi Normal          guifg=#000000 guibg=#D4D0C0
hi Comment         guifg=#008000
hi CursorLine                    guibg=#c0d990
hi CursorColumn                  guibg=#293739
hi LineNr          guifg=#707070
hi NonText         guifg=#000000 guibg=Gray

hi LongLineWarning guifg=#960050 guibg=#1e0010 gui=underline

"
" Support for 256-color terminal
"
if &t_Co > 255
  highlight Boolean         cterm=bold                    ctermfg=141
  highlight Character                                     ctermfg=185
  highlight Number                                        ctermfg=141
  highlight String                                        ctermfg=220
  highlight Conditional     cterm=bold                    ctermfg=68
  highlight Constant        cterm=bold                    ctermfg=148
  highlight Cursor                          ctermbg=231   ctermfg=16
  highlight Debug           cterm=bold                    ctermfg=250
  highlight Define                                        ctermfg=81
  highlight Delimiter                                     ctermfg=245
  highlight DiffAdd                         ctermbg=236
  highlight DiffChange                      ctermbg=238   ctermfg=244
  highlight DiffDelete                      ctermbg=232   ctermfg=89
  highlight DiffText        cterm=bold      ctermbg=238

  highlight Directory       cterm=bold                    ctermfg=112
  highlight Error                           ctermbg=232   ctermfg=89
  highlight ErrorMsg        cterm=bold      ctermbg=235   ctermfg=161
  highlight Exception       cterm=bold                    ctermfg=112
  highlight Float                                         ctermfg=141
  highlight FoldColumn                      ctermbg=16    ctermfg=239
  highlight Folded                          ctermbg=16    ctermfg=239
  highlight Function                                      ctermfg=154
  highlight Identifier                                    ctermfg=172
  highlight Ignore                                        ctermfg=244
  highlight IncSearch                       ctermbg=16    ctermfg=144

  highlight Keyword         cterm=bold                    ctermfg=161
  highlight Label           cterm=none                    ctermfg=185
  highlight Macro                                         ctermfg=144
  highlight SpecialKey                                    ctermfg=148

  highlight MatchParen      cterm=bold      ctermbg=208   ctermfg=16

  highlight ModeMsg                                       ctermfg=185
  highlight MoreMsg                                       ctermfg=185
  highlight Operator        cterm=bold                    ctermfg=68

  " complete menu
  highlight Pmenu                           ctermbg=16    ctermfg=81
  highlight PmenuSel                        ctermbg=244
  highlight PmenuSbar                       ctermbg=232
  highlight PmenuThumb                                    ctermfg=81

  highlight PreCondit       cterm=bold                    ctermfg=112
  highlight PreProc                                       ctermfg=112
  highlight Question                                      ctermfg=81
  highlight Repeat          cterm=bold                    ctermfg=161
  highlight Search                          ctermbg=32    ctermfg=231
  " marks column
  highlight SignColumn                      ctermbg=235   ctermfg=112
  highlight SpecialChar     cterm=bold                    ctermfg=161
  highlight SpecialComment  cterm=bold                    ctermfg=239
  highlight Special                                       ctermfg=81
  highlight SpecialKey                                    ctermfg=245

  if has("spell")
    highlight SpellBad      cterm=bold                    ctermbg=240
    highlight SpellCap      cterm=underline
    highlight SpellLocal    cterm=underline
    highlight SpellRare     cterm=underline
  endif

  highlight Statement       cterm=bold                    ctermfg=68
  highlight htmlStatement                                 ctermfg=110
  highlight StatusLine                                    ctermfg=240
  highlight StatusLineNC                    ctermbg=232   ctermfg=244
  highlight StorageClass                                  ctermfg=208
  highlight Structure       cterm=bold                    ctermfg=81
  highlight Tag                                           ctermfg=161
  highlight Title                                         ctermfg=209
  highlight Todo            cterm=bold      ctermbg=235   ctermfg=231

  highlight Typedef                                       ctermfg=81
  highlight Type            cterm=none                    ctermfg=81
  highlight Underlined      cterm=underline               ctermfg=244

  highlight VertSplit       cterm=bold      ctermbg=232   ctermfg=244
  highlight VisualNOS                       ctermbg=237
  highlight Visual                          ctermbg=237
  highlight WarningMsg      cterm=bold      ctermbg=236   ctermfg=231
  highlight WildMenu                        ctermbg=16    ctermfg=81

  highlight Normal                          ctermbg=235   ctermfg=231
  highlight Comment                                       ctermfg=248
  highlight CursorLine      cterm=none      ctermbg=237
  highlight CursorColumn                    ctermbg=237
  highlight LineNr                          ctermbg=237   ctermfg=252
  highlight NonText                         ctermbg=237   ctermfg=235

  highlight LongLineWarning cterm=underline ctermbg=53    ctermfg=1
end
