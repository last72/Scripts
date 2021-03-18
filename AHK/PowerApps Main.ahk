#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Function Row
; Select All
F1::
Send, ^a
return


; Formular text
F3::
MouseGetPos, StartX, StartY
MouseClick, , 500, 220
Send, ^a
MouseMove, StartX, StartY
return

; Formular text Left
F4::
MouseGetPos, StartX, StartY
MouseClick, , 50, 220
Send, ^a
MouseMove, StartX, StartY
return

; Name Text
F6::
MouseGetPos, StartX, StartY
MouseClick, , 1620, 290
Send, ^a
MouseMove, StartX, StartY
return

; Property: X
F7::
MouseGetPos, StartX, StartY
MouseClick, , 50, 220
Send, ^a
Send, X
MouseClick, , 500, 220
Send, ^a
MouseMove, StartX, StartY
return

; Property: Width
F8::
MouseGetPos, StartX, StartY
MouseClick, , 50, 220
Send, ^a
Send, Width
MouseClick, , 500, 220
Send, ^a
MouseMove, StartX, StartY
return

; ^v.Y + ^v.Height
F9::
Send, ^v
Send, .Y{Space}{+}{Space}
Send, ^v
Send, .Height
return

; ^v.X + ^v.Width
F10::
Send, ^v
Send, .X{Space}{+}{Space}
Send, ^v
Send, .Width
return

; Parent.Height
F11::
Send, Parent.Height
return

; Parent.Width
F12::
Send, Parent.Width
return


; Number row
; Alt + Tab
`::
Send, !{Tab}
return

; Copy
1::
Send, ^c
return

; Paste
2::
Send, ^v
return

; Copy All
3::
Send, ^a
Send, ^c
return

; All Paste
4::
Send, ^a
Send, ^v
return

; Control.Width
5::
Send, ^v
Send, .Width
return

; Self.Width
6::
Send, Self.Width
return

; Property: Y
9::
MouseGetPos, StartX, StartY
MouseClick, , 50, 220
Send, ^a
Send, Y
MouseClick, , 500, 220
Send, ^a
MouseMove, StartX, StartY
return

; Property: Height
0::
MouseGetPos, StartX, StartY
MouseClick, , 50, 220
Send, ^a
Send, Height
MouseClick, , 500, 220
Send, ^a
MouseMove, StartX, StartY
return


; Others

; ; Put on Top
; PgUp::
; Send, ^]
; Send, ^]
; Send, ^]
; Send, ^]
; Send, ^]
; Send, ^]
; Send, ^]
; Send, ^]
; Send, ^]
; Send, ^]
; Send, ^]
; Send, ^]
; Send, ^]
; Send, ^]
; Send, ^]
; Send, ^]
; Send, ^]
; Send, ^]
; Send, ^]
; Send, ^]
; return

; ; numbpad 4
; PgDn::
; Send, {Numpad4}
; return

; F13 - F24

; Align to the right
F13::
Send, ^v
Send, .Width-Self.Width

; Expend PowerApps menu
NumpadSub::
MouseGetPos, StartX, StartY
MouseClick, , 1902, 219
MouseMove, StartX, StartY

PAProperty(property)
{
    MouseGetPos, StartX, StartY
    MouseClick, , 50, 220
    Send, ^a
    Send, %property%
    MouseClick, , 500, 220
    Send, ^a
    MouseMove, StartX, StartY
    return
}

OpenVSCode()
{
    SetTitleMatchMode, 2
    IfWinNotExist, Visual Studio Code
        Run, "C:\Users\Woong\AppData\Local\Programs\Microsoft VS Code\Code.exe"
    else
        WinActivate Visual Studio Code
}
