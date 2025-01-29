#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Cheatsheet
; #: Win
; !: Alt
; ^: Ctrl
; +: Shift


F1::
MouseClick(1633, 300)
return

F2::
MouseClick(300, 400)
return

F3::
MouseClick(1800, 1030)
return

; Function
ClickAndNextTab()
{
    Click ; Simulates a left mouse click
    Sleep, 100 ; Waits 100 milliseconds
    Send, ^{Tab} ; Sends Ctrl + Tab
}

; Mouse Click
MouseClick(ClickX , ClickY)
{
	MouseClick, , ClickX, ClickY
}

; Mouse Click
MouseMove(MoveX , MoveY)
{
    MouseMove, MoveX, MoveX
}