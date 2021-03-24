#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F13::
Send, Macro001
return

^F13::
Send, Macro002
return

!F13::
Send, Macro003
return

^!F13::
Send, Macro004
return

+F13::
Send, Macro005
return

^+F13::
Send, Macro006
return

!+F13::
Send, Macro007
return

^!+F13::
Send, Macro008
return