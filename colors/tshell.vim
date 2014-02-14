" Vim color file
" Name:    tshell.vim
" Author:  Tian Changsong tian1988320@126.com
" Version: 0.1
" Main color in Gvim:DarkGolden(#ddaa66),you can change it to your favourite color.
"
set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif
let g:colors_name="tshell"
if has('gui_running')
    hi Normal         gui=NONE   guifg=#e1e1e1   guibg=#191919

    hi IncSearch      gui=NONE   guifg=#000000   guibg=#ddaa66
    hi Search         gui=NONE   guifg=#000000   guibg=#ddaa66
    hi ErrorMsg       gui=NONE   guifg=#000000   guibg=#ddaa66
    hi WarningMsg     gui=NONE   guifg=#000000   guibg=#ddaa66
    hi ModeMsg        gui=NONE   guifg=#e1e1e1   guibg=NONE
    hi MoreMsg        gui=NONE   guifg=#e1e1e1   guibg=NONE
    hi Question       gui=NONE   guifg=#e1e1e1   guibg=NONE

    hi StatusLine     gui=BOLD   guifg=#e1e1e1   guibg=#333333
    hi User1          gui=BOLD   guifg=#999999   guibg=#333333
    hi User2          gui=BOLD   guifg=#FFFF60   guibg=#333333
    hi StatusLineNC   gui=NONE   guifg=#999999   guibg=#333333
    hi VertSplit      gui=NONE   guifg=#e1e1e1   guibg=#333333

    hi WildMenu       gui=BOLD   guifg=#000000   guibg=#ddaa66

    hi DiffText       gui=NONE   guifg=#000000  guibg=#4cd169
    hi DiffChange     gui=NONE   guifg=NONE     guibg=#541691
    hi DiffDelete     gui=NONE   guifg=#e1e1e1  guibg=#ddaa66
    hi DiffAdd        gui=NONE   guifg=#e1e1e1  guibg=#306d30

    hi Cursor         gui=NONE   guifg=#000000   guibg=#827d7d

	hi Folded         gui=NONE   guifg=#ddaa66   guibg=#000000
    hi FoldColumn     gui=NONE   guifg=#e1e1e1   guibg=#191919

    hi Directory      gui=NONE   guifg=#8bff95   guibg=NONE
    hi LineNr         gui=NONE   guifg=#bbbbbb   guibg=#191919
    hi NonText        gui=NONE   guifg=#bbbbbb   guibg=NONE
	hi SpecialKey     gui=NONE   guifg=#ddaa66   guibg=NONE
    hi Title          gui=NONE   guifg=#E1462D   guibg=NONE
    hi Visual         gui=NONE   guifg=NONE      guibg=#404040	

    hi Comment        gui=NONE   guifg=#666666   guibg=NONE
    hi Constant       gui=NONE   guifg=#FA9D9D   guibg=NONE
    hi Boolean        gui=NONE   guifg=#00ff00   guibg=NONE
    hi String         gui=NONE   guifg=#F050C8   guibg=NONE
    hi Error          gui=NONE   guifg=#990000   guibg=#000000
    hi Identifier     gui=NONE   guifg=#4cbbd1   guibg=NONE
    hi Ignore         gui=NONE   guifg=#555555
    hi Number         gui=NONE   guifg=#ddaa66   guibg=NONE
    hi PreProc        gui=NONE   guifg=#E1462D   guibg=NONE

    hi Special        gui=NONE   guifg=#ffcd8b   guibg=NONE

    hi Statement      gui=bold   guifg=#FFFF60   guibg=NONE
    hi Todo           gui=NONE   guifg=#e1e1e1   guibg=#863132
    hi Type           gui=NONE   guifg=#c476f1   guibg=NONE
    hi Underlined     gui=UNDERLINE   guifg=#e1e1e1   guibg=NONE

    hi VisualNOS      gui=NONE   guifg=#e1e1e1   guibg=#000000

    hi CursorLine     gui=NONE   guifg=NONE      guibg=#333333
    hi CursorColumn   gui=NONE   guifg=NONE      guibg=#333333

    hi lispList       gui=NONE   guifg=#555555

    if v:version >= 700
      hi Pmenu        gui=NONE   guifg=#e1e1e1   guibg=#333333
      hi PMenuSel     gui=BOLD   guifg=#000000   guibg=#ddaa66
      hi PmenuSbar    gui=NONE   guifg=#e1e1e1   guibg=#000000
      hi PmenuThumb   gui=NONE   guifg=#e1e1e1   guibg=#333333

      hi SpellBad     gui=undercurl guisp=#cc6666
      hi SpellRare    gui=undercurl guisp=#cc66cc
      hi SpellLocal   gui=undercurl guisp=#cccc66
      hi SpellCap     gui=undercurl guisp=#66cccc

      hi MatchParen   gui=NONE      guifg=#ffffff   guibg=#005500
    endif
else
"use the same color of evening in term
	hi Normal  term=standout ctermbg=Black ctermfg=White guibg=Red guifg=White       
	hi ErrorMsg term=standout ctermbg=DarkRed ctermfg=White guibg=Red guifg=White
	hi IncSearch term=reverse cterm=reverse gui=reverse
	hi ModeMsg term=bold cterm=bold gui=bold
	hi StatusLine term=reverse,bold cterm=reverse,bold gui=reverse,bold
	hi StatusLineNC term=reverse cterm=reverse gui=reverse
	hi VertSplit term=reverse cterm=reverse gui=reverse
	hi Visual term=reverse ctermbg=black guibg=grey60
	hi VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold
	hi DiffText term=reverse cterm=bold ctermbg=Red gui=bold guibg=Red
	hi Cursor guibg=Green guifg=Black
	hi lCursor guibg=Cyan guifg=Black
	hi Directory term=bold ctermfg=LightCyan guifg=Cyan
	hi LineNr term=underline ctermfg=Yellow guifg=Yellow
	hi MoreMsg term=bold ctermfg=LightGreen gui=bold guifg=SeaGreen
	hi NonText term=bold ctermfg=LightBlue gui=bold guifg=LightBlue guibg=grey30
	hi Question term=standout ctermfg=LightGreen gui=bold guifg=Green
	hi Search term=reverse ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
	hi SpecialKey term=bold ctermfg=LightBlue guifg=Cyan
	hi Title term=bold ctermfg=LightMagenta gui=bold guifg=Magenta
	hi WarningMsg term=standout ctermfg=LightRed guifg=Red
	hi WildMenu term=standout ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
	hi Folded term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
	hi FoldColumn term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
	hi DiffAdd term=bold ctermbg=DarkBlue guibg=DarkBlue
	hi DiffChange term=bold ctermbg=DarkMagenta guibg=DarkMagenta
	hi DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=bold guifg=Blue guibg=DarkCyan
	hi CursorColumn term=reverse ctermbg=Black guibg=grey40
	hi CursorLine term=underline cterm=underline guibg=grey40

	" Groups for syntax highlighting
	hi Constant term=underline ctermfg=Magenta guifg=#ffa0a0 guibg=grey5
	hi Special term=bold ctermfg=LightRed guifg=Orange guibg=grey5
	if &t_Co > 8
		hi Statement term=bold cterm=bold ctermfg=Yellow guifg=#ffff60 gui=bold
	endif
	hi Ignore ctermfg=DarkGrey guifg=grey20

endif


