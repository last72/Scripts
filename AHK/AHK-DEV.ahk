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
SplitPath,% A_ScriptDir,, outDir
SplitPath,% outDir,, outDir2
plainttext := outDir2 . "1"
MsgBox %plainttext%
return




