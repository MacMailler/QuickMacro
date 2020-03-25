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
		

		IniRead, MechanicKey, %SettingsFile%, Hotkeys, MechanicKey
		IniRead, LesterKey, %SettingsFile%, Hotkeys, LesterKey
		IniRead, MorsMutualKey, %SettingsFile%, Hotkeys, MorsMutualKey
		IniRead, AssistantKey, %SettingsFile%, Hotkeys, AssistantKey
		IniRead, ArmorKey, %SettingsFile%, Hotkeys, ArmorKey
		IniRead, BribeKey, %SettingsFile%, Hotkeys, BribeKey
		IniRead, GhostKey, %SettingsFile%, Hotkeys, GhostKey
		IniRead, VehicleKey, %SettingsFile%, Hotkeys, VehicleKey
		IniRead, Mk2Key, %SettingsFile%, Hotkeys, Mk2Key
		IniRead, SnackKey, %SettingsFile%, Hotkeys, SnackKey
		IniRead, ToggleCeoKey, %SettingsFile%, Hotkeys, ToggleCeoKey
		IniRead, LowerWantedLevelKey, %SettingsFile%, Hotkeys, LowerWantedLevelKey
		IniRead, EmptySessionKey, %SettingsFile%, Hotkeys, EmptySessionKey
		
		IniRead, UsageKey, %SettingsFile%, Hotkeys, UsageKey

	} else {
		IniWrite, %keyPhoneDelay%, %SettingsFile%, Delays, KeyPhoneDelay
		IniWrite, %keyPhoneDuration%, %SettingsFile%, Delays, KeyPhoneDuration
		IniWrite, %phoneDelay%, %SettingsFile%, Delays, PhoneDelay
		IniWrite, %menuDelay%, %SettingsFile%, Delays, MenuDelay
		IniWrite, %keyMDelay%, %SettingsFile%, Delays, KeyMDelay
		IniWrite, %keyMDuration%, %SettingsFile%, Delays, KeyMDuration
		
		
		IniWrite, %MechanicKey%, %SettingsFile%, Hotkeys, MechanicKey
		IniWrite, %LesterKey%, %SettingsFile%, Hotkeys, LesterKey
		IniWrite, %MorsMutualKey%, %SettingsFile%, Hotkeys, MorsMutualKey
		IniWrite, %AssistantKey%, %SettingsFile%, Hotkeys, AssistantKey
		IniWrite, %ArmorKey%, %SettingsFile%, Hotkeys, ArmorKey
		IniWrite, %BribeKey%, %SettingsFile%, Hotkeys, BribeKey
		IniWrite, %GhostKey%, %SettingsFile%, Hotkeys, GhostKey
		IniWrite, %VehicleKey%, %SettingsFile%, Hotkeys, VehicleKey
		IniWrite, %Mk2Key%, %SettingsFile%, Hotkeys, Mk2Key
		IniWrite, %SnackKey%, %SettingsFile%, Hotkeys, SnackKey
		IniWrite, %ToggleCeoKey%, %SettingsFile%, Hotkeys, ToggleCeoKey
		IniWrite, %LowerWantedLevelKey%, %SettingsFile%, Hotkeys, LowerWantedLevelKey
		IniWrite, %EmptySessionKey%, %SettingsFile%, Hotkeys, EmptySessionKey
		
		IniWrite, %UsageKey%, %SettingsFile%, Hotkeys, UsageKey

	}
}
