" Vim color file
" A copy+paste color scheme
" Designed to be used with the syntax files for KRL and Rapid
" Maintainer: Patrick Knosowski <knosowski@graeff.de>
" Version: 1.0.4
" Last Change: 09 Oct 2016
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
"colorscheme default
let g:colors_name = "tortus"

" hardcoded colors :
" GUI Comment : #80a0ff = Light blue

" GUI
highlight Normal     guifg=Grey80	guibg=Black
highlight Search     guifg=Black  guibg=Orange  gui=bold 
highlight Visual     guifg=Black guibg=DarkGrey gui=NONE
highlight Cursor     guifg=Black	guibg=Green	gui=bold
highlight Special    guifg=Orange
highlight Comment    guifg=#606080
highlight StatusLine   gui=NONE guifg=White     guibg=#204040
highlight StatusLineNC gui=NONE guifg=#666666 guibg=#102020
highlight Statement  guifg=Yellow			gui=NONE
highlight VertSplit    gui=bold guifg=Grey25    guibg=#102020
highlight FoldColumn	 gui=bold guifg=White guibg=Black
highlight Type						gui=NONE
highlight Typedef           guibg=black     guifg=#00ff8c
highlight StorageClass      guibg=Black     guifg=#a0db35
highlight Folded            guibg=black     guifg=green
highlight BuildInFunction   guibg=Black     guifg=#00d5d5
highlight Sysvars           guibg=black     guifg=white
highlight Movement          guibg=black     guifg=green
highlight Continue          guifg=#646423
highlight Operator          guibg=black     guifg=#c84600
highlight Exception         guibg=black     guifg=Orange
highlight String            guibg=#181818   guifg=lightred
highlight CursorLine guibg=#252525
highlight MatchParen guibg=purple guifg=yellow
highlight Pmenu guibg=grey20 guifg=white
highlight PmenuSel guibg=green guifg=black
highlight WildMenu guibg=cyan guifg=black

" Console
highlight Normal     ctermfg=LightGrey	ctermbg=Black
highlight Search     ctermfg=Black  ctermbg=green  cterm=NONE
highlight Visual					cterm=reverse
highlight Cursor     ctermfg=Black	ctermbg=Green	cterm=bold
highlight Special    ctermfg=DarkRed
highlight Constant                ctermbg=black   ctermfg=brown
highlight String                ctermbg=black   ctermfg=brown
highlight Operator              ctermbg=black   ctermfg=red
highlight Comment    ctermfg=darkgray
highlight StatusLine   ctermfg=black ctermbg=lightgrey cterm=NONE
highlight StatusLineNC ctermfg=lightgrey  ctermbg=darkgrey  cterm=NONE
highlight VertSplit    ctermfg=lightgrey   ctermbg=DarkGrey cterm=bold
highlight Statement  ctermfg=Yellow			cterm=NONE
highlight Exception             ctermbg=black   ctermfg=Yellow
highlight FoldColumn	ctermbg=Black		ctermfg=White cterm=bold
highlight Type            ctermfg=darkgreen   cterm=NONE
highlight Typedef         ctermfg=darkgreen   cterm=NONE
highlight StorageClass    ctermfg=darkgreen   cterm=NONE
highlight Folded                ctermbg=black   ctermfg=green
highlight Movement              ctermbg=black   ctermfg=green
highlight BuildInFunction       ctermbg=Black   ctermfg=Cyan
highlight Sysvars               ctermbg=black   ctermfg=white
highlight link Continue          Statement
highlight CursorLine ctermbg=Darkblue
highlight PreProc ctermfg=magenta
highlight Underlined ctermbg=darkmagenta ctermfg=magenta
highlight Debug ctermfg=magenta

" only for vim 5
if has("unix")
  if v:version<600
    highlight Normal  ctermfg=Grey	ctermbg=Black	cterm=NONE	guifg=Grey80      guibg=Black	gui=NONE
    highlight Search  ctermfg=Black	ctermbg=Red	cterm=bold	guifg=Black       guibg=Red	gui=bold
    highlight Visual  ctermfg=Black	ctermbg=yellow	cterm=bold	guifg=Grey25			gui=bold
    highlight Special ctermfg=LightBlue			cterm=NONE	guifg=LightBlue			gui=NONE
    highlight Comment ctermfg=Cyan			cterm=NONE	guifg=LightBlue			gui=NONE
  endif
endif


