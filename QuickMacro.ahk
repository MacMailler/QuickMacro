;
; Created by MacMailler, 2017
; GitHub: https://github.com/MacMailler/QuickMacro
;

#NoEnv
#InstallKeybdHook
#SingleInstance force
#IfWinActive ahk_class grcWindow

Menu, Tray, Tip, QuickMacro`nDisabled

#Include %A_ScriptDir%\includes\variables.ahk
#Include %A_ScriptDir%\includes\keys.ahk
#Include %A_ScriptDir%\includes\conf.ahk

loadConf()


End::
	if(toggleHotkey = "Disabled") {
		toggleHotkey := "Enabled"
		Menu, Tray, Tip, QuickMacro`n%toggleHotkey%
		
		Hotkey, IfWinActive, ahk_class grcWindow
		Hotkey, %PegasusKey%, pegasusLabel, on
		Hotkey, %MechanicKey%, mechanicLabel, on
		Hotkey, %LesterKey%, lesterLabel, on
		Hotkey, %BuzzardKey%, buzzardLabel, on
		Hotkey, %GhostKey%, ghostLabel, on
		Hotkey, %ArmorKey%, armorLabel, on
		Hotkey, %SnackKey%, snackLabel, on
		Hotkey, %BullsharkKey%, bullsharkLabel, on
		Hotkey, %AmmoKey%, ammoLabel, on
		Hotkey, %ToggleCeoKey%, toggleCeoLabel, on
		Hotkey, %MorsMutualKey%, morsMutualLabel, on
		Hotkey, %FastHeavyReloadKey%, fastHeavyReloadLabel, on
	}
	else {
		toggleHotkey := "Disabled"
		Menu, Tray, Tip, QuickMacro`n%toggleHotkey%
		
		Hotkey, IfWinActive, ahk_class grcWindow
		Hotkey, %PegasusKey%, pegasusLabel, off
		Hotkey, %MechanicKey%, mechanicLabel, off
		Hotkey, %LesterKey%, lesterLabel, off
		Hotkey, %BuzzardKey%, buzzardLabel, off
		Hotkey, %GhostKey%, ghostLabel, off
		Hotkey, %ArmorKey%, armorLabel, off
		Hotkey, %SnackKey%, snackLabel, off
		Hotkey, %BullsharkKey%, bullsharkLabel, off
		Hotkey, %AmmoKey%, ammoLabel, off
		Hotkey, %ToggleCeoKey%, toggleCeoLabel, off
		Hotkey, %MorsMutualKey%, morsMutualLabel, off
		Hotkey, %FastHeavyReloadKey%, fastHeavyReloadLabel, off
	}
return

#Include %A_ScriptDir%\includes\labels.ahk
#Include %A_ScriptDir%\includes\functions.ahk