" Color scheme.  It uses the syntax color choices of torte with the specific
" colors picked from the Tango desktop project palette, and some additions to 
" make the console appear consistent with the GUI.

" A couple of colors aren't defined by Tango.  I tried to match their apparent
" theme of adding as much red as possible to everything without it sticking out
" Cyan     = #7ACCCC
" DarkCyan = #80A5A6 (not used)

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
"colorscheme default
let g:colors_name = "muzzl"

" GUI
highlight Normal       guifg=#d3d7cf guibg=#2e3436 
highlight Search       guifg=#2e3436 guibg=#cc0000 gui=bold
highlight Visual       guifg=#404040               gui=bold
highlight Cursor       guifg=#2e3436 guibg=#8ae234 gui=bold
highlight Special      guifg=#fcaf3e
highlight Comment      guifg=#729fcf
highlight StatusLine   guifg=#3465a4 guibg=#d3d7cf
highlight Statement    guifg=#fce94f               gui=NONE
highlight Type         guifg=#8ae234               gui=NONE
highlight Preproc      guifg=#ad7fa8               gui=bold
highlight Title        guifg=#ad7fa8               gui=bold
highlight Constant     guifg=#fcaf3e
highlight Identifier   guifg=#7acccc
highlight LineNr       guifg=#fce94f
highlight CursorLineNr guifg=#fce94f
highlight NonText      guifg=#3465a4
highlight Directory    guifg=#7acccc
highlight SpecialKey   guifg=#7acccc
highlight Error                      guibg=#a40000
highlight ErrorMsg                   guibg=#a40000
highlight DiffText                   guibg=#a40000
highlight Todo         guifg=#204a87 guibg=#fce94f
highlight ColorColumn                guibg=#a40000
highlight WildMenu     guifg=#2e3436 guibg=#fce94f
highlight PMenu        guifg=#2e3436 guibg=#ad7fa8

" Console
highlight Normal     ctermfg=LightGrey   ctermbg=Black
highlight Search     ctermfg=Black       ctermbg=Red   cterm=NONE
highlight Visual                                       cterm=reverse
highlight Cursor     ctermfg=Black       ctermbg=Green cterm=bold
highlight Special    ctermfg=Brown
highlight Comment    ctermfg=Blue
highlight StatusLine ctermfg=blue        ctermbg=white
highlight Type                                         cterm=NONE
highlight Preproc    ctermfg=Magenta                   cterm=bold
highlight Constant   ctermfg=DarkYellow
