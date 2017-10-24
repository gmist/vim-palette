" Vim color file
" A copy+paste color scheme
" Designed to be used with the syntax files for KRL and Rapid
" Maintainer: Patrick Meiser-Knosowski <knosowski@graeff.de>
" Version: 1.0.7
" Last Change: 27 July 2017
"
" Credits: Thorsten Maerz (torte.vim vimscript #111), 
"          Sergei Matusevich (motus.vim vimscript #1393) and 
"          Robert Melton (metacosm.vim vimscript #985) 
"
" Installation: copy this file to ~/.vim/colors/ directory and add 
" "colorscheme tortus" to your ~/.vimrc file

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "tortus"

" GUI
highlight Normal     guifg=Grey80	guibg=Black
highlight Search     guifg=Black  guibg=Orange  gui=bold 
highlight Visual     guifg=Black guibg=Grey gui=NONE
highlight Cursor     guifg=Black	guibg=#00ff00	gui=bold
" highlight Special    guifg=Orange
highlight Comment    guifg=#606080
highlight StatusLine   gui=NONE guifg=White     guibg=#204040
highlight StatusLineNC gui=NONE guifg=#666666 guibg=#102020
highlight Statement  guifg=Yellow			gui=NONE
highlight VertSplit    gui=bold guifg=Grey25    guibg=#102020
highlight FoldColumn	 gui=bold guifg=White guibg=Black
highlight Type						gui=NONE
highlight Typedef           guibg=black     guifg=#00ff8c
highlight StorageClass      guibg=Black     guifg=#a0db35
highlight Folded            guibg=black     guifg=#00ff00
highlight BuildInFunction   guibg=Black     guifg=#00d5d5
highlight Sysvars           guibg=black     guifg=white
highlight Movement          guibg=black     guifg=#00ff00
highlight Continue          guifg=#646423
highlight Operator          guibg=black     guifg=#c84600
highlight Exception         guibg=black     guifg=Orange
highlight String            guibg=#181818   guifg=lightred
highlight CursorLine guibg=#252525
highlight MatchParen guibg=purple guifg=yellow
highlight Pmenu guibg=grey20 guifg=white
highlight PmenuSel guibg=#00ff00 guifg=black
highlight WildMenu guibg=cyan guifg=black
highlight Conceal guibg=#404040 guifg=orange gui=NONE

" Console
highlight Normal        ctermfg=LightGrey	ctermbg=Black  cterm=NONE
highlight Statement     ctermbg=black   ctermfg=Yellow
highlight Continue      ctermbg=black   ctermfg=Yellow
highlight Search        ctermfg=Black  ctermbg=green cterm=NONE
highlight Visual        ctermfg=Black ctermbg=Grey cterm=NONE
highlight Cursor        ctermfg=Black	ctermbg=Green
highlight Constant      ctermbg=black   ctermfg=white
highlight String        ctermbg=black   ctermfg=white
highlight Operator      ctermbg=black   ctermfg=red
highlight Special       ctermfg=DarkRed
highlight Comment       ctermfg=darkgray
highlight Todo          ctermfg=black   ctermbg=Yellow 
highlight StatusLine    ctermfg=black ctermbg=lightgrey cterm=NONE
highlight StatusLineNC  ctermfg=lightgrey  ctermbg=darkgrey  cterm=NONE
highlight VertSplit     ctermfg=lightgrey   ctermbg=DarkGrey cterm=bold
highlight Exception     ctermbg=black   ctermfg=Yellow
highlight FoldColumn	ctermbg=Black		ctermfg=White cterm=bold
highlight Type          ctermfg=darkgreen   cterm=NONE
highlight Typedef       ctermfg=darkgreen   cterm=NONE
highlight StorageClass  ctermfg=darkgreen   cterm=NONE
highlight Folded        ctermbg=black   ctermfg=green
highlight Movement      ctermbg=black   ctermfg=green
highlight BuildInFunction       ctermbg=Black   ctermfg=Cyan
highlight Sysvars       ctermbg=black   ctermfg=white
highlight CursorLine    ctermbg=black
if has("win32")
  highlight CursorLine ctermbg=Darkblue
endif
highlight PreProc ctermfg=magenta
highlight Underlined ctermfg=magenta
highlight Pmenu ctermbg=black ctermfg=white
highlight PmenuSel ctermbg=magenta ctermfg=black

" vim:sw=2 sts=2 et
