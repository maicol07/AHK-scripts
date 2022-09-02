/*
    Automatically unlock 1Password with the master password provided in a vars.ini file
    The password will be read from `1Password/password`.
    
    Example of file structure:
    ```ini
        [1Password]
        password = MyMasterPassword
    ```
*/

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, Force
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

IniRead, password, vars.ini, 1Password, password


WinWaitActive, Schermata di blocco — 1Password
Send %password%
Send, {Enter}
return