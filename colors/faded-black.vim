" Vim color file
" Maintainer:           John Kaul
" Created On:           2003 Mar 19
" File Last Updated:    04.23.13 10:49:16 AM

" Notes:
" This started as a fadded version of of the 'Chocolate Liquor', but
" soon took on a life of its own. Easy on the eyes, but still has good
" contrast.  I dont think there is any 'Chocolate Liquor' left in this
" file, but there is prolly an entry or two left in there somewhere.
"
" Only values that differ from defaults are specified.
"
" I hope you enjoy...
"
" Log:
" 01.07.05 update: Tweeked a few colors and added terminal colors.
" Please note that I didnt go thru the terminal colors very well. (I
" just added a few ''dif.  then normal'' colors) If you use the terminal
" alot I would make an attempt to fix anything you dont like about this
" color scheme if I were you. :)~  Other than that, I just called it it
" good 'nuff.
"
" 01.16.13 update: Changed a few more colors (still havent looked at the
" terminal colors).
"
" 04.12.13 update:
"    o  Search background color
"    o  Include statement foreground color
"    o  Status lines colors
"
" 04.23.13 update: Added and adjusted some terminal colors.
"

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "faded-black"


" Vim >= 7.0 specific colors
if version >= 700

hi CursorLine   ctermbg=236         ctermfg=NONE        guibg=#2d2d2d       guifg=NONE      term=NONE           gui=NONE
hi CursorColumn ctermbg=236         ctermfg=NONE        guibg=#2d2d2d       guifg=NONE      term=NONE           gui=NONE
hi MatchParen   ctermbg=237         ctermfg=157         guibg=#2f2f2f       guifg=#d0ffc0   term=bold           gui=bold
hi Pmenu        ctermbg=238         ctermfg=255         guibg=#444444       guifg=#ffffff   term=NONE           gui=NONE
hi PmenuSel     ctermbg=148         ctermfg=0           guibg=#b1d631       guifg=#000000   term=NONE           gui=NONE

endif

" //-- Stuff --//
hi Cursor       ctermbg=Red         ctermfg=NONE        guibg=#8b3a3a       guifg=#e3e3e3                       gui=NONE
hi Normal       ctermbg=NONE        ctermfg=LightGrey   guibg=#03080F       guifg=#958a73                       gui=NONE
" hi Normal       ctermbg=NONE        ctermfg=LightGrey   guibg=#03080F       guifg=#a69d89                       gui=NONE
" The text color between the above two are tough to decide; I leave it up to you.
hi NonText      ctermbg=NONE        ctermfg=Black       guibg=#03080F       guifg=#000030                       gui=NONE
hi DiffDelete   ctermbg=DarkRed     ctermfg=White       guibg=DarkRed       guifg=White                         gui=NONE
hi DiffAdd      ctermbg=DarkGreen   ctermfg=White       guibg=DarkGreen     guifg=White                         gui=NONE
hi DiffText     ctermbg=LightCyan   ctermfg=Yellow      guibg=Lightblue     guifg=Yellow                        gui=NONE
hi DiffChange   ctermbg=LightBlue   ctermfg=White       guibg=LightBlue3    guifg=White                         gui=NONE
hi Constant     ctermbg=NONE        ctermfg=Red         guibg=NONE          guifg=#872e30                       gui=NONE
hi StatusLine   ctermbg=DarkGrey    ctermfg=Red         guibg=#2a2a2a       guifg=#eeeeee                       gui=italic
hi StatusLineNC ctermbg=Darkgrey    ctermfg=black       guibg=#515151       guifg=Black                         gui=NONE
hi VertSplit    ctermbg=NONE        ctermfg=NONE        guibg=NONE          guifg=Grey                          gui=NONE
hi Visual       ctermbg=DarkRed     ctermfg=Red         guibg=#6b6b6b       guifg=#431818  term=reverse
hi Search       ctermbg=Yellow      ctermfg=LightGrey   guibg=#bf9966       guifg=#03080F                       gui=NONE
hi Label        ctermbg=NONE        ctermfg=NONE        guibg=NONE          guifg=#ffc0c0                       gui=NONE
hi LineNr       ctermbg=NONE        ctermfg=Red         guibg=NONE          guifg=#A39274                       gui=NONE

" //-- Messages --//
hi MoreMsg      ctermbg=NONE        ctermfg=DarkGreen   guibg=NONE          guifg=SeaGreen term=bold,italic     gui=bold
hi question     ctermbg=NONE        ctermfg=DarkGreen   guibg=NONE          guifg=SeaGreen term=standout        gui=bold

" //-- Syntax group --//
hi Comment      ctermbg=NONE        ctermfg=DarkGreen   guibg=NONE          guifg=#5c683f                      gui=italic
hi PreProc      ctermbg=NONE        ctermfg=darkcyan    guibg=NONE          guifg=#387e7e                      gui=NONE
hi Statement    ctermbg=NONE        ctermfg=Yellow      guibg=NONE          guifg=#ab952b                      gui=NONE
hi Type         ctermbg=NONE        ctermfg=darkmagenta guibg=NONE          guifg=#ba5bdb                      gui=NONE
hi Identifier   ctermbg=NONE        ctermfg=Yellow      guibg=NONE          guifg=#737d95                      gui=NONE
hi Special      ctermbg=NONE        ctermfg=Green       guibg=NONE          guifg=#5b5646                      gui=NONE
hi Todo         ctermbg=NONE        ctermfg=darkmagenta guibg=NONE          guifg=LightBlue                    gui=bold,italic
hi Number       ctermbg=NONE        ctermfg=darkcyan    guibg=NONE          guifg=lightblue                    gui=NONE
"
" Lisp stuff
hi lispAtomMark  ctermbg=NONE       ctermfg=cyan        guifg=darkcyan      guibg=NONE                         gui=NONE
hi lispNumber    ctermbg=NONE       ctermfg=DarkGreen   guifg=lightblue     guibg=NONE                         gui=NONE
"
" hi Constant
" hi Error
" hi Ignore
" hi Underlined

" //-- Fold --//
hi Folded       ctermbg=darkgray    ctermfg=NONE        guibg=#001a33       guifg=#a69c89                      gui=italic
hi FoldColumn   ctermbg=NONE        ctermfg=Yellow      guibg=#6699CC       guifg=#0000EE                      gui=NONE
