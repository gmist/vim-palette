" ------------------------------------------------------------------
" Filename:	 smullyan.vim
" Author:        SM Smithfield (smDOTsmithfieldATgmailDOTcom)
" Version:       0.1
" Copyright:	 2018 SM Smithfield
" Description:   Vim colorscheme file.
" Install:       Put this file in the users colors directory (~/.vim/colors)
"                then load it with :colorscheme smullyan
" ------------------------------------------------------------------
if !has("gui_running") | echoerr "feature:gui required."   | finish | endif
if version < 700       | echoerr "smullyan requires vim7." | finish | endif
if exists("syntax_on") | syntax reset | endif
hi clear
set background=light
let g:colors_name = "smullyan" 

" OPTIONS: 
" default values
" globals maintain state. 
if !exists("g:smullyan_bold_opt")
    let g:smullyan_bold_opt = 1
    let g:smullyan_ignore_opt = 1
    let g:smullyan_underline_opt = 0
    let g:smullyan_conceal_opt = 1
endif

 function! s:main()

     " globals determine script values
     " script values are used in defining the highlights

     let s:bold = 'none'
     if g:smullyan_bold_opt==1
         let s:bold = 'bold'
     endif

     " nearly invisible
     let s:ignore = '#faf4ed'
     if g:smullyan_ignore_opt==1
         " completely invisible
         let s:ignore = 'bg'
     endif

     let s:underline = 'none'
     if g:smullyan_underline_opt==1
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
     if g:smullyan_conceal_opt==1
         let s:conceal = 'Ignore'
     endif

     " 20% bright bg == #33312f
     " 40% bright bg == #65615b
     " 50% bright bg == #7f7a73
     " 60% bright bg == #9a938b
     " 70% bright bg == #b2aaa0
     " 80% bright bg == #ccc3b8
     " 82% bright bg == #d1ccc5
     " 85% bright bg == #d9d4cd
     " 89% bright bg == #e2ddd6
     " 95% bright bg == #f1ece4
     " 98% bright bg == #faf4ed

     " primarily linguistic categories , bold optional
     hi Normal               guibg=#e2ddd6 guifg=#20012e  gui=none
     " heat
     execute "hi PreProc      guibg=NONE    guifg=#760f50  gui=".s:bold
     hi! link Delimiter PreProc
     execute "hi Statement    guibg=NONE    guifg=#b9001b  gui=".s:bold
     execute "hi Type         guibg=NONE    guifg=#c17e00  gui=".s:bold
     execute "hi Special      guibg=NONE    guifg=#378300  gui=".s:bold
     execute "hi Identifier   guibg=NONE    guifg=#008888  gui=".s:bold
     execute "hi Constant     guibg=NONE    guifg=#92316f  gui=".s:bold
     execute "hi Underlined   guibg=NONE    guifg=#0060d3  gui=".s:underline
              hi Tag          guibg=NONE    guifg=#20012e  gui=bold
              hi! def link Bold Tag
              hi Bleached     guibg=#e2ddd6 guifg=#6e4e7c  gui=none

     hi MatchParen   guibg=#ccc3b8    guifg=#555555 gui=bold

     execute "hi Ignore       guibg=NONE     guifg=".s:ignore

     hi Cursor       guibg=#e8bc00  guifg=NONE
     hi Visual       guibg=#ffffdc
     hi IncSearch    guibg=#ffff7d  guifg=NONE     gui=none
     hi Search       guibg=#acd0da  guifg=NONE     gui=none

     hi DiffAdd      guibg=#d6dae2  guifg=#141777     
     hi DiffDelete   guibg=#e2c8c8  guifg=#ba3232 gui=none
     hi DiffChange   guibg=#f1ece4  guifg=NONE
     hi DiffText     guibg=#ffffff  guifg=fg       gui=none

     hi Directory    guibg=NONE guifg=#378300

     hi StatusLine   guibg=#65615b guifg=bg       gui=none
     hi StatusLineNC guibg=#9a938b guifg=bg       gui=none
     hi SignColumn   guibg=#ccc3b8 guifg=NONE
     hi Comment      guibg=#d9d4cd guifg=#65615b
     hi FoldColumn   guibg=#b2aaa0 guifg=#65615b
     hi Folded       guibg=#b2aaa0 guifg=#65615b
     hi LineNr       guibg=#ccc3b8 guifg=fg

     hi NonText      guibg=#7f7a73 guifg=#b2aaa0
     hi Title        guibg=bg      guifg=#683821  gui=bold
     hi Todo         guibg=#654646 guifg=#e2b372

     hi WildMenu     guibg=#9a938b guifg=bg       gui=none
     hi ErrorMsg     guibg=#ccc3b8 guifg=#470266
     hi Error        guibg=#e8c27b guifg=#c17e00 gui=bold

     hi Question     guifg=#d9d4cd guibg=#760f50 gui=NONE
     hi MoreMsg      guifg=#ebb4ca guibg=#872e56
     hi ModeMsg      guifg=#bfeada guibg=#2e7587 gui=NONE
     hi WarningMsg   guifg=#bfeada guibg=#349d40 

     hi SpecialKey   guibg=#b8c7cc  guifg=#65615b gui=bold
     hi SpellBad     guisp=#ff4046
     hi SpellCap     guisp=#0070e6
     hi SpellRare    guisp=#bf000d
     hi SpellLocal   guisp=#33312f

     hi Pmenu        guibg=#d9d4cd guifg=#65615b
     hi PmenuSel     guibg=#d9d4cd guifg=#20012e gui=bold 
     hi PmenuSbar    guibg=#9a938b 
     hi PmenuThumb   guifg=#65615b 
     hi CursorColumn guibg=#d1ccc5
     hi CursorLine   guibg=#d1ccc5
     hi CursorLineNr guifg=#65615b
     hi TabLine      guibg=#9a938b guifg=bg gui=NONE 
     hi TabLineSel   guibg=#65615b guifg=bg gui=bold
     hi TabLineFill  guifg=#7f7a73

     hi ColorColumn  guibg=#d1ccc5
     hi VertSplit    guifg=#65615b guibg=#9a938b gui=none
     if version >= 800
         execute "hi! link Conceal ".s:conceal
     endif
     if version >= 801
         hi Terminal         guifg=#20012e guibg=#e2ddd6  
         hi StatusLineTerm   guifg=bg      guibg=#65615b   gui=none
         hi StatusLineTermNC guifg=bg      guibg=#9a938b   gui=none
         hi ToolbarLine      guifg=#0044ef guibg=#044f80
         hi ToolbarButton    guifg=#00baff guibg=#047686
         hi QuickfixLine                   guibg=#deceff
         " hi debugPC 
         " hi debugBreakpoint 
     endif
 endfunction

" initialize from global values
let s:opts = {'bold': g:smullyan_bold_opt,
            \ 'ignore': g:smullyan_ignore_opt,
            \ 'underline': g:smullyan_underline_opt,
            \ 'conceal': g:smullyan_conceal_opt }

" push dict back to globals
function! s:push_to_global()
    let g:smullyan_bold_opt      = s:opts['bold']
    let g:smullyan_ignore_opt    = s:opts['ignore']
    let g:smullyan_underline_opt = s:opts['underline']
    let g:smullyan_conceal_opt   = s:opts['conceal']
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
    echohl WarningMsg
    echo 'Example: ' . a:n
endfunction

function! s:Smullyan(...)
    echohl Title
    echo 'Smullyan remembers...'
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
command! -nargs=*  Smullyan  :call s:Smullyan(<f-args>)
call s:main()
