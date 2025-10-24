local DoorsNotifcation = loadstring(game:HttpGet(AbysallHubSettings.Repository .. "Assets/DoorsNotifcation.lua"))()
return {
  Default = function(OptionsTable)
    if OptionsTable.Reason then
      OptionsTable.Reason = "\n" .. OptionsTable.Reason
  end
    
  Library:Notify("<b>[" .. OptionsTable.Title .. "]<\b>\n" .. OptionsTable.Description .. OptionsTable.Reason, Time, AbysallHubCore.NotifcationSound)
  end
  Doors = function(OptionsTable)
   DoorsNotification(OptionsTable)
  end
}
