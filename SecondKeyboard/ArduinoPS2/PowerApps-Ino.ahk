﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#Include, C:\Users\WoongChoi\Documents\Github\Scripts\AHK\PowerApps\PowerAppsMain.ahk


; Cheatsheet
; #: Win
; !: Alt
; ^: Ctrl
; +: Shift


F13 & F14::
MsgBox, "F13 - F14"
Return


; Start F1 to F12
F13 & F1::
Sleep, 50
Send, ^{PrintScreen}
Sleep, 1200
Send !{F4}
Return

F13 & F2::
PAProperty("Y")
Return

; VSCode Make one line
F13 & F3::
Sleep, 50
Send !+d
Return

; VSCode: Format all
F13 & F4::
Sleep, 50
Send !+f
Return

F13 & F5::
GoToWebsite("outlook.office.com")
Return

F13 & F6::
GoToWebsite("make.powerapps.com")
Return

F13 & F7::
GoToWebsite("teams.microsoft.com")
Return

F13 & F8::
GoToWebsite("australia.flow.microsoft.com")
Return

F13 & F9::
GoToWebsite("https://www.innolabcafe.com.au/shop/flat-white/")
Return

F13 & F10::
GoToWebsite("https://www.innolabcafe.com.au/shop/long-black/")
Return

F14 & F10::
GoToWebsite("https://www.innolabcafe.com.au/shop/iced-long-black/")
Return

F13 & F11::
GoToWebsite("https://www.innolabcafe.com.au/shop/chai-latte/")
Return

F14 & F11::
GoToWebsite("https://www.innolabcafe.com.au/shop/hot-chocolate/")
Return

F13 & F12:: ; Coffee
Run "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" "https://www.innolabcafe.com.au/my-account/" " --new-window --profile-directory=Default"
Return


; End F1 to F12


; Start Other Keys
F13 & BackSpace::
Send, ^z
Return



F13 & RAlt::
Send, ^v
Send, .X
Return

F13 & RWin::
Send, ^v
Send, .Y
Return

F13 & AppsKey::
Send, ^v
Send, .Width
Return

F13 & RControl::
Send, ^v
Send, .Height
Return
; End Other Keys

; Start Arrow Column 6 kays
F13 & Insert::
MsgBox, "F13 - Insert"
Return

F13 & Delete::
Send (
Return

F13 & Home::
MsgBox, "F13 - Home"
Return

F13 & End::
Send "
Return

F13 & PgUp::
MsgBox, "F13 - PgUp"
Return

F13 & PgDn::
Send )
Return

; End Arrow Column 6 kays 




; Start Arrow 
F13 & Up::
MsgBox, "F13 - Up"
Return

F13 & Left::
Sleep, 50
Send, ^+{Tab}
Return

F13 & Down::
MsgBox, "F13 - Down"
Return

F13 & Right::
Sleep, 50
Send, ^{Tab}
Return

; End Arrow 






; Start Numpad

F13 & Numpad1::
Send ^{Enter}
Return

F13 & Numpad2::
Send ^!{Enter}
Return

F13 & Numpad3::
MsgBox, "F13 - Numpad3"
Return

F13 & Numpad4::
MsgBox, "F13 - Numpad4"
Return

F13 & Numpad5::
MsgBox, "F13 - Numpad5"
Return

F13 & Numpad6::
Run "C:\Users\WoongChoi\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\MYOB AccountRight"
Return

F13 & Numpad7::
Loop, 25
{
    Send {WheelUp}
}
Return

F13 & Numpad8::
Loop, 25
{
    Send {WheelDown}
}
Return

F13 & Numpad9::
Run, C:\Users\WoongChoi\AppData\Local\GitHubDesktop\GitHubDesktop.EXE
Return

; Renaming controls. Kill Five chars from the last
F13 & Numpad0::
Send, {F2}
Send, {Right}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, ^{Delete}
Return

F13 & NumpadDiv::
Run, WINWORD.EXE
Return

F13 & NumpadMult::
Run, EXCEL.EXE
Return

F13 & NumpadSub::
Run, POWERPNT.EXE
Return

F13 & NumpadDot::
MsgBox, "F13 - NumpadDot"
Return

; Lock windows
F13 & NumpadAdd::
Sleep, 200
DllCall("LockWorkStation")
Return

F13 & NumpadEnter::
Send, ^+k
Return
; End Numpad

; greenshot
F13 & 1::
Sleep, 50
Send, ^{PrintScreen}
Return

F13 & 2::
Send ^{`` down}
Send ^{`` up}
Return

F13 & 3:: 
Sleep, 50
Send, ^+c
Return

; F13 & e::
; Sleep, 50
; Send, EA
; Return

F13 & d::
Sleep, 50
Send, inoAHK
Return

F13 & q::
Sleep, 50
Send, Filter()
Send, {Left}
Return


F13 & a::
Sleep, 50
Send, LookUp()
Send, {Left}
Return


F13 & w::
Sleep, 50
Send, IsEmpty()
Send, {Left}
Return


F13 & s::
Sleep, 50
Send, IsBlank()
Send, {Left}
Return

F13 & z::
SwitchToExplorer()
Return

F13 & x::
SwitchToVSCode()
Return

F13 & c::
SwitchToOneNote()
Return


F13 & 4::
FormulaWithBracket("ShowColumns")
Return

F13 & r::
FormulaWithBracket("RenameColumns")
Return

F13 & f::
FormulaWithBracket("AddColumns")
Return

F13 & v::
FormulaWithBracket("DropColumns")
Return


F13 & 5::
FormulaWithBracket("Select")
Return

F13 & t::
FormulaWithBracket("Reset")
Return

F13 & g::
FormulaWithBracket("Refresh")
Return

F13 & b::
FormulaWithBracket("Record")
Return


F13 & 6::
FormulaWithBracket("UpdateContext")
Return

F13 & y::
PAProperty("X")
Send, {Numpad0}
PAProperty("Width")
Send, Parent.Width
Return

F13 & h::
PAProperty("Height")
Send, Parent.Height - Self.Y
Return

F13 & n::
FormulaWithBracket("Text")
Return


F13 & 7::
PAProperty("Y")
Send, {Numpad0}
PAProperty("Height")
Send, Parent.Height
Return

F13 & u::
PAProperty("Width")
Send, Parent.Width - Self.X
Return

F13 & j::
FormulaWithBracket("Remove")
Return

F13 & m::
FormulaWithBracket("RemoveIf")
Return


F13 & 8::
FormulaWithBracket("Navigate")
Return

F13 & i:: ; Attach from left
PAProperty("X")
Send, ^v
Send, .X {-} Self.Width
Return

F13 & k:: ; Attach from bottom
PAProperty("Y")
Send, ^v
Send, .Y {+}
Send, ^v
Send, .Height
Return

F13 & ,::
FormulaWithBracket("JSON")
Return


F13 & 9:: ; Attach from top
PAProperty("Y")
Send, ^v
Send, .Y {-} Self.Height
Return

F13 & o:: ; Attach from right
PAProperty("X")
Send, ^v
Send, .X {+}
Send, ^v
Send, .Width
Return

F13 & l::
FormulaWithBracket("ForAll")
Return

F13 & .:: ; Match X position
PAProperty("X")
Send, ^v
Send, .X
Return


F13 & 0::
FormulaWithBracket("ClearCollect")
Return

F13 & p:: ; Middle Align X
PAProperty("X")
Send, (Parent.Width - Self.Width) / {Numpad2}
Return

F13 & SC027:: ; Match with Y position
PAProperty("Y")
Send, ^v
Send, .Y
Return

F13 & /::
FormulaWithBracket("Patch")
Return



F13 & -:: ; Middle Align Y
PAProperty("Y")
Send, (Parent.Height - Self.Height) / {Numpad2}
Return



F13 & [:: ; Left
PAProperty("X")
Send, {Numpad0}
Return

F13 & =:: ; Up
PAProperty("Y")
Send, {Numpad0}
Return


F13 & ]:: ; Right
PAProperty("X")
Send, Parent.Width - Self.Width
Return

F13 & ':: ; Down
PAProperty("Y")
Send, Parent.Height - Self.Height
Return

F13 & \::
Send, With({{}Control:
Send, ^v
Send,{}} As WithRecord, WithRecord.Control.X - Self.Width {NumpadAdd} If( WithRecord.Control.Visible, - {Numpad2}{Numpad0}, WithRecord.Control.Width ) )
Return

F13 & `::
MsgBox, "F13 & key left to numrow 1"

Return

^+F11::
ExitApp


; use case: FormulaWithBracket("RenameColumns")
FormulaWithBracket(Formula, Semicolon:=False)
{
    Sleep, 50
	Send %Formula%
    Send ()
    if (Semicolon) {
        Send {;}
        Send {Left}
    }
    Send {Left}
}

; use case: GoToWebsite("outlook.com")
GoToWebsite(Address)
{
    Sleep, 50
    Send !d
    Sleep, 100
    Send %Address%
    Send {Enter}
}

SwitchToExplorer(){
IfWinNotExist, ahk_class CabinetWClass
	Run, explorer.exe
GroupAdd, ahkexplorers, ahk_class CabinetWClass
if WinActive("ahk_exe explorer.exe")
	GroupActivate, ahkexplorers, r
else
	WinActivate ahk_class CabinetWClass ;you have to use WinActivatebottom if you didn't create a window group.
}


SwitchToVSCode()
{
IfWinNotExist, ahk_exe Code.exe
	Run, "C:\Users\WoongChoi\AppData\Local\Programs\Microsoft VS Code\Code.exe"
GroupAdd, ahkvscode, ahk_exe Code.exe
if WinActive("ahk_exe Code.exe")
	GroupActivate, ahkvscode, r
else
	WinActivate ahk_exe Code.exe
}

SwitchToOneNote()
{
Sleep, 50
Send, #8
}