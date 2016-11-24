#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

WinGet, aoid, List, Anarchy Online

;GUI
Gui, Show, w310 h260, Soju's Multi-Box App
Gui, Add, Text,, Welcome to Soju's Multi-Box App, Have Fun MBing!
Gui, Add, Text,, Press 'end' or buttons at bottom to toggle Hotkeys On and Off
Gui, Add, Text,, List of Hotkeys:
Gui, Add, Text,, 0-9, alt 0-9, shift 0-9, f1-f6
Gui, Add, Text,, up, down, left, right, esc, space
Gui, Add, Text,, E, R, F, G, H, J, K, L, V, B, N, M
Gui, Add, Text,, Uncheck box to disable Hotkey
Gui, Add, Checkbox, gEToggle vMyEToggle checked x10, E
Gui, Add, Checkbox, gRToggle vMyRToggle checked x+5, R
Gui, Add, Checkbox, gFToggle vMyFToggle checked x+5, F
Gui, Add, Checkbox, gGToggle vMyGToggle checked x+5, G
Gui, Add, Checkbox, gHToggle vMyHToggle checked x+5, H
Gui, Add, Checkbox, gJToggle vMyJToggle checked x+5, J
Gui, Add, Checkbox, gKToggle vMyKToggle checked x10, K
Gui, Add, Checkbox, gLToggle vMyLToggle checked x+5, L
Gui, Add, Checkbox, gVToggle vMyVToggle checked x+5, V
Gui, Add, Checkbox, gBToggle vMyBToggle checked x+5, B
Gui, Add, Checkbox, gNToggle vMyNToggle checked x+5, N
Gui, Add, Checkbox, gMToggle vMyMToggle checked x+5, M

Gui, Add, Button, gHotkeyON x10, Hotkey ON
Gui, Add, Button, gHotkeyOFF X+10, Hotkey OFF

Return

HotkeyON:
Suspend, Off
return

HotkeyOFF:
Suspend, On	
return

end::
Suspend, Toggle
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
esc::
space::
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

;HOTKEY TOGGLES
EToggle:
GuiControlGet, MyEToggle
if(MyEToggle = 0)
{
Hotkey, e, Off
}
if(MyEToggle = 1)
{
Hotkey, e, On
}
return

RToggle:
GuiControlGet, MyRToggle
if(MyRToggle = 0)
{
Hotkey, r, Off
}
if(MyRToggle = 1)
{
Hotkey, r, On
}
return

FToggle:
GuiControlGet, MyFToggle
if(MyFToggle = 0)
{
Hotkey, f, Off
}
if(MyFToggle = 1)
{
Hotkey, f, On
}
return

GToggle:
GuiControlGet, MyGToggle
if(MyGToggle = 0)
{
Hotkey, g, Off
}
if(MyGToggle = 1)
{
Hotkey, g, On
}
return

HToggle:
GuiControlGet, MyHToggle
if(MyHToggle = 0)
{
Hotkey, h, Off
}
if(MyHToggle = 1)
{
Hotkey, h, On
}
return

JToggle:
GuiControlGet, MyJToggle
if(MyJToggle = 0)
{
Hotkey, j, Off
}
if(MyJToggle = 1)
{
Hotkey, j, On
}
return

KToggle:
GuiControlGet, MyKToggle
if(MyKToggle = 0)
{
Hotkey, k, Off
}
if(MyKToggle = 1)
{
Hotkey, k, On
}
return

LToggle:
GuiControlGet, MyLToggle
if(MyLToggle = 0)
{
Hotkey, l, Off
}
if(MyLToggle = 1)
{
Hotkey, l, On
}
return

VToggle:
GuiControlGet, MyVToggle
if(MyVToggle = 0)
{
Hotkey, v, Off
}
if(MyVToggle = 1)
{
Hotkey, v, On
}
return

BToggle:
GuiControlGet, MyBToggle
if(MyBToggle = 0)
{
Hotkey, b, Off
}
if(MyBToggle = 1)
{
Hotkey, b, On
}
return

NToggle:
GuiControlGet, MyNToggle
if(MyNToggle = 0)
{
Hotkey, n, Off
}
if(MyNToggle = 1)
{
Hotkey, n, On
}
return

MToggle:
GuiControlGet, MyMToggle
if(MyMToggle = 0)
{
Hotkey, m, Off
}
if(MyMToggle = 1)
{
Hotkey, m, On
}
return
