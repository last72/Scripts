#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; Index: 1. Corsair input: F1
F13::
Send, #1
return

; Index: 2. Corsair input: F2
^F13::
Send, #2
return

; Index: 3. Corsair input: F3
!F13::
Send, #3
return

; Index: 4. Corsair input: F4
^!F13::
Send, #4
return

; Index: 5. Corsair input: F5
+F13::
Send, #5
return

; Index: 6. Corsair input: F6
^+F13::
Send, #6
return

; Index: 7. Corsair input: F7
!+F13::
Send, #7
return

; Index: 8. Corsair input: F8
^!+F13::
Send, #8
return

; Index: 9. Corsair input: F9
F14::
PAProperty("Visible")
Send,false
return

; Index: 10. Corsair input: F10
^F14::
PAProperty("Visible")
Send,true
return

; Index: 11. Corsair input: F11
; 'Send backward' 5 times
!F14::
Send, ^[
Send, ^[
Send, ^[
Send, ^[
Send, ^[
Send, MACRO EMPTY

return

; Index: 12. Corsair input: F12
; 'Bring forward' 5 times
^!F14::
Send, ^]
Send, ^]
Send, ^]
Send, ^]
Send, ^]
return

; Index: 13. Corsair input: `
; Kill window 
+F14::
WinClose, A
return

; Index: 14. Corsair input: 1
^+F14::
PAProperty("X")
return

; Index: 15. Corsair input: 2
!+F14::
PAProperty("Width")
return

; Index: 16. Corsair input: 3
^!+F14::
PAProperty("Font")
return

; Index: 17. Corsair input: 4
F15::
PAProperty("BorderColor")
return

; Index: 18. Corsair input: 5
^F15::
PAProperty("HoverBorderColor")
return

; Index: 19. Corsair input: 6
!F15::
PAProperty("DisabledBorderColor")
return

; Index: 20. Corsair input: 7
^!F15::
PAProperty("PressedBorderColor")
return

; Index: 21. Corsair input: 8
+F15::
Send, MACRO EMPTY
return

; Index: 22. Corsair input: 9
^+F15::
Send, MACRO EMPTY
return

; Index: 23. Corsair input: 0
!+F15::
MouseGetPos, StartX, StartY
MouseClick, , StartX, StartY
return

; Index: 24. Corsair input: -
; Move screen up
^!+F15::
Click, Down
Sleep, 50
Click, Up
MouseGetPos, StartX, StartY
Sleep, 150
MouseMove, StartX + 30, StartY + 30
Click, Down
Sleep, 50
Click, Up
MouseMove, StartX, StartY
return

; Index: 25. Corsair input: =
; Remove Connector
F16::
MouseGetPos, StartX, StartY
MouseClick, , StartX, StartY
Sleep, 150
MouseClick, , StartX, StartY + 70
MouseMove, StartX, StartY
return

; Index: 26. Corsair input: q
^F16::
PAProperty("Y")
return

; Index: 27. Corsair input: w
!F16::
PAProperty("Height")
return

; Index: 28. Corsair input: e
^!F16::
PAProperty("FontWeight")
return

; Index: 29. Corsair input: r
+F16::
PAProperty("BorderThickness")
return

; Index: 30. Corsair input: t
^+F16::
PAProperty("HoverColor")
return

; Index: 31. Corsair input: y
!+F16::
PAProperty("DisabledColor")
return

; Index: 32. Corsair input: u
^!+F16::
PAProperty("PressedColor")
return

; Index: 33. Corsair input: i
F17::
Send, MACRO EMPTY
return

; Index: 34. Corsair input: o
^F17::
Send, MACRO EMPTY
return

; Index: 35. Corsair input: p
!F17::
Send, MACRO EMPTY
return

; Index: 36. Corsair input: a
^!F17::
PAProperty("Visible")
return

; Index: 37. Corsair input: s
+F17::
PAProperty("Size")
return

; Index: 38. Corsair input: d
^+F17::
PAProperty("Color")
return

; Index: 39. Corsair input: f
!+F17::
PAProperty("Default")
return

; Index: 40. Corsair input: g
^!+F17::
PAProperty("HoverFill")
return

; Index: 41. Corsair input: h
F18::
PAProperty("DisabledFill")
return

; Index: 42. Corsair input: j
^F18::
PAProperty("PressedFill")
return

; Index: 43. Corsair input: k
!F18::
Send, MACRO EMPTY
return

; Index: 44. Corsair input: l
^!F18::
Send, MACRO EMPTY
return

; Index: 45. Corsair input: z
+F18::
PAProperty("OnSelect")
return

; Index: 46. Corsair input: x
^+F18::
PAProperty("Text")
return

; Index: 47. Corsair input: c
!+F18::
PAProperty("Fill")
return

; Index: 48. Corsair input: v
^!+F18::
PAProperty("DisplayMode")
return

; Index: 49. Corsair input: b
F19::
PAProperty("FocusedBorderColor")
return

; Index: 50. Corsair input: n
^F19::
PAProperty("FocusedBorderThickness")
return

; Index: 51. Corsair input: m
;  Select
!F19::
Send, Select();
Send, {Left}
Send, {Left}
return

; Index: 52. Corsair input: [
^!F19::
Send, MACRO EMPTY
return

; Index: 53. Corsair input: ]
+F19::
run calc.exe
return

; Index: 54. Corsair input: \
^+F19:: ; Coffee
Run C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe "https://www.innolabcafe.com.au/my-account/" " --new-window --profile-directory=Default"
return

; Index: 55. Corsair input: ;
!+F19::
WinGetPos, WindowX, WindowY, WindowW, WindowH, A
MouseClickAndReturn(72, WindowH - 20)
return

; Index: 56. Corsair input: '
^!+F19::
WinGetPos, WindowX, WindowY, WindowW, WindowH, A
MouseClickAndReturn(WindowW - 50, WindowH - 20)
return

; Index: 57. Corsair input: ,
F20::
MouseGetPos, StartX, StartY
MouseClick, , StartX, StartY
Sleep, 150
MouseClick, , StartX, StartY + 130
MouseMove, StartX, StartY
return

; Index: 58. Corsair input: .
^F20::
Send, MACRO EMPTY
return

; Index: 59. Corsair input: /
!F20::
PAProperty("OnVisible")
return

; Index: 60. Corsair input: escape
^!F20::
Send, MACRO EMPTY
return

; Index: 61. Corsair input: tab
; New tab
+F20::
Send, ^t
return

; Index: 62. Corsair input: caps lock
; Close tab
^+F20::
Send, ^w
return

; Index: 63. Corsair input: left shift
; Reset
!+F20::
Send, Reset()`;
Send, {Left}
Send, {Left}
return

; Index: 64. Corsair input: left control
; Copy Control Name
^!+F20::
MouseGetPos, StartX, StartY
WinGetPos, WindowX, WindowY, WindowW, WindowH, A
MouseClick, , WindowW - 300, 290
Send, ^a
Send, ^c
MouseMove, StartX, StartY
return

; Index: 65. Corsair input: windows key
; UpdateContext
F21::
Send, UpdateContext({{}{}});
Send, {Left}
Send, {Left}
Send, {Left}
return

; Index: 66. Corsair input: left alt
; ClearCollect
^F21::
Send, ClearCollect()`;
Send, {Left}
Send, {Left}
return

; Index: 67. Corsair input: spacebar
!F21::
Send, MACRO EMPTY
return

; Index: 68. Corsair input: right alt
^!F21::
PAProperty("OnSelect")
return

; Index: 69. Corsair input: fn
+F21::
PAProperty("OnChange")
return

; Index: 70. Corsair input: menu key
^+F21::
ScrollUpManyTimes()
return

; Index: 71. Corsair input: righ control
!+F21::
ScrollDownManyTimes()
return

; Index: 72. Corsair input: right shift
^!+F21::
Send, MACRO EMPTY
return

; Index: 73. Corsair input: enter
; MYOB Timesheet
F22::
Run C:\Users\Woong\AppData\Local\Programs\MYOB\AccountRight\Huxley.Application.exe
return

; Index: 74. Corsair input: backspace
^F22::
MouseClickAndReturn(40, 150)
return

; Index: 75. Corsair input: printscreen
; Create a new Button
!F22::
MouseClickAndReturn(150, 145)
Sleep, 350
MouseClickAndReturn(280, 180)
return

; Index: 76. Corsair input: scrolllock
^!F22::
MouseClickAndReturn(150, 145)
Sleep, 350
MouseClickAndReturn(200, 180)
return

; Index: 77. Corsair input: pausebreak
+F22::
MouseClickAndReturn(150, 145)
Sleep, 350
MouseClickAndReturn(550, 180)
MouseClickAndReturn(550, 220)
return

; Index: 78. Corsair input: insert
^+F22::
Copy(1)
return

; Index: 79. Corsair input: delete
!+F22::
Paste(1)
return

; Index: 80. Corsair input: home
^!+F22::
Send,Parent.X
return

; Index: 81. Corsair input: end
F23::
Send,Parent.Width
return

; Index: 82. Corsair input: page up
^F23::
Send,Parent.Y
return

; Index: 83. Corsair input: page down
!F23::
Send,Parent.Height
return

; Index: 84. Corsair input: up
^!F23::
Send, MACRO EMPTY
return

; Index: 85. Corsair input: left
; Set X and Width Same
+F23::
PAProperty("X")
Sleep, 100
Send, ^v
Send, .X
PAProperty("Width")
Sleep, 100
Send, ^v
Send, .Width
return

; Index: 86. Corsair input: down
; Attach to buttom
^+F23::
PAProperty("Y")
Sleep, 100
Send, ^v
Send, .Y{Space}{+}{Space}
Send, ^v
Send, .Height
PAProperty("X")
Sleep, 100
Send, ^v
Send, .X
return

; Index: 87. Corsair input: right
; Attach to Right
!+F23::
PAProperty("Y")
Sleep, 100
Send, ^v
Send, .Y
PAProperty("X")
Sleep, 100
Send, ^v
Send, .X{Space}{+}{Space}
Send, ^v
Send, .Width
return

; Index: 88. Corsair input: numlock
^!+F23::
PAProperty("Fill")
Send,Transparent
return

; Index: 89. Corsair input: Numpad /
F24::
PAProperty("Fill")
Send,Lime
return

; Index: 90. Corsair input: Numpad *
^F24::
PAProperty("Fill")
Send,Pink
return

; Index: 91. Corsair input: Numpad -
!F24::
Send, MACRO EMPTY
return

; Index: 92. Corsair input: Numpad 0
^!F24::
Send,ThisItem.
return

; Index: 93. Corsair input: Numpad 1
+F24::
Send, MACRO EMPTY
return

; Index: 94. Corsair input: Numpad 2
^+F24::
Send, MACRO EMPTY
return

; Index: 95. Corsair input: Numpad 3
!+F24::
Send, MACRO EMPTY
return

; Index: 96. Corsair input: Numpad 4
^!+F24::
Send, MACRO EMPTY
return

; Index: 97. Corsair input: Numpad 5
SC073::
Send, MACRO EMPTY
return

; Index: 98. Corsair input: Numpad 6
^SC073::
Send, MACRO EMPTY
return

; Index: 99. Corsair input: Numpad 7
!SC073::
Send,Transparent
return

; Index: 100. Corsair input: Numpad 8
^!SC073::
Send,Lime
return

; Index: 101. Corsair input: Numpad 9
+SC073::
Send,Pink
return

; Index: 102. Corsair input: Numpad .
^+SC073::
Send,Self.
return

; Index: 103. Corsair input: Numpad +
!+SC073::
Send, MACRO EMPTY
return

; Index: 104. Corsair input: Numpad enter
^!+SC073::
PACopyFormulaText()
return

; Index: 105. Corsair input: Light key
; Full screen snip
SC070::
Send #w
Sleep, 500
Send {Tab}{Tab}
Sleep, 500
Send {Space}
Sleep, 1000
WinMaximize,A
return

; Index: 106. Corsair input: Winkey Lock key
; Lock Windwos
^SC070::
DllCall("LockWorkStation")
return

; Index: 107. Corsair input: 0
!SC070::
Send, MACRO EMPTY
return

; Index: 108. Corsair input: 0
^!SC070::
Send, MACRO EMPTY
return

; Index: 109. Corsair input: 0
+SC070::
Send, MACRO EMPTY
return

; Index: 110. Corsair input: 0
^+SC070::
Send, MACRO EMPTY
return

; Index: 111. Corsair input: 0
!+SC070::
Send, MACRO EMPTY
return

; Index: 112. Corsair input: 0
^!+SC070::
Send, MACRO EMPTY
return


; PowerApps functions

; This will open property part of a control. First parameter is name of the property (i.e. "OnSelect")
; The location has been hardcode. Windows scaling on High DPI display might impact this.
PAProperty(PropertyName, PropertyX := 200, FormulaX:= 500, PropertyY := 220)
{
    MouseGetPos, StartX, StartY
	MouseClick, , PropertyX, PropertyY
	; Somewhere around here has issue that does not release ctrl/shift key
    Send, ^a
	Sleep 100
    Send, %PropertyName%
    MouseClick, , FormulaX, PropertyY
    Send, ^a
	Sleep 100
    MouseMove, StartX, StartY
    return
} 

PACopyFormulaText(FormulaX:= 500, FormulaY := 220)
{
	MouseGetPos, StartX, StartY
	MouseClick, , FormulaX, FormulaY
	Send, ^a
	Send, ^c
	MouseMove, StartX, StartY
}


; Multiple clipboard scenario
; Very slow on large data (i.e. 20+ lines of code). Suitable for short data such as variable name
; Ref: https://www.autohotkey.com/boards/viewtopic.php?t=66180
#Persistent
Copy(clipboardID) {
	global ; All variables are global by default
	local oldClipboard := ClipboardAll ; Save the (real) clipboard
	
	Clipboard := "" ; Erase the clipboard first, or else ClipWait does nothing
	Send ^c
	ClipWait, 2, 1 ; Wait 1s until the clipboard contains any kind of data
	if ErrorLevel {
		Clipboard := oldClipboard ; Restore old (real) clipboard
		return
	}
	
	ClipboardData%clipboardID% := Clipboard
	
	Clipboard := oldClipboard ; Restore old (real) clipboard
}

Cut(clipboardID) {
	global ; All variables are global by default
	local oldClipboard := ClipboardAll ; Save the (real) clipboard
	
	Clipboard := "" ; Erase the clipboard first, or else ClipWait does nothing
	Send ^x
	ClipWait, 2, 1 ; Wait 1s until the clipboard contains any kind of data
	if ErrorLevel {
		Clipboard := oldClipboard ; Restore old (real) clipboard
		return
	}
	ClipboardData%clipboardID% := Clipboard
	
	Clipboard := oldClipboard ; Restore old (real) clipboard
}

Paste(clipboardID) {
	global
	local oldClipboard := ClipboardAll ; Save the (real) clipboard

	Clipboard := "" ; Erase the clipboard first, or else ClipWait does nothing
	Clipboard := ClipboardData%clipboardID%
	ClipWait, 2, 1 ; Wait 1s until the clipboard contains any kind of data
	SendRaw, % Clipboard ; Was having an issue with ^v

	Clipboard := oldClipboard ; Restore old (real) clipboard
}

ScrollUpManyTimes()
{
	MouseClickAndReturn(333, 370)
	; MouseClick, , 333, 370
}

ScrollDownManyTimes()
{
	WinGetPos, WindowX, WindowY, WindowW, WindowH, A
	MouseClickAndReturn(333, WindowH - 20)
	; MouseClick, , 333, WindowH - 20
}

; Mouse Click
MouseClickAndReturn(ClickX , ClickY)
{
	MouseGetPos, StartX, StartY
	MouseClick, , ClickX, ClickY
	MouseMove, StartX, StartY
}