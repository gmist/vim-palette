" Obsidian Maintainer: Trevor John <trevorrjohn@gmail.com>
" Source: http://github.com/tjohn/vim-obsidian

if has("gui_running")
  set background=dark
endif
hi clear
if version > 580
 if exists("syntax_on")
   syntax reset
 endif
endif

let colors_name = "obsidian"

" Custom Groups
" hi OverLength   guifg=#0a1c48 guibg=#ffa3a6 gui=NONE
  " match OverLength /\%81v.\+/

" Vim Group
" hi Cursor       guifg=white   guibg=#8b8255 gui=NONE
" hi CursorLine   guifg=NONE    guibg=#13142c gui=NONE
" hi Directory    guifg=gold    guibg=NONE    gui=italic
" hi ErrorMsg     guifg=red     guibg=NONE    gui=bold
" hi IncSearch    guifg=NONE    guibg=#beb19a gui=NONE
" hi LineNr       guifg=#3d6d82 guibg=NONE    gui=italic
" hi NonText      guifg=#820073 guibg=NONE    gui=bold
" hi Pmenu        guifg=#a0b2ac guibg=#0a1c16 gui=NONE
" hi PmenuSel     guifg=#a1b2ac guibg=#0a1c16 gui=italic,underline
" hi PmenuSbar    guifg=#e2e2e2 guibg=#0a1c16 gui=NONE
" hi PmenuThumb   guifg=#e2e2e2 guibg=#0a1c16 gui=NONE
" hi Question     guifg=#2d775f guibg=NONE    gui=italic
" hi Search       guifg=#751d28 guibg=#beb19a gui=NONE
" hi StatusLine   guifg=#310809 guibg=#dfcb69 gui=NONE
" hi StatusLineNC guifg=#310809 guibg=#e2e2e2 gui=italic
" hi TabLine      guifg=#878031 guibg=#1e1e2e gui=italic
" hi TabLineFill  guifg=NONE    guibg=#e2e2e2 gui=NONE
" hi TabLineSel   guifg=#878031 guibg=#dfcb69 gui=bold
" hi Title        guifg=gold    guibg=NONE    gui=bold
" hi VertSplit    guifg=#dfcb69 guibg=#1e1e2e gui=bold
" hi Visual       guifg=#89a361 guibg=#13142c gui=italic
" hi VisualNOS    guifg=#89a361 guibg=#13142c gui=italic
" hi WarningMsg   guifg=red guibg=NONE    gui=bold

" General Group
" hi Comment      guifg=#86bbb8 guibg=NONE    gui=italic
" hi MatchParen   guifg=#d2af05 guibg=NONE    gui=bold
" hi Normal       guifg=white   guibg=#1e1e2e gui=NONE
" hi Constant     guifg=#e39014 guibg=NONE    gui=NONE
" hi String       guifg=#0f989b guibg=NONE    gui=NONE
" hi Character    guifg=#549c93 guibg=NONE    gui=NONE
" hi Number       guifg=#eb661b guibg=NONE    gui=NONE
" hi Boolean      guifg=#3bec89 guibg=NONE    gui=bold
" hi Float        guifg=#eb661b guibg=NONE    gui=NONE
" hi Identifier   guifg=#049934 guibg=NONE    gui=NONE
" hi Function     guifg=#d71922 guibg=NONE    gui=bold
" hi Statement    guifg=#e6be56 guibg=NONE    gui=NONE
" hi Conditional  guifg=#e66333 guibg=NONE    gui=NONE
" hi Repeat       guifg=#faa816 guibg=NONE    gui=NONE
" hi Label        guifg=#cc6011 guibg=NONE    gui=NONE
" hi Operator     guifg=white   guibg=NONE    gui=bold
" hi Keyword      guifg=#c1cc1f guibg=NONE    gui=italic
" hi Exception    guifg=#afb72f guibg=NONE    gui=NONE
" hi PreProc      guifg=red     guibg=NONE    gui=bold
" hi Include      guifg=red     guibg=NONE    gui=bold
" hi Define       guifg=red     guibg=NONE    gui=bold
" hi PreCondit    guifg=red     guibg=NONE    gui=bold
" hi Type         guifg=#6480b7 guibg=NONE    gui=NONE
" hi StorageClass guifg=#88b79d guibg=NONE    gui=bold
" hi Structure    guifg=#88b79d guibg=NONE    gui=NONE
" hi Typedef      guifg=#88b79d guibg=NONE    gui=italic
" hi Special      guifg=#1476ad guibg=NONE    gui=NONE
" hi SpecialChar  guifg=#1476ad guibg=NONE    gui=NONE
" hi Tag          guifg=#1476ad guibg=NONE    gui=NONE
" hi Delimiter    guifg=#1bf078 guibg=NONE    gui=NONE
" hi Debug        guifg=#f0111f guibg=#5c6bb1 gui=bold
" hi Underlined   guifg=#0e33dd guibg=NONE    gui=italic
" hi Error        guifg=red     guibg=NONE    gui=bold
" hi Todo         guifg=#0e33dd guibg=#45ce70 gui=NONE

" HTML Group
" hi htmlTag      guifg=#c082a1 guibg=NONE gui=bold
" hi htmlTagName  guifg=#895c73 guibg=NONE gui=NONE

" HAML Group
" hi hamlDocType  guifg=#c082a1 guibg=NONE gui=bold

" Ruby Group
" hi rubyConstant guifg=#e39014 guibg=NONE    gui=NONE
" hi rubyClass    guifg=gold    guibg=NONE    gui=NONE
" hi rubyClassDeclaration guifg=#45ce70 guibg=NONE gui=bold

:hi Normal       guifg=White guibg=grey15
:hi Cursor       guibg=khaki guifg=slategrey
:hi VertSplit    guibg=#c2bfa5 guifg=grey40 gui=none cterm=reverse
:hi Folded       guibg=black guifg=grey40 ctermfg=grey ctermbg=darkgrey
:hi FoldColumn   guibg=black guifg=grey20 ctermfg=4 ctermbg=7
:hi IncSearch    guifg=green guibg=black cterm=none ctermfg=yellow ctermbg=green
:hi ModeMsg      guifg=goldenrod cterm=none ctermfg=brown
:hi MoreMsg      guifg=SeaGreen ctermfg=darkgreen
:hi NonText      guifg=RoyalBlue guibg=grey15 cterm=bold ctermfg=blue
:hi Question     guifg=springgreen ctermfg=green
:hi Search       guibg=peru guifg=wheat cterm=none ctermfg=grey ctermbg=blue
:hi SpecialKey   guifg=yellowgreen ctermfg=darkgreen
:hi StatusLine   guibg=#c2bfa5 guifg=black gui=none cterm=bold,reverse
:hi StatusLineNC guibg=#c2bfa5 guifg=grey40 gui=none cterm=reverse
:hi Title        guifg=gold gui=bold cterm=bold ctermfg=yellow
:hi Statement    guifg=CornflowerBlue ctermfg=lightblue
:hi Visual       gui=none guifg=khaki guibg=olivedrab cterm=reverse
:hi WarningMsg   guifg=salmon ctermfg=1
:hi String       guifg=SkyBlue ctermfg=darkcyan
:hi Comment      term=bold ctermfg=11 guifg=#f84f4f
:hi Constant     guifg=#ffa0a0 ctermfg=brown
:hi Special      guifg=darkkhaki ctermfg=brown
:hi Identifier   guifg=salmon ctermfg=red
:hi Include      guifg=red ctermfg=red
:hi PreProc      guifg=gold guibg=NONE ctermfg=red
:hi Operator     guifg=Red ctermfg=Red
:hi Define       guifg=gold gui=bold ctermfg=yellow
:hi Type         guifg=CornflowerBlue ctermfg=2
:hi Function     guifg=navajowhite ctermfg=brown
:hi Structure    guifg=green ctermfg=green
:hi LineNr       guifg=grey50 ctermfg=3
:hi Ignore       guifg=grey40 cterm=bold ctermfg=7
:hi Todo         guifg=orangered guibg=yellow2
:hi Directory    ctermfg=darkcyan
:hi ErrorMsg     cterm=bold guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1
:hi VisualNOS    cterm=bold,underline
:hi WildMenu     ctermfg=0 ctermbg=3
:hi DiffAdd      ctermbg=4
:hi DiffChange   ctermbg=5
:hi DiffDelete   cterm=bold ctermfg=4 ctermbg=6
:hi DiffText     cterm=bold ctermbg=1
:hi Underlined   cterm=underline ctermfg=5
:hi Error        guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1
:hi SpellErrors  guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1
