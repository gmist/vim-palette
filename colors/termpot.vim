" Vim color file
" File:         termpot.vim
" Maintainer:   Peter Hofmann
" Version:      1.2
" Last Change:  2013-07-14
" Contributors: Anyone who contributed to the original "inkpot" scheme.

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "termpot"

hi  Normal          cterm=NONE  ctermfg=229  ctermbg=232
hi  IncSearch       cterm=BOLD  ctermfg=232  ctermbg=226
hi  Search          cterm=NONE  ctermfg=232  ctermbg=33
hi  ErrorMsg        cterm=BOLD  ctermfg=231  ctermbg=196
hi  WarningMsg      cterm=BOLD  ctermfg=231  ctermbg=202
hi  ModeMsg         cterm=BOLD  ctermfg=63
hi  MoreMsg         cterm=BOLD  ctermfg=63
hi  Question        cterm=BOLD  ctermfg=214
hi  StatusLine      cterm=BOLD  ctermfg=244  ctermbg=235
hi  StatusLineNC    cterm=NONE  ctermfg=244  ctermbg=235
hi  VertSplit       cterm=NONE  ctermfg=235  ctermbg=235
hi  WildMenu        cterm=BOLD  ctermfg=214  ctermbg=232

hi  DiffText        cterm=NONE  ctermfg=229  ctermbg=34
hi  DiffChange      cterm=NONE  ctermfg=229  ctermbg=27
hi  DiffDelete      cterm=NONE  ctermfg=229  ctermbg=124
hi  DiffAdd         cterm=NONE  ctermfg=229  ctermbg=34

hi  Folded          cterm=BOLD  ctermfg=130  ctermbg=233
hi  FoldColumn      cterm=NONE  ctermfg=61   ctermbg=232

hi  Directory       cterm=NONE  ctermfg=47   ctermbg=NONE
hi  LineNr          cterm=BOLD  ctermfg=237  ctermbg=233
hi  NonText         cterm=NONE  ctermfg=52   ctermbg=16
hi  SpecialKey      cterm=NONE  ctermfg=52   ctermbg=NONE
hi  Title           cterm=BOLD  ctermfg=130  ctermbg=232
hi  Visual          cterm=NONE  ctermfg=232  ctermbg=215

hi  TabLine         cterm=NONE  ctermfg=237  ctermbg=233
hi  TabLineSel      cterm=BOLD  ctermfg=7    ctermbg=235
hi  TabLineFill     cterm=NONE  ctermfg=229  ctermbg=245

hi  Comment         cterm=NONE  ctermfg=130  ctermbg=NONE
hi  Constant        cterm=NONE  ctermfg=215  ctermbg=NONE
hi  String          cterm=NONE  ctermfg=215  ctermbg=237
hi  Error           cterm=NONE  ctermfg=231  ctermbg=196
hi  Identifier      cterm=NONE  ctermfg=207  ctermbg=NONE
hi  Ignore          cterm=NONE  ctermfg=61   ctermbg=NONE
hi  Number          cterm=NONE  ctermfg=25   ctermbg=NONE
hi  PreProc         cterm=NONE  ctermfg=10   ctermbg=NONE
hi  Special         cterm=NONE  ctermfg=63   ctermbg=NONE
hi  Statement       cterm=NONE  ctermfg=37   ctermbg=NONE
hi  Todo            cterm=BOLD  ctermfg=237  ctermbg=63
hi  Type            cterm=NONE  ctermfg=207  ctermbg=NONE
hi  Underlined      cterm=BOLD  ctermfg=229  ctermbg=NONE
hi  TaglistTagName  cterm=BOLD  ctermfg=37   ctermbg=NONE

hi  CursorLineNr    ctermfg=11  ctermbg=233
hi  CursorLine      cterm=NONE

hi  ColorColumn     ctermbg=233
