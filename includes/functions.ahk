;
; Copyright (C) 2017 MacMailler
; GitHub: https://github.com/MacMailler/QuickMacro
;

init() {
	if (WinExist("Grand Theft Auto V")) {
		hotkeyState := hotkeyState = "On" ? "Off" : "On"
		Menu, Tray, Tip, QuickMacro`n%hotkeyState%
		setHotkeyState(hotkeyState)
		
		if (hotkeyState = "On")
			Menu, Tray, Rename, Activate, Deactivate
		else
			Menu, Tray, Rename, Deactivate, Activate
	} else {
		msgbox, 0x40, QuickMacro, GTAV is not running!
	}
}
	
setHotkeyState(t) {
	Hotkey, IfWinActive, Grand Theft Auto V
	Hotkey, %PegasusKey%, pegasusLabel, %t%
	Hotkey, %MechanicKey%, mechanicLabel, %t%
	Hotkey, %LesterKey%, lesterLabel, %t%
	Hotkey, %BuzzardKey%, buzzardLabel, %t%
	Hotkey, %GhostKey%, ghostLabel, %t%
	Hotkey, %ArmorKey%, armorLabel, %t%
	Hotkey, %SnackKey%, snackLabel, %t%
	Hotkey, %BullsharkKey%, bullsharkLabel, %t%
	Hotkey, %AmmoKey%, ammoLabel, %t%
	Hotkey, %ToggleCeoKey%, toggleCeoLabel, %t%
	Hotkey, %MorsMutualKey%, morsMutualLabel, %t%
	Hotkey, %FastHeavyReloadKey%, fastHeavyReloadLabel, %t%
	Hotkey, %FastEwoKey%, fastEwoLabel, %t%
	Hotkey, %RepeatButtonKey%, repeatButtonLabel, %t%
	Hotkey, %CrosshairKey%, crossHairLabel, %t%
	Hotkey, %OutfitFixKey%, outfitFixLabel, %t%
	
	T := false
}

phoneUp() {
	setkeydelay, %keyPhoneDalay%, %keyPhoneDuration%
	Send {Up}
	sleep, %phoneDelay%
}

openM() {
	setkeydelay, %keyMDelay%, %keyMDuration%
	Send {SC032}
	sleep, %menuDelay%
}

toggleCeo() {
	if(playerState = 0)
		playerState := 1
	else
		playerState := 0
}

callService(s) {
	phoneUp()
	Send {Right}{Up}{Enter}
	
	if(s = "Pegasus")
		Send {Left}{Enter}
		
	else if(s = "MorsMutual")
		Send {Left}{Down 2}{Enter}
		
	else if(s = "Mechanic")
		Send {Left 2}{Enter}

	else if(s = "Lester")
		Send {Left 3}{Down}{Enter}
}

ceoAbil(a) {
	if(playerState = 1) {
		openM()
		Send {Enter}
		if(a = "Buzzard")
			Send {Up 2}{Enter}{Down 4}{Enter}

		else if(a = "Bullshark")
			Send {Up 3}{Enter}{Down 1}{Enter}
		
		else if(a = "Gost")
			Send {Up 3}{Enter}{Up 3}{Enter}
	}
}

getItem(i) {
	openM()
	if(i = "Armor") {
		if(playerState = 0)
			Send {Down 2}
		else
			Send {Down 3}
		Send {Enter}{Down}{Enter}{Up 3}{Enter}
	}
	else if(i = "Snack") {
		if(playerState = 0)
			Send {Down 2}
		else
			Send {Down 3}
		Send {Enter}{Down 2}{Enter 3}
	}
	else if(i = "Ammo") {
		if(playerState = 0)
			Send {Down 2}
		else
			Send {Down 3}
		Send {Enter}{Down 3}{Enter}{Up}{Enter}
	}
	Send {SC032}
}

fastHeavyReload() {
	setkeydelay, %keyMDelay%, %keyMDuration%
	Send {%specialWeaponKey%}
	Send {%heavyWeaponKey%}
}

fastEwo() {
	openM()
	Send {Up 2}
	Send {SC02E down}
	Send {Enter}
	Send {SC02E up}
}

toggleCrosshair() {
	if(crossHairT = false) {
		Gui, QuickMacroCrosshair: Show
		WinActivate, ahk_class grcWindow
	} else {
		Gui, QuickMacroCrosshair: Hide
	}
	crossHairT := !crossHairT
}

outfitFix() {
	openM()
	
	if(playerState = 0)
		Send {Down 2}
	else
		Send {Down 3}
	
	Send {Enter}{Down 3}{Enter}
	Send {SC032}
}

repeatButton() {
	if(T = true) {
		setTimer, loopRepeatButton, off
	} else {
		setTimer, loopRepeatButton, on
	}
	T := !T
}
