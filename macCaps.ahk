;1: Download and Install autohotkey
;2: 将中英文切换按键设置改为ctrl+space（即ctrl+空格），shift切换勾选去掉
;3:保存上述代码为.ahk文件设置为开机启动（以管理员执行）
;4:将.ahk文件移动到C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp，使其开机自启

SetStoreCapslockMode, off
CapsLock::
If StartTime
    return
StartTime := A_TickCount
return

CapsLock up::
TimeLength := A_TickCount - StartTime
if (TimeLength >= 1 and TimeLength < 200)
{
    Send, ^{Space}
}
else if (TimeLength >= 200)
{
    Send, {CapsLock}
}
StartTime := ""
return

