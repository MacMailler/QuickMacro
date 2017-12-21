;
; (c) MacMailler, 2017
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

autoBuyLabel:
	autoBuy()
return

autoBuyLoop:
    while(T) {
		send {Enter}
		sleep, 1000
	}
return