#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F13 & F14::
MsgBox, "F13 - F14"
Return




F13 & 1::
Send, ^{PrintScreen}
Return

F13 & 2::
MsgBox, "F13 - 2"
Return


F13 & q::
Sleep, 50
Send, Filter()
Send, {Left}
Return


F13 & a::
Sleep, 50
Send, LookUp()
Send, {Left}
Return


F13 & w::
Sleep, 50
Send, IsEmpty()
Send, {Left}
Return


F13 & s::
Sleep, 50
Send, IsBlank()
Send, {Left}
Return

F13 & z::
Sleep, 50
Send, Blank()
Send, {Left}
Return