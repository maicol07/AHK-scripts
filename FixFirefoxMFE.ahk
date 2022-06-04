#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, Force
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include %A_WorkingDir%/Acc
#Include FFWait.ahk

EnvGet, A_LocalAppData, LocalAppData
; MFE config filename
MFEConfig = %A_LocalAppData%\Packages\MicaForEveryone_hre44c6cb3hwj\LocalState\MicaForEveryone.conf

; Check if light theme state has changed
IniRead, old_state, vars.ini, MFEReload, light_theme

Loop {
    RegRead, current_state, HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize, AppsUseLightTheme
    If (current_state != old_state) {
        Break
    }
}

if (old_state != current_state) {
    ; Wait for firefox
    FFWait()

    ; Update MFE config to trigger MFE reload
    FileRead, text, %MFEConfig%
    ;FileAppend, \n, %MFEConfig%
    FileDelete, %MFEConfig%
    FileAppend, %text%, %MFEConfig%

    ; Save current theme state
    IniWrite, %current_state%, vars.ini, MFEReload, light_theme
}

Reload
Sleep 1000 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
IfMsgBox, Yes, Edit
return