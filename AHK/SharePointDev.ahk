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
ClickAndNextTab()
return

F3::
Loop, 8
{
    ClickAndNextTab()
    Sleep, 100
}
return

; Sweep through so it can load
F4::
Loop, 8
{
    Send, ^{Tab} ; Sends Ctrl + Tab
    Sleep, 100
}
return


; Function
ClickAndNextTab()
{
    Click ; Simulates a left mouse click
    Sleep, 100 ; Waits 100 milliseconds
    Send, ^{Tab} ; Sends Ctrl + Tab
}