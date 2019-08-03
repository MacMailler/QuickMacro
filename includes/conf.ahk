Global SettingsFile := "QuickMacro.ini"

loadConf() {
	IfExist, %SettingsFile%
	{
		IniRead, keyPhoneDelay, %SettingsFile%, Delays, KeyPhoneDelay
		IniRead, keyPhoneDuration, %SettingsFile%, Delays, KeyPhoneDuration
		IniRead, phoneDelay, %SettingsFile%, Delays, PhoneDelay
		IniRead, menuDelay, %SettingsFile%, Delays, MenuDelay
		IniRead, keyMDelay, %SettingsFile%, Delays, KeyMDelay
		IniRead, keyMDuration, %SettingsFile%, Delays, KeyMDuration
		
		IniRead, PegasusKey, %SettingsFile%, Hotkeys, PegasusKey
		IniRead, MechanicKey, %SettingsFile%, Hotkeys, MechanicKey
		IniRead, LesterKey, %SettingsFile%, Hotkeys, LesterKey
		IniRead, GhostKey, %SettingsFile%, Hotkeys, GhostKey
		IniRead, ArmorKey, %SettingsFile%, Hotkeys, ArmorKey
		IniRead, VehicleKey, %SettingsFile%, Hotkeys, VehicleKey
		IniRead, Mk2Key, %SettingsFile%, Hotkeys, Mk2Key

		IniRead, SnackKey, %SettingsFile%, Hotkeys, SnackKey
		IniRead, ToggleCeoKey, %SettingsFile%, Hotkeys, ToggleCeoKey
		IniRead, MorsMutualKey, %SettingsFile%, Hotkeys, MorsMutualKey
		IniRead, BribeKey, %SettingsFile%, Hotkeys, BribeKey
		IniRead, UsageKey, %SettingsFile%, Hotkeys, UsageKey
	} else {
		IniWrite, %keyPhoneDelay%, %SettingsFile%, Delays, KeyPhoneDelay
		IniWrite, %keyPhoneDuration%, %SettingsFile%, Delays, KeyPhoneDuration
		IniWrite, %phoneDelay%, %SettingsFile%, Delays, PhoneDelay
		IniWrite, %menuDelay%, %SettingsFile%, Delays, MenuDelay
		IniWrite, %keyMDelay%, %SettingsFile%, Delays, KeyMDelay
		IniWrite, %keyMDuration%, %SettingsFile%, Delays, KeyMDuration
		
		IniWrite, %PegasusKey%, %SettingsFile%, Hotkeys, PegasusKey
		IniWrite, %MechanicKey%, %SettingsFile%, Hotkeys, MechanicKey
		IniWrite, %LesterKey%, %SettingsFile%, Hotkeys, LesterKey
		IniWrite, %GhostKey%, %SettingsFile%, Hotkeys, GhostKey
		IniWrite, %ArmorKey%, %SettingsFile%, Hotkeys, ArmorKey
		IniWrite, %VehicleKey%, %SettingsFile%, Hotkeys, VehicleKey
		IniWrite, %Mk2Key%, %SettingsFile%, Hotkeys, Mk2Key

		IniWrite, %SnackKey%, %SettingsFile%, Hotkeys, SnackKey
		IniWrite, %ToggleCeoKey%, %SettingsFile%, Hotkeys, ToggleCeoKey
		IniWrite, %MorsMutualKey%, %SettingsFile%, Hotkeys, MorsMutualKey
		IniWrite, %BribeKey%, %SettingsFile%, Hotkeys, BribeKey
		IniWrite, %UsageKey%, %SettingsFile%, Hotkeys, UsageKey
	}
}
