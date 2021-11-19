-- Hides experience bar in combat

local frame = CreateFrame("Frame");

frame:SetScript("OnEvent", function(self, e)
  if (e == "PLAYER_REGEN_ENABLED") then
    MainMenuMaxLevelBar:Hide();
    ArtifactWatchBar:Show();
  elseif (e == "PLAYER_REGEN_DISABLED") then
    MainMenuMaxLevelBar:Show();
    ArtifactWatchBar:Hide();
  end
end);
