; Right for Pass Button
Right::
WinGet, active_id, ID, A
if WinExist("ahk_exe anki.exe")
{
    WinActivate
    SendInput, {Right}
    Sleep, 20
    WinActivate, ahk_id %active_id%
    }
;else{
;    SendInput, Right
;    }
return
; Left for Fail Button
Left::
WinGet, active_id, ID, A
if WinExist("ahk_exe anki.exe")
{
    WinActivate
    SendInput, {Left}
    Sleep, 20
    WinActivate, ahk_id %active_id%
    }
;else{
;    SendInput, Left
;    }
return
; Up for Next, Or Pass Button
Up::
WinGet, active_id, ID, A
if WinExist("ahk_exe anki.exe")
{
    WinActivate
    SendInput, {Space}
    Sleep, 20
    WinActivate, ahk_id %active_id%
    }
;else{
;    SendInput, Space
;    }
return

; "Down" for Launching Anki / Activating the window / Minimizing the window
Down::
if WinExist("ahk_exe anki.exe")
{
	ifWinActive ahk_class AnkiMainWindow
	{
		WinMinimize
	}
	else
	{
		WinActivate
	}
}
else
{
	run "C:\Program Files\Anki\anki.exe"
}
return

^!+z::  Winset, Alwaysontop, , A