#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Cheatsheet
; #: Win
; !: Alt
; ^: Ctrl
; +: Shift


; TestKey
F2::
MouseMove(200, 200)
return

F3::
MouseClick(430, 319)
return


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