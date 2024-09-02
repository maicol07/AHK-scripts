#Requires AutoHotkey v2.0

Sleep 21600000 ; 6 hours
ProcessClose "hwinfo64.exe"
Run "C:\Program Files\HWiNFO64\HWiNFO64.exe"
Reload