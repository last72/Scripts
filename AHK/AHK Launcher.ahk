#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^F8::
Run "C:\Users\WoongChoi\Documents\GitHub\Scripts\AHK\MSExamPrep.ahk"
return


^F9::
Run "C:\Users\WoongChoi\Documents\GitHub\Scripts\AHK\PowerApps\PowerAppsMain.ahk"
return

^F10::
Run "C:\Users\WoongChoi\Documents\GitHub\Scripts\SecondKeyboard\iCue\iCUE-136Macro.ahk"
return

^F11::
Run "C:\Users\WoongChoi\Documents\GitHub\Scripts\SecondKeyboard\ArduinoPS2\PowerApps-Ino.ahk"
return

^F12::
Run "C:\Users\WoongChoi\Documents\GitHub\Scripts\AHK\PowerApps\PowerAppsMain.ahk"
Run "C:\Users\WoongChoi\Documents\GitHub\Scripts\SecondKeyboard\iCue\iCUE-136Macro.ahk"
Run "C:\Users\WoongChoi\Documents\GitHub\Scripts\SecondKeyboard\ArduinoPS2\PowerApps-Ino.ahk"
return

^+F12::
ExitApp