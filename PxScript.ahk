; Alt + shift + a 显示/隐藏桌面图标
!+a::
    HideOrShowDesktopIcons()
return

HideOrShowDesktopIcons()
{
    class := ""
    ControlGet, class, Hwnd,, SysListView321, ahk_class Progman
    if (class = "")
        ControlGet, class, Hwnd,, SysListView321, ahk_class WorkerW

    if (DllCall("IsWindowVisible", "Ptr", class))
        WinHide, ahk_id %class%
    else
        WinShow, ahk_id %class%
}

; Alt + n 新建文本文档
!n::
{
    if WinExist("ahk_class Notepad")
        WinActivate  ; Activate the window found above
    else
        Run "notepad"  ; Open a new Notepad window
}

; Alt + F4 任意窗口置顶/取消置顶
!F4:: Winset, Alwaysontop, , A