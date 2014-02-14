" Vim color file
" Name: Vim-online
" Author: Dee Sub Wun


set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "vim-online"


""""""
" SYNTAX HIGHLIGHTING
""""""""""""""""""""""""
hi Constant         gui=NONE         	  guifg=#008200         guibg=NONE
hi String           gui=NONE              guifg=#008200         guibg=NONE
hi Character        gui=NONE	          guifg=#008200         guibg=NONE
hi Number           gui=NONE    	      guifg=#008200         guibg=NONE
hi Boolean          gui=NONE        	  guifg=#008200         guibg=NONE
hi Float            gui=NONE           	  guifg=#008200         guibg=NONE
hi Comment          gui=NONE	          guifg=#A52A2A         guibg=NONE

hi Identifier       gui=NONE              guifg=#0100EE	        guibg=NONE
hi Function         gui=bold              guifg=#0100EE 		guibg=NONE

hi Statement        gui=bold              guifg=#008200         guibg=NONE
hi Conditional      gui=bold              guifg=#008200         guibg=NONE
hi Repeat           gui=bold              guifg=#008200         guibg=NONE
hi Label            gui=bold              guifg=#008200         guibg=NONE
hi Operator         gui=NONE              guifg=#008200         guibg=NONE
hi Keyword          gui=bold              guifg=#008200         guibg=NONE
hi Exception        gui=NONE              guifg=#CD20F0         guibg=NONE

hi PreProc          gui=NONE              guifg=#CD20F0         guibg=NONE
hi Include          gui=NONE              guifg=#CD20F0         guibg=NONE
hi Define           gui=NONE              guifg=#CD20F0         guibg=NONE
hi Macro            gui=NONE              guifg=#CD20F0         guibg=NONE
hi PreCondit        gui=NONE              guifg=#CD20F0         guibg=NONE

hi Type             gui=NONE              guifg=#008200         guibg=NONE
hi StorageClass     gui=NONE              guifg=#008200         guibg=NONE
hi Structure        gui=NONE              guifg=#008200         guibg=NONE
hi Typedef          gui=NONE              guifg=#008200         guibg=NONE

hi Special          gui=NONE              guifg=#806712         guibg=NONE
hi SpecialChar      gui=NONE              guifg=#806712         guibg=NONE
hi Tag              gui=NONE              guifg=#008200         guibg=NONE
hi Delimiter        gui=NONE              guifg=#FFFFFF         guibg=NONE
hi SpecialComment   gui=NONE              guifg=#FFFFFF         guibg=NONE
hi Debug            gui=NONE              guifg=#FFFFFF         guibg=NONE

hi xmlTagName       gui=NONE			  guifg=#008200			guibg=NONE
hi xmlCdata         gui=NONE			  guifg=#819669			guibg=NONE
hi xmlAttrib        gui=NONE			  guifg=#008200			guibg=NONE
hi htmlTagName      gui=NONE			  guifg=#CD20F0			guibg=NONE
hi htmlArg          gui=NONE			  guifg=#0000FF			guibg=NONE
hi htmlTag          gui=NONE			  guifg=#0000FF			guibg=NONE
hi htmlItalic		gui=italic			  guifg=NONE			guibg=NONE
hi htmlBold			gui=bold			  guifg=NONE			guibg=NONE

hi Underlined       gui=underline         guifg=#639963         guibg=NONE

hi Ignore           gui=NONE              guifg=#FFFFFF         guibg=NONE

hi Error            gui=bold              guifg=#FFFFFF         guibg=#FF0000

hi Todo             gui=bold              guifg=#FFFF00         guibg=NONE

hi SignColumn		gui=NONE              guifg=#005900         guibg=#BEC3BE


""""""
" INTERFACE
""""""""""""""""""""""""
hi Cursor           gui=NONE              guifg=#FFFFFF         guibg=#FF0000
hi CursorLine       gui=NONE			  guifg=NONE			guibg=#D9D9C8
hi CursorColumn     gui=NONE			  guifg=NONE			guibg=#D9D9C8
hi Directory        gui=NONE              guifg=#008200         guibg=NONE
hi ErrorMsg         gui=bold              guifg=#FFFFFF         guibg=#FF0000
hi LineNr           gui=italic            guifg=#000000         guibg=NONE
hi MatchParen       gui=bold              guifg=#000000         guibg=#00FF00
hi ModeMsg          gui=NONE              guifg=#000000         guibg=NONE
hi MoreMsg          gui=NONE              guifg=#007F00         guibg=NONE
hi NonText          gui=bold              guifg=#505050         guibg=NONE
hi Normal           gui=NONE              guifg=#4D504D         guibg=#CCCC99
hi Question         gui=NONE              guifg=#000000         guibg=NONE
hi SpecialKey       gui=NONE              guifg=#000000         guibg=NONE
hi Title            gui=NONE              guifg=#0100EE         guibg=NONE
hi VertSplit        gui=NONE	          guifg=#007F00	        guibg=#007F00
hi WarningMsg       gui=NONE              guifg=#FF5600         guibg=NONE
hi WildMenu         gui=NONE              guifg=#FFFFFF         guibg=#3A3A3F


""""""
" TABS
""""""""""""""""""""""""
hi TabLine          gui=italic,reverse    guifg=#007F00	        guibg=#CCCC99
hi TabLineFill      gui=reverse      	  guifg=#007F00	        guibg=#CCCC99
hi TabLineSel       gui=bold,reverse      guifg=#007F00	        guibg=#FFFFFF


""""""
" STATUS
""""""""""""""""""""""""
hi StatusLine       gui=bold		      guifg=#FFFFFF         guibg=#007F00
hi StatusLineNC     gui=italic		 	  guifg=#CCCC99	        guibg=#007F00


""""""
" COMPLETION
""""""""""""""""""""""""
hi Pmenu            gui=NONE              guifg=#1A1D1A 		guibg=#E6E6D4
hi PmenuSel         gui=NONE              guifg=#FFFFFF         guibg=#007F00
hi PmenuSbar 		gui=NONE			  guifg=#FFFFFF			guibg=#0100EE
hi PmenuThumb 		gui=NONE			  guifg=NONE		  	guibg=#D9D9C8


""""""
" DIFF
""""""""""""""""""""""""
hi DiffAdd          gui=NONE              guifg=#000000         guibg=#A7CC66
hi DiffChange       gui=NONE              guifg=#000000         guibg=#D9B341
hi DiffDelete       gui=bold              guifg=#000000         guibg=#CC6B66
hi DiffText         gui=bold              guifg=#FFFF00         guibg=NONE


""""""
" FOLDING
""""""""""""""""""""""""
hi Folded           gui=NONE              guifg=#D6D6C5 		guibg=#004014
hi FoldColumn       gui=NONE              guifg=#D6D6C5         guibg=#004014


""""""
" VISUAL
""""""""""""""""""""""""
hi Visual           gui=NONE              guifg=#FFFFEB         guibg=#AFB893
hi VisualNOS        gui=NONE              guifg=#FFFFEB         guibg=#AFB893


""""""
" SEARCH
""""""""""""""""""""""""
hi IncSearch        gui=NONE              guifg=#000000          guibg=#E6E673
hi Search           gui=NONE              guifg=#000000          guibg=#E6E673




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                      NO GUI                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""
" SYNTAX HIGHLIGHTING
""""""""""""""""""""""""
hi Constant         cterm=NONE              ctermfg=darkgreen       ctermbg=NONE
hi String           cterm=NONE              ctermfg=brown        	ctermbg=NONE
hi Character        cterm=NONE              ctermfg=brown           ctermbg=NONE
hi Number           cterm=NONE              ctermfg=brown        	ctermbg=NONE
hi Boolean          cterm=NONE              ctermfg=brown        	ctermbg=NONE
hi Float            cterm=NONE              ctermfg=brown        	ctermbg=NONE
hi Comment          cterm=NONE              ctermfg=darkred         ctermbg=NONE

hi Identifier       cterm=NONE              ctermfg=grey            ctermbg=NONE
hi Function         cterm=NONE              ctermfg=white           ctermbg=NONE

hi Statement        cterm=NONE              ctermfg=lightblue     	ctermbg=NONE
hi Conditional      cterm=NONE              ctermfg=lightblue     	ctermbg=NONE
hi Repeat           cterm=NONE              ctermfg=lightblue     	ctermbg=NONE
hi Label            cterm=NONE              ctermfg=lightblue      	ctermbg=NONE
hi Operator         cterm=NONE              ctermfg=grey            ctermbg=NONE
hi Keyword          cterm=NONE              ctermfg=lightblue       ctermbg=NONE
hi Exception        cterm=NONE              ctermfg=darkmagenta     ctermbg=NONE

hi PreProc          cterm=NONE              ctermfg=darkmagenta     ctermbg=NONE
hi Include          cterm=NONE              ctermfg=darkmagenta     ctermbg=NONE
hi Define           cterm=NONE              ctermfg=darkmagenta     ctermbg=NONE
hi Macro            cterm=NONE              ctermfg=darkmagenta     ctermbg=NONE
hi PreCondit        cterm=NONE              ctermfg=darkmagenta     ctermbg=NONE

hi Type             cterm=NONE              ctermfg=green   	    ctermbg=NONE
hi StorageClass     cterm=NONE              ctermfg=green       	ctermbg=NONE
hi Structure        cterm=NONE              ctermfg=green       	ctermbg=NONE
hi Typedef          cterm=NONE              ctermfg=green       	ctermbg=NONE

hi Special          cterm=NONE              ctermfg=grey            ctermbg=NONE
hi SpecialChar      cterm=NONE              ctermfg=darkcyan         ctermbg=NONE
hi Tag              cterm=NONE              ctermfg=darkcyan        ctermbg=NONE
hi Delimiter        cterm=NONE              ctermfg=darkcyan        ctermbg=NONE
hi SpecialComment   cterm=NONE              ctermfg=darkcyan        ctermbg=NONE
hi Debug            cterm=NONE              ctermfg=darkcyan        ctermbg=NONE

hi xmlTagName       cterm=NONE			    ctermfg=lightblue		ctermbg=NONE
hi xmlCdata         cterm=NONE			    ctermfg=lightblue		ctermbg=NONE
hi xmlAttrib        cterm=NONE			    ctermfg=lightblue		ctermbg=NONE
hi htmlTagName      cterm=NONE			    ctermfg=lightblue		ctermbg=NONE
hi htmlArg          cterm=NONE			    ctermfg=lightblue		ctermbg=NONE
hi htmlItalic		cterm=NONE			  	ctermfg=NONE			ctermbg=NONE

hi Underlined       cterm=underline         ctermfg=grey            ctermbg=NONE

hi Ignore           cterm=NONE              ctermfg=darkgrey        ctermbg=NONE

hi Error            cterm=NONE              ctermfg=white           ctermbg=darkred

hi Todo             cterm=NONE              ctermfg=grey            ctermbg=darkgreen


""""""
" INTERFACE
""""""""""""""""""""""""
hi Cursor           cterm=NONE              ctermfg=grey            ctermbg=red
hi Directory        cterm=NONE              ctermfg=lightblue       ctermbg=NONE
hi ErrorMsg         cterm=NONE              ctermfg=white           ctermbg=darkred
hi LineNr           cterm=NONE              ctermfg=darkgreen       ctermbg=NONE
hi MatchParen       cterm=NONE              ctermfg=black           ctermbg=green
hi ModeMsg          cterm=NONE              ctermfg=lightblue       ctermbg=NONE
hi MoreMsg          cterm=NONE              ctermfg=darkgreen       ctermbg=NONE
hi NonText          cterm=NONE              ctermfg=blue            ctermbg=NONE
hi Normal			cterm=NONE				ctermfg=grey			ctermbg=NONE
hi Question         cterm=NONE              ctermfg=green           ctermbg=NONE
hi SpecialKey       cterm=NONE              ctermfg=darkgreen       ctermbg=NONE
hi Title            cterm=NONE              ctermfg=white		    ctermbg=NONE
hi VertSplit        cterm=NONE			    ctermfg=darkblue        ctermbg=black
hi WarningMsg       cterm=NONE              ctermfg=white           ctermbg=darkred
hi WildMenu         cterm=NONE              ctermfg=white           ctermbg=lightblue


""""""
" TABS
""""""""""""""""""""""""
hi TabLine          cterm=bold,reverse      ctermfg=black          ctermbg=blue
hi TabLineFill      cterm=bold,reverse      ctermfg=black          ctermbg=grey
hi TabLineSel       cterm=bold,reverse      ctermfg=darkblue       ctermbg=white


""""""
" COMPLETION
""""""""""""""""""""""""
hi Pmenu            cterm=reverse	        ctermfg=black           ctermbg=grey
hi PmenuSel         cterm=bold              ctermfg=white           ctermbg=lightblue


""""""
" STATUS
""""""""""""""""""""""""
hi StatusLine       cterm=bold,reverse      ctermfg=darkblue        ctermbg=grey
hi StatusLineNC     cterm=bold,reverse      ctermfg=black           ctermbg=blue


""""""
" DIFF
""""""""""""""""""""""""
hi DiffAdd          cterm=NONE              ctermfg=grey 	        ctermbg=green
hi DiffChange       cterm=NONE              ctermfg=black           ctermbg=brown
hi DiffDelete       cterm=NONE              ctermfg=grey	        ctermbg=red
hi DiffText         cterm=NONE              ctermfg=red 	        ctermbg=brown


""""""
" VISUAL
""""""""""""""""""""""""
hi Visual           cterm=NONE              ctermfg=grey        	ctermbg=lightblue
hi VisualNOS        cterm=bold,underline    ctermfg=NONE            ctermbg=NONE


""""""
" FOLDING
""""""""""""""""""""""""
hi Folded           cterm=NONE              ctermfg=green   	    ctermbg=NONE
hi FoldColumn       cterm=NONE              ctermfg=green       	ctermbg=NONE


""""""
" SEARCH
""""""""""""""""""""""""
hi IncSearch        cterm=NONE              ctermfg=grey            ctermbg=green
hi Search           cterm=NONE              ctermfg=grey            ctermbg=green


"vim: sw=4

