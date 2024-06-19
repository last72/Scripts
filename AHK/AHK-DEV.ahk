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
; Get input from the user
    count := GetInput("Enter the number of times to click")

    ; Validate input
    if (count = "")
    {
        MsgBox, Invalid input. Please enter a valid integer.
        return
    }

    ; Convert input to integer
    count := count + 0

    ; Click the mouse button the specified number of times
    Loop, %count%
    {
        Click
        Sleep, 100 ; Delay between clicks (in milliseconds)
    }
return


F12 & c::
MsgBox, "Pressed"
return

GetInput(prompt) {
    InputBox, userInput, %prompt%, Enter an integer:, , 200, 120
    return userInput
}
