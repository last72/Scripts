#SingleInstance force
#Persistent
#include Lib\AutoHotInterception.ahk

AHI := new AutoHotInterception()
;id1 := AHI.GetKeyboardId(0x04D9, 0xA096, 1)
id1 := AHI.GetKeyboardId(0x0000, 0x0000, 3)
cm1 := AHI.CreateContextManager(id1)
return

#if cm1.IsActive
::aaa::JACKPOT
a:: 
	Send, Parent.Width
	return
#if

^Esc::
	ExitApp

; Parent.Width
z::
Send, Parent.Width
return