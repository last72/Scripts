#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!
#SingleInstance force ;only one instance of this script may run at a time!
#MaxHotkeysPerInterval 2000
#WinActivateForce ;https://autohotkey.com/docs/commands/_WinActivateForce.htm


#IfWinActive ;---- This will allow for everything below this line to work in ANY application.

~F24::
FileRead, key, C:\AHK\2nd-keyboard\LUAMACROS\keypressed.txt
; tippy(key) ;<--- this function will just launch a quick tooltip that shows you what key you pressed. OPTIONAL.
If (key = "o")
preset("flip horizontal") 
else if(key = "p")
preset("flip vertical")
else if(key = "i")
	{
	preset("multiply")
	;note that if you want to have multiple lines, you must use { } thingies.
	}
else if (key = "leftbracket")
preset("pop in motion") 
else if(key = "rightbracket")
preset("pop out motion")

else if (key = "y")
preset("pop in transform") 
else if(key = "u")
preset("pop out transform")

else if(key = "m")
preset("pan down")
else if(key = "j")
preset("pan up")
else if(key = "n")
preset("pan left")
else if(key = "comma")
preset("pan right")
else if(key = "h")
preset("zoom fast")
else if(key = "k")
preset("zoom slow")

else if(key = "period")
preset("crop small")
else if(key = "slash")
preset("crop full")
else if(key = "singlequote")
preset("warp")

else if(key = "semicolon")
preset("blur with edges")
else if(key = "l")
preset("LTT")

else if(key = "F6")
insertSFX("buzz")
else if(key = "F7")
insertSFX("ding")
else if(key = "F8")
insertSFX("bleep")
else if(key = "F9")
insertSFX("woosh")
else if(key = "F10")
insertSFX("woosh TSFX")
else if(key = "F11")
insertSFX("bwoop")
else if(key = "F12")
PAProperty("Height")
else if(key = "F5")
insertSFX("SEARCH")

;[[[[[[[[begin transitions]]]]]]]]]]]]

else if (key = "insert") ;FLASH TRANSITIONS
preset("impact flash long") ;it turns out you can SAVE transition presets from the effect controls triple line mnu button. But only cross dissolve and 3rd party transitions. I use filmimpact.net and red giant universe transitions. Lot of good free ones!
else if(key = "home") 
preset("impact flash med")
else if(key = "pageup")
preset("impact flash short")
else if(key = "delete") ;DISSOLVE TRANSITIONS
preset("cross dissolve long")
else if(key = "end")
preset("cross dissolve med")
else if(key = "pagedown")
preset("cross dissolve short")


; //////////////////////////////////////

else if(key = "q") ;WIPE transitions
PAProperty("X")
else if(key = "w")
PAProperty("Width")
else if(key = "e")
PAProperty("Fill")


else if(key = "a")
PAProperty("Y")
else if(key = "s")
PAProperty("Height")
else if(key = "d")
PAProperty("Color")

else if(key = "z")
PAProperty("Visible")
else if(key = "x")
PAProperty("OnSelect")
else if(key = "c")
PAProperty("Default")


else if(key = "minus")
audioMonoMaker(0)
else if(key = "equals")
audioMonoMaker(1)


else if(key = "1")
Copy(1)
else if(key = "2")
Copy(2)
else if(key = "3")
Copy(3)

else if(key = "r")
Copy(3)

else if(key = "f")
PAProperty("Size")
else if(key = "v")
PAProperty("Text")

else if(key = "4")
Paste(1)
else if(key = "5")
Paste(2)
else if(key = "6")
Paste(3)

else if(key = "up") ;impact push transitions - fun fact, you can SAVE TRANSITION PRESETS if they are cross dissolve or from a 3rd party. In the effect controls triple line menu.
preset("push up")
else if(key = "left")
preset("push left")
else if(key = "down")
preset("push down")
else if(key = "right")
preset("push right")

else if(key = "enter")
Send ^!e ;in premiere, set this (CTRL ALT E) to "remove effects"

else if(key = "num0") ;just mirroring the normal numpad - IDK how else to do this.
Send {Numpad0}
else if(key = "num1")
Send {Numpad1}
else if(key = "num2")
Send {Numpad2}
else if(key = "num3")
Send {Numpad3}
else if(key = "num4")
Send {Numpad4}
else if(key = "num5")
Send {Numpad5}
else if(key = "num6")
Send {Numpad6}
else if(key = "num7")
Send {Numpad7}
else if(key = "num8")
Send {Numpad8}
else if(key = "num9")
Send {Numpad9}
else if(key = "numDiv")
Send {NumpadDiv}
else if(key = "numMult")
Send {NumpadMult}

Return ;from luamacros F24
;THE BLOCK OF CODE ABOVE is the original, simple Luamacros-dependant script.


insertSFX(parameter){
msgbox, you launched insertSFX with the parameter %parameter%
msgbox, obviously you can now put any function you like in here.

}


audiomonomaker(parameter){
msgbox, you launched audiomonomaker with the parameter %parameter%
msgbox, you can grab the real function from Almost_All_Premiere_Functions.ahk

}


preset(parameter){
msgbox, you launched PRESET with the parameter %parameter%

}


recallTransition(parameter){
msgbox, you launched recallTransition with the parameter %parameter%
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



; PowerApps functions

; This will open property part of a control. First parameter is name of the property (i.e. "OnSelect")
; The location has been hardcode. Windows scaling on High DPI display might impact this.
PAProperty(PropertyName, PropertyX := 50, FormulaX:= 500, PropertyY := 220)
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