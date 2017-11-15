;
; QuickMacro 0.2
;
; Created by MacMailler, 2017
; GitHub: https://github.com/MacMailler/QuickMacro
;

#NoEnv
#InstallKeybdHook
#SingleInstance force
#IfWinActive ahk_class grcWindow

Global keyPhoneDalay := 70
Global keyPhoneDuration := 100
Global phoneDelay := 550

Global menuDelay := 24
Global keyMDelay := 26
Global keyMDuration := 36

Global heavyWeaponKey := 2
Global specialWeaponKey := 1

Global playerState := 0


Numpad0 & Numpad1:: callService("Pegasus")
Numpad0 & Numpad2:: callService("Mechanic")
Numpad0 & Numpad3:: callService("Lester")

NumpadDiv:: toggleCEO()

; > It only works if you are the boss
NumpadSub:: getItem("Ammo")
NumpadAdd:: ceoAbil("Bullshark")
Numpad0 & Numpad4:: ceoAbil("Buzzard")
Numpad0 & Numpad5:: ceoAbil("Gost")
; <

; > It does not work when you are the boss/president
Numpad0 & Numpad7:: getItem("Armor")
Numpad0 & Numpad8:: getItem("Snack")
; <

LAlt:: fastHeavyReload()


phoneUp() {
	setkeydelay, %keyPhoneDalay%, %keyPhoneDuration%
	Send {Up}
	sleep, %phoneDelay%
}

openM() {
	setkeydelay, %keyMDelay%, %keyMDuration%
	Send {m}
	sleep, %menuDelay%
}

toggleCEO() {
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