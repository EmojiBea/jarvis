#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance, force
; #Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

affirm()
{
    ;mp3root = E:\AHK\sounds\affirm
    randomMP3("E:\AHK\sounds\affirm")
    return
}

goodbye()
{
    randomMP3("E:\AHK\sounds\goodbye")
    return
}

hello()
{
    randomMP3("E:\AHK\sounds\hello")
    return
}

randomMP3(mp3root)
{
    FileList = 
    Loop %mp3root%\*.mp3,, 1
    {
        Listsize++
        FileList%Listsize% = %A_LoopFileFullPath%
    }
    
    Random, rand, 1, %listsize%
    randfilename = % filelist%rand%
    
    if rand != %last%
        Soundplay, %randfilename%, wait
    last = %rand%
    return
}