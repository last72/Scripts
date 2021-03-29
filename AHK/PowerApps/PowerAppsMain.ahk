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
WinGetPos, WindowX, WindowY, WindowW, WindowH, A
MouseClick, , WindowW - 300, 290
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

; Self.Height
5::
Send Self.X
return

; Self.Width
6::
Send Self.Width
return


; Self.Height
7::
Send Self.Y
return

; Self.Width
8::
Send Self.Height
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

; Number Pad

;Expend PowerApps formula bar
!1::
MouseClickAndReturn(580, 360)
return

;Expend PowerApps formula bar
; 950 for 1080p display
; 1310 for 1440p display
!2::
	WinGetPos, WindowX, WindowY, WindowW, WindowH, A
	MouseClickAndReturn(580, WindowH - 90)
return



; F13 - F24


; Expend PowerApps menu
NumpadSub::
ExpendFormulaMenu()
return


; PowerApps functions

; This will open property part of a control. First parameter is name of the property (i.e. "OnSelect")
; The location has been hardcode. Windows scaling on High DPI display might impact this.
PAProperty(PropertyName, PropertyX := 200, FormulaX:= 500, PropertyY := 220)
{
    MouseGetPos, StartX, StartY
	MouseClick, , PropertyX, PropertyY
    Send, ^a
    Send, %PropertyName%
    MouseClick, , FormulaX, PropertyY
    Send, ^a
    MouseMove, StartX, StartY
    return
}

; This will open formula bar
; 1902 for 1080p display
; 2542 for 1440p display
ExpendFormulaMenu(MenuX := 2542, MenuY := 219)
{
	MouseGetPos, StartX, StartY
	WinGetPos, WindowX, WindowY, WindowW, WindowH, A
	MouseClick, , WindowW - 18, MenuY
	MouseMove, StartX, StartY
}

; Mouse Click
MouseClickAndReturn(ClickX , ClickY)
{
	MouseGetPos, StartX, StartY
	MouseClick, , ClickX, ClickY
	MouseMove, StartX, StartY
}

; Windows functions
; Select/Open taskbar item
OpenTaskbarItem(Index)
{
	Send, #%Index%
}
