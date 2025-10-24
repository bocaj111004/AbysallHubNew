	return function(Text, PlaySound)
  local LocalPlayer = game:GetService("LocalPlayer")
				local MainUI = LocalPlayer.PlayerGui:WaitForChild("PlayerGui"):WaitForChild("MainUI")
				local Caption = MainUI:WaitForChild("MainFrame"):WaitForChild("Caption"):Clone()
				local CaptionSound = MainUI:WaitForChild("Initiator"):WaitForChild("Main_Game"):WaitForChild("Reminder"):WaitForChild("Caption")
				for i,Child in pairs(MainUI:GetChildren()) do
					if Child.Name == "LiveCaption" then
						Child:Destroy()
					end
				end
				Caption.Parent = MainUI
				Caption.Visible = true
				Caption.Name = "LiveCaption"
				Caption.Text = Text
				if PlaySound then
					CaptionSound:Play()
				end
				local HolderTween = TweenService:Create(CaptionValue, TweenInfo.new(3), {Value = 100})
				HolderTween:Play()
				HolderTween.Completed:Connect(function()
					TweenService:Create(Caption, TweenInfo.new(4, Enum.EasingStyle.Linear), {TextTransparency = 1}):Play()
					TweenService:Create(Caption, TweenInfo.new(4, Enum.EasingStyle.Linear), {TextStrokeTransparency = 1}):Play()
				end)
			end
