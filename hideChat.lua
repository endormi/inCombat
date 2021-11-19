-- Hides chat in combat

local frame = CreateFrame("Frame");

frame:SetScript("OnEvent", function(self, e)
  if (e == "PLAYER_REGEN_ENABLED") then
    DEFAULT_CHAT_FRAME:Show();
    QuickJoinToastButton:Show();
    ChatFrameChannelButton:Show();
    GeneralDockManager:Show();
    ChatFrameMenuButton:Show();
  elseif (e == "PLAYER_REGEN_DISABLED") then
    DEFAULT_CHAT_FRAME:Hide();
    QuickJoinToastButton:Hide();
    ChatFrameChannelButton:Hide();
    GeneralDockManager:Hide();
    ChatFrameMenuButton:Hide();
  end
end);

frame:RegisterEvent("PLAYER_REGEN_ENABLED");
frame:RegisterEvent("PLAYER_REGEN_DISABLED");
