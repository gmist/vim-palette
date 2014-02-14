" Vim color file: sunny_day.vim
"
" Maintainer:  Marcin Szamotulksi [mszamot [at] gmail [dot] com
" Last Change:Tue Sep 06, 2011 at 02:16  +0100
" Based On: rastafari.vim (but now quite far away from that)
"

hi clear
if exists("syntax on")
    syntax reset
endif
let g:colors_name="blue_sky"

let s:current_bg = &bg
" Change: light/dark background: use 'set bg=dark' or 'set bg=light'.

" DARK BACKGROUND {{{1
if s:current_bg == 'dark'
" Normal colors {{{2
"hi Normal       guifg=#aaaaaa guibg=#000000 gui=none term=none     cterm=none    ctermfg=grey ctermbg=black
hi Normal       guifg=#aaaaaa guibg=#080808 gui=none term=none     cterm=none    ctermfg=grey 		ctermbg=232
hi Title        guifg=#ffd700 guibg=#080808 gui=bold term=bold     cterm=bold    ctermfg=yellow		ctermbg=232
hi Ignore       guifg=#888888 guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=darkgrey
hi Comment      guifg=#03BB00 guibg=bg      gui=none term=none     cterm=none    ctermfg=darkgreen
hi LineNr       guifg=#ffd700 guibg=bg      gui=bold term=none     cterm=none    ctermfg=yellow		
hi CursorLineNr guifg=#eeee10 guibg=bg      gui=bold term=none     cterm=none    ctermfg=89		
hi Include      guifg=#666666 guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=darkgrey
hi Define       guifg=#666666 guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=darkgrey
hi Macro        guifg=#666666 guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=darkgrey
hi PreProc      guifg=#6C6C6C guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=darkgrey
hi PreCondit    guifg=#666666 guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=darkgrey
hi NonText      guifg=#eeee10 guibg=bg      gui=none term=none     cterm=bold    ctermfg=236
hi SpecialKey   guifg=#eeee10 guibg=bg      gui=none term=none     cterm=none    ctermfg=236
hi Directory    guifg=#870087 guibg=bg      gui=bold term=none     cterm=bold    ctermfg=90
hi Type         guifg=#ffffff guibg=bg      gui=none term=none     cterm=none    ctermfg=230
hi Todo		guifg=#03BB00 guibg=bg	    gui=bold term=none	   cterm=bold	 ctermfg=darkgreen      ctermbg=bg
hi String       guifg=#af0057 guibg=bg      gui=none term=none     cterm=none    ctermfg=125
hi Constant     guifg=#700000 guibg=bg      gui=none term=none     cterm=none    ctermfg=darkred
hi Special      guifg=#870087 guibg=bg      gui=none term=none     cterm=none    ctermfg=90
hi Number       guifg=#5f00ff guibg=bg      gui=none term=none     cterm=none    ctermfg=57
hi MoreMsg      guifg=#80ff80 guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=green
hi Identifier   guifg=#dddddd guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=230
hi Conditional  guifg=#ffffd7 guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=230
hi Repeat       guifg=#720084 guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=230
hi Statement    guifg=#870087 guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=90
hi Label        guifg=#dddddd guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=grey
hi Operator     guifg=white   guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=230
hi Function     guifg=white   guibg=bg      gui=none term=none     cterm=none    ctermfg=230
hi MatchParen   guifg=white   guibg=#5f00ff gui=none term=none     cterm=none    ctermfg=230        ctermbg=blue
hi ErrorMsg     guifg=#eb0000 guibg=bg	    gui=bold term=none     cterm=none    ctermfg=yellow     ctermbg=red
hi WildMenu     guifg=#5f00ff guibg=#020202 gui=bold term=none     cterm=bold    ctermfg=57         ctermbg=233
hi Folded  	guifg=#5f00ff guibg=#1c1c1c 			   		 ctermfg=57 	    ctermbg=233	
hi FoldColumn   guifg=#5CB80C guibg=#1c1c1c 			   cterm=none    ctermfg=green 	    ctermbg=233 
hi SignColumn   guifg=#eeee10 guibg=bg      gui=none term=none     cterm=none    ctermfg=yellow     ctermbg=bg
hi Search       guifg=#dddddd guibg=#0000ff gui=none term=none     cterm=none    ctermfg=230        ctermbg=blue
hi IncSearch    guifg=#dddddd guibg=#0000ff gui=none term=none     cterm=none    ctermfg=230        ctermbg=blue
hi WarningMsg   guifg=#ffff60 guibg=#008800 gui=bold term=none     cterm=bold    ctermfg=178        ctermbg=234
hi Question     guifg=#008800               gui=bold term=standout cterm=bold    ctermfg=darkgreen  ctermbg=234
hi Pmenu        guifg=#80ff80 guibg=#008800 gui=bold term=standout cterm=none    ctermfg=white      ctermbg=236
hi PmenuSel     guifg=#eeee10 guibg=#aa0000 gui=bold term=standout cterm=bold    ctermfg=darkblue   ctermbg=236
hi PmenuThumb   guifg=#eeee10 guibg=#aa0000 gui=bold term=standout cterm=bold    ctermfg=darkblue   ctermbg=darkblue
hi PmenuSbar    guifg=#eeee10 guibg=#aa0000 gui=bold term=standout cterm=bold    ctermfg=white      ctermbg=white
hi Visual                     guibg=#333333 gui=none term=none     cterm=none                       ctermbg=236
hi TabLineFill  guifg=#eeee10 guibg=#121212 gui=bold term=bold     cterm=none    ctermfg=yellow	    ctermbg=247
hi TabLine      guifg=#eeee10 guibg=#121212 gui=bold term=standout cterm=none    ctermfg=yellow	    ctermbg=247
hi TabLine      guifg=#eeee10 guibg=#121212 gui=bold term=bold     cterm=none    ctermfg=yellow	    ctermbg=247
hi TabLineSel   guifg=#ffff60 guibg=#121212 gui=bold term=none     cterm=bold    ctermfg=226 	    ctermbg=240
hi VertSplit    guifg=#6f6f6f guibg=#101010 gui=none term=none     cterm=none    ctermfg=darkgreen  ctermbg=234
hi StatusLine   guifg=#00a7b0 guibg=#020202 gui=bold term=none     cterm=bold    ctermfg=38         ctermbg=233
hi StatusLineNC 	      guibg=#020202 gui=none term=none     cterm=bold    ctermfg=grey 	    ctermbg=233
hi CursorColumn guifg=NONE    guibg=#111111 gui=none term=none     cterm=none    ctermfg=darkgrey   ctermbg=grey
hi CursorLine   guifg=NONE    guibg=#2f2f2f gui=none term=none     cterm=none    ctermfg=none 	    ctermbg=235
hi ColorColumn		      guibg=#2f2f2f							    ctermbg=235
" Specific for c {{{2
hi cOctalZero    guifg=#870087 guibg=bg      gui=none term=none     cterm=none    ctermfg=90
hi cFormat       guifg=#870087 guibg=bg      gui=none term=none     cterm=none    ctermfg=90
" Specific for diff {{{2
" hi DiffAdd      guifg=#ffff33 guibg=#404010 gui=bold term=none cterm=none ctermfg=green
" hi DiffChange                 guibg=#202020 gui=bold term=none            ctermfg=darkgrey
" hi DiffText     guifg=#3333ff guibg=#100040 gui=bold term=none cterm=none ctermfg=blue
" hi DiffDelete   guifg=#ff0000 guibg=#401010 gui=bold term=none cterm=none ctermfg=red
hi DiffAdd        cterm=none           	ctermfg=15  ctermbg=56  guifg=white	guibg=SlateBlue4 gui=bold
hi DiffDelete     cterm=none           	ctermfg=255  ctermbg=125 guifg=white	guibg=DeepPink4
hi DiffChange     cterm=none           	ctermfg=173 ctermbg=125	guifg=salmon	guibg=DeepPink4
hi DiffText       cterm=bold           	ctermfg=230 ctermbg=125 guifg=white	guibg=DeepPink4
hi diffLine     guifg=#444444 guibg=bg gui=bold term=none cterm=bold ctermfg=darkgrey
hi diffOldLine  guifg=#444444 guibg=bg gui=none term=none cterm=none ctermfg=darkgrey
hi diffOldFile  guifg=#444444 guibg=bg gui=none term=none cterm=none ctermfg=darkgrey
hi diffNewFile  guifg=#444444 guibg=bg gui=none term=none cterm=none ctermfg=darkgrey
hi diffAdded    guifg=#80ff80 guibg=bg gui=none term=none cterm=none ctermfg=green
hi diffRemoved  guifg=#ff0000 guibg=bg gui=none term=none cterm=none ctermfg=red
hi diffChanged  guifg=#0000ff guibg=bg gui=none term=none cterm=none ctermfg=blue
" Specific for doxygen {{{2
hi doxygenStart                guifg=#80ff80 guibg=bg gui=bold term=none cterm=none ctermfg=lightgreen
hi doxygenStartL               guifg=#80ff80 guibg=bg gui=bold term=none cterm=none ctermfg=lightgreen
hi doxygenBriefLine            guifg=#00aa00 guibg=bg gui=none term=none cterm=none ctermfg=darkgreen
hi doxygenBrief                guifg=#00aa00 guibg=bg gui=none term=none cterm=none ctermfg=darkgreen
hi doxygenBriefL               guifg=#00aa00 guibg=bg gui=none term=none cterm=none ctermfg=darkgreen
hi doxygenPrevL                guifg=#80ff80 guibg=bg gui=bold term=none cterm=none ctermfg=lightgreen
hi doxygenComment              guifg=#80ff80 guibg=bg gui=bold term=none cterm=none ctermfg=lightgreen
hi doxygenCommentL             guifg=#00aa00 guibg=bg gui=none term=none cterm=none ctermfg=darkgreen
hi doxygenSpecialMultiLineDesc guifg=#00aa00 guibg=bg gui=none term=none cterm=none ctermfg=darkgreen
hi doxygenSpecial              guifg=#80ff80 guibg=bg gui=none term=none cterm=none ctermfg=lightgreen
hi doxygenParam                guifg=#80ff80 guibg=bg gui=bold term=none cterm=none ctermfg=lightgreen
hi doxygenParamName            guifg=#3333ff guibg=bg gui=bold term=none cterm=none ctermfg=blue
hi doxygenParamDirection       guifg=#ffff60 guibg=bg gui=bold term=none cterm=none ctermfg=yellow
hi doxygenArgumentWord         guifg=#3333ff guibg=bg gui=none term=none cterm=none ctermfg=blue
hi doxygenCodeWord             guifg=#3333ff guibg=bg gui=bold term=none cterm=none ctermfg=blue
hi doxygenHyperLink            guifg=#3333ff guibg=bg gui=bold term=none cterm=none ctermfg=blue
" Specific for help files {{{2
hi helpHyperTextJump guifg=#5f00ff guibg=bg gui=none term=none cterm=none ctermfg=57
hi helpBar  guifg=#5f00ff ctermfg=57
hi helpStar guifg=#870087 ctermfg=90

" Specific for Perl {{{2
hi perlSharpBang        guifg=#80ff80 guibg=bg gui=bold term=standout cterm=bold ctermfg=lightgreen
hi perlStatement        guifg=#aaaaaa guibg=bg gui=none term=none     cterm=none ctermfg=grey
hi perlStatementStorage guifg=#dddddd guibg=bg gui=bold term=none     cterm=none ctermfg=230
hi perlVarPlain         guifg=#aaaaaa guibg=bg gui=none term=none     cterm=none ctermfg=grey
hi perlVarPlain2        guifg=#aaaaaa guibg=bg gui=none term=none     cterm=none ctermfg=grey
" Specific for Ruby {{{2
hi rubySharpBang guifg=#80ff80 guibg=bg gui=bold term=none cterm=bold ctermfg=lightgreen
" Specific for the statusline {{{2
" My ~/.vimrc uses User1 and User2 in active statusline.
hi User1 guifg=gold1     guibg=#080808 gui=bold        	    cterm=bold ctermfg=226 ctermbg=233 			 
hi User2 guifg=#005fa7   guibg=#080808	        	    cterm=none ctermfg=24  ctermbg=233 			 
" My ~/.vimrc uses User3 and User4 in non-active statusline.
hi User4 guifg=#66ff66 guibg=#008000 gui=bold term=none     cterm=bold ctermfg=lightgreen ctermbg=lightgreen
" Specific for netrw {{{2
hi netrwTilde   guifg=#aaaaaa guibg=bg      gui=bold term=none cterm=none ctermfg=grey
hi netrwExe     guifg=#aa2222 guibg=bg      gui=none term=none cterm=none ctermfg=darkred
hi netrwTags    guifg=#666666 guibg=bg      gui=bold term=bold cterm=bold ctermfg=darkgrey
hi netrwTilde   guifg=#666666 guibg=bg      gui=bold term=bold cterm=bold ctermfg=darkgrey
hi netrwSymLink guifg=#1111ff guibg=bg      gui=none term=none cterm=none ctermfg=blue
hi netrwList    guifg=#aaaaaa guibg=#000000 gui=none term=none cterm=none ctermfg=grey
" Specific for confluence wiki {{{2
hi confluenceHeadingMarker guifg=#aa2222 guibg=bg gui=none term=none cterm=none ctermfg=darkred
hi confluenceHeading       guifg=#ffff60 guibg=bg gui=bold term=none cterm=none ctermfg=yellow
hi confluenceVerbatim      guifg=#dddddd guibg=bg gui=none term=none cterm=none ctermfg=230
" Specific for HTML {{{2
hi htmlLink	gui=none guifg=#5f00ff guibg=bg term=none cterm=none ctermfg=57
hi htmlItalic	gui=none guifg=#5f00ff		term=none ctermfg=57 ctermbg=none
hi htmlTag	term=bold ctermfg=244 ctermbg=none
hi htmlTagN	term=bold ctermfg=244 ctermbg=none
hi htmlEndTag	term=bold ctermfg=244 ctermbg=none
hi htmlArg	term=none ctermfg=244 ctermbg=none
hi htmlTagName	term=bold ctermfg=244 ctermbg=none
hi htmlString	term=none ctermfg=248 ctermbg=none
" Specific for Jinja2 {{{2
hi jinjaVariable cterm=bold ctermfg=242 
hi jinjaOperator cterm=bold ctermfg=242 
hi jinjaAttribute cterm=bold ctermfg=242 
" Specific for CSS {{{2
hi cssTagName	gui=bold guifg=#870087 cterm=bold ctermfg=90 ctermbg=none 
hi cssClassName gui=none guifg=#870087 cterm=none ctermfg=90 ctermbg=none 
hi cssTableProp	gui=none guifg=fg guibg=bg cterm=none ctermfg=none ctermbg=none
hi cssUIProp	gui=none guifg=fg guibg=bg cterm=none ctermfg=none ctermbg=none
hi cssPagingProp gui=none guifg=fg guibg=bg cterm=none ctermfg=none ctermbg=none
hi cssFontDescriptorProp gui=none guifg=fg guibg=bg cterm=none ctermfg=none ctermbg=none
hi cssValueLength gui=none guifg=white guibg=bg term=none ctermfg=white ctermbg=none
hi cssDefinition gui=none guifg=white guibg=bg term=none ctermfg=white ctermbg=none
" Specific for rst (ReST) {{{2
hi rstEmphasis gui=none guifg=#5f00ff guibg=bg term=none cterm=none ctermfg=57
" Specific for YankRing {{{2
hi yankringItemNumber guifg=#000070 guibg=bg      gui=none term=none     cterm=none    ctermfg=125
" Spell checking {{{2
if version >= 700
  hi SpellBad   guisp=red    gui=undercurl guifg=NONE guibg=NONE ctermfg=196 ctermbg=NONE term=underline cterm=NONE
  hi SpellCap   guisp=yellow gui=undercurl guifg=NONE guibg=NONE ctermfg=196 ctermbg=NONE term=underline cterm=NONE
  hi SpellRare  guisp=blue   gui=undercurl guifg=NONE guibg=NONE ctermfg=203 ctermbg=NONE term=underline cterm=NONE
  hi SpellLocal guisp=orange gui=undercurl guifg=NONE guibg=NONE ctermfg=202 ctermbg=NONE term=underline cterm=NONE
endif
" Cursor color for GUI {{{2
hi Cursor   guifg=#000000 guibg=#ffffff
hi lCursor  guifg=#000000 guibg=#80ff80
hi CursorIM guifg=#000000 guibg=#0090ff
" Specific for TeX {{{2
hi texSectionMarker	guifg=#870087 guibg=bg gui=bold	cterm=bold	ctermfg=90
hi texSection		guifg=#ffffff guibg=bg gui=none cterm=none	ctermfg=230
hi texDocType		guifg=#870087 guibg=bg gui=none cterm=none	ctermfg=90
hi texInputFile		guifg=#870087 guibg=bg gui=none cterm=none	ctermfg=90
hi texDocTypeArgs	ctermfg=161	
hi texInputFileopt	ctermfg=161
hi texType		guifg=#5f00ff guibg=bg gui=none cterm=none	ctermfg=57
hi texMath		guifg=#5f00ff guibg=bg gui=none cterm=none	ctermfg=57
hi texStatement 	guifg=#8700af guibg=bg gui=bold cterm=none	ctermfg=91
hi Conceal 		guifg=#8700af guibg=bg gui=none cterm=none	ctermfg=91	ctermbg=232
hi link texComment	Comment
hi texString		guifg=#2E68CC	ctermfg=39	
hi texSpecialChar	ctermfg=39	
hi texOnlyMath		ctermfg=27
hi texTikzCoord 	guifg=#5730CC 	ctermbg=61

" highlight texTikz			ctermfg=204	ctermbg=233
" Specific for ATP {{{2
highlight atp_label_sectionnr	ctermfg=white
" Specific for ywtxt {{{2
hi ywtxt_bold 		cterm=bold 	gui=bold
hi ywtxt_italic 	cterm=italic  	gui=italic
hi ywtxt_underline 	cterm=underline gui=underline

" Specific for Vim {{{2
hi vimCommentTitle	gui=bold guifg=#03BB00 guibg=bg	    cterm=bold ctermfg=darkgreen
hi vimFuncKey		gui=bold guifg=#5f00af guibg=bg	    cterm=bold ctermfg=55
hi vimCommand		gui=bold guifg=#870087		    cterm=bold ctermfg=90
hi link vimGroupName Type	
" Specific for Python {{{2
hi pythonSpaceError ctermbg=90
hi link pythonDottedName pythonDecorator
hi jediFunction	    guifg=#870087 guibg=bg term=none ctermbg=bg ctermfg=90
hi jediFat	    guifg=#5f00ff guibg=bg term=none ctermbg=bg ctermfg=57
hi jediFatSymbol    guifg=#5f00ff guibg=bg term=none ctermbg=bg ctermfg=57
hi jediSpace	    guifg=#5f00ff guibg=bg term=none ctermbg=bg ctermfg=57
" Specific for rst {{{2
hi link rstExDirective Normal
hi link rstSphinxType Comment
" Specific for NERDTree {{{2
hi NERDTreeRO ctermfg=240 guifg=#585858
" Specific fot SelectBuf {{{2
hi link SelBufBufIndicators Type
hi link SelBufBufName Statement
hi link SelBufBufNumber Number
hi link SelBufPath Normal
hi link SelBufSummary Comment
hi link SelBufKeyWords Comment
hi link SelBufKeyValues vimComment

" LIGHT BACKGROUND {{{1
else 
" Normal: colors {{{2
hi Normal       guifg=black   guibg=white gui=none term=none       cterm=none    ctermfg=235 		ctermbg=white
hi Conceal	guifg=#5f00ff guibg=white					 ctermfg=57		ctermbg=white
hi Title        guifg=#dd0049 guibg=#ffffff gui=bold term=bold     cterm=bold    ctermfg=161		ctermbg=white
hi Ignore       guifg=#888888 guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=darkgrey
hi Comment      guifg=#949494 guibg=bg      gui=none term=none     cterm=none    ctermfg=247
hi LineNr       guifg=#000000 guibg=bg      gui=bold term=none     cterm=bold    ctermfg=black		
hi CursorLineNr guifg=#870087 guibg=bg      gui=bold term=none     cterm=bold    ctermfg=90		
hi Include      guifg=#666666 guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=darkgrey
hi Define       guifg=#666666 guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=darkgrey
hi Macro        guifg=#666666 guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=darkgrey
hi PreProc      guifg=#666666 guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=darkgrey
hi PreCondit    guifg=#666666 guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=darkgrey
hi NonText      guifg=#00aa00 guibg=bg      gui=bold term=none     cterm=none    ctermfg=244
hi SpecialKey   guifg=#d5034d guibg=bg      gui=none term=none     cterm=none    ctermfg=244
hi Type         guifg=#5730CC guibg=bg      gui=bold term=none     cterm=bold    ctermfg=233
hi Directory    guifg=#CC5118 guibg=bg      gui=bold term=none     cterm=none    ctermfg=202
hi Todo		guifg=#3e00c4 guibg=bg	    gui=bold term=none	   cterm=bold    ctermfg=blue	ctermbg=white
hi String       guifg=#000070 guibg=bg      gui=none term=none     cterm=none    ctermfg=161
hi Constant     guifg=#700000 guibg=bg      gui=none term=none     cterm=none    ctermfg=darkred
hi Special      guifg=#870087 guibg=bg      gui=none term=none     cterm=none    ctermfg=90
hi Number       guifg=#5f00ff guibg=bg      gui=none term=none     cterm=none    ctermfg=57
hi MoreMsg      guifg=#dd0049 guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=green
hi Identifier   guifg=#2E004B guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=234
hi Conditional  guifg=#707070 guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=234
hi Repeat       guifg=#707070 guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=234
hi Statement    guifg=#000080 guibg=bg      gui=bold term=bold     cterm=none    ctermfg=93
hi Label        guifg=#707070 guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=grey
hi Operator     guifg=#444444 guibg=bg      gui=bold term=bold     cterm=bold    ctermfg=233
hi Function     guifg=#2d008e guibg=bg      gui=none term=none     cterm=none    ctermfg=56
hi MatchParen   guifg=#ffffff guibg=#4800FF gui=none term=none     cterm=none    ctermfg=233            ctermbg=blue
hi ErrorMsg     guifg=#eb0000 guibg=bg	    gui=bold term=none     cterm=none    ctermfg=white          ctermbg=red
hi WildMenu     guifg=#5f00ff guibg=white   gui=bold term=none     cterm=bold    ctermfg=57             ctermbg=white
hi Folded  	guifg=#ffffff guibg=#545a98 			   cterm=none	 ctermfg=242	        ctermbg=252
hi FoldColumn   guifg=#1c1c1c guibg=#545a98 			   cterm=none    ctermfg=232 	        ctermbg=247 
hi SignColumn   guifg=#b10002 guibg=bg      gui=none term=none     cterm=none    ctermfg=red 	        ctermbg=bg
hi Search       guifg=#ffffff guibg=#0050f0 gui=none term=none     cterm=none    ctermfg=234            ctermbg=blue
hi IncSearch    guifg=#ffffff guibg=#0050f0 gui=none term=none     cterm=none    ctermfg=234            ctermbg=blue
hi WarningMsg   guifg=#ff5900 guibg=#ffffff gui=bold term=none     cterm=bold    ctermfg=white          ctermbg=209
hi Question     guifg=#008800               gui=bold term=standout cterm=none    ctermfg=126            ctermbg=white
hi Pmenu        guifg=#ffffff guibg=#4800ff gui=bold term=standout cterm=none    ctermfg=white          ctermbg=236
hi PmenuSel     guifg=#ffffff guibg=#1a005d gui=bold term=standout cterm=bold    ctermfg=darkblue       ctermbg=236
hi PmenuThumb   guifg=#1a005d guibg=#1a005d gui=bold term=standout cterm=bold    ctermfg=darkblue       ctermbg=darkblue
hi PmenuSbar    guifg=#ffffff guibg=#ffffff gui=bold term=standout cterm=bold    ctermfg=white          ctermbg=white
hi Visual                     guibg=#c6c6c6 gui=none term=standout cterm=none                           ctermbg=253
hi TabLineFill  guifg=#eeee10 guibg=#121212 gui=bold term=bold     cterm=bold    ctermfg=16	        ctermbg=249
hi TabLine      guifg=#eeee10 guibg=#121212 gui=bold term=standout cterm=bold    ctermfg=16	        ctermbg=249
hi TabLine      guifg=#eeee10 guibg=#121212 gui=bold term=bold     cterm=bold    ctermfg=16	        ctermbg=249
hi TabLineSel   guifg=#ffff60 guibg=#121212 gui=bold term=none     cterm=bold    ctermfg=white 	        ctermbg=250
hi VertSplit    guifg=#a3a3a3 guibg=#ffffff gui=none term=none     cterm=none    ctermfg=232 	        ctermbg=253
hi StatusLine   guifg=#000000 guibg=#d6d6d6 gui=bold term=none     cterm=bold    ctermfg=232	        ctermbg=248
hi StatusLineNC guifg=#000000 guibg=#d6d6d6 gui=none   		   cterm=bold    ctermfg=238 	        ctermbg=248
hi CursorColumn guifg=NONE    guibg=#111111 gui=none term=none     cterm=none    ctermfg=darkgrey       ctermbg=darkgrey
hi CursorLine   guifg=NONE    guibg=#d2d2d2 gui=none term=none     cterm=none    ctermfg=none 	        ctermbg=252
hi ColorColumn		      guibg=#d2d2d2								ctermbg=252
" Specific for c {{{2                                                                                   
hi cOctalZero    guifg=#870087 guibg=bg      gui=none term=none     cterm=none    ctermfg=90    
hi cFormat       guifg=#870087 guibg=bg      gui=none term=none     cterm=none    ctermfg=90
" Specific for diff {{{2
" hi DiffAdd      guifg=#ffff33 guibg=#404010 gui=bold term=none cterm=none ctermfg=green
" hi DiffChange                 guibg=#202020 gui=bold term=none            ctermfg=darkgrey
" hi DiffText     guifg=#3333ff guibg=#100040 gui=bold term=none cterm=none ctermfg=blue
" hi DiffDelete   guifg=#ff0000 guibg=#401010 gui=bold term=none cterm=none ctermfg=red
hi DiffAdd        cterm=none           	ctermfg=15  ctermbg=56  guifg=white	guibg=SlateBlue4 gui=bold
hi DiffDelete     cterm=none           	ctermfg=19  ctermbg=56	guifg=VioletRed	guibg=SlateBlue4
hi DiffChange     cterm=none           	ctermfg=173 ctermbg=125	guifg=salmon	guibg=DeepPink4
hi DiffText       cterm=bold           	ctermfg=234 ctermbg=125 guifg=white	guibg=DeepPink4
hi diffLine     guifg=#444444 guibg=bg gui=bold term=none cterm=bold ctermfg=darkgrey
hi diffOldLine  guifg=#444444 guibg=bg gui=none term=none cterm=none ctermfg=darkgrey
hi diffOldFile  guifg=#444444 guibg=bg gui=none term=none cterm=none ctermfg=darkgrey
hi diffNewFile  guifg=#444444 guibg=bg gui=none term=none cterm=none ctermfg=darkgrey
hi diffAdded    guifg=#80ff80 guibg=bg gui=none term=none cterm=none ctermfg=green
hi diffRemoved  guifg=#ff0000 guibg=bg gui=none term=none cterm=none ctermfg=red
hi diffChanged  guifg=#0000ff guibg=bg gui=none term=none cterm=none ctermfg=blue
" Specific for doxygen {{{2
hi doxygenStart                guifg=#80ff80 guibg=bg gui=bold term=none cterm=none ctermfg=lightgreen
hi doxygenStartL               guifg=#80ff80 guibg=bg gui=bold term=none cterm=none ctermfg=lightgreen
hi doxygenBriefLine            guifg=#00aa00 guibg=bg gui=none term=none cterm=none ctermfg=darkgreen
hi doxygenBrief                guifg=#00aa00 guibg=bg gui=none term=none cterm=none ctermfg=darkgreen
hi doxygenBriefL               guifg=#00aa00 guibg=bg gui=none term=none cterm=none ctermfg=darkgreen
hi doxygenPrevL                guifg=#80ff80 guibg=bg gui=bold term=none cterm=none ctermfg=lightgreen
hi doxygenComment              guifg=#80ff80 guibg=bg gui=bold term=none cterm=none ctermfg=lightgreen
hi doxygenCommentL             guifg=#00aa00 guibg=bg gui=none term=none cterm=none ctermfg=darkgreen
hi doxygenSpecialMultiLineDesc guifg=#00aa00 guibg=bg gui=none term=none cterm=none ctermfg=darkgreen
hi doxygenSpecial              guifg=#80ff80 guibg=bg gui=none term=none cterm=none ctermfg=lightgreen
hi doxygenParam                guifg=#80ff80 guibg=bg gui=bold term=none cterm=none ctermfg=lightgreen
hi doxygenParamName            guifg=#3333ff guibg=bg gui=bold term=none cterm=none ctermfg=blue
hi doxygenParamDirection       guifg=#ffff60 guibg=bg gui=bold term=none cterm=none ctermfg=yellow
hi doxygenArgumentWord         guifg=#3333ff guibg=bg gui=none term=none cterm=none ctermfg=blue
hi doxygenCodeWord             guifg=#3333ff guibg=bg gui=bold term=none cterm=none ctermfg=blue
hi doxygenHyperLink            guifg=#3333ff guibg=bg gui=bold term=none cterm=none ctermfg=blue
" Specific for help files {{{2
hi helpHyperTextJump guifg=#5f00ff guibg=bg gui=none term=none cterm=none ctermfg=57
hi helpBar  guifg=#5f00ff ctermfg=57
hi helpStar guifg=#870087 ctermfg=90

" Specific for Perl {{{2
hi perlSharpBang        guifg=#80ff80 guibg=bg gui=bold term=standout cterm=bold ctermfg=lightgreen
hi perlStatement        guifg=#aaaaaa guibg=bg gui=none term=none     cterm=none ctermfg=grey
hi perlStatementStorage guifg=#707070 guibg=bg gui=bold term=none     cterm=none ctermfg=234
hi perlVarPlain         guifg=#aaaaaa guibg=bg gui=none term=none     cterm=none ctermfg=grey
hi perlVarPlain2        guifg=#aaaaaa guibg=bg gui=none term=none     cterm=none ctermfg=grey
" Specific for Ruby {{{2
hi rubySharpBang guifg=#80ff80 guibg=bg gui=bold term=none cterm=bold ctermfg=lightgreen
" Specific for the statusline {{{2
hi User1 	guifg=#000000 guibg=#d6d6d6 gui=bold        	    cterm=bold ctermfg=54  ctermbg=248
hi User2 	guifg=#000000 guibg=#d6d6d6	        	    cterm=bold ctermfg=161 ctermbg=248
hi User3 	guifg=#000000 guibg=#d6d6d6 gui=none        	    cterm=bold ctermfg=125 ctermbg=248
hi User4 	guifg=#000000 guibg=#d6d6d6 gui=bold term=none      cterm=bold ctermfg=darkgreen ctermbg=248
" Specific for netrw {{{2
hi netrwTilde   guifg=#aaaaaa guibg=bg      gui=bold term=none cterm=none ctermfg=grey
hi netrwExe     guifg=#aa2222 guibg=bg      gui=none term=none cterm=none ctermfg=darkred
hi netrwTags    guifg=#666666 guibg=bg      gui=bold term=bold cterm=bold ctermfg=darkgrey
hi netrwTilde   guifg=#666666 guibg=bg      gui=bold term=bold cterm=bold ctermfg=darkgrey
hi netrwSymLink guifg=#1111ff guibg=bg      gui=none term=none cterm=none ctermfg=blue
hi netrwList    guifg=#aaaaaa guibg=#000000 gui=none term=none cterm=none ctermfg=grey
" Specific for confluence wiki {{{2
hi confluenceHeadingMarker guifg=#aa2222 guibg=bg gui=none term=none cterm=none ctermfg=darkred
hi confluenceHeading       guifg=#ffff60 guibg=bg gui=bold term=none cterm=none ctermfg=yellow
hi confluenceVerbatim      guifg=#dddddd guibg=bg gui=none term=none cterm=none ctermfg=234
" Specific for HTML {{{2
hi htmlLink	guifg=#3333ff guibg=bg gui=none term=none cterm=none ctermfg=17 ctermbg=none
hi htmlItalic   term=none ctermfg=17 ctermbg=none
hi htmlBold     term=bold ctermfg=17 ctermbg=none
hi htmlTag	term=bold ctermfg=245 ctermbg=none
hi htmlTagN	term=bold ctermfg=245 ctermbg=none
hi htmlEndTag	term=bold ctermfg=245 ctermbg=none
hi htmlArg	term=none ctermfg=245 ctermbg=none
hi htmlTagName	term=bold ctermfg=245 ctermbg=none
hi htmlString	term=none ctermfg=240 ctermbg=none
hi htmlValue	term=none ctermfg=240 ctermbg=none
hi htmlPreAttr	term=none ctermfg=240 ctermbg=none
hi htmlLink	term=none ctermfg=17  ctermbg=none
" Specific for CSS {{{2
hi cssTagName	cterm=bold ctermfg=17 ctermbg=none 
hi cssClassName cterm=none ctermfg=17 ctermbg=none 
hi cssValueLength cterm=none ctermfg=17 ctermbg=none
hi cssBoxProp	cterm=none ctermfg=none ctermbg=none
hi cssTableProp	cterm=none ctermfg=none ctermbg=none
hi cssUIProp	cterm=none ctermfg=none ctermbg=none
hi cssFontProp	cterm=none ctermfg=none ctermbg=none
hi cssPagingProp cterm=none ctermfg=none ctermbg=none
hi cssFontDescriptorProp cterm=none ctermfg=none ctermbg=none
hi cssTextProp	cterm=none ctermfg=none ctermbg=none
hi cssColorProp	cterm=none ctermfg=none ctermbg=none
hi cssDefinition cterm=none ctermfg=none ctermbg=none
" Specific for YankRing {{{2
hi yankringItemNumber guifg=#000070 guibg=bg      gui=none term=none     cterm=none    ctermfg=125
" Spell checking {{{2
if version >= 700
  hi SpellBad   guisp=red    gui=undercurl guifg=NONE guibg=NONE ctermfg=196 ctermbg=NONE term=underline cterm=NONE
  hi SpellCap   guisp=yellow gui=undercurl guifg=NONE guibg=NONE ctermfg=196 ctermbg=NONE term=underline cterm=NONE
  hi SpellRare  guisp=blue   gui=undercurl guifg=NONE guibg=NONE ctermfg=203 ctermbg=NONE term=underline cterm=NONE
  hi SpellLocal guisp=orange gui=undercurl guifg=NONE guibg=NONE ctermfg=202 ctermbg=NONE term=underline cterm=NONE
endif
" Cursor color for GUI {{{2
hi Cursor   guifg=#ffffff guibg=#949394
hi lCursor  guifg=#000000 guibg=#115e73
hi CursorIM guifg=#000000 guibg=#1c96b8
" Specific for TeX {{{2
hi texSectionMarker	guifg=#631da8 guibg=bg gui=bold	cterm=bold	ctermfg=93
hi texSection		guifg=#3d1268 guibg=bg gui=bold cterm=bold	ctermfg=54
hi texDocType		guifg=#5730CC guibg=bg gui=none cterm=none	ctermfg=93
hi texInputFile		guifg=#5730CC guibg=bg gui=none cterm=none	ctermfg=93
hi texDocTypeArgs		ctermfg=204	
hi texInputFileopt		ctermfg=204	
hi texType		guifg=#5f00ff guibg=bg gui=none cterm=none	ctermfg=57
hi texMath		guifg=#5f00ff guibg=bg gui=none cterm=none	ctermfg=57
hi texStatement 	guifg=#8700ff guibg=bg gui=none cterm=none	ctermfg=93
hi link texComment	Comment
hi texString		guifg=#2E68CC	ctermfg=39	
hi texSpecialChar		ctermfg=39	
hi texOnlyMath			ctermfg=27
hi texTikzCoord 		guifg=#5730CC 	ctermbg=61
" highlight texTikz			ctermfg=204	ctermbg=233
" Specific for ATP {{{2 
hi atp_label_sectionnr	ctermfg=black
" Specific for ywtxt {{{2
hi ywtxt_bold 		cterm=bold 	gui=bold
hi ywtxt_italic 	cterm=italic  	gui=italic
hi ywtxt_underline 	cterm=underline gui=underline
" Specific for Vim {{{2
hi vimCommentTitle	guifg=#00aa00 guibg=bg      gui=bold	cterm=bold  ctermfg=28
hi vimVar						                    ctermfg=240
hi vimFBVar						                    ctermfg=240
hi vimFuncVar						                    ctermfg=240
hi vimFuncKey		guifg=#5f00ff		    gui=bold	cterm=bold  ctermfg=57
hi vimCommand		guifg=#5f00af		    gui=bold	cterm=bold  ctermfg=55
" hi vimFuncBody								    ctermfg=244
hi link vimFunction  Function
hi link vimGroupName Type	
" Specific for Python {{{2
hi link pythonDottedName pythonDecorator
" Specific fot SelectBuf {{{2
hi link SelBufBufIndicators Type
hi link SelBufBufName Statement
hi link SelBufBufNumber Number
hi link SelBufPath Normal
hi link SelBufSummary Comment
hi link SelBufKeyWords Comment
hi link SelBufKeyValues vimComment
endif "}}}1

let &bg=s:current_bg
" vim: foldmethod=marker foldmarker={{{,}}}:
