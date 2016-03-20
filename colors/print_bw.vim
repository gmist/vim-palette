" A Black & White color scheme.
"
" Copyright (c) 2002-2015 Mike Williams <mrmrdubya@gmail.com>
"
" Permission to use, copy, modify, and distribute this software for any
" purpose with or without fee is hereby granted, provided that the above
" copyright notice and this permission notice appear in all copies.
"
" THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
" WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
" MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
" ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
" WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
" ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
" OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
"
" The color scheme is black on white and uses the font's italic and bold faces,
" as well as underlining and reverse, to provide the file's highlighting.
"
" The color scheme is currently targetted for printing only, not for every day
" editing in VIM.
"

" Remove all existing highlighting.
set background=light

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "print_bw"

highlight Normal        cterm=NONE ctermfg=black ctermbg=white gui=NONE guifg=black guibg=white
highlight NonText       ctermfg=black ctermbg=white guifg=black guibg=white
highlight LineNr        cterm=italic ctermfg=black ctermbg=white gui=italic guifg=black guibg=white

" Syntax highlighting scheme
highlight Comment       cterm=italic ctermfg=black ctermbg=white gui=italic guifg=black guibg=white

highlight Constant      ctermfg=black ctermbg=white guifg=black guibg=white
highlight String        ctermfg=black ctermbg=white guifg=black guibg=white
highlight Character     ctermfg=black ctermbg=white guifg=black guibg=white
highlight Number        ctermfg=black ctermbg=white guifg=black guibg=white
" Boolean defaults to Constant
highlight Float         ctermfg=black ctermbg=white guifg=black guibg=white

highlight Identifier    ctermfg=black ctermbg=white guifg=black guibg=white
highlight Function      ctermfg=black ctermbg=white guifg=black guibg=white

highlight Statement     ctermfg=black ctermbg=white guifg=black guibg=white
highlight Conditional   ctermfg=black ctermbg=white guifg=black guibg=white
highlight Repeat        ctermfg=black ctermbg=white guifg=black guibg=white
highlight Label         ctermfg=black ctermbg=white guifg=black guibg=white
highlight Operator      ctermfg=black ctermbg=white guifg=black guibg=white
" Keyword defaults to Statement
" Exception defaults to Statement

highlight PreProc       cterm=bold ctermfg=black ctermbg=white gui=bold guifg=black guibg=white
" Include defaults to PreProc
" Define defaults to PreProc
" Macro defaults to PreProc
" PreCondit defaults to PreProc

highlight Type          cterm=bold ctermfg=black ctermbg=white gui=bold guifg=black guibg=white
" StorageClass defaults to Type
" Structure defaults to Type
" Typedef defaults to Type

highlight Special       cterm=italic ctermfg=black ctermbg=white gui=italic guifg=black guibg=white
" SpecialChar defaults to Special
" Tag defaults to Special
" Delimiter defaults to Special
highlight SpecialComment cterm=italic ctermfg=black ctermbg=white gui=italic guifg=black guibg=white
" Debug defaults to Special

highlight Todo          cterm=italic,bold ctermfg=black ctermbg=white gui=italic,bold guifg=black guibg=white
" Ideally, the bg color would be white but VIM cannot print white on black!
highlight Error         cterm=bold,reverse ctermfg=black ctermbg=grey gui=bold,reverse guifg=black guibg=grey

" vim:et:ff=unix:tw=0:ts=4:sw=4
" EOF print_bw.vim
