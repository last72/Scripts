#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F13 & F14::
MsgBox, "F13 - F14"
Return

F13 & a::
MsgBox, "F13 - a"
Return


F13 & 1::
MsgBox, "F13 - 1"
Return

F13 & 2::
MsgBox, "F13 - 2"
Return




