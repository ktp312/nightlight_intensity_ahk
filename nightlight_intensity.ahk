#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory. 


;increse intensity via Ctrl+PgDn hotkey
^PgDn::nLight("Up")
;reduce intensity via Ctrl+PgUp hotkey
^PgUp::nLight("Left")


nLight(strength){
    run ms-settings:nightlight
    ;wait for window to load before taking any action
    WinWait, Settings
    ;place window in top left corner and resize
    WinMove,A,,0,0,600,800
    ;perform action in dictated direction in increments of 10
    Send {Tab}{Enter}{%strength% 10}
}