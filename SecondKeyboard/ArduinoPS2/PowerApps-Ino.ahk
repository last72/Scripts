#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


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
PAProperty("X")
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

F13 & F11::
GoToWebsite("https://www.innolabcafe.com.au/shop/chai-latte/")
Return

F13 & F12::
MsgBox, "F13 - F12"
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
MsgBox, "F13 - Numpad1"
Return

F13 & Numpad2::
MsgBox, "F13 - Numpad2"
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
MsgBox, "F13 - Numpad6"
Return

F13 & Numpad7::
MsgBox, "F13 - Numpad7"
Return

F13 & Numpad8::
MsgBox, "F13 - Numpad8"
Return

F13 & Numpad9::
MsgBox, "F13 - Numpad9"
Return

F13 & Numpad0::
MsgBox, "F13 - Numpad0"
Return

F13 & NumpadDiv::
MsgBox, "F13 - NumpadDiv"
Return

F13 & NumpadMult::
MsgBox, "F13 - NumpadMult"
Return

F13 & NumpadSub::
MsgBox, "F13 - NumpadSub"
Return

F13 & NumpadDot::
MsgBox, "F13 - NumpadDot"
Return

F13 & NumpadAdd::
MsgBox, "F13 - NumpadAdd"
Return

F13 & NumpadEnter::
MsgBox, "F13 - NumpadEnter"
Return
; End Numpad


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
Sleep, 50
Send, Blank()
Send, {Left}
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
FormulaWithBracket("Set", True)
Return

F13 & h::
FormulaWithBracket("Value")
Return

F13 & n::
FormulaWithBracket("Text")
Return


F13 & 7::
FormulaWithBracket("If")
Return

F13 & u::
FormulaWithBracket("GUID")
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

F13 & i::
FormulaWithBracket("Back")
Return

F13 & k::
FormulaWithBracket("Distinct")
Return

F13 & ,::
FormulaWithBracket("JSON")
Return


F13 & 9::
FormulaWithBracket("Count")
Return

F13 & o::
FormulaWithBracket("CountRows")
Return

F13 & l::
FormulaWithBracket("ForAll")
Return

F13 & .::
FormulaWithBracket("Sum")
Return


F13 & 0::
FormulaWithBracket("ClearCollect")
Return

F13 & p::
FormulaWithBracket("Collect")
Return

F13 & SC027::
FormulaWithBracket("Clear")
Return

F13 & /::
FormulaWithBracket("Patch")
Return



F13 & -::
FormulaWithBracket("First")
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

PAProperty(PropertyName, PropertyX := 200, FormulaX:= 500, PropertyY := 220)
{
    MouseGetPos, StartX, StartY
	MouseClick, , PropertyX, PropertyY
    Sleep 50
    Send, ^a
    Send, %PropertyName%
    Sleep 50
    MouseClick, , FormulaX, PropertyY
    Send, ^a
	Sleep 100
    MouseMove, StartX, StartY
    return
} 

; Mouse Click
MouseClickAndReturn(ClickX , ClickY)
{
	MouseGetPos, StartX, StartY
	MouseClick, , ClickX, ClickY
	MouseMove, StartX, StartY
}
