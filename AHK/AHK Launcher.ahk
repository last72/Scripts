#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SplitPath,% A_ScriptDir,, scriptDir


; Launch Main Keyboard Script
^F9::
Run %scriptDir%\AHK\PowerApps\PowerAppsMain.ahk
return

; Launch Secondary Keyboard Script
^F11::
Run %scriptDir%\SecondKeyboard\ArduinoPS2\PowerApps-Ino.ahk
return

;Launch Both Main and Secondary Keyboard Script
^F12::
Run %scriptDir%\AHK\PowerApps\PowerAppsMain.ahk
Run %scriptDir%\SecondKeyboard\ArduinoPS2\PowerApps-Ino.ahk
return
