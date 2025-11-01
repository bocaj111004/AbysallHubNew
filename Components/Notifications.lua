local DoorsNotifcation = loadstring(game:HttpGet(AbysallHubSettings.Repository .. "Assets/DoorsNotifcation.lua"))()
return {
  Default = function(OptionsTable)
    if OptionsTable.Reason then
      OptionsTable.Reason = "\n" .. OptionsTable.Reason
  end
Sound = function()
	local NewSound = Instance.new("Sound")
	NewSound.Volume = Options.NotificationVolume.Value
	NewSound.SoundId = Options.NotificationSound.Value
	NewSound:Play()
	NewSound.Parent = game.ReplicatedStorage
	NewSound.Ended:Connect(function()
	NewSound:Destroy()
	end)
end
    
  Library:Notify("<b>[" .. OptionsTable.Title .. "]<\b>\n" .. OptionsTable.Description .. OptionsTable.Reason, Time, AbysallHubCore.NotifcationSound)
  end
  Doors = function(OptionsTable)
   DoorsNotification(OptionsTable)
  end
}
