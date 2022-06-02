repeat wait() until game:IsLoaded()

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

sec:Bind("Spar Farm (Legit)", Enum.KeyCode.RightAlt, false, "BindNormal", function(Sparfarm)
-- local
local plr = game:GetService("Players").LocalPlayer
local Char = plr.Character if not Char then Char = game.Workspace.Live:WaitForChild(plr) end
local hum = Char.Humanoid or Char:WaitForChild("Humanoid")
local ws = game:GetService("Workspace")
-- tools 
local Tools = {"Spar Training $190", "Spar Training"}
-- to make loop work
if Sparfarm == true then
    Spar = true
    else
        Spar = false
end
-- function
 while Spar == true do
       wait(0.1)
       if not plr.Backpack:FindFirstChild(Tools[2]) and Spar == true and not ws.Live:WaitForChild(plr.Name):FindFirstChild("Right") and not ws.Live:WaitForChild(plr.Name):FindFirstChild(Tools[2]) then
           fireclickdetector(ws.Shop[Tools[1]].Head.ClickDetector)
           plr.Backpack:WaitForChild(Tools[2], 5)
       hum:EquipTool(plr.Backpack:FindFirstChild(Tools[2]))
       mouse1click()
       hum:EquipTool(plr.Backpack:WaitForChild("Basic Combat", 1))
       elseif plr.Backpack:FindFirstChild(Tools[2]) and not Char:FindFirstChild("Right") then
           hum:EquipTool(plr.Backpack:FindFirstChild(Tools[2]))
       mouse1click()
       wait(0.5)
       hum:EquipTool(plr.Backpack:WaitForChild("Basic Combat", 1))
       elseif Char:FindFirstChild("Right") then
           mouse1click()
       if Spar == false then
           break
       end
   end
end
end)
  
  
      
      
--[[
bind:Set(state <keycode>)
]]

--sec:Label(text <string>)
local label = sec:Label("Label")

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

    while shared.punchTog and wait(.16) do
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
local Stamina = game:GetService("Players").LocalPlayer.Character.Stamina
-- tools 
local Tools = {"Spar Training $190", "Spar Training"}
-- to make loop work
shared.sparRisky = SparRisk
-- functionality
while shared.sparRisky and wait() do
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
for _,c in pairs(player.Character:GetDescendants())do
if c:IsA("BasePart") then
c.Anchored = true
end
end

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

fireclickdetector(game:GetService("Workspace").Shop["Durability Training $130"].Head.ClickDetector)
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

local tab3 = win:Tab("Misc")

local sec3 = tab3:Section("Misc stuff")

sec3:Button("Server Hop", function()
   ArchsUI:Notification("Server Hop", "Swapping Servers...") wait(2)

game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
repeat wait() until game:IsLoaded() 
    syn.queue_on_teleport('loadstring(game:HttpGet("https://raw.githubusercontent.com/notarchs/library/main/script.lua"))()')
end); 
wait(.5)
game:GetService('TeleportService'):Teleport(game.PlaceId)
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
local labelmoney = sec5:Label("Money: ")

local sec5b = tab5:Section("Stats")

local labeldura = sec5b:Label("Dura:".. game.Players.LocalPlayer.Character.Humanoid.MaxHealth / 5.663168546662278)
local labelstamstat = sec5b:Label("Stamina: ".. game.Players.LocalPlayer.Character.Stamina.MaxValue * 11.12999400457341)

while true do 
    wait()
    labelhealth:Set("Health: ".. game.Players.LocalPlayer.Character.Humanoid.Health.. " / ".. game.Players.LocalPlayer.Character.Humanoid.MaxHealth)
    labelstam:Set("Stamina: ".. game.Players.LocalPlayer.Character.Stamina.Value * 11.12999400457341 .. " / ".. game.Players.LocalPlayer.Character.Stamina.MaxValue * 11.12999400457341)
    labeldura:Set("Dura:".. game.Players.LocalPlayer.Character.Humanoid.MaxHealth / 5.663168546662278)
    labelstamstat:Set("Stamina: ".. game.Players.LocalPlayer.Character.Stamina.MaxValue * 11.12999400457341)

end

local tab6 = win:Tab("Teleports")

local sec6 = tab6:Section("Shops")

sec6:Button("Poppa Tatoes", function(gotopoppa)

local poppa_location = {
    door = Vector3.new(-1921.6995849609375, 92.55615997314453, 397.37603759765625)
}

local tween_s = game:GetService('TweenService')
local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)

local lp = game.Players.LocalPlayer

function bypass_ken_shitanticheat(v)
if lp.Character and
lp.Character:FindFirstChild('HumanoidRootPart') then

    local cf = Cframe.new(v)
    local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{Cframe=cf})

    a:Play()
end
end

bypass_ken_shitanticheat(poppa_location.door)
end)
