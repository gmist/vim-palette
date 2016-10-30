" ===============================================================================================
" Description:	A dark scheme of earth colours for Vim
"				inspired by Adriaen van Ostade’s “Peasants in an Interior” (1661)
"  Maintainer:	kamil.stachowski@gmail.com
"     License:	gpl 3+
"     Version:	0.1
" ===============================================================================================
" Changelog:
"	0.1:	2016.11.08
"			initial version
" ===============================================================================================


if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif


let colors_name = "dutch_peasants"
set background=dark


hi Comment		guifg=#a17751	guibg=#231818	gui=none	cterm=none			" any comment
hi Constant		guifg=#bf9464	guibg=#231818	gui=none	cterm=none			" any constant
hi Cursor										gui=inverse	cterm=inverse		" the character under the cursor
hi CursorLine					guibg=#402e2a	gui=none	cterm=none			" the screen line that the cursor is in when 'cursorline' is set
hi Error		guifg=#231818	guibg=#b83725	gui=none	cterm=none			" any erroneous construct
hi FoldColumn					guibg=#231818	gui=none	cterm=none			" 'foldcolumn'
hi Identifier	guifg=#547046	guibg=#231818	gui=none	cterm=none			" any variable name
hi Ignore		guifg=#160d0f	guibg=#231818	gui=none	cterm=none			" left blank, hidden |hl-Ignore|
hi ModeMsg		guifg=#fffdba	guibg=#231818	gui=bold	cterm=bold			" 'showmode' message (e.g., "-- INSERT --")
hi Normal		guifg=#fffdba	guibg=#231818	gui=none	cterm=none			" normal text
hi Pmenu		guifg=#fffdba	guibg=#402e2a	gui=none	cterm=none			" Popup menu: normal item.
hi PreProc		guifg=#919663	guibg=#231818	gui=none	cterm=none			" generic Preprocessor
hi Search		guifg=#b83725	guibg=bg		gui=bold	cterm=bold			" Last search pattern highlighting (see 'hlsearch'). Also used for highlighting the current line in the quickfix window and similar items that need to stand out.
hi Special		guifg=#d4bfa5	guibg=#231818	gui=none	cterm=none			" any special symbol
hi Statement	guifg=#4d6d85	guibg=#231818	gui=none	cterm=none			" any statement
hi StatusLine	guifg=#160d0f	guibg=#fffdba	gui=none	cterm=none			" status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
hi StatusLineNC	guifg=#160d0f	guibg=#4d4b50	gui=none	cterm=none			" status line of current window
hi Type			guifg=#854949	guibg=#231818	gui=none	cterm=none			" int, long, char, etc.
hi Underlined	guifg=#fffdba	guibg=#231818	gui=underline	cterm=underline	" text that stands out, HTML links
hi Visual		guifg=#231818	guibg=#6c4d3c	gui=none	cterm=none			" Visual mode selection


hi! link Boolean		Constant		" a boolean constant: TRUE, false
hi! link Character		Constant		" a character constant: 'c', '\n'
hi! link Conceal		Special			" placeholder characters substituted for concealed text (see 'conceallevel')
hi! link Conditional	Statement		" if, then, else, endif, switch, etc.
hi! link CursorColumn	CursorLine		" the screen column that the cursor is in when 'cursorcolumn' is set
hi! link CursorIM		Cursor			" like Cursor, but used when in IME mode |CursorIM|
hi! link CursorLineNr	Special			" Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
hi! link Debug			Special			" debugging statements
hi! link Define			PreProc			" preprocessor #define
hi! link Delimiter		Special			" character that needs attention
hi! link DiffAdd		Identifier		" diff mode: Added line |diff.txt|
hi! link DiffChange		Constant		" diff mode: Changed line |diff.txt|
hi! link DiffDelete		Type			" diff mode: Deleted line |diff.txt|
hi! link DiffText		Statement		" diff mode: Changed text within a changed line |diff.txt|
hi! link Directory		Type			" directory names (and other special names in listings)
hi! link EndOfBuffer	Ignore			" filler lines (~) after the last line in the buffer. By default, this is highlighted like |hl-NonText|.
hi! link ErrorMsg		Error			" error messages on the command line
hi! link Exception		Statement		" try, catch, throw
hi! link Float			Constant		" a floating point constant: 2.3e10
hi! link Folded			Comment			" line used for closed folds
hi! link Function		Identifier		" function name (also: methods for classes)
hi! link IncSearch		Search			" 'incsearch' highlighting; also used for the text replaced with ":s///c"
hi! link Include		PreProc			" preprocessor #include
hi! link Keyword		Statement		" any other keyword
hi! link Label			Statement		" case, default, etc.
hi! link LineNr			Ignore			" Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
hi! link Macro			PreProc			" same as Define
hi! link ColorColumn	CursorColumn	" (used for the columns set with 'colorcolumn)'
hi! link MatchParen		Search			" The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
hi! link MoreMsg		ModeMsg			" |more-prompt|
hi! link NonText		Ignore			" '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
hi! link Number			Constant		" a number constant: 234, 0xff
hi! link Operator		Statement		" "sizeof", "+", "*", etc.
hi! link PmenuSbar		StatusLineNC	" Popup menu: scrollbar.
hi! link PmenuSel		Visual			" Popup menu: selected item.
hi! link PmenuThumb		StatusLine		" Popup menu: Thumb of the scrollbar.
hi! link PreCondit		PreProc			" preprocessor #if, #else, #endif, etc.
hi! link Question		Normal			" |hit-enter| prompt and yes/no questions
hi! link Repeat			Statement		" for, do, while, etc.
hi! link SignColumn		FoldColumn		" column where |signs| are displayed
hi! link SpecialChar	Special			" special character in a constant
hi! link SpecialComment	Special			" special things inside a comment
hi! link SpecialKey		Ignore			" Meta and special keys listed with ":map", also for text used to show unprintable characters in the text, 'listchars'.  Generally: text that is displayed differently from what it really is.
hi! link SpellBad		Error			" Word that is not recognized by the spellchecker. |spell| This will be combined with the highlighting used otherwise.
hi! link SpellCap		SpellBad		" Word that should start with a capital. |spell| This will be combined with the highlighting used otherwise.
hi! link SpellLocal		Constant		" Word that is recognized by the spellchecker as one that is used in another region. |spell| This will be combined with the highlighting used otherwise.
hi! link SpellRare		Special			" Word that is recognized by the spellchecker as one that is hardly ever used. |spell| This will be combined with the highlighting used otherwise.
hi! link StorageClass	Type			" static, register, volatile, etc.
hi! link String			Constant		" a string constant: "this is a string"
hi! link Structure		Type			" struct, union, enum, etc.
hi! link TabLine		StatusLineNC	" tab pages line, not active tab page label
hi! link TabLineFill	StatusLineNC	" tab pages line, where there are no labels
hi! link TabLineSel		StatusLine		" tab pages line, active tab page label
hi! link Tag			Special			" you can use CTRL-] on this
hi! link Title			Statement		" titles for output from ":set all", ":autocmd" etc.
hi! link Todo			Error			" anything that needs extra attention; mostly the keywords TODO FIXME and XXX
hi! link Typedef		Type			" A typedef
hi! link VertSplit		StatusLineNC	" the column separating vertically split windows
hi! link VisualNOS		Visual			" Visual mode selection when vim is "Not Owning the Selection". Only X11 Gui's |gui-x11| and |xterm-clipboard| supports this.
hi! link WarningMsg		Statement		" warning messages
hi! link WildMenu		StatusLineNC	" current match in 'wildmenu' completion
