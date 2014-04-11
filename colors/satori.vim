" Vim color file
" Maintainer: Ruda Moura <ruda.moura@gmail.com>
" Last Change: Tue Mar 25 19:26:02 BRT 2014

highlight clear Normal
set background&

highlight clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "satori"

" Vim colors
highlight Normal     ctermfg=NONE     ctermbg=NONE cterm=NONE
highlight Comment    ctermfg=DarkCyan ctermbg=NONE cterm=NONE
highlight Constant   ctermfg=Red      ctermbg=NONE cterm=NONE
highlight Number     ctermfg=Red      ctermbg=NONE cterm=NONE
highlight Identifier ctermfg=Blue     ctermbg=NONE cterm=NONE
highlight Statement  ctermfg=NONE     ctermbg=NONE cterm=Bold
highlight PreProc    ctermfg=NONE     ctermbg=NONE cterm=Bold
highlight Type       ctermfg=Magenta  ctermbg=NONE cterm=NONE
highlight Special    ctermfg=Red      ctermbg=NONE cterm=Bold
highlight Search     ctermfg=NONE     ctermbg=NONE cterm=Underline
highlight MatchParen ctermfg=NONE     ctermbg=NONE cterm=Inverse
highlight Error      ctermfg=Red      ctermbg=NONE cterm=Standout
highlight Todo       ctermfg=DarkCyan ctermbg=NONE cterm=Inverse

" Vim monochrome
highlight Normal     term=NONE
highlight Comment    term=NONE
highlight Constant   term=NONE
highlight Number     term=NONE
highlight Identifier term=NONE
highlight Statement  term=Bold
highlight PreProc    term=Bold
highlight Type       term=Bold
highlight Special    term=NONE
highlight Search     term=Underline
highlight MatchParen term=Inverse

" GVim colors
highlight Normal     guifg=NONE     guibg=NONE gui=NONE
highlight Comment    guifg=DarkCyan guibg=NONE gui=NONE
highlight Constant   guifg=Red      guibg=NONE gui=NONE
highlight Number     guifg=Red      guibg=NONE gui=Bold
highlight Identifier guifg=blue     guibg=NONE gui=NONE
highlight Statement  guifg=NONE     guibg=NONE gui=Bold
highlight PreProc    guifg=Blue     guibg=NONE gui=NONE
highlight Type       guifg=Magenta  guibg=NONE gui=NONE
highlight Special    guifg=Red      guibg=NONE gui=Bold
highlight Search     guifg=NONE     guibg=NONE gui=Underline
highlight MatchParen guifg=NONE     guibg=NONE gui=Bold
highlight Error      guifg=Red      guibg=NONE gui=Standout
highlight Todo       guifg=DarkCyan guibg=NONE gui=Inverse

" vim: tabstop=8 expandtab shiftwidth=2 softtabstop=2
