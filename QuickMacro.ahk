;
; QuickMacro 0.1
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

Global keyMDelay := 24
Global keyMDuration := 48

Global heavyWeaponKey := 2
Global specialWeaponKey := 4


Numpad0 & Numpad1:: callService("Pegasus")
Numpad0 & Numpad2:: callService("Mechanic")
Numpad0 & Numpad3:: callService("Lester")

; It only works if you are the boss
NumpadAdd:: ceoAbil("Bullshark")
NumpadSub:: getItem("Ammo")
Numpad0 & Numpad4:: ceoAbil("Buzzard")
Numpad0 & Numpad5:: ceoAbil("Gost")

; It does not work when you are the boss/president
Numpad0 & Numpad7:: getItem("Armor")
Numpad0 & Numpad8:: getItem("Snack")

LAlt:: fastHeavyReload()


phoneUp() {
	setkeydelay, %keyPhoneDalay%, %keyPhoneDuration%
	Send {Up}
	sleep, %phoneDelay%
}

openM() {
	setkeydelay, %keyMDelay%, %keyMDuration%
	Send {m}
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
	openM()
	Send {Enter}
	if(a = "Buzzard")
		Send {Up 2}{Enter}{Down 4}{Enter}

	else if(a = "Bullshark")
		Send {Up 3}{Enter}{Down 1}{Enter}
	
	else if(a = "Gost")
		Send {Up 3}{Enter}{Up 3}{Enter}
}

getItem(i) {
	openM()
	
	if(i = "Armor")
		Send {Down}{Enter}{Down}{Enter}{Up 3}{Enter}
	
	else if(i = "Snack")
		Send {Down}{Enter}{Down 2}{Enter 3}
	
	else if(i = "Ammo")
		Send {Down 2}{Enter}{Down 3}{Enter}{Up}{Enter}
	
	Send {m}
}

fastHeavyReload() {
	setkeydelay, %keyMDelay%, %keyMDuration%
	Send {%specialWeaponKey%}
	Send {%heavyWeaponKey%}
}