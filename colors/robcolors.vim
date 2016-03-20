set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif
let g:colors_name = "robcolors"

hi clear

highlight Normal         ctermfg=LightGrey guibg=black guifg=#AFABAF
highlight Search         ctermfg=Yellow ctermbg=Red cterm=bold guifg=Yellow guibg=Red
highlight IncSearch      ctermbg=red ctermfg=black cterm=NONE guifg=red guibg=black
highlight Visual         cterm=reverse guifg=#303030 guibg=LightGray
highlight Cursor         ctermfg=Black ctermbg=Green cterm=bold guifg=black guibg=#61FFCF
highlight Special        ctermfg=Brown guifg=#CF7520
highlight Comment        ctermfg=Blue guifg=#7A90FF guibg=black gui=NONE
highlight StatusLine     cterm=bold gui=NONE ctermfg=green ctermbg=blue guifg=green guibg=#0000AF
highlight StatusLineNC   ctermfg=black ctermbg=white cterm=NONE
highlight User1          ctermfg=grey ctermbg=blue cterm=bold
highlight VertSplit      ctermfg=gray ctermbg=blue cterm=bold
highlight Statement      ctermfg=Yellow cterm=bold gui=none guifg=Yellow
highlight vimCommand     ctermfg=Yellow ctermbg=black cterm=NONE guifg=#CF7520
highlight Type           cterm=NONE gui=NONE guifg=#00AB00
highlight Identifier     cterm=NONE ctermfg=blue
highlight NonText        guifg=#7A90FF
highlight Folded         term=standout cterm=bold ctermfg=6 ctermbg=0 guifg=Cyan guibg=black
highlight PreProc        term=underline cterm=bold ctermfg=Blue guifg=#7A90FF
highlight Todo           term=standout ctermfg=0 ctermbg=3 guifg=black guibg=#CF7520

