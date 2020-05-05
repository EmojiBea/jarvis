#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

#SingleInstance, force
#Include, monitorLock.ahk
#Include, voice.ahk

notify_lock_unlock()
on_lock()
{
    ;mp3root = E:\AHK\sounds\goodbye
    goodbye()
    return
}

on_unlock()
{
    hello()
    return
}