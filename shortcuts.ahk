#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#SingleInstance, force

;Shift+ctrl+c Google Search highlighted text
^+c::
    {
        Send, ^c
        Sleep 50
        Run, http://www.google.com/search?q=%clipboard%
        Return
    }
    
    ^!m:: ;Ctrl+Alt+m mutes
    {
        Send {Volume_Mute}
        Return
    }
    
ScrollLock::
    {
        Run, "E:\AHK\red square.ahk"
        Return
    }