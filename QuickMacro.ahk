#NoEnv
#InstallKeybdHook
#SingleInstance force

#Include %A_ScriptDir%\includes\variables.ahk
#Include %A_ScriptDir%\includes\keys.ahk
#Include %A_ScriptDir%\includes\conf.ahk
#Include %A_ScriptDir%\includes\tray.ahk

loadConf()

End::
	init()
return

#Include %A_ScriptDir%\includes\labels.ahk
#Include %A_ScriptDir%\includes\functions.ahk
