"%% SiSU Vim color file
:set background=dark
:highlight clear
if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif
let colors_name = "phonzia"

" map a urxvt cube number to an xterm-256 cube number
fun! s:M(a)
    return strpart("0245", a:a, 1) + 0
endfun

" map a urxvt colour to an xterm-256 colour
fun! s:X(a)
    if &t_Co == 88
        return a:a
    else
        if a:a == 8
            return 237
        elseif a:a < 16
            return a:a
        elseif a:a > 79
            return 232 + (3 * (a:a - 80))
        else
            let l:b = a:a - 16
            let l:x = l:b % 4
            let l:y = (l:b / 4) % 4
            let l:z = (l:b / 16)
            return 16 + s:M(l:x) + (6 * s:M(l:y)) + (36 * s:M(l:z))
        endif
    endif
endfun

function! E2T(a)
    return s:X(a:a)
endfunction

function! s:choose(mediocre,good)
    if &t_Co != 88 && &t_Co != 256
        return a:mediocre
    else
        return s:X(a:good)
    endif
endfunction

function! s:hifg(group,guifg,first,second,...)
    if a:0 && &t_Co == 256
        let ctermfg = a:1
    else
        let ctermfg = s:choose(a:first,a:second)
    endif
    exe "highlight ".a:group." guifg=".a:guifg." ctermfg=".ctermfg
endfunction

function! s:hibg(group,guibg,first,second)
    let ctermbg = s:choose(a:first,a:second)
    exe "highlight ".a:group." guibg=".a:guibg." ctermbg=".ctermbg
endfunction

:hi Normal gui=italic guifg=White guibg=black
:hi Cursor guibg=khaki guifg=slategrey
:hi VertSplit guibg=White guifg=grey40 gui=none cterm=reverse
:hi Folded  ctermbg=DarkBlue ctermfg=Grey guifg=Grey guibg=black
:hi FoldColumn ctermbg=LightGrey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
:hi IncSearch guifg=green guibg=black cterm=none ctermfg=green ctermbg=black
:hi ModeMsg guifg=goldenrod cterm=none ctermfg=brown
:hi MoreMsg guifg=SeaGreen ctermfg=darkgreen
:hi NonText guifg=RoyalBlue guibg=grey15 cterm=bold ctermfg=blue
:hi Question guifg=springgreen ctermfg=green
:hi Search guibg=peru guifg=wheat cterm=none ctermfg=grey ctermbg=blue
:hi SpecialKey guifg=yellowgreen ctermfg=darkgreen
:hi StatusLine guibg=yellow guifg=slateblue gui=none cterm=bold,reverse
:hi StatusLineNC guibg=White guifg=grey40 gui=none cterm=reverse
:hi Title guifg=springgreen ctermfg=green
:hi Statement guifg=#cc0099 ctermfg=brown gui=italic
:hi Visual gui=none guifg=khaki guibg=olivedrab cterm=reverse
:hi WarningMsg guifg=salmon ctermfg=1
:hi String  guifg=#ee3b3b ctermfg=darkcyan gui=italic
:hi Comment term=italic ctermfg=11  guifg=Grey60 gui=italic
:hi Constant guifg=#ffa0a0 ctermfg=DarkRed gui=italic
:hi Special guifg=darkkhaki ctermfg=brown
:hi Identifier guifg=salmon ctermfg=red
:hi Include guifg=orangered ctermfg=red
:hi PreProc guifg=orangered ctermfg=yellow
:hi Operator guifg=gold ctermfg=brown
:hi Define guifg=gold gui=bold ctermfg=brown
:hi Type guifg=CornflowerBlue ctermfg=lightblue gui=italic
:hi Function guifg=#32cd32 gui=italic,bold ctermfg=darkgreen
:hi Structure guifg=CornflowerBlue ctermfg=lightblue
:hi LineNr guifg=grey50 ctermfg=3
:hi Ignore guifg=grey40 cterm=bold ctermfg=7
:hi Todo guifg=orangered guibg=yellow2
:hi Directory ctermfg=darkcyan
:hi ErrorMsg cterm=bold guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1
:hi VisualNOS cterm=bold,underline
:hi WildMenu ctermfg=0 ctermbg=3
:hi DiffChange ctermbg=5
:hi DiffDelete cterm=bold ctermfg=4 ctermbg=6
:hi DiffText cterm=bold ctermbg=1
:hi Underlined cterm=underline ctermfg=5 gui=underline guifg=red
:hi Error guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1
:hi SpellErrors guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1
:hi Number guifg=LightRed gui=italic ctermfg=LightRed

call s:hibg("ColorColumn","#333333","DarkGrey",81)
call s:hibg("CursorLine","#333333","DarkGrey",81)
call s:hibg("CursorColumn","#333333","DarkGrey",81)
call s:hibg("Search"    ,"#555555","DarkBlue",81)
call s:hibg("LineNr"    ,"#222222","DarkBlue",80)
call s:hibg("Visual"    ,"#555577","LightBlue",83)
call s:hibg("VisualNOS" ,"#444444","DarkBlue",81)
call s:hibg("MatchParen","#1100AA","DarkBlue",18)
call s:hibg("Folded"    ,"#110077","DarkBlue",17)
call s:hibg("Pmenu"     ,"#000099","Blue",18)
call s:hibg("PmenuSel"  ,"#5555ff","DarkCyan",39)
call s:hibg("TabLine"   ,"#333333","DarkGrey",80)
call s:hibg("TabLineFill","#808080","Grey",83)

:hi DiffAdd       ctermbg=4 guibg=DarkBlue
