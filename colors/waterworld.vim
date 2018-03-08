" Vim color file

" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "waterworld"

" shamelessly stolen from hemisu: https://github.com/noahfrederick/vim-hemisu/
function! s:HL(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui  : "NONE")
endfunction

let s:navy_blue = "#000080"
let s:grey_65   = "#a6a6a6"

"#f8f8f2"
"#dfedee"
let s:fg        = "#e7f3f4"

"#364764"
"#2b3e50"
let s:bg        = "#284353"

"#f8f8f2"
let s:search    = "#f8fce4"

let s:keyword   = "#7ec0ee"

let s:comment   = "#95aeb9"

let s:string    = "#78cf7a"

let s:special   = "#d7a0d7"

"#222768"
let s:visual    = "#3636c2"

let s:error     = "#e53935"
let s:warning   = "#edf779"

let s:border_bg = s:grey_65
let s:border_fg = s:navy_blue

"#222768"
"#334a60"
let s:cursor_line = "#24448e"

let s:status_line = "#edf779"


" Normal should come first
"#9e9f86"
call s:HL("Normal",       {"bg": s:bg,      "fg": s:fg})
call s:HL("NonText",      {"bg": s:bg,      "fg": s:fg})
call s:HL("Statement",    {"bg": s:bg,      "fg": s:keyword})
call s:HL("StorageClass", {"bg": s:bg,      "fg": s:keyword})
call s:HL("Identifier",   {"bg": s:bg,      "fg": s:keyword})
call s:HL("Operator",     {"bg": s:bg,      "fg": s:keyword})
call s:HL("Directory",    {"bg": s:bg,        "fg": s:keyword})
call s:HL("Function",     {"bg": s:bg,      "fg": s:fg})
call s:HL("Type",         {"bg": s:bg,      "fg": s:fg})
call s:HL("PreProc",      {"bg": s:bg,      "fg": s:fg})
call s:HL("Search",       {"bg": s:search,  "fg": "Blue3"})
call s:HL("IncSearch",    {"bg": s:search,  "fg": s:navy_blue})
call s:HL("Comment",      {"bg": s:bg,      "fg": s:comment})
call s:HL("String",       {"bg": s:bg,      "fg": s:string})
call s:HL("Constant",     {"bg": s:bg,      "fg": s:special})
call s:HL("Special",      {"bg": s:bg,      "fg": s:special})
call s:HL("SpecialKey",   {"bg": s:bg,      "fg": "Cyan"})
call s:HL("Visual",       {"bg": s:visual,  "fg": "NONE"})
call s:HL("ErrorMsg",     {"bg": s:error,   "fg": s:fg})
call s:HL("Error",        {"bg": s:error,   "fg": s:fg})
call s:HL("WarningMsg",   {"bg": s:warning, "fg": s:navy_blue})
call s:HL("MatchParen",   {"bg": "#006997", "fg": s:fg})
call s:HL("LineNr",       {"bg": s:bg,      "fg": "#9e9f86"})
call s:HL("StatusLineNC", {"bg": s:border_bg,   "fg": s:border_fg, "gui": "underline"})
call s:HL("StatusLine",   {"bg": s:status_line, "fg": s:border_fg, "gui": "underline"})
call s:HL("VertSplit",    {"bg": s:border_bg,   "fg": s:border_fg, "gui": "underline"})
call s:HL("Title",        {"bg": s:bg,          "fg": s:special})
call s:HL("Pmenu",        {"bg": s:border_bg,   "fg": "#191970"})
call s:HL("PmenuSel",     {"bg": s:visual,      "fg": s:fg})
call s:HL("CursorLine",   {"bg": s:cursor_line, "fg": "NONE", "gui": "NONE"})
call s:HL("Cursor",       {"bg": "#e60000", "fg": s:fg})
call s:HL("Folded",       {"bg": "#233343", "fg": s:comment})
call s:HL("TagbarSignature", {"bg": s:bg,   "fg": s:comment})
call s:HL("TagListTagScope", {"bg": s:bg,   "fg": s:comment})


"=========================================================================


hi DiffAdd       guibg=LightBlue
hi DiffChange    guibg=LightMagenta
hi DiffDelete    gui=None guifg=Blue guibg=LightCyan
hi DiffText      gui=None guibg=Red
hi FoldColumn    guibg=Grey guifg=DarkBlue
hi ModeMsg       gui=None
hi MoreMsg       gui=None guifg=SeaGreen
hi Question      gui=None guifg=SeaGreen
hi WildMenu      guibg=Yellow guifg=Black

" vim: sw=2
