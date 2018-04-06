;
; Copyright (C) 2017 MacMailler
; GitHub: https://github.com/MacMailler/QuickMacro
;

#NoEnv
#InstallKeybdHook
#SingleInstance force

#Include %A_ScriptDir%\includes\variables.ahk
#Include %A_ScriptDir%\includes\keys.ahk
#Include %A_ScriptDir%\includes\conf.ahk
#Include %A_ScriptDir%\includes\tray.ahk
#Include %A_ScriptDir%\includes\crosshair.ahk

loadConf()

End::
	init()
return

#Include %A_ScriptDir%\includes\labels.ahk
#Include %A_ScriptDir%\includes\functions.ahk