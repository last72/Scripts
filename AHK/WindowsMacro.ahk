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

; clicks mouse left button number of times. Popup shows up and user enter interger. Used to create 100 rows in ms word.
MouseClickLoop()
{
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
}

ClickAndNextTab()
{
    Click ; Simulates a left mouse click
    Sleep, 100 ; Waits 100 milliseconds
    Send, ^{Tab} ; Sends Ctrl + Tab
}

; Mouse Click
MouseClickAndReturn(ClickX , ClickY)
{
	MouseGetPos, StartX, StartY
	MouseClick, , ClickX, ClickY
	MouseMove, StartX, StartY
}


; Mouse Click
MouseClick(ClickX , ClickY)
{
	MouseClick, , ClickX, ClickY
}

; Mouse Click
MouseMove(MoveX , MoveY)
{
    MouseMove, MoveX, MoveX
}