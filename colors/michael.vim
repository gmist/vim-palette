" Vim color file
" Name: michael.vim
" Author: oyenamit <oyenamit@gmail.com>
" License: GNU GPL <http://www.gnu.org/licenses/gpl.html>
" Credits: Background color has been shamelessly copied from the "inkpot" color scheme.
" Everything else has been customized.
" Install: To install, copy to ~/.vim/colors directory.
" After installation, enable it with :colorscheme michael
" Description: This scheme is currently meant to work with GVim only.
" Further versions will enable support for terminals.
"


let colors_name = "michael"


if has("gui_running")

   " Set everything only if we are in GUI mode.
   set background=dark
   hi clear

   if exists("syntax_on")
      syntax reset
   endif


   hi Normal         gui=NONE       guifg=WHITE       guibg=#1e1e27
   hi Cursor         gui=NONE       guifg=bg          guibg=fg
   hi CursorLine     gui=NONE       guifg=NONE        guibg=#2e2e37
   hi Search         gui=NONE       guifg=#000000     guibg=#9D6F4D
   hi IncSearch      gui=NONE       guifg=bg          guibg=fg
   hi Visual         gui=NONE       guifg=#000000     guibg=#669999
   hi Error          gui=NONE       guifg=#ffffff     guibg=#ff0000
   hi def link       ErrorMsg       Error
   hi WarningMsg     gui=NONE       guifg=#000000     guibg=#ff8080
   hi ModeMsg        gui=NONE       guifg=white       guibg=NONE
   hi MoreMsg        gui=NONE       guifg=#409090     guibg=NONE
   hi Question       gui=NONE       guifg=#9FEC8E     guibg=NONE
   hi Directory      gui=NONE       guifg=#AB526B     guibg=NONE
   hi VertSplit      gui=NONE       guifg=black       guibg=darkgrey
   hi StatusLine     gui=NONE       guifg=black       guibg=white
   hi StatusLineNC   gui=NONE       guifg=black       guibg=darkgrey
   hi Folded         gui=NONE       guifg=#FFCDCC     guibg=#3B3B3B
   hi FoldColumn     gui=NONE       guifg=#FFCDCC     guibg=#3B3B3B
   hi Title          gui=NONE       guifg=#409090     guibg=NONE
   hi SpecialKey     gui=NONE       guifg=#FF9900     guibg=NONE
   hi LineNr         gui=NONE       guifg=black       guibg=darkgrey
   hi MatchParen     gui=NONE       guifg=white       guibg=DarkCyan
   hi NonText        gui=BOLD       guifg=#6600FF     guibg=NONE
   hi Ignore         guifg=bg
   hi Comment        gui=NONE       guifg=#75715e     guibg=NONE
   hi String         gui=NONE       guifg=#af4f4b     guibg=NONE
   hi Constant       gui=NONE       guifg=#af4f4b     guibg=NONE
   hi Type           gui=NONE       guifg=#006EDB     guibg=NONE
   hi Statement      gui=NONE       guifg=#F92672     guibg=NONE
   hi PreProc        gui=NONE       guifg=#409090     guibg=NONE
   hi Identifier     gui=NONE       guifg=#AF804B     guibg=NONE
   hi def link       Function       Identifier
   hi Special        gui=NONE       guifg=#798E9A     guibg=NONE
   hi Todo           gui=NONE       guifg=black       guibg=#75715e
   hi Underlined     gui=UNDERLINE  guifg=#42A1FF     guibg=NONE
   hi SpellBad       gui=undercurl  guisp=Red
   hi SpellRare      gui=undercurl  guisp=LightMagenta
   hi SpellLocal     gui=undercurl  guisp=LightGray
   hi SpellCap       gui=undercurl  guisp=Cyan
   hi DiffText       gui=NONE       guifg=BLACK       guibg=#A06A4B
   hi DiffChange     gui=NONE       guifg=BLACK       guibg=#EDCA9B
   hi DiffDelete     gui=NONE       guifg=Black       guibg=#C44D58
   hi DiffAdd        gui=NONE       guifg=BLACK       guibg=#4ECDC4
   hi Pmenu          guifg=Cyan     guibg=Black
   hi PmenuSel                      guibg=DarkGrey
   hi PmenuSbar                     guibg=DarkGrey
   hi PmenuThumb     guifg=Cyan
   hi def link       cSpecialCharacter                Special
   hi def link       cFormat                          Special
   hi NERDTreeRO     guifg=#BCA297
   hi def link       NERDTreeFile                     Normal
   hi def link       NERDTreeExecFile                 PreProc
   hi def link       NERDTreePart                     Special
   hi def link       NERDTreePartFile                 Special
   hi def link       NERDTreeClosable                 Special
   hi def link       NERDTreeDirSlash                 Special
   hi def link       NERDTreeOpenable                 Special
   hi def link       NERDTreeDir                      Directory
   hi def link       NERDTreeUp                       NERDTreeDir
   hi def link       NERDTreeCWD                      LineNr
   hi def link       NERDTreeLink                     Question
   hi def link       NERDTreeFlag                     Ignore
   hi def link       NERDTreeBookmarksLeader          Ignore
   hi def link       NERDTreeBookmarksHeader          LineNr
   hi def link       NERDTreeBookmarkName             Identifier
   hi def link       NERDTreeBookmark                 Normal
   hi def link       NERDTreeHelp                     String
   hi def link       NERDTreeHelpKey                  Identifier
   hi def link       NERDTreeHelpCommand              Identifier
   hi def link       NERDTreeHelpTitle                Macro
   hi def link       NERDTreeToggleOn                 Question
   hi def link       NERDTreeToggleOff                WarningMsg

endif
