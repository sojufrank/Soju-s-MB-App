#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

WinGet, aoid, List, Anarchy Online

;GUI
Gui, Show, w300 h170, Soju's Multi-Box App
Gui, Add, Text,, Welcome to Soju's Multi-Box App, Have Fun MBing!
Gui, Add, Text,, List of Hotkeys:
Gui, Add, Text,, 0-9, alt 0-9, shift 0-9, f1-f6
Gui, Add, Text,, up, down, left, right, esc, space
Gui, Add, Text,, E, R, F, G, H, J, K, L, V, B, N, M
Gui, Add, Button, gHotkeyON, Hotkey ON
Gui, Add, Button, X+10 gHotkeyOFF, Hotkey OFF
return

HotkeyON:
Suspend, Off
return

HotkeyOFF:
Suspend, On	
return

GuiClose:
ExitApp 

;0-9
1::
2::
3::
4::
5::
6::
7::
8::
9::
0::
Loop %aoid%
{
element := aoid%A_Index%
ControlSend,ahk_parent, {%A_ThisHotKey%}, ahk_id %element%
}
Return

;shift 0-9
~+1::
~+2::
~+3::
~+4::
~+5::
~+6::
~+7::
~+8::
~+9::
~+0::
StringTrimLeft, ShiftNumKey, A_ThisHotKey, 1
Loop %aoid%
{
element := aoid%A_Index%
ControlSend,ahk_parent, %ShiftNumKey%, ahk_id %element%
}
Return

;alt 0-9
~!1::
~!2::
~!3::
~!4::
~!5::
~!6::
~!7::
~!8::
~!9::
~!0::
StringTrimLeft, AltNumKey, A_ThisHotKey, 1
Loop %aoid%
{
element := aoid%A_Index%
ControlSend,ahk_parent, %AltNumKey%, ahk_id %element%
}
Return

;Hotkeys
f1::
f2::
f3::
f4::
f5::
f6::
space::
esc::
e::
r::
f::
g::
h::
j::
k::
l::
v::
b::
n::
m::
Loop %aoid%
{
element := aoid%A_Index%
ControlSend,ahk_parent, {%A_ThisHotKey%}, ahk_id %element%
}
Return

;MOVEMENT ARROW KEYS
Up::
Down::
Left::
Right::
Loop %aoid%
{
element := aoid%A_Index%
ControlSend,ahk_parent, {%A_ThisHotKey% down}, ahk_id %element%
}
KeyWait, %A_ThisHotKey%
Loop %aoid%
{
element := aoid%A_Index%
ControlSend,ahk_parent, {%A_ThisHotKey% up}, ahk_id %element%
}
Return