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
	Hotkey, %GhostKey%, ghostLabel, %t%
	Hotkey, %ArmorKey%, armorLabel, %t%
	Hotkey, %VehicleKey%, vehicleLabel, %t%
	Hotkey, %Mk2Key%, mk2Label, %t%
	Hotkey, %SnackKey%, snackLabel, %t%
	Hotkey, %ToggleCeoKey%, toggleCeoLabel, %t%
	Hotkey, %MorsMutualKey%, morsMutualLabel, %t%
	Hotkey, %BribeKey%, bribeLabel, %t%
	Hotkey, %UsageKey%, usageLabel, %t%
	
	T := false
}

phoneUp() {
	setkeydelay, %keyPhoneDelay%, %keyPhoneDuration%
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
		Send {Left 2}{Down 2}{Enter}
		
	else if(s = "Mechanic")
		Send {Left 2}{Enter}

	else if(s = "Lester")
		Send {Left 3}{Down}{Enter}
}

ceoAbil(a) {
	if(playerState = 1) {
		openM()
		Send {Enter}
		if(a = "Gost")
			Send {Up 3}{Enter}{Up 3}{Enter}
		else if (a = "Bribe")
			Send {Up 3}{Enter}{Up 2}{Enter}
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
	else if(i = "Vehicle") {
		if(playerState = 0)
			Send {Down 4}
		else
			Send {Down 5}
		Send {Enter}{Enter}
	}
	else if(i = "Mk2") {
		if(playerState = 0)
			Send {Down 5}{Enter}{Up}{Enter}{Down 2}{Enter}
		else
			Send {Down 6}{Enter}{Up}{Enter}{Down 2}{Enter}
		Send {Enter}{Enter}
	}
	Send {SC032}
}



usage(u) {
	if(u = "Usage")
textUsage = 
(
Usage :
	NumDot : Snacks
	NumpadDiv : CEO Mode
	NumpadMult : Show usage
	Num0 + Num1 : Call Mechanic
	Num0 + Num2 : Call Lester
	Num0 + Num3 : Call MorsMutualAssurance
	Num0 + Num4 : Personal vehicle
	Num0 + Num5 : Armor
	Num0 + Num6 : Bribe Authority
	Num0 + Num7 : Ghost organisation
	Num0 + Num8 : Call Pegasus
	Num0 + Num9 : Mk2
)
		msgbox, 0x40, QuickMacro, %textUsage%
}
