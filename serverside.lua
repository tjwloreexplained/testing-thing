local PlayerService = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local DataStoreService = game:GetService("DataStoreService")
local RunService = game:GetService("RunService")
local ContentProvider = game:GetService("ContentProvider")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local MarketplaceService = game:GetService("MarketplaceService")
local BadgeService = game:GetService("BadgeService")

local UserdataDataStore = DataStoreService:GetDataStore("UserdataSCPAB2DSKEY_3")
local SavesDataStore = DataStoreService:GetDataStore("SavesSCPAB2DSKEY_3")

local function getServerType()
	if game.PrivateServerId ~= "" then
		if game.PrivateServerOwnerId ~= 0 then
			return "VIPServer"
		else
			return "ReservedServer"
		end
	else
		return "StandardServer"
	end
end
local IsKeterServer = (getServerType() == "ReservedServer")
if IsKeterServer then
	workspace.Configurations.General:SetAttribute("keterOnly", true)
	workspace.Configurations.General:SetAttribute("readOnly", true)
end

local Configurations = require(workspace.Configurations)
local ItemsInfo = require(ReplicatedStorage.ItemsInfo)
local InvManage = require(ReplicatedStorage.InvManage)
local ABUtilities = require(ReplicatedStorage.ABUtilities)
local PlayerLoadExtra = require(script.PlayerLoadExtra)
local GameInfoM = require(ReplicatedStorage:FindFirstChild("GameInfo"));
local Teams = require(ReplicatedStorage.Shared.Teams)
local VoiceLinesModule = require(ReplicatedStorage.VoiceLines)

local ChatHistory = {}
local TextService = game:GetService("TextService")
local LoadedModules = {}
local ServerModules = {
	"Players",
	"Servers",
	"GameInfo",
	"Userdata",
	"RoomLoader"
}

local GameModeInfo = {
	Default = {
		Items = {
			[1] = {
				name = "Document173",
			},
		},
		Slots = 10,
		Blink = 20,
		Health = 100,
	},
	Scientist = {
		Items = {
			[1] = {
				name = "Keycard2",
			},
			[2] = {
				name = "Radio",
				itemdata = {
					name = "Radio",
					battery = 100,
				},
			},
			[3] = {
				name = "Clipboard",
			},
		},
		Slots = 10,
		Blink = 20,
		Health = 100
	},
	Doctor = {
		Items = {
			[1] = {
				name = "Keycard2",
			},
			[2] = {
				name = "Radio",
				itemdata = {
					name = "Radio",
					battery = 100,
				},
			},
			[3] = {
				name = "FirstAidKit",
			},
		},
		Slots = 10,
		Blink = 20,
		Health = 100
	},
	Janitor = {
		Items = {
			[1] = {
				name = "Keycard0",
			},
			[2] = {
				name = "Radio",
				itemdata = {
					name = "Radio",
					battery = 100,
				},
			},
			[3] = {
				name = "GasMask",
			},
		},
		Slots = 10,
		Blink = 20,
		Health = 100
	},
	SD = {
		Items = {
			[1] = {
				name = "Helmet",
				itemdata = {
					name = "Helmet"
				},
				Equip = "FaceEquip"
			},
			[2] = {
				name = "Keycard2",
			},
			[3] = {
				name = "SNav310",
				itemdata = {
					name = "SNav310",
					battery = 20
				},
			},
			[4] = {
				name = "GasMask",
			},
			[5] = {
				name = "P90",
				itemdata = {
					name = "P90",
					ammo = 50,
					max_ammo = 50,
					reserve = 3,
					max_reserve = 4,
				},
				EquipWeapon = 1,
			},
			[6] = {
				name = "USP",
				itemdata = {
					name = "USP",
					ammo = 12,
					max_ammo = 12,
					reserve = 5,
					max_reserve = 5,
				},
				EquipWeapon = 2,
			},
		},
		CosmeticVest = "Vest",
		Kevlar = 100,
		Slots = 10,
		Blink = 20,
		Health = 100
	},
	CI = {
		Items = {
			[1] = {
				name = "HelmetCI",
				itemdata = {
					name = "HelmetCI"
				},
				Equip = "FaceEquip"
			},
			[2] = {
				name = "Keycard5",
			},
			[3] = {
				name = "Radio",
				itemdata = {
					name = "Radio",
					battery = 100,
				},
			},
			[4] = {
				name = "NVG",
			},
			[5] = {
				name = "M4A1",
				itemdata = {
					name = "M4A1",
					ammo = 30,
					max_ammo = 30,
					reserve = 4,
					max_reserve = 4,
				},
				EquipWeapon = 1,
			},
			[6] = {
				name = "M9",
				itemdata = {
					name = "M9",
					ammo = 15,
					max_ammo = 15,
					reserve = 5,
					max_reserve = 5,
				},
				EquipWeapon = 2,
			},
		},
		CosmeticVest = "VestCI",
		Kevlar = 100,
		Slots = 10,
		Blink = 20,
		Health = 100
	},
	NTF = {
		Items = {
			[1] = {
				name = "HelmetNTF",
				itemdata = {
					name = "HelmetNTF",
				},
				Equip = "FaceEquip"
			},
			[2] = {
				name = "Keycard5",
			},
			[3] = {
				name = "Radio",
			},
			[4] = {
				name = "SNav310",
			},
			[5] = {
				name = "SCRAMBLE",
				itemdata = {
					name = "SCRAMBLE",
					battery = 100
				}
			},
			[6] = {
				name = "P90",
				itemdata = {
					name = "P90",
					ammo = 50,
					max_ammo = 50,
					reserve = 4,
					max_reserve = 4,
				},
				EquipWeapon = 1,
			},
			[7] = {
				name = "USP",
				itemdata = {
					name = "USP",
					ammo = 12,
					max_ammo = 12,
					reserve = 5,
					max_reserve = 5,
				},
				EquipWeapon = 2,
			},
			[8] = {
				name = "Crowbar",
				EquipWeapon = 3,
			},
		},
		Kevlar = 100,
		Slots = 10,
		Blink = 20,
		Health = 100
	},

	--Skins
	O5 = {
		Items = {
			[1] = {
				name = "Keycard6",
			},
			[2] = {
				name = "Vest",
				itemdata = {
					name = "Vest",
				},
				Equip = "BodyEquip"
			},
			[3] = {
				name = "USP",
				itemdata = {
					name = "USP",
					ammo = 12,
					max_ammo = 12,
					reserve = 5,
					max_reserve = 5,
				},
				EquipWeapon = 2,
			},
		},
		Slots = 15,
		Blink = 30,
		Health = 115
	},
	MTF = {
		Items = {
			[1] = {
				name = "Helmet",
				itemdata = {
					name = "Helmet",
				},
				Equip = "FaceEquip"
			},
			[2] = {
				name = "Keycard5",
			},
			[3] = {
				name = "Radio",
			},
			[4] = {
				name = "SNav310",
			},
			[5] = {
				name = "GasMask",
			},
			[6] = {
				name = "SCRAMBLE",
				itemdata = {
					name = "SCRAMBLE",
					battery = 100
				}
			},
			[7] = {
				name = "G36C",
				itemdata = {
					name = "G36C",
					ammo = 30,
					max_ammo = 30,
					reserve = 4,
					max_reserve = 4,
				},
				EquipWeapon = 1,
			},
			[8] = {
				name = "USP",
				itemdata = {
					name = "USP",
					ammo = 12,
					max_ammo = 12,
					reserve = 5,
					max_reserve = 5,
				},
				EquipWeapon = 2,
			},
			[9] = {
				name = "Crowbar",
				EquipWeapon = 3,
			},
		},
		Kevlar = 100,
		Slots = 10,
		Blink = 20,
		Health = 100
	},
	Nu7 = {
		Items = {
			[1] = {
				name = "HK416A5_Nu7",
				itemdata = {
					name = "HK416A5_Nu7",
					ammo = 30,
					max_ammo = 30,
					reserve = 4,
					max_reserve = 4,
				},
				EquipWeapon = 1,
			},
			[2] = {
				name = "Glock17",
				itemdata = {
					name = "Glock17",
					ammo = 17,
					max_ammo = 17,
					reserve = 5,
					max_reserve = 5,
				},
				EquipWeapon = 2,
			},
			[3] = {
				name = "Keycard5",
			}
		},
		Nu7Extra = true,
		CosmeticVest = "VestNU7",
		Kevlar = 100,
		Slots = 10,
		Blink = 20,
		Health = 100
	},
	Beta7 = {
		Items = {
			[1] = {
				name = "MP5SD",
				itemdata = {
					name = "MP5SD",
					ammo = 30,
					max_ammo = 30,
					reserve = 4,
					max_reserve = 4,
				},
				EquipWeapon = 1,
			},
			[2] = {
				name = "USP",
				itemdata = {
					name = "USP",
					ammo = 12,
					max_ammo = 12,
					reserve = 5,
					max_reserve = 5,
				},
				EquipWeapon = 2,
			},
			[3] = {
				name = "Keycard5",
			}
		},
		CosmeticVest = "VestNU7",
		Kevlar = 100,
		Slots = 10,
		Blink = 20,
		Health = 100
	},
	SD2 = {
		Items = {
			[1] = {
				name = "Helmet",
				itemdata = {
					name = "Helmet"
				},
				Equip = "FaceEquip"
			},
			[2] = {
				name = "Keycard3",
			},
			[3] = {
				name = "SNavUlt",
			},
			[4] = {
				name = "GasMask",
			},
			[5] = {
				name = "AK74M",
				itemdata = {
					name = "AK74M",
					ammo = 30,
					max_ammo = 30,
					reserve = 4,
					max_reserve = 4,
				},
				EquipWeapon = 1,
			},
			[6] = {
				name = "Glock",
				itemdata = {
					name = "Glock17",
					ammo = 17,
					max_ammo = 17,
					reserve = 5,
					max_reserve = 5,
				},
				EquipWeapon = 2,
			},
		},
		CosmeticVest = "Vest",
		Kevlar = 100,
		Slots = 10,
		Blink = 20,
		Health = 100
	},
}
_G.GameModeInfo = GameModeInfo
local Loaded = false

local Hands = {
	[1] = "Primary", 
	[2] = "Secondary", 
	[3] = "Melee", 
	[4] = "Special"
};

local PrivilegesList = {
	[5087307159] = 5, ----Hipxus
	[1279239467] = 5, --LARTAJE
	[1440209503] = 3, --Godz
	[4093084696] = 3 --CopeMoreBroL
}

task.spawn(function()
	for i, ModuleToRequire in ServerModules do
		LoadedModules[ModuleToRequire] = require(ReplicatedStorage[ModuleToRequire])
	end
	Loaded = true
	LoadedModules["Servers"].Initialize()
end)

local function LoadSkin(Character, Skin)
	if Character then
		local SkinPath = ReplicatedStorage.Skins[Skin] -- Skin

		local function LoadShirt(Shirt)
			local FoundShirt = Character:FindFirstChildOfClass("Shirt")
			if FoundShirt then
				FoundShirt:Destroy()
			end

			Shirt:Clone().Parent = Character
		end
		local function LoadPants(Pants)
			local FoundPants = Character:FindFirstChildOfClass("Pants")
			if FoundPants then
				FoundPants:Destroy()
			end

			Pants:Clone().Parent = Character
		end


		for _, instance in SkinPath:GetChildren() do
			if instance:IsA("Shirt") then
				LoadShirt(instance)
			elseif instance:IsA("Pants") then
				LoadPants(instance)
			end
		end
	end
end
_G.LoadSkin = LoadSkin
--[[
local test = {}
for i,v in workspace.Saves["639291956"]:GetChildren() do
	table.insert(test, v.Value)
end
]]

function EncodeCFrame(cfr)
	return HttpService:JSONEncode({cfr:components()})
end

function DecodeCFrame(tbl)
	return CFrame.new(unpack(tbl))
end

local function LoadPlayer(Player: Player)
	if not Player:GetAttribute("Updated") then
		Player:SetAttribute("TimeJoined", tick())
		Player:SetAttribute("Activity", tick())
		Player:SetAttribute("UsingTouchInput", false)
		Player:SetAttribute("Updated", true)

		PlayerLoadExtra.checkwhitelist(Player)
		PlayerLoadExtra.checkifblacklisted(Player)

		local Keys = {
			"Scientist",
			"KeterS",
			"Keter",

			"PackOne",
			"Testers",
			"PackTwo",
			"Console",
		}
		for _, Key in Keys do
			LoadedModules["Userdata"]:AddKey(Key, Player.UserId)
		end

		local Data = UserdataDataStore:GetAsync(Player.UserId)
		local Saves = SavesDataStore:GetAsync(Player.UserId) or HttpService:JSONEncode({})

		LoadedModules["Userdata"]:SetData(Data, Player.UserId)
		LoadedModules["Userdata"]:SetSaves(HttpService:JSONDecode(Saves), Player.UserId)
		
		task.spawn(function()
			while task.wait(5) do
				if not Player or not Player.Parent then
					break
				end
				Player:SetAttribute("Ping", math.round(Player:GetNetworkPing() * 2))
			end
		end)
	end
end

local function CharacterCleanUp(Player)
	local Character = Player.Character
	Player:LoadCharacter()
end

local function CreateItem(Item)
	local Result = "Failed"
	local ItemFromInfo = ItemsInfo[Item]
	if ItemFromInfo then
		local MapData = workspace.MapData
		local NewItem = game.ServerStorage.Assets.item:Clone()
		NewItem.Name = Item
		--NewItem:SetAttribute("ItemData", HttpService:JSONEncode(ItemFromInfo))
		Result = NewItem
	else
		Result = "Failed"
	end
	
	return Result
end

local function CompareTeam(Character1, Character2, CompareDifficulty)
	local GameInfo1 = Character1.GameInfo
	local Gamemode1 = GameInfo1:GetAttribute("Gamemode")
	local Difficulty1 = GameInfo1:GetAttribute("Difficulty");

	local GameInfo2 = Character2.GameInfo
	local Gamemode2 = GameInfo2:GetAttribute("Gamemode")
	local Difficulty2 = GameInfo2:GetAttribute("Difficulty");

	local FinalResult = nil
	local ResulTeams = Teams.compareTeams(Gamemode1, Gamemode2);
	local ResultDifficulties = nil
	if CompareDifficulty then
		ResultDifficulties = Teams.compareDifficulties(Difficulty1, Difficulty2);
	end
	if not (not ResulTeams or ResultDifficulties and (not ResultDifficulties)) then
		FinalResult = "Hostile"
	else
		FinalResult = "Friendly"
	end;

	return FinalResult
end
_G.CompareTeam = CompareTeam

local function StarterInfo(Character, Info)
	local Character = Character
	local Humanoid = Character:FindFirstChild("Humanoid")
	local GameInfo = Character:FindFirstChild("GameInfo")

	if Info.Kevlar then
		GameInfo:SetAttribute("Kevlar", Info.Kevlar)
	end
	if Info.Health then
		Humanoid.MaxHealth = Info.Health
		Humanoid.Health = Info.Health
	end
	if Info.Slots then
		GameInfo:SetAttribute("Slots", Info.Slots)
	end
	if Info.Blink then
		GameInfo:SetAttribute("Blink", Info.Blink)
	end

	if GameInfo then
		for _, Item in Info.Items do
			local EmptySlot = InvManage.findFirstEmpty(GameInfo);
			GameInfoM.setSlot(GameInfo, EmptySlot, Item.itemdata and HttpService:JSONEncode(Item.itemdata) or HttpService:JSONEncode({
				name = Item.name
			}));
			if Item.EquipWeapon then
				GameInfo:SetAttribute(Hands[Item.EquipWeapon], EmptySlot)
			end
			if Item.Equip then
				GameInfo:SetAttribute(Item.Equip, EmptySlot)
			end
		end
	end
end

local function CosmeticExtra(SkinInfo, Character)
	if SkinInfo.CosmeticVest then
		local Vest = ReplicatedStorage.Accessories.Torso[SkinInfo.CosmeticVest]:Clone();
		Vest.Parent = Character;
		local l_torso_0 = Character.Torso;
		Vest:SetPrimaryPartCFrame(l_torso_0.CFrame);
		for _, v358 in pairs(Vest:GetChildren()) do
			v358.Anchored = false;
			v358.Massless = true;
			local l_WeldConstraint_5 = Instance.new("WeldConstraint");
			l_WeldConstraint_5.Part0 = v358;
			l_WeldConstraint_5.Part1 = l_torso_0;
			l_WeldConstraint_5.Parent = v358;
		end;
	end

	if SkinInfo.Nu7Extra then
		local NU7LegL = ReplicatedStorage.Misc["NU7LegL"]:Clone();
		NU7LegL.Parent = Character;
		local MainLPart = Character["Left Leg"];
		NU7LegL:SetPrimaryPartCFrame(MainLPart.CFrame);
		for _, v358 in pairs(NU7LegL:GetChildren()) do
			v358.Anchored = false;
			v358.Massless = true;
			local l_WeldConstraint_5 = Instance.new("WeldConstraint");
			l_WeldConstraint_5.Part0 = v358;
			l_WeldConstraint_5.Part1 = MainLPart;
			l_WeldConstraint_5.Parent = v358;
		end;

		local NU7LegR = ReplicatedStorage.Misc["NU7LegR"]:Clone();
		NU7LegR.Parent = Character;
		local MainRPart = Character["Right Leg"];
		NU7LegR:SetPrimaryPartCFrame(MainRPart.CFrame);
		for _, v358 in pairs(NU7LegR:GetChildren()) do
			v358.Anchored = false;
			v358.Massless = true;
			local l_WeldConstraint_5 = Instance.new("WeldConstraint");
			l_WeldConstraint_5.Part0 = v358;
			l_WeldConstraint_5.Part1 = MainRPart;
			l_WeldConstraint_5.Parent = v358;
		end;
	end
end
_G.CosmeticExtra = CosmeticExtra

function GetCurrectBulletHitCFrame(HitPart, cframe)
	local v42 = HitPart.CFrame * cframe;
	local Position = v42.Position;
	local LookVector = v42.LookVector;

	if HitPart.Name == "Head" then
		if math.abs(cframe.LookVector.Y) < 1 then
			local l_Position_1 = cframe.Position;
			local v46 = math.sqrt(l_Position_1.X ^ 2 + l_Position_1.Z ^ 2);
			cframe = CFrame.new(l_Position_1.X / v46 * 0.625, l_Position_1.Y, l_Position_1.Z / v46 * 0.625) * CFrame.Angles(0, math.atan2(-l_Position_1.X, -l_Position_1.Z), 0);
			v42 = HitPart.CFrame * cframe;
			Position = v42.Position;
			LookVector = v42.LookVector;
		else
			local l_Position_2 = cframe.Position;
			local v48 = math.max(1, (math.sqrt(l_Position_2.X ^ 2 + l_Position_2.Z ^ 2)));
			cframe = CFrame.new(l_Position_2.X / v48 * 0.625, l_Position_2.Y * 1.25, l_Position_2.Z / v48 * 0.625) * CFrame.Angles(math.asin(cframe.LookVector.Y), 0, 0);
			v42 = HitPart.CFrame * cframe;
			Position = v42.Position;
			LookVector = v42.LookVector;
		end;
	end
	return CFrame.new(Position, Position + -LookVector);
end

function getPseudoBodyPart(hitPart, hitPosition, character)
	local detectedPart = nil

	if hitPart.Name == "Right Arm" or hitPart.Name == "Left Arm" then
		local armCFrame = hitPart.CFrame
		local armTop = armCFrame * CFrame.new(0, hitPart.Size.Y / 2, 0)
		local armBottom = armCFrame * CFrame.new(0, -hitPart.Size.Y / 2, 0)

		local distanceToTop = (hitPosition - armTop.Position).magnitude
		local distanceToBottom = (hitPosition - armBottom.Position).magnitude

		if distanceToTop < distanceToBottom then
			if hitPart.Name == "Right Arm" then
				detectedPart = "right shoulder"
			else
				detectedPart = "left shoulder"
			end
		else
			if hitPart.Name == "Right Arm" then
				detectedPart = "right hand"
			else
				detectedPart = "left hand"
			end
		end

	elseif hitPart.Name == "Torso" then
		local torsoCFrame = hitPart.CFrame
		local chestPosition = torsoCFrame * CFrame.new(0, hitPart.Size.Y / 4, 0) 
		local lowerTorsoPosition = torsoCFrame * CFrame.new(0, -hitPart.Size.Y / 4, 0)

		local distanceToChest = (hitPosition - chestPosition.Position).magnitude
		local distanceToLowerTorso = (hitPosition - lowerTorsoPosition.Position).magnitude

		detectedPart = "chest"
	elseif hitPart.Name == "Head" then
		local headCFrame = hitPart.CFrame
		local facePosition = headCFrame * CFrame.new(0, 0, -hitPart.Size.Z / 2)

		local distanceToFace = (hitPosition - facePosition.Position).magnitude
		local distanceToTopOfHead = (hitPosition - (headCFrame * CFrame.new(0, hitPart.Size.Y / 2, 0)).Position).magnitude

		if distanceToFace < distanceToTopOfHead then
			detectedPart = "face"
		else
			detectedPart = "head"
		end
	end

	local head = character:FindFirstChild("Head")
	local torso = character:FindFirstChild("Torso")

	if head and torso then
		local topOfTorso = torso.CFrame * CFrame.new(0, torso.Size.Y / 2, 0)
		local bottomOfHead = head.CFrame * CFrame.new(0, -head.Size.Y / 2, 0)
		local neckPosition = (topOfTorso.Position + bottomOfHead.Position) / 2
		local distanceToNeck = (hitPosition - neckPosition).magnitude
		local neckThreshold = 0.5

		if distanceToNeck <= neckThreshold then
			detectedPart = "neck" 
		end
	end
	return detectedPart
end

ReplicatedStorage.Remotes.ActivateTesla.OnServerEvent:Connect(function(Player, Tesla)
	ReplicatedStorage.Remotes.ActivateTesla:FireAllClients(Tesla, Tesla.Active)
end)

ReplicatedStorage.Remotes.Achievement.OnServerEvent:Connect(function(Player, Type)
	warn(Type)
	if Type == 'PD' then
		_G.award(Player, "PD")
	end
end)

local function AB_awardBadge(Player, Badge)
	if workspace.Configurations.General:GetAttribute("readOnly") then
		return
	end
	if not BadgeService:UserHasBadgeAsync(Player.UserId, Badge) then
		BadgeService:AwardBadge(Player.UserId, Badge)
	else
		local BadgeName = '"'..BadgeService:GetBadgeInfoAsync(Badge).Name..'"'
		ReplicatedStorage.ChatRemotes.OutputMessage:FireAllClients(nil, 
			'Congratulations to '.. Player.Name ..' for winning '.. BadgeName ..'badge, even though they had already won the badge before')
	end
end
_G.AB_awardBadge = AB_awardBadge
local function AddCharacter(a1,a2,a3)
	LoadedModules["Players"].AddCharacter(a1, a2, a3)
end
_G.AddCharacter = AddCharacter
local function LoadGame(Player, Info)
	local Character = Player.Character
	print(Info)
	if workspace.MapData.Items:FindFirstChild(Player.UserId) then
		workspace.MapData.Items:FindFirstChild(Player.UserId):Destroy()
	end
	local NewGameInfo = LoadedModules["GameInfo"].new()
	NewGameInfo.Parent = Character

	local SpecificItemSpawn = workspace.MapData.Items["1"]:Clone()
	SpecificItemSpawn.Name = Player.UserId
	SpecificItemSpawn.Parent = workspace.MapData.Items

	if GameModeInfo[Info.skin] then
		CosmeticExtra(GameModeInfo[Info.skin], Character)
	end

	NewGameInfo:SetAttribute("Difficulty", IsKeterServer and 3 or Info.difficulty or Info.diff)
	NewGameInfo:SetAttribute("Gamemode", Info.mode)
	NewGameInfo:SetAttribute("Skin", Info.skin)
	NewGameInfo:SetAttribute("TimePlayed", Info.time or 0)

	NewGameInfo:SetAttribute("Sprinting", false)
	NewGameInfo:SetAttribute("Achievements", HttpService:JSONEncode({}))

	if Info.kevlar then
		NewGameInfo:SetAttribute("Kevlar", Info.kevlar)
	end

	for i = 1, NewGameInfo:GetAttribute("Slots") do
		NewGameInfo.Inventory:SetAttribute("Slot"..i, "")
	end

	if Info.inv then
		for i, item in Info.inv do
			NewGameInfo.Inventory:SetAttribute("Slot"..i, item)
		end
	end

	if Info.primary then
		NewGameInfo:SetAttribute("Primary", Info.primary)
	end
	if Info.secondary then
		NewGameInfo:SetAttribute("Secondary", Info.secondary)
	end
	if Info.melee then
		NewGameInfo:SetAttribute("Melee", Info.melee)
	end
	if Info.special then
		NewGameInfo:SetAttribute("Special", Info.special)
	end

	if Info.sw then
		NewGameInfo:SetAttribute("SelectedWeapon", Info.sw)
	end

	LoadedModules["Players"].AddCharacter(Player, Character, NewGameInfo)

	LoadSkin(Character, Info.skin)
	return NewGameInfo
end

local function HitSum(Character, WeaponConfig, HittedStuff, CompareDiff)
	
	for _, Hit in HittedStuff do
		local HittedCharacter = Hit[1] and Hit[1].Parent
		local Humanoid = HittedCharacter and HittedCharacter:FindFirstChildOfClass("Humanoid")
		local HittedPlayer = HittedCharacter and PlayerService:GetPlayerFromCharacter(HittedCharacter)
		
		if Humanoid then
			local IsA = CompareTeam(Character, HittedCharacter, CompareDiff)
			if (IsA == "Hostile" or workspace.Configurations.Combat:GetAttribute("friendlyFire") == true) then
				local Multi = 1 / Hit[4]
				local Damage = (WeaponConfig.damage * Multi)
				if Hit[1].Name == "Head" then
					Multi = WeaponConfig.head
				end
				local GameInfo = HittedCharacter.GameInfo

				task.spawn(function()
					local Message = "Something has hitted your"

					if Hit[1] then
						local pseudoPart = getPseudoBodyPart(Hit[1], GetCurrectBulletHitCFrame(Hit[1],Hit[2]).Position, HittedCharacter)
						if HittedPlayer or HittedCharacter then

							local BodyEquippement = GameInfo:GetAttribute("BodyEquip") > 0 and HttpService:JSONDecode(GameInfo.Inventory:GetAttribute("Slot"..GameInfo:GetAttribute("BodyEquip"))) or nil
							local FaceEquippement = GameInfo:GetAttribute("FaceEquip") > 0 and  HttpService:JSONDecode(GameInfo.Inventory:GetAttribute("Slot"..GameInfo:GetAttribute("FaceEquip"))) or nil

							if BodyEquippement and pseudoPart == "chest" then

								if BodyEquippement.durabilitty then
									if (BodyEquippement.durabilitty - Damage) <= 0 then
										GameInfo.Inventory:SetAttribute("Slot"..GameInfo:GetAttribute("BodyEquip"), '')
										GameInfo:SetAttribute("BodyEquip", 0)
										Message = "Your vest was destroyed."
										Multi = 0
									else
										BodyEquippement.durabilitty -= Damage
										Multi = 0
										Message = "a bullet hit your chest. The vest absorved some of the damage."
									end
								else
									Message = "a bullet hit your chest. The vest absorved some of the damage."
									BodyEquippement.durabilitty = (100 - Damage)
								end

							elseif FaceEquippement and (pseudoPart == "neck" or pseudoPart == "head" or pseudoPart == "face") then

								local function hit()
									if pseudoPart == "neck" then
										Message = "A bullet stuck your neck, making you gasp."
									end
									if pseudoPart == "face" then
										Message = "A bullet has hit your face."
									end
									if pseudoPart == "head" then
										Message = "A bullet has hit your head."
									end
								end

								if FaceEquippement.durabilitty then
									if (FaceEquippement.durabilitty - Damage) <= 0 then
										GameInfo.Inventory:SetAttribute("Slot"..GameInfo:GetAttribute("FaceEquip"), '')
										GameInfo:SetAttribute("FaceEquip", 0)
										hit()
									else
										FaceEquippement.durabilitty -= Damage
										Multi -= 0.45
										Message = "A bullet penetrated your helmet."
									end
								else
									hit()
									FaceEquippement.durabilitty = (100 - Damage)
								end
							else
								if pseudoPart then
									Message = "A bullet has hit your "..pseudoPart.."."
								else
									Message = "A bullet has hit your ".. Hit[1].Name:lower().."."
								end
							end

							if HittedPlayer then
								ReplicatedStorage.Remotes.DisplayMessage:FireClient(HittedPlayer, Message)
							end

						end
					end
				end)
				local Kevlar = GameInfo:GetAttribute("Kevlar")
				if Kevlar >= 0 then
					if Kevlar - Damage <= 0 then
						GameInfo:SetAttribute("Kevlar",0)
					else
						GameInfo:SetAttribute("Kevlar",Kevlar - Damage)
					end
					Multi -= 0.46
				end

				Damage = (WeaponConfig.damage * Multi)
				Humanoid:TakeDamage(Damage)
			end
		end
	end
end
_G.HitSum = HitSum
GetPrivilege = function(Player)
	local AdminLevel = 0
	local UserInList = PrivilegesList[Player.UserId]
	if UserInList then
		AdminLevel = UserInList
	end
	return AdminLevel
end

PlayerService.PlayerAdded:Connect(LoadPlayer)
for _, Player in PlayerService:GetPlayers() do
	LoadPlayer(Player)
end

ReplicatedStorage.Remotes.CheckPrivilege.OnServerInvoke = GetPrivilege
ReplicatedStorage.Remotes.UpdateCamera.OnServerInvoke = function(Player, cframe)
	local Character = Player.Character
	local GameInfo = Character:FindFirstChild("GameInfo")

	if GameInfo then
		GameInfo.Camera.Value = cframe
	end
end
ReplicatedStorage.Remotes.NewGame.OnServerInvoke = function(Player, Data)
	if Data.mode ~= "Default" then
		Data.introS = false
	end
	CharacterCleanUp(Player)
	local Character = Player.Character

	local StartingRoom = workspace.Rooms.start -- workspace.Rooms.start
	local spawnlocation = nil
	if Data.introS then
		StartingRoom = workspace.Rooms.intro
		spawnlocation = StartingRoom.SpawnIntro.CFrame
	else
		local AvalibleSpawns = workspace.MapData.Spawns:GetChildren()
		spawnlocation = AvalibleSpawns[math.random(1,#AvalibleSpawns)].CFrame
	end

	local NewData = LoadGame(Player, Data)
	local SkinInfo = GameModeInfo[Data.skin]
	if SkinInfo then
		if Data.skin == "Nu7" then
			StarterInfo(Character, GameModeInfo.Nu7)

			local EncodeData = {
				name = "HelmetNu7",
				durability = 100
			}

			if Data.nu7Helmet == 0 then
				EncodeData = {
					name = "HelmetNu7_1",
					durability = 100
				}
			elseif Data.nu7Helmet == 1 then
				EncodeData = {
					name = "HelmetNu7_2",
					durability = 100
				}
			end

			local EmptySlot = InvManage.findFirstEmpty(NewData);
			GameInfoM.setSlot(NewData, EmptySlot, HttpService:JSONEncode(EncodeData));
			NewData:SetAttribute("FaceEquip", EmptySlot)
		else
			StarterInfo(Character, GameModeInfo[Data.skin])
		end

	else
		StarterInfo(Character, GameModeInfo[Data.mode])
	end

	Character:SetPrimaryPartCFrame(spawnlocation)
	return  NewData, StartingRoom, nil, nil
end
ReplicatedStorage.Remotes.SaveGame.OnServerInvoke = function(Player, Varlist, SaveSlot, SaveName)
	if workspace.Configurations.General:GetAttribute("keterOnly") then
		Player:Kick("No saving in keter only servers!!!")
		return
	end
	local Result = false
	local Character = Player.Character
	local Humanoid = Character:FindFirstChildOfClass("Humanoid")
	local Template = {
		achievements = {},
		blink = 20,
		name = "template save",
		fav = false,

		mode = "Default",
		gamemode = "Safe",
		skin = "Default",
		diff = 1,
		currentroom = workspace.Rooms["start"],

		health = 100,
		maxhealth = 100,

		version = "Alpha v1.2.9",
		time = 500000,

		created = DateTime.now(),
		crouch = false,
		kevlar = 0,
		room = "start",
		RootPartCF = EncodeCFrame(CFrame.new(0,0,0)),
		roompos = {
			[1] = 0,
			[2] = 0
		},

		rotX = 0,
		rotY = 0,

		varlist = {
		},

		inv = {

		},

		primary = 0,
		secondary = 0,
		melee = 0,
		special = 0
	}
	local GameInfo = Character.GameInfo
	local X,Y = GameInfo.Camera.Value:ToEulerAngles()

	Template.rotX = X
	Template.rotY = Y

	Template.name = SaveName
	Template.time = GameInfo:GetAttribute("TimePlayed")
	Template.skin = GameInfo:GetAttribute("Skin")
	Template.sw = GameInfo:GetAttribute("SelectedWeapon")

	Template.health = Humanoid.Health
	Template.maxhealth = Humanoid.MaxHealth

	Template.room = ABUtilities.getNearestRoomFromPos(Character.HumanoidRootPart.Position).Name
	Template.RootPartCF = EncodeCFrame(workspace.Rooms[Template.room].Base.CFrame:ToObjectSpace(Character.Torso.CFrame))

	Template.diff = GameInfo:GetAttribute("Difficulty")
	Template.achievements = HttpService:JSONDecode(GameInfo:GetAttribute("Achievements"))
	Template.mode = GameInfo:GetAttribute("Gamemode")
	Template.gamemode = GameInfo:GetAttribute("Gamemode")

	for i = 1, GameInfo:GetAttribute("Slots") do
		Template.inv[i] = GameInfo.Inventory:GetAttribute("Slot"..i)
	end 

	Template.varlist = Varlist
	Template.kevlar = GameInfo:GetAttribute("Kevlar")

	Template.primary = GameInfo:GetAttribute("Primary")
	Template.secondary = GameInfo:GetAttribute("Secondary")
	Template.melee = GameInfo:GetAttribute("Melee")
	Template.special = GameInfo:GetAttribute("Special")

	if SaveSlot == nil then
		local SavesAmount = LoadedModules["Userdata"]:GetSavesCount(Player.UserId)

		if SavesAmount < 50 then		
			local AllSaves = LoadedModules["Userdata"]:GetSaves(Player.UserId)

			for i = 1, 50 do
				if not AllSaves[i] then
					SaveSlot = i
					LoadedModules["Userdata"]:SetSave(i, Template, Player.UserId)
					break
				end
			end
			Result = true
		end
	elseif SaveSlot then
		LoadedModules["Userdata"]:SetSave(SaveSlot, Template, Player.UserId)
		Result = true
	end

	return Result, SaveSlot
end
ReplicatedStorage.Remotes.RenameSave.OnServerInvoke = function(Player, SaveSlot, Name)
	local Success, Err = pcall(function()
		local GotData = LoadedModules["Userdata"]:GetSave(SaveSlot, Player.UserId)
		GotData.name = Name
		LoadedModules["Userdata"]:SetSave(SaveSlot, GotData, Player.UserId)
	end)

	return Success,nil,  Name
end
ReplicatedStorage.Remotes.LoadGame.OnServerInvoke = function(Player, SaveSlot)
	if workspace.Configurations.General:GetAttribute("keterOnly") and workspace.Configurations.General:GetAttribute("allowLoadGame") == false then
		return
	end
	local SaveSlotInfo = LoadedModules["Userdata"]:GetSave(SaveSlot, Player.UserId)
	local GameInfo = LoadGame(Player, SaveSlotInfo)
	local Character = Player.Character

	local LastLocation = workspace.Rooms[SaveSlotInfo.room] or workspace.Rooms.start
	local RootPart = Character.HumanoidRootPart

	if not SaveSlotInfo.RootPartCF then
		--SaveSlotInfo.RootPartCF = EncodeCFrame(CFrame.new(0,0,0))
	end
	local RootPartCF = SaveSlotInfo.RootPartCF
	local DecodedCFrame = DecodeCFrame(HttpService:JSONDecode(RootPartCF))
	Character:SetPrimaryPartCFrame(LastLocation.Base.CFrame:ToWorldSpace(DecodedCFrame))
	return GameInfo, SaveSlotInfo, LastLocation
end
ReplicatedStorage.Remotes.DeleteSave.OnServerInvoke = function(Player, SaveSlot)
	local Success, Err = pcall(function()
		LoadedModules["Userdata"]:SetSave(SaveSlot, nil, Player.UserId)
	end)

	return Success
end

ReplicatedStorage.Remotes.FavoriteSave.OnServerInvoke = function(Player, SaveSlot)
	local isfav = false
	local Success, Err = pcall(function()
		local GotData = LoadedModules["Userdata"]:GetSave(SaveSlot, Player.UserId)
		GotData.fav = not GotData.fav
		LoadedModules["Userdata"]:SetSave(SaveSlot, GotData, Player.UserId)
	end)

	return isfav
end

ReplicatedStorage.Remotes.UpdatePreferences.OnServerInvoke = function(Player, preferences, binds, config, skins)
	local Success, Err = pcall(function()
		local GotData = LoadedModules["Userdata"]:GetData(Player.UserId)

		LoadedModules["Userdata"]:SetData({
			firstTimeChecked = GotData and GotData.firstTimeChecked and true or nil,
			preferences = preferences,
			binds = binds,
			config = config,
			skins = skins,
			version = "Beta 1.1"
		},Player.UserId)
	end)
	return Success, Err
end

ReplicatedStorage.Remotes.Check.OnServerEvent:Connect(function(Player, Type, ...)
	if Type == "FirstTime" then
		local GotData = LoadedModules["Userdata"]:GetData(Player.UserId) or {}
		GotData.firstTimeChecked = true
		LoadedModules["Userdata"]:SetData(GotData, Player.UserId)
	end
end)

ReplicatedStorage.Remotes.InputCommand.OnServerEvent:Connect(function(Player, Command)
	local match = string.match(Command, "^%s*(.-)%s*$");
	local Args = string.split(match, " ");
	local AdminLevel = GetPrivilege(Player)
	
	print(Args)

	if Args[1]:lower() == "spawnitem" or Args[1]:lower() == "item" then
		local Item = CreateItem(Args[2])
		if Item:IsA("BasePart") then
			local ItemInfo = ItemsInfo[Args[2]]
			if ( (ItemInfo.unlisted == true or ItemInfo.adminonly) and AdminLevel <= 0 ) then
				ReplicatedStorage.Remotes.OutputConsole:FireClient(Player, "You don't have permition to spawn this item.", Color3.new(1, 0, 0))
				Item:Destroy()
				return
			end

			local ParentedTo = workspace.MapData.Items[Player.UserId]

			ReplicatedStorage.Remotes.OutputConsole:FireClient(Player, "Spawned ".. Item.Name, Color3.new(0.317647, 1, 0.0235294))
			Item.CFrame = Player.Character.HumanoidRootPart.CFrame
			Item.Parent = ParentedTo
		elseif Item == "Failed" then
			ReplicatedStorage.Remotes.OutputConsole:FireClient(Player, "Item does not exist", Color3.new(1, 0, 0))
		end
	elseif Args[1]:lower() == "refill" then
		local Character = Player.Character
		local GameInfo = Character:FindFirstChild("GameInfo")

		if GameInfo then
			for _, Hand in Hands do
				if Hand == "Special" or Hand == "Melee" then
					continue
				end
				local _Slot = ("Slot"..GameInfo:GetAttribute(Hand))
				local JsonDecodedData = HttpService:JSONDecode(GameInfo.Inventory:GetAttribute(_Slot))
				local ItemInInfo = ItemsInfo[JsonDecodedData.name].ammo
				local GunSetting = require(ReplicatedStorage.WeaponData[JsonDecodedData.name].Config);
				JsonDecodedData.reserve = GunSetting.maxreserve;
				JsonDecodedData.max_reserve = GunSetting.maxreserve;
				GameInfo.Inventory:SetAttribute(_Slot, HttpService:JSONEncode(JsonDecodedData));
			end
		end
	elseif Args[1]:lower() == "heal" then
		local Character = Player.Character
		local Humanoid = Character:FindFirstChildOfClass("Humanoid")
		local HealAmount = tonumber(Args[2])

		print(HealAmount)
		if HealAmount then
			if HealAmount < 0 then
				Humanoid:TakeDamage(HealAmount)
			elseif HealAmount == 0 then
				Humanoid.Health = Humanoid.MaxHealth
			end
		else
			Humanoid.Health = Humanoid.MaxHealth
		end
	elseif Args[1]:lower() == "spawnnew" then
		if tostring(Args[2]) and game.ServerStorage.NPCModels[tostring(Args[2])] and Player.Character and Player.Character.PrimaryPart then
			if tostring(Args[3]) ~= nil then
				local Rig = game.ServerStorage.NPCModels[tostring(Args[2])]:Clone()
				local NGI = game.ReplicatedStorage.GameInfo.GameInfo:Clone()
				NGI.Parent = Rig
				NGI:SetAttribute("Gamemode", tostring(Args[3]))
				if tostring(Args[4]) ~= nil then
					NGI:SetAttribute("Skin", tostring(Args[4]))
				else
					NGI:SetAttribute("Skin", tostring(Args[3]))
				end
				Rig.Parent = workspace.Bot
				Rig["NPC_Script"].Enabled = true
				Rig:PivotTo(Player.Character.PrimaryPart.CFrame)
			end
		end
	elseif Args[1]:lower() == "tp" or Args[1]:lower() == "teleport" then
		local Character = Player.Character
		local RoomName = Args[2]
		local Room = workspace.Rooms:FindFirstChild(RoomName)
		if Room then
			Character:SetPrimaryPartCFrame(Room.PrimaryPart.CFrame + Vector3.new(0,5,0)) -- Room
		end
	end
end)

ReplicatedStorage.Remotes.SelectWeapon.OnServerEvent:Connect(function(Player, Slot)
	local Character = Player.Character
	local GameInfo = Character:FindFirstChild("GameInfo")
	if GameInfo then
		if Slot then
			GameInfo:SetAttribute("SelectedWeapon" , Slot);
		end
	end
end)

ReplicatedStorage.Remotes.DropItem.OnServerInvoke = function(Player, a1,a2)
	return InvManage.dropItem(Player.Character.GameInfo, a1, a2)
end
ReplicatedStorage.Remotes.CombineItems.OnServerInvoke = function(Player, ...)
	return InvManage.combineItems(Player.Character.GameInfo, ...)
end

ReplicatedStorage.Remotes.Damage.OnServerEvent:Connect(function(Player, Amount)
	local Character = Player.Character
	if Character then
		Character.Humanoid:TakeDamage(Amount)
	end
end)

ReplicatedStorage.Remotes.Reload.OnServerInvoke = function(Player, Slot)
	local WeaponSlot = Hands[Slot]
	local Character = Player.Character
	local GameInfo = Character.GameInfo
	local _Slot = ("Slot"..GameInfo:GetAttribute(WeaponSlot))

	if GameInfo then
		if Slot ~= 0 then
			local JsonDecodedData = HttpService:JSONDecode(GameInfo.Inventory:GetAttribute(_Slot))
			local GunSetting = require(ReplicatedStorage.WeaponData[JsonDecodedData.name].Config);
			if not JsonDecodedData.reserve then
				JsonDecodedData.reserve = 0
			end
			if not JsonDecodedData.ammo then
				JsonDecodedData.ammo = 0
			end
			JsonDecodedData.reserve -= 1;
			JsonDecodedData.ammo = GunSetting.max
			GameInfo.Inventory:SetAttribute(_Slot, HttpService:JSONEncode(JsonDecodedData));
		end
	end

	return true
end

ReplicatedStorage.Remotes.UseButton.OnServerEvent:Connect(function(Player, Button, Slot, idk2)
	warn(Button, Slot, idk2)
	local Character = Player.Character
	local GameInfo = Character:FindFirstChild("GameInfo")
	if not GameInfo then
		return
	end
	local ItemInSlot = Slot and GameInfo.Inventory:GetAttribute("Slot".. Slot)
	local Item = ItemInSlot and HttpService:JSONDecode(ItemInSlot)
	local ItemInInfo = Item and ItemsInfo[Item.name]
	local Clearance = ItemInInfo and ItemInInfo.keycard
	local dna = ItemInInfo and ItemInInfo.dna
	
	if Button:FindFirstChild("OnPushed") then
		Button:FindFirstChild("OnPushed"):Fire()
	end

	local function OpenDoor(Door)
		Door:SetAttribute("IsOpen", not Button.Parent:GetAttribute("IsOpen"))
	end

	if string.find(Button.Parent.Name,"Door") then
		local Door = Button.Parent
		if Door:FindFirstChild("Locked") then
			return
		end
		if Door:FindFirstChild("Code") then
			if Slot == Door.Code.Value then
				OpenDoor(Door)
			end
			return
		end

		if Door:FindFirstChild("DNA") then
			if dna and dna == Door:FindFirstChild("DNA").Value then
				OpenDoor(Door)
			end
			return
		end

		if Door:FindFirstChild("Clearance") then
			if Clearance and Clearance >= Door:FindFirstChild("Clearance").Value then
				OpenDoor(Door)
			else
				return
			end
			return
		end

		OpenDoor(Door)
		ReplicatedStorage.Remotes.DoorToggle:FireAllClients(Door, Door:GetAttribute("IsOpen"))
	end
end)

ReplicatedStorage.Remotes.Voice.OnServerEvent:Connect(function(Player, Action, VoiceType)
	local Character = Player.Character
	local GameInfo = Character.GameInfo
	local Gamemode = GameInfo:GetAttribute("Gamemode")
	local Skin = GameInfo:GetAttribute("Skin")

	if VoiceType == nil then
		VoiceType = 1
	end
	if Character.HumanoidRootPart:FindFirstChild("Voice") then
		Character.HumanoidRootPart.Voice:Destroy()
	end

	local CharacterVoice = VoiceLinesModule[Gamemode .. "/" .. Skin] or VoiceLinesModule[Gamemode];
	local VoiceAction = CharacterVoice.Voice[VoiceType][Action]
	local SelectedAudioLine = VoiceAction[math.random(1,#VoiceAction)]

	local Voice = Instance.new("Sound", Character.HumanoidRootPart)
	Voice.SoundId = "rbxassetid://"..SelectedAudioLine
	Voice.Name = "Voice"
	Voice:Play()
	game.Debris:AddItem(Voice, 10)

	if not Voice.IsLoaded then
		Voice.Loaded:Wait()
	end

	local cd = Instance.new("NumberValue")
	cd.Name = "VoiceCD"..Player.UserId
	cd.Value = Voice.TimeLength
	cd.Parent = workspace.Events

	game.Debris:AddItem(cd,0.1)
end)

ReplicatedStorage.Remotes.UseItem.OnServerEvent:Connect(function(Player, Slot)
	local Character = Player.Character
	local GameInfo = Character:FindFirstChild("GameInfo")
	if GameInfo then
		local ItemInSlot = GameInfo.Inventory:GetAttribute("Slot".. Slot)
		local Item = HttpService:JSONDecode(ItemInSlot)

		local ItemInInfo = ItemsInfo[Item.name]

		if ItemInInfo then
			local IsWeapon = ItemInInfo.weapon
			if IsWeapon then
				GameInfo:SetAttribute(Hands[IsWeapon], Slot)
			else
				local Bool = true
				if ItemInInfo.face then
					if GameInfo:GetAttribute("FaceEquip") == Slot then
						Bool = false
						GameInfo:SetAttribute("FaceEquip", 0)
					else
						GameInfo:SetAttribute("FaceEquip", Slot)
					end
				end

				if ItemInInfo.body then
					if GameInfo:GetAttribute("BodyEquip") == Slot then
						Bool = false
						GameInfo:SetAttribute("BodyEquip", 0)
					else
						GameInfo:SetAttribute("BodyEquip", Slot)
					end
				end

				if ItemInInfo.hand then
					if GameInfo:GetAttribute("HandEquip") == Slot then
						Bool = false
						GameInfo:SetAttribute("HandEquip", 0)
					else
						GameInfo:SetAttribute("HandEquip", Slot)
					end
				end

				if Item.kevlar then
					local CurrentKevlar = GameInfo:GetAttribute("Kevlar")
					if Bool == true then
						GameInfo:SetAttribute("Kevlar", CurrentKevlar + Item.kevlar)
					elseif Bool == false then
						GameInfo:SetAttribute("Kevlar", CurrentKevlar - Item.kevlar)
					end
				end
			end
		end
	end
end)

ReplicatedStorage.Remotes.MoveItem.OnServerInvoke = function(Player, ...)
	return InvManage.moveItem(Player.Character.GameInfo, ...)
end

ReplicatedStorage.Remotes.UseWeapon.OnServerEvent:Connect(function(Player, Slot, _, Accessory, Enabled)
	local WeaponSlot = Hands[Slot]
	local Character = Player.Character
	local GameInfo = Character.GameInfo
	local _Slot = ("Slot"..GameInfo:GetAttribute(WeaponSlot))

	if GameInfo then
		if Accessory then
			local JsonDecodedData = HttpService:JSONDecode(GameInfo.Inventory:GetAttribute(_Slot))
			JsonDecodedData[Accessory] = Enabled
			GameInfo.Inventory:SetAttribute(_Slot, HttpService:JSONEncode(JsonDecodedData));
			game.ReplicatedStorage.Remotes.RefreshWeapon:FireAllClients(Player.Character)
		end
	end
end)

ReplicatedStorage.Remotes.ShootBullet.OnServerEvent:Connect(function(Player,Slot,HittedStuff,a2)
	local WeaponSlot = Hands[Slot]
	local Character = Player.Character
	local GameInfo = Character.GameInfo
	local _Slot = ("Slot"..GameInfo:GetAttribute(WeaponSlot))
	local WeaponInfo = HttpService:JSONDecode(GameInfo.Inventory:GetAttribute(_Slot))
	local WeaponConfig = require(ReplicatedStorage.WeaponData[WeaponInfo.name].Config)

	if WeaponInfo.Ammo and WeaponInfo.ammo <= 0 then
		return
	elseif WeaponInfo.Ammo and WeaponInfo.ammo >= 1 then
		WeaponInfo.ammo -= 1
	end
	
	HitSum(Character, WeaponConfig, HittedStuff, true)
	ReplicatedStorage.Remotes.ShootBullet:FireAllClients(Player, HittedStuff, a2)
end)

ReplicatedStorage.Remotes.PickupItem.OnServerInvoke = function(Player, Item)
	return InvManage.addItem(Player.Character.GameInfo,Item)
end

ReplicatedStorage.ChatRemotes.GetChatHistory.OnServerInvoke = function(Player, _) 
	return ChatHistory
end

local function getTextObject(message, fromPlayerId)
	local textObject
	local success, errorMessage = pcall(function()
		textObject = TextService:FilterStringAsync(message, fromPlayerId)
	end)
	if success then
		return textObject
	end
	print("Error generating TextFilterResult:", errorMessage)
	return false
end

local function getFilteredMessage(textObject)
	local filteredMessage
	local success, errorMessage = pcall(function()
		filteredMessage = textObject:GetNonChatStringForBroadcastAsync()
	end)
	if success then
		return filteredMessage
	end
	print("Error filtering message:", errorMessage)
	return false
end

local function onSetSignText(player, text)
	if text ~= "" then
		local messageObject = getTextObject(text, player.UserId)
		local filteredText = ""
		filteredText = getFilteredMessage(messageObject)
		return filteredText
	end
end

ReplicatedStorage.ChatRemotes.TeamMessage.OnServerEvent:Connect(function(Player, Text, Radio)
	local FilteredText = onSetSignText(Player, Text)

	for _, _Player in PlayerService:GetPlayers() do
		if _Player == Player then
			continue
		end
		local IsFriendly = Player.Character.GameInfo:GetAttribute("Gamemode") == _Player.Character.GameInfo:GetAttribute("Gamemode") and true or false--Teams.compareTeams(Player.Character.GameInfo:GetAttribute("Gamemode"), workspace.Dummy.GameInfo:GetAttribute("Gamemode"))
		if IsFriendly then
			ReplicatedStorage.ChatRemotes.OutputMessage:FireAllClients(Player, FilteredText, Player, _Player, Radio)
		end
	end
end)

ReplicatedStorage.Remotes.UsePivot.OnServerEvent:Connect(function(Player, Pivot, Bool)
	if Bool then
		Pivot.Controller.Value = Player
	else
		Pivot.Controller.Value = nil
	end
	--Pivot.State.Value = Bool
end)

ReplicatedStorage.ChatRemotes.SendMessage.OnServerEvent:Connect(function(Player, Text, WhisperTo, arg2)
	local FilteredText = onSetSignText(Player, Text)
	local Store = string.format("%s: %s", Player.Name, FilteredText)
	if WhisperTo then
		ReplicatedStorage.ChatRemotes.OutputMessage:FireClient(Player, Player, FilteredText, nil, WhisperTo)
		ReplicatedStorage.ChatRemotes.OutputMessage:FireClient(WhisperTo, Player, FilteredText, Player)
	else
		ReplicatedStorage.ChatRemotes.OutputMessage:FireAllClients(Player, FilteredText)
		table.insert(ChatHistory, Store)
	end
	if #ChatHistory > 125 then
		table.remove(ChatHistory, 1)
	end
end)

ReplicatedStorage.ChatRemotes.Typing.OnServerEvent:Connect(function(Player,...)
	ReplicatedStorage.ChatRemotes.Typing:FireAllClients(Player)
end)

ReplicatedStorage.Remotes.ChangeRotation.OnServerEvent:Connect(function(Player, Object, Rotation)
	if Object and Object:WaitForChild("Rotation") and Rotation then
		Object:WaitForChild("Rotation").Value = Rotation
	end
end)

ReplicatedStorage.Remotes.RemoteDoor.OnServerEvent:Connect(function(player, door)
	task.spawn(function()
		local Gamemode = player.Character.GameInfo:GetAttribute("Gamemode")
		local Skin = player.Character.GameInfo:GetAttribute("Skin")
		local Sound = nil
		local Alarm = nil
		if player.Character:GetAttribute("RD_CD") and tick() - player.Character:GetAttribute("RD_CD") <= 2 then
			return
		end
		player.Character:SetAttribute("RD_CD", tick())

		if Gamemode == "NTF" then
			Alarm = ReplicatedStorage.NTFVoice.Alarm:Clone()

			if Skin == "Nu7" then
				Sound = ReplicatedStorage.NTFVoice.BeepNu7:Clone()
			else
				Sound = ReplicatedStorage.NTFVoice.BeepSNE:Clone()
			end

			game.ReplicatedStorage.Remotes.DoorToggle:FireAllClients(door, true)
			door:SetAttribute("IsOpen", true)
			Sound.Parent = door
			Sound:Play()
			game:GetService("Debris"):AddItem(Sound, Sound.TimeLength / Sound.PlaybackSpeed)

			local Connection = nil
			local CloseDelay = task.delay(5,function()
				Alarm.Parent = door
				Alarm:Play()
				task.wait(Alarm.TimeLength / Alarm.PlaybackSpeed)

				game.ReplicatedStorage.Remotes.DoorToggle:FireAllClients(door, false)
				door:SetAttribute("IsOpen", false)

				if Connection then
					Connection:Disconnect()
				end
			end)

			Connection = door:GetAttributeChangedSignal("IsOpen"):Connect(function()
				if CloseDelay then
					task.cancel(CloseDelay)
				end
				Connection:Disconnect()
			end)
		elseif Gamemode == "CI" then
			Sound = ReplicatedStorage.Misc.CIBeep:Clone()
			game.ReplicatedStorage.Remotes.DoorToggle:FireAllClients(door, true)
			door:SetAttribute("IsOpen", true)
			Sound.Parent = door
			Sound:Play()
			game:GetService("Debris"):AddItem(Sound, Sound.TimeLength / Sound.PlaybackSpeed)
			local Connection = nil

			local CloseDelay = task.delay(6,function()
				game.ReplicatedStorage.Remotes.DoorToggle:FireAllClients(door, false)
				door:SetAttribute("IsOpen", false)
				if Connection then
					Connection:Disconnect()
				end
			end)

			Connection = door:GetAttributeChangedSignal("IsOpen"):Connect(function()
				task.cancel(CloseDelay)
				Connection:Disconnect()
			end)
		end
	end)
end)

PlayerService.PlayerRemoving:Connect(function(Player)
	local Saves = LoadedModules["Userdata"]:GetSaves(Player.UserId)
	local Data = LoadedModules["Userdata"]:GetData(Player.UserId)
	if Saves then
		SavesDataStore:SetAsync(Player.UserId, HttpService:JSONEncode(Saves))
	end
	if Data then
		UserdataDataStore:SetAsync(Player.UserId, Data)
	end
end)

ReplicatedStorage.Remotes.Activity.OnServerEvent:Connect(function(Player, IsTouchEnabled)
	Player:SetAttribute("Activity", tick())
	if IsTouchEnabled then
		Player:SetAttribute("UsingTouchInput", true)
	else
		Player:SetAttribute("UsingTouchInput", false)
	end
end)

RunService.Stepped:Connect(function(Time, Delta)
	workspace.Stats.TickLength.Value += Delta
	workspace.Stats.ServerTime.Value = tick()
	workspace.Stats.UptimeOS.Value += Delta
	workspace.Stats.UptimeExact.Value += Delta

	if Loaded then
		workspace.Stats.GameTime.Value += Delta
	end
end)

local RadioChannels = {
	[1] = {
		[1] = {
			[1] = "rbxassetid://86382288965245", --SoundId
			[2] = 0.5, --Volume
			[3] = false, --Looped
			[4] = true, --Playing
			[5] = 0, --TimePosition
			[6] = "FRUITS CLiPPER" --Name
		}
	},
	[2] = {
		[1] = {
			[1] = "rbxassetid://86382288965245", --SoundId
			[2] = 0.5, --Volume
			[3] = false, --Looped
			[4] = true, --Playing
			[5] = 0, --TimePosition
			[6] = "FRUITS CLiPPER" --Name
		}
	},
	[3] = {
		[1] = {
			[1] = "rbxassetid://14674405609", --SoundId
			[2] = 0.5, --Volume
			[3] = false, --Looped
			[4] = true, --Playing
			[5] = 0, --TimePosition
			[6] = "Final Flash Of Existance" --Name
		}
	},
	[4] = {
		[1] = {
			[1] = "rbxassetid://15959078467", --SoundId
			[2] = 0.5, --Volume
			[3] = true, --Looped
			[4] = true, --Playing
			[5] = 0, --TimePosition
			[6] = "Thing" --Name
		}
	},
	[5] = {
		[1] = {
			[1] = "rbxassetid://9046475725", --SoundId
			[2] = 0.5, --Volume
			[3] = true, --Looped
			[4] = true, --Playing
			[5] = 0, --TimePosition
			[6] = "Biometric ID" --Name
		}
	},
}

ReplicatedStorage.Remotes.LoadRadio.OnServerInvoke = function(Player, Channel)
	local RadioChannel = RadioChannels[Channel]
	local Result = {}
	if RadioChannel then
		Result = RadioChannel
	end
	print(Result)
	return Result
end

-- // # hmm
