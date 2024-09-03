/************************************************************************
 * @description Automatically extend the trial period of X410
 * @author Maicol Battistini
 * @date 2024/09/04
 * @version 1.0.0
 ***********************************************************************/


#Requires AutoHotkey v2.0
#NoTrayIcon

WinTitle := "X410 Trial Mode"
WinWait WinTitle
ControlClick "Button1", WinTitle
Reload