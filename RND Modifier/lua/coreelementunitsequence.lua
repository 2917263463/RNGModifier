core:module("CoreElementUnitSequence")
core:import("CoreMissionScriptElement")
core:import("CoreCode")
core:import("CoreUnit")

_G.RNDModifier = _G.RNDModifier or {}

RNDModifier = _G.RNDModifier or {}

if not RNDModifier then
	return
end

local RNDModifier_ElementUnitSequence_on_executed = ElementUnitSequence.on_executed

function ElementUnitSequence:on_executed(...)
	if Global.game_settings then
		local _level_id = tostring(Global.game_settings.level_id)
		if _level_id == "branchbank" then
			if self._id == 105193 then
				local _hideOfficeCard = RNDModifier:SafeGetData("branchbank", "_hideOfficeCard") or "1"
				if _hideOfficeCard == "1" then
				
				elseif _hideOfficeCard == "2" then
					return
				end
			end
		end
	end
	return RNDModifier_ElementUnitSequence_on_executed(self, ...)
end