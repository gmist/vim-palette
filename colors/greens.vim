" A green/red/yellow colorscheme
" Maintainer: Yuheng XIE <thinelephant@gmail.com>
" Last Change: Dec 7, 2016

if &background != "light"
	set background=dark
endif

highlight clear Normal
if !exists("g:colors_name")
	set background&
endif
highlight clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "greens"

function! s:Printf02X(n)
  let n = a:n
  let r = ""
  while strlen(r) < 2
    let r = '0123456789ABCDEF'[n % 16] . r
    let n = n / 16
  endwhile
  return r
endfunc

function! s:CtermRGB(r, g, b)
	return a:r * 36 + a:g * 6 + a:b + 16
endfunction

function! s:GuiRGB(r, g, b)
	return "#" .
			\ s:Printf02X(a:r ? a:r * 40 + 55 : 0) .
			\ s:Printf02X(a:g ? a:g * 40 + 55 : 0) .
			\ s:Printf02X(a:b ? a:b * 40 + 55 : 0)
endfunction

function! s:ColorRGB(fgbg, color, r, g, b)
	if &t_Co < 256
		return "cterm" . a:fgbg . "=" . a:color .
				\ " gui"   . a:fgbg . "=" . s:GuiRGB(a:r, a:g, a:b)
	else
		return "cterm" . a:fgbg . "=" . s:CtermRGB(a:r, a:g, a:b) .
				\ " gui"   . a:fgbg . "=" . s:GuiRGB(a:r, a:g, a:b)
	endif
endfunction

function! s:Color(fgbg, color)
	return "cterm" . a:fgbg . "=" . a:color . " gui" . a:fgbg . "=" . a:color
endfunction

function! s:Style(style)
	if &t_Co < 256
		return ""
	else
		return "cterm=" . a:style . " gui=" . a:style
	endif
endfunction

function! s:Hi(group, ...)
	let command = "hi " . a:group
	let i = 1
	while i <= a:0
		let arg = a:{i}
		if arg =~ '^\(fg\|bg\)=[0-5]\{3\},\w\+$'
			let fgbg  = strpart(arg, 0, 2)
			let color = strpart(arg, 7)
			let r     = strpart(arg, 3, 1)
			let g     = strpart(arg, 4, 1)
			let b     = strpart(arg, 5, 1)
			let command = command . " " . s:ColorRGB(fgbg, color, r, g, b)
		elseif arg =~ '^\(fg\|bg\)=\w\+$'
			let fgbg  = strpart(arg, 0, 2)
			let color = strpart(arg, 3)
			let command = command . " " . s:Color(fgbg, color)
		elseif arg =~ '^style=\w\+$'
			let command = command . " " . s:Style(strpart(arg, 6))
		endif
		let i = i + 1
	endwhile
	exec command
endfunction

command! -nargs=+ Hi call s:Hi(<f-args>)

if &background == "dark"
	if has("gui_running")
		Hi Normal fg=333,Grey bg=Black
	else
		Hi Normal fg=333,Grey
	endif
elseif &background == "light"
	if has("gui_running")
		Hi Normal fg=111,DarkGrey bg=LightYellow
	else
		Hi Normal fg=111,DarkGrey
	endif
endif " &background

if &background == "dark"

	Hi Comment     fg=030,DarkGreen
	Hi Constant    fg=500,Red
	Hi Special     fg=430,DarkYellow               style=NONE
	Hi Identifier  fg=055,Cyan                     style=NONE
	Hi Statement   fg=550,Yellow                   style=BOLD
	Hi PreProc     fg=050,Green                    style=BOLD
	Hi Type        fg=555,White                    style=BOLD
	Hi Ignore      fg=111,DarkGrey

	Hi FoldColumn  fg=000,Black  bg=222,Grey
	Hi Folded      fg=000,Black  bg=222,Grey

	Hi DiffAdd                   bg=300,DarkRed
	Hi DiffDelete                bg=033,DarkCyan   style=NONE
	Hi DiffText                  bg=004,DarkBlue   style=NONE
	Hi DiffChange                bg=303,DarkMagenta

elseif &background == "light"

	Hi Comment     fg=030,DarkGreen
	Hi Constant    fg=500,Red
	Hi Special     fg=310,DarkRed                  style=NONE
	Hi Identifier  fg=034,DarkCyan                 style=NONE
	Hi Statement   fg=430,DarkYellow               style=BOLD
	Hi PreProc     fg=050,Green                    style=BOLD
	Hi Type        fg=000,Black                    style=BOLD
	Hi Ignore      fg=444,LightGrey

	Hi FoldColumn  fg=555,White  bg=443,LightGrey
	Hi Folded      fg=555,White  bg=443,LightGrey

	Hi DiffAdd                   bg=544,LightRed
	Hi DiffDelete                bg=455,LightCyan  style=NONE
	Hi DiffText                  bg=345,LightBlue  style=NONE
	Hi DiffChange                bg=545,LightMagenta

endif " &background

if v:version >= 700

	Hi MatchParen  fg=030,DarkGreen  bg=443,LightGrey

	Hi Pmenu       fg=000,Black  bg=444,LightGrey
	Hi PmenuSel    fg=000,Black  bg=550,Yellow
	Hi PmenuSbar   fg=000,Black  bg=555,White
	Hi PmenuThumb  fg=000,Black  bg=050,Green

	hi! link CursorLine   Visual
	hi! link CursorColumn Visual

	hi! link TabLine      Normal
	hi! link TabLineFill  Normal
	hi! link TabLineSel   Type

endif " v:version >= 700

" vim: ts=2 sw=2 noet
