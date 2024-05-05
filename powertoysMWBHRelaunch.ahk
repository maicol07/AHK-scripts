#Requires AutoHotkey v2.0
#NoTrayIcon

Loop {
    Sleep 500
    if (!ProcessExist("PowerToys.MouseWithoutBordersHelper.exe"))
        Run "C:\Program Files\PowerToys\PowerToys.MouseWithoutBordersHelper.exe"
}