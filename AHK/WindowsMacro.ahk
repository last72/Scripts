#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Cheatsheet
; #: Win
; !: Alt
; ^: Ctrl
; +: Shift

; Index: 1. Arduino input: F1
F2::
FunctionSample()
return



; Mouse Click
FunctionSample()
{
    Click, Left
    Sleep, 100
    Send, {Tab 6}
    Sleep, 100
    Send, {Enter}
}

; Mouse Click
YoutubeVideoNotInterested()
{
    Click, Left
    Sleep, 100
    Send, {Tab 6}
    Sleep, 100
    Send, {Enter}
}



; Secondary Clipboard
; Others
^!c::
Clipboard_temp := clipboardall
Clipboard := ""
Send ^c
Clipwait
Clipboard_2 := clipboardall
Clipboard := clipboard_temp
Return

^!v::
Clipboard_temp := clipboardall
Clipboard := clipboard_2
Send ^v
Sleep 300
Clipboard := clipboard_temp
Return
