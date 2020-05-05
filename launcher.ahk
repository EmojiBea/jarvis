#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Include voice.ahk
; #Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

Run "E:\AHK\shortcuts.ahk"
Run "E:\AHK\voice.ahk"
Run "E:\AHK\lockUnlock.ahk"

SoundPlay, E:\AHK\sounds\startup.mp3

^!o:: ;Ctrl+Alt+o opens Overwatch
{
    Run "C:/Program Files (x86)/Battle.net/Battle.net.exe" --exec="launch Pro"
    affirm()
    return
}