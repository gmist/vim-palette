" urxvt color scheme file
" Thanks to Gautam Iyer <gautam@math.uchicago.edu> for his xterm16 colorscheme

set bg=dark
hi clear

if exists("syntax_on")
    syntax reset
endif

let colors_name = "unkiwii"

function s:setcolor(name, rgb)
	let s:color_{a:name} = a:rgb
endfunction

function s:getcolor(name)
	return s:color_{a:name}
endfunction

function s:hi(group, style, fg, bg)
	exec "hi " . a:group . " gui=" . a:style . " guifg=" . s:getcolor(a:fg) . " guibg=" . s:getcolor(a:bg) . " cterm=" . a:style . " ctermfg=" . a:fg . " ctermbg=" . a:bg
endfunction

try
	call s:setcolor("none"         , "NONE")
	call s:setcolor("black"        , "#050005")
	call s:setcolor("darkred"      , "#CC0000")
	call s:setcolor("darkgreen"    , "#4E9A06")
	call s:setcolor("darkyellow"   , "#C4A000")
	call s:setcolor("darkblue"     , "#3465A4")
	call s:setcolor("darkmagenta"  , "#75507B")
	call s:setcolor("darkcyan"     , "#06989A")
	call s:setcolor("grey"         , "#D3D7CF")
	call s:setcolor("darkgrey"     , "#444444")
	call s:setcolor("red"          , "#EF2929")
	call s:setcolor("green"        , "#8AE234")
	call s:setcolor("yellow"       , "#FCE94F")
	call s:setcolor("blue"         , "#729FCF")
	call s:setcolor("magenta"      , "#AD7FA8")
	call s:setcolor("cyan"         , "#34E2E2")
	call s:setcolor("white"        , "#EEEEEC")

	call s:hi("comment"      , "none" , "blue"        , "none")
	call s:hi("constant"     , "bold" , "yellow"      , "none")
	call s:hi("cursor"       , "bold" , "black"       , "green")
	call s:hi("cursorline"   , "bold" , "white"       , "black")
	call s:hi("diffadd"      , "none" , "darkblue"    , "darkgreen")
	call s:hi("diffchange"   , "none" , "black"       , "darkyellow")
	call s:hi("diffdelete"   , "none" , "darkblue"    , "none")
	call s:hi("difftext"     , "none" , "darkred"     , "darkyellow")
	call s:hi("error"        , "none" , "white"       , "red")
	call s:hi("foldcolumn"   , "none" , "yellow"      , "darkblue")
	call s:hi("folded"       , "none" , "yellow"      , "darkblue")
	call s:hi("identifier"   , "none" , "darkcyan"    , "none")
	call s:hi("ignore"       , "none" , "darkgrey"    , "none")
	call s:hi("incsearch"    , "none" , "grey"        , "darkblue")
	call s:hi("moremsg"      , "bold" , "green"       , "none")
	call s:hi("nontext"      , "none" , "blue"        , "none")
	call s:hi("normal"       , "none" , "white"       , "black")
	call s:hi("pmenu"        , "none" , "black"       , "darkgrey")
	call s:hi("pmenusbar"    , "none" , "none"        , "darkcyan")
	call s:hi("pmenusel"     , "bold" , "white"       , "black")
	call s:hi("pmenuthumb"   , "none" , "none"        , "white")
	call s:hi("preproc"      , "bold" , "darkred"     , "none")
	call s:hi("search"       , "bold" , "black"       , "yellow")
	call s:hi("special"      , "bold" , "darkgreen"   , "none")
	call s:hi("specialkey"   , "none" , "blue"        , "none")
	call s:hi("statement"    , "bold" , "cyan"        , "none")
	call s:hi("statusline"   , "bold" , "black"       , "white")
	call s:hi("statuslinenc" , "none" , "black"       , "white")
	call s:hi("tabline"      , "none" , "white"       , "darkgrey")
	call s:hi("tablinefill"  , "none" , "none"        , "black")
	call s:hi("tablinesel"   , "bold" , "black"       , "white")
	call s:hi("title"        , "bold" , "green"       , "none")
	call s:hi("todo"         , "none" , "black"       , "yellow")
	call s:hi("type"         , "bold" , "green"       , "none")
	call s:hi("underlined"   , "none" , "darkmagenta" , "none")
	call s:hi("visual"       , "none" , "white"       , "darkblue")
	call s:hi("visualnos"    , "none" , "none"        , "darkgrey")
	call s:hi("warningmsg"   , "bold" , "red"         , "none")

finally
	unlet! s:color_black s:color_darkred s:color_darkgreen s:color_darkyellow
	unlet! s:color_darkblue s:color_darkmagenta s:color_darkcyan s:color_grey
	unlet! s:color_darkgrey s:color_red s:color_green s:color_yellow s:color_blue
	unlet! s:color_magenta s:color_cyan s:color_white

	delfunction s:setcolor
	delfunction s:getcolor
	delfunction s:hi
endtry

