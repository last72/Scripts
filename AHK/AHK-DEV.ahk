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
ClickAndNextTab()
return

; Function
ClickAndNextTab()
{
    Click ; Simulates a left mouse click
    Sleep, 100 ; Waits 100 milliseconds
    Send, ^{Tab} ; Sends Ctrl + Tab
}