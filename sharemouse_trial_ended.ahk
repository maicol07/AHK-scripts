; Automatically click the "No" button when the trial expired / purchase license dialog appears

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, Force
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

WinWait, ShareMouse - Information
ControlGet noPurchaseButton, Visible,, Button2
If (noPurchaseButton) {
    ControlClick, Button2, ShareMouse - Information
} Else {
    ControlClick, Button1, ShareMouse - Information
}
Reload
Sleep 1000 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
IfMsgBox, Yes, Edit
return