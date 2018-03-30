;
; Copyright (C) 2017 MacMailler
; GitHub: https://github.com/MacMailler/QuickMacro
;


; Services
pegasusLabel:
	callService("Pegasus")
return

mechanicLabel:
	callService("Mechanic")
return

lesterLabel:
	callService("Lester")
return

morsMutualLabel:
	callService("MorsMutual")
return


; CEO abilities
toggleCeoLabel:
	toggleCeo()
return

buzzardLabel:
	ceoAbil("Buzzard")
return

ghostLabel:
	ceoAbil("Gost")
return

bullsharkLabel:
	ceoAbil("Bullshark")
return


; Player items
armorLabel:
	getItem("Armor")
return

snackLabel:
	getItem("Snack")
return

ammoLabel:
	getItem("Ammo")
return


; Others
fastHeavyReloadLabel:
	fastHeavyReload()
return

fastEwoLabel:
	fastEwo()
return

repeatButtonLabel:
	repeatButton()
return

crossHairLabel:
	toggleCrosshair()
return

outfitFixLabel:
	outfitFix()
return

loopRepeatButton:
    while(T) {
		Send {%RepeatButton%}
		sleep, RepeatButtonDelay
	}
return

exitLabel:
	ExitApp
return