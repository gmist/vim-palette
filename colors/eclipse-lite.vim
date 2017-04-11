"   syntax scheme for vim
"
"   syntax defines how syntax groups are formed
"   scheme defines what color to tint for each group
"
"   for gui and/or 256-color term
"
"   put to $HOME/.vim/colors/
"
"   urxvt:
"     88 = 16 ansi + 4^3 rgb + 8 grayscale
"     256 = 16 ansi + 6^3 rgb + 24 grayscale
"   xterm:
"     256 = 16 ansi + 6^3 rgb + 24 grayscale
"
"   16 ansi in [0, 15]: 4 bits as (bright, b, g, r)
"   216 rgb in [16, 231]: 36 * r + 6 * g + b + 16
"   24 grayscale in [232,255] from dark to light
"

if v:version > 580 && (has("gui_running") || &t_Co == 256)

hi clear
set background=light
syntax on
syntax reset
let g:colors_name = "eclipse-lite"

let s:skip = "skip"
let s:none = "none"
let s:bold = "bold"

let s:black = "#212121"
let s:white = "#f4f4f4"
let s:light_gray = "#d3d3d3"
let s:gray = "#808080"
let s:dim_gray = "#696969"
let s:red = "#d40000"
let s:royal_blue = "#4169e1"

let s:eclipse_access_occurrence_gray = "#d4d4d4"
let s:eclipse_access_occurrence_assign_brown = "#f0d8a8"
let s:eclipse_comment_green = "#3f7f5f"
let s:eclipse_curLine_blue = "#e8f2fe"
let s:eclipse_field_blue = "#0000c0"
let s:eclipse_javadoc_blue = "#3f5fbf"
let s:eclipse_keyword_purple = "#7f0055"
let s:eclipse_literal_blue = "#2a00ff"
let s:eclipse_search_purple = "#ceccf7"
let s:eclipse_taskTag_blue = "#7f9fbf"
let s:eclipse_tooltip_yellow = "#ffffe1"

function! <SID>rgbIndex2colorComponent(i)
    let l:map = [0, 0x5f, 0x87, 0xaf, 0xd7, 0xff]
    return l:map[a:i]
endfunction

function! <SID>colorComponent2rgbIndex(c)
    if a:c < 48
        return 0
    endif
    return (a:c - 95 + 20) / 40 + 1
endfunction

function! <SID>grayscaleIndex2colorComponent(i)
    return (a:i - 232) * 10 + 8
endfunction

function! <SID>colorComponent2grayscaleIndex(c)
    if a:c < 8
        let l:grayscaleIndex = 0
    elseif a:c > 238
        let l:grayscaleIndex = 23
    else
        let l:grayscaleIndex = (a:c - 8 + 5) / 10
    endif
    return l:grayscaleIndex + 232
endfunction

function! <SID>color2ctermIndex(color)
    if a:color !~ "^#[0-9a-f]\\{6\\}$"
        return a:color
    endif
    let l:r = ("0x" . strpart(a:color, 1, 2)) + 0
    let l:g = ("0x" . strpart(a:color, 3, 2)) + 0
    let l:b = ("0x" . strpart(a:color, 5, 2)) + 0
    let l:rIndex = <SID>colorComponent2rgbIndex(l:r)
    let l:gIndex = <SID>colorComponent2rgbIndex(l:g)
    let l:bIndex = <SID>colorComponent2rgbIndex(l:b)
    let l:ctermIndex = l:rIndex * 36 + l:gIndex * 6 + l:bIndex + 16

    if l:rIndex == l:gIndex && l:rIndex == l:bIndex
        " as grayscale there are 6 indices in [16, 231] but the number is 24 in [232, 255]
        " better to pick a better
        let l:c = <SID>rgbIndex2colorComponent(l:rIndex)
        let l:difference = (l:c - l:r) * (l:c - l:r) + (l:c - l:g) * (l:c - l:g) + (l:c - l:b) * (l:c - l:b)
        let l:betterIndex = l:ctermIndex
        let l:betterDifference = l:difference

        let l:grayscaleIndexByR = <SID>colorComponent2grayscaleIndex(l:r)
        let l:c = <SID>grayscaleIndex2colorComponent(l:grayscaleIndexByR)
        let l:difference = (l:c - l:r) * (l:c - l:r) + (l:c - l:g) * (l:c - l:g) + (l:c - l:b) * (l:c - l:b)
        if (l:difference < l:betterDifference)
            let l:betterDifference = l:difference
            let l:betterIndex = l:grayscaleIndexByR
        endif

        let l:grayscaleIndexByG = <SID>colorComponent2grayscaleIndex(l:g)
        if l:grayscaleIndexByG != l:grayscaleIndexByR
            let l:c = <SID>grayscaleIndex2colorComponent(l:grayscaleIndexByG)
            let l:difference = (l:c - l:r) * (l:c - l:r) + (l:c - l:g) * (l:c - l:g) + (l:c - l:b) * (l:c - l:b)
            if (l:difference < l:betterDifference)
                let l:betterDifference = l:difference
                let l:betterIndex = l:grayscaleIndexByG
            endif
        endif

        let l:grayscaleIndexByB = <SID>colorComponent2grayscaleIndex(l:b)
        if l:grayscaleIndexByB != l:grayscaleIndexByR && l:grayscaleIndexByB != l:grayscaleIndexByG
            let l:c = <SID>grayscaleIndex2colorComponent(l:grayscaleIndexByB)
            let l:difference = (l:c - l:r) * (l:c - l:r) + (l:c - l:g) * (l:c - l:g) + (l:c - l:b) * (l:c - l:b)
            if (l:difference < l:betterDifference)
                let l:betterDifference = l:difference
                let l:betterIndex = l:grayscaleIndexByB
            endif
        endif

        let l:ctermIndex = l:betterIndex
    endif

    return l:ctermIndex
endfunction

function! <SID>hiGroup(group, fg, bg, attr)
    if has("gui_running")
        let l:display = "gui"
        let l:fg = a:fg
        let l:bg = a:bg
    elseif &t_Co == 256
        let l:display = "cterm"
        let l:fg = <SID>color2ctermIndex(a:fg)
        let l:bg = <SID>color2ctermIndex(a:bg)
    endif
    if a:fg != s:skip
        exec "hi! ".a:group." ".l:display."fg=".l:fg
    endif
    if a:bg != s:skip
        exec "hi! ".a:group." ".l:display."bg=".l:bg
    endif
    if a:attr != s:skip
        exec "hi! ".a:group." ".l:display."=".a:attr
    endif
endfunction

function! <SID>hiPanel(fgHi, bgHi, fgInactive, bgInactive)
    call <SID>hiGroup("StatusLine", a:fgHi, a:bgHi, s:none)
    call <SID>hiGroup("StatusLineNC", a:fgInactive, a:bgInactive, s:none)
    call <SID>hiGroup("VertSplit", a:fgInactive, a:fgInactive, s:none)
    hi! link TabLineSel StatusLine
    hi! link TabLine StatusLineNC
    hi! link TabLineFill VertSplit
    hi! link LineNr StatusLineNC
    hi! link NonText LineNr
endfunction

function! <SID>hiPopup(fgHi, bgHi, fg, bg, scrollActive, scroll)
    call <SID>hiGroup("PmenuSel", a:fgHi, a:bgHi, s:none)
    call <SID>hiGroup("Pmenu", a:fg, a:bg, s:none)
    call <SID>hiGroup("PmenuThumb", s:skip, a:scrollActive, s:none)
    call <SID>hiGroup("PmenuSbar",  s:skip, a:scroll, s:none)
endfunction

function! <SID>hiSyntax()
    call <SID>hiGroup("Normal", s:black, s:white, s:none)

    call <SID>hiGroup("Constant", s:eclipse_literal_blue, s:skip, s:none)
    call <SID>hiGroup("SpecialChar", s:red, s:light_gray, s:none)

    call <SID>hiGroup("Statement", s:eclipse_keyword_purple, s:skip, s:bold)
    hi! link Exception Statement
    hi! link PreProc Statement
    hi! link Type Statement

    call <SID>hiGroup("Error", s:white, s:red, s:none)

    "syntax match toTrim "\s\+$"
    "hi! link toTrim SpecialChar
    hi! link SpecialKey SpecialChar

    call <SID>hiGroup("Todo", s:eclipse_taskTag_blue, s:skip, s:bold)
    syntax keyword taskTag TODO XXX FIXME contained
    hi! link taskTag Todo

    call <SID>hiGroup("Comment", s:eclipse_comment_green, s:skip, s:none)
endfunction

function! <SID>hiSyntaxJava()
    syntax keyword javaKeyword if else
    syntax keyword javaKeyword for while do
    syntax keyword javaKeyword switch case default
    syntax keyword javaKeyword break continue goto return
    syntax keyword javaKeyword void char short int long float double boolean byte
    syntax keyword javaKeyword enum class interface
    syntax keyword javaKeyword extends implements this super
    syntax keyword javaKeyword instanceof new
    syntax keyword javaKeyword abstract static const final synchronized
    syntax keyword javaKeyword transient volatile strictfp native
    syntax keyword javaKeyword public private protected
    syntax keyword javaKeyword throw throws try catch finally assert
    syntax keyword javaKeyword package import
    call <SID>hiGroup("javaKeyword", s:eclipse_keyword_purple, s:skip, s:bold)

    call <SID>hiGroup("javaAnnotation", s:dim_gray, s:skip, s:skip)

    syntax region comment1 start="//" end="$" contains=taskTag
    hi! link comment1 Comment
    syntax region comment2 start="/\*[^*]" end="\*/" contains=taskTag
    hi! link comment2 Comment
    syntax region comment3 start="/\*\*" end="\s\+\*/" contains=taskTag
    call <SID>hiGroup("comment3", s:eclipse_javadoc_blue, s:skip, s:none)
    syntax match comment4 "/\*\*/"
    hi! link comment4 Comment
endfunction

function! <SID>hiAll()
    " ==== editor interface scheme
    call <SID>hiPanel(s:white, s:dim_gray, s:gray, s:light_gray)
    call <SID>hiPopup(s:white, s:dim_gray, s:black, s:eclipse_tooltip_yellow, s:dim_gray, s:light_gray)

    call <SID>hiGroup("Cursor", s:white, s:black, s:none)
    call <SID>hiGroup("CursorLine", s:skip, s:eclipse_curLine_blue, s:none)
    call <SID>hiGroup("CursorLineNr", s:gray, s:eclipse_curLine_blue, s:none)
    call <SID>hiGroup("MatchParen", s:skip, s:light_gray, s:none)
    " TODO see MatchParen to set function arguments and occurrence highlight

    call <SID>hiGroup("IncSearch", s:white, s:royal_blue, s:none)
    call <SID>hiGroup("Search", s:skip, s:eclipse_search_purple, s:none)

    call <SID>hiGroup("Visual", s:skip, s:eclipse_search_purple, s:none)
    call <SID>hiGroup("VisualNOS", s:skip, s:eclipse_literal_blue, s:none)

    " ==== static syntax scheme
    call <SID>hiSyntax()

    " if sourced in vimrc, at this moment, filetype is not assigned yet
    " this probably not take effect
    " actually lang-specific syntax should not be in scheme
    if &filetype == "java"
        call <SID>hiSyntaxJava()
    endif
endfunction

call <SID>hiAll()

endif
