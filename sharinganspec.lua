local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local UIS = game:GetService("UserInputService")
local key = Player:GetMouse()

local Whitelist = {
	Supervisor_LoL = true, 
	Wxxke = true,
	notarchs = true,
};


local deb = false;

UIS.InputBegan:Connect(function(input, gameProcessedEvent)
	if input.UserInputType == Enum.UserInputType.Keyboard and not gameProcessedEvent then
		if input.KeyCode == Enum.KeyCode.R and deb == false then
			deb = true
			delay(1,function()
				deb = false
			end)
			if game.Lighting.Kure.Enabled == false then
				for i, v in pairs(game.Players:GetPlayers()) do
					pcall(function()
					v.Character.Humanoid.DisplayDistanceType = "Subject"
					v.Character.Humanoid.DisplayName = " "
					v.Character.Head.Transparency = 0.001;
					v.Character.Humanoid.NameDisplayDistance = 250;
					v.Character.Humanoid.HealthDisplayDistance = 250;
					v.Character.Humanoid.HealthDisplayType = "AlwaysOn"
					v.Character.FakeHum.Value.DisplayDistanceType = "None"
					local Stats = v.leaderstats

					local fakehead = v.Character:FindFirstChild(Stats.FirstName.Value..Stats.MiddleName.Value.." "..Stats.ClanName.Value)

					fakehead.Name = v.Name
					end)


				end
				game.Lighting.Kure.Enabled = true
			else
				for i, v in pairs(game.Players:GetPlayers()) do
					pcall(function()
						
					
					v.Character.Humanoid.DisplayDistanceType = "None"
					v.Character.Humanoid.HealthDisplayType = "AlwaysOff"
					v.Character.Humanoid.HealthDisplayDistance = 0;
					v.Character.Head.Transparency = 1;
					v.Character.Humanoid.NameDisplayDistance = 100;
					local Stats = v.Stats

					local fakehead = v.Character:FindFirstChild(v.Name)

						fakehead.Name = Stats.FirstName.Value..Stats.MiddleName.Value.." "..Stats.ClanName.Value	
					end)
				end
				game.Lighting.Kure.Enabled = false
			end

		end
	end
	end)
