#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



; Index: 1. Arduino input: F1
1::
MsgBox, "1 pressed"
return

2::
MsgBox, "2 pressed"
return

3::
MsgBox, "3 pressed"
return
