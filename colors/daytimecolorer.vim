" File:         DayTimeColorer.vim
" Author:       RedRampage <redrampage@gmail.com>
" Last Updated: April 25, 2011
" Version:      0.1.1
" Description:  Change color scheme according to position of the sun.
" License:      GPLv3 (http://www.gnu.org/licenses/gpl-3.0.html)
" Requirements: gVIM compiled with +float option 
" Documetation:
"
" This module uses the algorithm from "Almanac for Computers, 1990"
" Which description has been found at:
" http://williams.best.vwh.net/sunrise_sunset_algorithm.htm
"
" Idea of plugin taken from:
" http://allaboutvim.blogspot.com/2011/01/blog-post.html
" ...and turned into overkill =)
"
" Automatic refresh code taken from:
" http://www.vim.org/scripts/script.php?script_id=2658
" 
" INSTALLATION
" 
" Just put the daytimecolorer.vim into .vim/plugin/
"
" You can manually call g:dtcSetColor() to change color scheme, sun position
" will be recalculated automatically if needed.
" Also there is automatic color changer included.
"
" CONFIGURATION
"
" Define following variables in your .vimrc:
" " Scheme definitions
" let g:dtcDayScheme = "pyte"
" let g:dtcNightScheme = "wombat256"
"
" " Following schemes are optional.
" let g:dtcDawnScheme = "zenburn" "if none - day scheme will be used
" let g:dtcDuskScheme = "zenburn" "if none - night scheme will be used
" 
" " Geographical coordinates to calculate sun position
" let g:dtcLatitude = 59.935  "Positive for North negative for South
" let g:dtcLongitude = 30.325 "Positive for East and negative for West
"
" " Local timezone
" let g:dtcTimeOffset = 4 " GMT+4
"  or
" let g:dtcTimeOffset = -3 " GMT-3
"
" You can set g:dtcAutoRefresh = 1 to enable automatic refresh of color scheme
"===============================================================================
" v 0.1 Initial release
"===============================================================================
" v 0.1.1
"   Fixed screen flicker on timer event caused by unnecessary scheme reload.
"===============================================================================

" Internal constants
let s:PI = 3.14159265
let s:DEBUG = 0

" Checks that all required variables is set
"{{{
function! s:inputVarsIsOK()
    if !has("float")
        return 0
    endif
    if !exists("g:dtcLatitude")
        return 0
    endif
    if !exists("g:dtcLongitude")
        return 0
    endif
    if !exists("g:dtcTimeOffset")
        return 0
    endif

    if !exists("g:dtcDayScheme")
        return 0
    endif
    if !exists("g:dtcNightScheme")
        return 0
    endif

    if !exists("g:dtcDawnScheme")
        let g:dtcDawnScheme = g:dtcDayScheme
    endif
    if !exists("g:dtcDuskScheme")
        let g:dtcDuskScheme = g:dtcNightScheme
    endif
    return 1
endfunction
"}}}

" Debug function
"{{{
function! s:dbg(str)
    if s:DEBUG
        echo(a:str)
    endif
endfunction
"}}}

" Redefine some trigonometry to make it work with degrees
"{{{
function! s:deg2rad(val)
    return (a:val/180)*s:PI
endfunction
function! s:rad2deg(val)
    return (a:val/s:PI)*180
endfunction
function! s:degrify(val)
    let l:val = a:val
    while l:val < 0
        let l:val = l:val + 360
    endwhile
    while l:val >= 360
        let l:val = l:val - 360
    endwhile
    return l:val
endfunction
function! s:timify(val)
    let l:val = a:val
    while l:val < 0
        let l:val = l:val + 24
    endwhile
    while l:val >= 24
        let l:val = l:val - 24
    endwhile
    return l:val
endfunction
function! s:dSin(val)
    return sin(s:deg2rad(a:val))
endfunction
function! s:dCos(val)
    return cos(s:deg2rad(a:val))
endfunction
function! s:dTan(val)
    return tan(s:deg2rad(a:val))
endfunction
function! s:dAsin(val)
    return s:rad2deg(asin(a:val))
endfunction
function! s:dAcos(val)
    return s:rad2deg(acos(a:val))
endfunction
function! s:dAtan(val)
    return s:rad2deg(atan(a:val))
endfunction
"}}}


function! s:calculateSunTime(zenith, sunTime, dayOfYear)
    call s:dbg("--- Calculating time for zenith=".string(a:zenith)."; "
                \."sunTime=".string(a:sunTime)."; "
                \."dayOfYear=".string(a:dayOfYear)."; "
                \."------------")

    " Get longitude in hours
    let l:lngHour = g:dtcLongitude / 15
    call s:dbg("lngHour=".string(l:lngHour))

    " Calculate apporox time
    let l:t = a:dayOfYear + ((a:sunTime-l:lngHour)/24)
    call s:dbg("t=".string(l:t))

    " Calculate sun's mean anomaly
    let l:M = (0.9856 * l:t) - 3.289
    call s:dbg("M=".string(l:M))

    " Calculate sun's true longitude
    let l:L = s:degrify(l:M + (1.916 * s:dSin(l:M)) + (0.020 * s:dSin(2*l:M))
                \ + 282.634)
    call s:dbg("L=".string(l:L))
    
    " Calculate sun's declination
    let l:sinDec = 0.39782 * s:dSin(l:L)
    let l:cosDec = s:dCos(s:dAsin(l:sinDec))
    call s:dbg("sinDec=".string(l:sinDec))
    call s:dbg("cosDec=".string(l:cosDec))

    " Calculate sun's local hour angle
    let l:cosH = (s:dCos(a:zenith) - (l:sinDec * s:dSin(g:dtcLatitude))) /
                \ (l:cosDec * s:dCos(g:dtcLatitude))
    call s:dbg("cosH=".string(l:cosH))
    
    " If cosH is not in the (-1;1) then sun didn't get in given zenith
    if l:cosH > 1
        return "polar_night"
    elseif l:cosH < -1
        return "polar_day"
    endif

    if a:sunTime < 12 " rising time
        let l:H = (360 - s:dAcos(l:cosH))/15
    else
        let l:H = s:dAcos(l:cosH)/15
    endif
    call s:dbg("H=".string(l:H))

    " Calculate sun's right ascension
    let l:RA = s:dAtan(0.91764 * s:dTan(l:L))
    let l:Lquad = floor(l:L/90) * 90
    let l:RAquad = floor(l:RA/90) * 90
    let l:RA = s:degrify(l:RA - (l:Lquad - l:RAquad))/15
    call s:dbg("RA=".string(l:RA))

    " Calculate UTC time of sunrise/sunset
    let l:T = l:H + l:RA - (0.06571 * l:t) - 6.622
    call s:dbg("T=".string(l:T))

    " Adjust to local time
    let l:UT = s:timify(l:T - l:lngHour + g:dtcTimeOffset)
    call s:dbg("UT=".string(l:UT))

    return l:UT
endfunction

function! s:calculateSunTimes()
    let l:offZenith = 90.833333
    let l:civilZenith = 96.0

    let l:dayOfYear = str2float(strftime("%j"))

    unlet! s:dawnTime s:sunriseTime s:sunsetTime s:duskTime
    let s:dawnTime = s:calculateSunTime(l:civilZenith, 6.0, l:dayOfYear)
    let s:sunriseTime = s:calculateSunTime(l:offZenith, 6.0, l:dayOfYear)
    let s:sunsetTime = s:calculateSunTime(l:offZenith, 18.0, l:dayOfYear)
    let s:duskTime = s:calculateSunTime(l:civilZenith, 18.0, l:dayOfYear)

    if type(s:sunriseTime) == 1
        if s:sunriseTime == "polar_night"
            let s:sunriseTime = 24 * 60
        else
            let s:sunriseTime = 0
        endif
    else
        let s:sunriseTime = round(s:sunriseTime * 60)
    endif

    if type(s:sunsetTime) == 1
        if s:sunsetTime == "polar_night"
            let s:sunsetTime = 0
        else
            let s:sunsetTime = 24 * 60
        endif
    else
        let s:sunsetTime = round(s:sunsetTime * 60)
    endif

    if type(s:dawnTime) == 1
        let s:dawnTime = s:sunriseTime
        " if s:dawnTime == "polar_night"
        "     let s:dawnTime = 24 * 60
        " else
        "     let s:dawnTime = 0
        " endif
    else
        let s:dawnTime = round(s:dawnTime * 60)
    endif

    if type(s:duskTime) == 1
        let s:duskTime = s:sunsetTime
        " if s:duskTime == "polar_night"
        "     let s:duskTime = 0
        " else
        "     let s:duskTime = 24 * 60
        " endif
    else
        let s:duskTime = round(s:duskTime * 60)
    endif

    call s:dbg("dawn=".string(s:dawnTime))
    call s:dbg("sunrise=".string(s:sunriseTime))
    call s:dbg("sunset=".string(s:sunsetTime))
    call s:dbg("dusk=".string(s:duskTime))
endfunction
    

function! g:dtcSetColor()
    if !exists("s:currentDay") || s:currentDay != str2nr(strftime("%j"))
        call s:calculateSunTimes()
        let s:currentDay = str2nr(strftime("%j"))
    endif

    let s:currentTime = str2nr(strftime("%H"))*60 + str2nr(strftime("%M"))

    call s:dbg("currentTime=".string(s:currentTime))
    call s:dbg("dawnTime=".string(s:dawnTime))
    call s:dbg("sunriseTime=".string(s:sunriseTime))
    call s:dbg("sunsetTime=".string(s:sunsetTime))
    call s:dbg("duskTime=".string(s:duskTime))

    if s:currentTime < s:dawnTime
        " It's night
        if !exists("s:currentColo") || s:currentColo != g:dtcNightScheme
            let s:currentColo = g:dtcNightScheme
            silent execute "colo " . g:dtcNightScheme 
            redraw
            echo "Yawn... It's " . strftime("%H:%M") . " and there is " .
                \ string(s:dawnTime-s:currentTime) . " minutes till dawn."
        endif
    elseif s:currentTime > s:dawnTime && s:currentTime < s:sunriseTime
        " It's dawn  
        if !exists("s:currentColo") || s:currentColo != g:dtcDawnScheme
            let s:currentColo = g:dtcDawnScheme
            silent execute "colo " . g:dtcDawnScheme
            redraw
            echo "Good morning! It's " . strftime("%H:%M") . " and there is " .
                \ string(s:sunriseTime-s:currentTime) . " minutes till sunrise."
        endif
    elseif s:currentTime > s:sunriseTime && s:currentTime < s:sunsetTime
        " It's day
        if !exists("s:currentColo") || s:currentColo != g:dtcDayScheme
            let s:currentColo = g:dtcDayScheme
            silent execute "colo " . g:dtcDayScheme
            redraw
            echo "G'day! It's " . strftime("%H:%M") . " and there is " .
                \ string(s:sunsetTime-s:currentTime) . " minutes till sunset."
        endif
    elseif s:currentTime > s:sunsetTime && s:currentTime < s:duskTime
        " It's dusk
        if !exists("s:currentColo") || s:currentColo != g:dtcDuskScheme
            let s:currentColo = g:dtcDuskScheme
            silent execute "colo " . g:dtcDuskScheme
            redraw
            echo "Evening. It's " . strftime("%H:%M") . " and there still " .
                \ string(s:duskTime-s:currentTime) . " minutes till dark."
        endif
    else
        " It's night again
        if !exists("s:currentColo") || s:currentColo != g:dtcNightScheme
            let s:currentColo = g:dtcNightScheme
            silent execute "colo " . g:dtcNightScheme
            redraw
            echo "Zzzz... It's " . strftime("%H:%M") . " see you tomorrow..."
        endif
    endif
endfunction

if s:inputVarsIsOK()
    call g:dtcSetColor()
    if exists("g:dtcAutoRefresh") && g:dtcAutoRefresh
        autocmd CursorHold * call g:dtcSetColor()
    endif
endif
