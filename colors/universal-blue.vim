" Vim color file
" Maintainer:	Aldis Berjoza << graudeejs at gmail dot com >>
" Last Change:	2011.11.09
" Version:	1.4.1
" Homepage:	https://github.com/graudeejs/dot.vim/blob/master/colors/universal-blue.vim
"
" Based on borland.vim theme (http://www.vim.org/scripts/script.php?script_id=92) by Yegappan Lakshmanan
" Heavily modified.
"
" The purpose of this theme is to be usable not only in gvim, but to be also
" usable in in virtual terminal emulator and console
" For this reason this theme is tested in gvim, urxvt and FreeBSD console
"
" For virtual terminals I use these colors in .Xdefaults:
"	URxvt.color0:  #000000
"	URxvt.color8:  #606060
"	URxvt.color1:  #800000
"	URxvt.color9:  #FF0000
"	URxvt.color2:  #00800a
"	URxvt.color10: #00FF00
"	URxvt.color3:  #E7811B
"	URxvt.color11: #FFFF00
"	URxvt.color4:  #000060
"	URxvt.color12: #5050FF
"	URxvt.color5:  #800080
"	URxvt.color13: #FF00FF
"	URxvt.color6:  #008080
"	URxvt.color14: #00FFFF
"	URxvt.color7:  #909090
"	URxvt.color15: #FFFFFF
"
"	URxvt.background:       #000000
"	URxvt.foreground:       #FFFFFF
"	URxvt.underlineColor:   #5070ff
"	URxvt.cursorColor:      #ffffff
"
" Also I set LSCOLORS=DxGxGxCxBxexcxbxbxFxFb
"

hi clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name="universal-blue"

hi Comment	cterm=None	ctermfg=Gray		ctermbg=DarkBlue
hi Constant	cterm=None	ctermfg=Cyan		ctermbg=DarkBlue
hi Cursor	cterm=None	ctermfg=Black		ctermbg=Green
hi Directory	cterm=None	ctermfg=Green		ctermbg=DarkBlue
hi Error	cterm=None	ctermfg=White		ctermbg=Red
hi FoldColumn	cterm=None	ctermfg=Cyan		ctermbg=Black
hi Folded	cterm=None	ctermfg=DarkCyan	ctermbg=DarkBlue
hi Identifier	cterm=None	ctermfg=White		ctermbg=DarkBlue
hi LineNr	cterm=None	ctermfg=Gray		ctermbg=Black
hi ModeMsg	cterm=None	ctermfg=Gray		ctermbg=Black
hi MoreMsg	cterm=None	ctermfg=Gray		ctermbg=Black
hi Normal	cterm=None	ctermfg=Yellow		ctermbg=DarkBlue
hi PreProc	cterm=None	ctermfg=Green		ctermbg=DarkBlue
hi Search	cterm=None	ctermfg=Black		ctermbg=Red
hi Special	cterm=None	ctermfg=Magenta		ctermbg=DarkBlue
hi NonText	cterm=None	ctermfg=Red		ctermbg=Black
hi SpecialKey	cterm=None	ctermfg=Cyan		ctermbg=Black
hi SpellBad	cterm=None	ctermfg=Yellow		ctermbg=DarkGreen
hi Statement	cterm=None	ctermfg=White		ctermbg=DarkBlue
hi StatusLine	cterm=Bold	ctermfg=Yellow		ctermbg=DarkMagenta
hi StatusLineNC	cterm=Bold	ctermfg=Yellow		ctermbg=Blue
hi TabLine	cterm=None	ctermfg=White		ctermbg=Blue
hi TabLineFill	cterm=Bold	ctermfg=Gray		ctermbg=Black
hi TabLineSel	cterm=Bold	ctermfg=Yellow		ctermbg=DarkMagenta
hi Type		cterm=None	ctermfg=White		ctermbg=DarkBlue
hi VertSplit	cterm=Bold	ctermfg=White		ctermbg=Blue
hi Visual	cterm=None	ctermfg=Yellow		ctermbg=DarkCyan
hi WarningMsg	cterm=None	ctermfg=DarkBlue	ctermbg=Yellow
hi DiffAdd	cterm=Bold	ctermfg=Yellow		ctermbg=DarkMagenta
hi DiffDelete	cterm=None	ctermfg=Red		ctermbg=Black
hi DiffChange	cterm=None	ctermfg=White		ctermbg=DarkMagenta
hi DiffText	cterm=Bold	ctermfg=Yellow		ctermbg=Magenta

hi Comment	gui=None	guifg=Gray		guibg=#000060
hi Constant	gui=None	guifg=Cyan		guibg=#000060
hi Cursor	gui=None	guifg=Black		guibg=Green
hi Directory	gui=None	guifg=Green		guibg=#000060
hi Error	gui=None	guifg=White		guibg=Red
hi FoldColumn	gui=None	guifg=Cyan		guibg=Black
hi Folded	gui=None	guifg=DarkCyan		guibg=#000060
hi Identifier	gui=None	guifg=White		guibg=#000060
hi DiffAdd	gui=Bold	guifg=Yellow		guibg=DarkMagenta
hi DiffChange	gui=None	guifg=White		guibg=DarkMagenta
hi DiffDelete	gui=None	guifg=Red		guibg=Black
hi DiffText	gui=Bold	guifg=Yellow		guibg=Magenta
hi LineNr	gui=None	guifg=Gray		guibg=Black
hi ModeMsg	gui=None	guifg=Gray		guibg=Black
hi MoreMsg	gui=None	guifg=Gray		guibg=Black
hi NonText	gui=None	guifg=Red		guibg=Black
hi Normal	gui=None	guifg=Yellow		guibg=#000060
hi PreProc	gui=None	guifg=Green		guibg=#000060
hi Search	gui=None	guifg=Black		guibg=Red
hi Special	gui=None	guifg=Magenta		guibg=#000060
hi SpecialKey	gui=None	guifg=Cyan		guibg=Black
hi SpellBad	gui=None	guifg=Yellow		guibg=DarkGreen
hi Statement	gui=None	guifg=White		guibg=#000060
hi StatusLine	gui=Bold	guifg=Yellow		guibg=DarkMagenta
hi StatusLineNC	gui=Bold	guifg=Yellow		guibg=#5050FF
hi TabLine	gui=None	guifg=White		guibg=#5050FF
hi TabLineFill	gui=Bold	guifg=Gray		guibg=Black
hi TabLineSel	gui=Bold	guifg=Yellow		guibg=DarkMagenta
hi Type		gui=None	guifg=White		guibg=#000060
hi VertSplit	gui=Bold	guifg=White		guibg=#5050FF
hi Visual	gui=None	guifg=Yellow		guibg=DarkCyan
hi WarningMsg	gui=None	guifg=#000060		guibg=Yellow

" For EasyTags plugin
" http://www.vim.org/scripts/script.php?script_id=3114
hi awkFunctionTag	cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi cEnumTag		cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi cFunctionTag		cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi cMemberTag		cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi cPreProcTag		cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi cTypeTag		cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi csClassOrStructTag	cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi csMethodTag		cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi javaClassTag		cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi javaMethodTag	cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi luaFuncTag		cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi phpClassesTag	cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi phpFunctionsTag	cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi pythonClassTag	cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi pythonFunctionTag	cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi pythonMethodTag	cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi rubyClassNameTag	cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi rubyMethodNameTag	cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi rubyModuleNameTag	cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi shFunctionTag	cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi tclCommandTag	cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi vimAutoGroupTag	cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi vimCommandTag	cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi vimFuncNameTag	cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue
hi vimScriptFuncNameTag	cterm=None	ctermfg=DarkYellow	ctermbg=DarkBlue

hi awkFunctionTag	gui=None	guifg=#E7811B	guibg=#000060
hi cEnumTag		gui=None	guifg=#E7811B	guibg=#000060
hi cFunctionTag		gui=None	guifg=#E7811B	guibg=#000060
hi cMemberTag		gui=None	guifg=#E7811B	guibg=#000060
hi cPreProcTag		gui=None	guifg=#E7811B	guibg=#000060
hi cTypeTag		gui=None	guifg=#E7811B	guibg=#000060
hi csClassOrStructTag	gui=None	guifg=#E7811B	guibg=#000060
hi csMethodTag		gui=None	guifg=#E7811B	guibg=#000060
hi javaClassTag		gui=None	guifg=#E7811B	guibg=#000060
hi javaMethodTag	gui=None	guifg=#E7811B	guibg=#000060
hi luaFuncTag		gui=None	guifg=#E7811B	guibg=#000060
hi phpClassesTag	gui=None	guifg=#E7811B	guibg=#000060
hi phpFunctionsTag	gui=None	guifg=#E7811B	guibg=#000060
hi pythonClassTag	gui=None	guifg=#E7811B	guibg=#000060
hi pythonFunctionTag	gui=None	guifg=#E7811B	guibg=#000060
hi pythonMethodTag	gui=None	guifg=#E7811B	guibg=#000060
hi rubyClassNameTag	gui=None	guifg=#E7811B	guibg=#000060
hi rubyMethodNameTag	gui=None	guifg=#E7811B	guibg=#000060
hi rubyModuleNameTag	gui=None	guifg=#E7811B	guibg=#000060
hi shFunctionTag	gui=None	guifg=#E7811B	guibg=#000060
hi tclCommandTag	gui=None	guifg=#E7811B	guibg=#000060
hi vimAutoGroupTag	gui=None	guifg=#E7811B	guibg=#000060
hi vimCommandTag	gui=None	guifg=#E7811B	guibg=#000060
hi vimFuncNameTag	gui=None	guifg=#E7811B	guibg=#000060
hi vimScriptFuncNameTag	gui=None	guifg=#E7811B	guibg=#000060

" For statline https://github.com/millermedeiros/vim-statline
hi User1	cterm=Bold	ctermbg=DarkMagenta	ctermfg=White
hi User2	cterm=Bold	ctermbg=DarkMagenta	ctermfg=Yellow
hi User3	cterm=Bold	ctermbg=Red		ctermfg=Yellow
hi User4	cterm=Bold	ctermbg=DarkMagenta	ctermfg=Gray

hi User1	gui=Bold	guibg=DarkMagenta	guifg=White
hi User2	gui=Bold	guibg=DarkMagenta	guifg=Yellow
hi User3	gui=Bold	guibg=Red		guifg=Yellow
hi User4	gui=Bold	guibg=DarkMagenta	guifg=Gray

" vim: set nowrap:
