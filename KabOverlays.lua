local f = CreateFrame("Frame")
local opacity = 0.75

--[[ 	None = 0,
		Warrior = 1,
		Paladin = 2,
		Hunter = 3,
		Rogue = 4,
		Priest = 5,
		DeathKnight = 6,
		Shaman = 7,
		Mage = 8,
		Warlock = 9,
		Monk = 10,
		Druid = 11,
		Demonhunter = 12
--]]

local classtableDB = {
	WARRIOR		= {o = 0},
	PALADIN		= {o = 1},
	HUNTER		= {o = 0},
	ROGUE		= {o = 1},
	PRIEST		= {o = 1},
	DEATHKNIGHT	= {o = 0},
	SHAMAN		= {o = 1},
	MAGE		= {o = 1},
	WARLOCK		= {o = 1},
	MONK		= {o = 1},
	DRUID		= {o = 1},
	DEMONHUNTER = {o = 1}
}

f:SetScript("OnEvent", function(self, event, name, ...)
	local _, classcaps = UnitClass("player")
	local classdata = classtableDB[classcaps]
	--SetCVar("displaySpellActivationOverlays", classdata.o)
	SetCVar("spellActivationOverlayOpacity", opacity*classdata.o)
	--print ("KabOverlays: "..classcaps.." "..classdata.o.." "..opacity*classdata.o)
end)

f:RegisterEvent("VARIABLES_LOADED")
--f:RegisterEvent("CVAR_UPDATE")
