#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Cheatsheet
; #: Win
; !: Alt
; ^: Ctrl
; +: Shift

; Function Row
; Select All
F1::
Send, ^a
return

; Formular text
F3::
SelectPropertyValue()
Send, ^a
return

; PropertyName
F4::
SelectPropertyDropdown()
Send, ^a
return

; Name Text
F6::
WinGetPos, WindowX, WindowY, WindowW, WindowH, A
MouseClickAndReturn(WindowW - 300, 290)
Send, ^a
return

; Property: X
F7::
PAProperty("X")
return

; Property: Width
F8::
PAProperty("Width")
return

; ^v.Y + ^v.Height
F9::
Send, ^v.Y {+} ^v.Height
return

; ^v.X + ^v.Width
F10::
Send, ^v.X {+} ^v.Width
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
PAProperty("Y")
return

; Property: Height
0::
PAProperty("Height")
return


; Others


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
	MouseClickAndReturn(580, WindowH - 160)
return

; PA Reset selection
!3::
	WinGetPos, WindowX, WindowY, WindowW, WindowH, A
	MouseClickAndReturn(WindowW/2, WindowH - 80)
return



; F13 - F24


; Expend PowerApps menu
NumpadSub::
ExpendFormulaMenu()
return


^+F9::
ExitApp
return

!w:: ; Click Save on SharePoint add new column. Zoom 125%
WinGetPos, WindowX, WindowY, WindowW, WindowH, A
;MouseMove, WindowW - 350, WindowH - 40
MouseClickAndReturn(WindowW - 350, WindowH - 40)
return


; PowerApps functions

; This will open property part of a control. First parameter is name of the property (i.e. "OnSelect")
; The location has been hardcode. Windows scaling on High DPI display might impact this.
PAProperty(Property)
{
	SelectPropertyDropdown()
	Send, ^a
	Send, %Property%
	Sleep, 50
	SelectPropertyValue()
	Send, ^a
}

; This will open formula bar
; 1902 for 1080p display
; 2542 for 1440p display
ExpendFormulaMenu(MenuY := 219)
{
	SelectPropertyDropdown()
	Sleep, 200
	Send, +{Tab}
	Sleep, 200
	Send, {Enter}
}

; Mouse Click
MouseClickAndReturn(ClickX , ClickY)
{
	MouseGetPos, StartX, StartY
	MouseClick, , ClickX, ClickY
	MouseMove, StartX, StartY
}

SelectPropertyValue()
{
	MouseClickAndReturn(500, 140)
	MouseClickAndReturn(500, 220)
}

SelectPropertyDropdown()
{
	MouseClickAndReturn(50, 220)
	Sleep, 50
}

; Windows functions
; Select/Open taskbar item
OpenTaskbarItem(Index)
{
	Send, #%Index%
}

FunctionExample()
{
	MsgBox "Functionfromotherscript"
}