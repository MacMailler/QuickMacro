;
; (c) MacMailler, 2017
; GitHub: https://github.com/MacMailler/QuickMacro
;


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
		Send {Up 3}{Enter}
		
	else if(s = "MorsMutual")
		Send {Up 4}{Enter}
		
	else if(s = "Mechanic")
		Send {Up 6}{Enter}

	else if(s = "Lester")
		Send {Up 10}{Enter}
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
			Send {Down}
		else
			Send {Down 2}
		Send {Enter}{Down}{Enter}{Up 3}{Enter}
	}
	else if(i = "Snack") {
		if(playerState = 0)
			Send {Down}
		else
			Send {Down 2}
		Send {Enter}{Down 2}{Enter 3}
	}
	else if(i = "Ammo") {
		if(playerState = 0)
			Send {Down}
		else
			Send {Down 2}
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

autoBuy() {
	if(T = true) {
		setTimer, autoBuyLoop, off
	} else {
		setTimer, autoBuyLoop, on
	}
	T := !T
}