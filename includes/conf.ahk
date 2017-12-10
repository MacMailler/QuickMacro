;
; (c) MacMailler, 2017
; GitHub: https://github.com/MacMailler/QuickMacro
;


Global SettingsFile := "settings.ini"

loadConf() {
	IfExist, %SettingsFile%
	{
		
		IniRead, keyPhoneDalay, %SettingsFile%, Delays, KeyPhoneDalay
		IniRead, keyPhoneDuration, %SettingsFile%, Delays, KeyPhoneDuration
		IniRead, phoneDelay, %SettingsFile%, Delays, PhoneDelay
		IniRead, menuDelay, %SettingsFile%, Delays, MenuDelay
		IniRead, keyMDelay, %SettingsFile%, Delays, KeyMDelay
		IniRead, keyMDuration, %SettingsFile%, Delays, KeyMDuration
		IniRead, heavyWeaponKey, %SettingsFile%, Keys, HeavyWeaponKey
		IniRead, specialWeaponKey, %SettingsFile%, Keys, SpecialWeaponKey
		
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
	} else {
		IniWrite, %keyPhoneDalay%, %SettingsFile%, Delays, KeyPhoneDalay
		IniWrite, %keyPhoneDuration%, %SettingsFile%, Delays, KeyPhoneDuration
		IniWrite, %phoneDelay%, %SettingsFile%, Delays, PhoneDelay
		IniWrite, %menuDelay%, %SettingsFile%, Delays, MenuDelay
		IniWrite, %keyMDelay%, %SettingsFile%, Delays, KeyMDelay
		IniWrite, %keyMDuration%, %SettingsFile%, Delays, KeyMDuration
		IniWrite, %heavyWeaponKey%, %SettingsFile%, Keys, HeavyWeaponKey
		IniWrite, %specialWeaponKey%, %SettingsFile%, Keys, SpecialWeaponKey
		
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
	}
}