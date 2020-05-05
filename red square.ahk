
#SingleInstance, force
#Include, voice.ahk

Gui, +ToolWindow -caption +alwaysontop -Border 
Gui, color, 444444 
Gui, +LastFound
WinSet, TransColor, 444444 
Gui, Add, Picture, x0 y0 w90 h90 , E:\Pictures\jarvis\mic.png
Gui, show,w90 h90 x10 y10

;mp3root = E:\AHK\sounds\wake
randomMP3("E:\AHK\sounds\wake")
OnMessage(0x201,"WM_LBUTTONDOWN")
return

!esc::exitapp

WM_LBUTTONDOWN(wParam,lParam,msg,hwnd){
    PostMessage, 0xA1, 2 
}

ScrollLock UP::
    exitapp
    
    