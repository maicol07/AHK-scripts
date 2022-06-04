#Include Acc.ahk

;F1::
	;FFWait()
	;Msgbox Loaded

; FFWait - wait for a Firefox page to finish loading
; http://www.autohotkey.com/board/topic/90620-firefox-page-load-wait/page-2#entry573049
; Requires: Acc.ahk
FFWait()
{
    WinWaitActive, ahk_class MozillaWindowClass

    ; sleep until the description indicates page is loaded
    Loop  {
        name := Acc_Get("Name", "4.15", 0, "ahk_class MozillaWindowClass")
        ;if ErrorLevel {
        ;    MsgBox, %ErrorLevel%
        ;}
        ;MsgBox %name%
        if (name != "") {
            break
        }
        Sleep, 10
    }

    return
}
