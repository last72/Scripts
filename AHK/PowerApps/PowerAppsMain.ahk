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
MouseClickAndReturn(WindowW - 300, 268)
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


; Enter Number
F12 & 1::
Send, {Numpad1}
return

F12 & 2::
Send, {Numpad2}
return
F12 & 3::
Send, {Numpad3}
return
F12 & 4::
Send, {Numpad4}
return
F12 & 5::
Send, {Numpad5}
return
F12 & 6::
Send, {Numpad6}
return
F12 & 7::
Send, {Numpad7}
return
F12 & 8::
Send, {Numpad8}
return
F12 & 9::
Send, {Numpad9}
return
F12 & 0::
Send, {Numpad0}
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
; F13 is for 12E3 macro

; Create new group in edge. hover the mouse over first
F13 & Q::
Sleep, 50
EdgeNewGroup()
return


; Duplicate tab
F13 & W::
Sleep, 50
Send, ^+k
return

; Bump z layer to top
F13 & E::
Sleep, 50
Send, ^+]
return

; #l lock the machine
F13 & R::
Sleep, 50
DllCall("LockWorkStation")
return

; Save
F13 & A::
Sleep, 50
Send, ^s
return

; Windows view
F13 & S::
Sleep, 50
Send, #{Tab}
return

; Close window
F13 & F::
Sleep, 50
Send, !{F4}
return

; New tab
F13 & Z::
Sleep, 50
Send, ^t
return

; Open recently closed Tab
F13 & C::
Sleep, 50
Send, ^+t
return

; Close Tab
F13 & V::
Sleep, 50
Send, ^w
return



; First Knob - Onenote horizontal scroll

F13 & T::
Sleep, 50
ControlGetFocus, fcontrol, A
Loop 2  ; <-- Increase this value to scroll faster.
    SendMessage, 0x114, 0, 0, %fcontrol%, A  ; 0x114 is WM_HSCROLL and the 0 after it is SB_LINELEFT.
return

F13 & Y::
Sleep, 50
; SoundSet, +1,, Mute
return

F13 & U::
Sleep, 50
ControlGetFocus, fcontrol, A
Loop 2  ; <-- Increase this value to scroll faster.
    SendMessage, 0x114, 1, 0, %fcontrol%, A  ; 0x114 is WM_HSCROLL and the 1 after it is SB_LINERIGHT.
return


; Second Knob - Scroll wheel

F13 & G::
Sleep, 50
Loop, 20
{
	Send, {WheelUp}
}
return

F13 & H::
return

F13 & J::
Sleep, 50
Loop, 20
{
	Send, {WheelDown}
}
return

; ; Third Knob - Circur control

; F13 & B::
; Send, {Left}
; return

; F13 & N::
; Send, {Enter}
; return

; F13 & M::
; Send, {Right}
; return

; Third Knob - Tab control

F13 & B::
Sleep, 50
Send, ^+{Tab}
; Send {F13} ;forced let go
return

F13 & N::
Sleep, 50
Send, ^w
return

F13 & M::
Sleep, 50
Send, ^{Tab}
; Send {F13} ;forced let go
return


; end of F13 - F24


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
	MouseClickAndReturn(500, 195)
	MouseClickAndReturn(500, 195)
}

SelectPropertyDropdown()
{
	MouseClickAndReturn(50, 195)
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

EdgeNewGroup()
{
	Click, Right
	Send, {Down}
	Send, {Down}
	Sleep, 50
	Send, {Enter}
	Sleep, 50
	Send, {Enter}
}