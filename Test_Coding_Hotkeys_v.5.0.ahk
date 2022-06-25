#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2 ; Title can be part of the full title
SetCapsLockState, AlwaysOff
^!+z::  Winset, Alwaysontop, , A


#IfWinActive ahk_exe code.exe
!Space::Return
!+Space::Send {F13}
!n::Send {F14} ; !c f14 cursor end
!c::Send {F15} ;!n = f15 cursor home
!+n::Send {F16} ; !+c = f16 cursor end select
!+c::Send {F17} ; !+n = f17 cursor home select
!v::Send {F18} ; !v = f18 goto bracket
!g::Send {F19} ; !g = f19 backspace
!h::Send {Delete} ; !h = f21 delete
!a::Send (
!d::Send )
!+a::Send [
!+d::Send ]
!+f::Send '
!f::Send "
!j::Send {{}
!k::Send {}}
!s::Send :
!+s::Send `;
!q::Send &&
!+w::SendRaw, =
!e::Send ||
!+q::Send <
!+e::Send >
CapsLock & j::Send {Left} 
CapsLock & i::Send {Up}
CapsLock & k::Send {Down} 
CapsLock & l::Send {Right}

; Tranforms -> into →
::->::{U+2192}
;# ALT A = (
;# ALT D = )
;# ALT+SHIFT A = [
;# ALT+SHIFT D = ]
;# ALT+SHIFT F = '
;# ALT F = "
;# ALT J = {
;# ALT K = }
;# ALT S = :
;# ALT+SHIFT S = ;
#IfWinActive ahk_exe WhatsApp.exe
    !a::Send {U+00E4}
    !+a::Send {U+00C4}
    !u::Send {U+00FC}
    !+u::Send {U+00DC}
    !o::Send {U+00F6}
    !+o::Send {U+00D6}
    !s::Send {U+00DF}
#IfWinActive ahk_exe chrome.exe
    +space::Send {Shift up}{Right}
    ^space::Send {Ctrl up}{Left}
    !a::Send (
    !d::Send )
    !+a::Send [
    !+d::Send ]
    !+f::Send '
    !f::Send "
    !j::Send {{}
    !k::Send {}}
    !s::Send :
    !+s::Send `;
    !q::Send &&
    !+w::SendRaw, =
    !e::Send ||
    !+q::Send <
    !+e::Send >
    ; Tranforms -> into →
    ::->::{U+2192}
#IfWinActive ahk_exe firefox.exe
    +space::Send {Shift up}{Right}
    ^space::Send {Ctrl up}{Left}
    !a::Send (
    !d::Send )
    !+a::Send [
    !+d::Send ]
    !+f::Send '
    !f::Send "
    !j::Send {{}
    !k::Send {}}
    !s::Send :
    !+s::Send `;
    !q::Send &&
    !+w::SendRaw, =
    !e::Send ||
    !+q::Send <
    !+e::Send >
    ; Tranforms -> into →
    ::->::{U+2192}
;  this is for Windows Onenote #If WinActive("- OneNote ahk_class ApplicationFrameWindow", "OneNote")
#IfWinActive ahk_exe anki.exe
    !a::Send {U+00E4}
    !+a::Send {U+00C4}
    !u::Send {U+00FC}
    !+u::Send {U+00DC}
    !o::Send {U+00F6}
    !+o::Send {U+00D6}
    !s::Send {U+00DF}
#IfWinActive ahk_exe Teams.exe
    +space::Send {Shift up}{Right}
    ^space::Send {Ctrl up}{Left}
    !a::Send (
    !d::Send )
    !+a::Send [
    !+d::Send ]
    !+f::Send '
    !f::Send "
    !j::Send {{}
    !k::Send {}}
    !s::Send :
    !+s::Send `;
    !q::Send &&
    !+w::SendRaw, =
    !e::Send ||
    !+q::Send <
    !+e::Send >
    ; Tranforms -> into →
    ::->::{U+2192}
#IfWinActive ahk_exe ONENOTE.EXE
    !a::Send (
    !d::Send )
    !+a::Send [
    !+d::Send ]
    !+f::Send '
    !f::Send "
    !j::Send {{}
    !k::Send {}}
    !s::Send :
    !+s::Send `;
    !q::Send &&
    !+w::SendRaw, =
    !e::Send ||
    !+q::Send <
    !+e::Send >
    ; Tranforms -> into →
    ::->::{U+2192}
    +Enter:: Send, {(}^!+d{)}
    
    ; Shift + Wheel for horizontal scrolling
    +WheelDown::WheelRight
    +WheelUp::WheelLeft
    !1:: Send ^!1
    !2:: Send ^!2
    !3:: Send ^!3
    !4:: Send ^!5
    +space::Send {Shift up}{Right}
    ^space::Send {Ctrl up}{Left}
    !WheelUp:: Send ^+>
    !WheelDown:: Send ^+<
    ; Here you can add more program specific shortcuts:
    ; ...

; Here you can add specific shortcuts for another program:
