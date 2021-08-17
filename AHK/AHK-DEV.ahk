#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Index: 1. Arduino input: F1
F8 & a::
MsgBox, "F8 & a pressed"
return

; Index: 1. Arduino input: F1
F8 & 1::
MsgBox, "F8 & 1 pressed"
return


; Index: 1. Arduino input: F1
F13 & F14::
MsgBox, "Two pressed"
return

F14 & F13::
MsgBox, "TwoRevedsee pressed"
return

F13::
MsgBox, "one pressed Revers"
return
