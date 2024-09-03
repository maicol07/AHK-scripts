/************************************************************************
 * @description Restart HWiNFO64 every 6 hours (to automatically reset the free version limitations)
 * @author Maicol Battistini
 * @date 2024/09/04
 * @version 1.0.0
 ***********************************************************************/


#Requires AutoHotkey v2.0
#NoTrayIcon

Sleep 21600000 ; 6 hours
ProcessClose "hwinfo64.exe"
Run "C:\Program Files\HWiNFO64\HWiNFO64.exe"
Reload