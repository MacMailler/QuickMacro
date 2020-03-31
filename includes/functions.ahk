init() {
	ceo_status = Disabled
	if (WinExist(GameTitle)) {
		hotkeyState := hotkeyState = "ON" ? "OFF" : "ON"
		if (playerState = 0) {
			Menu, Tray, Tip,GTAO Macro: %hotkeyState%`nVIP Mode: Disabled
		} else { 
			Menu, Tray, Tip,GTAO Macro: %hotkeyState%`nVIP Mode: Enabled
		}
		setHotkeyState(hotkeyState)
		
		if (hotkeyState = "ON") {
			Menu, Tray, Rename, Activate, Deactivate
			SoundBeep, 800	
		} else{
			Menu, Tray, Rename, Deactivate, Activate
			SoundBeep, 450
		}
	} else {
		msgbox, 16, Error, GTA V is not running!
	}
}
	
setHotkeyState(t) {
	Hotkey, IfWinActive, Grand Theft Auto V

	Hotkey, %MechanicKey%, mechanicLabel, %t%
	Hotkey, %LesterKey%, lesterLabel, %t%
	Hotkey, %MorsMutualKey%, morsMutualLabel, %t%
	Hotkey, %AssistantKey%, AssistantLabel, %t%
	Hotkey, %ArmorKey%, armorLabel, %t%
	Hotkey, %BribeKey%, bribeLabel, %t%
	Hotkey, %GhostKey%, ghostLabel, %t%
	Hotkey, %VehicleKey%, vehicleLabel, %t%
	Hotkey, %Mk2Key%, mk2Label, %t%
	Hotkey, %SnackKey%, snackLabel, %t%
	Hotkey, %ToggleCeoKey%, toggleCeoLabel, %t%
	Hotkey, %LowerWantedLevelKey%, lowerWantedLevelLabel, %t%	
	Hotkey, %EmptySessionKey%, emptySessionLabel, %t%

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
	if (playerState = 0) {
		playerState := 1
		ceo_status = Enabled
		Menu, Tray, Tip,GTAO Macro: %hotkeyState%`nVIP Mode: %ceo_status%
		SoundPlay, %A_ScriptDir%\assets\vip-enabled.mp3, Wait
	} else {
		playerState := 0
		ceo_status = Disabled
		Menu, Tray, Tip,GTAO Macro: %hotkeyState%`nVIP Mode: %ceo_status%
		SoundPlay, %A_ScriptDir%\assets\vip-disabled.mp3, Wait
	}
}

callService(s) {
	phoneUp()
	Send {Right}{Up}{Enter}

	if(s = "Mechanic")
		Send {Left 2}{Up}{Enter}

	else if(s = "Lester")
		Send {Left 3}{Enter}
		
	else if(s = "MorsMutual")
		Send {Left 2}{Down}{Enter}

	else if(s = "Assistant")
		Send {Left 5}{Enter}
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

lowerWantedLevel(){
	openM()
	if(playerState = 0)
		Send {Down 3}{Enter}{Down}{Enter}{Down}{Right}{ESC 3}
	else
		Send {Down 4}{Enter}{Down}{Enter}{Down}{Right}{ESC 3}
}

emptySession() {
    Process_Suspend("GTA5.exe")
    Sleep, 10000
    Process_Resume("GTA5.exe")
	MsgBox, 64, %Title% %version%, Session cleared!, 1
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
	Num0 + Num4 : Call Assistant
	Num0 + Num5 : Armor
	Num0 + Num6 : Bribe Authority
	Num0 + Num7 : Ghost organisation
	Num0 + Num8 : Personal vehicle
	Num0 + Num9 : Mk2
	Num0 + NumAdd : Lower wanted level
	RCtrl + RShift : Empty session
)
		msgbox, 0x40, QuickMacro, %textUsage%
}
