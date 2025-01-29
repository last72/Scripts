#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Cheatsheet
; #: Win
; !: Alt
; ^: Ctrl
; +: Shift


F2:


; TestKey
F2::
GetMousePosRelativeToActiveWindow()
return

F3::
MouseClick(430, 319)
return

; Function
ClickAndNextTab()
{
    Click ; Simulates a left mouse click
    Sleep, 100 ; Waits 100 milliseconds
    Send, ^{Tab} ; Sends Ctrl + Tab
}

GetMousePosRelativeToActiveWindow()
{
    ; Get the current mouse position
    MouseGetPos, MouseX, MouseY, WinID

    ; Get the position of the active window
    WinGetPos, WinX, WinY, , , ahk_id %WinID%

    ; Calculate the relative position
    RelX := MouseX - WinX
    RelY := MouseY - WinY

    ; Display the mouse and window positions in a popup
    MsgBox, Mouse Position:`nX: %MouseX%`nY: %MouseY%`n`nWindow Position:`nX: %WinX%`nY: %WinY%`n`nRelative Position:`nX: %RelX%`nY: %RelY%
}

GetActiveWindowName()
{
    ; Get the ID of the currently active window
    WinGet, WinID, ID, A

    ; Get the name (title) of the active window
    WinGetTitle, WinTitle, ahk_id %WinID%

    ; Display the name of the active window in a popup
    MsgBox, The active window is: %WinTitle%
}


; Mouse Click
MouseClickAndReturn(ClickX , ClickY)
{
	MouseGetPos, StartX, StartY
	MouseClick, , ClickX, ClickY
	MouseMove, StartX, StartY
}

; Mouse Click
MouseClick(ClickX , ClickY)
{
	MouseClick, , ClickX, ClickY
}

; Mouse Click
MouseMove(ClickX , ClickY)
{
    MouseMove, ClickX, ClickX
}