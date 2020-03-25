; Services
mechanicLabel:
	callService("Mechanic")
return

lesterLabel:
	callService("Lester")
return

morsMutualLabel:
	callService("MorsMutual")
return

AssistantLabel:
	callService("Assistant")
return


; CEO abilities
toggleCeoLabel:
	toggleCeo()
return

ghostLabel:
	ceoAbil("Gost")
return

bribeLabel:
	ceoAbil("Bribe")
return


; Player items
armorLabel:
	getItem("Armor")
return

snackLabel:
	getItem("Snack")
return

vehicleLabel:
	getItem("Vehicle")
return

mk2Label:
	getItem("Mk2")
return

activateLabel:
	init()
return

exitLabel:
	ExitApp
return

usageLabel:
	usage("Usage")
return

lowerWantedLevelLabel:
	lowerWantedLevel()
return

emptySessionLabel:
	emptySession()
return