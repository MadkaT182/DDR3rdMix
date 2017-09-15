local function OptionNameString(str)
	return THEME:GetString('OptionNames',str)
end

local Prefs =
{
	BOOT =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	SONGOPT =
	{
		Default = 'No',
		Choices = { OptionNameString('No'), OptionNameString('DDR'), OptionNameString('PRO') },
		Values = { 'No', 'DDR', 'PRO' }
	},
	TITLEBG =
	{
		Default = '3rdMix',
		Choices = { OptionNameString('3rdMix'), OptionNameString('3rdMixPlus'), OptionNameString('3rdReMix'), OptionNameString('SSR') },
		Values = { '3rdMix', '3rdMixPlus', '3rdReMix', 'SSR' }
	},
	COMBOU =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	HDEFNS =
	{
		Default = false,
		Choices = { OptionNameString('No'), OptionNameString('Yes') },
		Values = { false, true }
	},
}

ThemePrefs.InitAll(Prefs)

-- function InitUserPrefs()

-- 	for k, v in pairs(Prefs) do

-- 		local GetPref = type(v) == "boolean" and GetUserPrefB or GetUserPref
-- 		if GetPref(k) == nil then
-- 			SetUserPref(k, v)
-- 		end
-- 	end

-- end

function OptionRowDummySound()
	return {
		Name="DummySound",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = true,
		ExportOnChange = false,
		Choices = { 'STEREO', 'MONO', },
		LoadSelections = function(self, list, pn)
			list[1] = true
		end,
		SaveSelections = function(self, list, pn)
		end,
	}
end

function OptionRowDummyAttractSnd()
	return {
		Name="DummyAttractSnd",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = true,
		ExportOnChange = false,
		Choices = { 'ALL THE TIME', 'NEVER', },
		LoadSelections = function(self, list, pn)
			list[1] = true
		end,
		SaveSelections = function(self, list, pn)
		end,
	}
end