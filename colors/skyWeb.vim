" SKYWEB.VIM, A VIM COLORSCHEME

" A white, clean colorscheme made for CSS, HTML and PHP and increasingly more for javascript. Only for gui for the moment and only tested in MacVim 7.3.
" 
" Among other features:
" 
" HTML tag, class and id colors match the CSS tag, class and id colors for easy recognition.
" When you have HTML embedded in PHP I wanted the colors to clearly show the difference between the languages. This also goes for other embedded languages (I'm implementing as I stumble upon them).
" Comfortable editing when swithching between applications.
" I have tried to find good colorschemes with a white background forever. The colorschemes pyte , google and macvim's default scheme, macvim, are the best ones I have found, but there is always something. If this scheme doesn't quite suite your needs I suggest trying one of those.
" 
" This colorscheme is designed to provide comfortable editing when swithching between applications. Switching between black and white backgrounds forces your eyes to adjust alot, and can be uncomfortable. Since most other applications and websites have white backgrounds, so does the skyWeb scheme. And besides, good colorschemes with dark backgrounds ain't hard to come by anyway. I also wanted the scheme to be good looking (you decide if I succeeded), so the colors are given a lot of thought and tests, and still is.
" 
" For the time being I mainly code in html(5), css and php, so this scheme has a focus there, but I will update it for other languages when I stumble upon them. Probably javascript, jquery and java next.
" 


" Maintainer:	Johan S. Steinberg
" Email:			johansst@gmail.com
" Last Change:	2011 Jul 18

set bg=light

hi clear

if exists("syntax_on")
	syntax reset
endif

let g:colors_name = "skyWeb"


" Shades Of Yellow:
" icterine       = #FCF75E

" Shades Of Green:
" emerald        = #50C878
" armyGreen      = #4B5320
" teal           = #008080

" Shades Of Red:
" maroon         = #800000

" Shades Of Brown:
" chocolate      = #663300
" bistre         = #3D2B1F

" Shades Of Blue:
" skyBlue        = #99ccff
" kleinBlue      = #002FA7
" ultramarine    = #120A8F

" Shades Of Gray:
" white          = #FFFFFF
" isabelline     = #F4F0EC
" platinum       = #E5E4E2
" ashGrey        = #B2BEB5
" coolGrey       = #8C92AC
" slateGray      = #708090
" paynesGray     = #40404F
" charcoal       = #36454F
" darkSlateGray  = #2F4F4F
" black          = #000000


" Highlights:
" --------------------------------------------------------------------------

" paltinate purple #682860
hi cssAttr guifg=#682860
hi! link cssAttrBlock cssAttr
hi! link cssColor cssAttr
hi! link cssNumber cssAttr
hi! link cssPathFn cssAttr
hi! link cssUnits cssAttr

hi javaScript guifg=#682860 gui=bold
hi! link javaScriptFuncBlock javaScript
hi phpIdentifier guifg=#682860 gui=bold

" Greens:
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
" emerald:
hi Cursor guifg=#000000 guibg=#50C878

hi Search guifg=#000000 guibg=#50C878
hi! link IncSearch Search

" Teal #008080:
hi phpIntVar guifg=#4B5320 gui=bold

" Browns:
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
" chocolate (websafe) #663300:

" Blues:
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
" sky blue websafe #99ccff:
hi Visual guibg=#99ccff

" dark ucla blue #46587E:
hi Delimiter guifg=#46587E gui=bold
"hi! link phpFCKeyword Delimiter

hi Type guifg=#46587E gui=bold
hi! link cssPrefix Type

" yale blue #0F4D92:
hi phpVarSelector guifg=#0F4D92 gui=none
hi javaScriptIdentifier guifg=#0F4D92 gui=none
hi! link javaScriptType javaScriptIdentifier

hi javaScriptBlock guifg=#0F4D92 gui=bold
hi phpMethodsVar guifg=#0F4D92 gui=bold

" ultramarine #120A8F:
hi helpHyperTextJump guifg=#120A8F gui=underline

hi Statement guifg=#120A8F gui=bold
hi! link phpStatement Statement
hi! link vimHighlight Statement

" midnight blue:
hi String guifg=#191970
hi! link javaScriptNumber String
hi phpStringSingle guifg=#191970
hi! link phpNumber String
hi! link phpStringDouble String

hi Function guifg=#191970 gui=bold
hi! link javaScriptBracket Function
hi! link javaScriptFunction Function
hi! link javaScriptParen Function
hi! link javaScriptParenParent Function
hi! link phpBoolean Function
hi! link phpParent Function
hi! link vimFunction Function
hi! link vimMapRhs Function
hi! link vimParenSep Function

hi phpFunctions guifg=#191970 gui=bold
hi! link phpFCKeyword phpFunctions
hi! link phpInclude phpFunctions
hi! link phpSpecial phpFunctions
hi! link phpSpecialFunction phpFunctions

hi Exception guifg=#191970 gui=bold

hi Operator guifg=#191970 gui=bold

" Reds:
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
" maroon:
hi Error guifg=#800000 guibg=#B2BEB5 gui=italic
hi! link ErrorMsg Error

" sangria:
hi htmlEndTag guifg=#92000A gui=none
hi! link htmlScriptTag htmlEndTag
hi! link htmlTag htmlEndTag

hi htmlStatement guifg=#92000A gui=bold
hi! link cssTagName htmlStatement
hi! link htmlSpecialTagName htmlStatement
hi! link htmlTagName htmlStatement

" carmine #960018:
hi htmlArg guifg=#960018

" venetian red:
hi htmlString guifg=#C80815
hi! link cssClass htmlString
hi! link cssIdentifier htmlString
hi! link htmlValue htmlString

" Grays:
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
if version >= 703
	" isabelline:
	hi ColorColumn guibg=#F4F0EC
endif

if version >= 700
	" platinum, one Monochromatic Color higher #f2f2f1:
	hi CursorLine guibg=#f2f2f1
	" platinum:
	hi PmenuSbar guibg=#E5E4E2
	hi! link CursorColumn CursorLine

	hi MatchParen guifg=#000000 guibg=#E5E4E2 gui=underline,bold
endif


" ash gray:
hi NonText guifg=#B2BEB5 gui=italic
hi LineNr guifg=#B2BEB5 gui=italic

" slate gray:
hi Comment guifg=#708090 gui=none

" feldgrau #4D5D53:
hi PreProc guifg=#4D5D53 gui=bold

" payne's gray:
hi PmenuThumb guibg=#40404F

hi Special guifg=#40404F gui=bold
hi! link cssSpecial Special
hi! link htmlEventDQ Special
hi! link javaScriptFuncName Special
hi! link Structure Special
hi! link phpRegion Special
hi! link vimGroup Special
hi! link vimHiBang Special

" dark slate gray:
hi StatusLineNC guifg=#2F4F4F guibg=#B2BEB5 gui=italic
hi! link VertSplit StatusLineNC

hi vimCommentTitle guifg=#2F4F4F gui=none

hi helpExample guifg=#2F4F4F gui=none

"hi Todo guifg=#2F4F4F guibg=#FCF75E gui=bold,italic,underline
hi Todo guifg=#2F4F4F guibg=#FFFFFF gui=italic,underline,bold

" black:
hi StatusLine guifg=#000000 guibg=#B2BEB5 gui=italic
hi! link Pmenu StatusLine

hi PmenuSel guifg=#000000 guibg=#E5E4E2 gui=none
hi! link PmenuThumb PmenuSel
hi! link WildMenu PmenuSel

hi Normal guifg=#000000
" linked to normal:
hi! link Constant Normal
hi! link Directory Normal
hi! link Identifier Normal
hi! link Number Normal
hi! link phpFoldHtmlInside Normal
hi! link SpecialKey Normal

hi htmlSpecialChar guifg=#000000 gui=italic

hi Title guifg=#000000 gui=bold
hi! link htmlTitle Title
hi! link javaScriptBoolean Title
hi! link taskWorkingIcon Title
hi! link taskWorkingItem Title
