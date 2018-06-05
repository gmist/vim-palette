" Vim color file

" First remove all existing highlighting.
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "vc6"

" shamelessly stolen from hemisu: https://github.com/noahfrederick/vim-hemisu/
function! s:HL(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui  : "NONE")
endfunction

let s:fg        = "Black"
let s:bg        = "White"
let s:search    = "Yellow"
let s:keyword   = "Black"
let s:comment   = "Green4"
let s:string    = "Green4"
let s:special   = "Magenta4"
let s:visual    = "#b6d6fd"
let s:error     = "Red2"
let s:warning   = "Red2"
let s:border_bg = "Grey85"
let s:border_fg = "Black"
let s:cursor_line = "#fff4ce"
let s:cursor      = "Red"
let s:status_line = s:border_bg
let s:operator    = "#007d7d"
let s:constant    = "Red4"


" Normal should come first
call s:HL("Normal",       {"bg": s:bg,      "fg": s:fg})
call s:HL("NonText",      {"bg": s:bg,      "fg": s:fg})
call s:HL("Statement",    {"bg": s:bg,      "fg": s:keyword, "gui": "bold"})
call s:HL("StorageClass", {"bg": s:bg,      "fg": s:keyword, "gui": "bold"})
call s:HL("Identifier",   {"bg": s:bg,      "fg": s:keyword})
call s:HL("Operator",     {"bg": s:bg,      "fg": s:operator})
call s:HL("SyntaxChar",   {"bg": s:bg,      "fg": s:special})
call s:HL("Directory",    {"bg": s:bg,      "fg": s:keyword})
call s:HL("Function",     {"bg": s:bg,      "fg": s:fg})
call s:HL("Type",         {"bg": s:bg,      "fg": s:keyword, "gui": "bold"})
call s:HL("PreProc",      {"bg": s:bg,      "fg": s:special})
call s:HL("Search",       {"bg": s:search,  "fg": s:fg})
call s:HL("IncSearch",    {"bg": s:search,  "fg": s:fg, "gui": "reverse"})
call s:HL("Comment",      {"bg": s:bg,      "fg": s:comment})
call s:HL("String",       {"bg": s:bg,      "fg": s:string})
call s:HL("Constant",     {"bg": s:bg,      "fg": s:constant})
call s:HL("Special",      {"bg": s:bg,      "fg": s:special})
call s:HL("SpecialKey",   {"bg": s:bg,      "fg": s:special})
call s:HL("Visual",       {"bg": s:visual,  "fg": "NONE"})
call s:HL("ErrorMsg",     {"bg": s:error,   "fg": s:bg})
call s:HL("Error",        {"bg": s:error,   "fg": s:bg})
call s:HL("WarningMsg",   {"bg": s:warning, "fg": s:bg})
call s:HL("MatchParen",   {"bg": "Cyan",    "fg": s:fg})
call s:HL("LineNr",       {"bg": s:bg,      "fg": "#9e9f86"})
call s:HL("StatusLineNC", {"bg": s:border_bg,   "fg": s:border_fg, "gui": "underline"})
call s:HL("StatusLine",   {"bg": s:status_line, "fg": s:border_fg, "gui": "underline"})
call s:HL("VertSplit",    {"bg": s:border_bg,   "fg": s:border_fg})
call s:HL("Title",        {"bg": s:bg,          "fg": s:special})
call s:HL("Pmenu",        {"bg": s:border_bg,   "fg": "#191970"})
call s:HL("PmenuSel",     {"bg": "SlateBlue",   "fg": s:bg})
call s:HL("CursorLine",   {"bg": s:cursor_line, "fg": "NONE", "gui": "NONE"})
call s:HL("Cursor",       {"bg": s:cursor,  "fg": s:bg})
call s:HL("Folded",       {"bg": "#ECECEC", "fg": "#808080"})
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
