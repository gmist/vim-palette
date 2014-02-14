" Author boolfool <boolfool@0130gmail.com>
" License: MIT license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}




let s:save_cpo = &cpo
set cpo&vim

let g:colors_name = expand('<sfile>:t:r')
set background=dark
highlight clear

" Normal "{{{
highlight Normal gui=none guifg=#f3f3f2 guibg=#0d0015
highlight Comment gui=none guifg=#7b7c7d
"}}}

" Constant "{{{
highlight Constant gui=none guifg=#87afff
highlight String gui=none guifg=#f5e56b
highlight Character gui=none guifg=#f08300
highlight Number gui=none guifg=#ec6d71
highlight Boolean guifg=#e83929
highlight Float gui=none guifg=#ec6d71
"}}}

" Identiger "{{{
highlight Identifier gui=none guifg=#a0d8ef
highlight Function gui=none guifg=#cca6bf
"}}}

" Statement "{{{
highlight Statement gui=none guifg=#bed3ca
highlight Conditional gui=none guifg=#88cb7f
highlight default link Repeat Statement
highlight default link Label Statement
highlight Operator gui=none guifg=#d6c6af
highlight default link Keyword Statement
highlight default link Exception Statement
"}}}

" Preproc "{{{
highlight PreProc gui=none guifg=#7ebea5
highlight Include gui=none guifg=#a59aca
highlight Define gui=none guifg=#5b7e91
highlight Macro gui=none guifg=#6c848d
highlight PreCondit gui=none guifg=#deb068
"}}}

" Type "{{{
highlight Type gui=none guifg=#f0908d
highlight StorageClass gui=none guifg=#ee827c
highlight Structure gui=none guifg=#f5b199
highlight Typedef gui=none guifg=#efab93
"}}}

" Special "{{{
highlight Special gui=none guifg=#f7b977
highlight SpecialChar gui=none guifg=#f7b977
highlight Tag gui=none guifg=#f7b977
highlight Delimiter gui=none guifg=#f7b977
highlight SpecialComment gui=none guifg=#bbbcde
highlight Debug gui=none guifg=#bbbcde
"}}}

" Tab, Visual, Error "{{{
highlight TabLine guifg=#dadada guibg=#595455
highlight TabLineFill guifg=#dadada guibg=#595455
highlight tablinesel guifg=#fbfaf5
highlight Visual guifg=#e0e0f0 guibg=#698aab

highlight WarningMsg gui=none guifg=#c0c0c0 guibg=#f19072
highlight Error gui=none guifg=#ffffff guibg=#ba2636 
highlight Todo gui=none guifg=#ffffff guibg=#956f29
"}}}

" StatusLine, CursorLine, Pmenu "{{{
if version >= 700
  highlight StatusLine gui=none guibg=#dddcd6 guifg=black
  highlight StatusLineNC gui=none guibg=#44617b guifg=black
  highlight Cursor gui=NONE guifg=#00ffff guibg=#006e54
  highlight CursorLine gui=none guibg=#262626
  highlight ColorColumn gui=none guibg=#4e4e4e
  highlight CursorColumn gui=none guibg=#262626
  highlight LineNr guifg=#884898 guibg=bg
  highlight CursorLineNr gui=bold guifg=#c0a2c7 guibg=#262626
  highlight MatchParen guibg=#005243

  highlight Pmenu gui=none guifg=black guibg=#dddcd6
  highlight PmenuSel gui=none guifg=#fbfaf5 guibg=#433d3c
  highlight PmenuSbar gui=none guifg=white guibg=#9d896c
  highlight PmenuThumb gui=none guifg=white guibg=#9d896c
endif
"}}}

" Fold "{{{
highlight Folded guifg=#abafb0 guibg=#203744
highlight FoldColumn guifg=#abafb0 guibg=#2b2b2b
"}}}

let &cpo = s:save_cpo
unlet s:save_cpo
