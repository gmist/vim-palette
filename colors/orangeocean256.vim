" Vim color file
" vim:sw=4:ts=4:noet:
" Maintainer: Takahiro SUZUKI <takahiro.suzuki.ja@gmail.com>
" Last Change: 2009 06 18

" orangeocean256 - blue background and shiny orange & yellow based foreground

set bg=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "orangeocean256"

hi Normal		ctermfg=15 ctermbg=17
hi ErrorMsg		ctermfg=213 ctermbg=160
hi Visual		ctermfg=fg ctermbg=0 cterm=reverse
hi VisualNOS	ctermfg=fg ctermbg=0 cterm=reverse
hi LineNr		ctermfg=255 ctermbg=208
hi NonText		ctermfg=104 ctermbg=18

hi ModeMsg		ctermfg=111
hi MoreMsg		ctermfg=152
hi WarningMsg	ctermfg=red

hi Pmenu		ctermfg=156 ctermbg=27
hi PmenuSel		ctermfg=232 ctermbg=208 cterm=bold
hi PmenuSbar	ctermfg=207 ctermbg=208
hi PmenuThumb	ctermfg=226

hi SpecialKey	ctermfg=24
hi Title		ctermfg=magenta cterm=bold
hi WildMenu		ctermfg=0 ctermbg=191 cterm=none
hi Question		ctermfg=green cterm=none
hi Directory	ctermfg=103

hi Cursor		ctermfg=black ctermbg=28
hi CursorIM		ctermfg=black ctermbg=30
hi lCursor		ctermfg=black ctermbg=white
hi CursorLine	cterm=none ctermbg=18
hi CursorColumn	cterm=none ctermbg=18

hi Todo			ctermfg=15 ctermbg=52
hi Error		ctermfg=15 ctermbg=201
hi Search		ctermfg=0 ctermbg=226 cterm=bold

hi DiffAdd		ctermfg=0 ctermbg=228 cterm=none
hi DiffDelete	ctermfg=243 ctermbg=233 cterm=none
hi DiffChange	ctermfg=15 ctermbg=33 cterm=none
hi DiffText		ctermfg=15 ctermbg=22 cterm=bold

hi StatusLine	ctermfg=0 ctermbg=226 term=none cterm=none
hi StatusLineNC	ctermfg=232 ctermbg=215 term=none cterm=none
hi VertSplit	ctermfg=166 ctermbg=0 term=none cterm=none

hi TabLine		ctermfg=233 ctermbg=75
hi TabLineFill	ctermfg=237 "fg for fill color
hi TabLineSel	ctermfg=15 ctermbg=27

hi Folded		ctermfg=233 ctermbg=195 cterm=bold term=bold
hi FoldColumn	ctermfg=251 ctermbg=0 cterm=bold term=bold

" syntax colors
hi Comment		ctermfg=255 ctermbg=27 cterm=none
" Constant
hi String		ctermfg=192 cterm=none
hi Character	ctermfg=172 cterm=none
hi Number		ctermfg=226 cterm=none
hi Boolean		ctermfg=226 cterm=none
hi Float		ctermfg=226 cterm=none
"Identifier
hi Function		ctermfg=46 cterm=none
" Statement
hi Conditional	ctermfg=154 cterm=none
hi Repeat		ctermfg=154 cterm=none
hi Label		ctermfg=154 cterm=none
hi Operator		ctermfg=15 cterm=bold
hi Keyword		ctermfg=15 cterm=none
hi Exception	ctermfg=220 cterm=none
hi Statement	ctermfg=154 cterm=none

hi PreProc		ctermfg=226 cterm=none
hi Type			ctermfg=151 cterm=none
hi Special		ctermfg=252 cterm=bold
hi Underlined	cterm=underline


