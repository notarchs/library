repeat wait() until game:IsLoaded()

local plr = game:GetService("Players").LocalPlayer
local Char = plr.Character if not Char then Char = game.Workspace.Live:WaitForChild(plr) end
if Char:FindFirstChild("Torso") and Char:FindFirstChild("Torso"):FindFirstChild("roblox") then
    Char:FindFirstChild("Torso"):FindFirstChild("roblox"):Destroy()
    end

    local hum = Char.Humanoid or Char:WaitForChild("Humanoid")

local ArchsUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/notarchs/library/main/lib.lua"))()

--[[ArchsUI:New({
  Name - Title of the UI <string>
  FolderToSave - Name of the folder where the UI files will be stored <string>
})]]
local win = ArchsUI:New({
  Name = "Archs Ken Script :P",
  FolderToSave = "ArchsKen"
})

--win:Tab(title <string>)
local tab = win:Tab("Legit")

--tab:Section(title <string>)
local sec1 = tab:Section("Config")
local sec = tab:Section("Legit stuff")

--sec:Button(title <string>, callback <function>)
--[[:Button("Button", function()
  ArchsUI:Notification("Test", "This is a notification test.")
end)]]

--sec:Toggle(title <string>,default <boolean>, flag <string>, callback <function>)
--[[local toggle = sec:Toggle("lol", false,"Toggle", function(shush)
print(shush)
end)]]

--[[
toggle:Set(state <boolean>)
]]

--sec:Slider(title <string>,default <number>,max <number>,minimum <number>,increment <number>, flag <string>, callback <function>)
--[[local slider = sec:Slider("Slider", 0,25,0,2.5,"Slider", function(t)
  print(t)
end)]]

--[[
slider:Set(state <number>)
]]

--sec:Dropdown(title <string>,options <table>,default <string>, flag <string>, callback <function>)
--[[local dropdown = sec:Dropdown("Dropdown", {"a","b","c","d","e"},"","Dropdown", function(t)
  print(t)
end)]]

--[[
Dropdown:Refresh(options <table>, deletecurrent <boolean>)
Dropdown:Set(option <string>)
]]

--sec:MultiDropdown(title <string>,options <table>,default <table>, flag <string>, callback <function>)
--[[local multidropdown =sec:MultiDropdown("Multi Dropdown", {"a","b","c","d","e"},{"b", "c"},"Dropdown", function(t)
  print(table.concat(t, ", "))
end)]]

--[[
Dropdown:Refresh(options <table>, deletecurrent <boolean>)
Dropdown:Set(option <table>)
]]

--sec:Colorpicker(title <string>, default <color3>, flag <string>, callback <function>)
--[[sec:Colorpicker("Colorpicker", Color3.fromRGB(255,255,255),"Colorpicker", function(t)
  --print(t)
end)]]

--sec:Textbox(title <string> ,disappear <boolean>, callback <function>)
--[[sec:Textbox("Textbox", true, function(t)
  print(t)
end)]]

--sec:Bind(title <string>, default <keycode>, hold <boolean>, flag <string>, callback <function>)
--[[sec:Bind("Hold Bind", Enum.KeyCode.E, true, "BindHold", function(t)
 print(t)
end)]]

sec1:Slider("Pushup Speed", 0.5, 2, 0, 0.1, "Slider", function(pushupslider)

    shared.pushupSpeed = pushupslider

end)

sec1:Slider("Situp Speed", 0.7, 2, 0, 0.1, "Slider", function(situpslider)

    shared.situpSpeed = situpslider

end)

sec1:Toggle("Auto eat protein", false, "Toggle", function(proteinyumyum)

    shared.proteinYummy = proteinyumyum
    local player = game.Players.LocalPlayer

    while shared.proteinYummy and wait() do
        if gethiddenproperty(player.PlayerGui.HUD.Food, "AbsoluteSize").X >= 50.0001 then
            if not player.Character.Status:FindFirstChild("Bar") then
            for _,c in pairs(game.Workspace.Map:GetChildren())do
            if c:FindFirstChild("Protein Bar $45") and (c:FindFirstChild("Protein Bar $45").Head.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 30 then
            fireclickdetector(c:FindFirstChild("Protein Bar $45").Head.ClickDetector)
            end
            end
            if player.Backpack:FindFirstChild("Protein Bar") then
            player.Character.Humanoid:EquipTool(player.Backpack:FindFirstChild("Protein Bar"))
            end
            if player.Character:FindFirstChild("Protein Bar") then
            player.Character:FindFirstChild("Protein Bar"):Activate()
            end
        end
    end
end
end)


sec:Dropdown("Training", {"Pushup", "Situp"}, "", "Dropdown", function(autotrainselect)

    shared.trainSelection = autotrainselect
    print(shared.trainSelection)

end)

sec:Toggle("Auto Train", false, "Toggle", function(autotrain)

    local Char = plr.Character if not Char then Char = game.Workspace.Live:WaitForChild(plr) end
    local hum = Char.Humanoid or Char:WaitForChild("Humanoid")
    local ws = game:GetService("Workspace")
    local plr = game:GetService("Players").LocalPlayer

    shared.autoTrain = autotrain

    while shared.autoTrain and wait() and shared.trainSelection == "Pushup" do
        if game.Workspace.Live:WaitForChild(plr.Name).Stamina.Value >= 25 and game.Workspace.Live:WaitForChild(plr.Name).Stamina.Value <= 9999 then
            wait()
            if not plr.Backpack:FindFirstChild("Pushup") and not ws.Live:WaitForChild(plr.Name):FindFirstChild("Pushup") then
            fireclickdetector(ws.Shop["Pushup $100"].Head.ClickDetector)
            hum:EquipTool(plr.Backpack:WaitForChild("Pushup", 1))
            elseif plr.Backpack:FindFirstChild("Pushup") and not ws.Live:WaitForChild(plr.Name):FindFirstChild("Pushup")
            then hum:EquipTool(plr.Backpack:WaitForChild("Pushup", 1))
            elseif ws.Live:WaitForChild(plr.Name):FindFirstChild("Pushup") and not game.Players.LocalPlayer.Character.Status:FindFirstChild("Training") then
                Char:FindFirstChild("Pushup"):Activate()
                wait(shared.pushupSpeed)
                wait(0.05)
            elseif game.Workspace.Live:WaitForChild(plr.Name).Stamina.Value <= 25 then
                repeat 
                wait() 
                until nil or gethiddenproperty(game.Players.LocalPlayer.PlayerGui.HUD.Stamina, "AbsoluteSize").X >= 230   
    end
end
end
        while shared.autoTrain and wait() and shared.trainSelection == "Situp" do
            if game.Workspace.Live:WaitForChild(plr.Name).Stamina.Value >= 25 and game.Workspace.Live:WaitForChild(plr.Name).Stamina.Value <= 9999 then 
                wait()
                if not plr.Backpack:FindFirstChild("Situp") and not ws.Live:WaitForChild(plr.Name):FindFirstChild("Situp") then
                fireclickdetector(ws.Shop["Situp $300"].Head.ClickDetector)
                hum:EquipTool(plr.Backpack:WaitForChild("Pushup", 1))
                elseif plr.Backpack:FindFirstChild("Situp") and not ws.Live:WaitForChild(plr.Name):FindFirstChild("Situp")
                then hum:EquipTool(plr.Backpack:WaitForChild("Situp", 1))
                elseif ws.Live:WaitForChild(plr.Name):FindFirstChild("Situp") and not Char.Status:FindFirstChild("Training") then
                    Char:FindFirstChild("Situp"):Activate()
                    wait(shared.situpSpeed)
                    wait(0.05)
                elseif gethiddenproperty(player.PlayerGui.HUD.Stamina, "AbsoluteSize").X <= 40 then
                    repeat 
                    wait() 
                    until nil or gethiddenproperty(player.PlayerGui.HUD.Stamina, "AbsoluteSize").X >= 230
        end
    end
end
end)

local sec1b = tab:Section("Weights")

sec1b:Toggle("Auto Heavy Weight", false, "Toggle", function(autohweight)

    shared.heavyToggle = autohweight
    local player = game.Players.LocalPlayer


while shared.heavyToggle and wait() do
    if gethiddenproperty(player.PlayerGui.HUD.Food, "AbsoluteSize").X >= 50.0001 then
    if not player.Character.Status:FindFirstChild("Bar") then
    for _,c in pairs(game.Workspace.Map:GetChildren())do
    if c:FindFirstChild("Protein Bar $45") and (c:FindFirstChild("Protein Bar $45").Head.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 30 then
    fireclickdetector(c:FindFirstChild("Protein Bar $45").Head.ClickDetector)
    end
    end
    if player.Backpack:FindFirstChild("Protein Bar") then
    player.Character.Humanoid:EquipTool(player.Backpack:FindFirstChild("Protein Bar"))
    end
    if player.Character:FindFirstChild("Protein Bar") then
    player.Character:FindFirstChild("Protein Bar"):Activate()
    end
    elseif not player.Character.Status:FindFirstChild("Poweraid") then
    for _,c in pairs(game.Workspace.Map:GetChildren())do
    if c:FindFirstChild("Energy Drink $32") and (c:FindFirstChild("Energy Drink $32").Head.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 30 then
    fireclickdetector(c:FindFirstChild("Energy Drink $32").Head.ClickDetector)
    end
    end
    if player.Backpack:FindFirstChild("Energy Drink") then
    player.Character.Humanoid:EquipTool(player.Backpack:FindFirstChild("Energy Drink"))
    end
    if player.Character:FindFirstChild("Energy Drink") then
    player.Character:FindFirstChild("Energy Drink"):Activate()
    end
    end
    if not game.Workspace.Live:WaitForChild(plr.Name):FindFirstChild("Heavy Weight") then
    if player.Backpack:FindFirstChild("Heavy Weight") then
    player.Character.Humanoid:EquipTool(player.Backpack:FindFirstChild("Heavy Weight"))
    end
    end
    if player.Character.Stamina.Value >= 25 and player.Character.Stamina.Value <= 9999 then
    if not player.Character.Status:FindFirstChild("Training") then
    if game.Workspace.Live:WaitForChild(plr.Name):FindFirstChild("Heavy Weight") then
        wait(0.1)
    game.Workspace.Live:WaitForChild(plr.Name):FindFirstChild("Heavy Weight"):Activate()
    end
    end
    wait(0.25)
    elseif gethiddenproperty(player.PlayerGui.HUD.Stamina, "AbsoluteSize").X <= 40 then
    repeat 
    wait() 
    until nil or gethiddenproperty(player.PlayerGui.HUD.Stamina, "AbsoluteSize").X >= 230
            end
        end
    end
end)
  
  
      
      
--[[
bind:Set(state <keycode>)
]]

--sec:Label(text <string>)
--local label = sec:Label("Label")

--[[
label:Set(text <string>)
]]
local tab2 = win:Tab("Risky")

local sec2 = tab2:Section("Risky Stuffs")

sec2:Button("Namehider", function()
  ArchsUI:Notification("Namehider", "Namehider successfully toggled.")
  ---- actual function below
    local player = game:GetService("Players").LocalPlayer
    local ign = "Wake Hayai" -------------------- CHANGE THIS TO YOUR IN GAME NAME
    for i,v in pairs(player.Character:GetChildren()) do
    if v:IsA("Accessory") or v:IsA("Pants") or v:IsA("Shirt") then
       print(v)
       v:Destroy()
    end
    end

    for i,v in pairs(player.Character:GetChildren()) do
     if v:IsA("Part") then
       warn(v)
       v.Color = Color3.new(0, 0, 0)
    end
    end

    player.Character[ign]:Destroy()
end)

sec2:Bind("Hold to punch", Enum.KeyCode.Z, true, "BindHold", function(Holdpunch)
    --- actual function below
  print(Holdpunch)
  if Holdpunch == true then
      punch = true
      else
         punch = false
     end
  while punch == true do
      print(punch)
             if punch == false then
            break
            end
      local args = {
    [1] = true,
    [2] = 1
    }
     
     wait(0.2)
         game:GetService("Players").LocalPlayer.Backpack.zoom.boom.accion:FireServer(unpack(args))
  end
  print("works")
end)

sec2:Toggle("Toggle to punch", false,"Toggle",function(Togglepunch)
    shared.punchTog = Togglepunch

    while shared.punchTog and wait(.17) do
    game:GetService("Players").LocalPlayer.Backpack.zoom.boom.accion:FireServer(true, 1)
end;
end)

sec2:Toggle("SHOCKWAVE SIMULATOR", false,"Toggle",function(shockwave)
    shared.dropKick = shockwave
    while shared.dropKick and wait() do
            wait(0.17)
game:GetService("Players").LocalPlayer.Backpack.zoom.boom.accion:FireServer(true, "DropKick")    
end
end)

local sec2b = tab2:Section("Risky Farms")

sec2b:Toggle("Autofarm Strength", false,"Toggle",function(SparRisk)
local plr = game:GetService("Players").LocalPlayer
local Char = plr.Character if not Char then Char = game.Workspace.Live:WaitForChild(plr) end
local hum = Char.Humanoid or Char:WaitForChild("Humanoid")
local ws = game:GetService("Workspace")
local Stamina = game.Players.LocalPlayer.Character.Stamina
-- tools 
local Tools = {"Spar Training $190", "Spar Training"}
--- positions
local Spar_location = {
    NearEntrance = Vector3.new(-1680.3673095703125, 92.74633026123047, -140.79388427734375)
}
-- tween
local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(2,Enum.EasingStyle.Linear)
    
    local lp = game.Players.LocalPlayer
    
    function sparfarm_balls(v)
    if lp.Character and
    lp.Character:FindFirstChild('HumanoidRootPart') then
    
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
    
        a:Play()
        a.Completed:Wait()
        print("Done")
    end
    end

-- to make loop work
shared.sparRisky = SparRisk
-- functionality
while shared.sparRisky and wait() do
    if Stamina.Value <= 10 then
        hum:Destroy()
        end
    wait(0.1)
    if
        not plr.Backpack:FindFirstChild(Tools[2]) and shared.sparRisky and
            not ws.Live:WaitForChild(plr.Name):FindFirstChild("Right") and
            not ws.Live:WaitForChild(plr.Name):FindFirstChild(Tools[2])
     then
        fireclickdetector(ws.Shop[Tools[1]].Head.ClickDetector)
        plr.Backpack:WaitForChild(Tools[2], 5)
        hum:EquipTool(plr.Backpack:FindFirstChild(Tools[2]))
        Char:FindFirstChild("Spar Training"):Activate()
        hum:EquipTool(plr.Backpack:WaitForChild("Basic Combat", 1))
    elseif plr.Backpack:FindFirstChild(Tools[2]) and not Char:FindFirstChild("Right") then
        hum:EquipTool(plr.Backpack:FindFirstChild(Tools[2]))
        Char:FindFirstChild("Spar Training"):Activate()
        wait(0.5)
        hum:EquipTool(plr.Backpack:WaitForChild("Basic Combat", 1))
    elseif Char:FindFirstChild("Right") then
        wait(0.16)
        game:GetService("Players").LocalPlayer.Backpack.zoom.boom.accion:FireServer(true, 1)
    end
end
end)

sec2b:Toggle("Auto Dura", false,"Toggle",function(AutoDura)
    shared.duraFarm = AutoDura
   while shared.duraFarm and wait() do
    fireclickdetector(game:GetService("Workspace").Shop["Self Punch $130"].Head.ClickDetector)
    wait()
    local player = game.Players.LocalPlayer
    local char = player.Character
    player.Character.HumanoidRootPart.Anchored = true

fireclickdetector(game:GetService("Workspace").Shop["Durability Training $130"].Head.ClickDetector)

player.Character.Humanoid:EquipTool(player.Backpack:FindFirstChild("Durability Training"))
player.Character:FindFirstChild("Durability Training"):Activate()

player.Character.Humanoid:EquipTool(player.Backpack:FindFirstChild("Self Punch"))
player.Character:FindFirstChild("Self Punch"):Activate()

if player.Character.Status:FindFirstChild("Durability") then
player.Character:FindFirstChild("Self Punch"):Activate()
end

if player.Character.Humanoid.Health <= 100 then
		player.Character.Humanoid:EquipTool(player.Backpack:FindFirstChild("Self Punch"))
		if not player.Character.Humanoid:EquipTool(player.Backpack:FindFirstChild("Self Punch")) then
			fireclickdetector(game:GetService("Workspace").Shop["Self Punch $130"].Head.ClickDetector)
			
	player.Character:FindFirstChild("Self Punch"):Activate()
	for i,v in pairs(char:GetChildren()) do
if v.ClassName == "Accessory" or v.Name == "Humanoid" or v.Name == "HumanoidRootPart" or v.Name == "Torso" or string.match(v.Name, "Right") or string.match(v.Name, "Left") then 
v.Parent = nil
		end
	end
	end
end

		player.Character.Humanoid:EquipTool(player.Backpack:FindFirstChild("Self Punch"))
	player.Character:FindFirstChild("Self Punch"):Activate()

end
end)

local sec2c = tab2:Section("Other Risky Stuff")

sec2c:Slider("Walkspeed",0,200,24,1,"Slider", function(walkslider)
  print(walkslider)
  shared.walkSpeed = walkslider
end)

sec2c:Toggle("Walkspeed Toggle", false, "Toggle", function(walktoggle)
shared.walkToggle = walktoggle

while shared.walkToggle and wait() do
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = shared.walkSpeed
    end
end)

local sec2d = tab2:Section("Auto Roadworks")

sec2d:Slider("Speed (Higher = Slower)", 2,4,2,1, "Slider", function(roadworkspeed)

    shared.roadworkSpeed = roadworkspeed
    print(shared.roadworkSpeed)
end)

sec2d:Dropdown("Method", {"Regular", "Fast", "Custom", "Test"}, "Regular", "Dropdown", function(roadworkmethod)

    shared.roadworkMethod = roadworkmethod
    print(shared.roadworkMethod)
end)

sec2d:Slider("Cooldown Between Checkpoints (Custom)", 0, 5, 0, 0.1, "Slider", function(roadworkcustom)

    shared.roadworkCustom = roadworkcustom
    print(shared.roadworkCustom)
end)

sec2d:Toggle("Roadwork Farm", false, "Toggle", function(roadworkfarm)

    shared.roadworkFarm = roadworkfarm
    print(shared.roadworkFarm)

    local positions_table = {
        Buy = Vector3.new(-2123.05712890625, 93.9112777709961, 90.50890350341797),
        Checkpoint1 = Vector3.new(-1991.1180419921875, 92.55632781982422, -13.291576385498047),
        Checkpoint2 = Vector3.new(-1697.170166015625, 92.55633544921875, -32.48717498779297),
        Checkpoint3 = Vector3.new(-1672.0970458984375, 92.55632781982422, -322.25836181640625),
        Checkpoint4 = Vector3.new(-1917.208251953125, 92.55632781982422, -333.1876525878906),
        Finish = Vector3.new(-1925.0443115234375, 92.55632781982422, -105.69416046142578)
    }

    while shared.roadworkFarm and wait() and shared.roadworkMethod == "Regular" do

    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(shared.roadworkSpeed,Enum.EasingStyle.Linear)
    
    local lp = game.Players.LocalPlayer
    
    function Roadwork_Farm_balls(v)
    if lp.Character and
    lp.Character:FindFirstChild('HumanoidRootPart') then
    
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
    
        a:Play()
        a.Completed:Wait()
        print("Done")
    end
    end
    
    Roadwork_Farm_balls(positions_table.Buy)
    wait(0.2)
    fireclickdetector(game:GetService("Workspace").Shop["Roadwork Training $130"].Head.ClickDetector)
    wait(0.2)
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Roadwork Training"))
    game.Players.LocalPlayer.Character:FindFirstChild("Roadwork Training"):Activate()
    Roadwork_Farm_balls(positions_table.Checkpoint1)
    wait(0.8)
    Roadwork_Farm_balls(positions_table.Checkpoint2)
    wait(0.8)
    Roadwork_Farm_balls(positions_table.Checkpoint3)
    wait(0.8)
    Roadwork_Farm_balls(positions_table.Checkpoint4)
    wait(0.8)
    Roadwork_Farm_balls(positions_table.Finish)
    wait(0.8)
end
while shared.roadworkFarm and wait() and shared.roadworkMethod == "Fast" do
    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(shared.roadworkSpeed,Enum.EasingStyle.Linear)
    
    local lp = game.Players.LocalPlayer
    
    function Roadwork_Farm_balls_fast(v)
    if lp.Character and
    lp.Character:FindFirstChild('HumanoidRootPart') then
    
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
    
        a:Play()
        a.Completed:Wait()
        print("Done")
    end
    end

    Roadwork_Farm_balls_fast(positions_table.Buy)
    wait(0.2)
    fireclickdetector(game:GetService("Workspace").Shop["Roadwork Training $130"].Head.ClickDetector)
    wait(0.2)
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Roadwork Training"))
    game.Players.LocalPlayer.Character:FindFirstChild("Roadwork Training"):Activate()
    Roadwork_Farm_balls_fast(positions_table.Checkpoint1)
    --wait(1.5)
    Roadwork_Farm_balls_fast(positions_table.Checkpoint2)
    --wait(1.5)
    Roadwork_Farm_balls_fast(positions_table.Checkpoint3)
    --wait(1.5)
    Roadwork_Farm_balls_fast(positions_table.Checkpoint4)
   -- wait(1.5)
    Roadwork_Farm_balls_fast(positions_table.Finish)
    --wait(1.5)
end
while shared.roadworkFarm and wait() and shared.roadworkMethod == "Custom" do
    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(shared.roadworkSpeed,Enum.EasingStyle.Linear)
    
    local lp = game.Players.LocalPlayer
    
    function Roadwork_Farm_balls_Custom(v)
    if lp.Character and
    lp.Character:FindFirstChild('HumanoidRootPart') then
    
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
    
        a:Play()
        a.Completed:Wait()
        print("Done")
    end
    end

    Roadwork_Farm_balls_Custom(positions_table.Buy)
    wait(0.2)
    fireclickdetector(game:GetService("Workspace").Shop["Roadwork Training $130"].Head.ClickDetector)
    wait(0.2)
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Roadwork Training"))
    game.Players.LocalPlayer.Character:FindFirstChild("Roadwork Training"):Activate()
    Roadwork_Farm_balls_Custom(positions_table.Checkpoint1)
    wait(shared.roadworkCustom)
    Roadwork_Farm_balls_Custom(positions_table.Checkpoint2)
    wait(shared.roadworkCustom)
    Roadwork_Farm_balls_Custom(positions_table.Checkpoint3)
    wait(shared.roadworkCustom)
    Roadwork_Farm_balls_Custom(positions_table.Checkpoint4)
   wait(shared.roadworkCustom)
   Roadwork_Farm_balls_Custom(positions_table.Finish)
    wait(shared.roadworkCustom)
end
while shared.roadworkFarm and wait() and shared.roadworkMethod == "Test" do
    local Checkpoint_Table = {
        Buy = Vector3.new(-2123.05712890625, 85.9112777709961, 90.50890350341797),
        BuyLow = Vector3.new(-2123.05712890625, 55.9112777709961, 90.50890350341797),
        Checkpoint1 = Vector3.new(-1991.1180419921875, 87.55632781982422, -13.291576385498047),
        Checkpoint1Low = Vector3.new(-1991.1180419921875, 75.55632781982422, -13.291576385498047),
        Checkpoint2 = Vector3.new(-1697.170166015625, 87.55633544921875, -32.48717498779297),
        Checkpoint2Low = Vector3.new(-1697.170166015625, 75.55633544921875, -32.48717498779297),
        Checkpoint3 = Vector3.new(-1672.0970458984375, 87.55632781982422, -322.25836181640625),
        Checkpoint3Low = Vector3.new(-1672.0970458984375, 75.55632781982422, -322.25836181640625),
        Checkpoint4 = Vector3.new(-1917.208251953125, 87.55632781982422, -333.1876525878906),
        Checkpoint4Low = Vector3.new(-1917.208251953125, 75.55632781982422, -333.1876525878906),
        Finish = Vector3.new(-1925.0443115234375, 87.55632781982422, -105.69416046142578),
        FinishLow = Vector3.new(-1925.0443115234375, 75.55632781982422, -105.69416046142578),
    }
while shared.autoRoadwork and wait() do
    
    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(0.75,Enum.EasingStyle.Linear)

    local lp = game.Players.LocalPlayer

    function Roadwork_Test(v)
        if lp.Character and lp.Character:FindFirstChild('HumanoidRootPart') then

        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart, tweeninfo, {CFrame = cf})

        a:Play()
        a.Completed:Wait()
        print("done")

end
end
end

Roadwork_Test(Checkpoint_Table.Buy)
wait(0.1)
fireclickdetector(game:GetService("Workspace").Shop["Roadwork Training $130"].Head.ClickDetector)
wait(0.2)
lp.Character.Humanoid:EquipTool(lp.Backpack:FindFirstChild("Roadwork Training"))
wait(0.2)
lp.Character:FindFirstChild("Roadwork Training"):Activate()
Roadwork_Test(Checkpoint_Table.BuyLow)
--wait(0.2)
Roadwork_Test(Checkpoint_Table.Checkpoint1Low)
--wait(0.2)
Roadwork_Test(Checkpoint_Table.Checkpoint1)
--wait(0.2)
Roadwork_Test(Checkpoint_Table.Checkpoint1Low)
--wait(0.2)
Roadwork_Test(Checkpoint_Table.Checkpoint2Low)
--wait(0.2)
Roadwork_Test(Checkpoint_Table.Checkpoint2)
--wait(0.2)
Roadwork_Test(Checkpoint_Table.Checkpoint2Low)
--wait(0.2)
Roadwork_Test(Checkpoint_Table.Checkpoint3Low)
--wait(0.2)
Roadwork_Test(Checkpoint_Table.Checkpoint3)
--wait(0.2)
Roadwork_Test(Checkpoint_Table.Checkpoint3Low)
wait(0.2)
Roadwork_Test(Checkpoint_Table.Checkpoint4Low)
--wait(0.2)
Roadwork_Test(Checkpoint_Table.Checkpoint4)
--wait(0.2)
Roadwork_Test(Checkpoint_Table.Checkpoint4Low)
--wait(0.2)
Roadwork_Test(Checkpoint_Table.FinishLow)
--wait(0.2)
Roadwork_Test(Checkpoint_Table.Finish)
end
end)

local tab3 = win:Tab("Misc")

local sec3a = tab3:Section("Utility")

sec3a:Toggle("Noclip", false, "Toggle", function(donoclip)

    shared.noClip = donoclip

    if shared.noClip then
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
    end

end)

sec3a:Button("Lag Fixer 9000", function(fixlag)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/notarchs/library/main/lagfixerpro.lua"))()
end)

local sec3 = tab3:Section("Misc stuff")

sec3a:Button("Server Hop", function()
   ArchsUI:Notification("Server Hop", "Swapping Servers...") wait(2)

game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
repeat wait() until game:IsLoaded() 
    syn.queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/notarchs/library/main/script.lua"))()')
end)
wait(.5)
game:GetService('TeleportService'):Teleport(game.PlaceId)
end)

sec3a:Button("Rejoin Server", function()

    ArchsUI:Notification("Server Rejoin", "Rejoining Server...") wait(2)

game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
repeat wait() until game:IsLoaded() 
    syn.queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/notarchs/library/main/script.lua"))()')
end)
wait(.5)
game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
end)

sec3:Textbox("Power Output", false, function(poweroutput)
  print(poweroutput)
  shared.powerOutput = poweroutput
end)

sec3:Toggle("Force Output", false, "Toggle", function(forceoutput)
shared.forceOutput = forceoutput
print(shared.forceOutput)
while shared.forceOutput and wait() do
    wait(0.2)
    game.Players.LocalPlayer.Character.Power.Value = shared.powerOutput
    game.Players.LocalPlayer.Backpack.sTraits.Power:FireServer(tonumber(shared.powerOutput))
end

end)

sec3:Button("Reset Output", function(resetoutput)
    game.Players.LocalPlayer.Character.Power.Value = 100
    game.Players.LocalPlayer.Backpack.sTraits.Power:FireServer(tonumber(100))
end)

local sec3b = tab3:Section("Fun Stuff")

sec3b:Button("Destroy Face", function(destroyface)
    ArchsUI:Notification("Fun Features :P", "Destroying Face...")
    wait(1)
    local player = game.Players.LocalPlayer
local char = player.Character
    if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("face") then
    char.Head:FindFirstChild("face"):Destroy()
ArchsUI:Notification("Fun Features :P", "Face Destroyed!")
end
end)

sec3b:Button("Destroy Pupils", function(destroypupils)
    ArchsUI:Notification("Fun Features :P", "Destroying Pupils...")
    wait(1)
    local player = game.Players.LocalPlayer
    local char = player.Character
    if char:FindFirstChild("Head") and char:FindFirstChild("Head"):FindFirstChild("Pupil") then
    char.Head:FindFirstChild("Pupil"):Destroy()
ArchsUI:Notification("Fun Features :P", "Pupils Destroyed!")
end
end)

sec3b:Button("Headless", function(headless)
    ArchsUI:Notification("Fun Features :P", "Removing Head...")
   wait(1)
   local player = game.Players.LocalPlayer
   local char = player.Character
   ArchsUI:Notification("Fun Features :P", "Head Removed!")
   for i,v in pairs(char:GetChildren()) do
   if v:FindFirstChild("Head") then 
   v.Parent = nil
end
end
end)

sec3b:Button("Injury Removal", function(removeinjury)
    ArchsUI:Notification("Fun Features :P", "Removing Injuries...")
    wait(1)
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
   if v:IsA("Part") then
       if v:FindFirstChild("Injury") then
           v.Injury:Destroy()
       end;
   end;
end;
   
end)

sec3b:Button("Load Sharingan Spec", function(shariganspec)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/notarchs/library/main/sharinganspec.lua"))()
end)

local sec3c = tab3:Section("Style Swapper")

local styledropdown = sec3c:Dropdown("Your Style", {"Normal","Sumo","Woo","Pirate","Muay","Taekwondo","Wrestling","Nikoo","Niko","Van","ASumo","Marbs","Helly","KungFu","Yuri","Formless","Raishin","Mercenary","Momo","Boxing","Gaolang","Ashley","NORMAL","Booter","Hitman","Baritsu","Lethwei","Karate"},"","Dropdown", function(styleselect)
    shared.playerStyle = styleselect
end)
    
sec3c:Button("Autofind Style", function(autoselectstyle)
        shared.autoplayerStyle = game.ReplicatedStorage.Remotes.Request:InvokeServer("Style")
        styledropdown:Set(shared.autoplayerStyle)
end)
    
local stylewanteddropdown = sec3c:Dropdown("Desired Style", {"Normal","Sumo","Woo","Pirate","Muay","Taekwondo","Wrestling","Nikoo","Niko","Van","ASumo","Marbs","Helly","KungFu","Yuri","Formless","Raishin","Mercenary","Momo","Boxing","Gaolang","Ashley","NORMAL","Booter","Hitman","Baritsu","Lethwei","Karate"},"","Dropdown", function(stylewanted)
    shared.desiredStyle = stylewanted
end)
    
sec3c:Button("Reset Style Fields", function(resetstylefields)
        styledropdown:Set("")
        stylewanteddropdown:Set("")
end)
    
sec3c:Toggle("Force Update Style", false, "Toggle", function(forceupdatestyle)
        -- defining some bullshit
        local player = game:GetService("Players").LocalPlayer
        shared.forceStyle = forceupdatestyle
        --- function under
        while shared.forceStyle and wait() do -- wait for the shit and make sure only does if it's on :moyai:
            player.Backpack["Basic Combat"][shared.playerStyle].Idle.AnimationId = player.Backpack["Basic Combat"][shared.desiredStyle].Idle.AnimationId
            player.Backpack["Basic Combat"][shared.playerStyle].Walk.AnimationId = player.Backpack["Basic Combat"][shared.desiredStyle].Walk.AnimationId
            player.Backpack["Basic Combat"][shared.playerStyle].Punch1.AnimationId = player.Backpack["Basic Combat"][shared.desiredStyle].Punch1.AnimationId
            player.Backpack["Basic Combat"][shared.playerStyle].Punch2.AnimationId = player.Backpack["Basic Combat"][shared.desiredStyle].Punch2.AnimationId
            player.Backpack["Basic Combat"][shared.playerStyle].Punch3.AnimationId = player.Backpack["Basic Combat"][shared.desiredStyle].Punch3.AnimationId
            player.Backpack["Basic Combat"][shared.playerStyle].Punch4.AnimationId = player.Backpack["Basic Combat"][shared.desiredStyle].Punch4.AnimationId
            player.Backpack["Basic Combat"][shared.playerStyle].Punch5.AnimationId = player.Backpack["Basic Combat"][shared.desiredStyle].Punch5.AnimationId -- change it to your desired anim
        end
end)

--------------------

local tab4 = win:Tab("Items")

local sec4 = tab4:Section("Item List")

sec4:Button("Spar Training", function(buyspar)
local plr = game:GetService("Players").LocalPlayer
local Char = plr.Character if not Char then Char = game.Workspace.Live:WaitForChild(plr) end
local hum = Char.Humanoid or Char:WaitForChild("Humanoid")
local ws = game:GetService("Workspace")
    
local Tools = {"Spar Training $190", "Spar Training"}
    
    fireclickdetector(ws.Shop[Tools[1]].Head.ClickDetector)
end)

sec4:Button("Self Punch", function(buyselfpunch)
    local plr = game:GetService("Players").LocalPlayer
local Char = plr.Character if not Char then Char = game.Workspace.Live:WaitForChild(plr) end
local hum = Char.Humanoid or Char:WaitForChild("Humanoid")
local ws = game:GetService("Workspace")
    
local Tools = {"Self Punch $130", "Self Punch"}
    
    fireclickdetector(ws.Shop[Tools[1]].Head.ClickDetector)
end)

sec4:Button("Durability Training", function(buyduratraining)
    local plr = game:GetService("Players").LocalPlayer
local Char = plr.Character if not Char then Char = game.Workspace.Live:WaitForChild(plr) end
local hum = Char.Humanoid or Char:WaitForChild("Humanoid")
local ws = game:GetService("Workspace")
    
local Tools = {"Durability Training $130", "Durability Training"}
    
    fireclickdetector(ws.Shop[Tools[1]].Head.ClickDetector)
end)

local sec4b = tab4:Section("Dropdown")

sec4b:Dropdown("Item List", {"Spar Training","Self Punch","Durability Training","Shadow Training","Protein Bar"},"","Dropdown", function(itemdropdown)
    local plr = game:GetService("Players").LocalPlayer
local Char = plr.Character if not Char then Char = game.Workspace.Live:WaitForChild(plr) end
local hum = Char.Humanoid or Char:WaitForChild("Humanoid")
local ws = game:GetService("Workspace")
  shared.selectedItem = itemdropdown
  
end)

sec4b:Button("Activate Item", function(itemactivate)
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v.Name == shared.selectedItem then
        v.Parent = game.Players.LocalPlayer.Character
    end;
end;
end)

local tab5 = win:Tab("Stats")

local sec5 = tab5:Section("Info")

local labelhealth = sec5:Label("Health: ".. game.Players.LocalPlayer.Character.Humanoid.Health.. " / ".. game.Players.LocalPlayer.Character.Humanoid.MaxHealth)
local labelstam = sec5:Label("Stamina: ".. game.Players.LocalPlayer.Character.Stamina.Value * 11.12999400457341 .. " / ".. game.Players.LocalPlayer.Character.Stamina.MaxValue * 11.12999400457341)
local labelstrength = sec5:Label("Strength: ")
local labelmoney = sec5:Label("Money: ".. game.Players.LocalPlayer.PlayerGui.HUD.Money.Text) 

local sec5b = tab5:Section("Stats")

local labeldura = sec5b:Label("Dura:".. game.Players.LocalPlayer.Character.Humanoid.MaxHealth / 5.663168546662278)
local labelstamstat = sec5b:Label("Stamina: ".. game.Players.LocalPlayer.Character.Stamina.MaxValue * 11.12999400457341)

function Refresh_Stats()
while wait() do
    labelhealth:Set("Health: ".. game.Players.LocalPlayer.Character.Humanoid.Health.. " / ".. game.Players.LocalPlayer.Character.Humanoid.MaxHealth)
    labelstam:Set("Stamina: ".. game.Players.LocalPlayer.Character.Stamina.Value * 11.12999400457341 .. " / ".. game.Players.LocalPlayer.Character.Stamina.MaxValue * 11.12999400457341)
    labeldura:Set("Dura:".. game.Players.LocalPlayer.Character.Humanoid.MaxHealth / 5.663168546662278)
    labelstamstat:Set("Stamina: ".. game.Players.LocalPlayer.Character.Stamina.MaxValue * 11.12999400457341)
    labelmoney:Set("Money: ".. game.Players.LocalPlayer.PlayerGui.HUD.Money.Text)
end
end

local sec5c = tab5:Section("Cheat Info")


---

local tab6 = win:Tab("Teleports")

local sec6 = tab6:Section("Config")

sec6:Slider("Tween Speed (Higher = Slower)", 3, 4, 3, 3, "Slider", function(tweenspeed)
    shared.tweenSpeed = tweenspeed
end)

local sec6b = tab6:Section("Locations")

sec6b:Dropdown("Teleport Location", {"Poppa","Stats","KNC","MuscleMania","Gym","GasStation", "Arena","BaseUltimate","AHHHHPizza"}, "","Dropdown",function(teleportdropdown)
shared.teleportdropDown = teleportdropdown
print(shared.teleportdropDown)
end)

sec6b:Button("Teleport To Location", function(teleporttodropdown)
    local locations = {
        Poppa = Vector3.new(-1921.6995849609375, 92.55615997314453, 397.37603759765625),
        Stats = Vector3.new(-1755.63232421875, 92.55632019042969, 230.57504272460938),
        KNC = Vector3.new(-1856.12451171875, 92.55633544921875, -21.170015335083008),
        MuscleMania = Vector3.new(-2112.429931640625, 93.55634307861328, 85.65859985351562),
        Gym = Vector3.new(-1676.2606201171875, 92.55632781982422, -113.12203216552734),
        GasStation = Vector3.new(-1588.0750732421875, 92.67522430419922, -97.83290100097656),
        Arena = Vector3.new(-1548.48779296875, 93.87629699707031, 135.24862670898438),
        BaseUltimate = Vector3.new(-1721.044921875, 92.85633087158203, 136.25601196289062),
        AHHHHPizza = Vector3.new(-1682.656494140625, 92.55632019042969, 205.62216186523438)
    }

    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(shared.tweenSpeed,Enum.EasingStyle.Linear)
    
    local lp = game.Players.LocalPlayer
    
    function bypass_ken_shitanticheat(v)
    if lp.Character and
    lp.Character:FindFirstChild('HumanoidRootPart') then
    
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
    
        a:Play()
    end
    end
    
    bypass_ken_shitanticheat(locations[shared.teleportdropDown])
end)

local sec6c = tab6:Section("NPCS")

sec6c:Dropdown("Teleport Location", {"PushupMaster","Yokozuna","KarateMaster","KnuckleMan","KureMaster","MikeMikazuchi","WrestlingMaster","MuayMaster","TaekwondoMaster","Ash","Heller","Yuri","Momo","Ariel","Van","Helly","LethweiMaster","PirateBooter","Booter"}, "","Dropdown",function(npcdropdown)
    shared.npcdropDown = npcdropdown
    print(shared.npcdropDown)
end)

sec6c:Button("Teleport To NPC", function(teleporttonpc)
    local npcs = {
        PushupMaster = Vector3.new(-2172.3, 94.2714, 82.9846),
        Yokozuna = Vector3.new(-1592.31, 94.3206, 454.87),
        KarateMaster = Vector3.new(-2392.4, 232.178, -916.215),
        KnuckleMan = Vector3.new(-1734.29, 94.1778, -100.824),
        KureMaster = Vector3.new(-2418.84, 231.646, -734.976),
        MikeMikazuchi = Vector3.new(-1716, 105, 132.401),
        WrestlingMaster = Vector3.new(-1583.65, 92.3214, 30.2845),
        MuayMaster = Vector3.new(-1616.15, 93.0714, -494.465),
        TaekwondoMaster = Vector3.new(-2128.65, 94.3214, 92.5345),
        Ash = Vector3.new(-1905.42, 242.606, -754.831),
        Heller = Vector3.new(-2299.96, 127.205, -101.615),
        Yuri = Vector3.new(-2193.97, 92.5562, 425.561),
        Momo = Vector3.new(-1358.54, 97.0063, -154.477),
        Ariel = Vector3.new(-1492.07, 90.9092, -517.241),
        Van = Vector3.new(-1494.43, 92.6479, -513.237),
        Helly = Vector3.new(-1867.17, 92.5564, -229.254),
        LethweiMaster = Vector3.new(-1777.54, 124.606, -516.361),
        PirateBooter = Vector3.new(-10821.3, 222.309, -1943.77),
        Booter = Vector3.new(8119.58, 64.7739, 1169.43)
    }

    local tween_s = game:GetService('TweenService')
    local tweeninfo = TweenInfo.new(shared.tweenSpeed,Enum.EasingStyle.Linear)
    
    local lp = game.Players.LocalPlayer
    
    function bypass_ken_shitanticheat_2(v)
    if lp.Character and
    lp.Character:FindFirstChild('HumanoidRootPart') then
    
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
    
        a:Play()
    end
    end
    
    bypass_ken_shitanticheat_2(npcs[shared.npcdropDown])
end)

local tab7 = win:Tab("ESP")

local sec7 = tab7:Section("Config")

sec7:Dropdown("Esp Font", {1, 2, 3}, 2, "Dropdown", function(espfont)

    shared.espFont = espfont

end)

local sec7b = tab7:Section("ESP")

sec7b:Toggle("Enable Name ESP", false, "Toggle", function(enablenameesp)

    shared.nameEsp = enablenameesp
    local c = workspace.CurrentCamera
    local ps = game:GetService("Players")
    local lp = ps.LocalPlayer
    local rs = game:GetService("RunService")

    local function esp(p,cr)
        local h = cr:WaitForChild("Humanoid")
        local hrp = cr:WaitForChild("HumanoidRootPart")

        local text = Drawing.new("Text")
        text.Visible = shared.nameEsp
        text.Center = true
        text.Outline = true
        text.Font = shared.espFont
        text.Color = Color3.fromRGB(255,255,255)
        text.Size = 13

        local c1
        local c2
        local c3

        local function dc()
            text.Visible = false
            text:Remove()
            if c1 then
                c1:Disconnect()
                c1 = nil
            end
            if c2 then
                c2:Disconnect()
                c2 = nil
            end
            if c3 then
                c3:Disconnect()
                c3 = nil
            end
        end

        c2 = cr.AncestryChanged:Connect(function(_,parent)
            if not parent then
                dc()
            end
        end)

        c3 = h.HealthChanged:Connect(function(v)
            if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
                dc()
            end
        end) 

        c1 = rs.RenderStepped:Connect(function()
            local hrp_pos,hrp_onscreen = c:WorldToViewportPoint(hrp.Position)
            if hrp_onscreen then
                text.Position = Vector2.new(hrp_pos.X, hrp_pos.Y)
                text.Text = p.leaderstats.FirstName.Value.. " ".. p.leaderstats.ClanName.Value.. " (".. p.name.. ") "
                text.Visible = shared.nameEsp
            if p.Character:FindFirstChild("Torso") and not p.Character:FindFirstChild("Torso"):FindFirstChild("roblox") then
                text.Color = Color3.fromRGB(0, 64, 255)
            end
            else
                text.Visible = false
            end
        end)
    end

    local function p_added(p)
        if p.Character then
            esp(p,p.Character)
        end
        p.CharacterAdded:Connect(function(cr)
            esp(p,cr)
        end)
    end

    for i,p in next, ps:GetPlayers() do
        if p ~= lp then
            p_added(p)
        end
    end

    ps.PlayerAdded:Connect(p_added)

end)

sec7b:Toggle("Enable Health ESP", false, "Toggle", function(enablehealthesp)

    shared.healthEsp = enablehealthesp
    local c = workspace.CurrentCamera
    local ps = game:GetService("Players")
    local lp = ps.LocalPlayer
    local rs = game:GetService("RunService")

    local function esphealth(p,cr)
        local h = cr:WaitForChild("Humanoid")
        local hrp = cr:WaitForChild("HumanoidRootPart")

        local texthealth = Drawing.new("Text")
        texthealth.Visible = shared.healthEsp
        texthealth.Center = true
        texthealth.Outline = true
        texthealth.Font = shared.espFont
        texthealth.Color = Color3.fromRGB(18, 247, 10)
        texthealth.Size = 13

        local c1
        local c2
        local c3

        local function dc()
            texthealth.Visible = false
            texthealth:Remove()
            if c1 then
                c1:Disconnect()
                c1 = nil
            end
            if c2 then
                c2:Disconnect()
                c2 = nil
            end
            if c3 then
                c3:Disconnect()
                c3 = nil
            end
        end

        c2 = cr.AncestryChanged:Connect(function(_,parent)
            if not parent then
                dc()
            end
        end)

        c3 = h.HealthChanged:Connect(function(v)
            if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
                dc()
            end
        end) 

        c1 = rs.RenderStepped:Connect(function()
            local hrp_pos,hrp_onscreen = c:WorldToViewportPoint(hrp.Position)
            if hrp_onscreen then
                local healthpercentage = (p.Character.Humanoid.Health / p.Character.Humanoid.MaxHealth) * 100 + 0.5
                local health1 = (p.Character.Humanoid.Health) + 0.5
                local health2 = (p.Character.Humanoid.MaxHealth) + 0.5
                texthealth.Position = Vector2.new(hrp_pos.X, hrp_pos.Y + 10)
                texthealth.Text = math.floor(health1).. " / ".. math.floor(health2).. " (".. math.floor(healthpercentage).. "%)"
                texthealth.Visible = shared.healthEsp
            else
                texthealth.Visible = false
            end
        end)
    end

    local function p_added(p)
        if p.Character then
            esphealth(p,p.Character)
        end
        p.CharacterAdded:Connect(function(cr)
            esphealth(p,cr)
        end)
    end

    for i,p in next, ps:GetPlayers() do
        if p ~= lp then
            p_added(p)
        end
    end

    ps.PlayerAdded:Connect(p_added)

end)

sec7b:Toggle("Enable Style ESP", false, "Toggle", function(enablestyleesp)

    shared.styleEsp = enablestyleesp
    local c = workspace.CurrentCamera
    local ps = game:GetService("Players")
    local lp = ps.LocalPlayer
    local rs = game:GetService("RunService")

    local function espstyle(p,cr)
        local h = cr:WaitForChild("Humanoid")
        local hrp = cr:WaitForChild("HumanoidRootPart")

        local textstyle = Drawing.new("Text")
        textstyle.Visible = shared.styleEsp
        textstyle.Center = true
        textstyle.Outline = true
        textstyle.Font = shared.espFont
        textstyle.Color = Color3.fromRGB(255,255,255)
        textstyle.Size = 13

        local c1
        local c2
        local c3

        local function dc()
            textstyle.Visible = false
            textstyle:Remove()
            if c1 then
                c1:Disconnect()
                c1 = nil
            end
            if c2 then
                c2:Disconnect()
                c2 = nil
            end
            if c3 then
                c3:Disconnect()
                c3 = nil
            end
        end

        c2 = cr.AncestryChanged:Connect(function(_,parent)
            if not parent then
                dc()
            end
        end)

        c3 = h.HealthChanged:Connect(function(v)
            if (v<=0) or (h:GetState() == Enum.HumanoidStateType.Dead) then
                dc()
            end
        end)

        c1 = rs.RenderStepped:Connect(function()
            local hrp_pos,hrp_onscreen = c:WorldToViewportPoint(hrp.Position)
            if hrp_onscreen then
                textstyle.Position = Vector2.new(hrp_pos.X, hrp_pos.Y + 20)
                textstyle.Text = "Style: ".. "Loading.."
                textstyle.Visible = shared.styleEsp
            else
                textstyle.Visible = false
            end
    end)
    end

    local function p_added(p)
        if p.Character then
            espstyle(p,p.Character)
        end
        p.CharacterAdded:Connect(function(cr)
            espstyle(p,cr)
        end)
    end

    for i,p in next, ps:GetPlayers() do
        if p ~= lp then
            p_added(p)
        end
    end

    ps.PlayerAdded:Connect(p_added)

end)



Refresh_Stats()
