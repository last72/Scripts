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
Send, Macro001
return

; Index: 10. Corsair input: F10
^F14::
Send, Macro001
return

; Index: 11. Corsair input: F11
!F14::
Send, Macro001
return

; Index: 12. Corsair input: F12
^!F14::
Send, Macro001
return

; Index: 13. Corsair input: `
+F14::
Send, Macro001
return

; Index: 14. Corsair input: 1
^+F14::
Send, Macro001
return

; Index: 15. Corsair input: 2
!+F14::
Send, Macro001
return

; Index: 16. Corsair input: 3
^!+F14::
Send, Macro001
return

; Index: 17. Corsair input: 4
F15::
Send, Macro001
return

; Index: 18. Corsair input: 5
^F15::
Send, Macro001
return

; Index: 19. Corsair input: 6
!F15::
Send, Macro001
return

; Index: 20. Corsair input: 7
^!F15::
Send, Macro001
return

; Index: 21. Corsair input: 8
+F15::
Send, Macro001
return

; Index: 22. Corsair input: 9
^+F15::
Send, Macro001
return

; Index: 23. Corsair input: 0
!+F15::
Send, Macro001
return

; Index: 24. Corsair input: -
^!+F15::
Send, Macro001
return

; Index: 25. Corsair input: =
F16::
Send, Macro001
return

; Index: 26. Corsair input: q
^F16::
Send, Macro001
return

; Index: 27. Corsair input: w
!F16::
Send, Macro001
return

; Index: 28. Corsair input: e
^!F16::
Send, Macro001
return

; Index: 29. Corsair input: r
+F16::
Send, Macro001
return

; Index: 30. Corsair input: t
^+F16::
Send, Macro001
return

; Index: 31. Corsair input: y
!+F16::
Send, Macro001
return

; Index: 32. Corsair input: u
^!+F16::
Send, Macro001
return

; Index: 33. Corsair input: i
F17::
Send, Macro001
return

; Index: 34. Corsair input: o
^F17::
Send, Macro001
return

; Index: 35. Corsair input: p
!F17::
Send, Macro001
return

; Index: 36. Corsair input: a
^!F17::
Send, Macro001
return

; Index: 37. Corsair input: s
+F17::
Send, Macro001
return

; Index: 38. Corsair input: d
^+F17::
Send, Macro001
return

; Index: 39. Corsair input: f
!+F17::
Send, Macro001
return

; Index: 40. Corsair input: g
^!+F17::
Send, Macro001
return

; Index: 41. Corsair input: h
F18::
Send, Macro001
return

; Index: 42. Corsair input: j
^F18::
Send, Macro001
return

; Index: 43. Corsair input: k
!F18::
Send, Macro001
return

; Index: 44. Corsair input: l
^!F18::
Send, Macro001
return

; Index: 45. Corsair input: z
+F18::
Send, Macro001
return

; Index: 46. Corsair input: x
^+F18::
Send, Macro001
return

; Index: 47. Corsair input: c
!+F18::
Send, Macro001
return

; Index: 48. Corsair input: v
^!+F18::
Send, Macro001
return

; Index: 49. Corsair input: b
F19::
Send, Macro001
return

; Index: 50. Corsair input: n
^F19::
Send, Macro001
return

; Index: 51. Corsair input: m
!F19::
Send, Macro001
return

; Index: 52. Corsair input: [
^!F19::
Send, Macro001
return

; Index: 53. Corsair input: ]
+F19::
Send, Macro001
return

; Index: 54. Corsair input: \
^+F19::
Send, Macro001
return

; Index: 55. Corsair input: ;
!+F19::
Send, Macro001
return

; Index: 56. Corsair input: 
^!+F19::
Send, Macro001
return

; Index: 57. Corsair input: ,
F20::
Send, Macro001
return

; Index: 58. Corsair input: .
^F20::
Send, Macro001
return

; Index: 59. Corsair input: /
!F20::
Send, Macro001
return

; Index: 60. Corsair input: escape
^!F20::
Send, Macro001
return

; Index: 61. Corsair input: tab
+F20::
Send, Macro001
return

; Index: 62. Corsair input: caps lock
^+F20::
Send, Macro001
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
MouseClick, , 1620, 290
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
Send, Macro001
return

; Index: 68. Corsair input: right alt
^!F21::
Send, Macro001
return

; Index: 69. Corsair input: fn
+F21::
Send, Blank
return

; Index: 70. Corsair input: menu key
^+F21::
Send, Macro001
return

; Index: 71. Corsair input: righ control
!+F21::
Send, Macro001
return

; Index: 72. Corsair input: right shift
^!+F21::
Send, Macro001
return

; Index: 73. Corsair input: enter
F22::
Send, Macro001
return

; Index: 74. Corsair input: backspace
^F22::
Send, Macro001
return

; Index: 75. Corsair input: printscreen
!F22::
Send, Macro001
return

; Index: 76. Corsair input: scrolllock
^!F22::
Send, Macro001
return

; Index: 77. Corsair input: pausebreak
+F22::
Send, Macro001
return

; Index: 78. Corsair input: insert
^+F22::
Send, Macro001
return

; Index: 79. Corsair input: delete
!+F22::
Send, Macro001
return

; Index: 80. Corsair input: home
^!+F22::
Send, Macro001
return

; Index: 81. Corsair input: end
F23::
Send, Macro001
return

; Index: 82. Corsair input: page up
^F23::
Send, Macro001
return

; Index: 83. Corsair input: page down
!F23::
Send, Macro001
return

; Index: 84. Corsair input: up
^!F23::
Send, Macro001
return

; Index: 85. Corsair input: left
+F23::
Send, Macro001
return

; Index: 86. Corsair input: down
^+F23::
PAProperty("Y")
Send, ^v
Send, .Y{Space}{+}{Space}
Send, ^v
Send, .Height
PAProperty("X")
Send, ^v
Send, .X
return

; Index: 87. Corsair input: right
!+F23::
PAProperty("Y")
Send, ^v
Send, .Y
PAProperty("X")
Send, ^v
Send, .X{Space}{+}{Space}
Send, ^v
Send, .Width
return

; Index: 88. Corsair input: numlock
^!+F23::
Send, Macro001
return

; Index: 89. Corsair input: Numpad /
F24::
Send, Macro001
return

; Index: 90. Corsair input: Numpad *
^F24::
Send, Macro001
return

; Index: 91. Corsair input: Numpad -
!F24::
Send, Macro001
return

; Index: 92. Corsair input: Numpad 0
^!F24::
Send, Macro001
return

; Index: 93. Corsair input: Numpad 1
+F24::
Send, Macro001
return

; Index: 94. Corsair input: Numpad 2
^+F24::
Send, Macro001
return

; Index: 95. Corsair input: Numpad 3
!+F24::
Send, Macro001
return

; Index: 96. Corsair input: Numpad 4
^!+F24::
Send, Macro001
return

; Index: 97. Corsair input: Numpad 5
SC073::
Send, Macro001
return

; Index: 98. Corsair input: Numpad 6
^SC073::
Send, Macro001
return

; Index: 99. Corsair input: Numpad 7
!SC073::
Send, Macro001
return

; Index: 100. Corsair input: Numpad 8
^!SC073::
Send, Macro001
return

; Index: 101. Corsair input: Numpad 9
+SC073::
Send, Macro001
return

; Index: 102. Corsair input: Numpad .
^+SC073::
Send, Macro001
return

; Index: 103. Corsair input: Numpad +
!+SC073::
Send, Macro001
return

; Index: 104. Corsair input: Numpad enter
^!+SC073::
Send, Macro001
return

; Index: 105. Corsair input: Light key
SC070::
Send, Macro001
return

; Index: 106. Corsair input: Winkey Lock key
^SC070::
Send, Macro001
return

; Index: 107. Corsair input: 0
!SC070::
Send, Macro001
return

; Index: 108. Corsair input: 0
^!SC070::
Send, Macro001
return

; Index: 109. Corsair input: 0
+SC070::
Send, Macro001
return

; Index: 110. Corsair input: 0
^+SC070::
Send, Macro001
return

; Index: 111. Corsair input: 0
!+SC070::
Send, Macro001
return

; Index: 112. Corsair input: 0
^!+SC070::
Send, Macro001
return


; PowerApps functions

; This will open property part of a control. First parameter is name of the property (i.e. "OnSelect")
; The location has been hardcode. Windows scaling on High DPI display might impact this.
PAProperty(PropertyName, PropertyX := 200, FormulaX:= 500, PropertyY := 220)
{
    MouseGetPos, StartX, StartY
	MouseClick, , PropertyX, PropertyY
    Send, ^a
    Send, %PropertyName%
    MouseClick, , FormulaX, PropertyY
    Send, ^a
    MouseMove, StartX, StartY
    return
}