#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F1::
Send ^{Tab}
Sleep 100
Send 1
Sleep 100
Send ^{Tab}
return

F2::
Send ^{Tab}
Sleep 100
Send 2
Sleep 100
Send ^{Tab}
return

; `
`::
Send ^{Tab}
return

;1
1::
Send {Numpad1}
Send {Enter}
return

;0
2::
Send {Numpad0}
Send {Enter}
return

;Delete
3::
Send {Delete}
return