/************************************************************************
 * @description Start arRPC in background to autostart it
 * @author Maicol Battistini
 * @date 2024/10/01
 * @version 1.0.0
 ***********************************************************************/

#Requires AutoHotkey >=2.0
#NoTrayIcon

; If Dorion or Discord are running, close and restart them
DorionPath := "C:\Program Files\Dorion"
if (FileExist(DorionPath "\Dorion.exe") && ProcessExist("Dorion.exe")) {   
    ProcessClose "Dorion.exe"
    Run "Dorion.exe", DorionPath
}

DiscordPath := EnvGet("LocalAppData") "\Discord"
if (FileExist(DiscordPath "\Discord.exe") && ProcessExist("Discord.exe")) {
    ProcessClose "Discord.exe"
    Run "Discord.exe", DiscordPath
}

If (ProcessExist("node.exe"))
    ProcessClose "node.exe"

Run "node src", "C:\Users\Maicol\arrpc", "Hide"