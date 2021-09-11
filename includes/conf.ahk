;
; Copyright (C) 2017 MacMailler
; GitHub: https://github.com/MacMailler/QuickMacro
;

Global SettingsFile := "QuickMacro.ini"

loadConf() {
	IfExist, %SettingsFile%
	{
		IniRead, keyPhoneDalay, %SettingsFile%, Delays, KeyPhoneDalay
		IniRead, keyPhoneDuration, %SettingsFile%, Delays, KeyPhoneDuration
		IniRead, phoneDelay, %SettingsFile%, Delays, PhoneDelay
		IniRead, menuDelay, %SettingsFile%, Delays, MenuDelay
		IniRead, keyMDelay, %SettingsFile%, Delays, KeyMDelay
		IniRead, keyMDuration, %SettingsFile%, Delays, KeyMDuration
		IniRead, RepeatButtonDelay, %SettingsFile%, Delays, RepeatButtonDelay
		IniRead, heavyWeaponKey, %SettingsFile%, Keys, HeavyWeaponKey
		IniRead, specialWeaponKey, %SettingsFile%, Keys, SpecialWeaponKey
		IniRead, RepeatButton, %SettingsFile%, Keys, RepeatButton
		
		IniRead, PegasusKey, %SettingsFile%, Hotkeys, PegasusKey
		IniRead, MechanicKey, %SettingsFile%, Hotkeys, MechanicKey
		IniRead, LesterKey, %SettingsFile%, Hotkeys, LesterKey
		IniRead, BuzzardKey, %SettingsFile%, Hotkeys, BuzzardKey
		IniRead, GhostKey, %SettingsFile%, Hotkeys, GhostKey
		IniRead, ArmorKey, %SettingsFile%, Hotkeys, ArmorKey
		IniRead, SnackKey, %SettingsFile%, Hotkeys, SnackKey
		IniRead, BullsharkKey, %SettingsFile%, Hotkeys, BullsharkKey
		IniRead, AmmoKey, %SettingsFile%, Hotkeys, AmmoKey
		IniRead, ToggleCeoKey, %SettingsFile%, Hotkeys, ToggleCeoKey
		IniRead, MorsMutualKey, %SettingsFile%, Hotkeys, MorsMutualKey
		IniRead, FastHeavyReloadKey, %SettingsFile%, Hotkeys, FastHeavyReloadKey
		IniRead, RepeatButtonKey, %SettingsFile%, Hotkeys, RepeatButtonKey
		IniRead, CrosshairKey, %SettingsFile%, Hotkeys, CrosshairKey
		IniRead, OutfitFixKey, %SettingsFile%, Hotkeys, OutfitFixKey
	} else {
		IniWrite, %keyPhoneDalay%, %SettingsFile%, Delays, KeyPhoneDalay
		IniWrite, %keyPhoneDuration%, %SettingsFile%, Delays, KeyPhoneDuration
		IniWrite, %phoneDelay%, %SettingsFile%, Delays, PhoneDelay
		IniWrite, %menuDelay%, %SettingsFile%, Delays, MenuDelay
		IniWrite, %keyMDelay%, %SettingsFile%, Delays, KeyMDelay
		IniWrite, %keyMDuration%, %SettingsFile%, Delays, KeyMDuration
		IniWrite, %RepeatButtonDelay%, %SettingsFile%, Delays, RepeatButtonDelay
		IniWrite, %heavyWeaponKey%, %SettingsFile%, Keys, HeavyWeaponKey
		IniWrite, %specialWeaponKey%, %SettingsFile%, Keys, SpecialWeaponKey
		IniWrite, %RepeatButton%, %SettingsFile%, Keys, RepeatButton
		
		IniWrite, %PegasusKey%, %SettingsFile%, Hotkeys, PegasusKey
		IniWrite, %MechanicKey%, %SettingsFile%, Hotkeys, MechanicKey
		IniWrite, %LesterKey%, %SettingsFile%, Hotkeys, LesterKey
		IniWrite, %BuzzardKey%, %SettingsFile%, Hotkeys, BuzzardKey
		IniWrite, %GhostKey%, %SettingsFile%, Hotkeys, GhostKey
		IniWrite, %ArmorKey%, %SettingsFile%, Hotkeys, ArmorKey
		IniWrite, %SnackKey%, %SettingsFile%, Hotkeys, SnackKey
		IniWrite, %BullsharkKey%, %SettingsFile%, Hotkeys, BullsharkKey
		IniWrite, %AmmoKey%, %SettingsFile%, Hotkeys, AmmoKey
		IniWrite, %ToggleCeoKey%, %SettingsFile%, Hotkeys, ToggleCeoKey
		IniWrite, %MorsMutualKey%, %SettingsFile%, Hotkeys, MorsMutualKey
		IniWrite, %FastHeavyReloadKey%, %SettingsFile%, Hotkeys, FastHeavyReloadKey
		IniWrite, %RepeatButtonKey%, %SettingsFile%, Hotkeys, RepeatButtonKey
		IniWrite, %CrosshairKey%, %SettingsFile%, Hotkeys, CrosshairKey
		IniWrite, %OutfitFixKey%, %SettingsFile%, Hotkeys, OutfitFixKey
	}
}