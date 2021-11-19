-- Hides quest tracker in combat

local frame = CreateFrame("Frame");

frame:SetScript("OnEvent", function(self, e)
  if (e == "PLAYER_REGEN_ENABLED") then
    ObjectiveTrackerFrame:Show();
  elseif (e == "PLAYER_REGEN_DISABLED") then
    ObjectiveTrackerFrame:Hide();
  end
end);

frame:RegisterEvent("PLAYER_REGEN_ENABLED");
frame:RegisterEvent("PLAYER_REGEN_DISABLED");
