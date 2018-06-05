" ------------------------------------------------------------------
" Filename:	 voodooChild.vim
" Version:       0.1
" Author:	 SM Smithfield (smDOTsmithfieldATgmailDOTcom)
" Copyright:	 2018 SM Smithfield
" Description:   Vim colorscheme file.
" Install:       Put this file in the users colors directory (~/.vim/colors)
"                then load it with :colorscheme voodooChild
" ------------------------------------------------------------------
hi clear
set background=dark
if exists("syntax_on") | syntax reset | endif
let g:colors_name = "voodooChild"

let g:rainbow_levels = [
    \{'guibg': '#6a0e2b'},
    \{'guibg': '#591a28'},
    \{'guibg': '#6a3225'},
    \{'guibg': '#403729'},
    \{'guibg': '#3c2325'},
    \{'guibg': '#483348'},
    \{'guibg': '#3c2338'},
    \{'guibg': '#3c1249'},
    \{'guibg': '#3c1249'},
    \{'guibg': '#3c2338'},
    \{'guibg': '#483348'},
    \{'guibg': '#3c2325'},
    \{'guibg': '#403729'},
    \{'guibg': '#6a3225'},
    \{'guibg': '#591a28'},
    \{'guibg': '#6a0e2b'}]

hi vcaabred guibg=#6d092d
hi vcaaborn guibg=#6d0d2b
hi vcaabyll guibg=#6d122b
hi vcaabltg guibg=#4a262c
hi vcaabdkg guibg=#3f3230
hi vcaabltb guibg=#4e1442
hi vcaabdkb guibg=#382d3e
hi vcaabndg guibg=#490945

hi vcred guifg=#f0232d
hi vcorn guifg=#e66814
hi vcyll guifg=#f4d60b
hi vcltg guifg=#22f022
hi vcdkg guifg=#2ca841
hi vcltb guifg=#49dbba
hi vcdkb guifg=#4c7ffd
hi vcndg guifg=#0e34bf
hi vcmgt guifg=#de3391
hi vcppl guifg=#9902bf
hi vcdpl guifg=#480780

hi vc20bred guibg=#6a0e2b
hi vc20born guibg=#692a25
hi vc20byll guibg=#6a3225
hi vc20bltg guibg=#403729
hi vc20bdkg guibg=#3c2325
hi vc20bltb guibg=#483348
hi vc20bdkb guibg=#3c2338 
hi vc20bndg guibg=#3c1249

hi vc10bred guibg=#590c2b
hi vc10born guibg=#591a28
hi vc10byll guibg=#5a1e28
hi vc10bltg guibg=#44212a
hi vc10bdkg guibg=#421628
hi vc10bltb guibg=#481e3a
hi vc10bdkb guibg=#421632 
hi vc10bndg guibg=#420d3a

hi vc05bred guibg=#510a2b
hi vc05born guibg=#511129
hi vc05byll guibg=#511329
hi vc05bltg guibg=#46152b
hi vc05bdkg guibg=#45102a
hi vc05bltb guibg=#481432
hi vc05bdkb guibg=#45102e 
hi vc05bndg guibg=#450b33

hi vcm60bred guibg=#460416
hi vcm60born guibg=#450712
hi vcm60byll guibg=#460812
hi vcm60bltg guibg=#230815
hi vcm60bdkg guibg=#1f0712
hi vcm60bltb guibg=#290824
hi vcm60bdkb guibg=#1f071d 
hi vcm60bndg guibg=#1f0524

hi vcm30bred guibg=#470720
hi vcm30born guibg=#46081f
hi vcm30byll guibg=#47091f
hi vcm30bltg guibg=#350920
hi vcm30bdkg guibg=#33081f
hi vcm30bltb guibg=#390927
hi vcm30bdkb guibg=#330824 
hi vcm30bndg guibg=#330728

hi vccd20bred guibg=#6d092d
hi vccd20born guibg=#6d0d2b
hi vccd20byll guibg=#6d122b
hi vccd20bltg guibg=#4a262c
hi vccd20bdkg guibg=#490b2b
hi vccd20bltb guibg=#4e1442
hi vccd20bdkb guibg=#490b32 
hi vccd20bndg guibg=#490945

hi link VimwikiHeader1 vcred
hi link VimwikiHeader2 vcorn
hi link VimwikiHeader3 vcyll
hi link VimwikiHeader4 vcltg
hi link VimwikiHeader5 vcdkb
hi link VimwikiHeader6 vcndg

if !exists("s:main")

    " OPTIONS: 
    " default values
    if !exists("g:voodooChild_bold_opt")
        let g:voodooChild_bold_opt = 0
        let g:voodooChild_ignore_opt = 1
        let g:voodooChild_underline_opt = 0
        let g:voodooChild_conceal_opt = 1
    endif

    function! s:main()
        
        " globals determine script values
        " script values are used in defining the highlights

        let s:bold = 'none'
        if g:voodooChild_bold_opt==1
            let s:bold = 'bold'
        endif

        " nearly invisible
        let s:ignore = '#467C5C'
        if g:voodooChild_ignore_opt==1
            " completely invisible
            let s:ignore = 'bg'
        endif

        let s:underline = 'none'
        if g:voodooChild_underline_opt==1
            let s:underline = 'underline'
            if s:bold == 'bold'
                let s:underline = 'bold,underline'
            endif
        else
            if s:bold == 'bold'
                let s:underline = 'bold'
            endif
        endif

        let s:conceal = 'Comment'
        if g:voodooChild_conceal_opt==1
            let s:conceal = 'Ignore'
        endif

        execute "hi PreProc         guifg=#f0232d guibg=NONE    gui=".s:bold
        hi! link Delimiter PreProc
        execute "hi Statement       guifg=#e66814 guibg=NONE    gui=".s:bold
        execute "hi Type            guifg=#f4d60b guibg=NONE    gui=".s:bold
        execute "hi Special         guifg=#22f022 guibg=bg      gui=".s:bold
        execute "hi Identifier      guifg=#2ca841 guibg=NONE    gui=".s:bold
                 hi MatchParen      guifg=#49dbba guibg=#33011d gui=bold
        execute "hi Constant        guifg=#4c7ffd guibg=bg      gui=".s:bold
        execute "hi Underlined      guifg=#0e34bf guibg=bg      gui=".s:underline
        hi Normal          guifg=#ac3877 guibg=#48092b
        hi Tag             guifg=#f20884 guibg=NONE    gui=bold
        hi link Bold Tag
        hi Comment         guifg=#722666 guibg=NONE
        execute "hi Bleached        guifg=#b76181 guibg=#480920 gui=".s:bold

        " NOTE: as vim lights a match paren, 
        " it assigns Search to the 'paren' under the cursor, 
        " then MatchParen to both
        " then Cursor to the 'paren' under the cursor
        " this can lead to unexpected (and visually confusing)
        " results if your colorscheme 
        " is using gui=reverse and guixx=none

        hi ColorColumn     guibg=#33011d
        " hi Cursor          guifg=NONE    guibg=#ffffff gui=reverse
        hi Cursor          guifg=NONE    guibg=#0e34bf gui=reverse
        hi CursorColumn    guibg=#590647
        hi CursorLine      guibg=#590647
        hi CursorLineNr    guifg=#e66814 guibg=#692a25
        hi DiffAdd         guifg=NONE    guibg=#420d3a
        hi DiffDelete      guifg=#722666 guibg=#33011d
        hi DiffChange      guifg=fg      guibg=#33011d gui=NONE
        "hi DiffText        guifg=#b76181 guibg=#421628 gui=bold
        hi DiffText        guifg=#b76181 guibg=#33011d gui=bold
        hi Directory       guifg=#e66814 guibg=NONE
        hi Error           guifg=#f0232d guibg=#3c1249
        hi ErrorMsg        guifg=#22f022 guibg=#4a262c
        hi FoldColumn      guifg=#f0232d guibg=#460416
        hi Folded          guifg=#752651 guibg=#33011d
        execute "hi Ignore          guifg=".s:ignore
        hi IncSearch       guibg=#49dbba gui=bold
        hi LineNr          guifg=#f0232d guibg=#460416
        "hi ModeMsg         guifg=#2ca841 guibg=#1f0712 gui=none
        "hi ModeMsg         guifg=#de3391 guibg=#470720 gui=none
        "hi ModeMsg         guifg=#ac3877 guibg=#470720 gui=none
        hi ModeMsg         guifg=#0e34bf guibg=#470720 gui=bold
        "hi MoreMsg         guifg=#22f022 guibg=#230815 gui=none 
        hi MoreMsg         guifg=#9902bf guibg=#230815 gui=none
        hi NonText         guifg=#73003b guibg=#200110
        hi Pmenu           guifg=#752651 guibg=#330728
        hi PmenuSel        guifg=#ac3877 guibg=#330728 gui=bold
        hi PmenuSbar       guibg=#33011d
        hi PmenuThumb      guibg=#8f0438 
        hi Question        guifg=#0e34bf guibg=#3c1249
        hi Search          guibg=#382d3e guifg=#2ca841 gui=bold
        hi SignColumn      guifg=#f0232d guibg=#460416
        hi SpecialKey      guifg=#4c7ffd guibg=#752651
        hi StatusLine      guifg=#f0232d guibg=#33011d gui=Bold
        hi StatusLineNC    guifg=#722666 guibg=#350920 gui=none
        hi SpellBad        guisp=#f20884
        hi SpellCap        guisp=#e66814
        hi SpellRare       guisp=#22f022
        hi SpellLocal      guisp=#49dbba
        hi TabLine         guifg=#b76181 guibg=#8f0438 gui=none
        hi TabLineSel      guifg=#f0232d guibg=#6d092d gui=Bold
        hi TabLineFill     guifg=#73003b
        hi Title           guifg=#f0232d guibg=NONE gui=bold
        hi Todo            guifg=#f20884 guibg=#8f0438 gui=bold
        hi VertSplit       guifg=#f0232d guibg=#6d092d gui=none
        hi Visual          guibg=#73003b gui=NONE
        hi WarningMsg      guifg=#e66814 guibg=#33011d
        hi WildMenu        guifg=#e66814 guibg=#6d122b gui=bold
        if version >= 800
            execute "hi! link Conceal ".s:conceal
        endif
        if version >= 801
            hi Terminal         guifg=#ac3877 guibg=#48092b
            hi StatusLineTerm   guifg=#22f022 guibg=#4a262c
            hi StatusLineTermNC guifg=#2ca841 guibg=#3f3230
            hi ToolbarLine      guifg=#e66814 guibg=#6d0d2b
            hi ToolbarButton    guifg=#f4d60b guibg=#6d122b
            hi QuickfixLine     guifg=#4c7ffd guibg=#382d3e
            " guifg=#00baff guibg=#047686 
            " hi debugPC 
            " hi debugBreakpoint 
        endif
    endfunction

    if version >= 700

        " initialize from global values
        let s:opts = {'bold': g:voodooChild_bold_opt,
                    \ 'ignore': g:voodooChild_ignore_opt,
                    \ 'underline': g:voodooChild_underline_opt,
                    \ 'conceal': g:voodooChild_conceal_opt }
        
        function! s:push_to_global()
            let g:voodooChild_bold_opt      = s:opts['bold']
            let g:voodooChild_ignore_opt    = s:opts['ignore']
            let g:voodooChild_underline_opt = s:opts['underline']
            let g:voodooChild_conceal_opt   = s:opts['conceal']
        endfunction

        function! s:print_opts(...)
            let d = a:000
            if len(a:000) == 0
                let d = keys(s:opts)
            endif
            for k in d
                echo k.': '.s:opts[k]
            endfor
        endfunction

        function! s:samantha(n)
            echohl Question
            echo 'Example: ' . a:n
        endfunction

        function! s:VoodooChild(...)
            echohl Title
            echo 'VoodooChild remembers...'
            echohl None
            let args = a:000
            if len(args) == 0
                call s:print_opts()
            else
                while len(args)>0
                    " take first arg
                    let k = args[0]
                    let args = args[1:]
                    " key?
                    if k =~ '\a\+!'
                        " bang?
                        let k = strpart(k,0,strlen(k)-1)
                        let s:opts[k] = !s:opts[k]
                        call s:push_to_global()
                        call s:main()
                    elseif k =~ '\a\+?'
                        " quiz?
                        let k = strpart(k,0,strlen(k)-1)
                        call s:print_opts(k)
                    elseif len(args)
                        " another arg?
                        " take it
                        let v = args[0]
                        let args = args[1:]
                        " is it legal value?
                        if v == 0 || v == 1
                            " assign val->key
                            let s:opts[k] = v
                            call s:push_to_global()
                            call s:main()
                        else
                            echoerr "(".v.") Bad value. Expected 0 or 1."
                        endif
                    else
                        call s:samantha(k)
                    endif
                endwhile
            endif
        endfunction
        command! -nargs=*  VoodooChild  :call s:VoodooChild(<f-args>)
    endif
endif

call s:main()
