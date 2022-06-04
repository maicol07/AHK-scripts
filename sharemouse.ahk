/*
    Automatically register a license key provided in a vars.ini file
    The key will be read from `Sharemouse/licensekey`.
    
    Example of file structure:
    [Sharemouse]
    licensekey = 12345678901234567890123456789012
*/

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, Force
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

IniRead, licensekey, vars.ini, Sharemouse, licensekey,

WinWait, Register ShareMouse
ControlSetText, TEdit1, %licensekey%, Register ShareMouse
ControlClick, TButton3, Register ShareMouse
;WinWait, ShareMouse - Information
;ControlClick, Button1, ShareMouse - Information
Reload
Sleep 1000 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
IfMsgBox, Yes, Edit
return