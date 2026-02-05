task.wait(0.1);
s_P = game:GetService("Players");
s_RS = game:GetService("RunService");
s_ReS = game:GetService("ReplicatedStorage");
s_UIS = game:GetService("UserInputService");
s_CAS = game:GetService("ContextActionService");
s_Http = game:GetService("HttpService");
s_CP = game:GetService("ContentProvider");
s_L = game:GetService("Lighting");
s_D = game:GetService("Debris");
s_T = game:GetService("TweenService");
local l_Parent_0 = script.Parent;
local l_LocalPlayer_0 = s_P.LocalPlayer;
local _ = l_LocalPlayer_0:WaitForChild("PlayerGui");
local l_CurrentCamera_0 = workspace.CurrentCamera;
local l_Terrain_0 = workspace.Terrain;
local l_l_LocalPlayer_0_Mouse_0 = l_LocalPlayer_0:GetMouse();
local l_Configurations_0 = require(workspace:WaitForChild("Configurations"));
local l_Easing_0 = require(s_ReS:WaitForChild("Easing"));
local l_InvManage_0 = require(s_ReS:WaitForChild("InvManage"));
local l_ItemsInfo_0 = require(s_ReS:WaitForChild("ItemsInfo"));
local l_Messages_0 = require(s_ReS:WaitForChild("Messages"));
local l_ABUtilities_0 = require(s_ReS:WaitForChild("ABUtilities"));
local l_Liquids_0 = require(s_ReS:WaitForChild("Liquids"));
local l_SoundIndexer_0 = require(s_ReS:WaitForChild("SoundIndexer"));
local l_TextureIndexer_0 = require(s_ReS:WaitForChild("TextureIndexer"));
local l_VoiceLines_0 = require(s_ReS:WaitForChild("VoiceLines"));
local l_Events_0 = require(s_ReS:WaitForChild("Events"));
local l_Achievements_0 = require(s_ReS:WaitForChild("Achievements"));
local l_Keybinds_0 = require(s_ReS:WaitForChild("Keybinds"));
local l_Casings_0 = require(s_ReS:WaitForChild("Casings"));
local l_Ragdoll_0 = require(s_ReS:WaitForChild("Ragdoll"));
local l_Map_0 = require(s_ReS:WaitForChild("Map"));
local l_UI_0 = require(s_ReS:WaitForChild("ClientSide"):WaitForChild("UI"));
local l_Userdata_0 = require(s_ReS:WaitForChild("Userdata"));
local l_Sensitivity_0 = require(s_ReS:WaitForChild("ClientSide"):WaitForChild("Sensitivity"));
local l_Weapon_0 = require(s_ReS:WaitForChild("ClientSide"):WaitForChild("Weapon"));
local l_GameCamera_0 = require(s_ReS:WaitForChild("ClientSide"):WaitForChild("GameCamera"));
local l_SmoothSCP173_0 = require(script:WaitForChild("SmoothSCP173"));
local l_BulletFX_0 = require(script:WaitForChild("BulletFX"));
local l_MainMenu_0 = require(s_ReS:WaitForChild("ClientSide"):WaitForChild("MainMenu"));
local l_Lighting_0 = require(script:WaitForChild("Lighting"));
local l_Outdoors_0 = require(script:WaitForChild("Outdoors"));
local l_Music_0 = require(script:WaitForChild("Music"));
local l_Rain_0 = require(script:WaitForChild("Rain"));
local l_Skybox_0 = require(script:WaitForChild("Skybox"));
local l_Thunder_0 = require(script:WaitForChild("Thunder"));
local l_DebrisCollector_0 = require(script:WaitForChild("DebrisCollector"));
local l_preferences_0 = require(s_ReS:WaitForChild("Preferences")).GetPreferences().preferences;
local l_TouchEnabled_0 = s_UIS.TouchEnabled;
local CLEARANCETEST
local v39 = {
	744096782, 
	744096844, 
	744096807, 
	2886344016, 
	15941559, 
	2939100208, 
	228488691, 
	2635057140, 
	1742702051, 
	743070635, 
	4797087979, 
	4922226408, 
	1413412613, 
	515417419, 
	5529212977, 
	71278099, 
	273214794, 
	73131065, 
	4350258626, 
	5817435822, 
	2972135324
};
print("XDXD")
local v40 = "rbxassetid://" .. "5251473599";
local v41 = "rbxassetid://" .. "5806082436";
local _ = "rbxassetid://" .. "777735666";
local _ = "rbxassetid://" .. "777736098";
local v44 = {
	777682557, 
	777682991, 
	777683968, 
	777685122, 
	777776553, 
	648804102, 
	777775469, 
	777775942, 
	2427580989, 
	2427583992
};
local v45 = {
	777778320, 
	777780507, 
	6201052208, 
	777783697, 
	777690689
};
local v46 = {
	777785254, 
	5083035644, 
	777691340, 
	777785879, 
	6201044783, 
	6201045532, 
	5877969394, 
	777692182, 
	2427585139, 
	5877970673, 
	777786795
};
local v47 = {
	6186859380, 
	860473109, 
	6201013796, 
	6201012622, 
	384303057, 
	4757622300, 
	6201011706, 
	6201010399, 
	6201007896, 
	4757622056, 
	6186862762
};
local v48 = {
	l_SoundIndexer_0.Commotion1, 
	l_SoundIndexer_0.Commotion2, 
	l_SoundIndexer_0.Commotion3, 
	l_SoundIndexer_0.Commotion4, 
	l_SoundIndexer_0.Commotion5, 
	l_SoundIndexer_0.Commotion6, 
	l_SoundIndexer_0.Commotion7, 
	l_SoundIndexer_0.Commotion8, 
	l_SoundIndexer_0.Commotion10, 
	l_SoundIndexer_0.Commotion11, 
	l_SoundIndexer_0.Commotion12, 
	l_SoundIndexer_0.Commotion13, 
	l_SoundIndexer_0.Commotion14, 
	l_SoundIndexer_0.Commotion15, 
	l_SoundIndexer_0.Commotion16, 
	l_SoundIndexer_0.Commotion17, 
	l_SoundIndexer_0.Commotion18, 
	l_SoundIndexer_0.Commotion19, 
	l_SoundIndexer_0.Commotion20, 
	l_SoundIndexer_0.Commotion21, 
	l_SoundIndexer_0.Commotion22, 
	l_SoundIndexer_0.Commotion23, 
	l_SoundIndexer_0.Commotion24, 
	l_SoundIndexer_0.Commotion25
};
local v49 = {
	Menu = {
		music = "rbxassetid://" .. l_SoundIndexer_0.Menu
	}, 
	intro = {
		music = "rbxassetid://" .. l_SoundIndexer_0.Intro
	}, 
	StorageRoom = {
		greater = "LCZ", 
		tableamb = v44, 
		music = "rbxassetid://" .. l_SoundIndexer_0.Room3Storage
	}, 
	SCP012 = {
		greater = "LCZ", 
		tableamb = v44, 
		music = "rbxassetid://" .. l_SoundIndexer_0["012"]
	}, 
	SCP035 = {
		greater = "HCZ", 
		tableamb = v45, 
		music = "rbxassetid://" .. l_SoundIndexer_0.Room035
	}, 
	SCP049 = {
		greater = "HCZ", 
		tableamb = v45, 
		music = "rbxassetid://" .. l_SoundIndexer_0.SaveMeFrom
	}, 
	SCP457 = {
		greater = "HCZ", 
		tableamb = v45, 
		music = "rbxassetid://" .. l_SoundIndexer_0.Room457
	}, 
	SCP914 = {
		greater = "LCZ", 
		tableamb = v44, 
		music = "rbxassetid://" .. l_SoundIndexer_0["914"]
	}, 
	MT = {
		greater = "HCZ", 
		tableamb = v45, 
		music = "rbxassetid://" .. l_SoundIndexer_0.Room2Tunnel
	}, 
	SCP860 = {
		music = "rbxassetid://" .. l_SoundIndexer_0["8601"]
	}, 
	pocketdimension = {
		music = "rbxassetid://" .. l_SoundIndexer_0.PD
	}, 
	SCP1499 = {
		music = "rbxassetid://" .. l_SoundIndexer_0["1499"]
	}, 
	LCZ = {
		tableamb = v44, 
		music = "rbxassetid://" .. l_SoundIndexer_0["The Dread"]
	}, 
	HCZ = {
		tableamb = v45, 
		music = "rbxassetid://" .. l_SoundIndexer_0.HeavyContainment
	}, 
	EZ = {
		tableamb = v46, 
		music = "rbxassetid://" .. l_SoundIndexer_0.EntranceZone
	}
};
local l_Shared_0 = s_ReS:WaitForChild("Shared");
local l_Teams_0 = require(l_Shared_0:WaitForChild("Teams"));
local v52 = {
	Default = "Class-D", 
	Scientist = "Scientist", 
	Janitor = "Janitor", 
	Doctor = "Doctor", 
	SD = "Guard", 
	NTF = "Mobile Task Force", 
	CI = "Chaos Insurgency"
};
local v53 = {
	"Primary", 
	"Secondary", 
	"Melee", 
	"Special"
};
local _ = UserSettings():GetService("UserGameSettings");
local l_RoomVisual_0 = l_Parent_0:WaitForChild("RoomVisual");
local v56 = s_ReS:WaitForChild("ClientSide"):WaitForChild("Monitor"):Clone();
local l_Bloom_0 = script:WaitForChild("Bloom");
local l_DOFW_0 = script:WaitForChild("DOFW");
local l_SunRays_0 = script:WaitForChild("SunRays");
local l_ScaryPart_0 = s_ReS:WaitForChild("ClientSide"):WaitForChild("ScaryPart");
local l_NVGSObj_0 = s_ReS.ClientSide:WaitForChild("NVGSObj");
local l_NavRoom_0 = s_ReS.ClientSide:WaitForChild("NavRoom");
local l_DebugGui_0 = s_ReS.ClientSide:WaitForChild("FirstUI"):WaitForChild("DebugGui");
local v64 = Instance.new("ColorCorrectionEffect", l_CurrentCamera_0);
local l_Atmosphere_0 = script:WaitForChild("Atmosphere");
sg_music = s_ReS:WaitForChild("SGMusic");
sg_amb = s_ReS:WaitForChild("SGAmbience");
sg_misc = s_ReS:WaitForChild("SGSounds");
sg_ann = s_ReS:WaitForChild("SGAnnounce");
sg_mtf = s_ReS:WaitForChild("SGMTF");
sg_indoor = s_ReS:WaitForChild("SGFacility");
sg_intercom = workspace:WaitForChild("Intercom");
local l_Clouds_0 = Instance.new("Clouds");
local l_Sky_0 = s_L:WaitForChild("Sky");
local l_SkyCB_0 = script:WaitForChild("SkyCB");
local l_SCP1499Sky_0 = script:WaitForChild("SCP1499Sky");
local l_AtmosphereFX_0 = script:WaitForChild("AtmosphereFX");
local l_SCP1499Atmosphere_0 = script:WaitForChild("SCP1499Atmosphere");
sub_remotes = s_ReS:WaitForChild("Remotes");
rf_newgame = sub_remotes:WaitForChild("NewGame");
rf_loadgame = sub_remotes:WaitForChild("LoadGame");
rf_updatecam = sub_remotes:WaitForChild("UpdateCamera");
rf_take = sub_remotes:WaitForChild("PickupItem");
rf_move = sub_remotes:WaitForChild("MoveItem");
rf_drop = sub_remotes:WaitForChild("DropItem");
rf_combine = sub_remotes:WaitForChild("CombineItems");
rf_save = sub_remotes:WaitForChild("SaveGame");
rf_reload = sub_remotes:WaitForChild("Reload");
rf_radio = sub_remotes:WaitForChild("LoadRadio");
rf_cp = sub_remotes:WaitForChild("CheckPrivilege");
re_use = sub_remotes:WaitForChild("UseItem");
re_usew = sub_remotes:WaitForChild("UseWeapon");
re_sprint = sub_remotes:WaitForChild("Sprint");
re_blink = sub_remotes:WaitForChild("Blink");
re_useb = sub_remotes:WaitForChild("UseButton");
re_usep = sub_remotes:WaitForChild("UsePivot");
re_changerot = sub_remotes:WaitForChild("ChangeRotation");
re_tesla = sub_remotes:WaitForChild("ActivateTesla");
re_elevator = sub_remotes:WaitForChild("ElevatorTeleport");
re_crouch = sub_remotes:WaitForChild("Crouch");
re_shoot = sub_remotes:WaitForChild("ShootBullet");
re_sw = sub_remotes:WaitForChild("SelectWeapon");
re_remote = sub_remotes:WaitForChild("RemoteDoor");
re_voice = sub_remotes:WaitForChild("Voice");
re_dmsg = sub_remotes:WaitForChild("DeathMessage");
re_radio = sub_remotes:WaitForChild("RadioUpdate");
re_dmg = sub_remotes:WaitForChild("Damage");
re_msg = sub_remotes:WaitForChild("DisplayMessage");
re_ach = sub_remotes:WaitForChild("Achievement");
re_room = sub_remotes:WaitForChild("LoadRoom");
re_refw = sub_remotes:WaitForChild("RefreshWeapon");
re_decal = sub_remotes:WaitForChild("Decal");
re_ack = sub_remotes:WaitForChild("Acknowledge");
re_de = sub_remotes:WaitForChild("Deknowledge");
re_pd = sub_remotes:WaitForChild("PocketDimension");
re_event = sub_remotes:WaitForChild("UEvent");
re_tp = sub_remotes:WaitForChild("Teleport");
reout_sound = sub_remotes:WaitForChild("PlaySound");
reout_doortoggle = sub_remotes:WaitForChild("DoorToggle");
reout_necksnap = sub_remotes:WaitForChild("NeckSnap");
reout_escape = sub_remotes:WaitForChild("Escape");
reout_106 = sub_remotes:WaitForChild("SCP106");
reout_ragdoll = sub_remotes:WaitForChild("Ragdoll");
local v72 = false;
local v73 = 0;
local v74 = 0;
local v75 = 0;
local v76 = 0;
local v77 = nil;
local v78 = false;
local v79 = {};
local v80 = {};
local v81 = nil;
local v82 = nil;
local v83 = nil;
local v84 = "Start";
local v85 = false;
local v86 = false;
local v87 = 1;
e_necksnap = nil;
local v88 = l_LocalPlayer_0.Character or l_LocalPlayer_0.CharacterAdded:Wait();
local l_Humanoid_0 = v88:WaitForChild("Humanoid");
local v90 = nil;
local v91 = nil;
local v92 = nil;
local v93 = nil;
local v94 = 0;
local v95 = 0;
local v96 = nil;
local v97 = {};
local v98 = {};
local v99 = l_Events_0.createEvents();
local v100 = 0;
local v101 = 100;
local v102 = 0.5;
local v103 = 0;
local v104 = nil;
local v105 = Vector3.new();
local v106 = nil;
local v107 = nil;
local v108 = 0;
local v109 = 0;
local v110 = 20;
local v111 = 20;
local v112 = 0;
local v113 = 0;
local v114 = false;
local v115 = false;
local v116 = false;
local v117 = false;
local v118 = 0;
local v119 = false;
local v120 = false;
local v121 = false;
local v122 = false;
local v123 = 0;
local v124 = false;
local v125 = false;
local v126 = false;
local v127 = nil;
local v128 = nil;
local v129 = nil;
local v130 = nil;
local v131 = nil;
local v132 = nil;
local v133 = nil;
local v134 = nil;
local v135 = nil;
local v136 = nil;
local v137 = 0;
local v138 = nil;
local v139 = nil;
local v140 = nil;
local v141 = nil;
local v142 = "";
local v143 = false;
local v144 = nil;
local v145 = "";
local v146 = false;
local v147 = nil;
local v148 = 3;
local v149 = false;
local v150 = 0;
local v151 = nil;
local v152 = nil;
local v153 = nil;
local v154 = nil;
local v155 = nil;
local v156 = false;
local v157 = false;
local v158 = 8;
local v159 = nil;
local v160 = {};
local v161 = false;
local v162 = nil;
local v163 = {};
local v164 = {};
local v165 = {};
local v166 = {};
local v167 = {};
local _ = {};
local v169 = {};
local v170 = {};
local v171 = {};
local v172 = {};
local v173 = {};
local v174 = {};
local v175 = {};
local v176 = {};
local v177 = {};
local v178 = {};
local v179 = {};

meta_doors = {};
forest = workspace:WaitForChild("Forest"):WaitForChild("Details");
scp1499 = workspace:WaitForChild("SCP1499");
raycast = l_ABUtilities_0.raycast;
raycast2 = l_ABUtilities_0.raycast2;
raycast3 = l_ABUtilities_0.raycast3;
playSoundAtPart = l_ABUtilities_0.playSoundAtPart;
getPlayer = l_ABUtilities_0.getPlayer;
getPlayersInfo = l_ABUtilities_0.getPlayersInfo;
getIGPlayers = l_ABUtilities_0.getIGPlayers;
isInPart = l_ABUtilities_0.isInPart;
getArea = l_ABUtilities_0.getArea;
getNearestRoomFromPos = l_ABUtilities_0.getNearestRoomFromPos;

updateInventory = function(...)
end
create513 = function(...)
end
doorToggle = function(...)
end
nextPD = function(...)
end
doFootstep = function(...)
end
meterMain = function(...)
end
selectChannel = function(...)
end
updateWInv = function(...)
end
attemptSW = function(...)
end
updateChannel = function(...)
end
clearChannels = function(...)
end


eify = function(v180)
	return (v180 + 3.141592653589793) % 6.283185307179586 - 3.141592653589793;
end;
lerp = function(v181, v182, v183)
	return v181 + v183 * (v182 - v181);
end;
fromDT = function(v184, v185)
	return 1 - (1 - v184) ^ (v185 * 60);
end;
lerpdt = function(v186, v187, v188, v189)
	return v186 + (1 - (1 - v188) ^ (v189 * 60)) * (v187 - v186);
end;
randomItem = function(v190)
	return v190[math.random(#v190)];
end;
smooth = function(v191)
	return l_Easing_0.inOutQuad(v191, 0, 1, 1);
end;
mulRGB = function(v192, v193)
	return Color3.new(v192.R * v193, v192.G * v193, v192.B * v193);
end;
v3ToS = function(v194)
	return string.format("(%0.4f, %0.4f, %0.4f)", v194.X, v194.Y, v194.Z);
end;
a3ToS = function(v195, v196, v197)
	return string.format("(%0.4f, %0.4f, %0.4f)", v195, v196, v197);
end;
motor = function(v198)
	local v199 = math.tanh((math.sin(v198 % 6.283185307179586))) * 1.6;
	return v199 + 0.2, v199 - 0.2;
end;
local function update966(v1044)
	v156 = v1044;
	local v1045 = v1044 and 0 or 1;
	for _, v1047 in pairs(workspace.SCPs:GetChildren()) do
		if v1047.Name == "SCP966" then
			for _, v1049 in pairs(v1047:GetChildren()) do
				if v1049:IsA("BasePart") and v1049.Name == "SCP966Body" then
					v1049.Transparency = v1045;
				end;
			end;
		end;
	end;
end;
print("XDXD")
onCharAdded = function(v200)
	task.wait();
	local v201 = v200:WaitForChild("Humanoid", 5);
	if v201 and not s_P:GetPlayerFromCharacter(v200) and v200.Name ~= "SCP939" and v200.Name ~= "SCP966" and not v79[v200] and not v201:GetAttribute("DiedConnected") then
		v201:SetAttribute("DiedConnected", true);
		local v202 = nil;
		do
			local l_v202_0 = v202;
			l_v202_0 = v201.Died:Connect(function()
				if not v200:GetAttribute("Ragdoll") and v201:IsDescendantOf(workspace) then
					ragdoll(v200);
				end;
				pcall(l_v202_0.Disconnect, l_v202_0);
			end);
		end;
	end;
	update966(v156);
end;
connectCA = function(v204)
	v204.ChildAdded:Connect(onCharAdded);
	for _, v206 in ipairs(v204:GetChildren()) do
		task.spawn(onCharAdded, v206);
	end;
end;
getSlot2 = function(v207, v208)
	local l_inv_0 = v93.inv;
	if v208 and v96 then
		local v210 = l_inv_0[v96];
		if v210 and v210.items then
			local v211 = v210.items[v207];
			return v211 and v211 ~= "" and s_Http:JSONDecode(v211);
		else
			return;
		end;
	else
		return l_inv_0[v207];
	end;
end;
local function getSlot(v212, v213)
	if v213 and v96 then
		local v214 = l_InvManage_0.getSlotData(getSlot(v96));
		if v214 and v214.items then
			return v214.items[v212];
		else
			return "";
		end;
	else
		return v90.Inventory:GetAttribute("Slot" .. v212) or "";
	end;
end;
setSlot = function(v215, v216)
	if typeof(v216) == "string" then
		v90.Inventory:SetAttribute("Slot" .. v215, v216);
		return;
	else
		error("Argument 2 is not a string");
		return;
	end;
end;
getSlotIChanged = function(v217)
	return v90.Inventory:GetAttributeChangedSignal("Slot" .. v217);
end;
getSlotChanged = function(_)
	local l_BindableEvent_0 = Instance.new("BindableEvent");
	v90.Inventory.AttributeChanged:Connect(function(v220)
		local v221 = tonumber(v220:sub(5));
		if v221 then
			l_BindableEvent_0:Fire(v221);
		end;
	end);
	return l_BindableEvent_0.Event;
end;
getWSlot = function(v222)
	local l_v90_Attribute_0 = v90:GetAttribute(v53[v222]);
	return getSlot(l_v90_Attribute_0), l_v90_Attribute_0;
end;
setWSlot = function(v224, v225)
	if typeof(v225) == "string" then
		local l_v90_Attribute_1 = v90:GetAttribute(v53[v224]);
		setSlot(l_v90_Attribute_1, v225);
		return;
	else
		error("Argument 2 is not a string");
		return;
	end;
end;
getGIProp = function(v227)
	return v90:GetAttribute(v227);
end;
setGIProp = function(v228, v229)
	return v90:SetAttribute(v228, v229);
end;
local function raycasth(v230, v231, v232)
	local v233 = RaycastParams.new();
	v233.CollisionGroup = "Raycast";
	v233.FilterDescendantsInstances = v232;
	local v234 = workspace:Raycast(v230, v231, v233);
	if v234 then
		local l_Instance_0 = v234.Instance;
		if l_Instance_0.Parent:FindFirstChildOfClass("Humanoid") then
			return v234;
		elseif l_Instance_0.Name == "SCP294" then
			table.insert(v232, l_Instance_0);
			return raycasth(v230, v231, v232);
		elseif not l_Instance_0.CanCollide or not l_Instance_0.Parent then
			table.insert(v232, l_Instance_0);
			return raycasth(v230, v231, v232);
		elseif l_Instance_0.Transparency >= 0.1 and l_Instance_0.Name ~= "DecalCovering" then
			table.insert(v232, l_Instance_0);
			return raycasth(v230, v231, v232);
		end;
	end;
	return v234;
end;
getTimeFromSeconds = function(v236)
	v236 = math.floor(v236);
	if v236 < 3600 then
		local v237 = v236 % 60;
		local v238 = math.floor(v236 / 60);
		if v237 < 10 then
			v237 = "0" .. v237;
		end;
		return v238 .. ":" .. v237;
	elseif v236 < 86400 then
		local v239 = v236 % 60;
		local v240 = math.floor(v236 / 60) % 60;
		local v241 = math.floor(v236 / 3600);
		if v239 < 10 then
			v239 = "0" .. v239;
		end;
		if v240 < 10 then
			v240 = "0" .. v240;
		end;
		return v241 .. ":" .. v240 .. ":" .. v239;
	else
		local v242 = v236 % 60;
		local v243 = math.floor(v236 / 60) % 60;
		local v244 = math.floor(v236 / 3600) % 24;
		local v245 = math.floor(v236 / 86400);
		if v242 < 10 then
			v242 = "0" .. v242;
		end;
		if v243 < 10 then
			v243 = "0" .. v243;
		end;
		if v244 < 10 then
			v244 = "0" .. v244;
		end;
		return v245 .. ":" .. v244 .. ":" .. v243 .. ":" .. v242;
	end;
end;
placeDecal = function(v246, v247, v248, v249)
	local v250 = v249 or 3;
	v248 = v248 * CFrame.new(0, 0, 0.025) * CFrame.Angles(0, 0, math.random() * 3.141592653589793 * 2);
	local l_Part_0 = Instance.new("Part");
	l_Part_0.Massless = true;
	l_Part_0.Anchored = false;
	l_Part_0.CanCollide = false;
	l_Part_0.Transparency = 1;
	l_Part_0.CastShadow = false;
	l_Part_0.Size = Vector3.new(v250, v250, 0.05);
	local l_Decal_0 = Instance.new("Decal");
	l_Decal_0.Texture = "rbxassetid://" .. v246;
	l_Decal_0.Face = Enum.NormalId.Front;
	l_Decal_0.ZIndex = 3;
	l_Decal_0.Parent = l_Part_0;
	l_Part_0.CFrame = v247.CFrame * v248;
	local v253 = Instance.new("Weld", l_Part_0);
	v253.C1 = v248;
	v253.Part0 = l_Part_0;
	v253.Part1 = v247;
	l_Part_0.Parent = l_CurrentCamera_0;
	l_DebrisCollector_0:AddItem(l_Part_0, "decal", 180);
	return l_Part_0;
end;
createDecal = function(v254, v255, v256)
	local _ = v254.Instance;
	local v258 = v254.Instance.CFrame:ToObjectSpace(CFrame.new(v254.Position, v254.Position + v254.Normal));
	return placeDecal(v255, v254.Instance, v258, v256);
end;
makeSound = function(v259)
	local l_Sound_0 = Instance.new("Sound");
	l_Sound_0.SoundId = v259;
	return l_Sound_0;
end;
playStrictSound = function(v261, v262, v263)
	local l_Sound_1 = Instance.new("Sound");
	l_Sound_1.SoundId = v261;
	l_Sound_1.Volume = v262 or 1;
	l_Sound_1.SoundGroup = v263 or sg_misc;
	l_Sound_1.Parent = script;
	l_Sound_1:Play();
	table.insert(v98, l_Sound_1);
	task.delay(120, function()
		l_Sound_1:Destroy();
	end);
end;
function playGlobalSound(v265, v266, v267)
	local l_Sound_2 = Instance.new("Sound");
	l_Sound_2.SoundId = v265;
	l_Sound_2.Volume = v266 or 1;
	l_Sound_2.SoundGroup = v267 or sg_misc;
	l_Sound_2.Parent = script;
	l_Sound_2:Play();
	s_D:AddItem(l_Sound_2, 15);
	return l_Sound_2;
end;
playAmbient = function(v269)
	playGlobalSound(v269, math.random() * 0.3 + 0.3, sg_amb);
end;
playRandomAmbient = function()
	if not (v84 ~= "SCP860" and v84 ~= "pocketdimension") or v84 == "SCP1499" then
		return;
	elseif v84 == "intro" then
		return;
	elseif not (v84 ~= "gatea") or v84 == "exit1" then
		return;
	elseif math.random(1, 2) == 1 then
		playAmbient("rbxassetid://" .. randomItem(v47));
		return;
	else
		local v270 = v49[v84];
		local v271 = v270 and v270.tableamb;
		if v271 then
			playAmbient("rbxassetid://" .. randomItem(v271));
			return;
		else
			playAmbient("rbxassetid://" .. randomItem(v47));
			return;
		end;
	end;
end;
updateAmbience = function(v272)
	v87 = v87 - v272;
	if v87 < 0 then
		v87 = v87 + (math.random() * 15 + 5);
		playRandomAmbient();
	end;
end;

animateDoor = function(v1087, v1088)
	local v1089 = v163[v1087] or 0;
	local v1090 = v1087:GetAttribute("IsOpen") and true;
	if v1087.Name:sub(1, 9) == "DoorBlast" then
		if v1089 ~= (v1090 and 1 or 0) then
			if v1090 and v1089 < 1 then
				v1089 = math.min(1, v1089 + v1088 / 2.9);
			elseif not v1090 and v1089 > 0 then
				v1089 = math.max(0, v1089 - v1088 / 2.9);
			end;
			local v1091 = l_Easing_0.inOutQuad(v1089, 0, 4.6, 1);
			for _, v1093 in pairs(v1087.Main:GetChildren()) do
				if v1093.Name == "Door1" then
					v1087.Door1.CFrame = v1093.WorldCFrame * CFrame.new(-v1091, 0, 0);
				elseif v1093.Name == "Door2" then
					v1087.Door2.CFrame = v1093.WorldCFrame * CFrame.new(v1091, 0, 0);
				end;
			end;
		end;
	else
		local v1094 = 1.3;
		local v1095 = 3.6;
		if v1087.Name:sub(1, 7) == "Door914" then
			v1094 = 1.8;
		elseif v1087.Name == "DoorElevator" then
			v1095 = -1.9;
		end;
		if v1089 ~= (v1090 and 1 or 0) then
			if v1090 and v1089 < 1 then
				v1089 = math.min(1, v1089 + v1088 / v1094);
			elseif not v1090 and v1089 > 0 then
				v1089 = math.max(0, v1089 - v1088 / v1094);
			end;
			local v1096 = l_Easing_0.inOutQuad(v1089, 0, v1095, 1);
			for _, v1098 in pairs(v1087.Main:GetChildren()) do
				if v1098.Name:sub(1, 4) == "Door" then
					v1087[v1098.Name].CFrame = v1098.WorldCFrame * CFrame.new(v1096, 0, 0);
				end;
			end;
		end;
	end;
	v163[v1087] = v1089;
end;
doBlink = function(v1050)
	v119 = not v1050;
end;
displayMessage = function(v1123)
	v81:DisplayMessage(v1123);
end;
updateLighting = function()
	local v273 = l_Lighting_0.get(v84);
	local v274 = nil;
	local v275 = nil;
	local v276 = nil;
	local v277 = nil;
	local v278 = nil;
	local v279 = nil;
	local v280 = nil;
	local v281 = nil;
	if not l_preferences_0.CBSky and (not (v84 ~= "gatea") or v84 == "exit1") then
		local v282 = nil;
		v282 = if l_Configurations_0.lighting.timeSpeed >= 0 then os.clock() * l_Configurations_0.lighting.timeSpeed + l_Configurations_0.lighting.timeOffset else workspace.Stats.ServerTime.Value + l_Configurations_0.lighting.timeOffset;
		local v283 = (math.noise(v282 / 11000 * 3.141592653589793, -24) + 0.4) * 0.3 + (math.noise(v282 / 40000 * 3.141592653589793, 24) + 0.4) * 1;
		local v284 = (math.noise(v282 / 8000 * 3.141592653589793, 24) + 0.4) * 0.3 + (math.noise(v282 / 50000 * 3.141592653589793, 24) + 0.4) * 1.5;
		local v285 = math.noise(v282 / 300 * 3.141592653589793, 36) * 0.3;
		local v286 = v283 * 0.5 + v283 * v284;
		local v287 = v286 + v285;
		local l_Unit_0 = Vector3.new(-0.20000000298023224, 0, -1).Unit;
		local v289 = v282 % 86400 / 86400 * 24;
		local v290 = v289 < 12 and math.clamp(v289 - 5, 0, 1) or 1 - math.clamp(v289 - 18, 0, 1);
		if not (v289 < 12) or not math.clamp(v289 - 5.5, 0, 1) then
			local _ = 1 - math.clamp(v289 - 17.5, 0, 1);
		end;
		local v292 = v289 < 12 and math.clamp(v289 - 6, 0, 1) or 1 - math.clamp(v289 - 17, 0, 1);
		local v293 = (v289 < 12 and math.clamp(v289 - 6, 0, 2) or 2 - math.clamp(v289 - 16, 0, 2)) / 2;
		local v294 = (v289 < 12 and math.clamp(v289 - 5, 0, 2) or 2 - math.clamp(v289 - 17, 0, 2)) / 2;
		v274 = mulRGB(v273.Ambient, 0.5 + 0.5 * v292);
		v275 = v289;
		v276 = (0.5 + 2.5 * v290) * math.clamp(2 - v286 * 2, 0, 1);
		v277 = v273.FogEnd * 2;
		v278 = v273.FogColor;
		v279 = v273.EnvironmentDiffuseScale * (1 - math.clamp(v286, 0, 1));
		v280 = v273.EnvironmentSpecularScale;
		v281 = Color3.new(v290 * 0.2 + 0.8, v290 * 0.2 + 0.8 - v290 * 0.03, 1 - v290 * 0.08);
		l_AtmosphereFX_0.Glare = 1 + math.sin(v292 * 3.141592653589793) * 4 + v293 * 3;
		l_AtmosphereFX_0.Haze = -1 + math.max(0, v286 - 0.5) * 10;
		local v295 = v294 * 0.9 + 0.1;
		l_AtmosphereFX_0.Color = Color3.new(v295, v295, v295);
		l_AtmosphereFX_0.Density = 0.35 - 0.1 * v290 + 0.3 * v287;
		l_Clouds_0.Cover = math.clamp(v283, 0, 1) ^ 0.5;
		l_Clouds_0.Density = math.clamp(v286, 0, 1);
		v295 = 1 - v286;
		l_Clouds_0.Color = Color3.new(1 - 0.4235294117647059 * v295, 1 - 0.2196078431372549 * v295, 1);
		if v286 > 1 then
			l_Skybox_0:Set("cloudy2");
		elseif v286 > 0.8 then
			l_Skybox_0:Set("cloudy");
		else
			l_Skybox_0:Set("sunny");
		end;
		if v287 > 0.8 then
			v295 = math.min(1, (v287 - 0.8) / 0.2);
			if not v86 then
				v86 = true;
				l_Rain_0:Enable();
			end;
			l_Rain_0:SetDirection((Vector3.new(0, -1, 0) + l_Unit_0 * v284).Unit);
			l_Rain_0:SetTransparency(1 - v295 * 0.8);
			l_Rain_0:SetVolume(0.2 + v295 * 0.8);
			if math.random() ^ 2 > 2 - v287 and math.random(20) == 1 then
				l_Thunder_0.strike();
			end;
		elseif v86 then
			v86 = false;
			l_Rain_0:Disable();
		end;
		v64.Contrast = -0.05;
		v64.Saturation = -0.5;
		v64.TintColor = Color3.new(1, 1, 1);
	else
		v274 = v273.Ambient;
		v275 = v273.ClockTime;
		v276 = v273.Brightness;
		v277 = v273.FogEnd;
		v278 = v273.FogColor;
		v279 = v273.EnvironmentDiffuseScale;
		v280 = v273.EnvironmentSpecularScale;
		v281 = Color3.new();
		if v86 then
			v86 = false;
			l_Rain_0:Disable();
		end;
		l_Thunder_0.reset();
		v64.Contrast = -0.05;
		v64.Saturation = 0;
		v64.TintColor = Color3.new(1, 1, 1);
	end;
	if v84 == "SCP860" then
		if v99.e_860_sanity > 0 then
			local v296 = 1 - math.min(1, v99.e_860_sanity / 4.3) * 0.5;
			v278 = Color3.new(v278.R * v296, v278.G * v296, v278.B * v296);
			v277 = 48;
		end;
	elseif v84 == "pocketdimension" then
		v278 = if v85 then Color3.new(0.14902, 0.176471, 0.168627) else Color3.new(0, 0, 0);
	end;
	local v297 = 0.5 - ((100 - v101) / 100) ^ 3 * 1.75 + (l_preferences_0.V_Bright or 0);
	if l_preferences_0.CBSky then
		v297 = v297 + (v99.e_ntfintro and 2 or v99.e_ntfintro2 and 2 * v99.e_ntfintro2 ^ 2 or 0);
	end;
	if v125 and l_Humanoid_0 then
		v297 = v297 - (1 - l_Humanoid_0.Health / l_Humanoid_0.MaxHealth) * 4;
	end;
	if v100 > 0.9 then
		v297 = v297 - (5 - math.random() * 2);
	elseif v100 > 0 then
		v297 = v297 - (v100 * math.random()) ^ 3 * 3;
	end;
	if v134 then
		local v298 = l_InvManage_0.getSlotData(getSlot(v134));
		if v298 then
			local l_name_0 = v298.name;
			local l_battery_0 = v298.battery;
			if not (l_name_0 ~= "NVG") or l_name_0 == "NVG_S" then
				if not l_battery_0 or l_battery_0 <= 0 then
					v110 = -0.1;
					doBlink();
					displayMessage("The batteries in these night vision goggles died.");
				end;
			elseif l_name_0 == "SCRAMBLE" and (not l_battery_0 or l_battery_0 <= 0) then
				v110 = -0.1;
				doBlink();
				displayMessage("The batteries in this gear died.");
			end;
			if l_name_0 == "NVG" then
				v277 = 96;
				v297 = v297 + 0.5;
				v274 = Color3.new(0.2, 0.2, 0.2);
				v64.Saturation = -1;
				v64.Contrast = 0;
				v64.TintColor = Color3.new(0, 1, 0);
			elseif l_name_0 == "NVG_S" then
				v277 = 96;
				v297 = v297 + 0.5;
				v274 = Color3.new(0.2, 0.2, 0.2);
				v64.Saturation = -1;
				v64.Contrast = 0;
				v64.TintColor = Color3.new(0, 0.298039, 1);
			elseif l_name_0 == "NVG_R" then
				v277 = 96;
				v297 = v297 + 1;
				v274 = Color3.new(0.2, 0.2, 0.2);
				v64.Saturation = -1;
				v64.Contrast = 0;
				v64.TintColor = Color3.new(1, 0, 0);
			elseif l_name_0 == "SCRAMBLE" then
				v64.Saturation = -1;
				v64.TintColor = Color3.new(1, 1, 1);
			elseif l_name_0:sub(1, 6) == "Helmet" and l_name_0 ~= "HelmetNu7_2" and l_name_0 ~= "HelmetNu7" then
				v297 = v297 + 0.2;
				v64.Saturation = -0.3;
				v64.TintColor = l_name_0 == "Helmet" and Color3.new(0.976471, 1, 0.741176) or l_name_0 == "HelmetCI" and Color3.new(1, 0.75, 0.75) or Color3.new(1, 1, 1);
			end;
		end;
	end;
	if v99.e_066dim then
		local v301 = math.min(math.max(v99.e_066dim / 7.142857142857143, 0.01), 0.6);
		v297 = v297 - v301;
		v277 = v277 * (1 - v301);
	end;
	s_L.Ambient = v274;
	s_L.ClockTime = v275;
	s_L.Brightness = v276;
	s_L.FogStart = l_preferences_0.Fog and l_preferences_0.Fog[1] or l_Configurations_0.lighting.fogStart >= 0 and l_Configurations_0.lighting.fogStart or 0;
	s_L.FogEnd = l_preferences_0.Fog and l_preferences_0.Fog[2] or l_Configurations_0.lighting.fogEnd >= 0 and l_Configurations_0.lighting.fogEnd or v277;
	s_L.FogColor = v278;
	s_L.ExposureCompensation = v297;
	s_L.EnvironmentDiffuseScale = v279;
	s_L.EnvironmentSpecularScale = v280;
	s_L.ColorShift_Top = v281;
end;
print("XDXD")
enterArea = function(v302)
	if v84 ~= v302 then
		if v302 == "HCZ" then
			playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.ToZone2);
		elseif v302 == "EZ" then
			playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.ToZone3);
		end;
	end;
	if not (v302 ~= "pocketdimension" and v302 ~= "SCP860" and v302 ~= "intro") or v302 == "SCP1499" then
		sg_intercom.Volume = 0;
		sg_indoor.Volume = 0;
		sg_ann.Volume = 0;
		sg_ann.SE1.Enabled = false;
		sg_ann.SE2.Enabled = false;
		sg_mtf.SE1.Enabled = false;
		sg_mtf.SE2.Enabled = false;
		sg_mtf.SE3.Enabled = true;
		sg_mtf.SE3.DryLevel = -80;
		l_Outdoors_0.off();
	elseif not (v302 ~= "exit1") or v302 == "gatea" then
		sg_intercom.Volume = 0;
		sg_indoor.Volume = 0;
		sg_ann.Volume = 0.35;
		sg_ann.SE1.Enabled = true;
		sg_ann.SE2.Enabled = true;
		sg_mtf.SE1.Enabled = true;
		sg_mtf.SE2.Enabled = true;
		sg_mtf.SE3.Enabled = true;
		sg_mtf.SE3.DryLevel = -10;
		l_Outdoors_0.on();
	else
		sg_intercom.Volume = 0.25;
		sg_indoor.Volume = 1;
		sg_ann.Volume = 1;
		sg_ann.SE1.Enabled = false;
		sg_ann.SE2.Enabled = false;
		sg_mtf.SE1.Enabled = false;
		sg_mtf.SE2.Enabled = false;
		sg_mtf.SE3.Enabled = false;
		l_Outdoors_0.off();
	end;
	v84 = v302;
	_G.gamearea = v302;
	
	local v303 = v49[v84];
	local v304 = v303 and v303.music;
	if v304 then
		l_Music_0.change("Area", v304);
	else
		l_Music_0.silence("Area");
	end;
	updateLighting();
end;
setDeathMsg = function(v1051)
	local v1052 = nil;
	local v1053 = nil;
	if v90 and getGIProp("Achievements") ~= "" then
		v1052 = 0;
		v1053 = 0;
		local v1054 = s_Http:JSONDecode(getGIProp("Achievements"));
		for _, _ in ipairs(v1054) do
			v1052 = v1052 + 1;
		end;
		for _, v1058 in pairs(l_Achievements_0) do
			if not v1058.Disabled then
				v1053 = v1053 + 1;
			end;
		end;
	end;
	_G.death = {
		v1051, 
		{
			timeplayed = getGIProp("TimePlayed"), 
			gamemode = getGIProp("Gamemode"), 
			diff = getGIProp("Difficulty"), 
			ach = v1052, 
			totalach = v1053
		}
	};
end;
takeDamage = function(v991)
	re_dmg:FireServer(v991);
	l_Humanoid_0:TakeDamage(v991);
end;
kill = function()
	takeDamage(100);
end;
attempt895JS = function()
	if v99.e_nv895 then
		return;
	else
		if v135 then
			local v305 = l_InvManage_0.getSlotData(getSlot(v135));
			if v305 and v305.name == "SCP714" then
				return;
			end;
		end;
		if v136 then
			local v306 = l_InvManage_0.getSlotData(getSlot(v136));
			if v306 and v306.name == "HeavyHazmat" then
				return;
			end;
		end;
		if v134 then
			local v307 = l_InvManage_0.getSlotData(getSlot(v134));
			local v308 = v307 and v307.name;
			local v309 = v307 and v307.battery;
			if (not (v308 ~= "NVG") or v308 == "SCRAMBLE") and v309 and v309 > 0 then
				local v310 = workspace.Events:FindFirstChild("SCP895") and workspace.Events.SCP895.Value;
				if v310 and (v310.Position - l_CurrentCamera_0.CFrame.Position).Magnitude < 20 then
					v99.e_nv895 = true;
					local v311 = s_ReS.ClientSide.NV895Scene:Clone();
					v311:SetPrimaryPartCFrame(v310.Parent.Base.CFrame);
					v311.Parent = l_CurrentCamera_0;
					s_D:AddItem(v311, 10);
					playGlobalSound("rbxassetid://" .. 497248845, 1);
					v101 = 0;
					local l_l_Humanoid_0_0 = l_Humanoid_0;
					task.delay(1, function()
						task.wait(2);
						setDeathMsg("Subject viewed SCP-895 through a pair of digital night vision goggles, resulting in death.");
						kill();
					end);
					local v313 = l_ScaryPart_0:Clone();
					v313.CFrame = l_CurrentCamera_0.CFrame * CFrame.new(0, 0, -1) * CFrame.fromEulerAnglesYXZ(0, 3.141592653589793, 0);
					v313.Parent = l_CurrentCamera_0;
					v313.Beam.Width0 = 3;
					v313.Beam.Width1 = 3;
					task.spawn(function()
						while l_l_Humanoid_0_0.Health > 0 and s_RS.RenderStepped:wait() do
							v313.CFrame = l_CurrentCamera_0.CFrame * CFrame.new(0, 0, -1) * CFrame.fromEulerAnglesYXZ(0, 3.141592653589793, 0);
							local l_Beam_0 = v313.Beam;
							local v315 = true;
							if v99.e_895 ~= 2 then
								v315 = math.random() < (100 - v101) / 500;
							end;
							l_Beam_0.Enabled = v315;
							v313.Beam.Texture = "rbxassetid://" .. randomItem(v39);
							v112 = v112 + 1;
							v101 = 0;
						end;
						v313:Destroy();
					end);
				end;
			end;
		end;
		return;
	end;
end;
changeRadioText = function()
	local l_Screen_0 = v81.hud.Radio.Screen;
	local v317 = workspace.Events:FindFirstChild("SCP895") and workspace.Events.SCP895.Value;
	local v318 = nil;
	local _ = l_preferences_0.S_Radio or 1;
	if v317 then
		v318 = (v317.Position - l_CurrentCamera_0.CFrame.Position).Magnitude / 30;
		local v320 = math.random() * 0.5;
		v318 = math.max(0, -v320 + v318 * (1 + v320));
	end;
	if v318 and v318 < math.random() then
		l_Screen_0.Track.TextL.Text = randomItem({
			"doom", 
			"death", 
			"run", 
			"die", 
			"null", 
			"unknown", 
			"error", 
			"him", 
			"doomed", 
			"egg", 
			"lnjhikmyup", 
			"consequences"
		});
		return;
	else
		l_Screen_0.Track.TextL.Text = workspace.RadioChannels["Channel" .. v147 .. "Info"].Value;
		return;
	end;
end;
subEquipment = function(v321, _, v323, v324, v325)
	local v326 = "item" .. v323;
	local v327 = v326 .. "model";
	local v328 = v326 .. "res";
	local v329 = v321.inv[v324];
	local v330 = v325[v326];
	if v330 ~= v329 then
		local l_v330_0 = v330;
		local l_v329_0 = v329;
		print(l_v329_0)
		if l_v330_0 and l_v329_0 and l_v330_0.name == l_v329_0.name then
			v325[v326] = v329;
			return;
		else
			v325[v326] = v329;
			if v325[v327] then
				for _, v334 in ipairs(v325[v327]) do
					pcall(v334.Destroy, v334);
				end;
				v325[v327] = nil;
			end;
			if v325[v328] then
				for _, v336 in ipairs(v325[v328]) do
					pcall(function()
						if v336:IsA("Accessory") then
							v336.Handle.Transparency = 0;
							return;
						else
							v336.Parent = v321.char;
							return;
						end;
					end);
				end;
				v321.head.Transparency = 0;
				l_v330_0 = v321.head:FindFirstChildOfClass("Decal");
				if l_v330_0 then
					l_v330_0.Transparency = 0;
				end;
				v325[v328] = nil;
			end;
			if v329 then
				l_v330_0 = v321.char;
				l_v329_0 = v329 and v329.name;
				if l_v329_0 then
					if not (l_v329_0:sub(1, 7) ~= "GasMask") or l_v329_0 == "SuperGasMask" then
						local v337 = s_ReS.Accessories.Head.GasMask:Clone();
						local l_PrimaryPart_0 = v337.PrimaryPart;
						for _, v340 in pairs(v337:GetChildren()) do
							if v340 ~= l_PrimaryPart_0 then
								v340.Anchored = false;
								v340.Massless = true;
								local l_WeldConstraint_0 = Instance.new("WeldConstraint");
								l_WeldConstraint_0.Part0 = v340;
								l_WeldConstraint_0.Part1 = l_PrimaryPart_0;
								l_WeldConstraint_0.Parent = v340;
							end;
						end;
						v337.Parent = l_v330_0;
						v337:SetPrimaryPartCFrame(v321.head.CFrame);
						local l_WeldConstraint_1 = Instance.new("WeldConstraint");
						l_WeldConstraint_1.Part0 = l_PrimaryPart_0;
						l_WeldConstraint_1.Part1 = v321.head;
						l_WeldConstraint_1.Parent = l_PrimaryPart_0;
						v325[v327] = {};
						v325[v327][1] = v337;
						return;
					elseif not (l_v329_0:sub(1, 3) ~= "NVG") or l_v329_0 == "SCRAMBLE" then
						local v343 = s_ReS.Accessories.Head[l_v329_0]:Clone();
						local l_PrimaryPart_1 = v343.PrimaryPart;
						for _, v346 in pairs(v343:GetChildren()) do
							if v346 ~= l_PrimaryPart_1 then
								v346.Anchored = false;
								v346.Massless = true;
								local l_WeldConstraint_2 = Instance.new("WeldConstraint");
								l_WeldConstraint_2.Part0 = v346;
								l_WeldConstraint_2.Part1 = l_PrimaryPart_1;
								l_WeldConstraint_2.Parent = v346;
							end;
						end;
						v343.Parent = l_v330_0;
						v343:SetPrimaryPartCFrame(v321.head.CFrame);
						local l_WeldConstraint_3 = Instance.new("WeldConstraint");
						l_WeldConstraint_3.Part0 = l_PrimaryPart_1;
						l_WeldConstraint_3.Part1 = v321.head;
						l_WeldConstraint_3.Parent = l_PrimaryPart_1;
						v325[v327] = {};
						v325[v327][1] = v343;
						return;
					elseif not (l_v329_0 ~= "Hazmat" and l_v329_0 ~= "SuperHazmat") or l_v329_0 == "HeavyHazmat" then
						v325[v327] = {};
						v325[v328] = {};
						for _, v350 in ipairs(l_v330_0:GetChildren()) do
							if v350:IsA("Accessory") then
								v350.Handle.Transparency = 1;
								table.insert(v325[v328], v350);
							elseif v350:IsA("Clothing") then
								v350.Parent = nil;
								table.insert(v325[v328], v350);
							end;
						end;
						local v351 = s_ReS.Accessories.Hazmat.Helmet:Clone();
						v351.Parent = l_v330_0;
						v351.Handle.CFrame = v321.head.CFrame;
						local l_WeldConstraint_4 = Instance.new("WeldConstraint");
						l_WeldConstraint_4.Part0 = v351.Handle;
						l_WeldConstraint_4.Part1 = v321.head;
						l_WeldConstraint_4.Parent = v351.Handle;
						v325[v327][1] = v351;
						local v353 = s_ReS.Accessories.Hazmat.Shirt:Clone();
						v353.Parent = l_v330_0;
						local v354 = s_ReS.Accessories.Hazmat.Pants:Clone();
						v354.Parent = l_v330_0;
						v325[v327][2] = v353;
						v325[v327][3] = v354;
						return;
					elseif l_v329_0:sub(1, 4) == "Vest" then
						local v355 = s_ReS.Accessories.Torso.Vest2:Clone();
						v355.Parent = l_v330_0;
						local l_torso_0 = v321.torso;
						v355:SetPrimaryPartCFrame(l_torso_0.CFrame);
						for _, v358 in pairs(v355:GetChildren()) do
							v358.Anchored = false;
							v358.Massless = true;
							local l_WeldConstraint_5 = Instance.new("WeldConstraint");
							l_WeldConstraint_5.Part0 = v358;
							l_WeldConstraint_5.Part1 = l_torso_0;
							l_WeldConstraint_5.Parent = v358;
						end;
						v325[v327] = {};
						v325[v327][1] = v355;
						return;
					elseif not (l_v329_0:sub(1, 6) ~= "Helmet") or l_v329_0 == "SCP1499" then
						v325[v327] = {};
						v325[v328] = {};
						for _, v361 in ipairs(l_v330_0:GetChildren()) do
							if v361:IsA("Accessory") then
								v361.Handle.Transparency = 1;
								table.insert(v325[v328], v361);
							end;
						end;
						local v362 = s_ReS.Accessories.Head[l_v329_0]:Clone();
						v362.Parent = l_v330_0;
						local l_head_0 = v321.head;
						v362:SetPrimaryPartCFrame(l_head_0.CFrame);
						for _, v365 in pairs(v362:GetChildren()) do
							v365.Anchored = false;
							v365.Massless = true;
							local l_WeldConstraint_6 = Instance.new("WeldConstraint");
							l_WeldConstraint_6.Part0 = v365;
							l_WeldConstraint_6.Part1 = l_head_0;
							l_WeldConstraint_6.Parent = v365;
							if v365.Name == "Middle" then
								v365.Transparency = 0;
								v365.Color = l_head_0.Color;
								local l_Decal_1 = l_head_0:FindFirstChildOfClass("Decal");
								if l_Decal_1 then
									l_Decal_1 = l_Decal_1:Clone();
									l_Decal_1.Transparency = 0;
									l_Decal_1.Parent = v365;
								end;
								if v321.gi.Gamemode == "NTF" then
									l_Decal_1 = v365:FindFirstChild("breathMTF");
									if l_Decal_1 then
										l_Decal_1:Resume();
									end;
								end;
							end;
						end;
						v321.head.Transparency = 0.98;
						local l_Decal_2 = v321.head:FindFirstChildOfClass("Decal");
						if l_Decal_2 then
							l_Decal_2.Transparency = 1;
						end;
						v325[v327][1] = v362;
					end;
				end;
			end;
		end;
	end;
end;
updateEquipment = function(v369, v370)
	local v371 = v179[v369];
	if not v371 then
		v371 = {};
		v179[v369] = v371;
	end;
	local l_gi_0 = v369.gi;
	local l_Secondary_0 = l_gi_0.Secondary;
	local v374 = v369.inv[l_Secondary_0];
	local l_holster_0 = v371.holster;
	if v374 then
		if not l_holster_0 or not l_holster_0.Parent then
			l_holster_0 = s_ReS.Misc.Holster:Clone();
			l_holster_0.Parent = v369.char;
			local l_rleg_0 = v369.rleg;
			l_holster_0:SetPrimaryPartCFrame(l_rleg_0.CFrame);
			for _, v378 in pairs(l_holster_0:GetChildren()) do
				v378.Anchored = false;
				v378.CanCollide = false;
				v378.Massless = true;
				local l_WeldConstraint_7 = Instance.new("WeldConstraint");
				l_WeldConstraint_7.Part0 = v378;
				l_WeldConstraint_7.Part1 = l_rleg_0;
				l_WeldConstraint_7.Parent = v378;
			end;
			v371.holster = l_holster_0;
		end;
		l_holster_0.Holster.Transparency = l_gi_0.SelectedWeapon == 2 and 1 or 0;
	elseif l_holster_0 then
		pcall(l_holster_0.Destroy, l_holster_0);
		v371.holster = nil;
	end;
	l_Secondary_0 = l_gi_0.Primary;
	v374 = v369.inv[l_Secondary_0];
	l_holster_0 = v371.gun;
	if l_holster_0 and v374 and v374.name ~= v371.gunname then
		pcall(l_holster_0.Destroy, l_holster_0);
		v371.gun = nil;
		v371.gunname = nil;
	end;
	if v374 then
		if not l_holster_0 or not l_holster_0.Parent then
			l_holster_0 = s_ReS.Primary[v374.name]:Clone();
			local l_torso_1 = v369.torso;
			l_holster_0.CFrame = l_torso_1.CFrame * l_holster_0.CFrame;
			l_holster_0.Parent = v369.char;
			l_holster_0.Anchored = false;
			l_holster_0.CanCollide = false;
			l_holster_0.Massless = true;
			local l_WeldConstraint_8 = Instance.new("WeldConstraint");
			l_WeldConstraint_8.Part0 = l_holster_0;
			l_WeldConstraint_8.Part1 = l_torso_1;
			l_WeldConstraint_8.Parent = l_holster_0;
			v371.gun = l_holster_0;
			v371.gunname = v374.name;
		end;
		l_holster_0.Transparency = l_gi_0.SelectedWeapon == 1 and 1 or 0;
	elseif l_holster_0 then
		pcall(l_holster_0.Destroy, l_holster_0);
		v371.gun = nil;
		v371.gunname = nil;
	end;
	subEquipment(v369, v370, 1, l_gi_0.FaceEquip, v371);
	subEquipment(v369, v370, 2, l_gi_0.BodyEquip, v371);
end;

destroyEquipment = function(v382)
	local v383 = v179[v382];
	if v383 then
		if v383.holster then
			pcall(v383.holster.Destroy, v383.holster);
			v383.holster = nil;
		end;
		if v383.gun then
			pcall(v383.gun.Destroy, v383.gun);
			v383.gun = nil;
			v383.gunname = nil;
		end;
		if v383.item1model then
			for _, v385 in ipairs(v383.item1model) do
				pcall(v385.Destroy, v385);
			end;
			v383.item1model = nil;
		end;
		if v383.item1res then
			for _, v387 in ipairs(v383.item1res) do
				pcall(function()
					if v387:IsA("Accessory") then
						v387.Handle.Transparency = 0;
						return;
					else
						v387.Parent = v382.char;
						return;
					end;
				end);
			end;
			v383.item1res = nil;
		end;
		if v383.item2model then
			for _, v389 in ipairs(v383.item2model) do
				pcall(v389.Destroy, v389);
			end;
			v383.item2model = nil;
		end;
		if v383.item2res then
			for _, v391 in ipairs(v383.item2res) do
				pcall(function()
					if v391:IsA("Accessory") then
						v391.Handle.Transparency = 0;
						return;
					else
						v391.Parent = v382.char;
						return;
					end;
				end);
			end;
			v383.item2res = nil;
		end;
		v382.head.Transparency = 0;
		local l_Decal_3 = v382.head:FindFirstChildOfClass("Decal");
		if l_Decal_3 then
			l_Decal_3.Transparency = 0;
		end;
		v179[v382] = nil;
	end;
end;

disconnectWeapon = function(v434)
	local v435 = v178[v434];
	if v435 then
		v435.wm:Destroy();
		pcall(function()
			local l_torso_4 = v435.torso;
			local l_larm_2 = v435.larm;
			local l_rarm_2 = v435.rarm;
			local l_ls_2 = v435.ls;
			local l_rs_2 = v435.rs;
			if l_larm_2 then
				if l_torso_4 and l_ls_2 then
					l_larm_2.CFrame = l_torso_4.CFrame * l_ls_2.C0 * l_ls_2.C1:Inverse();
				end;
				l_larm_2.Anchored = false;
			end;
			if l_rarm_2 then
				if l_torso_4 and l_rs_2 then
					l_rarm_2.CFrame = l_torso_4.CFrame * l_rs_2.C0 * l_rs_2.C1:Inverse();
				end;
				l_rarm_2.Anchored = false;
			end;
			l_ls_2.Enabled = true;
			l_rs_2.Enabled = true;
		end);
		v178[v434] = nil;
	end;
end;

updateWeapon = function(v414, v415)
	local v416 = v178[v414];
	if v416 and v416.wm then
		if v416.firerate and v415 then
			v416.firerate = v416.firerate - v415;
			if v416.firerate <= 0 then
				v416.firerate = nil;
				for _, v418 in pairs(v416.wm.Barrel:GetChildren()) do
					if v418.Name:sub(1, 7) == "FlashFX" then
						v418.Enabled = false;
					elseif v418.Name == "Smoke" then
						v418.Enabled = false;
					end;
				end;
			end;
		end;
		local l_human_1 = v416.human;
		local l_torso_3 = v416.torso;
		local l_ls_1 = v416.ls;
		local l_rs_1 = v416.rs;
		local l_rarm_1 = v416.rarm;
		local l_larm_1 = v416.larm;
		if l_human_1.Health > 0 then
			local v425 = CFrame.new();
			local l_neck_1 = v416.neck;
			local v427 = 0;
			local v428 = 0;
			if l_neck_1 then
				local l_Y_0 = v414.camera.LookVector.Y;
				local v430 = v171[l_neck_1] or math.asin(l_Y_0);
				v425 = CFrame.Angles(v430, 0, 0);
				v427 = v430;
				v428 = 1 - math.cos(l_Y_0);
			end;
			local v431 = CFrame.new(v416.root.Position);
			v416.wm.CFrame = v414.htorso.CFrame * CFrame.new(0, 1, -0.5) * v425 * (v431 * CFrame.new(0, -1, 0.5)) * v431:ToObjectSpace(v416.root);
			l_rs_1.Enabled = false;
			l_rarm_1.Anchored = true;
			local l_WorldPosition_0 = v416.wm.RightGrip.WorldPosition;
			local v433 = math.min(1.5, 0.5 / (math.abs(l_torso_3.CFrame:PointToObjectSpace(l_WorldPosition_0).Z + 0.5) + 0.15)) * (1 - v428);
			l_rarm_1.CFrame = CFrame.new(l_WorldPosition_0, (l_torso_3.CFrame * CFrame.new(1.5, 0.5 - v433, 0.5)).p) * CFrame.new(0, -0.4, -1) * CFrame.Angles(-1.5707963267948966, 3.141592653589793, 0);
			l_ls_1.Enabled = false;
			l_larm_1.Anchored = true;
			l_WorldPosition_0 = v416.wm.LeftGrip.WorldPosition;
			v433 = math.min(1.5, 0.5 / (math.abs(l_torso_3.CFrame:PointToObjectSpace(l_WorldPosition_0).Z + 0.5) + 0.15)) * (1 - v428);
			l_larm_1.CFrame = CFrame.new(l_WorldPosition_0, (l_torso_3.CFrame * CFrame.new(-1.5, 0.5 - v433, 0.5)).p) * CFrame.new(0, -0.4, -1) * CFrame.Angles(-1.5707963267948966, 3.141592653589793, 0);
			return;
		else
			l_rarm_1.Anchored = false;
			l_larm_1.Anchored = false;
			v416.wm.Anchored = false;
			v416.wm.CanCollide = true;
		end;
	end;
end;

initializeWeapon = function(v393)
	if v178[v393] then
		return;
	else
		local l_gi_1 = v393.gi;
		local l_human_0 = v393.human;
		local l_torso_2 = v393.torso;
		local l_neck_0 = v393.neck;
		local l_rs_0 = v393.rs;
		local l_ls_0 = v393.ls;
		local l_rarm_0 = v393.rarm;
		local l_larm_0 = v393.larm;
		if l_human_0 and l_torso_2 and l_neck_0 and l_larm_0 and l_rarm_0 and l_rs_0 and l_ls_0 then
			local v402 = l_gi_1[v53[l_gi_1.SelectedWeapon]];
			if v402 then
				local v403 = v393.inv[v402];
				if v403 and v403.name then
					local l_name_1 = v403.name;
					local v405 = s_ReS.WeaponData[l_name_1];
					local v406 = require(v405.Config);
					local v407 = v405.WorldModel:Clone();
					v407.CanCollide = false;
					v407.Anchored = true;
					v407.Parent = l_CurrentCamera_0;
					local v408 = {
						name = l_name_1, 
						ammo = v406.ammo, 
						wm = v407, 
						root = v406.wroot or CFrame.new(0.5, 0.5, -0.5), 
						human = l_human_0, 
						torso = l_torso_2, 
						neck = l_neck_0, 
						larm = l_larm_0, 
						rarm = l_rarm_0, 
						ls = l_ls_0, 
						rs = l_rs_0
					};
					v178[v393] = v408;
					if v403.suppressor then
						local l_suppressor_0 = v407:FindFirstChild("suppressor");
						if l_suppressor_0 then
							l_suppressor_0.Transparency = 0;
							v408.suppressor = true;
						end;
					end;
					if v403.laser then
						local l_laser_0 = v407:FindFirstChild("laser");
						if l_laser_0 then
							l_laser_0.Beam.Enabled = true;
							v408.laser = true;
						end;
					end;
					if v403.flashlight then
						local l_flashlight_0 = v407:FindFirstChild("flashlight");
						if l_flashlight_0 then
							l_flashlight_0.Flashlight.Enabled = true;
							v408.flashlight = true;
						end;
					end;
					local v412 = nil;
					do
						local l_v412_0 = v412;
						l_v412_0 = v393.gif:GetAttributeChangedSignal("SelectedWeapon"):Connect(function()
							disconnectWeapon(v393);
							pcall(l_v412_0, l_v412_0.Disconnect);
						end);
						updateWeapon(v393);
					end;
				end;
			end;
		end;
		return;
	end;
end;

doHeartbeat = function(v441, v442, v443)
	v102 = v102 - v441;
	if v102 < 0 then
		playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Heartbeat, v443);
		v102 = v102 + v442;
	end;
end;

resetMap = function()
	meta_doors = {};
	v175 = {};
end;

setMap = function(v444)
	warn(v444)
	local l_doors_0 = v444.doors;
	v444.doorsF.ChildAdded:Connect(function(v446)
		meta_doors[v446.Name] = v446;
		v174[v446] = v446:WaitForChild("Main").Position; --.Position		
	end);
	for _, v448 in pairs(l_doors_0) do
		meta_doors[v448.Name] = v448;
		v174[v448] = v448:WaitForChild("Main").Position; --.Position
	end;
	v444.data.GasEmitters.ChildAdded:Connect(function(v449)
		v175[v449] = v449.Position;
	end);
	for _, v451 in pairs(v444.data.GasEmitters:GetChildren()) do
		v175[v451] = v451.Position;
	end;
end;
updatePlayers = function(v452, v453)
	local l_includeSelf3P_0 = l_Configurations_0.debug.includeSelf3P;
	local v455 = nil;
	if v90 then
		v455 = v90:GetAttribute("Difficulty");
	end;
	local v456 = l_preferences_0.Cinematic and Enum.HumanoidDisplayDistanceType.None or Enum.HumanoidDisplayDistanceType.Viewer;
	local v457 = getPlayersInfo();
	local v458 = {};
	if v84 == "intro" then
		for _, v460 in pairs(s_P:GetPlayers()) do
			pcall(function()
				if v460 ~= l_LocalPlayer_0 and v460.Character and v460.Character.Parent then
					v460.Character.Parent = s_ReS.Temp;
				end;
			end);
		end;
	else
		for v461, v462 in pairs(v457) do
			local l_status_0, l_result_0 = pcall(function()
				if not v461.Parent then
					if  (v462.IsPlayer and v461.Character and v461.Character.Parent) then
						v461.Character.Parent = nil;
					end;
					if v462.char then
						v462.char.Parent = nil;
					end
					return;
				else
					local l_char_0 = v462.char;
					if not (l_char_0 == v88) or l_includeSelf3P_0 then
						if l_char_0:GetAttribute("Ragdoll") then
							l_char_0.Parent = nil;
							return;
						else
							if v455 and l_preferences_0.HideOtherDifficulty then
								local l_Difficulty_0 = v462.gi.Difficulty;
								if l_Difficulty_0 and v455 ~= l_Difficulty_0 and (not (v455 < 3) or l_Difficulty_0 >= 3) then
									l_char_0.Parent = s_ReS.Temp;
									return;
								end;
							end;
							if l_char_0.Parent ~= workspace then
								local l_human_2 = v462.human;
								if l_human_2 and l_human_2.Health > 0 then
									l_char_0.Parent = workspace;
								end;
							end;
							if l_char_0.Parent then
								local l_torso_5 = v462.torso;
								if l_torso_5 then
									if (l_torso_5.Position - v452).Magnitude < 100 then
										v462.human.DisplayDistanceType = v456;
										local l_neck_2 = v462.neck;
										if l_neck_2 then
											local v468 = v462.camera.LookVector.Y or 0;
											v468 = (not (v468 <= 1) or v468 < -1) and 0 or math.clamp(v468, -1, 1);
											local v469 = lerpdt(v171[l_neck_2] or v468, v468, 0.3, v453);
											v458[l_neck_2] = v469;
											local v470 = math.sqrt(1 - math.abs(v469) ^ 2);
											l_neck_2.C0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, -v469, v470, 0, v470, v469);
										end;
										v170[l_char_0] = (v170[l_char_0] or 0) + v453 * l_torso_5.Velocity.Magnitude;
										if v170[l_char_0] > 6 then
											local l_v170_0 = v170;
											l_v170_0[l_char_0] = l_v170_0[l_char_0] - 6;
											l_v170_0 = v462.human;
											if l_v170_0 then
												local l_Crouch_0 = v462.gi.Crouch;
												local l_Gamemode_0 = v462.gi.Gamemode;
												local v474 = true;
												if l_Gamemode_0 ~= "NTF" then
													v474 = l_Gamemode_0 == "SD";
												end;
												if v474 then
													local _ = l_v170_0.WalkSpeed > 10;
													local v476 = randomItem(s_ReS.FootstepsMTF:GetChildren()):Clone();
													if l_Crouch_0 then
														v476.RollOffMaxDistance = v476.RollOffMaxDistance / 1.5;
														v476.Volume = v476.Volume / 2;
													end;
													v476.Parent = l_torso_5;
													v476:Play();
													s_D:AddItem(v476);
												else
													local v477 = "Generic";
													if l_v170_0.FloorMaterial == Enum.Material.Metal then
														v477 = "Metal";
													elseif not (l_v170_0.FloorMaterial ~= Enum.Material.Ground) or l_v170_0.FloorMaterial == Enum.Material.Mud then
														v477 = "Forest";
													end;
													if (not (v477 ~= "Metal") or v477 == "Generic") and l_Gamemode_0 == "CI" then
														v477 = "Heavy" .. v477;
													end;
													local v478 = l_v170_0.WalkSpeed > 10;
													local v479 = randomItem(s_ReS.Footsteps[v477][v478 and "Run" or "Walk"]:GetChildren()):Clone();
													if l_Crouch_0 then
														v479.RollOffMaxDistance = v479.RollOffMaxDistance / 1.5;
														v479.Volume = v479.Volume / 2;
													end;
													v479.Parent = l_torso_5;
													v479:Play();
													s_D:AddItem(v479);
												end;
											end;
										end;
										updateEquipment(v462, v453);
										if v178[v462] then
											updateWeapon(v462, v453);
											return;
										elseif v462.gi.SelectedWeapon > 0 then
											initializeWeapon(v462);
											return;
										end;
									else
										if v178[v462] then
											updateWeapon(v462, v453);
										elseif v462.gi.SelectedWeapon > 0 then
											initializeWeapon(v462);
										end;
										if v179[v462] then
											pcall(destroyEquipment, v462);
										end;
									end;
								end;
							end;
						end;
					end;
					return;
				end;
			end);
			if not l_status_0 then
				if v462.IsPlayer then
					warn("Cannot update character " .. ((v462.IsPlayer and v461.Character or v461) or v462.char):GetFullName() .. ": " .. l_result_0);
				end
			end;
		end;
	end;
	v171 = v458;
	for v482, v483 in pairs(v178) do
		if not v483.wm then
			v178[v482] = nil;
		elseif not v482.char:IsDescendantOf(workspace) then
			pcall(disconnectWeapon, v482);
		end;
	end;
	for v484, _ in pairs(v179) do
		if not v484.char:IsDescendantOf(workspace) then
			pcall(destroyEquipment, v484);
		end;
	end;
end;
beforeCam = function()
	l_CurrentCamera_0.CFrame = l_GameCamera_0.last;
	updateLighting();
end;
mainCam = function(v486)
	local v487 = 1;
	if v84 == "SCP1499" then
		if scp1499.Parent ~= workspace then
			scp1499.Parent = workspace;
		end;
	elseif scp1499.Parent then
		scp1499.Parent = nil;
	end;
	if v84 == "SCP860" then
		if forest.Parent ~= workspace.Forest then
			forest.Parent = workspace.Forest;
		end;
	elseif forest.Parent then
		forest.Parent = nil;
	end;
	if v85 then
		l_Atmosphere_0.CFrame = l_CurrentCamera_0.CFrame;
		l_Atmosphere_0.Parent = l_CurrentCamera_0;
	else
		l_Atmosphere_0.Parent = nil;
	end;
	if v100 > 0 then
		v100 = v100 - v486;
	end;
	if not (v84 ~= "gatea") or v84 == "exit1" then
		if l_preferences_0.CBSky then
			l_Clouds_0.Parent = nil;
			l_Sky_0.Parent = nil;
			l_SkyCB_0.Parent = s_L;
			l_AtmosphereFX_0.Parent = nil;
		else
			l_Clouds_0.Parent = l_Terrain_0;
			l_Sky_0.Parent = s_L;
			l_SkyCB_0.Parent = nil;
			l_AtmosphereFX_0.Parent = s_L;
		end;
		l_SCP1499Sky_0.Parent = nil;
		l_SCP1499Atmosphere_0.Parent = nil;
		l_SunRays_0.Parent = l_CurrentCamera_0;
	elseif v84 == "SCP1499" then
		l_Clouds_0.Parent = nil;
		l_Sky_0.Parent = nil;
		l_SkyCB_0.Parent = nil;
		l_SCP1499Sky_0.Parent = s_L;
		l_AtmosphereFX_0.Parent = nil;
		l_SCP1499Atmosphere_0.Parent = s_L;
		l_SunRays_0.Parent = nil;
	else
		l_Clouds_0.Parent = nil;
		l_Sky_0.Parent = nil;
		l_SkyCB_0.Parent = s_L;
		l_SCP1499Sky_0.Parent = nil;
		l_AtmosphereFX_0.Parent = nil;
		l_SCP1499Atmosphere_0.Parent = nil;
		l_SunRays_0.Parent = nil;
	end;
	l_Thunder_0.tick(v486);
	if v84 == "Menu" then
		l_Bloom_0.Parent = nil;
		l_DOFW_0.Parent = nil;
		v64.Parent = nil;
		l_MainMenu_0.tick(v486);
	else
		l_Bloom_0.Parent = l_CurrentCamera_0;
		v64.Parent = l_CurrentCamera_0;
		if v155 then
			l_CurrentCamera_0.CFrame = l_CurrentCamera_0.CFrame:Lerp(CFrame.new(l_CurrentCamera_0.CFrame.Position, v155), fromDT(0.05, v486));
			v155 = nil;
		end;
		l_CurrentCamera_0.CameraSubject = l_Humanoid_0;
		if v144 then
			l_CurrentCamera_0.FieldOfView = 65;
		else
			l_CurrentCamera_0.FieldOfView = (60 + (l_preferences_0.V_FOV or 0.25) * 20) / math.min(1 + v95 / 200, 1.2);
		end;
		v95 = math.max(0, v95 - v486 * 70);
		if v126 then
			l_CurrentCamera_0.CameraType = Enum.CameraType.Scriptable;
		else
			l_CurrentCamera_0.CameraType = Enum.CameraType.Custom;
		end;
		l_GameCamera_0:UpdateDelta();
		local v488 = 0;
		if v84 == "pocketdimension" then
			v488 = math.sin(time() / 10) / 2;
		end;
		local l_info_0 = l_Weapon_0.info;
		if l_info_0 then
			local _ = l_info_0.rig;
			local l_rigprop_0 = l_info_0.rigprop;
			local l_Aim_0 = l_rigprop_0.Aim;
			v487 = 1 - l_Aim_0 * 0.5;
			local l_deltaX_0 = l_GameCamera_0.deltaX;
			local v494 = eify(l_GameCamera_0.deltaY);
			local l_errorX_0 = l_rigprop_0.errorX;
			local l_errorY_0 = l_rigprop_0.errorY;
			l_rigprop_0.errorX = l_GameCamera_0.tempX * (1 - l_Aim_0) + math.clamp(l_errorX_0 + (l_deltaX_0 - l_errorX_0 * math.abs(l_deltaX_0 / 2)) * 1.2, -3, 3) * l_Aim_0;
			l_rigprop_0.errorY = math.clamp(l_errorY_0 + (v494 - l_errorY_0 * math.abs(v494 / 2)) * 0.8, -6, 6);
			local _ = v113 + 2.4;
			local v498 = time() % 1000;
			local v499 = math.noise(v498 * 3 + 48) * 0.007;
			local v500 = math.noise(-v498 * 3 + 48) * 0.007;
			l_rigprop_0.errorX2 = math.clamp(l_rigprop_0.errorX2 + math.tanh((l_deltaX_0 - v500) * 2) * 1.7 + v500, -2, 2);
			l_rigprop_0.errorY2 = math.clamp(l_rigprop_0.errorY2 + math.tanh((v494 - v499) * 2) * 1.7 + v499, -2, 2);
		end;
		if v124 and not v99.e_106 then
			local v501 = 1 - (l_preferences_0.Sensitivity or 0.25);
			l_GameCamera_0:UpdateSmooth(v486, v501);
		else
			l_GameCamera_0:UpdateSmooth(v486, 0.88);
		end;
		if l_Weapon_0.vm and l_Weapon_0.info then
			l_DOFW_0.NearIntensity = l_Weapon_0.info.rigprop.Aim ^ 0.5 * 0.25;
			l_DOFW_0.Parent = l_CurrentCamera_0;
		else
			l_DOFW_0.Parent = nil;
		end;
		if v136 and v93 then
			local v502 = v93.inv[v136];
			local v503 = v502 and v502.name;
			if v503 and v503:sub(1, 4) == "Vest" then
				v487 = if v503 == "Vest2" then v487 / 3 else v487 / 2;
			end;
		end;
		local l_tempX_0 = l_GameCamera_0.tempX;
		local l_tempY_0 = l_GameCamera_0.tempY;
		local v506 = l_GameCamera_0.smoothX + l_GameCamera_0.smoothX2;
		local v507 = l_GameCamera_0.smoothY + l_GameCamera_0.smoothY2;
		if v124 and not v99.e_106 then
			v108 = 0;
			v106 = nil;
			v107 = nil;
			if v144 then
				l_CurrentCamera_0.CFrame = v144.CFrame * CFrame.new(0, 0, 1);
			elseif l_Humanoid_0.Sit then
				l_CurrentCamera_0.CFrame = CFrame.new(v88.HumanoidRootPart.Position + Vector3.new(0, 1.5, 0)) * CFrame.fromEulerAnglesYXZ(l_tempX_0 - v506, l_tempY_0 - v507, 0);
				l_GameCamera_0.current = l_CurrentCamera_0.CFrame;
			else
				local l_LookVector_0 = l_CurrentCamera_0.CFrame.LookVector;
				local v509 = math.atan2(-l_LookVector_0.X, -l_LookVector_0.Z);
				v88.HumanoidRootPart.CFrame = CFrame.new(v88.HumanoidRootPart.Position) * CFrame.Angles(0, v509, 0);
				l_Humanoid_0.AutoRotate = false;
				local v510 = 1 + (1 - (l_Humanoid_0.Health / l_Humanoid_0.MaxHealth) ^ 3) * 10;
				l_CurrentCamera_0.CFrame = CFrame.new(v88.HumanoidRootPart.Position + Vector3.new(0, 2 + math.sin(v113 * 2) * 0.15, 0)) * CFrame.fromEulerAnglesYXZ(l_tempX_0 - v506, l_tempY_0 - v507, math.sin(v113) * 0.01 * v510 + v488);
				l_GameCamera_0.current = l_CurrentCamera_0.CFrame;
				local l_info_1 = l_Weapon_0.info;
				local l_vm_0 = l_Weapon_0.vm;
				if l_vm_0 and l_info_1 and l_info_1.type ~= "Melee" then
					local v513 = l_vm_0.PrimaryPart.CFrame:ToObjectSpace(l_vm_0.AimPart.CFrame) * l_info_1.config.root;
					local l_l_CurrentCamera_0_0 = l_CurrentCamera_0;
					l_l_CurrentCamera_0_0.CFrame = l_l_CurrentCamera_0_0.CFrame * CFrame.new():Lerp(v513 * CFrame.new(0, 0, l_info_1.rigprop.Wall), smooth(l_info_1.rigprop.Aim));
				end;
			end;
		else
			v108 = v108 + v486;
			v107 = v107 or math.random(0, 1);
			local v515 = v107 == 0 and -1 or 1;
			v106 = v106 or l_CurrentCamera_0.CFrame;
			local v516, v517 = v106:ToEulerAnglesYXZ();
			local l_Position_0 = (CFrame.Angles(0, v517, 0) * CFrame.new(0, 0, v515 * math.sin((math.min(1.5707963267948966, v108 * 2.2))))).Position;
			l_CurrentCamera_0.CFrame = CFrame.new(v105 + l_Position_0 + Vector3.new(0, 2 + math.sin(v113 * 2) * 0.15 - math.min(4.1, (math.tan((math.min(1.5707963267948966, v108 * 2.2))))), 0)) * CFrame.fromEulerAnglesYXZ(math.clamp(v516 + v108 * v515, -1.5707963267948966, 1.5707963267948966) + v506, v517, math.sin(v113) * 0.01 * 11 + v488) * CFrame.Angles(0, v507, 0);
			if e_necksnap then
				local l_l_CurrentCamera_0_1 = l_CurrentCamera_0;
				l_l_CurrentCamera_0_1.CFrame = l_l_CurrentCamera_0_1.CFrame * CFrame.Angles(0, e_necksnap, 0);
			end;
			l_GameCamera_0.current = l_CurrentCamera_0.CFrame;
		end;
		l_tempX_0 = l_Weapon_0.offsetX;
		l_tempY_0 = l_Weapon_0.offsetY;
		v506 = l_Weapon_0.offsetZ;
		v507 = l_CurrentCamera_0;
		v507.CFrame = v507.CFrame * CFrame.fromEulerAnglesYXZ(l_tempX_0, l_tempY_0, v506);
	end;
	l_Sensitivity_0(v487);
end;
secondaryCam = function(_)
	if v84 ~= "Menu" then
		if not (v144 or l_Humanoid_0.Sit) then
			local l_info_2 = l_Weapon_0.info;
			local l_vm_1 = l_Weapon_0.vm;
			if l_vm_1 and l_info_2 and l_info_2.type ~= "Melee" and l_info_2.camera then
				local l_l_CurrentCamera_0_2 = l_CurrentCamera_0;
				l_l_CurrentCamera_0_2.CFrame = l_l_CurrentCamera_0_2.CFrame * l_vm_1.PrimaryPart.CFrame:ToObjectSpace(l_info_2.camera.CFrame);
			end;
		end;
		if v112 > 0 then
			local v524 = v112 * 0.12;
			local l_l_CurrentCamera_0_3 = l_CurrentCamera_0;
			l_l_CurrentCamera_0_3.CFrame = l_l_CurrentCamera_0_3.CFrame * CFrame.fromEulerAnglesYXZ(v524 * (math.random() - 0.5), v524 * (math.random() - 0.5), 0);
		end;
	end;
end;
getItems = function()
	local l_Items_0 = v77.data.Items;
	local v1116 = {};
	local v1117 = {
		l_Items_0.All, 
		l_Items_0:FindFirstChild(l_LocalPlayer_0.UserId)
	};
	if v90 then
		if v90:GetAttribute("Difficulty") == 3 then
			table.insert(v1117, l_Items_0.Keter);
		elseif v90:GetAttribute("Difficulty") == 2 then
			table.insert(v1117, l_Items_0.Euclid);
		elseif v90:GetAttribute("Difficulty") == 1 then
			table.insert(v1117, l_Items_0.Safe);
		end;
	end;
	for _, v1119 in pairs(v1117) do
		for _, v1121 in pairs(v1119:GetChildren()) do
			table.insert(v1116, v1121);
		end;
	end;
	return v1116;
end;
isItemAvailable = function(v1113, v1114)
	if v1113 and v1114 and v1114.Parent then
		if v1114.Parent.Name == "All" then
			return v84 ~= "intro";
		elseif v1114.Parent.Name == tostring(l_LocalPlayer_0.UserId) then
			return true;
		elseif v1113:GetAttribute("Difficulty") == 3 then
			if v1114.Parent.Name == "Keter" then
				return v84 ~= "intro";
			end;
		elseif v1113:GetAttribute("Difficulty") == 2 then
			if v1114.Parent.Name == "Euclid" then
				return v84 ~= "intro";
			end;
		elseif v1114.Parent.Name == "Safe" then
			return v84 ~= "intro";
		end;
	end;
end;
bgLoop = function(v526) -- Coisa 1
	local l_Position_1 = l_GameCamera_0.current.Position;
	_G.ChatRadio = false;
	debug.profilebegin("Update Doors");
	for v528, v529 in pairs(v174) do
		if (v529 - l_Position_1).Magnitude < 64 then
			animateDoor(v528, v526);
			if v164[v528] then
				local l_v164_0 = v164;
				l_v164_0[v528] = l_v164_0[v528] - v526;
				if v164[v528] <= 0 then
					v164[v528] = nil;
				end;
			end;
		end;
	end;
	debug.profileend();
	debug.profilebegin("Update Items");
	for _, v532 in pairs(getItems()) do
		if (v532.Position - l_Position_1).Magnitude < 48 and isItemAvailable(v90, v532) then
			local l_Name_0 = v532.Name;
			local v534 = v169[v532];
			if not v534 then
				local l_v532_Attribute_0 = v532:GetAttribute("ItemData");
				warn(l_Name_0)
				if string.find(l_Name_0, "Document") then
					v534 = s_ReS.ItemModels[l_ItemsInfo_0[v532.Name].model or "Document"]:Clone();
				elseif l_Name_0 == "Clipboard" and l_v532_Attribute_0 then
					v534 = s_ReS.ItemModels.Clipboard:Clone();
					local v536 = s_Http:JSONDecode(l_v532_Attribute_0);
					if v536.items then
						local v537 = true;
						for v538 = 1, v536.slots or 10 do
							if v536.items[v538] ~= "" then
								v537 = false;
							end;
						end;
						if not v537 then
							local v539 = s_ReS.Misc.ClipboardPaper:Clone();
							v539.Name = "PM";
							v539.CFrame = v534.CFrame * v534.PaperAtt.CFrame;
							v539.Parent = v534;
						end;
					end;
				elseif v532.Name == "Cup" and l_v532_Attribute_0 then
					v534 = s_ReS.ItemModels.Cup:Clone();
					local v540 = s_Http:JSONDecode(l_v532_Attribute_0);
					if v540.liquid then
						local v541 = s_ReS.Misc.Liquid:Clone();
						v541.Name = "LM";
						v541.CFrame = v534.CFrame * v534.Liquid.CFrame;
						local v542 = nil;
						local l_liquid_0 = v540.liquid;
						for _, v545 in ipairs(l_Liquids_0) do
							if v545.exact == l_liquid_0 then
								v542 = v545;
								break;
							end;
						end;
						if v542 then
							v541.Transparency = v542.transparency;
							v541.Color = v542.color;
							v541.Material = v542.glow and Enum.Material.Neon or Enum.Material.SmoothPlastic;
						end;
						v541.Parent = v534;
					end;
				else
					v534 = s_ReS.ItemModels[l_Name_0]:Clone();
				end;
				v534.CanCollide = false;
				v534.Anchored = true;
				v534.CFrame = CFrame.Angles(0, 6.283185307179586 * math.random(), 0) * v534.CFrame;
				v534.Parent = l_CurrentCamera_0;
				v169[v532] = v534;
			end;
			local l_v534_Attribute_0 = v534:GetAttribute("Origin");
			v534.Position = l_v534_Attribute_0 and v532.Position + Vector3.new(0, -l_v534_Attribute_0, 0) or v532.Position;
			if l_Name_0 == "Cup" and v534:FindFirstChild("LM") then
				v534.LM.CFrame = v534.CFrame * v534.Liquid.CFrame;
			elseif l_Name_0 == "Clipboard" and v534:FindFirstChild("PM") then
				v534.PM.CFrame = v534.CFrame * v534.PaperAtt.CFrame;
			end;
		elseif v169[v532] then
			v169[v532]:Destroy();
			v169[v532] = nil;
		end;
	end;
	for v547, _ in pairs(v169) do
		if not v547.Parent then
			v169[v547]:Destroy();
			v169[v547] = nil;
		end;
	end;
	debug.profileend();
	debug.profilebegin("Update Pivots");
	for _, v550 in pairs(v77.data.Pivots:GetChildren()) do
		if (v550.Base.Position - l_Position_1).Magnitude < 48 then
			if v550.Name == "Key914" then
				if v550:FindFirstChild("State") then
					local _ = v550.State.Value;
				end;
				local v552 = v167[v550] or 0;
				v552 = lerpdt(v552, v550.Rotation.Value, 0.5, v526);
				v550.Pivot.CFrame = v550.Base.CFrame * CFrame.Angles(0, 0, -3.141592653589793 - v552 * 3.141592653589793);
				v167[v550] = v552;
			elseif v550.Name == "Knob914" then
				if v550:FindFirstChild("State") then
					local _ = v550.State.Value;
				end;
				local v554 = v167[v550] or 0;
				v554 = lerpdt(v554, v550.Rotation.Value, 0.5, v526);
				v550.Pivot.CFrame = v550.Base.CFrame * CFrame.Angles(0, 3.141592653589793, -v554 * 3.141592653589793 / 2) * CFrame.new(0, 0.047, 0);
				v167[v550] = v554;
			elseif v550.Name == "Cover008" then
				if v550:FindFirstChild("State") then
					local _ = v550.State.Value;
				end;
				local v556 = v165[v550] or 0;
				v556 = lerpdt(v556, v550.Rotation.Value, 0.5, v526);
				v550.Pivot.CFrame = v550.Base.CFrame * CFrame.Angles(-v556 * 3.141592653589793 / 4 - 0.7853981633974483, 0, 0) * v550.Base.Attachment.CFrame;
				v165[v550] = v556;
				if math.abs(v166[v550] or v550.Rotation.Value) ~= 1 and math.abs(v550.Rotation.Value) == 1 then
					local l_Sound_3 = Instance.new("Sound");
					l_Sound_3.SoundId = v41;
					playSoundAtPart(v550.Base, l_Sound_3);
				end;
				v166[v550] = v550.Rotation.Value;
			end;
		end;
	end;
	debug.profileend();
	debug.profilebegin("Update Players");
	updatePlayers(l_Position_1, v526);
	debug.profileend();
	updateAmbience(v526);
	l_Music_0.tick(v526);
end;
clearWeapon = function()
	l_Weapon_0.clear();
	l_Weapon_0.slot = 0;
	re_sw:FireServer();
	v90:SetAttribute("SelectedWeapon", 0);
	pcall(s_CAS.UnbindAction, s_CAS, "fire");
	v81.inv.WeaponInv["W" .. 1].BorderSizePixel = 0;
	v81.inv.WeaponInv["W" .. 2].BorderSizePixel = 0;
	v81.inv.WeaponInv["W" .. 3].BorderSizePixel = 0;
	v81.inv.WeaponInv["W" .. 4].BorderSizePixel = 0;
end;
dropItem = function(v1145, v1146)
	if v96 and not v1146 then
		local l_v96_0 = v96;
		local v1148 = getSlot(v96);
		local v1149 = false;
		if v1148 ~= "" then
			v1149 = s_Http:JSONDecode(v1148);
		end;
		if v1149 then
			local v1150 = v1149.items and v1149.items[v1145];
			if v1150 and v1150.name then
				local l_name_2 = v1150.name;
				if l_name_2:sub(1, 8) == "Document" then
					l_name_2 = "Document";
				end;
				local v1152 = l_ItemsInfo_0[l_name_2];
				v81.inv[v1152.pickSound or "Use1"]:Play();
			end;
			v1149.items[v1145] = "";
			setSlot(v96, s_Http:JSONEncode(v1149));
			rf_drop:InvokeServer(v1145, l_v96_0);
			return;
		end;
	else
		local v1153 = getSlot(v1145);
		local v1154 = l_InvManage_0.getSlotData(v1153);
		if v1154 and v1154.name then
			local l_name_3 = v1154.name;
			if l_name_3:sub(1, 8) == "Document" then
				l_name_3 = "Document";
			end;
			local v1156 = l_ItemsInfo_0[l_name_3];
			v81.inv[v1156.pickSound or "Use1"]:Play();
		end;
		setSlot(v1145, "");
		if v133 == v1145 then
			v133 = nil;
		elseif v136 == v1145 then
			v136 = nil;
		elseif v134 == v1145 then
			v134 = nil;
			update966(false);
		elseif v135 == v1145 then
			v135 = nil;
		elseif v93.gi.Primary == v1145 then
			v93.gi.Primary = 0;
			if l_Weapon_0.slot == 1 then
				clearWeapon();
			end;
		elseif v93.gi.Secondary == v1145 then
			v93.gi.Secondary = 0;
			if l_Weapon_0.slot == 2 then
				clearWeapon();
			end;
		elseif v93.gi.Melee == v1145 then
			v93.gi.Melee = 0;
			if l_Weapon_0.slot == 3 then
				clearWeapon();
			end;
		elseif v93.gi.Special == v1145 then
			v93.gi.Special = 0;
			if l_Weapon_0.slot == 4 then
				clearWeapon();
			end;
		end;
		rf_drop:InvokeServer(v1145);
	end;
end;
updateNavigator = function()
	if v159 then
		if v161 then
			for _, v1015 in pairs(v159) do
				for _, v1017 in pairs(v1015) do
					v1017.Back.BackgroundTransparency = 0;
					v1017.Front.BackgroundTransparency = 0;
					v1017.Left.BackgroundTransparency = 0;
					v1017.Right.BackgroundTransparency = 0;
				end;
			end;
		else
			local v1018 = {};
			local l_v1018_0 = v1018
			local function _(v1020, v1021, v1022, v1023)
				local v1024 = v159[v1020] and v159[v1020][v1021];
				if v1024 and not l_v1018_0[v1024] then
					l_v1018_0[v1024] = l_v1018_0[v1024] or v1023;
					v1024.Back.BackgroundTransparency = v1022;
					v1024.Front.BackgroundTransparency = v1022;
					v1024.Left.BackgroundTransparency = v1022;
					v1024.Right.BackgroundTransparency = v1022;
					return true;
				else
					return;
				end;
			end;
			local function D(v1026, v1027)
				local v1028 = v159[v1026] and v159[v1026][v1027];
				if v1028 and not l_v1018_0[v1028] then
					l_v1018_0[v1028] = l_v1018_0[v1028] or true;
					v1028.Back.BackgroundTransparency = 0;
					v1028.Front.BackgroundTransparency = 0;
					v1028.Left.BackgroundTransparency = 0;
					v1028.Right.BackgroundTransparency = 0;
					return;
				else
					return;
				end;
			end;
			for _, v1031 in pairs(v159) do
				for _, v1033 in pairs(v1031) do
					v1033.Back.BackgroundTransparency = 1;
					v1033.Front.BackgroundTransparency = 1;
					v1033.Left.BackgroundTransparency = 1;
					v1033.Right.BackgroundTransparency = 1;
				end;
			end;
			for v1034, v1035 in pairs(v160) do
				for v1036, _ in pairs(v1035) do
					local v1038 = v159[v1034] and v159[v1034][v1036];
					if v1038 and not v1018[v1038] then
						v1018[v1038] = v1018[v1038] or true;
						v1038.Back.BackgroundTransparency = 0;
						v1038.Front.BackgroundTransparency = 0;
						v1038.Left.BackgroundTransparency = 0;
						v1038.Right.BackgroundTransparency = 0;
					end;
				end;
			end;
		end;
	end;
	local l_Radar_1 = v81.hud.SNav.Screen.Radar;
	for _, v1041 in pairs(l_Radar_1:GetChildren()) do
		if v1041.Name:sub(1, 4) == "Ring" then
			v1041.Visible = false;
		end;
	end;
	for _, v1043 in pairs(l_Radar_1.SCPs:GetChildren()) do
		if v1043.ClassName == "TextLabel" then
			v1043.Visible = false;
		end;
	end;
end;
useItem = function(v1169)
	v81.invDouble = 0;
	local v1170 = nil;
	local v1171 = nil;
	if v96 then
		local v1172 = l_InvManage_0.getSlotData(getSlot(v96));
		if v1172 and v1172.items then
			local v1173 = v1172.items[v1169];
			if v1173 ~= "" then
				v1171 = s_Http:JSONDecode(v1173);
				v1170 = v1173;
			end;
		end;
	else
		v1170 = getSlot(v1169);
		if v1170 == "" then
			return;
		else
			v1171 = s_Http:JSONDecode(v1170);
		end;
	end;
	if v1171 and v1171.name then
		if v1171.name == "Clipboard" then
			v81.inv.Use1:Play();
			v96 = v1169;
			v81.invDrag = nil;
			updateInventory();
			return true;
		elseif v1171.name == "Wallet" then
			v81.inv.Use2:Play();
			v96 = v1169;
			v81.invDrag = nil;
			updateInventory();
			return true;
		elseif v1171.name == "SCP207" then
			v81.inv.Use5:Play();
			v152 = v1169;
			v151 = 2;
			return;
		elseif v1171.name == "SCP500" then
			v81.inv.Use2:Play();
			if v134 then
				local v1174 = l_InvManage_0.getSlotData(getSlot(v134));
				local v1175 = v1174 and v1174.name and l_ItemsInfo_0[v1174.name];
				if v1175 then
					displayMessage("You can't use SCP-500-01 while wearing a " .. v1175.name:lower());
					return;
				end;
			else
				v111 = 20;
				v99.e_009 = nil;
				v99.e_207 = nil;
				v99.e_1079 = 0;
				setSlot(v1169, "");
				re_use:FireServer(v1169);
				return;
			end;
		elseif v1171.name == "SCP513" then
			v81.inv.Use2:Play();
			playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Bell1, 1);
			if not v99.e_513 then
				create513();
			end;
			re_use:FireServer(v1169);
			return;
		elseif v1171.name == "SCP860" then
			v81.inv.Use3:Play();
			v140 = "SCP860";
			return;
		elseif v1171.name == "SCP1025" then
			v81.inv.Use0:Play();
			v81:DisplayDocument(randomItem({
				l_TextureIndexer_0["1025_0"], 
				l_TextureIndexer_0["1025_1"], 
				l_TextureIndexer_0["1025_2"], 
				l_TextureIndexer_0["1025_3"], 
				l_TextureIndexer_0["1025_4"], 
				l_TextureIndexer_0["1025_5"]
			}));
			re_use:FireServer(v1169);
			return;
		elseif v1171.name == "SCP1079Sweet" then
			v81.inv.Use2:Play();
			if v134 then
				local v1176 = l_InvManage_0.getSlotData(getSlot(v134));
				local v1177 = v1176 and v1176.name and l_ItemsInfo_0[v1176.name];
				if v1177 then
					displayMessage("You can't swallow the candy while wearing a " .. v1177.lower);
					return;
				end;
			else
				if math.random(1, 2) == 1 then
					displayMessage("You swallowed candy. You are bleeding.");
				else
					displayMessage("You swallowed candy. You feel a good taste.");
				end;
				playGlobalSound("rbxassetid://" .. randomItem({
					l_SoundIndexer_0.BubbleSizz0, 
					l_SoundIndexer_0.BubbleSizz1
				}), 1);
				local v1178 = raycast(l_CurrentCamera_0.CFrame.Position, Vector3.new(0, -10, 0), {
					l_CurrentCamera_0, 
					v88
				});
				if v1178 then
					local v1179 = createDecal(v1178, 2196791954, 1 + math.random());
					v1179.Decal.Transparency = 0.25;
					v1179.Decal.Color3 = Color3.new(1, 0.494118, 0.631373);
				end;
				setSlot(v1169, "");
				re_use:FireServer(v1169);
				local l_v99_36 = v99;
				l_v99_36.e_1079 = l_v99_36.e_1079 + 1;
				if v99.e_1079 >= 4 then
					takeDamage(10);
					return;
				end;
			end;
		elseif v1171.name == "SCP1079" then
			v81.inv.Use2:Play();
			local v1181 = l_InvManage_0.findFirstEmpty(v90);
			if v1181 then
				re_use:FireServer(v1169);
				setSlot(v1181, s_Http:JSONEncode({
					name = "SCP1079Sweet"
				}));
				v1171.limit = (v1171.limit or 0) + 1;
				if v1171.limit >= 4 then
					setSlot(v1169, "");
					return;
				else
					setSlot(v1169, s_Http:JSONEncode(v1171));
					return;
				end;
			else
				displayMessage("You cannot carry any more items.");
				return;
			end;
		elseif v1171.name:sub(1, 8) == "Eyedrops" then
			v81.inv.Use1:Play();
			re_use:FireServer(v1169);
			setSlot(v1169, "");
			local l_name_4 = v1171.name;
			if l_name_4 == "EyedropsFine" then
				displayMessage("You used the eyedrops. Your eyes feel very moisturized.");
				return;
			elseif l_name_4 == "EyedropsVeryFine" then
				displayMessage("You used the eyedrops. Your eyes feel very moisturized.");
				return;
			elseif l_name_4 == "EyedropsDetergent" then
				displayMessage("You used the 111111111. Your eyes feel 7777777777.");
				return;
			else
				displayMessage("You used the eyedrops. Your eyes feel moisturized.");
				return;
			end;
		elseif v1171.name == "Cup" then
			v81.inv.Use2:Play();
			if v1171.liquid then
				local v1183 = nil;
				for _, v1185 in ipairs(l_Liquids_0) do
					if v1185.exact == v1171.liquid then
						v1183 = v1185;
						break;
					end;
				end;
				if v1183 then
					re_use:FireServer(v1169);
					if not v1183.nodrink then
						playGlobalSound("rbxassetid://" .. "5902778913");
						setSlot(v1169, s_Http:JSONEncode({
							name = "Cup"
						}));
					end;
					if v1183.message then
						displayMessage(v1183.message);
					end;
					if v1171.liquid == "fear" then
						playGlobalSound("rbxassetid://" .. 497250117);
						table.insert(v97, s_RS.RenderStepped:Connect(function(v1186)
							v101 = v101 - v1186 * 60;
						end));
						return;
					elseif v1171.liquid == "electricity" then
						playGlobalSound("rbxassetid://" .. 537581469);
						v99.e_shock = 0.9;
						return;
					end;
				end;
			else
				displayMessage("There is nothing to drink in the cup.");
				return;
			end;
		elseif not (v1171.name ~= "FirstAidKit" and v1171.name ~= "FineFirstAidKit") or v1171.name == "BlueFirstAidKit" then
			v81.inv.Use1:Play();
			if not (l_Humanoid_0.Health >= l_Humanoid_0.MaxHealth) or (v90:GetAttribute("Bloodloss") or 0) > 0 then
				v152 = v1169;
				v151 = 6;
				return;
			else
				displayMessage("You do not need to use a first aid right now.");
				return;
			end;
		elseif v1171.name == "StrangeBottle" then
			v81.inv.Use1:Play();
			({
				function()
					re_use:FireServer(v1169, 1);
					displayMessage("You started bleeding heavily.");
				end, 
				function()
					re_use:FireServer(v1169, 2);
					displayMessage("Your wounds are healing up rapidly.");
				end, 
				function()
					re_use:FireServer(v1169, 3);
					displayMessage("You feel much better.");
				end, 
				function()
					re_use:FireServer(v1169, 4);
					displayMessage("You feel nauseated.");
				end, 
				function()
					re_use:FireServer(v1169, 5);
					local l_pocketdimension_0 = workspace.Rooms:FindFirstChild("pocketdimension");
					if l_pocketdimension_0 then
						playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Enter);
						v88.HumanoidRootPart.CFrame = l_pocketdimension_0.Base.CFrame * CFrame.new(0, 5, 0);
						displayMessage("For some inexplicable reason, you find yourself inside the pocket dimension.");
						v110 = -0.1;
						doBlink();
						enterArea("pocketdimension");
						re_pd:FireServer(true);
						return;
					else
						displayMessage("You started bleeding heavily.");
						return;
					end;
				end
			})[math.random(5)]();
			return;
		else
			local v1188 = l_ItemsInfo_0[v1171.name];
			if v1188.message then
				displayMessage(v1188.message);
			end;
			if v1188.weapon then
				v81.inv.Use1:Play();
				local l_weapon_0 = v1188.weapon;
				if l_weapon_0 == l_Weapon_0.slot then
					clearWeapon();
				end;
				v90:SetAttribute(v53[l_weapon_0], v1169);
				re_use:FireServer(v1169);
				return;
			elseif v1188.ammo then
				v81.inv.Use1:Play();
				local v1190 = false;
				local v1191 = nil;
				local v1192 = nil;
				local v1193 = nil;
				for v1194 = 1, 8 do
					local v1195 = (v1194 - 1) % 4 + 1;
					local v1196 = getWSlot(v1195);
					if v1196 ~= "" then
						local v1197 = s_Http:JSONDecode(v1196);
						local v1198 = require(s_ReS.WeaponData[v1197.name].Config);
						if (not (v1197.name ~= v1188.ammo) or v1198.ammo == v1188.ammo) and v1198.maxreserve * v1198.max > (v1197.reserve or 0) and (not (v1194 <= 4) or v1188.amount == v1198.max) then
							v1197.reserve = math.min(v1198.maxreserve * v1198.max, (v1197.reserve or 0) + v1188.amount);
							v1190 = l_ItemsInfo_0[v1197.name].name;
							v1191 = v1195;
							v1192 = v1197;
							v1193 = v1198;
							setWSlot(v1195, s_Http:JSONEncode(v1197));
							break;
						end;
					end;
				end;
				if not v1190 then
					displayMessage("You don't have a weapon that uses this type of magazine.");
				else
					setSlot(v1169, "");
					displayMessage("Added 1 magazine for the " .. v1190);
					if l_Weapon_0.slot == v1191 then
						l_Weapon_0.setAmmo(v1192.ammo or 0, v1192.reserve or 0, v1193.max, v1193.maxreserve);
					end;
				end;
				re_use:FireServer(v1169);
				return;
			elseif v1188.equip then
				v81.inv.Use1:Play();
				if v133 == v1169 then
					re_use:FireServer(v1169, false);
					v133 = nil;
					return;
				else
					re_use:FireServer(v1169, true);
					v133 = v1169;
					if v1171.name == "RadioFine" then
						local l_Screen_3 = v81.hud.Radio.Screen;
						l_Screen_3["Battery" .. 1].Visible = false;
						l_Screen_3["Battery" .. 2].Visible = false;
						l_Screen_3["Battery" .. 3].Visible = false;
						l_Screen_3["Battery" .. 4].Visible = false;
						l_Screen_3["Battery" .. 5].Visible = false;
						l_Screen_3.InfS.Visible = true;
						return;
					elseif not (v1171.name ~= "Radio") or v1171.name == "Radio18V" then
						local l_Screen_4 = v81.hud.Radio.Screen;
						l_Screen_4["Battery" .. 1].Visible = true;
						l_Screen_4["Battery" .. 2].Visible = true;
						l_Screen_4["Battery" .. 3].Visible = true;
						l_Screen_4["Battery" .. 4].Visible = true;
						l_Screen_4["Battery" .. 5].Visible = true;
						l_Screen_4.InfS.Visible = false;
						return;
					elseif v1171.name:sub(1, 4) == "SNav" then
						v161 = v1171.name ~= "SNav";
						updateNavigator();
						return;
					end;
				end;
			elseif v1188.document then
				v81.inv.Use0:Play();
				v81:DisplayDocument(v1188);
				if v99.i_tutorial == 2 then
					v99.i_tutorial = nil;
					v99.i_state = 8;
					return;
				end;
			elseif v1188.keycard then
				v81.inv.Use1:Play();
				v138 = v1169;
				return;
			elseif v1188.dna then
				v81.inv.Use2:Play();
				v139 = v1169;
				return;
			elseif v1188.face then
				v81.inv.Use2:Play();
				if v134 == v1169 then
					if v1188.progress then
						v152 = v1169;
						v151 = 1.5;
						return;
					else
						if v1188.messageOff then
							displayMessage(v1188.messageOff);
						end;
						re_use:FireServer(v1169, false);
						v134 = nil;
						update966(false);
						if v1171.name == "SCP1499" then
							v99.e_1499_enter = v88.HumanoidRootPart.Position;
							v88.HumanoidRootPart.CFrame = CFrame.new(v99.e_1499_exit);
							playGlobalSound("rbxassetid://" .. l_SoundIndexer_0["1499/Exit"]);
							return;
						end;
					end;
				elseif v84 == "SCP1499" then
					displayMessage("You need to take off SCP-1499 before you can wear it.");
					return;
				elseif v1188.progress then
					v152 = v1169;
					v151 = 1.5;
					return;
				else
					if v1188.messageOn then
						displayMessage(v1188.messageOn);
					end;
					re_use:FireServer(v1169, true);
					v134 = v1169;
					attempt895JS();
					if v1171.name == "NVG" then
						local l_NVGMeter_0 = v81.fore.NVGMeter;
						l_NVGMeter_0.Icon.Image = "rbxassetid://" .. l_TextureIndexer_0.battery_GREEN;
						l_NVGMeter_0.Icon.ImageColor3 = Color3.new(0, 1, 0);
						for v1202 = 1, 11 do
							l_NVGMeter_0["Battery" .. v1202].BackgroundColor3 = Color3.new(0, 1, 0);
						end;
						l_NVGMeter_0.Visible = true;
						v81.fore.NVGS.Visible = false;
						update966(true);
						return;
					elseif v1171.name == "NVG_S" then
						local l_NVGMeter_1 = v81.fore.NVGMeter;
						l_NVGMeter_1.Icon.Image = "rbxassetid://" .. l_TextureIndexer_0.battery_BLUE;
						l_NVGMeter_1.Icon.ImageColor3 = Color3.new(0, 0, 1);
						for v1204 = 1, 11 do
							l_NVGMeter_1["Battery" .. v1204].BackgroundColor3 = Color3.new(0, 0, 1);
						end;
						l_NVGMeter_1.Visible = true;
						v81.fore.NVGS.Visible = true;
						update966(true);
						return;
					elseif v1171.name == "NVG_R" then
						v81.fore.NVGMeter.Visible = false;
						v81.fore.NVGS.Visible = false;
						update966(true);
						return;
					elseif v1171.name == "SCRAMBLE" then
						local l_NVGMeter_2 = v81.fore.NVGMeter;
						l_NVGMeter_2.Icon.Image = "rbxassetid://" .. l_TextureIndexer_0.battery_BLUE;
						l_NVGMeter_2.Icon.ImageColor3 = Color3.new(0.5, 0.5, 0.5);
						for v1206 = 1, 11 do
							l_NVGMeter_2["Battery" .. v1206].BackgroundColor3 = Color3.new(0.5, 0.5, 0.5);
						end;
						l_NVGMeter_2.Visible = true;
						v81.fore.NVGS.Visible = false;
						update966(false);
						return;
					else
						v81.fore.NVGMeter.Visible = false;
						v81.fore.NVGS.Visible = false;
						update966(false);
						if v1171.name == "SCP1499" then
							v99.e_1499_exit = v88.HumanoidRootPart.Position;
							playGlobalSound("rbxassetid://" .. l_SoundIndexer_0["1499/Enter"]);
							v88.HumanoidRootPart.CFrame = CFrame.new(v99.e_1499_enter or scp1499:GetAttribute("offset") + Vector3.new(6086, 304, -2292.5) / 1024 * 24);
							return;
						end;
					end;
				end;
			elseif v1188.hand then
				v81.inv.Use3:Play();
				if v135 == v1169 then
					if v1188.messageOff then
						displayMessage(v1188.messageOff);
					end;
					re_use:FireServer(v1169, false);
					v135 = nil;
					return;
				else
					if v1188.messageOn then
						displayMessage(v1188.messageOn);
					end;
					re_use:FireServer(v1169, true);
					v135 = v1169;
					return;
				end;
			elseif v1188.body then
				v81.inv.Use2:Play();
				if v136 then
					if v136 == v1169 then
						v152 = v1169;
						v151 = 6;
						return;
					else
						local v1207 = l_InvManage_0.getSlotData(getSlot(v136));
						if v1207 and v1207.name then
							local v1208 = l_ItemsInfo_0[v1207.name];
							displayMessage("You need to take off the " .. (v1208.lower or v1208.name) .. " in order to put on a " .. (v1188.lower or v1188.name) .. ".");
							return;
						end;
					end;
				else
					v154 = true;
					v152 = v1169;
					v151 = 6;
					return;
				end;
			else
				v81.inv[v1188.pickSound or "Use1"]:Play();
			end;
		end;
	end;
end;
print("XDXD")
updateInventory = function(v1124, v1125)
	if v72 then
		return;
	else
		if v1124 then
			local v1126 = nil;
			if v96 then
				local v1127 = v93.inv[v96];
				if v1127 and v1127.items then
					local v1128 = v1127.items[v1124];
					local v1129 = false;
					if v1128 ~= "" then
						v1129 = s_Http:JSONDecode(v1128);
					end;
					v1126 = v1129;
				end;
			elseif v1125 then
				local l_Attribute_0 = v90.Inventory:GetAttribute("Slot" .. v1124);
				local v1131 = l_Attribute_0 and l_Attribute_0 ~= "" and s_Http:JSONDecode(l_Attribute_0);
				if v1131 then
					v1126 = v1131;
				end;
			else
				v1126 = v93.inv[v1124];
			end;
			v81:UpdateSlot(v1124, v1126);
			if v1126 and v1126.name then
				local v1132 = l_ItemsInfo_0[v1126.name];
				if v1132 and v1132.body and v136 ~= v1124 then
					useItem(v1124);
					return;
				end;
			end;
		else
			local v1133 = nil;
			if v1125 then
				v1133 = {};
				for v1134 = 1, v90:GetAttribute("Slots") or 10 do
					local l_Attribute_1 = v90.Inventory:GetAttribute("Slot" .. v1134);
					local v1136 = l_Attribute_1 and l_Attribute_1 ~= "" and s_Http:JSONDecode(l_Attribute_1);
					if v1136 then
						v1133[v1134] = v1136;
					end;
				end;
			else
				v1133 = v93.inv;
			end;
			if v96 then
				local v1137 = v1133[v96];
				if v1137 then
					local v1138 = {};
					local v1139 = v1137.slots or 10;
					if v1137.items then
						for v1140 = 1, v1139 do
							local v1141 = v1137.items[v1140];
							v1138[v1140] = v1141 and v1141 ~= "" and s_Http:JSONDecode(v1141);
						end;
					end;
					v81:SetInventory(v1138, v1139);
					return;
				else
					v96 = nil;
					return;
				end;
			else
				local v1142 = v1125 and v90:GetAttribute("Slots") or v93.gi.Slots or 10;
				v81:SetInventory(v1133, v1142);
			end;
		end;
		return;
	end;
end;
toggleInv = function(v1122)
	if not v90 then
		return;
	elseif not v81.inv then
		return;
	elseif v1122 and not v124 then
		return;
	else
		if v1122 ~= v126 then
			v126 = v1122;
			v81:ToggleInventory(v1122);
			if v1122 then
				if v99.i_tutorial == 1 then
					v99.i_tutorial = 2;
					displayMessage("Double click on the document to view it.");
				end;
				v96 = nil;
				v141 = nil;
				v144 = nil;
				v138 = nil;
				v139 = nil;
				v140 = nil;
				if v81.screen then
					v81:DisplayScreen(nil);
				end;
				if v81.itemDocument then
					v81:DisplayDocument(nil);
				end;
				if v154 then
					dropItem(v152, true);
					v154 = nil;
				end;
				v152 = nil;
				v151 = nil;
				v153 = nil;
				updateInventory();
			end;
		end;
		return;
	end;
end;
mainLoop = function(v558)
	if not v93 then
		v93 = getPlayer(l_LocalPlayer_0);
	end;
	local l_v93_0 = v93;
	if not l_v93_0 then
		return;
	else
		debug.profilebegin("Misc 1");
		v94 = v94 + v558;
		local l_current_0 = l_GameCamera_0.current;
		local l_main_0 = v77.dimensions.main;
		local v562 = {};
		local v563 = {};
		local l_Position_2 = l_current_0.Position;
		local l_Health_0 = l_Humanoid_0.Health;
		local l_HumanoidRootPart_0 = v88:FindFirstChild("HumanoidRootPart");
		local l_inv_1 = l_v93_0.inv;
		local l_gi_2 = l_v93_0.gi;
		local l_Gamemode_1 = l_gi_2.Gamemode;
		local v570 = l_Gamemode_1 == "NTF";
		local v571 = l_Gamemode_1 == "CI";
		v112 = 0;
		l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.Climbing, false);
		if l_Health_0 <= 0 and v124 then
			playGlobalSound(v40, 1);
			v105 = v88.HumanoidRootPart.Position;
			v124 = false;
			if v126 then
				toggleInv(false);
			end;
			if not _G.death then
				setDeathMsg("");
			end;
		end;
		if v125 then
			if l_Weapon_0.info then
				clearWeapon();
			end;
			v135 = nil;
			v133 = nil;
			v101 = 0;
			takeDamage(v558 * 2);
			if v126 then
				toggleInv(false);
			end;
			if math.random() < 0.05 + (1 - l_Humanoid_0.Health / l_Humanoid_0.MaxHealth) * 0.1 then
				local v572 = raycast(l_Position_2, Vector3.new(0, -10, 0), {
					l_CurrentCamera_0, 
					v88
				});
				if v572 then
					createDecal(v572, 2196791954, 2 / (0.5 + l_Humanoid_0.Health / l_Humanoid_0.MaxHealth * 0.5));
				end;
			end;
		end;

		if not (not v126 and not v81.screen and not v144) or v141 then
			l_Humanoid_0:Move((Vector3.new()));
		end;

		local l_SeatPart_0 = l_Humanoid_0.SeatPart;
		if l_SeatPart_0 and l_SeatPart_0.Disabled then
			l_Humanoid_0.Sit = false;
		end;

		l_SeatPart_0 = l_gi_2.Bloodloss;
		v95 = math.max(v95, (math.sin(time() / 20) + 1) * l_SeatPart_0 * 0.2);
		if l_SeatPart_0 > 60 and not v122 then
			v122 = true;
			re_crouch:FireServer(v122);
			v116 = false;
		end;

		if l_SeatPart_0 >= 100 then
			kill();
		elseif l_SeatPart_0 > 80 then
			doHeartbeat(v558, 60 / (150 - (l_SeatPart_0 - 80) * 5), 0.75 + (l_SeatPart_0 - 80) * 0.0125);
		elseif l_SeatPart_0 > 35 then
			doHeartbeat(v558, 60 / (70 + l_SeatPart_0), (l_SeatPart_0 - 35) / 60);
		end;
		if v134 and not l_inv_1[v134] then
			v134 = nil;
		end;
		if v136 and not l_inv_1[v136] then
			v136 = nil;
		end;
		if v135 and not l_inv_1[v135] then
			v135 = nil;
		end;
		l_SeatPart_0 = getArea(l_Position_2, _G.centerRoom);
		if v84 ~= l_SeatPart_0 then
			enterArea(l_SeatPart_0);
		end;
		l_SeatPart_0 = math.floor(l_Position_2.X / 48 + 0.5);
		local v574 = math.floor(l_Position_2.Z / 48 + 0.5);
		v160[l_SeatPart_0] = v160[l_SeatPart_0] or {};
		if not v160[l_SeatPart_0][v574] then
			v160[l_SeatPart_0][v574] = true;
			updateNavigator();
			print(l_SeatPart_0, v574);
		end;
		l_SeatPart_0 = false;
		if not l_preferences_0.NoNameHUD and not l_preferences_0.Cinematic then
			v574 = raycasth(l_Position_2, l_CurrentCamera_0.CFrame.LookVector * 24, {
				l_CurrentCamera_0, 
				v88
			});
			if v574 and v574.Instance then
				v574 = v574.Instance;
				local l_s_P_PlayerFromCharacter_0 = s_P:GetPlayerFromCharacter(v574.Parent);
				if l_s_P_PlayerFromCharacter_0 then
					local l_Humanoid_1 = v574.Parent:FindFirstChild("Humanoid");
					local l_v90_0 = v90;
					local l_GameInfo_0 = v574.Parent:FindFirstChild("GameInfo");
					if l_Humanoid_1 and l_GameInfo_0 then
						local l_l_v90_0_Attribute_0 = l_v90_0:GetAttribute("Gamemode");
						local l_l_GameInfo_0_Attribute_0 = l_GameInfo_0:GetAttribute("Gamemode");
						local l_l_v90_0_Attribute_1 = l_v90_0:GetAttribute("Difficulty");
						local l_l_GameInfo_0_Attribute_1 = l_GameInfo_0:GetAttribute("Difficulty");
						local v583 = l_Teams_0.compareTeams(l_l_v90_0_Attribute_0, l_l_GameInfo_0_Attribute_0);
						local v584 = l_Teams_0.compareDifficulties(l_l_v90_0_Attribute_1, l_l_GameInfo_0_Attribute_1);

						if not v583 then
							v81.hud.NameTag.TextColor3 = Color3.new(0, 1, 0);
						elseif not v584 then
							v81.hud.NameTag.TextColor3 = Color3.new(0.486275, 0.486275, 0.486275);
						else
							v81.hud.NameTag.TextColor3 = Color3.new(1, 0, 0);
						end;

						if l_l_GameInfo_0_Attribute_1 == 3 then
							v81.hud.NameTag.Diff.BackgroundColor3 = Color3.new(1, 0, 0);
							v81.hud.NameTag.Diff.Text = "Keter";
						elseif l_l_GameInfo_0_Attribute_1 == 2 then
							v81.hud.NameTag.Diff.BackgroundColor3 = Color3.new(1, 0.75, 0);
							v81.hud.NameTag.Diff.Text = "Euclid";
						else
							v81.hud.NameTag.Diff.BackgroundColor3 = Color3.new(0, 1, 0);
							v81.hud.NameTag.Diff.Text = "Safe";
						end;
						if l_Humanoid_1.DisplayName == l_s_P_PlayerFromCharacter_0.Name then
							v81.hud.NameTag.Text = (v52[l_l_GameInfo_0_Attribute_0] or "Unknown") .. " <font color=\"#FFFFFF\">" .. l_s_P_PlayerFromCharacter_0.Name .. "</font>";
						else
							v81.hud.NameTag.Text = (v52[l_l_GameInfo_0_Attribute_0] or "Unknown") .. " <font color=\"#FFFFFF\">" .. l_Humanoid_1.DisplayName .. " (@" .. l_s_P_PlayerFromCharacter_0.Name .. ")</font>";
						end;
						l_SeatPart_0 = true;
					end;
				end;
			end;
		end;
		v81.hud.NameTag.Visible = l_SeatPart_0;
		l_Outdoors_0.tick(v558);
		if l_preferences_0.Noclip and not v78 then
			v78 = true;
			l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.Freefall, false);
			task.spawn(function()
				if not rf_cp:InvokeServer() then
					v78 = false;
					l_LocalPlayer_0:Kick();
				end;
			end);
		elseif v78 and not l_preferences_0.Noclip then
			v78 = false;
			l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.Freefall, true);
			if l_HumanoidRootPart_0:FindFirstChild("Noclip") then
				l_HumanoidRootPart_0.Noclip:Destroy();
			end;
		end;
		if v78 then
			l_SeatPart_0 = l_HumanoidRootPart_0.Position;
			for _, v586 in ipairs(v88:GetChildren()) do
				if v586:IsA("BasePart") then
					v586.CanCollide = false;
				end;
			end;
			if not l_HumanoidRootPart_0:FindFirstChild("Noclip") then
				v574 = Instance.new("BodyVelocity");
				v574.Velocity = Vector3.new();
				v574.MaxForce = Vector3.new(1e999, 1e999, 1e999);
				v574.Name = "Noclip";
				v574.Parent = l_HumanoidRootPart_0;
			end;
			local l_LookVector_1 = l_current_0.LookVector;
			local l_MoveDirection_0 = l_Humanoid_0.MoveDirection;
			if l_MoveDirection_0.Magnitude > 0 then
				local v589 = l_preferences_0.NoclipSpeed or 24;
				if v116 then
					v589 = v589 * 2;
				end;
				local v590 = math.atan2(-l_LookVector_1.X, -l_LookVector_1.Z);
				local v591 = math.atan2(-l_MoveDirection_0.X, -l_MoveDirection_0.Z) - v590;
				l_SeatPart_0 = l_SeatPart_0 + (CFrame.fromEulerAnglesYXZ(math.asin(l_LookVector_1.Y), math.atan2(-l_LookVector_1.X, -l_LookVector_1.Z), 0) * CFrame.new(-math.sin(v591), 0, -math.cos(v591))).Position * v558 * v589;
			end;
			l_HumanoidRootPart_0.CFrame = CFrame.new(l_SeatPart_0) * CFrame.Angles(0, math.atan2(-l_LookVector_1.X, -l_LookVector_1.Z), 0);
			l_Humanoid_0:Move((Vector3.new()));
		end;
		debug.profileend();
		l_SeatPart_0 = v152 and l_inv_1[v152];
		if v151 and l_SeatPart_0 and v124 then
			if not v153 then
				v153 = v151;
			end;
			v151 = v151 - v558;
			v574 = l_SeatPart_0 and l_SeatPart_0.name;
			if v574 and (not (v574 ~= "FirstAidKit" and v574 ~= "FineFirstAidKit") or v574 == "BlueFirstAidKit") then
				if not v122 then
					re_crouch:FireServer(true);
					v122 = true;
				end;
				l_Humanoid_0:Move((Vector3.new()));
			end;
			if v151 <= 0 then
				v81.hud.UseMeter.Visible = false;
				v151 = nil;
				v153 = nil;
				if v574 then
					if not (v574 ~= "FirstAidKit") or l_SeatPart_0.name == "BlueFirstAidKit" then
						re_use:FireServer(v152);
					elseif v574 == "FineFirstAidKit" then
						re_use:FireServer(v152);
					elseif v574 == "SCP207" then
						playGlobalSound("rbxassetid://" .. 160745974);
						displayMessage(randomItem({
							"You drink cold cola. You feel fine.", 
							"You drink cold cola. You feel refreshed.", 
							"You drink cold cola. You quench your thirst.", 
							"You drink cold cola. You feel good taste."
						}));
						re_use:FireServer(v152);
						setSlot(v152, "");
						v99.e_1079 = 0;
						v99.e_207 = 0;
					else
						local v592 = l_ItemsInfo_0[v574];
						if v592.body then
							if v136 ~= v152 then
								if v592.messageOn then
									displayMessage(v592.messageOn);
								end;
								v136 = v152;
								re_use:FireServer(v152, true);
							else
								if v592.messageOff then
									displayMessage(v592.messageOff);
								end;
								dropItem(v152, true);
							end;
						elseif v592.face then
							v81.inv.Use2:Play();
							if v134 == v152 then
								if v592.messageOff then
									displayMessage(v592.messageOff);
								end;
								re_use:FireServer(v152, false);
								v134 = nil;
								update966(false);
								if l_SeatPart_0.name == "SCP1499" then
									v99.e_1499_enter = v88.HumanoidRootPart.Position;
									v88.HumanoidRootPart.CFrame = CFrame.new(v99.e_1499_exit);
									playGlobalSound("rbxassetid://" .. l_SoundIndexer_0["1499/Exit"]);
								end;
							elseif v84 == "SCP1499" then
								displayMessage("You need to take off SCP-1499 before you can wear it.");
							else
								if v592.messageOn then
									displayMessage(v592.messageOn);
								end;
								re_use:FireServer(v152, true);
								v134 = v152;
								attempt895JS();
								v81.fore.NVGMeter.Visible = false;
								v81.fore.NVGS.Visible = false;
								update966(false);
								if l_SeatPart_0.name == "SCP1499" then
									v99.e_1499_exit = v88.HumanoidRootPart.Position;
									playGlobalSound("rbxassetid://" .. l_SoundIndexer_0["1499/Enter"]);
									v88.HumanoidRootPart.CFrame = CFrame.new(v99.e_1499_enter or scp1499:GetAttribute("offset") + Vector3.new(6086, 304, -2292.5) / 1024 * 24);
									enterArea("SCP1499");
								end;
							end;
						else
							dropItem(v152, true);
						end;
					end;
				end;
				v152 = nil;
				v154 = nil;
			else
				v81.hud.UseMeter.Visible = true;
				for v593 = 1, 30 do
					v81.hud.UseMeter.Meter["M" .. v593].Visible = v593 - 0.5 < (1 - v151 / v153) * 30;
				end;
			end;
		else
			if v154 then
				dropItem(v152, true);
				v154 = nil;
			end;
			v151 = nil;
			v153 = nil;
			v152 = nil;
			v81.hud.UseMeter.Visible = false;
		end;
		if v84 == "intro" then
			print(l_main_0)
			l_SeatPart_0 = l_main_0.intro.Model;
			v574 = v99.e_intro;
			if not (v574 == -100) then
				if v574 then
					if v99.i_shoot then
						if not v99.i_fire then
							v99.i_fire = 2;
							local l_i_npc1_0 = v99.i_npc1;
							l_i_npc1_0.Humanoid.Animator:LoadAnimation(l_i_npc1_0.Aim):Play(0.4);
						end;
						local l_i_npc1_1 = v99.i_npc1;
						local l_Position_3 = l_i_npc1_1.HumanoidRootPart.Position;
						local v597 = l_Position_2 - l_Position_3;
						local v598 = math.atan2(-v597.X, -v597.Z);
						l_i_npc1_1.HumanoidRootPart.CFrame = l_i_npc1_1.HumanoidRootPart.CFrame:Lerp(CFrame.new(l_Position_3) * CFrame.fromEulerAnglesYXZ(0, v598, 0), fromDT(0.1, v558));
						l_i_npc1_1.Torso.Neck.C0 = l_i_npc1_1.Torso.Neck.C0:Lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0), fromDT(0.1, v558));
						if not raycast2(l_i_npc1_1.Head.Position, l_Position_2 - l_i_npc1_1.Head.Position, {
							l_CurrentCamera_0, 
							v88, 
							l_i_npc1_1
							}) then
							local l_v99_0 = v99;
							l_v99_0.i_fire = l_v99_0.i_fire - v558;
							if v99.i_fire < 0 and l_Humanoid_0.Health > 0 then
								playSoundAtPart(l_i_npc1_1.Head, makeSound("rbxassetid://" .. l_SoundIndexer_0.Gunshot));
								kill();
							end;
						end;
					end;
					if v99.i_shoot2 then
						if not v99.i_fire2 then
							v99.i_fire2 = 6;
							local l_i_npc3_0 = v99.i_npc3;
							l_i_npc3_0.Humanoid.Animator:LoadAnimation(l_i_npc3_0.Aim):Play(0.4);
						end;
						local l_i_npc3_1 = v99.i_npc3;
						local l_Position_4 = l_i_npc3_1.HumanoidRootPart.Position;
						local v603 = l_Position_2 - l_Position_4;
						local v604 = math.atan2(-v603.X, -v603.Z);
						l_i_npc3_1.HumanoidRootPart.CFrame = l_i_npc3_1.HumanoidRootPart.CFrame:Lerp(CFrame.new(l_Position_4) * CFrame.fromEulerAnglesYXZ(0, v604, 0), fromDT(0.1, v558));
						l_i_npc3_1.Torso.Neck.C0 = l_i_npc3_1.Torso.Neck.C0:Lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0), fromDT(0.1, v558));
						if not raycast2(l_i_npc3_1.Head.Position, l_Position_2 - l_i_npc3_1.Head.Position, {
							l_CurrentCamera_0, 
							v88, 
							l_i_npc3_1
							}) then
							local l_v99_1 = v99;
							l_v99_1.i_fire2 = l_v99_1.i_fire2 - v558;
							if v99.i_fire2 < 0 and l_Humanoid_0.Health > 0 then
								playSoundAtPart(l_i_npc3_1.Head, makeSound("rbxassetid://" .. l_SoundIndexer_0.Gunshot));
								kill();
							end;
						end;
					end;
					if v99.i_shoot3 then
						if not v99.i_fire3 then
							v99.i_fire3 = 1;
							local l_i_npc7_0 = v99.i_npc7;
							l_i_npc7_0.Humanoid.Animator:LoadAnimation(l_i_npc7_0.Aim):Play(0.4);
						end;
						local l_i_npc7_1 = v99.i_npc7;
						local l_Position_5 = l_i_npc7_1.HumanoidRootPart.Position;
						local v609 = l_Position_2 - l_Position_5;
						local v610 = math.atan2(-v609.X, -v609.Z);
						l_i_npc7_1.HumanoidRootPart.CFrame = l_i_npc7_1.HumanoidRootPart.CFrame:Lerp(CFrame.new(l_Position_5) * CFrame.fromEulerAnglesYXZ(0, v610, 0), fromDT(0.1, v558));
						l_i_npc7_1.Torso.Neck.C0 = l_i_npc7_1.Torso.Neck.C0:Lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0), fromDT(0.1, v558));
						local l_v99_2 = v99;
						l_v99_2.i_fire3 = l_v99_2.i_fire3 - v558;
						if v99.i_fire3 < 0 and l_Humanoid_0.Health > 0 then
							playSoundAtPart(l_i_npc7_1.Head, makeSound("rbxassetid://" .. l_SoundIndexer_0.Gunshot));
							kill();
						end;
					elseif v99.i_balcony then
						local l_i_npc7_2 = v99.i_npc7;
						local l_Position_6 = l_i_npc7_2.HumanoidRootPart.Position;
						local v614 = l_Position_2 - l_Position_6;
						local v615 = math.atan2(-v614.X, -v614.Z);
						l_i_npc7_2.HumanoidRootPart.CFrame = l_i_npc7_2.HumanoidRootPart.CFrame:Lerp(CFrame.new(l_Position_6) * CFrame.fromEulerAnglesYXZ(0, v615, 0), fromDT(0.1, v558));
						l_i_npc7_2.Torso.Neck.C0 = l_i_npc7_2.Torso.Neck.C0:Lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0), fromDT(0.1, v558));
					end;
					for v616 = 1, 3 do
						local v617 = v99["i_npc" .. v616];
						local v618 = (v617.HumanoidRootPart.CFrame * CFrame.new(0, 2, 0)):PointToObjectSpace(l_Position_2);
						local v619 = math.clamp(math.atan2(-v618.X, -v618.Z), -1, 1);
						local l_Torso_0 = v617.Torso;
						local l_Position_7 = v617.HumanoidRootPart.Position;
						if v616 == 1 and v574 > 3 then
							v617.Torso.Neck.C0 = v617.Torso.Neck.C0:Lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0), fromDT(0.1, v558));
						else
							v617.Torso.Neck.C0 = v617.Torso.Neck.C0:Lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0) * CFrame.fromEulerAnglesYXZ(0, 0, v619), fromDT(0.1, v558));
						end;
						if v616 == 1 then
							if v574 >= 2 and v574 <= 4 then
								if (l_Position_7 - l_Position_2).Magnitude > 32 then
									v99.i_shoot = true;
								elseif (l_Position_7 - l_Position_2).Magnitude > 26 then
									if v99.i_warning then
										local l_v99_3 = v99;
										l_v99_3.i_warning = l_v99_3.i_warning - v558;
										if v99.i_warning <= 0 then
											v99.i_shoot = true;
										end;
									else
										v99.i_warning = 6;
										if v99.i_sound then
											v99.i_sound:Stop();
										end;
										if v99.i_sound2 then
											v99.i_sound2:Stop();
										end;
									end;
								end;
							end;
						elseif v616 == 3 then
							if v574 >= 2 and not v99.i_shoot2 and (l_Position_7 - l_Position_2).Magnitude < 20 then
								if (v99["i_npc" .. 1].HumanoidRootPart.Position - l_Position_2).Magnitude > 32 then
									v99.i_shoot2 = true;
								elseif (v99["i_npc" .. 2].HumanoidRootPart.Position - l_Position_2).Magnitude > 32 then
									v99.i_shoot2 = true;
								end;
							end;
							if (v99.i_npc3_hold - l_Position_7).Magnitude > 2 then
								v617.Humanoid:MoveTo(v99.i_npc3_hold);
							end;
						end;
						v617.Humanoid.WalkSpeed = lerp(v617.Humanoid.WalkSpeed, 5.5, fromDT(0.1, v558));
						local v623 = l_Torso_0.Velocity.Magnitude / 6;
						local v624 = time() * 7;
						local v625, v626 = motor(v624);
						l_Torso_0["Left Hip"].DesiredAngle = v625 * 0.6 * v623;
						l_Torso_0["Right Hip"].DesiredAngle = v626 * 0.6 * v623;
						v625 = v99["i_npc" .. v616 .. "_fs"] or 0;
						if v623 > 0.1 and time() - v625 > 0.4 then
							v99["i_npc" .. v616 .. "_fs"] = time();
							playSoundAtPart(l_Torso_0, randomItem(s_ReS.FootstepsMTF:GetChildren()));
						end;
					end;
					if v99.i_classd then
						local l_v99_4 = v99;
						l_v99_4.i_classd = l_v99_4.i_classd + v558;
					end;
					if v99.i_classd2 then
						local l_v99_5 = v99;
						l_v99_5.i_classd2 = l_v99_5.i_classd2 + v558;
					end;
					for v629 = 5, 6 do
						local v630 = v99["i_npc" .. v629];
						if v630.Humanoid.Health > 0 then
							local v631 = v99.i_classd2 or math.min(10, v99.i_classd or 0);
							local v632 = (v630.HumanoidRootPart.CFrame * CFrame.new(0, 2, 0)):PointToObjectSpace(v99.i_173.Position);
							local v633 = math.clamp(math.atan2(-v632.X, -v632.Z), -1, 1);
							local l_Torso_1 = v630.Torso;
							local _ = v630.HumanoidRootPart.Position;
							if v574 < 7 then
								v630.Torso.Neck.C0 = v630.Torso.Neck.C0:Lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0), fromDT(0.1, v558));
							else
								v630.Torso.Neck.C0 = v630.Torso.Neck.C0:Lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0) * CFrame.fromEulerAnglesYXZ(0, 0, v633), fromDT(0.1, v558));
							end;
							if v629 == 5 then
								if v631 > 17 then
									v630.Humanoid:MoveTo((l_SeatPart_0.Spawns.Spawn5.CFrame * CFrame.new(-6, 0, -25)).Position);
								elseif v631 > 4 then
									v630.Humanoid:MoveTo((l_SeatPart_0.Spawns.Spawn5.CFrame * CFrame.new(0, 0, -15)).Position);
								end;
							elseif v629 == 6 and v631 > 6 then
								v630.Humanoid:MoveTo((l_SeatPart_0.Spawns.Spawn6.CFrame * CFrame.new(1, 0, -15)).Position);
							end;
							local v636 = l_Torso_1.Velocity.Magnitude / 6;
							local v637 = time() * 5;
							local v638, v639 = motor(v637);
							l_Torso_1["Left Shoulder"].DesiredAngle = v639 * 0.8 * v636;
							l_Torso_1["Right Shoulder"].DesiredAngle = v638 * 0.8 * v636;
							l_Torso_1["Left Hip"].DesiredAngle = v638 * 0.6 * v636;
							l_Torso_1["Right Hip"].DesiredAngle = v639 * 0.6 * v636;
						end;
					end;
					for _, v641 in ipairs({
						4, 
						8, 
						9, 
						10
						}) do
						local v642 = v99["i_npc" .. v641];
						local l_Torso_2 = v642.Torso;
						local _ = v642.HumanoidRootPart.Position;
						local v645 = l_Torso_2.Velocity.Magnitude / 8;
						if v645 >= 0.02 then
							local v646 = time() * 7 + v641 * 0.628;
							local v647, v648 = motor(v646);
							l_Torso_2["Left Shoulder"].DesiredAngle = v648 * 0.8 * v645;
							l_Torso_2["Right Shoulder"].DesiredAngle = v647 * 0.8 * v645;
							l_Torso_2["Left Hip"].DesiredAngle = v647 * 0.6 * v645;
							l_Torso_2["Right Hip"].DesiredAngle = v648 * 0.6 * v645;
						else
							l_Torso_2["Left Hip"].DesiredAngle = 0;
							l_Torso_2["Right Shoulder"].DesiredAngle = 0;
							l_Torso_2["Right Hip"].DesiredAngle = 0;
							l_Torso_2["Left Shoulder"].DesiredAngle = 0;
						end;
					end;
					if v574 == 0 then
						if v99.i_state > 0 then
							local l_v99_6 = v99;
							l_v99_6.i_state = l_v99_6.i_state - v558;
							if v99.i_state <= 0 then
								playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.BeforeDoorOpen);
								v99.i_state = 12;
								v99.e_intro = 1;
							end;
						elseif v99.i_state > -1.1 then
							v99.i_state = math.max(-1.1, v99.i_state - v558);
							v117 = true;
						elseif v99.i_state > -2 then
							v117 = false;
							v99.e_flash = 0;
							v99.i_state = -2;
							playGlobalSound("rbxassetid://" .. l_SoundIndexer_0["Light" .. math.random(3)]);
						else
							local l_v99_7 = v99;
							l_v99_7.i_state = l_v99_7.i_state - v558;
							if v99.i_state < -50 then
								v99.i_state = -2;
								if v99.i_tutorial == 0 then
									displayMessage("Pick up the paper on the desk.");
								elseif v99.i_tutorial == 1 then
									displayMessage("Press TAB to open the inventory.");
								elseif v99.i_tutorial == 2 then
									displayMessage("Double click on the document to view it.");
								end;
							end;
						end;
					elseif v574 == 1 then
						local l_v99_8 = v99;
						l_v99_8.i_state = l_v99_8.i_state - v558;
						if v99.i_state <= 0 then
							doorToggle(meta_doors.DoorIntroMain, true);
							playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.ExitCell);
							v99.i_state = 5.3;
							v99.e_intro = 2;
						end;
					elseif v574 == 2 then
						local l_i_state_0 = v99.i_state;
						local l_v99_9 = v99;
						l_v99_9.i_state = l_v99_9.i_state - v558;
						if (l_Position_2 - v99.i_npc1.HumanoidRootPart.Position).Magnitude < 7 then
							v99.i_exit = true;
						end;
						if v99.i_exit and v99.i_state <= 0 then
							if v99.i_sound then
								v99.i_sound:Stop();
							end;
							v99.i_sound = playGlobalSound("rbxassetid://" .. l_SoundIndexer_0["Escort" .. math.random(2)]);
							v99.i_state = 6;
							v99.e_intro = 3;
						elseif l_i_state_0 > -5 and v99.i_state <= -5 then
							v99.i_sound = playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.ExitCellRefuse1);
						elseif l_i_state_0 > -10 and v99.i_state <= -10 then
							v99.i_sound = playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.CellGas1);
						elseif l_i_state_0 > -16 and v99.i_state <= -16 then
							v99.e_intro = -1;
							v99.i_state = 0;
						end;
					elseif v574 == 3 then
						local l_v99_10 = v99;
						l_v99_10.i_state = l_v99_10.i_state - v558;
						if v99.i_state <= 0 then
							v99.i_state = 0;
							v99.e_intro = 4;
							v99.i_npc1.Humanoid.WalkSpeed = 0;
							v99.i_npc2.Humanoid.WalkSpeed = 0;
							v99.i_npc1_path = 1;
							v99.i_npc2_path = 1;
						end;
					elseif v574 == 4 then
						if v99.i_npc8_move then
							local l_Position_10 = (l_SeatPart_0.Spawns.Spawn8.CFrame * CFrame.new(0, 0, -70)).Position;
							v99.i_npc8.Humanoid:MoveTo(l_Position_10);
							v99.i_npc9.Humanoid:MoveTo(l_Position_10);
							v99.i_npc10.Humanoid:MoveTo(l_Position_10);
						end;
						if isInPart(l_SeatPart_0.Trigger3, l_Position_2) and v99.i_state == 0 then
							v99.i_state = 1;
							playGlobalSound("rbxassetid://" .. l_SoundIndexer_0["Announcement" .. randomItem({
								1, 
								2, 
								3, 
								4, 
								6
							})]);
						end;
						if isInPart(l_SeatPart_0.Trigger4, l_Position_2) then
							v99.i_npc8_move = true;
						end;
						if v99.i_state == 1 then
							local l_i_npc4_0 = v99.i_npc4;
							local l_Position_11 = (l_SeatPart_0.Spawns.Spawn4.CFrame * CFrame.new(0, 0, -56)).Position;
							l_i_npc4_0.Humanoid:MoveTo(l_Position_11);
							local l_DoorIntro3_0 = meta_doors.DoorIntro3;
							local l_Position_12 = l_i_npc4_0.HumanoidRootPart.Position;
							if (l_Position_12 - l_Position_11).Magnitude < 2 then
								doorToggle(l_DoorIntro3_0, false);
								v99.i_state = 2;
							elseif (l_Position_12 - l_DoorIntro3_0.Main.Position).Magnitude < 10 then
								doorToggle(l_DoorIntro3_0, true);
							end;
						end;
						for v660 = 1, 2 do
							local v661 = v99["i_npc" .. v660];
							local v662 = v99["i_npc" .. v660 .. "_path"];
							local l_FirstChild_0 = l_SeatPart_0.Path:FindFirstChild("Path" .. v662);
							local l_Position_13 = v661.HumanoidRootPart.Position;
							local v665 = false;
							if v660 == 1 then
								if v99.i_shoot then
									if (l_Position_13 - l_Position_2).Magnitude > 10 then
										v661.Humanoid:MoveTo(l_Position_2);
										break;
									else
										v665 = false;
									end;
								elseif v662 == 10 and (l_Position_2 - l_Position_13).Magnitude < 8 then
									if v99.i_sound then
										v99.i_sound:Stop();
									end;
									if v99.i_sound2 then
										v99.i_sound2:Stop();
									end;
									playGlobalSound("rbxassetid://" .. l_SoundIndexer_0["EscortDone" .. math.random(2)]);
									doorToggle(meta_doors.DoorIntro1, false);
									v99.i_state = 5;
									v99.e_intro = 5;
									break;
								elseif v662 == 9 then
									v665 = true;
								elseif (l_Position_13 - l_Position_2).Magnitude < 8 and (l_FirstChild_0.Position - l_Position_13).Unit:Dot((l_Position_2 - l_Position_13).Unit) < 0.6 then
									v665 = true;
								end;
							elseif v660 == 2 then
								if v662 == 8 then
									v665 = false;
								elseif (v99.i_npc1.HumanoidRootPart.Position - l_Position_13).Magnitude < 5 then
									v665 = false;
								elseif (l_Position_13 - l_Position_2).Magnitude > 6 and (l_FirstChild_0.Position - l_Position_13).Unit:Dot((l_Position_2 - l_Position_13).Unit) > 0 then
									v665 = true;
								end;
							end;
							if v665 and l_FirstChild_0 then
								v661.Humanoid:MoveTo(l_FirstChild_0.Position);
								if (l_FirstChild_0.Position - l_Position_13).Magnitude < 1 then
									local l_v99_11 = v99;
									local v667 = "i_npc" .. v660 .. "_path";
									l_v99_11[v667] = l_v99_11[v667] + 1;
								end;
								if v660 == 1 then
									v99.i_interest = nil;
								end;
							else
								v661.Humanoid.WalkSpeed = 0;
								local v668 = l_Position_2 - l_Position_13;
								local v669 = math.atan2(-v668.X, -v668.Z);
								v661.HumanoidRootPart.CFrame = v661.HumanoidRootPart.CFrame:Lerp(CFrame.new(l_Position_13) * CFrame.fromEulerAnglesYXZ(0, v669, 0), fromDT(0.1, v558));
								if v660 == 1 then
									if v99.i_interest then
										local l_v99_12 = v99;
										l_v99_12.i_interest = l_v99_12.i_interest - v558;
										if v99.i_interest <= 0 then
											v99.i_shoot = true;
										end;
									else
										v99.i_interest = 15;
									end;
								end;
							end;
						end;
					elseif v574 == 5 then
						local l_i_state_1 = v99.i_state;
						local l_v99_13 = v99;
						l_v99_13.i_state = l_v99_13.i_state - v558;
						l_v99_13 = v99.i_npc1;
						local l_Position_14 = l_v99_13.HumanoidRootPart.Position;
						local v674 = l_Position_2 - l_Position_14;
						local v675 = math.atan2(-v674.X, -v674.Z);
						l_v99_13.HumanoidRootPart.CFrame = l_v99_13.HumanoidRootPart.CFrame:Lerp(CFrame.new(l_Position_14) * CFrame.fromEulerAnglesYXZ(0, v675, 0), fromDT(0.1, v558));
						if l_i_state_1 >= 0 and v99.i_state < 0 then
							local v676 = l_v99_13.Humanoid.Animator:LoadAnimation(l_v99_13.PaperIdle);
							v676:Play();
							v99.i_anim = v676;
							l_v99_13.Humanoid.Animator:LoadAnimation(l_v99_13.Paper):Play();
							l_v99_13.Document.Transparency = 0;
							l_v99_13.Document.DocTex.Transparency = 0;
						elseif l_i_state_1 < -2 then
							table.insert(v563, l_v99_13.Document);
						end;
					elseif v574 == 6 then
						if v99.i_state == 0 then
							v99.i_state = 1;
							v99.i_anim:Stop();
							v99.i_anim:Destroy();
							doorToggle(meta_doors.DoorIntro2, true);
						end;
						local l_i_npc1_2 = v99.i_npc1;
						local l_Position_15 = l_i_npc1_2.HumanoidRootPart.Position;
						local v679 = l_Position_2 - l_Position_15;
						local v680 = math.atan2(-v679.X, -v679.Z);
						l_i_npc1_2.HumanoidRootPart.CFrame = l_i_npc1_2.HumanoidRootPart.CFrame:Lerp(CFrame.new(l_Position_15) * CFrame.fromEulerAnglesYXZ(0, v680, 0), fromDT(0.1, v558));
						if isInPart(l_SeatPart_0.Trigger, l_Position_2) then
							v99.i_state = 0;
							v99.e_intro = 7;
						end;
					elseif v574 == 7 then
						if v99.i_state == 0 then
							v99.i_state = 1;
							doorToggle(meta_doors.DoorIntro2, false);
							doorToggle(meta_doors.DoorBlastIntro, true);
							l_Music_0.change("Area", "rbxassetid://" .. l_SoundIndexer_0["173Chamber"]);
							task.spawn(function()
								game:GetService("ContentProvider"):PreloadAsync({
									makeSound("rbxassetid://" .. l_SoundIndexer_0.EnterChamber), 
									makeSound("rbxassetid://" .. l_SoundIndexer_0.Refuse1), 
									makeSound("rbxassetid://" .. l_SoundIndexer_0.Refuse2), 
									makeSound("rbxassetid://" .. l_SoundIndexer_0.Refuse3), 
									makeSound("rbxassetid://" .. l_SoundIndexer_0.Approach173), 
									makeSound("rbxassetid://" .. l_SoundIndexer_0.Problem)
								});
							end);
						elseif v99.i_state < 5 then
							local l_v99_14 = v99;
							l_v99_14.i_state = l_v99_14.i_state + v558;
							if v99.i_state >= 5 then
								playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.EnterChamber);
								v99.i_classd = 0;
							end;
						elseif v99.i_state < 16 then
							local l_v99_15 = v99;
							l_v99_15.i_state = l_v99_15.i_state + v558;
							if v99.i_state >= 16 then
								playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Refuse1);
							end;
						elseif v99.i_state < 23 then
							local l_v99_16 = v99;
							l_v99_16.i_state = l_v99_16.i_state + v558;
							if v99.i_state >= 23 then
								playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Refuse2);
							end;
						elseif v99.i_state < 32 then
							local l_v99_17 = v99;
							l_v99_17.i_state = l_v99_17.i_state + v558;
							if v99.i_state >= 32 then
								doorToggle(meta_doors.DoorBlastIntro, false);
								playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Refuse3);
							end;
						elseif v99.i_state < 36 then
							local l_v99_18 = v99;
							l_v99_18.i_state = l_v99_18.i_state + v558;
							if v99.i_state >= 36 then
								v99.i_shoot3 = true;
							end;
						end;
						if v99.i_state > 14 and isInPart(l_SeatPart_0.Trigger2, l_Position_2) then
							v99.i_state = 0;
							v99.e_intro = 8;
						end;
					elseif v574 == 8 then
						if v99.i_state >= 23.9 and v99.i_state <= 26 then
							v112 = v112 + 1;
						elseif v99.i_state >= 27.5 and v99.i_state <= 30.5 then
							v112 = v112 + 1;
						end;
						if v99.i_state == 0 then
							v99.i_state = 1;
							v99.i_classd2 = 10;
							l_SeatPart_0.Blocker.CanCollide = true;
							doorToggle(meta_doors.DoorBlastIntro, false);
						elseif v99.i_state < 5 then
							local l_v99_19 = v99;
							l_v99_19.i_state = l_v99_19.i_state + v558;
							if v99.i_state >= 5 then
								playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Approach173);
							end;
						elseif v99.i_state < 7 then
							local l_v99_20 = v99;
							l_v99_20.i_state = l_v99_20.i_state + v558;
							if v99.i_state >= 7 then
								l_SeatPart_0.Blocker.CanCollide = false;
								doorToggle(meta_doors.DoorBlastIntro, true);
								playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Bang1);
							end;
						elseif v99.i_state < 12 then
							local l_v99_21 = v99;
							l_v99_21.i_state = l_v99_21.i_state + v558;
							if v99.i_state >= 12 then
								playStrictSound("rbxassetid://" .. l_SoundIndexer_0.Problem);
							end;
						elseif v99.i_state < 18 then
							local l_v99_22 = v99;
							l_v99_22.i_state = l_v99_22.i_state + v558;
							if v99.i_state >= 18 then
								playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Light1);
							end;
						elseif v99.i_state < 24 then
							local l_v99_23 = v99;
							l_v99_23.i_state = l_v99_23.i_state + v558;
							if v99.i_state >= 24 then
								v117 = true;
							end;
						elseif v99.i_state < 24.8 then
							local l_v99_24 = v99;
							l_v99_24.i_state = l_v99_24.i_state + v558;
							if v99.i_state >= 24.8 then
								l_v99_24 = v99.i_npc5;
								l_v99_24.Humanoid.Health = 0;
								l_v99_24:BreakJoints();
								local l_Position_16 = l_v99_24.HumanoidRootPart.Position;
								local l_i_173_0 = v99.i_173;
								l_i_173_0.CFrame = CFrame.new(l_Position_16, l_Position_16 + (l_Position_16 - l_i_173_0.Position));
								v117 = false;
							end;
						elseif v99.i_state < 25.2 then
							local l_v99_25 = v99;
							l_v99_25.i_state = l_v99_25.i_state + v558;
							if v99.i_state >= 25.2 then
								playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Light3);
							end;
						elseif v99.i_state < 25.5 then
							local l_v99_26 = v99;
							l_v99_26.i_state = l_v99_26.i_state + v558;
							if v99.i_state >= 25.5 then
								v117 = true;
							end;
						elseif v99.i_state < 26 then
							local l_v99_27 = v99;
							l_v99_27.i_state = l_v99_27.i_state + v558;
							if v99.i_state >= 26 then
								l_v99_27 = v99.i_npc6;
								l_v99_27.Humanoid.Health = 0;
								l_v99_27:BreakJoints();
								local l_Position_17 = l_v99_27.HumanoidRootPart.Position;
								v99.i_173.CFrame = CFrame.new(l_Position_17, l_Position_2 * Vector3.new(1, 0, 1) + l_Position_17 * Vector3.new(0, 1, 0));
								v117 = false;
								playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Bang2);
							end;
						elseif v99.i_state < 29 then
							local l_v99_28 = v99;
							l_v99_28.i_state = l_v99_28.i_state + v558;
							if v99.i_state >= 29 then
								playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Bang3);
								v117 = true;
							end;
						elseif v99.i_state < 30.5 then
							local l_v99_29 = v99;
							l_v99_29.i_state = l_v99_29.i_state + v558;
							if v99.i_state >= 30.5 then
								v117 = false;
								v99.i_balcony = false;
								l_v99_29 = v99.i_npc7;
								l_v99_29.HumanoidRootPart.CFrame = l_SeatPart_0.Spawns.Spawn7.CFrame * CFrame.new(5, 0, 9);
								v99.i_173.CFrame = l_SeatPart_0.Spawns.Spawn7.CFrame * CFrame.new(15, 0, 9) * CFrame.Angles(0, 1.5707963267948966, 0);
								l_v99_29.Humanoid.Animator:LoadAnimation(l_v99_29.Aim):Play(0.4);
							end;
						elseif v99.i_state < 31.2 then
							local l_v99_30 = v99;
							l_v99_30.i_state = l_v99_30.i_state + v558;
							if v99.i_state >= 31.2 then
								playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Light3);
							end;
						elseif v99.i_state < 31.5 then
							local l_v99_31 = v99;
							l_v99_31.i_state = l_v99_31.i_state + v558;
							if v99.i_state >= 31.5 then
								playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Light2);
								playGlobalSound("rbxassetid://" .. l_SoundIndexer_0["173Vent"]);
								v110 = -0.1;
								doBlink();
								l_v99_31 = l_main_0.start.Model;
								local v702 = meta_doors.DoorBlastIntro.Main.CFrame:ToObjectSpace(v88.HumanoidRootPart.CFrame);
								local v703 = meta_doors.DoorBlast173.Main.CFrame * CFrame.Angles(0, 3.141592653589793, 0) * v702;
								if l_v99_31.Timer.Value > 0 and isInPart(l_v99_31.Containment173, v703.Position) then
									v88.HumanoidRootPart.CFrame = l_v99_31.Containment173.Exit.WorldCFrame;
								else
									v88.HumanoidRootPart.CFrame = v703;
								end;
								l_SeatPart_0.ExitIntro:FireServer();
								l_RoomVisual_0.Shift:Fire(l_v99_31.Base.Position);
								v99.e_intro = -100;
								v99.e_introalarm = 28.571428571428573;
								v99.e_commotion = 0;
								v99.e_commotionI = -8;
								playStrictSound("rbxassetid://" .. l_SoundIndexer_0.Alarm2, 0.8);
								task.spawn(function()
									if v90:GetAttribute("Difficulty") < 3 then
										displayMessage("Press F5 or H to save");
										task.wait(6);
									end;
									displayMessage("Hold Left Shift to run");
								end);
								for v704 = 1, 10 do
									local v705 = v99["i_npc" .. v704];
									if v705 then
										pcall(v705.Destroy, v705);
									end;
									v99["i_npc" .. v704] = nil;
								end;
								v99.i_173:Destroy();
							end;
						end;
						if v99.i_state >= 30.5 and v99.i_state < 31.5 then
							local l_i_npc7_3 = v99.i_npc7;
							local l_i_173_1 = v99.i_173;
							local l_Position_18 = l_i_npc7_3.HumanoidRootPart.Position;
							local v709 = l_i_173_1.Position - l_Position_18;
							local v710 = math.atan2(-v709.X, -v709.Z);
							l_i_npc7_3.HumanoidRootPart.CFrame = l_i_npc7_3.HumanoidRootPart.CFrame:Lerp(CFrame.new(l_Position_18) * CFrame.fromEulerAnglesYXZ(0, v710, 0), fromDT(0.1, v558));
							if not v99.i_firing then
								v99.i_firing = 0.12;
								playSoundAtPart(l_i_npc7_3.Head, makeSound("rbxassetid://" .. l_SoundIndexer_0.Gunshot));
							else
								local l_v99_32 = v99;
								l_v99_32.i_firing = l_v99_32.i_firing - v558;
								if v99.i_firing <= 0 then
									l_v99_32 = v99;
									l_v99_32.i_firing = l_v99_32.i_firing + 0.12;
									playSoundAtPart(l_i_npc7_3.Head, makeSound("rbxassetid://" .. l_SoundIndexer_0.Gunshot));
								end;
							end;
						end;
						if v99.i_state > 9 and v99.i_state < 20 and not isInPart(l_SeatPart_0.Trigger2, l_Position_2) and not v99.i_balcony then
							v99.i_balcony = true;
							local l_i_npc7_4 = v99.i_npc7;
							l_i_npc7_4.Humanoid.Animator:LoadAnimation(l_i_npc7_4.Aim):Play(0.4);
							playSoundAtPart(l_i_npc7_4.Head, makeSound("rbxassetid://" .. l_SoundIndexer_0.Alert2));
						end;
					elseif v574 == -1 then
						local _ = v99.i_state;
						if v99.i_state == 0 then
							v99.i_state = 1;
							doorToggle(meta_doors.DoorIntroMain, false);
							meta_doors.DoorIntroMain.Main.CanCollide = true;
							for _, v715 in ipairs(v77.data.GasEmitters:GetChildren()) do
								if v715:GetAttribute("Intro") then
									v715.Hiss.TimePosition = math.random() * 0.518;
									v715.Hiss:Resume();
									v715.ParticleEmitter.Enabled = true;
									v715.Active.Value = true;
								end;
							end;
						else
							local l_v99_33 = v99;
							l_v99_33.i_state = l_v99_33.i_state + v558;
							if v99.i_state > 6 then
								kill();
							end;
						end;
					end;
				else
					warn("111")
					v117 = true;
					v99.e_intro = 0;
					v99.i_state = -1;
					v99.i_tutorial = 0;
					displayMessage("Pick up the paper on the desk.");
					local _ = s_ReS.IntroNPC.Guard;
					local function _(v718, v719)
						local v720 = v718:Clone();
						v720.HumanoidRootPart.CFrame = v719;
						v720.Parent = workspace.NPCs;
						if v720.Name == "Guard" then
							v720.Humanoid.Animator:LoadAnimation(v720.Idle):Play();
						end;
						return v720;
					end;
					local l_v99_34 = v99;
					local l_Guard_1 = s_ReS.IntroNPC.Guard;
					local l_CFrame_0 = l_SeatPart_0.Spawns.Spawn1.CFrame;
					local v725 = l_Guard_1:Clone();
					v725.HumanoidRootPart.CFrame = l_CFrame_0;
					v725.Parent = workspace.NPCs;
					if v725.Name == "Guard" then
						v725.Humanoid.Animator:LoadAnimation(v725.Idle):Play();
					end;
					l_v99_34.i_npc1 = v725;
					l_v99_34 = v99;
					l_Guard_1 = s_ReS.IntroNPC.Guard;
					l_CFrame_0 = l_SeatPart_0.Spawns.Spawn2.CFrame;
					v725 = l_Guard_1:Clone();
					v725.HumanoidRootPart.CFrame = l_CFrame_0;
					v725.Parent = workspace.NPCs;
					if v725.Name == "Guard" then
						v725.Humanoid.Animator:LoadAnimation(v725.Idle):Play();
					end;
					l_v99_34.i_npc2 = v725;
					l_v99_34 = v99;
					l_Guard_1 = s_ReS.IntroNPC.Guard;
					l_CFrame_0 = l_SeatPart_0.Spawns.Spawn3.CFrame;
					v725 = l_Guard_1:Clone();
					v725.HumanoidRootPart.CFrame = l_CFrame_0;
					v725.Parent = workspace.NPCs;
					if v725.Name == "Guard" then
						v725.Humanoid.Animator:LoadAnimation(v725.Idle):Play();
					end;
					l_v99_34.i_npc3 = v725;
					v99.i_npc3_hold = l_SeatPart_0.Spawns.Spawn3.Position;
					l_v99_34 = v99;
					l_Guard_1 = s_ReS.IntroNPC.Scientist;
					l_CFrame_0 = l_SeatPart_0.Spawns.Spawn4.CFrame;
					v725 = l_Guard_1:Clone();
					v725.HumanoidRootPart.CFrame = l_CFrame_0;
					v725.Parent = workspace.NPCs;
					if v725.Name == "Guard" then
						v725.Humanoid.Animator:LoadAnimation(v725.Idle):Play();
					end;
					l_v99_34.i_npc4 = v725;
					l_v99_34 = v99;
					l_Guard_1 = s_ReS.IntroNPC.ClassD;
					l_CFrame_0 = l_SeatPart_0.Spawns.Spawn5.CFrame;
					v725 = l_Guard_1:Clone();
					v725.HumanoidRootPart.CFrame = l_CFrame_0;
					v725.Parent = workspace.NPCs;
					if v725.Name == "Guard" then
						v725.Humanoid.Animator:LoadAnimation(v725.Idle):Play();
					end;
					l_v99_34.i_npc5 = v725;
					l_v99_34 = v99;
					l_Guard_1 = s_ReS.IntroNPC.ClassD;
					l_CFrame_0 = l_SeatPart_0.Spawns.Spawn6.CFrame;
					v725 = l_Guard_1:Clone();
					v725.HumanoidRootPart.CFrame = l_CFrame_0;
					v725.Parent = workspace.NPCs;
					if v725.Name == "Guard" then
						v725.Humanoid.Animator:LoadAnimation(v725.Idle):Play();
					end;
					l_v99_34.i_npc6 = v725;
					l_v99_34 = v99;
					l_Guard_1 = s_ReS.IntroNPC.Guard;
					l_CFrame_0 = l_SeatPart_0.Spawns.Spawn7.CFrame;
					v725 = l_Guard_1:Clone();
					v725.HumanoidRootPart.CFrame = l_CFrame_0;
					v725.Parent = workspace.NPCs;
					if v725.Name == "Guard" then
						v725.Humanoid.Animator:LoadAnimation(v725.Idle):Play();
					end;
					l_v99_34.i_npc7 = v725;
					l_v99_34 = v99;
					l_Guard_1 = s_ReS.IntroNPC.ClassD;
					l_CFrame_0 = l_SeatPart_0.Spawns.Spawn8.CFrame;
					v725 = l_Guard_1:Clone();
					v725.HumanoidRootPart.CFrame = l_CFrame_0;
					v725.Parent = workspace.NPCs;
					if v725.Name == "Guard" then
						v725.Humanoid.Animator:LoadAnimation(v725.Idle):Play();
					end;
					l_v99_34.i_npc8 = v725;
					v99.i_npc8_move = false;
					l_v99_34 = v99;
					l_Guard_1 = s_ReS.IntroNPC.Guard;
					l_CFrame_0 = l_SeatPart_0.Spawns.Spawn8.CFrame * CFrame.new(0, 0, -5);
					v725 = l_Guard_1:Clone();
					v725.HumanoidRootPart.CFrame = l_CFrame_0;
					v725.Parent = workspace.NPCs;
					if v725.Name == "Guard" then
						v725.Humanoid.Animator:LoadAnimation(v725.Idle):Play();
					end;
					l_v99_34.i_npc9 = v725;
					l_v99_34 = v99;
					l_Guard_1 = s_ReS.IntroNPC.Guard;
					l_CFrame_0 = l_SeatPart_0.Spawns.Spawn8.CFrame * CFrame.new(0, 0, 5);
					v725 = l_Guard_1:Clone();
					v725.HumanoidRootPart.CFrame = l_CFrame_0;
					v725.Parent = workspace.NPCs;
					if v725.Name == "Guard" then
						v725.Humanoid.Animator:LoadAnimation(v725.Idle):Play();
					end;
					l_v99_34.i_npc10 = v725;
					l_v99_34 = s_ReS.IntroNPC.SCP173:Clone();
					l_v99_34.Anchored = true;
					l_v99_34.CFrame = l_SeatPart_0.Spawns.Spawn173.CFrame;
					l_v99_34.Parent = l_CurrentCamera_0;
					v99.i_173 = l_v99_34;
					meta_doors.DoorBlastIntro:SetAttribute("IsOpen", false);
					meta_doors.DoorIntro2:SetAttribute("IsOpen", false);
					meta_doors.DoorIntro1:SetAttribute("IsOpen", true);
					meta_doors.DoorIntroMain:SetAttribute("IsOpen", false);
					meta_doors.DoorIntroMain.Main.CanCollide = false;
					l_SeatPart_0.Blocker.CanCollide = false;
					for _, v727 in ipairs(v77.data.GasEmitters:GetChildren()) do
						if v727:GetAttribute("Intro") then
							v727.Hiss:Stop();
							v727.ParticleEmitter.Enabled = false;
							v727.Active.Value = false;
						end;
					end;
				end;
			end;
		end;
		if v570 then
			if v99.e_ntfintro then
				l_SeatPart_0 = v99;
				l_SeatPart_0.e_ntfintro = l_SeatPart_0.e_ntfintro + v558;
				v112 = v112 + 0.025;
				if v99.e_ntfintro >= 53 then
					l_Humanoid_0.Sit = false;
					v99.e_ntfintro = nil;
					v99.e_ntfintro2 = 1;
					v81.fore.Blind.BackgroundTransparency = 1;
				elseif v99.e_ntfintro < 10 then
					v81.fore.Blind.BackgroundTransparency = 0;
				else
					v81.fore.Blind.BackgroundTransparency = math.min(1, (v99.e_ntfintro - 10) / 10);
				end;
			elseif v99.e_ntfintro2 then
				l_SeatPart_0 = v99;
				l_SeatPart_0.e_ntfintro2 = l_SeatPart_0.e_ntfintro2 - v558 / 2;
				if v99.e_ntfintro2 < 0 then
					v99.e_ntfintro2 = nil;
				end;
			end;
		elseif v99.e_ntfintro then
			v99.e_ntfintro = nil;
		end;
		if v99.e_shake then
			l_SeatPart_0 = v99;
			l_SeatPart_0.e_shake = l_SeatPart_0.e_shake - v558 * 7;
			if v99.e_shake <= 0 then
				v99.e_shake = nil;
			else
				v112 = v112 + v99.e_shake / 3;
			end;
		end;
		if v99.e_066dim then
			doHeartbeat(v558, 0.46153846153846156, (math.min(v99.e_066dim / 14.285714285714286, 1)));
			l_SeatPart_0 = v99;
			l_SeatPart_0.e_066dim = l_SeatPart_0.e_066dim - v558;
			if v99.e_066dim <= 0 then
				v99.e_066dim = nil;
			end;
		end;
		if v99.e_introalarm then
			l_SeatPart_0 = v99;
			l_SeatPart_0.e_introalarm = l_SeatPart_0.e_introalarm - v558;
			if v99.e_introalarm <= 0 then
				v99.e_introalarm = nil;
			elseif not script.Alarm.IsPlaying then
				script.Alarm.SoundId = "rbxassetid://" .. l_SoundIndexer_0.Alarm;
				if not game["Run Service"]:IsStudio() then
					script.Alarm:Play();
				end
			end;
		end;
		if v99.e_commotion then
			l_SeatPart_0 = v99;
			l_SeatPart_0.e_commotion = l_SeatPart_0.e_commotion - v558;
			if v99.e_commotion <= 0 then
				l_SeatPart_0 = v99.e_commotionI;
				if l_SeatPart_0 == 0 then
					playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Scripted6, math.random() * 0.2 + 0.6, sg_amb);
				else
					v574 = v48[l_SeatPart_0];
					if v574 then
						playGlobalSound("rbxassetid://" .. v574, math.random() * 0.2 + 0.6, sg_amb);
					end;
				end;
				if l_SeatPart_0 < #v48 then
					v99.e_commotion = 8.571428571428571;
					v574 = v99;
					v574.e_commotionI = v574.e_commotionI + 1;
				else
					v99.e_commotion = nil;
					v99.e_commotionI = nil;
				end;
			end;
		end;
		if v99.e_elevator then
			l_SeatPart_0 = v99;
			l_SeatPart_0.e_elevator = l_SeatPart_0.e_elevator - v558;
			if v99.e_elevator < 0 then
				v99.e_elevator = nil;
			else
				v112 = v112 + math.min(1, v99.e_elevator) * 0.04;
			end;
		end;
		if v99.e_shock then
			l_SeatPart_0 = v99;
			l_SeatPart_0.e_shock = l_SeatPart_0.e_shock + v558;
			if v99.e_shock < 0.05 then
				v112 = v112 + 1;
				v81.fore.Shock.BackgroundTransparency = math.max(0, (0.05 - v99.e_shock) / 0.05);
			elseif v99.e_shock < 0.5 then
				v112 = v112 + 2;
				v81.fore.Shock.BackgroundTransparency = 0;
			elseif v99.e_shock < 3 then
				v112 = v112 + math.max(0, 2 - (v99.e_shock - 0.5)) / 2;
				v81.fore.Shock.BackgroundTransparency = math.min(2, v99.e_shock - 0.5) / 2;
			else
				v99.e_shock = nil;
			end;
		end;
		if v99.e_escape then
			l_SeatPart_0 = v99;
			l_SeatPart_0.e_escape = l_SeatPart_0.e_escape + v558;
			if v99.e_escape < 0.05 then
				v81.fore.Shock.BackgroundTransparency = math.max(0, (0.05 - v99.e_escape) / 0.05);
			elseif v99.e_escape < 0.5 then
				v81.fore.Shock.BackgroundTransparency = 0;
			else
				v88.HumanoidRootPart.CFrame = CFrame.new(0, 100, -1000);
				v81.fore.Shock.BackgroundTransparency = 0;
				v81.fore.Shock.BackgroundColor3 = Color3.fromHSV(0, 0, 1 / (v99.e_escape - 0.5));
			end;
		end;
		if v99.e_1162 then
			l_SeatPart_0 = v99;
			l_SeatPart_0.e_1162 = l_SeatPart_0.e_1162 + v558;
			if v99.e_1162 < 0.03 then
				v81.fore.Shock.BackgroundTransparency = math.max(0, (0.03 - v99.e_1162) / 0.03);
			elseif v99.e_1162 < 4.5 then
				v81.fore.Shock.BackgroundTransparency = 0;
			elseif v99.e_1162 < 7 then
				v81.fore.Shock.BackgroundTransparency = math.min(2, v99.e_1162 - 4.5) / 2;
			else
				v99.e_1162 = nil;
			end;
		end;
		if v99.e_flash then
			l_SeatPart_0 = v99;
			l_SeatPart_0.e_flash = l_SeatPart_0.e_flash + v558;
			if v99.e_flash < 0.03 then
				v81.fore.Shock.BackgroundTransparency = math.max(0, (0.03 - v99.e_flash) / 0.03);
			elseif v99.e_flash < 0.05 then
				v81.fore.Shock.BackgroundTransparency = 0;
			elseif v99.e_flash < 2.5 then
				v81.fore.Shock.BackgroundTransparency = math.min(2, v99.e_flash - 0.05) / 2;
			else
				v99.e_flash = nil;
			end;
		end;
		l_SeatPart_0 = workspace.SCPs:FindFirstChild("ForestMonster");
		if l_SeatPart_0 then
			if l_SeatPart_0.Chasing.Value then
				v574 = l_SeatPart_0.HumanoidRootPart.Position;
				if (v574 - l_Position_2).Magnitude < 48 then
					local l_Unit_1 = l_current_0:PointToObjectSpace(v574).Unit;
					if l_Unit_1.Z < 0 and math.abs(l_Unit_1.X) < 0.85 and math.abs(l_Unit_1.Y) < 0.65 then
						v99.e_860_chase = true;
					end;
				end;
			else
				v99.e_860_chase = false;
			end;
		end;
		if v99.e_860_chase or v125 then
			if v99.e_860_sanity <= 0 then
				v99.e_860_sanity = 0;
				playGlobalSound("rbxassetid://" .. l_SoundIndexer_0["Chase" .. math.random(1, 2)]);
			end;
			if v114 and v116 then
				l_SeatPart_0 = v99;
				l_SeatPart_0.e_860_sanity = l_SeatPart_0.e_860_sanity + v558;
			else
				v99.e_860_sanity = math.max(v99.e_860_sanity - v558, 0.01);
			end;
			l_Music_0.change("SCP8601", "rbxassetid://" .. 4574437475);
		elseif v99.e_860_sanity > 1 then
			v99.e_860_sanity = 1;
		elseif v99.e_860_sanity > 0 then
			l_SeatPart_0 = v99;
			l_SeatPart_0.e_860_sanity = l_SeatPart_0.e_860_sanity - v558;
			l_Music_0.silence("SCP8601");
		end;
		if v99.e_106 then
			l_SeatPart_0 = v99;
			l_SeatPart_0.e_106 = l_SeatPart_0.e_106 + v558;
			if v99.e_106 > 4 then
				v110 = -0.1;
				doBlink();
				playGlobalSound("rbxassetid://" .. "6042916718");
				playGlobalSound("rbxassetid://" .. "1063922920");
				l_RoomVisual_0.Shift:Fire(l_main_0.pocketdimension.Base.Position);
				v99.e_106 = nil;
			end;
		end;
		if v99.e_966 then
			l_SeatPart_0 = v99;
			l_SeatPart_0.e_966 = l_SeatPart_0.e_966 - v558;
			if v99.e_966 < 0 then
				v99.e_966 = nil;
			end;
		end;
		if v99.e_009 then
			l_SeatPart_0 = v99.e_009;
			v574 = l_SeatPart_0 + v558 * 70;
			v99.e_009 = v574;
			if l_SeatPart_0 < 300 and v574 >= 300 then
				displayMessage(randomItem({
					"You feel a burning pain in your left leg.", 
					"You feel a burning pain in your right leg."
				}));
			end;
			if math.random() < 0.05 + (1 - l_Humanoid_0.Health / l_Humanoid_0.MaxHealth) * 0.1 then
				local v729 = raycast(l_CurrentCamera_0.CFrame.Position, Vector3.new(0, -10, 0), {
					l_CurrentCamera_0, 
					v88
				});
				if v729 then
					createDecal(v729, l_TextureIndexer_0.blooddrop1, 1 + math.random());
				end;
			end;
			if v574 >= 300 and l_Humanoid_0.Health > 0 then
				takeDamage(v558 * 1.67);
				if l_Humanoid_0.Health <= 0 then
					playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.IceCracking);
					if getNearestRoomFromPos(l_Position_2) == l_main_0.room009.Model then
						setDeathMsg("Two crystallized subjects was found by the maintenance team that had been dispatched to repair SCP-009's containment chamber. The bodies are currently unidentifiable due to massive damage caused by the substance.");
					elseif (l_main_0.room009.Base.Position - l_Position_2).Magnitude < 128 then
						setDeathMsg("A crystallized subject was found near SCP-009's containment chamber. The body is currently unidentifiable due to massive damage caused by the substance.");
					else
						setDeathMsg("A crystallized subject was found. Death caused by exposure to SCP-009. How the subject reached [DATA REDACTED] before total contamination is unknown.");
					end;
				end;
			end;
		end;
		if l_Humanoid_0.Health < 95 and v99.e_1079 >= 4 then
			if math.random() < 0.05 + (1 - l_Humanoid_0.Health / l_Humanoid_0.MaxHealth) * 0.1 then
				l_SeatPart_0 = raycast(l_CurrentCamera_0.CFrame.Position, Vector3.new(0, -10, 0), {
					l_CurrentCamera_0, 
					v88
				});
				if l_SeatPart_0 then
					v574 = createDecal(l_SeatPart_0, 2196791954, 1 + math.random());
					v574.Decal.Transparency = 0.25;
					v574.Decal.Color3 = Color3.new(1, 0.494118, 0.631373);
				end;
			end;
			if math.random() < 0.01 + (1 - l_Humanoid_0.Health / l_Humanoid_0.MaxHealth) * 0.02 then
				playGlobalSound("rbxassetid://" .. randomItem({
					l_SoundIndexer_0.BubbleSizz0, 
					l_SoundIndexer_0.BubbleSizz1
				}), 1);
			end;
			if l_Humanoid_0.Health > 0 then
				takeDamage(v558 * 2);
				if l_Humanoid_0.Health <= 0 then
					setDeathMsg("Nine-Tailed Fox found a body covered with pink bubblegum-scented foam around it. Toxic reports identifies the bubblegum-scented foam from Dr. Wondertainment's Bubblebath Bonbons!\194\174 known as SCP-1079.");
				end;
			end;
		end;
		l_SeatPart_0 = v99.e_513;
		if l_SeatPart_0 then
			local l_Base_0 = l_SeatPart_0.model.Base;
			local l_Position_19 = l_Base_0.BodyPosition.Position;
			if l_SeatPart_0.run then
				l_SeatPart_0.run = l_SeatPart_0.run - v558;
				if l_SeatPart_0.run > 4 then
					local v732 = l_Position_2 - l_Position_19;
					l_Base_0.BodyGyro.CFrame = CFrame.Angles(0, math.atan2(-v732.X, -v732.Z), 0) * CFrame.Angles(0, -1.5707963267948966, 0);
					if (l_Position_19 - l_Position_2).Magnitude < 12 then
						l_SeatPart_0.run = 4;
					end;
				elseif l_SeatPart_0.run > 0 then
					if not l_SeatPart_0.anims.Walk.IsPlaying then
						l_SeatPart_0.anims.Walk:Play();
					end;
					local v733 = l_Position_19 - l_Position_2;
					local l_BodyPosition_0 = l_Base_0.BodyPosition;
					l_BodyPosition_0.Position = l_BodyPosition_0.Position + (v733 * Vector3.new(1, 0, 1)).Unit * v558 * 12;
					l_Base_0.BodyGyro.CFrame = CFrame.Angles(0, math.atan2(-v733.X, -v733.Z), 0) * CFrame.Angles(0, -1.5707963267948966 + (math.random() - 0.5) * 0.1, 0);
				else
					l_SeatPart_0.run = nil;
				end;
			else
				if l_SeatPart_0.anims.Walk.IsPlaying then
					l_SeatPart_0.anims.Walk:Stop();
				end;
				if (l_Position_19 - l_Position_2).Magnitude < 8 then
					l_SeatPart_0.run = 4;
				elseif (l_Position_19 - l_Position_2).Magnitude > 80 then
					local v735 = l_Position_2 + Vector3.new(math.random() - 0.5, 0, math.random() - 0.5).Unit * (50 + math.random() * 4);
					local v736 = raycast(v735, Vector3.new(0, -72, 0), {
						l_CurrentCamera_0
					});
					v735 = if v736 then v736.Position + Vector3.new(0, 3.299999952316284, 0) else v735 * Vector3.new(1, 0, 1) + Vector3.new(0, 3.799999952316284, 0);
					l_Base_0.CFrame = CFrame.new(v735);
					l_Base_0.BodyPosition.Position = v735;
				end;
				local v737 = l_Position_2 - l_Position_19;
				l_Base_0.BodyGyro.CFrame = CFrame.Angles(0, math.atan2(-v737.X, -v737.Z), 0) * CFrame.Angles(0, -1.5707963267948966, 0);
				if not raycast2(l_Position_2, l_Base_0.Position - l_Position_2, {
					l_CurrentCamera_0, 
					v88
					}) then
					l_SeatPart_0.run = 5;
					playGlobalSound("rbxassetid://" .. l_SoundIndexer_0["Bell" .. math.random(2, 3)]);
				end;
			end;
		end;
		if v99.e_207 then
			l_SeatPart_0 = v99;
			l_SeatPart_0.e_207 = l_SeatPart_0.e_207 + v558 * 70 * 0.002;
			l_SeatPart_0 = v99.e_207;
			if l_SeatPart_0 > 20 then
				doHeartbeat(v558, 60 / (70 + l_SeatPart_0), 0.4);
			end;
			if l_SeatPart_0 > 30 then
				v112 = v112 + 0.25;
			end;
			if l_SeatPart_0 > 50 then
				kill();
				setDeathMsg("Cause of death: organ failure due to massive internal hemorrhage. As SCP-207-A was empty on recovery, it's believed ingesting a full bottle [DATA REDACTED].");
			end;
		end;
		l_SeatPart_0 = workspace.Events:FindFirstChild("Door860");
		if l_SeatPart_0 then
			table.insert(v563, l_SeatPart_0.Value);
		end;
		l_SeatPart_0 = workspace.Events:FindFirstChild("SCP294");
		if l_SeatPart_0 then
			table.insert(v563, l_SeatPart_0.Value);
		end;
		l_SeatPart_0 = workspace.Events:FindFirstChild("SCP1162");
		if l_SeatPart_0 then
			table.insert(v563, l_SeatPart_0.Value);
		end;
		l_SeatPart_0 = workspace.Events:FindFirstChild("InfiniteAmmo");
		if l_SeatPart_0 then
			table.insert(v563, l_SeatPart_0.Value);
		end;
		if v84 == "SCP860" then
			l_SeatPart_0 = workspace:FindFirstChild("Forest");
			if l_SeatPart_0 then
				table.insert(v563, l_SeatPart_0.Door1.DoorForest);
				table.insert(v563, l_SeatPart_0.Door2.DoorForest);
			end;
		end;
		v85 = v84 == "SCP860";
		if v84 == "pocketdimension" then
			l_SeatPart_0 = l_main_0.pocketdimension.Model;
			if l_Health_0 > 0 then
				takeDamage(5.0E-5 * v558 * 70 * 5);
			end;
			if v99.e_pd == 1 then
				if (l_Position_2 - l_SeatPart_0.Room1.Base.Position).Magnitude > 50 then
					nextPD();
				end;
			elseif v99.e_pd == 2 then
				if l_Position_2.Y - l_SeatPart_0.Room2.Base.Position.Y < -13 then
					v574 = l_SeatPart_0.Room2.Base.Exit1.WorldPosition;
					local l_WorldPosition_1 = l_SeatPart_0.Room2.Base.Exit2.WorldPosition;
					if (Vector2.new(l_Position_2.X, l_Position_2.Z) - Vector2.new(v574.X, v574.Z)).Magnitude < 3 then
						nextPD();
					elseif (Vector2.new(l_Position_2.X, l_Position_2.Z) - Vector2.new(l_WorldPosition_1.X, l_WorldPosition_1.Z)).Magnitude < 3 then
						nextPD();
					else
						v117 = true;
						kill();
						setDeathMsg("In addition to the decomposed appearance typical of the victims of SCP-106, the subject seems to have suffered multiple heavy fractures to both of his legs.");
					end;
				end;
				v574 = l_SeatPart_0.Room2.Rock1;
				local v739 = time() * 1.25;
				local v740 = math.sin(v739) * 30 + 70;
				local v741 = math.sin(2 * v739 + 0.4) * 25;
				v574.CFrame = l_SeatPart_0.Room2.Base.CFrame * CFrame.new(-v741, 5.7, v740) * CFrame.Angles(0, v739 * 3, 0);
				if isInPart(v574, l_Position_2) then
					v117 = true;
					kill();
					playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Impact);
					setDeathMsg("In addition to the decomposed appearance typical of SCP-106's victims, the body exhibits injuries that have not been observed before: massive skull fracture, three broken ribs, fractured shoulder and multiple heavy lacerations.");
				end;
				local l_Rock2_0 = l_SeatPart_0.Room2.Rock2;
				local v743 = time() * 1.25;
				local v744 = math.sin(v743) * 30 + 75;
				local v745 = math.sin(2 * v743 + 0.4) * 25;
				l_Rock2_0.CFrame = l_SeatPart_0.Room2.Base.CFrame * CFrame.new(-v744, 5.7, v745) * CFrame.Angles(0, v743 * 3, 0);
				if isInPart(l_Rock2_0, l_Position_2) then
					v117 = true;
					kill();
					playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Impact);
					setDeathMsg("In addition to the decomposed appearance typical of SCP-106's victims, the body exhibits injuries that have not been observed before: massive skull fracture, three broken ribs, fractured shoulder and multiple heavy lacerations.");
				end;
			elseif v99.e_pd == 3 then
				v85 = true;
				if l_Position_2.Y - l_SeatPart_0.Room3.Base.Position.Y < -45 then
					v574 = l_SeatPart_0.Room3.Base.Exit.WorldPosition;
					if (Vector2.new(l_Position_2.X, l_Position_2.Z) - Vector2.new(v574.X, v574.Z)).Magnitude < 4 then
						nextPD();
					else
						v117 = true;
						kill();
						setDeathMsg("In addition to the decomposed appearance typical of the victims of SCP-106, the subject seems to have suffered multiple heavy fractures to both of his legs.");
					end;
				end;
			else
				v99.e_pd = 1;
			end;
		else
			v99.e_pd = 1;
		end;
		if v84 == "SCP1499" then
			if l_current_0.X > 1440 then
				l_HumanoidRootPart_0.CFrame = l_HumanoidRootPart_0.CFrame + Vector3.new(-2880, 0, 0);
			elseif l_current_0.X < -1440 then
				l_HumanoidRootPart_0.CFrame = l_HumanoidRootPart_0.CFrame + Vector3.new(2880, 0, 0);
			end;
			if l_current_0.Z > 1440 then
				l_HumanoidRootPart_0.CFrame = l_HumanoidRootPart_0.CFrame + Vector3.new(0, 0, -2880);
			elseif l_current_0.Z < -1440 then
				l_HumanoidRootPart_0.CFrame = l_HumanoidRootPart_0.CFrame + Vector3.new(0, 0, 2880);
			end;
		end;
		l_SeatPart_0 = l_main_0.room106;
		if l_SeatPart_0 then
			v574 = l_SeatPart_0.Model.Chamber;
			v99.e_106cc = lerpdt(v99.e_106cc, v574.MagnetsOn.Value and 1 or 0, 0.005, v558);
			v574.CFrame = l_SeatPart_0.Base.ChamberPos.WorldCFrame * CFrame.new(0, -6.5 + v99.e_106cc * 6.5, 0) * CFrame.Angles(math.sin((time())) * v99.e_106cc * 0.02, 0, math.cos(time() * 1.4) * v99.e_106cc * 0.02);
		end;
		v101 = math.clamp(v101 + v558 * 10, 0, 100);
		if v101 < 80 then
			doHeartbeat(v558, 0.5 - ((80 - v101) / 80) ^ 1.5 * 0.2, 0.3 + ((80 - v101) / 80) ^ 1.5 * 0.7);
		end;
		debug.profilebegin("Update Monitors");
		for _, v747 in pairs(v77.data.Monitors:GetChildren()) do
			if (v747.Position - l_Position_2).Magnitude < 48 then
				local l_Value_3 = v747.Viewport.Value;
				if l_Value_3 and v747:GetAttribute("Important") then
					local v749 = not l_Value_3:FindFirstChild("Active") or l_Value_3.Active.Value;
					local l_WorldCFrame_0 = l_Value_3.Camhead.ViewportAtt.WorldCFrame;
					local v751 = v172[v747];
					if v751 and not v751:IsDescendantOf(l_LocalPlayer_0.PlayerGui) then
						v751:Destroy();
						v751 = nil;
					end;
					do
						local l_v751_0 = v751;
						if not l_v751_0 then
							local v753 = {};
							l_v751_0 = v56:Clone();
							v172[v747] = l_v751_0;
							local l_AmbientC_0 = v747.Viewport.Value:FindFirstChild("AmbientC");
							l_v751_0.ViewportFrame.Ambient = l_AmbientC_0 and l_AmbientC_0.Value or Color3.new(0.27451, 0.27451, 0.27451);
							if l_AmbientC_0 then
								table.insert(v753, l_AmbientC_0.Changed:Connect(function(v755)
									l_v751_0.ViewportFrame.Ambient = v755;
								end));
							end;
							local l_Camera_0 = Instance.new("Camera");
							l_Camera_0.FieldOfView = 90;
							l_Camera_0.Parent = l_v751_0;
							l_v751_0.ViewportFrame.CurrentCamera = l_Camera_0;
							local v757 = getNearestRoomFromPos(l_WorldCFrame_0.Position);
							if v757 then
								local v758 = v757:Clone();
								for _, v760 in pairs(v758:GetDescendants()) do
									if v760:IsA("Sound") or v760:IsA("Script") then
										v760:Destroy();
									end;
								end;
								v758.Parent = l_v751_0.ViewportFrame;
							end;
							local l_SCP173_0 = workspace.SCPs:FindFirstChild("SCP173");
							if l_SCP173_0 then
								local l_Base_1 = l_SCP173_0.Base;
								local v763 = l_SCP173_0:Clone();
								v763.Base:ClearAllChildren();
								local l_Base_2 = v763.Base;
								v763.Parent = l_v751_0.ViewportFrame;
								local l_v763_0 = v763 --[[ copy: 30 -> 34 ]];
								local l_l_Base_2_0 = l_Base_2 --[[ copy: 31 -> 35 ]];
								local l_l_Base_1_0 = l_Base_1 --[[ copy: 29 -> 36 ]];
								task.spawn(function()
									while s_RS.RenderStepped:wait() and l_v763_0:IsDescendantOf(game) do
										l_l_Base_2_0.CFrame = l_l_Base_1_0.CFrame;
									end;
								end);
							end;
							l_SCP173_0 = workspace.SCPs:FindFirstChild("SCP106");
							if l_SCP173_0 then
								local l_HumanoidRootPart_1 = l_SCP173_0.HumanoidRootPart;
								local v769 = l_SCP173_0:Clone();
								local l_HumanoidRootPart_2 = v769.HumanoidRootPart;
								l_HumanoidRootPart_2.Anchored = true;
								v769.Parent = l_v751_0.ViewportFrame.WorldModel;
								task.spawn(function()
									while s_RS.RenderStepped:wait() and v769:IsDescendantOf(game) do
										l_HumanoidRootPart_2.CFrame = l_HumanoidRootPart_1.CFrame;
									end;
								end);
							end;
							task.spawn(function()
								local function Z(v771)
									task.spawn(pcall, function()
										v771:Clone().Parent = l_v751_0.ViewportFrame;
									end);
								end;
								local function D(v773)
									task.spawn(pcall, function()
										v773.Archivable = true;
										local l_HumanoidRootPart_3 = v773.HumanoidRootPart;
										local v775 = v773:Clone();
										local l_HumanoidRootPart_4 = v775.HumanoidRootPart;
										l_HumanoidRootPart_4.Anchored = true;
										v775.Parent = l_v751_0.ViewportFrame.WorldModel;
										v773.Archivable = false;
										local l_Humanoid_2 = v775:FindFirstChildOfClass("Humanoid");
										if l_Humanoid_2 then
											l_Humanoid_2.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None;
										end;
										while s_RS.RenderStepped:wait() and v775:IsDescendantOf(game) do
											l_HumanoidRootPart_4.CFrame = l_HumanoidRootPart_3.CFrame;
										end;
									end);
								end;
								table.insert(v753, workspace.ChildAdded:Connect(function(v779)
									if v779:IsA("BasePart") then
										return;
									else
										if v779:FindFirstChildOfClass("Humanoid") then
											task.spawn(pcall, function()
												v779.Archivable = true;
												local l_HumanoidRootPart_5 = v779.HumanoidRootPart;
												local v781 = v779:Clone();
												local l_HumanoidRootPart_6 = v781.HumanoidRootPart;
												l_HumanoidRootPart_6.Anchored = true;
												v781.Parent = l_v751_0.ViewportFrame.WorldModel;
												v779.Archivable = false;
												local l_Humanoid_3 = v781:FindFirstChildOfClass("Humanoid");
												if l_Humanoid_3 then
													l_Humanoid_3.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None;
												end;
												while s_RS.RenderStepped:wait() and v781:IsDescendantOf(game) do
													l_HumanoidRootPart_6.CFrame = l_HumanoidRootPart_5.CFrame;
												end;
											end);
										end;
										return;
									end;
								end));
								for _, v785 in pairs(workspace:GetChildren()) do
									if not (v785:IsA("BasePart") and v785.ClassName ~= "Terrain") and v785:FindFirstChildOfClass("Humanoid") then
										task.spawn(pcall, function()
											v785.Archivable = true;
											local l_HumanoidRootPart_7 = v785.HumanoidRootPart;
											local v787 = v785:Clone();
											local l_HumanoidRootPart_8 = v787.HumanoidRootPart;
											l_HumanoidRootPart_8.Anchored = true;
											v787.Parent = l_v751_0.ViewportFrame.WorldModel;
											v785.Archivable = false;
											local l_Humanoid_4 = v787:FindFirstChildOfClass("Humanoid");
											if l_Humanoid_4 then
												l_Humanoid_4.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None;
											end;
											while s_RS.RenderStepped:wait() and v787:IsDescendantOf(game) do
												l_HumanoidRootPart_8.CFrame = l_HumanoidRootPart_7.CFrame;
											end;
										end);
									end;
								end;
								while true do
									if task.wait(1) then
										if not l_v751_0:IsDescendantOf(game) then
											table.foreach(v753, function(_, v791)
												pcall(v791.Disconnect, v791);
											end);
											return;
										end;
									else
										return;
									end;
								end;
							end);
							l_v751_0.Parent = l_LocalPlayer_0.PlayerGui;
							l_v751_0.Adornee = v747;
						end;
						l_v751_0.Camera.CFrame = l_WorldCFrame_0;
						l_v751_0.ViewportFrame.Visible = v749;
						if v749 then
							if l_Value_3:FindFirstChild("Cursed") and l_Value_3.Cursed.Value then
								local v792 = true;
								if v135 then
									local v793 = l_inv_1[v135];
									if v793 and v793.name == "SCP714" then
										v792 = false;
									end;
								end;
								if v134 then
									local v794 = l_inv_1[v134];
									if v794 and v794.name == "GasMask3" then
										v792 = false;
									end;
								end;
								if v136 then
									local v795 = l_inv_1[v136];
									if v795 and v795.name == "HeavyHazmat" then
										v792 = false;
									end;
								end;
								local v796 = v747.Position + v747.CFrame.LookVector;
								if v792 and l_CurrentCamera_0.CFrame.LookVector:Dot((v747.Position - l_Position_2).Unit) > 0.1 and not raycast2(l_Position_2, v796 - l_Position_2, {
									v747, 
									l_CurrentCamera_0
									}) then
									v155 = v747.Position;
									v101 = v101 - v558 * 20;
									if not v99.e_895part then
										v99.e_895part = l_ScaryPart_0:Clone();
										v99.e_895part.CFrame = v747.CFrame * CFrame.new(0, 0, -0.05);
										v99.e_895part.Parent = l_CurrentCamera_0;
									end;
									if v101 < 0 then
										kill();
									elseif v101 < 50 and v99.e_895 <= 0 then
										v99.e_895 = 1;
										playGlobalSound("rbxassetid://" .. 2899948244, 1);
									elseif v101 < 35 and v99.e_895 <= 1 then
										v99.e_895 = 2;
										playGlobalSound("rbxassetid://" .. 497248845, 1);
									elseif v101 < 20 and v99.e_895 <= 2 then
										v99.e_895 = 3;
										v109 = 5;
										playGlobalSound("rbxassetid://" .. 5518971385, 1);
									elseif v99.e_895 == 3 then
										v112 = v112 + 1;
									end;
									local l_Beam_1 = v99.e_895part.Beam;
									local v798 = true;
									if v99.e_895 ~= 2 then
										v798 = math.random() < (100 - v101) / 500;
									end;
									l_Beam_1.Enabled = v798;
									v99.e_895part.Beam.Texture = "rbxassetid://" .. randomItem(v39);
								elseif v99.e_895 == 3 then
									v112 = v112 + 1;
									v101 = v101 - v558 * 15;
									if v101 < 0 then
										setDeathMsg("What we know is that the subject died of cardiac arrest. My guess is that it was caused by SCP-895, although it has never been observed affecting video equipment from this far before. Further testing is needed to determine whether SCP-895's \"Red Zone\" is increasing.");
										kill();
									end;
								elseif v99.e_895 == 2 then
									v101 = v101 - v558 * 20;
									if v101 < 20 then
										v99.e_895 = 4;
										v109 = 5;
										playGlobalSound("rbxassetid://" .. 5518971385, 1);
									end;
								elseif v99.e_895 == 4 then
									v101 = v101 - v558 * 20;
									v112 = v112 + 1;
									if v101 < 0 then
										v99.e_895 = 0;
									end;
								else
									if v101 > 60 and v99.e_895 > 0 then
										v99.e_895 = 0;
									end;
									if v99.e_895part then
										v99.e_895part:Destroy();
										v99.e_895part = nil;
									end;
								end;
							end;
						else
							if v101 > 60 and v99.e_895 > 0 then
								v99.e_895 = 0;
							end;
							if v99.e_895part then
								v99.e_895part:Destroy();
								v99.e_895part = nil;
							end;
						end;
					end;
				end;
			elseif v172[v747] then
				v172[v747]:Destroy();
				v172[v747] = nil;
			end;
		end;
		debug.profileend();
		debug.profilebegin("Update Doors");
		l_SeatPart_0 = math.min(128, s_L.FogEnd + 16);
		for v799, v800 in pairs(v174) do
			local l_Magnitude_0 = (v800 - l_Position_2).Magnitude;
			if l_Magnitude_0 < l_SeatPart_0 then
				animateDoor(v799, v558);
				local v802 = v164[v799];
				if l_Magnitude_0 < 16 then
					for _, v804 in pairs(v799:GetChildren()) do
						if v804.Name:sub(1, 6) == "Button" then
							if not v802 then
								table.insert(v563, v804);
							end;
							if v570 or v571 and v799.Name == "Door860" then
								if not v804:FindFirstChild("ProximityPrompt") then
									local l_ProximityPrompt_0 = Instance.new("ProximityPrompt");
									l_ProximityPrompt_0.ActionText = v571 and "Hack" or "Remote";
									l_ProximityPrompt_0.KeyboardKeyCode = Enum.KeyCode.F;
									l_ProximityPrompt_0.GamepadKeyCode = Enum.KeyCode.DPadRight;
									l_ProximityPrompt_0.ObjectText = "Door";
									l_ProximityPrompt_0.RequiresLineOfSight = false;
									l_ProximityPrompt_0.MaxActivationDistance = 16;
									l_ProximityPrompt_0.ClickablePrompt = false;
									if v571 then
										l_ProximityPrompt_0.HoldDuration = 3;
									end;
									l_ProximityPrompt_0.Triggered:Connect(function()
										if not v124 then
											return;
										else
											if not v164[v799] then
												re_remote:FireServer(v799);
											end;
											return;
										end;
									end);
									l_ProximityPrompt_0.Parent = v804;
									table.insert(v98, l_ProximityPrompt_0);
								end;
								v804.ProximityPrompt.Enabled = not v802 and not v799:GetAttribute("IsOpen") and (workspace.MapData.RemoteDoorControl.Value or v799.Name == "Door860") and (not (v799:FindFirstChild("Locked") and v799.Locked.Value) or v799:FindFirstChild("NTFOpenable"));
							elseif v804:FindFirstChild("ProximityPrompt") then
								v804.ProximityPrompt:Destroy();
							end;
						end;
					end;
				end;
				if v802 then
					local l_v164_1 = v164;
					l_v164_1[v799] = l_v164_1[v799] - v558;
					if v164[v799] <= 0 then
						v164[v799] = nil;
					end;
				end;
			end;
		end;
		debug.profileend();
		debug.profilebegin("Update Buttons");
		for _, v808 in pairs(v77.data.Buttons:GetChildren()) do
			if (v808.Position - l_Position_2).Magnitude < 5 and (not v808:FindFirstChild("State") or not v808.State.Value) then
				table.insert(v563, v808);
			end;
		end;
		debug.profileend();
		debug.profilebegin("Update Screens");
		for _, v810 in pairs(v77.data.Screens:GetChildren()) do
			if (v810.Position - l_Position_2).Magnitude < 6 then
				table.insert(v563, v810);
			end;
		end;
		debug.profileend();
		debug.profilebegin("Update Items");
		for _, v812 in pairs(getItems()) do
			if (v812.Position - l_Position_2).Magnitude < 48 and isItemAvailable(v90, v812) then
				local l_Name_1 = v812.Name;
				local v814 = v169[v812];
				if not v814 then
					local l_v812_Attribute_0 = v812:GetAttribute("ItemData");
					if l_Name_1:sub(1, 8) == "Document" then
						v814 = s_ReS.ItemModels[l_ItemsInfo_0[v812.Name].model or "Document"]:Clone();
						local v816 = l_ItemsInfo_0[l_Name_1];
						if l_preferences_0.DocTex then
							v814.DocTex.Texture = "rbxassetid://" .. v816.document;
						elseif v816.lowdetail then
							v814.DocTex.Texture = "rbxassetid://" .. v816.lowdetail;
						end;
					elseif l_Name_1 == "Clipboard" and l_v812_Attribute_0 then
						v814 = s_ReS.ItemModels.Clipboard:Clone();
						local v817 = s_Http:JSONDecode(l_v812_Attribute_0);
						if v817.items then
							local v818 = true;
							local v819 = 1;
							local v820 = v817.slots or 10;
							for v821 = v819, v820 do
								if v817.items[v821] ~= "" then
									v818 = false;
								end;
							end;
							if not v818 then
								v820 = s_ReS.Misc.ClipboardPaper:Clone();
								v820.Name = "PM";
								v820.CFrame = v814.CFrame * v814.PaperAtt.CFrame;
								v820.Parent = v814;
							end;
						end;
					elseif l_Name_1 == "Cup" and l_v812_Attribute_0 then
						v814 = s_ReS.ItemModels.Cup:Clone();
						local v822 = s_Http:JSONDecode(l_v812_Attribute_0);
						if v822.liquid then
							local v823 = s_ReS.Misc.Liquid:Clone();
							v823.Name = "LM";
							v823.CFrame = v814.CFrame * v814.Liquid.CFrame;
							local v824 = nil;
							local l_liquid_1 = v822.liquid;
							for _, v827 in ipairs(l_Liquids_0) do
								if v827.exact == l_liquid_1 then
									v824 = v827;
									break;
								end;
							end;
							if v824 then
								v823.Transparency = v824.transparency;
								v823.Color = v824.color;
								v823.Material = v824.glow and Enum.Material.Neon or Enum.Material.SmoothPlastic;
							end;
							v823.Parent = v814;
						end;
					else
						v814 = s_ReS.ItemModels[l_Name_1]:Clone();
					end;
					v814.CanCollide = false;
					v814.Anchored = true;
					v814.CFrame = CFrame.Angles(0, 6.283185307179586 * math.random(), 0) * v814.CFrame;
					v814.Parent = l_CurrentCamera_0;
					v169[v812] = v814;
				end;
				local l_v814_Attribute_0 = v814:GetAttribute("Origin");
				v814.Position = l_v814_Attribute_0 and v812.Position + Vector3.new(0, -l_v814_Attribute_0, 0) or v812.Position;
				if l_Name_1 == "Cup" and v814:FindFirstChild("LM") then
					v814.LM.CFrame = v814.CFrame * v814.Liquid.CFrame;
				elseif l_Name_1 == "Clipboard" and v814:FindFirstChild("PM") then
					v814.PM.CFrame = v814.CFrame * v814.PaperAtt.CFrame;
				end;
				table.insert(v562, v812);
			elseif v169[v812] then
				v169[v812]:Destroy();
				v169[v812] = nil;
			end;
		end;
		for v829, _ in pairs(v169) do
			if not v829.Parent then
				v169[v829]:Destroy();
				v169[v829] = nil;
			end;
		end;
		debug.profileend();
		debug.profilebegin("Update Levers");
		for _, v832 in pairs(v77.data.Levers:GetChildren()) do
			if (v832.Base.Position - l_Position_2).Magnitude < 48 then
				local v833 = v832:FindFirstChild("State") and v832.State.Value;
				local v834 = v165[v832] or 0;
				v834 = lerpdt(v834, v832.Rotation.Value, 0.5, v558);
				v832.Lever.CFrame = v832.Base.CFrame * CFrame.new(0, 0, -0.09) * CFrame.Angles(v834 * 1.42, 0, 0) * CFrame.new(0, 0, -0.26) * CFrame.Angles(0, 3.141592653589793, 0);
				v165[v832] = v834;
				if math.abs(v166[v832] or v832.Rotation.Value) ~= 1 and math.abs(v832.Rotation.Value) == 1 then
					local l_Sound_4 = Instance.new("Sound");
					l_Sound_4.SoundId = v41;
					playSoundAtPart(v832.Base, l_Sound_4);
				end;
				v166[v832] = v832.Rotation.Value;
				if not v833 then
					table.insert(v563, v832);
				end;
			end;
		end;
		debug.profileend();
		debug.profilebegin("Update Pivots");
		for _, v837 in pairs(v77.data.Pivots:GetChildren()) do
			if (v837.Base.Position - l_Position_2).Magnitude < 48 then
				if v837.Name == "Key914" then
					local v838 = v837:FindFirstChild("State") and v837.State.Value;
					local v839 = v167[v837] or 0;
					v839 = lerpdt(v839, v837.Rotation.Value, 0.5, v558);
					v837.Pivot.CFrame = v837.Base.CFrame * CFrame.Angles(0, 0, -3.141592653589793 - v839 * 3.141592653589793);
					v167[v837] = v839;
					if not v838 then
						table.insert(v563, v837);
					end;
				elseif v837.Name == "Knob914" then
					local v840 = v837:FindFirstChild("State") and v837.State.Value;
					local v841 = v167[v837] or 0;
					v841 = lerpdt(v841, v837.Rotation.Value, 0.5, v558);
					v837.Pivot.CFrame = v837.Base.CFrame * CFrame.Angles(0, 3.141592653589793, -v841 * 3.141592653589793 / 2) * CFrame.new(0, 0.047, 0);
					v167[v837] = v841;
					if not v840 then
						table.insert(v563, v837);
					end;
				elseif v837.Name == "Cover008" then
					local v842 = v837:FindFirstChild("State") and v837.State.Value;
					local v843 = v165[v837] or 0;
					v843 = lerpdt(v843, v837.Rotation.Value, 0.5, v558);
					v837.Pivot.CFrame = v837.Base.CFrame * CFrame.Angles(-v843 * 3.141592653589793 / 4 - 0.7853981633974483, 0, 0) * v837.Base.Attachment.CFrame;
					v165[v837] = v843;
					if math.abs(v166[v837] or v837.Rotation.Value) ~= 1 and math.abs(v837.Rotation.Value) == 1 then
						local l_Sound_5 = Instance.new("Sound");
						l_Sound_5.SoundId = v41;
						playSoundAtPart(v837.Base, l_Sound_5);
					end;
					v166[v837] = v837.Rotation.Value;
					if not v842 then
						table.insert(v563, v837);
					end;
				end;
			end;
		end;
		debug.profileend();
		debug.profilebegin("Tesla Gates");
		for _, v846 in pairs(v77.data.TeslaGates:GetChildren()) do
			if (v846.Tesla.Position - l_Position_2).Magnitude < 48 then
				if v173[v846] then
					local v847 = v173[v846];
					if v847.state == -1 then
						if v846.Active.Value then
							v847.th = (v847.th + v558 / 2) % 1;
							if v124 and l_HumanoidRootPart_0 and isInPart(v846.Sensor, l_HumanoidRootPart_0.Position) then
								v847.state = v847.state + 1;
								re_tesla:FireServer(v846);
							end;
						else
							v847.th = 0;
						end;
					elseif v847.state == 0 then
						v846.Tesla.Activating:Play();
						v847.timer = v847.timer + v558;
						v847.state = v847.state + 1;
					elseif v847.state == 1 then
						v847.timer = v847.timer + v558;
						v847.th = (v847.th + v558 * 5) % 1;
						if v847.timer > 0.5 then
							v846.Tesla.Trigger:Play();
							v846.TeslaTex.TeslaA.Enabled = true;
							v846.TeslaTex.TeslaB.Enabled = true;
							v847.state = v847.state + 1;
						end;
					elseif v847.state == 2 then
						v847.timer = v847.timer + v558;
						local v848 = math.random();
						v846.TeslaTex.TeslaA.Tesla.Position = UDim2.new(0, 0, -v848, 0);
						v846.TeslaTex.TeslaB.Tesla.Position = UDim2.new(0, 0, -v848, 0);
						v846.TeslaTex.TeslaA.Enabled = math.random(2) == 1;
						v846.TeslaTex.TeslaB.Enabled = math.random(2) == 1;
						if v124 and l_HumanoidRootPart_0 and isInPart(v846.Tesla, l_HumanoidRootPart_0.Position) then
							kill();
							v99.e_shock = 0.9;
							setDeathMsg("Subject killed by the Tesla gate at [REDACTED].");
						end;
						if v847.timer > 1 then
							v846.TeslaTex.TeslaA.Enabled = false;
							v846.TeslaTex.TeslaB.Enabled = false;
							v846.Tesla.Powerup:Play();
							v847.state = v847.state + 1;
						end;
					elseif v847.state == 3 then
						v847.timer = v847.timer + v558;
						if v847.timer > 2 then
							v847.timer = 0;
							v847.state = -1;
						end;
					else
						v847.state = -1;
					end;
					if v846.Active.Value and v847.state ~= 2 and v847.state ~= 3 then
						v846.TeslaLight.Light.Enabled = v847.th > 0.5;
					else
						v846.TeslaLight.Light.Enabled = false;
					end;
				else
					v846.TeslaTex.TeslaA.Enabled = false;
					v846.TeslaTex.TeslaB.Enabled = false;
					v173[v846] = {
						timer = 0, 
						state = -1, 
						th = 0
					};
				end;
			elseif v173[v846] then
				v173[v846] = nil;
			end;
		end;
		debug.profileend();
		debug.profilebegin("Update Sinkholes");
		l_SeatPart_0 = nil;
		v104 = nil;
		for _, v850 in pairs(v77.data.Sinkholes:GetChildren()) do
			local l_Magnitude_1 = (v850.Position - l_HumanoidRootPart_0.Position).Magnitude;
			if l_Magnitude_1 < 13 then
				l_SeatPart_0 = v850;
				v104 = l_Magnitude_1;
			end;
		end;
		if not v99.e_sinkhole and v104 and v104 < 5 then
			v99.e_sinkhole = 0;
			playGlobalSound("rbxassetid://" .. "5821685508", 0.6);
			v574 = v88.HumanoidRootPart.Touched:Connect(function(v852)
				if v852.CanCollide then
					v852.CanCollide = false;
					task.delay(3, function()
						v852.CanCollide = true;
					end);
				end;
			end);
			table.insert(v97, v574);
			local l_BodyPosition_1 = Instance.new("BodyPosition");
			l_BodyPosition_1.MaxForce = Vector3.new(1e999, 1e999, 1e999);
			l_BodyPosition_1.Position = l_SeatPart_0.Position;
			l_BodyPosition_1.Parent = v88.HumanoidRootPart;
			local _ = l_Humanoid_0;
			local l_l_BodyPosition_1_0 = l_BodyPosition_1 --[[ copy: 16 -> 37 ]];
			local l_v574_0 = v574 --[[ copy: 15 -> 38 ]];
			task.spawn(function()
				while v99.e_sinkhole < 0.5 and task.wait() do
					local l_l_l_BodyPosition_1_0_0 = l_l_BodyPosition_1_0;
					l_l_l_BodyPosition_1_0_0.Position = l_l_l_BodyPosition_1_0_0.Position + Vector3.new(0, -0.10000000149011612, 0);
				end;
				l_v574_0:Disconnect();
				local l_l_l_BodyPosition_1_0_1 = l_l_BodyPosition_1_0;
				l_l_l_BodyPosition_1_0_1.Position = l_l_l_BodyPosition_1_0_1.Position + Vector3.new(0, -100, 0);
				task.wait(4);
				playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.PlayerUse);
				l_l_BodyPosition_1_0:Destroy();
				v110 = -0.1;
				doBlink();
				playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Enter);
				v88.HumanoidRootPart.CFrame = l_main_0.pocketdimension.Base.CFrame * CFrame.new(0, 8, 0);
				l_RoomVisual_0.Shift:Fire(l_main_0.pocketdimension.Base.Position);
				re_pd:FireServer(true);
				task.wait(5);
				v110 = -0.1;
				doBlink();
				v117 = false;
				v99.e_sinkhole = nil;
			end);
		elseif v99.e_sinkhole then
			v574 = v99;
			v574.e_sinkhole = v574.e_sinkhole + v558;
			if v99.e_sinkhole > 0.5 then
				v117 = true;
			end;
		end;
		debug.profileend();
		debug.profilebegin("Update Players");
		updatePlayers(l_Position_2, v558);
		debug.profileend();
		debug.profilebegin("Update SCPs");
		for _, v860 in pairs(workspace.SCPs:GetChildren()) do
			if v860.Name == "SCP173" then
				local l_Value_4 = v860.Contained.Value;
				v860.Base.ProximityPrompt.Enabled = v570 and not l_Value_4;
				v860.Base.ProximityPrompt2.Enabled = l_Value_4 == v90;
				if v570 and not l_Value_4 then
					local l_Model_0 = l_main_0.start.Model;
					local l_DoorBlast173_0 = meta_doors.DoorBlast173;

					if isInPart(l_Model_0.Containment173, v860.Base.Position) then
						if l_DoorBlast173_0.Main then
							l_DoorBlast173_0.Main.ProximityPrompt.Enabled = true;
						end
					else
						if l_DoorBlast173_0.Main then
							l_DoorBlast173_0.Main.ProximityPrompt.Enabled = false;
						end
					end;
				end;
			end;
		end;
		debug.profileend();
		debug.profilebegin("Update Hand");
		v127 = nil;
		l_SeatPart_0 = (not not v144 or v141) and 0 or 6;
		for _, v865 in pairs(v563) do
			if v865.Name:sub(1, 6) == "Button" then
				local l_Position_20 = (v865.CFrame * CFrame.new(0, 0, 0.5)).Position;
				local l_Magnitude_2 = (l_Position_20 - l_Position_2).Magnitude;
				if l_Magnitude_2 < l_SeatPart_0 and l_Magnitude_2 < 3 and not raycast3(l_Position_2, l_Position_20 - l_Position_2, {
					l_CurrentCamera_0, 
					v88, 
					v865
					}) then
					l_SeatPart_0 = l_Magnitude_2;
					v127 = v865;
					v128 = l_Position_20;
				end;
			elseif v865.Parent == v77.data.Levers then
				local l_Position_21 = (v865.Base.CFrame * CFrame.new(0, 0, -0.3)).Position;
				local l_Magnitude_3 = (l_Position_21 - l_Position_2).Magnitude;
				if l_Magnitude_3 < l_SeatPart_0 and l_Magnitude_3 < 3 and l_CurrentCamera_0.CFrame:PointToObjectSpace(l_Position_21).Unit.Z < -0.95 and not raycast3(l_Position_2, l_Position_21 - l_Position_2, {
					l_CurrentCamera_0, 
					v88, 
					v865
					}) then
					l_SeatPart_0 = l_Magnitude_3;
					v127 = v865;
					v128 = l_Position_21;
				end;
			elseif v865.Name == "Cover008" then
				local l_Position_22 = (v865.Base.CFrame * CFrame.new(0, 0.4, 2.2)).Position;
				local l_Magnitude_4 = (l_Position_22 - l_Position_2).Magnitude;
				if l_Magnitude_4 < l_SeatPart_0 and l_Magnitude_4 < 3 and l_CurrentCamera_0.CFrame:PointToObjectSpace(l_Position_22).Unit.Z < -0.9 and not raycast3(l_Position_2, l_Position_22 - l_Position_2, {
					l_CurrentCamera_0, 
					v88, 
					v865
					}) then
					l_SeatPart_0 = l_Magnitude_4;
					v127 = v865;
					v128 = l_Position_22;
				end;
			elseif v865.Parent == v77.data.Screens then
				local l_Magnitude_5 = (v865.Position - l_Position_2).Magnitude;
				if l_Magnitude_5 < l_SeatPart_0 and l_Magnitude_5 < 4 then
					local v873 = v865:FindFirstChild("Interact") and v865.Interact.CFrame or CFrame.new(0, -1, 1.25);
					local l_Position_23 = (v865.CFrame * v873).Position;
					if l_CurrentCamera_0.CFrame:PointToObjectSpace(l_Position_23).Unit.Z < -0.9 and not raycast3(l_Position_2, l_Position_23 - l_Position_2, {
						l_CurrentCamera_0, 
						v88, 
						v865
						}) then
						l_SeatPart_0 = l_Magnitude_5;
						v127 = v865;
						v128 = l_Position_23;
					end;
				end;
			elseif v865.Name == "Key914" then
				local l_Position_24 = (v865.Base.CFrame * CFrame.new(0, 0, 0.3)).Position;
				local l_Magnitude_6 = (l_Position_24 - l_Position_2).Magnitude;
				if l_Magnitude_6 < l_SeatPart_0 and l_Magnitude_6 < 3 and l_CurrentCamera_0.CFrame:PointToObjectSpace(l_Position_24).Unit.Z < -0.97 and not raycast3(l_Position_2, l_Position_24 - l_Position_2, {
					l_CurrentCamera_0, 
					v88, 
					v865
					}) then
					l_SeatPart_0 = l_Magnitude_6;
					v127 = v865;
					v128 = l_Position_24;
				end;
			elseif v865.Name == "Knob914" then
				local l_Position_25 = (v865.Base.CFrame * CFrame.new(0, 0, -0.3)).Position;
				local l_Magnitude_7 = (l_Position_25 - l_Position_2).Magnitude;
				if l_Magnitude_7 < l_SeatPart_0 and l_Magnitude_7 < 3 and l_CurrentCamera_0.CFrame:PointToObjectSpace(l_Position_25).Unit.Z < -0.97 and not raycast3(l_Position_2, l_Position_25 - l_Position_2, {
					l_CurrentCamera_0, 
					v88, 
					v865
					}) then
					l_SeatPart_0 = l_Magnitude_7;
					v127 = v865;
					v128 = l_Position_25;
				end;
			elseif not (v865.Name ~= "SCP860Door" and v865.Name ~= "SCP294" and v865.Name ~= "SCP1162" and v865.Name ~= "InfiniteAmmo") or v865.Name == "DoorForest" then
				local l_Position_26 = v865.Position;
				local l_Magnitude_8 = (l_Position_26 - l_Position_2).Magnitude;
				if l_Magnitude_8 < l_SeatPart_0 and l_CurrentCamera_0.CFrame:PointToObjectSpace(l_Position_26).Unit.Z < -0.93 and not raycast3(l_Position_2, l_Position_26 - l_Position_2, {
					l_CurrentCamera_0, 
					v88, 
					v865
					}) then
					l_SeatPart_0 = l_Magnitude_8;
					v127 = v865;
					v128 = l_Position_26;
				end;
			elseif v865.Name == "Document" then
				local l_Position_27 = v865.Position;
				local l_Magnitude_9 = (l_Position_27 - l_Position_2).Magnitude;
				if l_Magnitude_9 < l_SeatPart_0 and l_CurrentCamera_0.CFrame:PointToObjectSpace(l_Position_27).Unit.Z < -0.93 and not raycast3(l_Position_2, l_Position_27 - l_Position_2, {
					l_CurrentCamera_0, 
					v88, 
					v865.Parent
					}) then
					l_SeatPart_0 = l_Magnitude_9;
					v127 = v865;
					v128 = l_Position_27;
				end;
			end;
		end;
		v129 = nil;
		l_SeatPart_0 = (not not v144 or v141) and 0 or 6;
		for _, v884 in pairs(v562) do
			local l_Position_28 = v884.Position;
			local l_Magnitude_10 = (l_Position_28 - l_Position_2).Magnitude;
			if l_Magnitude_10 < l_SeatPart_0 and not raycast3(l_Position_2, l_Position_28 - l_Position_2, {
				l_CurrentCamera_0, 
				v77.data.Items, 
				v88, 
				v884
				}) then
				l_SeatPart_0 = l_Magnitude_10;
				v129 = v884;
			end;
		end;
		debug.profileend();
		debug.profilebegin("Check Events");
		l_SeatPart_0 = workspace.Events:FindFirstChild("SCP012");
		if l_SeatPart_0 then
			v574 = (l_SeatPart_0.Value.Position - l_Position_2).Magnitude;
			if v574 < 48 then
				local v887 = true;
				if v135 then
					local v888 = l_inv_1[v135];
					if v888 and v888.name == "SCP714" then
						v887 = false;
					end;
				end;
				if v134 then
					local v889 = l_inv_1[v134];
					if v889 and v889.name == "GasMask3" then
						v887 = false;
					end;
				end;
				if v136 then
					local v890 = l_inv_1[v136];
					if v890 and v890.name == "HeavyHazmat" then
						v887 = false;
					end;
				end;
				if v887 then
					if v574 < 4 then
						local l_Position_29 = l_SeatPart_0.Value.Position;
						v155 = l_Position_29;
						if v574 > 3.2 then
							l_Humanoid_0:Move((l_Position_29 - l_Position_2).Unit * 0.4 + l_Humanoid_0.MoveDirection * 1);
						end;
						local l_v99_35 = v99;
						l_v99_35.e_012 = l_v99_35.e_012 + v558;
						if v99.e_012 > 98.5 then
							kill();
						end;
						script.Seq012.Volume = 1;
						if not script.Seq012.IsPlaying then
							script.Seq012.TimePosition = v99.e_012;
							script.Seq012:Resume();
						end;
						if v101 > 50 then
							v101 = v101 - v558 * 15;
						end;
					else
						if script.Seq012.IsPlaying then
							if script.Seq012.Volume > 0.1 then
								local l_Seq012_0 = script.Seq012;
								l_Seq012_0.Volume = l_Seq012_0.Volume * 0.98;
							else
								script.Seq012:Pause();
							end;
						end;
						local l_Position_30 = l_SeatPart_0.Value.Position;
						if not raycast2(l_Position_2, l_Position_30 - l_Position_2 + l_SeatPart_0.Value.CFrame.LookVector * 17, {
							l_CurrentCamera_0, 
							v88, 
							l_SeatPart_0.Value, 
							l_SeatPart_0.Value.Parent.Collider012
							}) then
							v155 = l_Position_30;
							l_Humanoid_0:Move((l_Position_30 - l_Position_2).Unit * 0.4 + l_Humanoid_0.MoveDirection * 1);
						else
							local l_Door012_0 = meta_doors.Door012;
							local v896 = l_Door012_0.Main.Position + l_Door012_0.Main.CFrame.rightVector;
							if not raycast2(l_Position_2, v896 - l_Position_2, {
								l_CurrentCamera_0, 
								v88, 
								l_Door012_0
								}) then
								v155 = v896;
								l_Humanoid_0:Move((v896 - l_Position_2).Unit * 0.4 + l_Humanoid_0.MoveDirection * 1);
							end;
						end;
					end;
				elseif script.Seq012.IsPlaying then
					script.Seq012:Pause();
				end;
			end;
		end;
		debug.profileend();
		debug.profilebegin("Update Movement");
		if v84 == "SCP860" then
			l_Humanoid_0.MaxSlopeAngle = 15;
		else
			l_Humanoid_0.MaxSlopeAngle = 45;
		end;
		if v122 then
			v123 = lerpdt(v123, -2.5, 0.075, v558);
		else
			v123 = lerpdt(v123, 0, 0.075, v558);
		end;
		l_SeatPart_0 = l_preferences_0.WalkSpeed or (v570 or v571 or l_gi_2.Gamemode == "SD") and l_Configurations_0.general.walkSpeedHeavy or l_Configurations_0.general.walkSpeed;
		if not v124 then
			l_SeatPart_0 = 0;
		elseif v99.e_ntfintro then
			l_SeatPart_0 = 0;
		end;
		if v116 and v111 > 0 then
			l_Weapon_0.sprinting = true;
			l_SeatPart_0 = l_SeatPart_0 * 2.1;
		else
			l_Weapon_0.sprinting = false;
		end;
		v574 = true;
		if v111 ~= 0 then
			v574 = v114 and v116;
		end;
		if v574 then
			if not v121 then
				v121 = true;
				re_sprint:FireServer(true);
			end;
		elseif v121 then
			v121 = false;
			re_sprint:FireServer(false);
		end;
		if l_Weapon_0.info then
			l_SeatPart_0 = l_SeatPart_0 * (1 - l_Weapon_0.info.rigprop.Aim * 0.4);
		end;
		if v122 then
			l_SeatPart_0 = l_SeatPart_0 / 2.5;
			v81.meter.SprintFrame.SprintLabel.Image = "rbxassetid://293004380";
		else
			v81.meter.SprintFrame.SprintLabel.Image = "rbxassetid://293004466";
		end;
		if v104 then
			l_SeatPart_0 = l_SeatPart_0 * (v104 / 13);
		end;
		if v84 == "pocketdimension" then
			l_SeatPart_0 = l_SeatPart_0 * 0.75;
		end;
		if v151 then
			l_SeatPart_0 = l_SeatPart_0 / 4;
		end;
		if v99.i_npc1 then
			l_SeatPart_0 = l_SeatPart_0 * (1 - math.max(0, 8 - (v99.i_npc1.HumanoidRootPart.Position - l_Position_2).Magnitude) / 8 * 0.7);
		end;
		l_SeatPart_0 = l_SeatPart_0 * (0.6 + 0.4 * (l_Humanoid_0.Health / l_Humanoid_0.MaxHealth) ^ 3);
		v114 = l_Humanoid_0.MoveDirection.Magnitude > 0;
		if v114 and l_SeatPart_0 > 0 then
			l_Humanoid_0.WalkSpeed = lerpdt(l_Humanoid_0.WalkSpeed, l_SeatPart_0, 0.05, v558);
		else
			v114 = false;
			l_Humanoid_0.WalkSpeed = 0;
		end;
		v574 = nil;
		local l_v90_Attribute_2 = v90:GetAttribute("Gamemode");
		v113 = (v113 + (if not (l_v90_Attribute_2 ~= "NTF" and l_v90_Attribute_2 ~= "CI") or l_v90_Attribute_2 == "SD" then math.tanh(l_Humanoid_0.WalkSpeed / 15) * 15 else math.tanh(l_Humanoid_0.WalkSpeed / 9) * 9) * v558 / 2 * 1.7) % 6.283185307179586;
		local v898 = (v113 - 1.5707963267948966) % 6.283185307179586;
		if v898 > 3.141592653589793 and not v115 then
			v115 = true;
			doFootstep();
		elseif v898 < 3.141592653589793 and v115 then
			v115 = false;
			doFootstep();
		end;
		debug.profileend();
		l_SeatPart_0 = v123;
		if v104 then
			l_SeatPart_0 = l_SeatPart_0 + (1 - (v104 / 13) ^ 0.5) * -4;
		end;
		l_Humanoid_0.HipHeight = math.max(-1.9, l_SeatPart_0);
		debug.profilebegin("Update Blink");
		if v103 > 0 then
			v103 = v103 - v558;
		end;
		l_SeatPart_0 = true;
		if v103 <= 0 then
			l_SeatPart_0 = v117;
		end;
		if v120 or s_UIS:IsGamepadButtonDown(Enum.UserInputType.Gamepad1, Enum.KeyCode.ButtonL1) then
			l_SeatPart_0 = true;
		end;
		if v119 then
			l_SeatPart_0 = true;
			v119 = false;
		end;
		if l_SeatPart_0 then
			if not v90:GetAttribute("ForceBlink") then
				v90:SetAttribute("ForceBlink", true);
				re_blink:FireServer(nil, 1);
			end;
		elseif v90:GetAttribute("ForceBlink") then
			v90:SetAttribute("ForceBlink", false);
			re_blink:FireServer(nil, 0);
		end;
		if l_SeatPart_0 then
			if v110 > 0 then
				v110 = 0;
			end;
		elseif v110 < -0.2 then
			v110 = 20.2;
			attempt895JS();
		elseif v110 < 0 and v90:GetAttribute("Blink") > 0 then
			re_blink:FireServer(v110);
		end;
		debug.profileend();
		l_l_LocalPlayer_0_Mouse_0.Icon = "rbxassetid://" .. "2037270915";
		if not (not v126 and not v144) or v141 and not v141.Active.Value and not v143 then
			s_UIS.MouseIconEnabled = true;
		else
			s_UIS.MouseIconEnabled = false;
		end;
		debug.profilebegin("Update Weapon");
		if l_Weapon_0.info then
			if not v124 then
				l_Weapon_0.clear();
			elseif l_Weapon_0.info.firing then
				v116 = false;
			end;
		end;
		l_Weapon_0.crouch = v122;
		l_Weapon_0.tick(v558, v113, v123, l_current_0);
		l_SeatPart_0 = l_Weapon_0.info;
		if l_SeatPart_0 and l_SeatPart_0.ammo then
			v81.meter.AmmoFrame.Visible = true;
			v574 = v88:GetAttribute("SpawnProtection");
			if v574 then
				if v574 <= 2 then
					v81.meter.AmmoFrame.AmmoLabel.SP.Visible = time() % 0.2 > 0.1;
				else
					v81.meter.AmmoFrame.AmmoLabel.SP.Visible = true;
				end;
			else
				v81.meter.AmmoFrame.AmmoLabel.SP.Visible = false;
			end;
			if l_SeatPart_0.aim then
				v116 = false;
			end;
		else
			v81.meter.AmmoFrame.Visible = false;
		end;
		debug.profileend();
		debug.profilebegin("Update Meter");
		meterMain(v558);
		debug.profileend();
		debug.profilebegin("Update UI");
		if _G.debughud and _G.debughud.Visible then
			l_SeatPart_0 = {};
			table.insert(l_SeatPart_0, "Camera Position: " .. v3ToS(l_Position_2));
			v574, l_v90_Attribute_2, v898 = l_CurrentCamera_0.CFrame:ToEulerAnglesYXZ();
			table.insert(l_SeatPart_0, "Camera Angles: " .. a3ToS(v574, l_v90_Attribute_2, v898));
			table.insert(l_SeatPart_0, "");
			table.insert(l_SeatPart_0, "Health: " .. l_Health_0);
			table.insert(l_SeatPart_0, "MaxHealth: " .. l_Humanoid_0.MaxHealth);
			table.insert(l_SeatPart_0, "");
			table.insert(l_SeatPart_0, "Blink: " .. v110);
			table.insert(l_SeatPart_0, "Stamina: " .. v111);
			table.insert(l_SeatPart_0, "Bloodloss: " .. (v90 and v90:GetAttribute("Bloodloss") or "N/A"));
			table.insert(l_SeatPart_0, "");
			table.insert(l_SeatPart_0, "Set FOV: " .. 60 + (l_preferences_0.V_FOV or 0.25) * 20);
			table.insert(l_SeatPart_0, "Actual FOV: " .. l_CurrentCamera_0.FieldOfView);
			table.insert(l_SeatPart_0, "Set Brightness: " .. (l_preferences_0.V_Bright or 0));
			table.insert(l_SeatPart_0, "");
			table.insert(l_SeatPart_0, "SCP-106 Location: " .. tostring(workspace.SCPs.SCP106.HumanoidRootPart.Position));
			table.insert(l_SeatPart_0, "SCP-173 Location: " .. tostring(workspace.SCPs.SCP173.Base.Position));
			table.insert(l_SeatPart_0, "");
			table.insert(l_SeatPart_0, "Events:");
			for v899, v900 in pairs(v99) do
				table.insert(l_SeatPart_0, v899 .. ": " .. tostring(v900));
			end;
			v574 = "";
			for v901, v902 in pairs(l_SeatPart_0) do
				if v901 == 1 then
					v574 = v902;
				else
					v574 = v574 .. "\n" .. v902;
				end;
			end;
			_G.debughud.Text = v574;
		end;
		if v570 or v571 then
			l_SeatPart_0 = v81.hud.Voice.Cooldown;
			v574 = l_SeatPart_0.TNV.Value;
			if v574 > 0 then
				l_SeatPart_0.Bar.BackgroundTransparency = 0;
				l_SeatPart_0.Bar.Size = UDim2.new(v574, 0, 1, 0);
				l_SeatPart_0.BackgroundTransparency = 0.75;
			else
				l_SeatPart_0.Bar.BackgroundTransparency = 1;
				l_SeatPart_0.BackgroundTransparency = 1;
			end;
			if v81.hud and v81.hud.Voice.Visible then
				l_SeatPart_0 = l_Map_0.currentMap.properties.CameraScanCD;
				v574 = v81.hud.Voice.CameraScan;
				if l_SeatPart_0 > 0 then
					l_v90_Attribute_2 = "Request Camera Scan (" .. getTimeFromSeconds(l_SeatPart_0) .. ")";
					if v574.Text ~= l_v90_Attribute_2 then
						v574.Text = l_v90_Attribute_2;
					end;
					v574.TextTransparency = 0.5;
					v574.NumL.TextTransparency = 0.5;
				else
					if v574.Text ~= "Request Camera Scan" then
						v574.Text = "Request Camera Scan";
					end;
					v574.TextTransparency = 0;
					v574.NumL.TextTransparency = 0;
				end;
			end;
		end;
		l_SeatPart_0 = v81.hud.Hand;
		if v127 and v127.Name:sub(1, 6) == "Button" then
			l_SeatPart_0.Visible = true;
			v574 = v128;
			l_v90_Attribute_2 = l_CurrentCamera_0.CFrame:PointToObjectSpace((Vector3.new(v574.X, l_CurrentCamera_0.CFrame.Position.Y, v574.Z))).Unit;
			v898 = l_CurrentCamera_0.CFrame:PointToObjectSpace(v574).Unit;
			local l_X_0 = l_v90_Attribute_2.X;
			if l_v90_Attribute_2.Z > 0 then
				l_X_0 = l_v90_Attribute_2.X > 0 and 1 or -1;
			end;
			l_SeatPart_0.Position = UDim2.new(0.5, l_X_0 * l_CurrentCamera_0.ViewportSize.X / 3 - 32, 0.5, -v898.Y * l_CurrentCamera_0.ViewportSize.Y / 3 - 32);
		else
			l_SeatPart_0.Visible = false;
		end;
		l_SeatPart_0 = v81.hud.Interact;
		if v81.screen then
			l_SeatPart_0.Visible = false;
		elseif v130 then
			if v130.Name == "Lever" then
				l_SeatPart_0.Visible = true;
				l_SeatPart_0.Up.Visible = true;
				l_SeatPart_0.Down.Visible = true;
			elseif v130.Name == "Cover008" then
				l_SeatPart_0.Visible = true;
				l_SeatPart_0.Up.Visible = v130.Rotation.Value < 0.95;
				l_SeatPart_0.Down.Visible = v130.Rotation.Value > -0.95;
			elseif v130.Name == "Key914" then
				l_SeatPart_0.Visible = true;
				l_SeatPart_0.Left.Visible = v130.Rotation.Value > -0.95;
				l_SeatPart_0.Right.Visible = true;
			elseif v130.Name == "Knob914" then
				l_SeatPart_0.Visible = true;
				l_SeatPart_0.Left.Visible = true;
				l_SeatPart_0.Right.Visible = true;
			end;
		elseif v127 then
			if not (v127.Name ~= "Lever") or v127.Name == "Cover008" then
				l_SeatPart_0.Visible = true;
				l_SeatPart_0.Up.Visible = false;
				l_SeatPart_0.Down.Visible = false;
				l_SeatPart_0.Left.Visible = false;
				l_SeatPart_0.Right.Visible = false;
			elseif not (v127.Parent ~= v77.data.Screens and v127.Name ~= "SCP860Door" and v127.Name ~= "SCP294" and v127.Name ~= "SCP1162" and v127.Name ~= "InfiniteAmmo" and v127.Name ~= "Document") or v127.Name == "DoorForest" then
				l_SeatPart_0.Visible = true;
				l_SeatPart_0.Up.Visible = false;
				l_SeatPart_0.Down.Visible = false;
				l_SeatPart_0.Left.Visible = false;
				l_SeatPart_0.Right.Visible = false;
			elseif not (v127.Name ~= "Key914") or v127.Name == "Knob914" then
				l_SeatPart_0.Visible = true;
				l_SeatPart_0.Up.Visible = false;
				l_SeatPart_0.Down.Visible = false;
				l_SeatPart_0.Left.Visible = false;
				l_SeatPart_0.Right.Visible = false;
			else
				l_SeatPart_0.Visible = false;
			end;
		else
			l_SeatPart_0.Visible = false;
		end;
		l_SeatPart_0 = v81.hud.Grab;
		if v129 then
			l_SeatPart_0.Visible = true;
			v574 = v129.Position;
			l_v90_Attribute_2 = l_CurrentCamera_0.CFrame:PointToObjectSpace((Vector3.new(v574.X, l_CurrentCamera_0.CFrame.Position.Y, v574.Z))).Unit;
			v898 = l_CurrentCamera_0.CFrame:PointToObjectSpace(v574).Unit;
			local l_X_1 = l_v90_Attribute_2.X;
			if l_v90_Attribute_2.Z > 0 then
				l_X_1 = l_v90_Attribute_2.X > 0 and 1 or -1;
			end;
			l_SeatPart_0.Position = UDim2.new(0.5, l_X_1 * l_CurrentCamera_0.ViewportSize.X / 3 - 32, 0.5, -v898.Y * l_CurrentCamera_0.ViewportSize.Y / 3 - 32);
		else
			l_SeatPart_0.Visible = false;
		end;
		l_SeatPart_0 = v81.hud.Cursor;
		if v152 then
			v574 = getSlot2(v152, true);
			if v574 and v574.name and l_ItemsInfo_0[v574.name] then
				l_SeatPart_0.Image = "rbxassetid://" .. l_ItemsInfo_0[v574.name].icon;
				l_SeatPart_0.Visible = true;
			else
				l_SeatPart_0.Visible = false;
			end;
		elseif v138 then
			v574 = getSlot2(v138, true);
			if v574 and v574.name and l_ItemsInfo_0[v574.name].keycard then
				l_SeatPart_0.Image = "rbxassetid://" .. l_ItemsInfo_0[v574.name].icon;
				l_SeatPart_0.Visible = true;
			else
				v138 = nil;
				l_SeatPart_0.Visible = false;
			end;
		elseif v139 then
			v574 = getSlot2(v139, true);
			if v574 and v574.name and l_ItemsInfo_0[v574.name].dna then
				l_SeatPart_0.Image = "rbxassetid://" .. l_ItemsInfo_0[v574.name].icon;
				l_SeatPart_0.Visible = true;
			else
				v139 = nil;
				l_SeatPart_0.Visible = false;
			end;
		elseif v140 then
			if v140 == "SCP860" then
				l_SeatPart_0.Image = "rbxassetid://" .. "292748528";
				l_SeatPart_0.Visible = true;
			else
				l_SeatPart_0.Visible = false;
			end;
		else
			l_SeatPart_0.Visible = false;
		end;
		if v141 then
			if not v124 then
				v141 = nil;
			else
				v81.hud.SCP294Panel.Visible = true;
				if v141.Active.Value then
					v81.hud.SCP294Panel.SCP294.Keyboard.Visible = false;
					v81.hud.SCP294Panel.SCP294.Screen.Visible = false;
					v81.hud.SCP294Panel.SCP294.Screen2.Visible = time() % 1 > 0.5;
				elseif v143 then
					v81.hud.SCP294Panel.SCP294.Screen2.Visible = false;
					v81.hud.SCP294Panel.SCP294.Screen.Visible = true;
					v81.hud.SCP294Panel.SCP294.Keyboard.Visible = false;
				else
					v81.hud.SCP294Panel.SCP294.Screen2.Visible = false;
					v81.hud.SCP294Panel.SCP294.Screen.Visible = true;
					v81.hud.SCP294Panel.SCP294.Keyboard.Visible = true;
				end;
			end;
		else
			v81.hud.SCP294Panel.Visible = false;
		end;
		if v144 then
			if not v124 then
				v144 = nil;
			else
				v81.fore.Keypad.Visible = true;
			end;
		else
			v81.fore.Keypad.Visible = false;
		end;
		v157 = false;
		l_SeatPart_0 = nil;
		if v134 then
			v574 = l_inv_1[v134];
			l_v90_Attribute_2 = v574 and v574.name;
			l_SeatPart_0 = v574;
			if not (l_v90_Attribute_2:sub(1, 7) ~= "GasMask" and l_v90_Attribute_2 ~= "SuperGasMask") or l_v90_Attribute_2 == "SCP1499" then
				v81.fore.VisorOverlay.Visible = false;
				v81.fore.GasOverlay.Visible = true;
				v81.fore.NVGOverlay.Visible = false;
				v81.fore.SOverlay.Visible = false;
				v81.fore.NVGS.Visible = false;
				v81.fore.NVGMeter.Visible = false;
				v81.fore.HelmetOverlay.Visible = false;
				v81.fore.EyeDarkness.Image = "rbxassetid://" .. l_TextureIndexer_0.fog;
				workspace.SCPs.SCP096.Head.Eyes.SCRAMBLE.Enabled = false;
			elseif not (l_v90_Attribute_2 ~= "NVG" and l_v90_Attribute_2 ~= "NVG_S") or l_v90_Attribute_2 == "NVG_R" then
				v81.fore.VisorOverlay.Visible = false;
				v81.fore.GasOverlay.Visible = false;
				v81.fore.NVGOverlay.Visible = true;
				v81.fore.SOverlay.Visible = false;
				v81.fore.NVGMeter.Visible = l_v90_Attribute_2 ~= "NVG_R";
				v81.fore.NVGS.Visible = l_v90_Attribute_2 == "NVG_S";
				v81.fore.HelmetOverlay.Visible = false;
				v81.fore.EyeDarkness.Image = "rbxassetid://" .. l_TextureIndexer_0.fogNV;
				if l_v90_Attribute_2 == "NVG" then
					v898 = v81.fore.NVGMeter;
					v898.Icon.Image = "rbxassetid://" .. l_TextureIndexer_0.battery_GREEN;
					v898.Icon.ImageColor3 = Color3.new(0, 1, 0);
					local v905 = v574 and v574.battery or 0;
					for v906 = 1, 11 do
						if v906 < v905 / 100 * 11 + 0.5 then
							v898["Battery" .. v906].BackgroundColor3 = Color3.new(0, 1, 0);
						else
							v898["Battery" .. v906].BackgroundColor3 = Color3.new(0, 0.1, 0);
						end;
					end;
				elseif l_v90_Attribute_2 == "NVG_S" then
					v898 = v81.fore.NVGMeter;
					v898.Icon.Image = "rbxassetid://" .. l_TextureIndexer_0.battery_BLUE;
					v898.Icon.ImageColor3 = Color3.new(0, 0, 1);
					local v907 = v574 and v574.battery or 0;
					for v908 = 1, 11 do
						if v908 < v907 / 100 * 11 + 0.5 then
							v898["Battery" .. v908].BackgroundColor3 = Color3.new(0, 0, 1);
						else
							v898["Battery" .. v908].BackgroundColor3 = Color3.new(0, 0, 0.1);
						end;
					end;
					v81.fore.NVGS.Timer.Text = math.floor(v158) .. "." .. math.floor(v158 % 1 * 10);
					v157 = true;
				end;
				workspace.SCPs.SCP096.Head.Eyes.SCRAMBLE.Enabled = false;
			elseif l_v90_Attribute_2 == "SCRAMBLE" then
				v81.fore.VisorOverlay.Visible = false;
				v81.fore.GasOverlay.Visible = false;
				v81.fore.NVGOverlay.Visible = false;
				v81.fore.SOverlay.Visible = true;
				v81.fore.NVGMeter.Visible = true;
				v81.fore.NVGS.Visible = false;
				v81.fore.HelmetOverlay.Visible = false;
				v81.fore.EyeDarkness.Image = "rbxassetid://" .. l_TextureIndexer_0.fogNV;
				v898 = v81.fore.NVGMeter;
				v898.Icon.Image = "rbxassetid://" .. l_TextureIndexer_0.night_vision_goggles_battery;
				v898.Icon.ImageColor3 = Color3.new(1, 1, 1);
				local v909 = v574 and v574.battery or 0;
				for v910 = 1, 11 do
					if v910 < v909 / 100 * 11 + 0.5 then
						v898["Battery" .. v910].BackgroundColor3 = Color3.new(0.5, 0.5, 0.5);
					else
						v898["Battery" .. v910].BackgroundColor3 = Color3.new(0.1, 0.1, 0.1);
					end;
				end;
				local l_SCP096_0 = workspace.SCPs.SCP096;
				local l_Eyes_0 = l_SCP096_0.Head.Eyes;
				if not raycast2(l_Position_2, l_Eyes_0.Position - l_Position_2, {
					l_CurrentCamera_0, 
					v88, 
					l_SCP096_0
					}) then
					l_SCP096_0.Head.Eyes.SCRAMBLE.Enabled = true;
					l_SCP096_0.Head.Eyes.SCRAMBLE.Size = UDim2.new(0.9 + math.random() * 0.2, 0, 0.9 + math.random() * 0.2, 0);
				else
					l_SCP096_0.Head.Eyes.SCRAMBLE.Enabled = false;
				end;
			elseif l_v90_Attribute_2:sub(1, 6) == "Helmet" then
				v898 = v81.fore.VisorOverlay;
				local v913 = true;
				if l_v90_Attribute_2 ~= "HelmetNTF" then
					v913 = true;
					if l_v90_Attribute_2 ~= "HelmetCI" then
						v913 = l_v90_Attribute_2:sub(1, 9) == "HelmetNu7";
					end;
				end;
				v898.Visible = v913;
				v81.fore.GasOverlay.Visible = false;
				v81.fore.NVGOverlay.Visible = false;
				v81.fore.SOverlay.Visible = false;
				v81.fore.NVGS.Visible = false;
				v81.fore.NVGMeter.Visible = false;
				v81.fore.HelmetOverlay.Visible = l_v90_Attribute_2 == "Helmet";
				v81.fore.EyeDarkness.Image = "rbxassetid://" .. l_TextureIndexer_0.fog;
				workspace.SCPs.SCP096.Head.Eyes.SCRAMBLE.Enabled = false;
			else
				re_use:FireServer(v134, false);
				v134 = nil;
				v81.fore.VisorOverlay.Visible = false;
				v81.fore.GasOverlay.Visible = false;
				v81.fore.NVGOverlay.Visible = false;
				v81.fore.SOverlay.Visible = false;
				v81.fore.NVGS.Visible = false;
				v81.fore.NVGMeter.Visible = false;
				v81.fore.HelmetOverlay.Visible = false;
				v81.fore.EyeDarkness.Image = "rbxassetid://" .. l_TextureIndexer_0.fog;
				update966(false);
				workspace.SCPs.SCP096.Head.Eyes.SCRAMBLE.Enabled = false;
			end;
		else
			v81.fore.VisorOverlay.Visible = false;
			v81.fore.GasOverlay.Visible = false;
			v81.fore.NVGOverlay.Visible = false;
			v81.fore.SOverlay.Visible = false;
			v81.fore.NVGS.Visible = false;
			v81.fore.NVGMeter.Visible = false;
			v81.fore.HelmetOverlay.Visible = false;
			v81.fore.EyeDarkness.Image = "rbxassetid://" .. l_TextureIndexer_0.fog;
			workspace.SCPs.SCP096.Head.Eyes.SCRAMBLE.Enabled = false;
		end;
		if v136 then
			v574 = l_inv_1[v136];
			l_v90_Attribute_2 = v574 and v574.name;
			if not (l_v90_Attribute_2 ~= "Hazmat" and l_v90_Attribute_2 ~= "SuperHazmat") or v574.name == "HeavyHazmat" or v574.name == "HelmetBeta7" then
				v81.fore.HazmatOverlay.Visible = true;
			else
				v81.fore.HazmatOverlay.Visible = false;
			end;
		else
			v81.fore.HazmatOverlay.Visible = false;
		end;
		v574 = v133 and l_inv_1[v133];
		l_v90_Attribute_2 = v574 and v574.name;
		if l_v90_Attribute_2 and (not (l_v90_Attribute_2 ~= "Radio" and l_v90_Attribute_2 ~= "Radio18V") or l_v90_Attribute_2 == "RadioFine") then
			v898 = v81.hud.Radio;
			v898.Visible = true;
			local l_Screen_1 = v898.Screen;
			local v915 = v574.battery or 0;
			if l_v90_Attribute_2 == "RadioFine" then
				v915 = 1e999;
			end;
			l_Screen_1.Visible = v915 > 0;
			if v915 > 0 then
				v149 = true;
				l_Screen_1.CNum.Text = tostring(v147);
				if l_v90_Attribute_2 ~= "RadioFine" then
					l_Screen_1["Battery" .. 1].BackgroundTransparency = v915 > 0 and 0 or 1;
					l_Screen_1["Battery" .. 2].BackgroundTransparency = v915 > 20 and 0 or 1;
					l_Screen_1["Battery" .. 3].BackgroundTransparency = v915 > 40 and 0 or 1;
					l_Screen_1["Battery" .. 4].BackgroundTransparency = v915 > 60 and 0 or 1;
					l_Screen_1["Battery" .. 5].BackgroundTransparency = v915 > 80 and 0 or 1;
				end;
				local v916 = nil;
				v916 = if not v147 then selectChannel(v148) else updateChannel();
				local v917 = workspace.RadioChannels["Channel" .. v147];
				local l_Static895_0 = v81.hud.Static895;
				local v919 = workspace.Events:FindFirstChild("SCP895") and workspace.Events.SCP895.Value;
				local v920 = nil;
				local v921 = l_preferences_0.S_Radio or 1;
				if v919 then
					v920 = (v919.Position - l_Position_2).Magnitude / 30;
					local v922 = math.random() * 0.5;
					v920 = math.max(0, -v922 + v920 * (1 + v922));
					if v920 < 1 then
						v921 = v920;
						if not l_Static895_0.IsPlaying then
							l_Static895_0.SoundId = "rbxassetid://" .. l_SoundIndexer_0.Static895;
							l_Static895_0:Resume();
						end;
						l_Static895_0.Volume = (1 - v920) * 8;
						if v920 < math.random() ^ 10 then
							selectChannel(math.random(2, 5));
						end;
						v81.hud.Sque.Volume = v920 or 1;
					else
						if l_Static895_0.IsPlaying then
							l_Static895_0:Pause();
						end;
						v81.hud.Sque.Volume = 1;
					end;
				end;
				v917.Volume = v921;
				local v923 = v81.hud.Sque.PlaybackLoudness / 10 + l_Static895_0.PlaybackLoudness / 2 * l_Static895_0.Volume;
				local l_Static_0 = workspace.RadioChannels.Static;
				v923 = v923 + l_Static_0.PlaybackLoudness * l_Static_0.Volume;
				if v917.Volume > 0 then
					for _, v926 in pairs(workspace.RadioChannels["Channel" .. v147]:GetChildren()) do
						v923 = v923 + v926.PlaybackLoudness / 5 * v926.Volume * v917.Volume;
					end;
				end;
				l_Screen_1.LoudFrame.Size = l_TouchEnabled_0 and UDim2.new(0, 2, 0, v923 / 5 + 2) or UDim2.new(0, -v923 - 4, 0, 4);
				l_Screen_1.Track.TextL.Visible = v916;
				if v916 then
					v150 = v150 + v558 * 20;
					local l_Offset_0 = l_Screen_1.Track.Size.X.Offset;
					local l_X_2 = l_Screen_1.Track.TextL.TextBounds.X;
					if l_Screen_1.Track.TextL.Size.X.Offset ~= l_X_2 then
						l_Screen_1.Track.TextL.Size = UDim2.new(0, l_X_2, 1, 0);
					end;
					l_Screen_1.Track.TextL.Position = UDim2.new(0, l_Offset_0 - v150, 0, 0);
					if l_Offset_0 + l_X_2 - v150 < -5 then
						changeRadioText();
						v150 = 0;
					end;
				end;
				_G.ChatRadio = v570;
			else
				v149 = false;
				if v147 then
					selectChannel(nil);
				end;
				_G.ChatRadio = false;
			end;
		else
			v149 = false;
			if v147 then
				selectChannel(nil);
			end;
			v81.hud.Radio.Visible = false;
			_G.ChatRadio = false;
		end;
		if l_v90_Attribute_2 and l_v90_Attribute_2:sub(1, 4) == "SNav" then
			v81.hud.SNav.Visible = true;
			v898 = nil;
			local v929 = nil;
			if l_v90_Attribute_2 == "SNavUlt" then
				v898 = true;
				local v930 = time() / 0.6 % 1 > 0.3333333333333333;
				local v931 = {};
				for _, v933 in ipairs(workspace.SCPs:GetChildren()) do
					local v934 = v933.Name:sub(4);
					local v935 = v933:FindFirstChild("HumanoidRootPart") or v933:FindFirstChild("Base");
					if v935 then
						local l_Magnitude_11 = ((v935.Position - l_Position_2) * Vector3.new(1, 0, 1)).Magnitude;
						local l_Magnitude_12 = ((v935.Position - l_Position_2) * Vector3.new(0, 1, 0)).Magnitude;
						if l_Magnitude_11 < 96 and l_Magnitude_12 < 16 and (not v931[v934] or l_Magnitude_11 < v931[v934]) then
							v931[v934] = l_Magnitude_11;
						end;
					end;
				end;
				local l_SCP895_0 = workspace.Events:FindFirstChild("SCP895");
				if l_SCP895_0 then
					local l_Magnitude_13 = ((l_SCP895_0.Value.Position - l_Position_2) * Vector3.new(1, 0, 1)).Magnitude;
					local l_Magnitude_14 = ((l_SCP895_0.Value.Position - l_Position_2) * Vector3.new(0, 1, 0)).Magnitude;
					if l_Magnitude_13 < 96 and l_Magnitude_14 < 16 then
						v931["895"] = l_Magnitude_13;
					end;
				end;
				local l_Radar_0 = v81.hud.SNav.Screen.Radar;
				for _, v943 in pairs(l_Radar_0:GetChildren()) do
					if v943.Name:sub(1, 4) == "Ring" then
						local v944 = v930 and v931[v943.Name:sub(5)];
						v943.Visible = v944 and true;
						if v944 then
							v944 = math.floor(v944 / 2 + 0.5) * 2;
							v943.Size = UDim2.new(0, v944, 0, v944);
						end;
					end;
				end;
				for _, v946 in pairs(l_Radar_0.SCPs:GetChildren()) do
					if v946.ClassName == "TextLabel" then
						v946.Visible = v930 and v931[v946.Name:sub(4)] and true;
					end;
				end;
			else
				v929 = v574.battery or 0;
				v898 = v929 > 0;
			end;
			v161 = l_v90_Attribute_2 ~= "SNav";
			local l_Screen_2 = v81.hud.SNav.Screen;
			l_Screen_2.Visible = v898;
			if v898 then
				l_Screen_2.Radar.Rooms.Offsetter.Position = UDim2.new(0.5, -l_Position_2.X / 2, 0.5, -l_Position_2.Z / 2);
				local l_LookVector_2 = l_CurrentCamera_0.CFrame.LookVector;
				l_Screen_2.Radar.Arrow.Rotation = -math.atan2(-l_LookVector_2.X, -l_LookVector_2.Z) / 3.141592653589793 * 180;
				l_Screen_2.UselessLabel.Visible = l_v90_Attribute_2 == "SNav";
				if v929 then
					local l_Battery_0 = l_Screen_2.Battery;
					l_Battery_0.Visible = true;
					l_Battery_0["Battery" .. 1].Visible = v929 > 0;
					l_Battery_0["Battery" .. 2].Visible = v929 > 10;
					l_Battery_0["Battery" .. 3].Visible = v929 > 20;
					l_Battery_0["Battery" .. 4].Visible = v929 > 30;
					l_Battery_0["Battery" .. 5].Visible = v929 > 40;
					l_Battery_0["Battery" .. 6].Visible = v929 > 50;
					l_Battery_0["Battery" .. 7].Visible = v929 > 60;
					l_Battery_0["Battery" .. 8].Visible = v929 > 70;
					l_Battery_0["Battery" .. 9].Visible = v929 > 80;
					l_Battery_0["Battery" .. 10].Visible = v929 > 90;
				else
					l_Screen_2.Battery.Visible = false;
				end;
			end;
		else
			v81.hud.SNav.Visible = false;
		end;
		if l_SeatPart_0 and l_SeatPart_0.name == "SCRAMBLE" and l_SeatPart_0.battery and l_SeatPart_0.battery > 0 then
			if not script.SCRAMBLE.IsPlaying then
				script.SCRAMBLE.SoundId = "rbxassetid://" .. l_SoundIndexer_0.SCRAMBLE;
				script.SCRAMBLE:Play();
			end;
		else
			script.SCRAMBLE:Stop();
		end;
		if v108 > 0 then
			v81.fore.EyeDarkness2.BackgroundTransparency = 1 - (math.tanh(v108 * 0.5 - 2) + 1) / 2;
		else
			v81.fore.EyeDarkness2.BackgroundTransparency = 1;
		end;
		if not (v84 ~= "gatea" and v84 ~= "exit1") or v84 == "intro" then
			v81.fore.EyeDarkness.ImageTransparency = 1;
		else
			v81.fore.EyeDarkness.ImageTransparency = 0;
		end;
		v81:Tick(v558, {
			invobj = v96, 
			equip_face = v134, 
			equip_hand = v135, 
			equip_body = v136, 
			equip = v133, 
			primary = l_v93_0.gi.Primary, 
			secondary = l_v93_0.gi.Secondary, 
			melee = l_v93_0.gi.Melee, 
			special = l_v93_0.gi.Special
		});
		debug.profileend();
		debug.profilebegin("Pivot Interact");
		if v130 then
			if v130.Name == "Lever" then
				v574 = v130.Controller.Value;
				l_v90_Attribute_2 = v130.Base.Position;
				v898 = l_CurrentCamera_0.CFrame:PointToObjectSpace(l_v90_Attribute_2).Unit;
				if v574 == l_LocalPlayer_0 and v898.Z < -0.8 and (l_v90_Attribute_2 - l_Position_2).Magnitude < 4 then
					local v950 = math.clamp(v131 + (l_CurrentCamera_0.CFrame.LookVector.Y - v132) * 12, -1, 1);
					re_changerot:FireServer(v130, v950);
					v130.Rotation.Value = v950;
					if math.abs(v950) == 1 then
						v131 = v950;
						v132 = l_CurrentCamera_0.CFrame.LookVector.Y;
					end;
				else
					if v574 == l_LocalPlayer_0 then
						re_usep:FireServer(v130, false);
					end;
					v130 = nil;
					v131 = nil;
					v132 = nil;
				end;
			elseif v130.Name == "Cover008" then
				v574 = v130.Controller.Value;
				l_v90_Attribute_2 = v130.Base.Position;
				v898 = l_CurrentCamera_0.CFrame:PointToObjectSpace(l_v90_Attribute_2).Unit;
				if v574 == l_LocalPlayer_0 and v898.Z < -0.8 and (l_v90_Attribute_2 - l_Position_2).Magnitude < 5 then
					local v951 = math.clamp(v131 + (l_CurrentCamera_0.CFrame.LookVector.Y - v132) * 12, -1, 1);
					re_changerot:FireServer(v130, v951);
					v130.Rotation.Value = v951;
					if math.abs(v951) == 1 then
						v131 = v951;
						v132 = l_CurrentCamera_0.CFrame.LookVector.Y;
					end;
				else
					if v574 == l_LocalPlayer_0 then
						re_usep:FireServer(v130, false);
					end;
					v130 = nil;
					v131 = nil;
					v132 = nil;
				end;
			elseif v130.Name == "Key914" then
				v574 = v130.Controller.Value;
				l_v90_Attribute_2 = v130.Base.Position;
				v898 = l_CurrentCamera_0.CFrame:PointToObjectSpace(l_v90_Attribute_2).Unit;
				if v574 == l_LocalPlayer_0 and v898.Z < -0.8 and (l_v90_Attribute_2 - l_Position_2).Magnitude < 4 then
					local l_LookVector_3 = v130.Base.CFrame.LookVector;
					local v953 = math.clamp(v131 + (eify(math.atan2(-l_LookVector_3.X, -l_LookVector_3.Z) - math.atan2(-l_CurrentCamera_0.CFrame.LookVector.X, -l_CurrentCamera_0.CFrame.LookVector.Z)) - v132) * 6, -1, 0);
					re_changerot:FireServer(v130, v953);
					v130.Rotation.Value = v953;
					if math.abs(v953) == 1 then
						v131 = v953;
						v132 = eify(math.atan2(-l_LookVector_3.X, -l_LookVector_3.Z) - math.atan2(-l_CurrentCamera_0.CFrame.LookVector.X, -l_CurrentCamera_0.CFrame.LookVector.Z));
					end;
				else
					if v574 == l_LocalPlayer_0 then
						re_usep:FireServer(v130, false);
					end;
					v130 = nil;
					v131 = nil;
					v132 = nil;
				end;
			elseif v130.Name == "Knob914" then
				v574 = v130.Controller.Value;
				l_v90_Attribute_2 = v130.Base.Position;
				v898 = l_CurrentCamera_0.CFrame:PointToObjectSpace(l_v90_Attribute_2).Unit;
				if v574 == l_LocalPlayer_0 and v898.Z < -0.8 and (l_v90_Attribute_2 - l_Position_2).Magnitude < 4 then
					local l_LookVector_4 = v130.Base.CFrame.LookVector;
					local v955 = math.clamp(v131 + (eify(math.atan2(l_LookVector_4.X, l_LookVector_4.Z) - math.atan2(-l_CurrentCamera_0.CFrame.LookVector.X, -l_CurrentCamera_0.CFrame.LookVector.Z)) - v132) * 6, -1, 1);
					re_changerot:FireServer(v130, v955);
					v130.Rotation.Value = v955;
					if math.abs(v955) == 1 then
						v131 = v955;
						v132 = eify(math.atan2(l_LookVector_4.X, l_LookVector_4.Z) - math.atan2(-l_CurrentCamera_0.CFrame.LookVector.X, -l_CurrentCamera_0.CFrame.LookVector.Z));
					end;
				else
					if v574 == l_LocalPlayer_0 then
						re_usep:FireServer(v130, false);
					end;
					v130 = nil;
					v131 = nil;
					v132 = nil;
				end;
			end;
		end;
		debug.profileend();
		debug.profilebegin("Update Inventory");
		debug.profilebegin("Update Weapons");
		if l_preferences_0.NoHUD or l_preferences_0.Cinematic then
			v81.inv.WeaponInv.Visible = false;
		else
			v574 = false;
			for v956 = 1, 4 do
				if v90:GetAttribute(v53[v956]) ~= 0 then
					v574 = true;
					break;
				end;
			end;
			v81.inv.WeaponInv.Visible = v574;
		end;
		debug.profileend();
		debug.profileend();
		debug.profilebegin("Super NVG");
		v158 = v158 - v558;
		if v158 < 0 then
			v158 = v158 + 8;
			if v177 then
				for _, v958 in pairs(v177) do
					v958:Destroy();
				end;
				v177 = {};
			end;
			v176 = {};
			for _, v960 in pairs(workspace.SCPs:GetChildren()) do
				local l_v960_Attribute_0 = v960:GetAttribute("NVName");
				if l_v960_Attribute_0 then
					v176[v960.HumanoidRootPart.Position] = l_v960_Attribute_0;
				elseif v960.Name == "SCP049" then
					v176[v960.HumanoidRootPart.Position] = "SCP-049";
				elseif v960.Name == "SCP066" then
					v176[v960.Base.Position] = "SCP-066";
				elseif v960.Name == "SCP096" then
					v176[v960.HumanoidRootPart.Position] = "SCP-096";
				elseif v960.Name == "SCP106" then
					v176[v960.HumanoidRootPart.Position] = "SCP-106";
				elseif v960.Name == "SCP173" then
					v176[v960.Base.Position] = "SCP-173";
				elseif v960.Name == "SCP457" then
					v176[v960.HumanoidRootPart.Position] = "SCP-457";
				elseif v960.Name == "SCP939" then
					v176[v960.HumanoidRootPart.Position] = "SCP-939";
				elseif v960.Name == "SCP966" then
					v176[v960.HumanoidRootPart.Position] = "SCP-966";
				elseif v960.Name == "ForestMonster" then
					v176[v960.HumanoidRootPart.Position] = "Unidentified creature";
				end;
			end;
			for _, v963 in pairs(workspace.NPCs:GetChildren()) do
				if v963:FindFirstChild("HumanoidRootPart") then
					if v963.Name == "Zombie" then
						v176[v963.HumanoidRootPart.Position] = "Human";
					else
						v176[v963.HumanoidRootPart.Position] = v963.Name;
					end;
				end;
			end;
			for _, v965 in pairs(getIGPlayers()) do
				if v965 ~= v88 and v965:FindFirstChild("HumanoidRootPart") then
					local l_Humanoid_5 = v965:FindFirstChild("Humanoid");
					local l_GameInfo_1 = v965:FindFirstChild("GameInfo");
					if l_Humanoid_5 and l_GameInfo_1 then
						local v968 = "";
						local l_l_GameInfo_1_Attribute_0 = l_GameInfo_1:GetAttribute("Gamemode");
						if l_l_GameInfo_1_Attribute_0 then
							local v970 = v52[l_l_GameInfo_1_Attribute_0.Value];
							if v970 then
								v968 = v970 .. " ";
							end;
						end;
						if l_preferences_0.NoDisplayName then
							v176[v965.HumanoidRootPart.Position] = v968 .. v965.Name;
						elseif l_Humanoid_5.DisplayName ~= v965.Name then
							v176[v965.HumanoidRootPart.Position] = v968 .. l_Humanoid_5.DisplayName .. " (@" .. v965.Name .. ")";
						else
							v176[v965.HumanoidRootPart.Position] = v968 .. l_Humanoid_5.DisplayName;
						end;
					end;
				end;
			end;
		end;
		if v157 then
			if not v177 then
				v177 = {};
				for v971, v972 in pairs(v176) do
					local l_Attachment_0 = Instance.new("Attachment");
					l_Attachment_0.Position = v971;
					local v974 = l_NVGSObj_0:Clone();
					v974.Parent = l_Attachment_0;
					l_Attachment_0.Parent = l_Terrain_0;
					local v975 = (v971 - l_Position_2).Magnitude / 3.281;
					v974.Enabled = v975 < 24;
					v974.Dist.Text = math.floor(v975) .. "." .. math.floor(v975 % 1 * 10) .. " M";
					v974.Obj.Text = string.upper(v972);
					table.insert(v177, l_Attachment_0);
				end;
			else
				for _, v977 in pairs(v177) do
					local l_NVGSObj_1 = v977.NVGSObj;
					local v979 = (v977.Position - l_Position_2).Magnitude / 3.281;
					l_NVGSObj_1.Enabled = v979 < 24;
					l_NVGSObj_1.Dist.Text = math.floor(v979) .. "." .. math.floor(v979 % 1 * 10) .. " M";
				end;
			end;
		elseif v177 then
			for _, v981 in pairs(v177) do
				v981:Destroy();
			end;
			v177 = {};
		end;
		debug.profileend();
		debug.profilebegin("Misc 2");
		updateAmbience(v558);
		v574 = nil;
		l_v90_Attribute_2 = 1e999;
		v898 = 1e999;
		for _, v983 in pairs(workspace.SCPs:GetChildren()) do
			if v983.Name == "SCP106" then
				if v983.State.Value then
					local l_Magnitude_15 = (v983.HumanoidRootPart.Position - l_Position_2).Magnitude;
					if l_Magnitude_15 < v898 then
						v898 = l_Magnitude_15;
					end;
				end;
			elseif v983.Name == "SCP049" then
				local l_Magnitude_16 = (v983.HumanoidRootPart.Position - l_Position_2).Magnitude;
				if l_Magnitude_16 < l_v90_Attribute_2 then
					l_v90_Attribute_2 = l_Magnitude_16;
				end;
			elseif v983.Name == "SCP096" and v983.Chasing.Value == v88 then
				v574 = true;
			end;
		end;
		if v898 < 96 then
			l_Music_0.change("SCP106", "rbxassetid://" .. l_SoundIndexer_0["106"]);
			l_Music_0.volume("SCP106", (1 - v898 / 96) ^ 0.5 * 0.5);
		else
			l_Music_0.silence("SCP106");
		end;
		if l_v90_Attribute_2 < 32 then
			l_Music_0.change("SCP049", "rbxassetid://" .. l_SoundIndexer_0["049Chase"]);
			l_Music_0.volume("SCP049", (1 - l_v90_Attribute_2 / 32) ^ 0.5 * 0.5);
		else
			l_Music_0.silence("SCP049");
		end;
		if v574 then
			l_Music_0.change("SCP096", "rbxassetid://" .. 8903127209);
		end;
		l_Music_0.tick(v558);
		debug.profileend();
		return;
	end;
end;
ragdoll = function(v986, v987)
	local l_includeSelf3P_1 = l_Configurations_0.debug.includeSelf3P;
	if v986 and v986:IsDescendantOf(workspace) and (not (v986 == v88) or l_includeSelf3P_1) then
		local v989 = (l_preferences_0.RagdollTime or 0) * 120;
		local v990 = l_Ragdoll_0(v986, v987);
		v79[v990] = v986;
		l_DebrisCollector_0:AddItem(v990, "ragdoll", v989);
		delay(v989, function()
			v79[v990] = nil;
		end);
		return v990;
	else
		return;
	end;
end;
create513 = function()
	local v992 = s_ReS.Misc.SCP513:Clone();
	v992.Parent = l_CurrentCamera_0;
	v992.Base.Anchored = false;
	v992.Base.CanCollide = false;
	local v993 = {};
	local l_Animation_0 = Instance.new("Animation");
	l_Animation_0.AnimationId = "rbxassetid://" .. 117945617737438;
	v993.Idle = v992.AnimationController.Animator:LoadAnimation(l_Animation_0);
	v993.Idle:Play();
	l_Animation_0 = Instance.new("Animation");
	l_Animation_0.AnimationId = "rbxassetid://" .. 81046998425381;
	v993.Walk = v992.AnimationController.Animator:LoadAnimation(l_Animation_0);
	v99.e_513 = {
		model = v992, 
		anims = v993
	};
end;
destroy513 = function()
	local l_e_513_0 = v99.e_513;
	if l_e_513_0 then
		l_e_513_0.model:Destroy();
		v99.e_513 = nil;
	end;
end;
toggleVoice = function(v1004)
	if v81.hud then
		local l_v90_Attribute_3 = v90:GetAttribute("Gamemode");
		local v1006 = nil;
		if l_v90_Attribute_3 == "CI" then
			v1006 = "PanelCI";
		elseif l_v90_Attribute_3 == "NTF" then
			v1006 = "Panel";
		end;
		if v1006 then
			local v1007 = v81.hud.Voice[v1006];
			if typeof(v1004) == "boolean" then
				v81.hud.Voice.Open.Value = v1004;
			else
				v81.hud.Voice.Open.Value = not v81.hud.Voice.Open.Value;
				v1004 = v81.hud.Voice.Open.Value;
			end;
			local l_Voice_0 = v81.hud.Voice;
			v1007.Visible = v1004;
			local l_CameraScan_0 = l_Voice_0.CameraScan;
			local v1010 = false;
			if l_v90_Attribute_3 == "NTF" then
				v1010 = v1004;
			end;
			l_CameraScan_0.Visible = v1010;
			if v1004 then
				s_T:Create(l_Voice_0.Background, TweenInfo.new(), {
					BackgroundTransparency = 0.95
				}):Play();
				s_T:Create(l_Voice_0.Toggle, TweenInfo.new(), {
					BackgroundTransparency = 0.8
				}):Play();
			else
				s_T:Create(l_Voice_0.Background, TweenInfo.new(), {
					BackgroundTransparency = 1
				}):Play();
				s_T:Create(l_Voice_0.Toggle, TweenInfo.new(), {
					BackgroundTransparency = 1
				}):Play();
			end;
			l_CameraScan_0 = function(v1011)
				for _, v1013 in pairs(v1011:GetChildren()) do
					if v1013:IsA("TextButton") then
						v1013.TextTransparency = 0;
						v1013.NumL.TextTransparency = 0;
						v1013.Active = true;
						if v1013:FindFirstChild("Sub") then
							v1013.Sub.Visible = false;
							l_CameraScan_0(v1013.Sub);
						end;
					end;
				end;
			end;
			l_CameraScan_0(v1007);
			v162 = nil;
		end;
	end;
end;
voiceCMD = function(v996)
	if not v124 then
		return;
	else
		local v997 = nil;
		local v998 = v90:GetAttribute("Gamemode") == "CI" and v81.hud.Voice.PanelCI or v81.hud.Voice.Panel;
		local v999 = v162 or v998;
		for _, v1001 in pairs(v999:GetChildren()) do
			if v1001:IsA("TextButton") and v1001.LayoutOrder == v996 then
				v997 = v1001;
				break;
			end;
		end;
		if v997 then
			if v997:FindFirstChild("Sub") then
				for _, v1003 in pairs(v999:GetChildren()) do
					if v1003:IsA("TextButton") then
						if v1003 ~= v997 then
							v1003.TextTransparency = 0.5;
							v1003.NumL.TextTransparency = 0.5;
						end;
						v1003.Active = false;
					end;
				end;
				v997.Sub.Visible = true;
				v162 = v997.Sub;
			else
				if v997:IsDescendantOf(v998.Change) then
					l_preferences_0.VoiceType = tonumber(v997.Name);
				elseif v81.hud.Voice.Cooldown.TNV.Value > 0 then
					return;
				else
					re_voice:FireServer(v997.Name, l_preferences_0.VoiceType);
				end;
				toggleVoice(false);
				v162 = nil;
			end;
			return true;
		else
			return;
		end;
	end;
end;
meterMain = function(v1059)
	local v1060 = v93 or getPlayer(l_LocalPlayer_0);
	if not v1060 then
		return;
	else
		local l_Gamemode_2 = v1060.gi.Gamemode;
		local v1062 = (not (l_Gamemode_2 ~= "NTF" and l_Gamemode_2 ~= "CI") or l_Gamemode_2 == "SD") and 0.6 or 1;
		local v1063 = nil;
		local v1064 = nil;
		local v1065 = nil;
		if v134 then
			local v1066 = v1060.inv[v134];
			local v1067 = v1066 and v1066.name;
			if v1067 and (not (v1067:sub(1, 7) ~= "GasMask" and v1067 ~= "SuperGasMask" and v1067 ~= "HelmetNTF" and v1067 ~= "HelmetCI" and v1067 ~= "HelmetNu7_1") or v1067 == "SCP1499") then
				v1063 = v1067;
			end;
		end;
		if v136 then
			local v1068 = v1060.inv[v136];
			local v1069 = v1068 and v1068.name;
			if v1069 then
				if not (v1069 ~= "Hazmat" and v1069 ~= "SuperHazmat") or v1068.name == "HeavyHazmat" then
					v1064 = v1069;
				elseif v1069:sub(1, 4) == "Vest" then
					v1065 = v1069;
				end;
			end;
		end;
		local l_Position_31 = l_CurrentCamera_0.CFrame.Position;
		local v1071 = nil;
		local v1072 = true;
		if v1063 or v1064 then
			v1072 = false;
		end;
		if v1072 then
			for v1073, v1074 in pairs(v175) do
				local l_Magnitude_17 = (v1074 - l_Position_31).Magnitude;
				if l_Magnitude_17 < (v1071 or 8) then
					local v1076 = true;
					if v1073:FindFirstChild("Active") then
						v1076 = v1073.Active.Value;
					end;
					if v1076 then
						v1071 = l_Magnitude_17;
					end;
				end;
			end;
		end;
		if v109 > 10 then
			setDeathMsg("Subject found dead in [DATA REDACTED]. Cause of death: suffocation due to decontamination gas.");
			kill();
		elseif v1071 then
			v109 = v109 + v1059;
		elseif v109 > 0 then
			v109 = math.max(v109 - v1059 / 2, 0);
		end;
		v1072 = 20;
		if v84 == "pocketdimension" then
			v1072 = 0;
		elseif v135 then
			local v1077 = v1060.inv[v135];
			if v1077 and v1077.name == "SCP714" then
				v1072 = 2;
			end;
		end;
		if v1065 == "Vest2" then
			v1072 = v1072 * 0.6;
		end;
		local l_v110_0 = v110;
		local v1079 = v1060.gi.BlinkEffect or Vector2.new(1, 0);
		local l_X_3 = v1079.X;
		local v1081 = v1079.Y - v1059;
		v110 = v110 - v1059 * 1.5 * (l_v110_0 > 0 and l_v110_0 < 19.9 and l_X_3 or 1);
		if not (l_X_3 == 1) then
			if v1081 < 0 then
				v1060.gi.BlinkEffect = Vector2.new(1, 0);
			else
				v1060.gi.BlinkEffect = Vector2.new(l_X_3, v1081);
			end;
		end;
		if v109 > 0 and v110 > 0 then
			v110 = v110 - math.min(1, v109 * 2) * 13.5 * v1059;
		end;
		if v118 > 0 then
			if v116 then
				v118 = 2;
			else
				v118 = math.max(0, v118 - v1059);
			end;
		elseif v114 and v116 then
			l_v110_0 = v1060.gi.SprintEffect or Vector2.new(1, 0);
			v1079 = l_v110_0.X;
			l_X_3 = l_v110_0.Y - v1059;
			v111 = math.max(0, v111 - v1059 * 4 * (v99.e_stamina or 1) * v1062 * v1079);
			if not (v1079 == 1) then
				if l_X_3 < 0 then
					v1060.gi.SprintEffect = Vector2.new(1, 0);
				else
					v1060.gi.SprintEffect = Vector2.new(v1079, l_X_3);
				end;
			end;
			if v111 == 0 then
				v118 = 2;
			elseif v1063 == "SuperGasMask" then
				v111 = lerpdt(v111, v1072, 0.012, v1059);
			elseif v1064 == "SuperHazmat" then
				v111 = lerpdt(v111, v1072, 0.012, v1059);
			end;
		elseif v111 < v1072 then
			l_v110_0 = l_Humanoid_0.WalkSpeed > 0 and 0.8 or 1.25;
			v111 = math.min(v1072, v111 + v1059 * 2 * l_v110_0);
			if v1063 == "SuperGasMask" then
				v111 = math.min(v1072, v111 + v1059 * 2 * l_v110_0);
			elseif v1064 == "SuperHazmat" then
				v111 = math.min(v1072, v111 + v1059 * 2 * l_v110_0);
			end;
		elseif v1072 < v111 then
			v111 = v1072;
		end;
		v81:SetMeters(v110, v111, v109 > 0, false);
		return;
	end;
end;
updateKevlar = function()
	local l_v93_1 = v93;
	local v1083 = l_v93_1 and l_v93_1.gi.Kevlar or v90:GetAttribute("Kevlar");
	local v1084 = l_v93_1 and l_v93_1.gi.Gamemode or v90:GetAttribute("Gamemode");
	local l_v81_0 = v81;
	local v1086 = true;
	if v1084 ~= "NTF" then
		v1086 = true;
		if v1084 ~= "CI" then
			v1086 = true;
			if v1084 ~= "SD" then
				v1086 = v1083 > 0;
			end;
		end;
	end;
	l_v81_0:SetKevlar(v1086, v1083);
end;
nextPD = function()
	local l_v77_0 = v77;
	local l_Model_1 = l_v77_0.dimensions.main.pocketdimension.Model;
	if v99.e_pd == 1 then
		v99.e_pd = math.random(0, 3);
		if v99.e_pd == 0 then
			re_ach:FireServer("PD");
			playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Exit);
			local v1101 = l_v77_0:FindFirstRoom("tunnel") or l_v77_0:FindFirstRoom("tunnel2") or l_v77_0:FindFirstRoom("endroom2") or l_v77_0:FindFirstRoom("start");
			v88.HumanoidRootPart.CFrame = v1101.Base.CFrame * CFrame.new(0, 4, 0);
			l_RoomVisual_0.Shift:Fire(v1101.Base.Position);
			re_pd:FireServer(false, v1101.Model);
		else
			v88.HumanoidRootPart.CFrame = l_Model_1["Room" .. v99.e_pd].Base.CFrame * CFrame.new(0, 4, 0);
		end;
	elseif v99.e_pd == 2 then
		v99.e_pd = 0;
		re_ach:FireServer("PD");
		playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Exit);
		local l_l_v77_0_FirstRoom_0 = l_v77_0:FindFirstRoom("room106");
		if l_l_v77_0_FirstRoom_0 then
			v88.HumanoidRootPart.CFrame = l_l_v77_0_FirstRoom_0.Base.PocketExit.WorldCFrame;
			l_RoomVisual_0.Shift:Fire(l_l_v77_0_FirstRoom_0.Base.Position);
			re_pd:FireServer(false, l_l_v77_0_FirstRoom_0.Model);
		else
			local v1103 = l_v77_0:FindFirstRoom("tunnel") or l_v77_0:FindFirstRoom("tunnel2") or l_v77_0:FindFirstRoom("endroom2") or l_v77_0:FindFirstRoom("start");
			v88.HumanoidRootPart.CFrame = v1103.Base.CFrame * CFrame.new(0, 4, 0);
			l_RoomVisual_0.Shift:Fire(v1103.Base.Position);
			re_pd:FireServer(false, v1103.Model);
		end;
	elseif v99.e_pd == 3 then
		v99.e_pd = 1;
		v88.HumanoidRootPart.CFrame = l_Model_1.Room1.Base.CFrame * CFrame.new(0, 4, 0);
		re_pd:FireServer(true);
	end;
	v110 = 0;
	doBlink();
	updateLighting();
	task.spawn(function()
		for _ = 1, 20 do
			task.wait();
			updateLighting();
		end;
	end);
end;
doorToggle = function(v1105, v1106)
	if v1105:GetAttribute("IsOpen") ~= v1106 then
		v1105:SetAttribute("IsOpen", v1106);
		local v1107 = nil;
		if v1105.Name:sub(1, 9) == "DoorHeavy" then
			v164[v1105] = 1.5;
			v1107 = "Heavy";
		elseif v1105.Name == "DoorElevator" then
			v164[v1105] = 1.5;
			v1107 = "Elevator";
		elseif v1105.Name:sub(1, 9) == "DoorBlast" then
			v164[v1105] = 3.4;
			v1107 = "Blast";
		elseif v1105.Name == "DoorCheckpoint" then
			v164[v1105] = 1.5;
			v1107 = "Checkpoint";
		elseif v1105.Name:sub(1, 7) == "Door914" then
			v164[v1105] = 1.5;
			v1107 = "SCP914";
		else
			v164[v1105] = 1.5;
			v1107 = "Light";
		end;
		local v1108 = randomItem(s_ReS.DoorSounds[v1107][v1106 and "Open" or "Close"]:GetChildren()):Clone();
		v1108.Parent = v1105.Main;
		v1108:Play();
		s_D:AddItem(v1108);
	end;
end;

doFootstep = function()
	local v1109 = (not (v84 ~= "pocketdimension") or v104) and "Pocket" or "Generic";
	if l_Humanoid_0.FloorMaterial == Enum.Material.Metal then
		v1109 = "Metal";
	elseif not (l_Humanoid_0.FloorMaterial ~= Enum.Material.Ground) or l_Humanoid_0.FloorMaterial == Enum.Material.Mud then
		v1109 = "Forest";
	end;
	local v1110 = v90 and v90:GetAttribute("Gamemode");
	if (not (v1109 ~= "Generic") or v1109 == "Metal") and (not (v1110 ~= "NTF") or v1110 == "CI") then
		v1109 = "Heavy" .. v1109;
	end;
	local v1111 = v116 and v111 > 0;
	local v1112 = randomItem(s_ReS.Footsteps[v1109][v1111 and "Run" or "Walk"]:GetChildren()):Clone();
	v1112.Parent = l_CurrentCamera_0;
	v1112:Play();
	s_D:AddItem(v1112);
end;
updateWInv = function(v1143)
	if v1143 then
		local v1144 = getWSlot(v1143);
		if v1144 == "" then
			v81.inv.WeaponInv["W" .. v1143].ImageTransparency = 1;
			return;
		else
			v81.inv.WeaponInv["W" .. v1143].Image = "rbxassetid://" .. l_ItemsInfo_0[s_Http:JSONDecode(v1144).name].icon;
			v81.inv.WeaponInv["W" .. v1143].ImageTransparency = 0;
			s_CAS:BindAction("switchW", attemptSW, false, Enum.KeyCode.ButtonX);
			return;
		end;
	else
		updateWInv(1);
		updateWInv(2);
		updateWInv(3);
		updateWInv(4);
		return;
	end;
end;
moveItem = function(v1157, v1158)
	local l_v96_1 = v96;
	if not l_v96_1 then
		local function _(v1160)
			return v1160 == v1157;
		end;
		if v134 == v1157 then
			v134 = v1158;
		elseif v135 == v1157 then
			v135 = v1158;
		elseif v136 == v1157 then
			v136 = v1158;
		elseif v133 == v1157 then
			v133 = v1158;
		elseif v93.gi.Primary == v1157 then
			v93.gi.Primary = v1158;
		elseif v93.gi.Secondary == v1157 then
			v93.gi.Secondary = v1158;
		elseif v93.gi.Melee == v1157 then
			v93.gi.Melee = v1158;
		elseif v93.gi.Special == v1157 then
			v93.gi.Special = v1158;
		end;
	end;
	l_InvManage_0.moveItem(v90, v1157, v1158, l_v96_1);
	rf_move:InvokeServer(v1157, v1158, l_v96_1);
end;
combineItems = function(v1162, v1163)
	local v1164, v1165 = l_InvManage_0.combineItems(v90, v1162, v1163);
	if v1164 then
		if l_Weapon_0.slot > 0 and v90:GetAttribute(v53[l_Weapon_0.slot]) == v1163 then
			local v1166 = getSlot(v1163);
			local v1167 = s_Http:JSONDecode(v1166);
			local v1168 = require(s_ReS.WeaponData[v1167.name].Config);
			l_Weapon_0.setAmmo(v1167.ammo or 0, v1167.reserve or 0, v1168.max, v1168.maxreserve);
		end;
		return rf_combine:InvokeServer(v1162, v1163);
	else
		return false, v1165;
	end;
end;
attemptDoorOperate = function(v1209)
	local l_Parent_1 = v1209.Parent;
	local v1211 = l_Parent_1:FindFirstChild("Locked") and l_Parent_1.Locked.Value;
	if l_Parent_1.Name == "DoorCheckpoint" and v1209.Name == "Button2" then
		v1211 = false;
	end;
	if v1211 then
		if l_Parent_1.Locked:IsA("StringValue") then
			displayMessage(v1211);
			return;
		elseif l_Parent_1:FindFirstChild("Clearance") then
			if v138 then
				displayMessage(l_Messages_0.keycardlocked);
				v138 = nil;
				return;
			else
				displayMessage(l_Messages_0.keycardrequired);
				return;
			end;
		else
			displayMessage(l_Messages_0.doorlocked);
			return;
		end;
	elseif l_Parent_1:FindFirstChild("Clearance") then
		if not v138 then
			displayMessage(l_Messages_0.keycardrequired);
			return;
		else
			local v1212 = getSlot2(v138, true);
			if v1212 and v1212.name then
				if v1212.name == "KeycardJ" then
					displayMessage("The keycard was inserted into the slot but nothing happened. The keycard says: \"Does the Black Moon Howl???? Yes. No. Yes. No.\"");
				else
					local l_keycard_0 = l_ItemsInfo_0[v1212.name].keycard;
					CLEARANCETEST = l_keycard_0
					if l_keycard_0 then
						if l_Parent_1.Clearance.Value <= l_keycard_0 then
							displayMessage(l_Messages_0.keycard);
							doorToggle(l_Parent_1, not l_Parent_1:GetAttribute("IsOpen"));
						else
							displayMessage("A keycard with security clearance " .. l_Parent_1.Clearance.Value .. " or higher is required to operate this door.");
						end;
					end;
				end;
			end;
			v138 = nil;
			return;
		end;
	elseif l_Parent_1:FindFirstChild("DNA") then
		if v138 then
			displayMessage(l_Messages_0.dnakeycard);
			v138 = nil;
			return;
		elseif v139 then
			local v1214 = getSlot2(v139, true);
			if v1214 and v1214.name then
				local l_dna_0 = l_ItemsInfo_0[v1214.name].dna;
				if l_dna_0 then
					if l_dna_0 == l_Parent_1.DNA.Value then
						displayMessage(l_Messages_0.dna1);
						doorToggle(l_Parent_1, not l_Parent_1:GetAttribute("IsOpen"));
					else
						displayMessage(l_Messages_0.dna3);
					end;
				end;
			end;
			v139 = nil;
			return;
		elseif v90:GetAttribute("Gamemode") == "NTF" then
			doorToggle(l_Parent_1, not l_Parent_1:GetAttribute("IsOpen"));
			return;
		else
			displayMessage(l_Messages_0.dna0);
			return;
		end;
	else
		doorToggle(l_Parent_1, not l_Parent_1:GetAttribute("IsOpen"));
		return;
	end;
end;
mouseInGObject = function(v1216)
	local l_AbsolutePosition_0 = v1216.AbsolutePosition;
	local l_AbsoluteSize_0 = v1216.AbsoluteSize;
	local l_X_4 = l_AbsolutePosition_0.X;
	local l_Y_1 = l_AbsolutePosition_0.Y;
	local v1221 = l_AbsolutePosition_0.X + l_AbsoluteSize_0.X;
	local v1222 = l_AbsolutePosition_0.Y + l_AbsoluteSize_0.Y;
	local v1223 = false;
	if l_X_4 <= l_l_LocalPlayer_0_Mouse_0.X then
		v1223 = false;
		if l_l_LocalPlayer_0_Mouse_0.X < v1221 then
			v1223 = false;
			if l_Y_1 <= l_l_LocalPlayer_0_Mouse_0.Y then
				v1223 = l_l_LocalPlayer_0_Mouse_0.Y < v1222;
			end;
		end;
	end;
	return v1223;
end;
updateChannel = function()
	if not v147 then
		workspace.RadioChannels["Channel" .. 1].Volume = 0;
		workspace.RadioChannels["Channel" .. 2].Volume = 0;
		workspace.RadioChannels["Channel" .. 3].Volume = 0;
		workspace.RadioChannels["Channel" .. 4].Volume = 0;
		workspace.RadioChannels["Channel" .. 5].Volume = 0;
		if workspace.RadioChannels.Static.IsPlaying then
			workspace.RadioChannels.Static:Pause();
			return;
		end;
	elseif not (v84 ~= "pocketdimension" and v84 ~= "SCP860") or v84 == "SCP1499" then
		workspace.RadioChannels["Channel" .. 1].Volume = 0;
		workspace.RadioChannels["Channel" .. 2].Volume = 0;
		workspace.RadioChannels["Channel" .. 3].Volume = 0;
		workspace.RadioChannels["Channel" .. 4].Volume = 0;
		workspace.RadioChannels["Channel" .. 5].Volume = 0;
		if not workspace.RadioChannels.Static.IsPlaying then
			workspace.RadioChannels.Static:Resume();
			return;
		end;
	else
		local v1224 = l_preferences_0.S_Radio or 1;
		for v1225 = 1, 5 do
			local v1226 = workspace.RadioChannels["Channel" .. v1225];
			v1226.Volume = v1225 == v147 and v1224 or 0;
			if v1225 == v147 then
				if not v80[v1225] then
					v80[v1225] = true;
					task.spawn(function()
						local v1227 = rf_radio:InvokeServer(v1225);
						if v1225 == v147 and v80[v1225] then
							v1226:ClearAllChildren();
							print(v1227)
							for _, v1229 in ipairs(v1227) do
								local l_Sound_6 = Instance.new("Sound");
								l_Sound_6.SoundId = v1229[1];
								l_Sound_6.Volume = v1229[2];
								l_Sound_6.Looped = v1229[3];
								l_Sound_6.TimePosition = v1229[5];
								l_Sound_6.Name = v1229[6];
								l_Sound_6.SoundGroup = v1226;
								l_Sound_6.Parent = v1226;
								if v1229[4] then
									l_Sound_6:Resume();
								end;
							end;
						end;
					end);
				end;
			elseif v80[v1225] then
				v80[v1225] = false;
				v1226:ClearAllChildren();
			end;
		end;
		if workspace.RadioChannels.Static.IsPlaying then
			workspace.RadioChannels.Static:Pause();
		end;
		return true;
	end;
end;
selectChannel = function(v1231)
	if v147 ~= v1231 then
		v147 = v1231;
		if v1231 then
			v148 = v1231;
			workspace.RadioChannels.Static.SoundId = "rbxassetid://" .. l_SoundIndexer_0.static;
			v81.hud.Sque.SoundId = "rbxassetid://" .. l_SoundIndexer_0.squelch;
			v81.hud.Sque:Play();
			changeRadioText();
		else
			v81.hud.Static895:Pause();
			v81.hud.Sque.SoundId = "";
			workspace.RadioChannels.Static.SoundId = "";
			clearChannels();
		end;
		return updateChannel();
	else
		return;
	end;
end;
clearChannels = function()
	v80 = {};
	for v1232 = 1, 5 do
		local v1233 = workspace.RadioChannels["Channel" .. v1232];
		v1233.Volume = 0;
		v1233:ClearAllChildren();
	end;
	workspace.RadioChannels.Static:Stop();
end;
selectWeapon = function(v1234)
	if v90 then
		if v1234 and l_Weapon_0.slot ~= v1234 then
			l_Weapon_0.select(v1234);
			return;
		else
			l_Weapon_0.select();
		end;
	end;
end;
saveGame = function()
	playGlobalSound("rbxassetid://140910211");
	if v90 then
		local l_v90_1 = v90;
		if l_Humanoid_0.Health <= 0 then
			return;
		elseif l_Humanoid_0.Health < 80 then
			displayMessage("You can't save while you're bleeding.");
			return;
		elseif not (l_CurrentCamera_0.CFrame.Y >= -250 and v84 ~= "SCP860" and v84 ~= "intro" and v84 ~= "SCP1499" and not v99.e_sinkhole) or v99.e_ntfintro then
			displayMessage("You can't save here.");
			return;
		elseif l_v90_1:GetAttribute("Difficulty") < 3 then
			displayMessage("Saving...");
			local v1236 = {
				radio_lastch = v148, 
				e_012 = v99.e_012, 
				e_106 = v99.e_106, 
				e_513 = v99.e_513 and 1, 
				e_895 = v99.e_895, 
				e_1079 = v99.e_1079, 
				e_pd = v99.e_pd, 
				e_207 = v99.e_207, 
				e_009 = v99.e_009, 
				e_1499_enter = v99.e_1499_enter, 
				e_1499_exit = v99.e_1499_exit, 
				e_introalarm = v99.e_introalarm, 
				e_commotion = v99.e_commotion, 
				e_commotionI = v99.e_commotionI, 
				sanity = v101, 
				meter_sprint = v111
			};
			local v1237, v1238 = rf_save:InvokeServer(v1236, v91, v92);
			if v1237 then
				playGlobalSound("rbxassetid://4651271247");
				playGlobalSound("rbxassetid://4428202670", 0.1);
				displayMessage("Game saved.");
				v91 = v1238;
				_G.lastsave = v1238;
				return;
			elseif v1238 then
				displayMessage("Failed to save: " .. v1238);
				return;
			else
				displayMessage("Failed to save.");
				return;
			end;
		else
			displayMessage("Quick saving is disabled");
		end;
	end;
end;
onClick = function(v1239)
	if not v124 then
		return;
	elseif v126 then
		return;
	elseif l_Weapon_0.info and not v1239 then
		l_Weapon_0.shootWeapon(true);
		return;
	else
		if v129 then
			if v125 then
				displayMessage("You have no hands.");
				return;
			elseif v151 then
				return;
			else
				if v136 then
					local v1240 = l_InvManage_0.getSlotData(getSlot(v136));
					local v1241 = v1240 and v1240.name;
					if not (v1241 ~= "Hazmat" and v1241 ~= "SuperHazmat") or v1240.name == "HeavyHazmat" then
						displayMessage("You can't pick up items while wearing a hazmat suit.");
						return;
					elseif v1241 then
						local v1242 = l_ItemsInfo_0[v1241];
						local v1243 = l_ItemsInfo_0[v129.Name];
						if v1243.body then
							displayMessage("You need to take off the " .. (v1242.lower or v1242.name) .. " in order to put on a " .. (v1243.lower or v1243.name) .. ".");
							return;
						end;
					end;
				end;
				local l_Name_2 = v129.Name;
				local v1245 = l_ItemsInfo_0[l_Name_2];
				if v1245.refuse then
					if typeof(v1245.refuse) == "string" then
						displayMessage(v1245.refuse);
					end;
					return;
				else
					v96 = nil;
					if v99.e_intro and v99.e_intro == 0 and v99.i_state then
						v99.i_state = math.min(v99.i_state, 10);
					end;
					if v99.i_tutorial == 0 then
						v99.i_tutorial = 1;
						displayMessage("Press TAB to open the inventory.");
					end;
					local l_Parent_2 = v129.Parent;
					local v1247, v1248 = l_InvManage_0.addItem(v90, v129);
					if v1247 then
						if l_Name_2:sub(1, 8) == "Document" then
							v81.inv[l_ItemsInfo_0.Document.pickSound]:Play();
						else
							v81.inv[l_ItemsInfo_0[l_Name_2].pickSound]:Play();
						end;
					end;
					if l_Name_2 == "BatteryStrange" then
						playGlobalSound("rbxassetid://" .. 537581469);
						kill();
						v99.e_shock = 0;
					elseif l_Name_2 == "BatteryFunny" then
						playGlobalSound("rbxassetid://" .. 537581469);
						kill();
						v99.e_shock = 0;
					end;
					local l_v129_0 = v129;
					local v1250, v1251 = rf_take:InvokeServer(l_v129_0);
					if not v1250 then
						if v1247 then
							l_InvManage_0.removeItem(v90, v1248);
						end;
						l_v129_0.Parent = l_Parent_2;
						if v1251 then
							displayMessage(v1251);
							return;
						end;
					end;
				end;
			end;
		elseif v127 and v127.Parent then
			if v125 then
				displayMessage("You have no hands.");
				return;
			elseif v127.Name:sub(1, 6) == "Button" then
				if v127.Parent:FindFirstChild("Code") or v127:FindFirstChild("Code") then
					v144 = v127;
					return;
				else
					local v1252 = v138 or v139;
					re_useb:FireServer(v127, v1252, v96);
					print(v1252) -- clearance
					if v127.Parent.Name:sub(1, 4) == "Door" then
						attemptDoorOperate(v127);
					end;
					if v127:FindFirstChild("Message") then
						displayMessage(v127.Message.Value);
						return;
					elseif v127:FindFirstChild("Clearance") then
						if not v138 then
							displayMessage(l_Messages_0.keycardrequired);
							return;
						else
							v1252 = l_InvManage_0.getSlotData(getSlot(v138, true));
							if v1252 and v1252.name then
								local l_keycard_1 = l_ItemsInfo_0[v1252.name].keycard;
								if l_keycard_1 and l_keycard_1 < v127.Clearance.Value then
									displayMessage(l_Messages_0.notenoughclearance);
									print("2")
								end;
							end;
							v138 = nil;
							return;
						end;
					end;
				end;
			elseif not (v127.Name ~= "Lever") or v127.Name == "Cover008" then
				re_usep:FireServer(v127, true);
				v127.Controller.Value = l_LocalPlayer_0;
				v130 = v127;
				v131 = v127.Rotation.Value;
				v132 = l_CurrentCamera_0.CFrame.LookVector.Y;
				return;
			elseif v127.Parent == v77.data.Screens then
				v81:DisplayScreen(v127.ScreenTex.Tex.Image);
				return;
			elseif v127.Name == "SCP860Door" then
				if v140 == "SCP860" then
					re_de:FireServer();
					v140 = nil;
					playGlobalSound("rbxassetid://" .. "5900163839");
					local v1254 = v127.CFrame.LookVector:Dot((v127.Position - l_GameCamera_0.current.Position).Unit) > 0 and 1 or 2;
					v99.e_860_door = v1254;
					v88.HumanoidRootPart.CFrame = workspace.Forest["Door" .. v1254].DoorForest.CFrame * CFrame.new(0, 0, -5);
					v110 = -0.1;
					enterArea("SCP860");
					doBlink();
					return;
				elseif v140 == nil then
					displayMessage("The door will not budge.");
					playGlobalSound("rbxassetid://" .. "5900166167");
					return;
				end;
			elseif v127.Name == "DoorForest" then
				local l_main_1 = v77.dimensions.main;
				local l_e_860_door_0 = v99.e_860_door;
				local v1257 = l_e_860_door_0 == 1 and 2 or 1;
				if not l_e_860_door_0 or v127.Parent.Name == "Door" .. v1257 then
					re_ack:FireServer();
					v88.HumanoidRootPart.CFrame = l_main_1.room860.Model.SCP860Door.CFrame * CFrame.new(0, 0, -5 * (1 - (l_e_860_door_0 - 1) * 2));
					v99.e_860_exit = nil;
					playGlobalSound("rbxassetid://" .. "5900160121");
					enterArea("EZ");
					updateLighting();
					v110 = -0.1;
					doBlink();
					return;
				else
					displayMessage("The door will not budge.");
					playGlobalSound("rbxassetid://" .. "5900166167");
					return;
				end;
			elseif v127.Name == "SCP294" then
				v141 = v127;
				return;
			elseif v127.Name == "SCP1162" then
				v127.Use:FireServer();
				return;
			elseif v127.Name == "InfiniteAmmo" then
				task.spawn(function()
					local v1258, v1259 = v127.Use:InvokeServer();
					if v1259 then
						v81.inv.Use1:Play();
					end;
					if v1258 then
						displayMessage(v1258);
					end;
				end);
				return;
			elseif v127.Name == "Document" then
				workspace.Rooms.intro.GetDoc:FireServer();
				v99.e_intro = 6;
				v99.i_state = 0;
				v81.inv.Use0:Play();
				v81:DisplayDocument(l_ItemsInfo_0.Document173);
				v127:Destroy();
				return;
			elseif v127.Name == "Key914" then
				re_usep:FireServer(v127, true);
				v127.Controller.Value = l_LocalPlayer_0;
				v130 = v127;
				v131 = v127.Rotation.Value;
				local l_LookVector_5 = v127.Base.CFrame.LookVector;
				v132 = eify(math.atan2(-l_LookVector_5.X, -l_LookVector_5.Z) - math.atan2(-l_CurrentCamera_0.CFrame.LookVector.X, -l_CurrentCamera_0.CFrame.LookVector.Z));
				return;
			elseif v127.Name == "Knob914" then
				re_usep:FireServer(v127, true);
				v127.Controller.Value = l_LocalPlayer_0;
				v130 = v127;
				v131 = v127.Rotation.Value;
				local l_LookVector_6 = v127.Base.CFrame.LookVector;
				v132 = eify(math.atan2(l_LookVector_6.X, l_LookVector_6.Z) - math.atan2(-l_CurrentCamera_0.CFrame.LookVector.X, -l_CurrentCamera_0.CFrame.LookVector.Z));
				return;
			end;
		else
			return true;
		end;
		return;
	end;
end;
onRClick = function()
	if v126 then
		return;
	else
		if l_Weapon_0.info then
			local l_info_3 = l_Weapon_0.info;
			if l_info_3.type ~= "Melee" and not l_info_3.aim then
				l_Weapon_0.aimDownSights();
				return;
			end;
		elseif v141 then
			v141 = nil;
			return;
		elseif v144 then
			v144 = nil;
			return;
		elseif v81.screen then
			v81:DisplayScreen(nil);
			return;
		elseif v152 then
			if v154 then
				dropItem(v152, true);
				v154 = nil;
			end;
			v152 = nil;
			v151 = nil;
			v153 = nil;
			v81.inv.Use1:Play();
			return;
		elseif v140 then
			v140 = nil;
			v81.inv.Use3:Play();
			return;
		elseif v138 then
			v138 = nil;
			v81.inv.Use1:Play();
			return;
		elseif v139 then
			v139 = nil;
			v81.inv.Use2:Play();
			return;
		elseif v81.itemDocument then
			v81:DisplayDocument(nil);
			v81.inv.Use0:Play();
			return;
		elseif v133 then
			re_use:FireServer(v133, false);
			v133 = nil;
			v81.inv.Use1:Play();
		end;
		return;
	end;
end;
onRelease = function(v1263)
	if l_Weapon_0.info and not v1263 then
		l_Weapon_0.shootWeapon(false);
	end;
	if v130 then
		re_usep:FireServer(v130, false);
		v130 = nil;
		v131 = nil;
		v132 = nil;
	end;
	if v81.invDrag then
		local l_invDrag_0 = v81.invDrag;
		v81.invDrag = nil;
		if v81.invHover then
			if l_invDrag_0 ~= v81.invHover then
				local v1265 = nil;
				if v96 then
					local v1266 = l_InvManage_0.getSlotData(getSlot(v96));
					if v1266.items then
						local v1267 = false;
						if v1266.items[v81.invHover] ~= "" then
							v1267 = v1266.items[v81.invHover];
						end;
						v1265 = v1267;
					end;
				else
					v1265 = l_InvManage_0.getSlotData(getSlot(v81.invHover));
				end;
				if not v1265 then
					moveItem(l_invDrag_0, v81.invHover);
					return;
				else
					local v1268, v1269, v1270 = combineItems(l_invDrag_0, v81.invHover);
					if v1270 then
						v81.inv[v1270]:Play();
					end;
					if not v1268 then
						updateInventory(l_invDrag_0);
						displayMessage(v1269 or "That item cannot be used that way.");
						return;
					elseif v1269 then
						displayMessage(v1269);
						return;
					end;
				end;
			end;
		else
			toggleInv(false);
			if not v96 then
				if v136 and v136 == l_invDrag_0 then
					v152 = v136;
					v151 = 6;
					return;
				elseif v134 and v134 == l_invDrag_0 then
					local v1271 = l_InvManage_0.getSlotData(getSlot(v134));
					local v1272 = v1271 and v1271.name;
					local v1273 = v1272 and l_ItemsInfo_0[v1272];
					if v1273 and v1273.progress then
						v152 = v134;
						v151 = 1.5;
						return;
					end;
				end;
			end;
			dropItem(l_invDrag_0);
		end;
	end;
end;
onRRelease = function()
	local l_info_4 = l_Weapon_0.info;
	if l_info_4 and l_info_4.aim then
		l_Weapon_0.aimDownSights();
	end;
end;
attemptCrouch = function(_, v1276, _)
	if v1276 == Enum.UserInputState.Begin then
		v122 = not v122;
		re_crouch:FireServer(v122);
		if v122 then
			v116 = false;
		end;
	end;
end;
attemptSprint = function(_, v1279, _)
	if v1279 == Enum.UserInputState.Begin then
		if not v122 then
			v116 = true;
			return;
		end;
	elseif v1279 == Enum.UserInputState.End then
		v116 = false;
	end;
end;
attemptToggleInv = function(_, v1282, v1283)
	if v1282 == Enum.UserInputState.Begin then
		toggleInv(not v126);
		if v1283.KeyCode == Enum.KeyCode.ButtonY then
			v81.invGPSelect = 0;
		end;
	end;
end;
attemptSaveGame = function(_, v1285, v1286)
	if v1285 == Enum.UserInputState.Begin then
		if v1286.KeyCode == Enum.KeyCode.DPadUp and v126 then
			return;
		else
			saveGame();
		end;
	end;
end;
attemptSW = function(_, v1288, _)
	if v1288 == Enum.UserInputState.Begin then
		for v1290 = v90:GetAttribute("SelectedWeapon") + 1, 5 do
			if v1290 == 5 then
				selectWeapon();
			else
				local v1291 = getWSlot(v1290);
				if v1291 and v1291 ~= "" then
					selectWeapon(v1290);
					return;
				end;
			end;
		end;
	end;
end;
attemptToggleVoice = function(_, v1293, _)
	if v1293 == Enum.UserInputState.Begin then
		toggleVoice();
	end;
end;
attemptClick = function(_, v1296, _)
	if v1296 == Enum.UserInputState.Begin then
		if l_Weapon_0.info then
			onClick(true);
			return;
		else
			onClick();
		end;
	end;
end;
cleanup = function()
	v93 = nil;
	v90 = nil;
	v91 = nil;
	v92 = nil;
	v94 = 0;
	v96 = nil;
	e_necksnap = nil;
	if v99.e_895part then
		v99.e_895part:Destroy();
		v99.e_895part = nil;
	end;
	if v99.e_513 then
		destroy513();
	end;
	for _, v1299 in pairs(v99) do
		if typeof(v1299) == "Instance" then
			v1299:Destroy();
		end;
	end;
	v99 = l_Events_0.createEvents();
	v101 = 100;
	v105 = Vector3.new();
	v106 = nil;
	v107 = nil;
	v108 = 0;
	v109 = 0;
	v110 = 20;
	v111 = 20;
	v113 = 0;
	v114 = false;
	v115 = false;
	v116 = false;
	v117 = false;
	v120 = false;
	v118 = 0;
	v121 = false;
	v122 = false;
	v123 = 0;
	v124 = false;
	v126 = false;
	v127 = nil;
	v128 = nil;
	v129 = nil;
	v130 = nil;
	v131 = nil;
	v132 = nil;
	v133 = nil;
	v134 = nil;
	v135 = nil;
	v136 = nil;
	l_Weapon_0.clear();
	l_Weapon_0.slot = 0;
	v137 = 0;
	v138 = nil;
	v139 = nil;
	v144 = nil;
	v145 = "";
	v146 = false;
	v141 = nil;
	v142 = "";
	v143 = false;
	v147 = nil;
	v149 = false;
	v103 = 0;
	v157 = false;
	if v177 then
		for _, v1301 in pairs(v177) do
			v1301:Destroy();
		end;
		v177 = nil;
	end;
	v151 = nil;
	v153 = nil;
	v152 = nil;
	v154 = nil;
	v125 = false;
	_G.animspeed = nil;
	l_preferences_0.Noclip = nil;
	l_preferences_0.WalkSpeed = nil;
	l_preferences_0.Fog = nil;
	_G.debughud = nil;
	l_preferences_0.Cinematic = nil;
	clearChannels();
	script.Seq012:Stop();
	script.SCRAMBLE:Stop();
	l_Music_0.reset();
	updateLighting();
	update966(false);
	if v81 then
		v81:Destroy();
		v81 = nil;
	end;
	if v82 then
		v82:Destroy();
		v82 = nil;
	end;
	if v83 then
		v83:Destroy();
		v83 = nil;
	end;
	if #v98 > 0 then
		for _, v1303 in pairs(v98) do
			pcall(v1303.Destroy, v1303);
		end;
		v98 = {};
	end;
	if #v97 > 0 then
		for _, v1305 in pairs(v97) do
			v1305:Disconnect();
		end;
		v97 = {};
	end;
	pcall(s_CAS.UnbindAction, s_CAS, "SaveGame");
	pcall(s_CAS.UnbindAction, s_CAS, "ToggleInv");
	pcall(s_CAS.UnbindAction, s_CAS, "sprint");
	pcall(s_CAS.UnbindAction, s_CAS, "crouch");
	pcall(s_CAS.UnbindAction, s_CAS, "console");
	pcall(s_CAS.UnbindAction, s_CAS, "fire");
	pcall(s_CAS.UnbindAction, s_CAS, "switchW");
	pcall(s_CAS.UnbindAction, s_CAS, "Voice");
	pcall(s_CAS.UnbindAction, s_CAS, "aim");
end;
loadUI = function()
	v81 = l_UI_0.newUI();
	if l_TouchEnabled_0 then
		v81:SetDevice("mobile");
		v83 = s_ReS.ClientSide.MobileGui:Clone();
		v83.Main.Weapon.Visible = false;
		if l_CurrentCamera_0.ViewportSize.X > 900 then
			for _, v1307 in ipairs(v83:GetDescendants()) do
				if v1307.Name == "Outer" then
					local l_Offset_1 = v1307.Size.X.Offset;
					v1307.Size = UDim2.new(0, l_Offset_1 + 18, 0, l_Offset_1 + 18);
					local l_Offset_2 = v1307.Parent.Size.X.Offset;
					v1307.Parent.Size = UDim2.new(0, l_Offset_2 + 12, 0, l_Offset_2 + 12);
				end;
			end;
		end;
		if v90:GetAttribute("Difficulty") == 1 and l_Userdata_0:HasKey("Console") then
			v83.Main.General.Console.Visible = true;
		else
			v83.Main.General.Console.Visible = false;
		end;
		local l_SaveSlide_0 = v83.Main.General.SaveSlide;
		local l_Save_0 = v83.Main.General.Save;
		local l_l_Save_0_0 = l_Save_0 --[[ copy: 1 -> 17 ]];
		local l_l_SaveSlide_0_0 = l_SaveSlide_0 --[[ copy: 0 -> 18 ]];
		table.insert(v97, l_Save_0.Outer.InputBegan:Connect(function(v1314)
			if v1314.UserInputState ~= Enum.UserInputState.Begin then
				return;
			else
				if not (v1314.UserInputType ~= Enum.UserInputType.MouseButton1) or v1314.UserInputType == Enum.UserInputType.Touch then
					local l_Position_32 = v1314.Position;
					local v1316 = 0;
					l_l_Save_0_0.Arrow.Visible = true;
					while true do
						s_RS.RenderStepped:wait();
						v1316 = math.clamp((v1314.Position - l_Position_32).Y, 0, l_l_SaveSlide_0_0.AbsoluteSize.Y);
						l_l_Save_0_0.Position = UDim2.new(1, 0, 0, v1316);
						if l_l_SaveSlide_0_0.AbsoluteSize.Y <= v1316 then
							l_l_Save_0_0.BorderColor3 = Color3.new(0, 1, 0);
						else
							l_l_Save_0_0.BorderColor3 = Color3.new(1, 1, 0);
						end;
						if not (v1314.UserInputState ~= Enum.UserInputState.End) then
							break;
						end;
					end;
					if l_l_SaveSlide_0_0.AbsoluteSize.Y <= v1316 then
						saveGame();
					else
						displayMessage("Slide down to save game");
					end;
					l_l_Save_0_0.BorderColor3 = Color3.new(1, 1, 1);
					l_l_Save_0_0.Position = UDim2.new(1, 0, 0, 0);
					l_l_Save_0_0.Arrow.Visible = false;
				end;
				return;
			end;
		end));
		l_SaveSlide_0 = v83.Main.General.BlinkSlide;
		l_Save_0 = v83.Main.General.Blink;
		local l_l_Save_0_1 = l_Save_0 --[[ copy: 1 -> 19 ]];
		local l_l_SaveSlide_0_1 = l_SaveSlide_0 --[[ copy: 0 -> 20 ]];
		table.insert(v97, l_Save_0.Outer.InputBegan:Connect(function(v1319)
			if v1319.UserInputState ~= Enum.UserInputState.Begin then
				return;
			else
				if not (v1319.UserInputType ~= Enum.UserInputType.MouseButton1) or v1319.UserInputType == Enum.UserInputType.Touch then
					local l_Offset_3 = l_l_Save_0_1.Position.X.Offset;
					local l_Position_33 = v1319.Position;
					local v1322 = 0;
					doBlink();
					v120 = true;
					while true do
						s_RS.RenderStepped:wait();
						v1322 = math.clamp(l_Offset_3 + (v1319.Position - l_Position_33).X, 0, l_l_SaveSlide_0_1.AbsoluteSize.X);
						l_l_Save_0_1.Position = UDim2.new(0, v1322, 1, 0);
						if not (v1319.UserInputState ~= Enum.UserInputState.End) then
							break;
						end;
					end;
					if l_l_SaveSlide_0_1.AbsoluteSize.X / 2 < v1322 then
						l_l_Save_0_1.Position = UDim2.new(0, l_l_SaveSlide_0_1.AbsoluteSize.X, 1, 0);
						l_l_Save_0_1.BorderColor3 = Color3.new(1, 0, 0);
						return;
					else
						l_l_Save_0_1.Position = UDim2.new(0, 0, 1, 0);
						l_l_Save_0_1.BorderColor3 = Color3.new(1, 1, 1);
						v120 = false;
					end;
				end;
				return;
			end;
		end));
		l_SaveSlide_0 = v83.Main.General.MovementSlide;
		l_Save_0 = v83.Main.General.Movement;
		local l_Position_34 = l_Save_0.Position;
		local l_l_Save_0_2 = l_Save_0 --[[ copy: 1 -> 21 ]];
		local l_l_SaveSlide_0_2 = l_SaveSlide_0 --[[ copy: 0 -> 22 ]];
		local l_l_Position_34_0 = l_Position_34 --[[ copy: 2 -> 23 ]];
		table.insert(v97, l_Save_0.Outer.InputBegan:Connect(function(v1327)
			if v1327.UserInputState ~= Enum.UserInputState.Begin then
				return;
			else
				if not (v1327.UserInputType ~= Enum.UserInputType.MouseButton1) or v1327.UserInputType == Enum.UserInputType.Touch then
					local l_Offset_4 = l_l_Save_0_2.Position.Y.Offset;
					local l_Position_35 = v1327.Position;
					local v1330 = 0;
					while true do
						s_RS.RenderStepped:wait();
						v1330 = math.clamp(l_Offset_4 + (v1327.Position - l_Position_35).Y, -l_l_SaveSlide_0_2.AbsoluteSize.Y / 2, l_l_SaveSlide_0_2.AbsoluteSize.Y / 2);
						l_l_Save_0_2.Position = l_l_Position_34_0 + UDim2.new(0, 0, 0, v1330);
						if l_l_SaveSlide_0_2.AbsoluteSize.Y / 4 < v1330 then
							if not v122 then
								v122 = true;
								re_crouch:FireServer(v122);
							end;
							v116 = false;
							l_l_Save_0_2.BorderColor3 = Color3.new(0, 1, 0);
							l_l_Save_0_2.Image = "rbxassetid://293004380";
						elseif v1330 < -l_l_SaveSlide_0_2.AbsoluteSize.Y / 4 then
							if v122 then
								v122 = false;
								re_crouch:FireServer(v122);
							end;
							v116 = not (l_Weapon_0.info and l_Weapon_0.info.aim);
							l_l_Save_0_2.BorderColor3 = Color3.new(0, 1, 0);
							l_l_Save_0_2.Image = "rbxassetid://293004466";
						else
							if v122 then
								v122 = false;
								re_crouch:FireServer(v122);
							end;
							v116 = not (l_Weapon_0.info and l_Weapon_0.info.aim);
							l_l_Save_0_2.BorderColor3 = Color3.new(1, 1, 0);
							l_l_Save_0_2.Image = "rbxassetid://293004466";
						end;
						if not (v1327.UserInputState ~= Enum.UserInputState.End) then
							break;
						end;
					end;
					if l_l_SaveSlide_0_2.AbsoluteSize.Y / 4 < v1330 then
						if not v122 then
							v122 = true;
							re_crouch:FireServer(v122);
						end;
						v116 = false;
						l_l_Save_0_2.BorderColor3 = Color3.new(0, 1, 0);
						l_l_Save_0_2.Position = l_l_Position_34_0 + UDim2.new(0, 0, 0, l_l_SaveSlide_0_2.AbsoluteSize.Y / 2);
						l_l_Save_0_2.Image = "rbxassetid://293004380";
						return;
					elseif v1330 < -l_l_SaveSlide_0_2.AbsoluteSize.Y / 4 then
						if v122 then
							v122 = false;
							re_crouch:FireServer(v122);
						end;
						v116 = not (l_Weapon_0.info and l_Weapon_0.info.aim);
						l_l_Save_0_2.BorderColor3 = Color3.new(0, 1, 0);
						l_l_Save_0_2.Position = l_l_Position_34_0 + UDim2.new(0, 0, 0, -l_l_SaveSlide_0_2.AbsoluteSize.Y / 2);
						l_l_Save_0_2.Image = "rbxassetid://293004466";
						return;
					else
						if v122 then
							v122 = false;
							re_crouch:FireServer(v122);
						end;
						v116 = false;
						l_l_Save_0_2.BorderColor3 = Color3.new(1, 1, 1);
						l_l_Save_0_2.Position = l_l_Position_34_0 + UDim2.new(0, 0, 0, 0);
						l_l_Save_0_2.Image = "rbxassetid://293004466";
					end;
				end;
				return;
			end;
		end));
		table.insert(v97, v83.Main.General.Crouch.MouseButton1Down:Connect(function()
			v122 = true;
			v116 = false;
			l_l_Save_0_2.BorderColor3 = Color3.new(0, 1, 0);
			l_l_Save_0_2.Position = l_l_Position_34_0 + UDim2.new(0, 0, 0, l_l_SaveSlide_0_2.AbsoluteSize.Y / 2);
			l_l_Save_0_2.Image = "rbxassetid://293004380";
			re_crouch:FireServer(v122);
		end));
		table.insert(v97, v83.Main.General.Sprint.MouseButton1Down:Connect(function()
			v122 = false;
			v116 = true;
			l_l_Save_0_2.BorderColor3 = Color3.new(0, 1, 0);
			l_l_Save_0_2.Position = l_l_Position_34_0 + UDim2.new(0, 0, 0, -l_l_SaveSlide_0_2.AbsoluteSize.Y / 2);
			l_l_Save_0_2.Image = "rbxassetid://293004466";
			re_crouch:FireServer(v122);
		end));
		table.insert(v97, v83.Main.General.Stance.MouseButton1Down:Connect(function()
			v122 = false;
			v116 = false;
			l_l_Save_0_2.BorderColor3 = Color3.new(1, 1, 1);
			l_l_Save_0_2.Position = l_l_Position_34_0 + UDim2.new(0, 0, 0, 0);
			l_l_Save_0_2.Image = "rbxassetid://293004466";
			re_crouch:FireServer(v122);
		end));
		if v122 then
			l_Save_0.BorderColor3 = Color3.new(0, 1, 0);
			l_Save_0.Position = l_Position_34 + UDim2.new(0, 0, 0, l_SaveSlide_0.AbsoluteSize.Y / 2);
			l_Save_0.Image = "rbxassetid://293004380";
		end;
		table.insert(v97, v83.Main.General.Inv.Outer.MouseButton1Down:Connect(function()
			toggleInv(not v126);
		end));
		l_SaveSlide_0 = v83.Main.Weapon;
		l_Save_0 = v83.Main.Weapon.Fire;
		table.insert(v97, l_Save_0.Outer.InputBegan:Connect(function(v1331)
			if v1331.UserInputState ~= Enum.UserInputState.Begin then
				return;
			else
				if (not (v1331.UserInputType ~= Enum.UserInputType.MouseButton1) or v1331.UserInputType == Enum.UserInputType.Touch) and l_Weapon_0.info then
					l_Weapon_0.shootWeapon(true);
					while true do
						s_RS.RenderStepped:wait();
						if not (v1331.UserInputState ~= Enum.UserInputState.End) then
							break;
						end;
					end;
					if l_Weapon_0.info then
						l_Weapon_0.shootWeapon(false);
					end;
				end;
				return;
			end;
		end));
		table.insert(v97, v83.Main.Weapon.ADS.Outer.MouseButton1Down:Connect(function()
			if l_Weapon_0.info then
				l_Weapon_0.aimDownSights();
			end;
		end));
		table.insert(v97, v83.Main.Weapon.Reload.Outer.MouseButton1Down:Connect(function()
			if l_Weapon_0.info then
				l_Weapon_0.reloadWeapon();
			end;
		end));
		v83.Parent = l_LocalPlayer_0.PlayerGui;
	else
		v81:SetDevice("desktop");
	end;
	v81:UpdatePreferences();
	local l_meter_0 = v81.meter;
	l_meter_0.Parent = l_LocalPlayer_0.PlayerGui;
	if l_preferences_0.NoHUD then
		l_meter_0.Enabled = false;
	end;
	v110 = v90:GetAttribute("Blink");
	table.insert(v97, v90:GetAttributeChangedSignal("Kevlar"):Connect(updateKevlar));
	updateKevlar();
	local l_fore_0 = v81.fore;
	l_fore_0.Parent = l_LocalPlayer_0.PlayerGui;
	local l_hud_0 = v81.hud;
	if l_CurrentCamera_0.ViewportSize.Y < 500 then
		l_hud_0.HintText.Position = UDim2.new(0, 0, 1, -80);
	end;
	l_hud_0.Parent = l_LocalPlayer_0.PlayerGui;
	local l_inv_2 = v81.inv;
	v81:SetSlots(v90:GetAttribute("Slots"));
	l_inv_2.Parent = l_LocalPlayer_0.PlayerGui;
	if l_CurrentCamera_0.ViewportSize.Y < 400 then
		l_inv_2.WeaponInv.Size = UDim2.new();
		l_inv_2.WeaponInv.Position = UDim2.new(0.5, 0, 1, -40);
		for v1336 = 1, 4 do
			local v1337 = l_inv_2.WeaponInv["W" .. v1336];
			v1337.Size = UDim2.new(0, 30, 0, 30);
			v1337.Position = UDim2.new(0, 40 * (v1336 - 1) - 75, 0, 0);
		end;
	end;
	for v1338 = 1, 4 do
		local v1339 = l_inv_2.WeaponInv["W" .. v1338];
		table.insert(v97, v1339.MouseButton1Click:Connect(function()
			selectWeapon(v1338);
		end));
	end;
	updateInventory();
	updateWInv();
	table.insert(v97, v90:GetAttributeChangedSignal("Slots"):Connect(function()
		updateInventory();
	end));
	table.insert(v97, getSlotChanged():Connect(function(v1340)
		if v96 == v1340 then
			updateInventory(nil, true);
			return;
		else
			local l_slot_0 = l_Weapon_0.slot;
			if l_slot_0 ~= 0 and v93.gi[v53[l_slot_0]] == v1340 and getSlot(v1340) == "" then
				l_Weapon_0.clear();
			end;
			updateInventory(v1340, true);
			return;
		end;
	end));
	table.insert(v97, v81.events.slot1Down:Connect(function(v1342)
		if v81.invDrag and v81.invDrag ~= v1342 then
			v81.invHover = v1342;
			onRelease();
			return;
		else
			if v81.invDouble > 0 then
				if v136 and v136 ~= v1342 then
					local v1343 = l_InvManage_0.getSlotData(getSlot(v136));
					local v1344 = v1343 and v1343.name;
					if not (v1344 ~= "Hazmat" and v1344 ~= "SuperHazmat") or v1343.name == "HeavyHazmat" then
						displayMessage("You can't use any items while wearing a hazmat suit.");
						return;
					end;
				end;
				if not useItem(v1342) then
					toggleInv(false);
					return;
				end;
			else
				v81.invDrag = v1342;
				v81.invDouble = 0.5;
			end;
			return;
		end;
	end));
	for v1345 = 1, 4 do
		table.insert(v97, v90:GetAttributeChangedSignal(v53[v1345]):Connect(function()
			updateWInv(v1345);
		end));
	end;
	if v90:GetAttribute("Difficulty") == 1 and l_Userdata_0:HasKey("Console") then
		v82 = s_ReS.ClientSide.ConsoleGui:Clone();
		v82.Parent = l_LocalPlayer_0.PlayerGui;
	end;
	if l_TouchEnabled_0 then
		l_hud_0.SNav:Destroy();
		l_hud_0.SNavSmall.Name = "SNav";
	end;
	local l_Radar_2 = l_hud_0.SNav.Screen.Radar;
	v159 = {};
	local l_Offsetter_0 = l_Radar_2.Rooms.Offsetter;
	for _, v1349 in ipairs(v77.dimensions.main) do
		if v1349.Name ~= "pocketdimension" then
			local v1350 = l_NavRoom_0:Clone();
			local l_LookVector_7 = v1349.Base.CFrame.LookVector;
			local v1352 = -math.atan2(-l_LookVector_7.X, -l_LookVector_7.Z) / 3.141592653589793 * 180;
			if not (v1352 < 45 and v1352 > -45) then
				if v1352 < -45 and v1352 > -135 then
					local l_Front_0 = v1350.Front;
					v1350.Left.Name = "Front";
					v1350.Back.Name = "Left";
					v1350.Right.Name = "Back";
					l_Front_0.Name = "Right";
				elseif not (v1352 >= -135) or v1352 > 135 then
					local l_Back_0 = v1350.Back;
					local l_Right_0 = v1350.Right;
					v1350.Left.Name = "Right";
					v1350.Front.Name = "Back";
					l_Back_0.Name = "Front";
					l_Right_0.Name = "Left";
				else
					local l_Front_1 = v1350.Front;
					v1350.Right.Name = "Front";
					v1350.Back.Name = "Right";
					v1350.Left.Name = "Back";
					l_Front_1.Name = "Left";
				end;
			end;
			local l_Shape_0 = v1349.Shape;
			if l_Shape_0 == 1 then
				v1350.Back.Visible = false;
			elseif l_Shape_0 == 2 then
				v1350.Front.Visible = false;
				v1350.Back.Visible = false;
			elseif l_Shape_0 == 3 then
				v1350.Right.Visible = false;
				v1350.Left.Visible = false;
				v1350.Back.Visible = false;
			elseif l_Shape_0 == 4 then
				v1350.Right.Visible = false;
				v1350.Left.Visible = false;
				v1350.Front.Visible = false;
				v1350.Back.Visible = false;
			elseif l_Shape_0 == 5 then
				v1350.Right.Visible = false;
				v1350.Back.Visible = false;
			end;
			l_Shape_0 = v1349.Base.Position;
			local v1358 = math.floor(l_Shape_0.X / 48 + 0.5);
			local v1359 = math.floor(l_Shape_0.Z / 48 + 0.5);
			v159[v1358] = v159[v1358] or {};
			v159[v1358][v1359] = v1350;
			v1350.Position = UDim2.new(0, v1358 * 24 - 12, 0, v1359 * 24 - 12);
			v1350.Parent = l_Offsetter_0;
		end;
	end;
	updateNavigator();
	local l_SCP_0 = l_Radar_2.SCPs.SCP;
	l_SCP_0.Parent = nil;
	local l_Ring_0 = l_Radar_2.Ring;
	l_Ring_0.Parent = nil;
	local v1362 = {
		"049", 
		"066", 
		"096", 
		"106", 
		"173", 
		"457", 
		"895", 
		"939"
	};
	for v1363 = 1, #v1362 do
		local v1364 = v1362[v1363];
		local v1365 = l_Ring_0:Clone();
		v1365.Name = "Ring" .. v1364;
		v1365.Visible = false;
		v1365.Parent = l_Radar_2;
		local v1366 = l_SCP_0:Clone();
		v1366.Name = "SCP" .. v1364;
		v1366.Text = "SCP-" .. v1364;
		v1366.Visible = false;
		v1366.Parent = l_Radar_2.SCPs;
	end;
	if l_TouchEnabled_0 then
		l_hud_0.Radio:Destroy();
		l_hud_0.RadioSmall.Name = "Radio";
	end;
	table.insert(v97, l_hud_0.Radio.Screen.MouseButton1Down:Connect(function()
		if v149 then
			selectChannel(v147 % 5 + 1);
		end;
	end));
	for v1367, v1368 in pairs({
		One = 1, 
		Two = 2, 
		Three = 3, 
		Four = 4, 
		Five = 5, 
		Six = 6, 
		Seven = 7, 
		Eight = 8, 
		Nine = 9, 
		Zero = 0
		}) do
		table.insert(v97, l_fore_0.Keypad[v1367].MouseButton1Down:Connect(function()
			playGlobalSound("rbxassetid://" .. 497220731);
			if v146 then
				return;
			else
				if v145:len() < 4 then
					v145 = v145 .. tostring(v1368);
				end;
				l_fore_0.Keypad.Screen.Text = v145;
				return;
			end;
		end));
	end;
	table.insert(v97, l_fore_0.Keypad.Clear.MouseButton1Down:Connect(function()
		playGlobalSound("rbxassetid://" .. 497220731);
		if v146 then
			return;
		else
			v145 = "";
			l_fore_0.Keypad.Screen.Text = v145;
			return;
		end;
	end));
	table.insert(v97, l_fore_0.Keypad.Enter.MouseButton1Down:Connect(function()
		if v146 then
			playGlobalSound("rbxassetid://" .. 497220731);
			return;
		elseif v144 and v144.Parent then
			local v1369 = tonumber(v145);
			local v1370 = v144.Parent:FindFirstChild("Code") or v144:FindFirstChild("Code");
			if v1370 then
				re_useb:FireServer(v144, v1369);
				print(v144)
				print(v1369) -- Clearance
				if v1370.Value == v1369 then
					v144 = nil;
					v145 = "";
					l_fore_0.Keypad.Screen.Text = v145;
					return;
				else
					v146 = true;
					l_fore_0.Keypad.Screen2.Visible = false;
					l_fore_0.Keypad.Screen.Visible = false;
					for _ = 1, 3 do
						l_fore_0.Keypad.ScreenAD.Visible = false;
						task.wait(0.5);
						l_fore_0.Keypad.ScreenAD.Visible = true;
						task.wait(0.5);
					end;
					l_fore_0.Keypad.ScreenAD.Visible = false;
					l_fore_0.Keypad.Screen.Visible = true;
					l_fore_0.Keypad.Screen2.Visible = true;
					v144 = nil;
					v145 = "";
					l_fore_0.Keypad.Screen.Text = v145;
					v146 = false;
					return;
				end;
			else
				v144 = nil;
				return;
			end;
		else
			v144 = nil;
			return;
		end;
	end));
	l_Offsetter_0 = {
		One = 1, 
		Two = 2, 
		Three = 3, 
		Four = 4, 
		Five = 5, 
		Six = 6, 
		Seven = 7, 
		Eight = 8, 
		Nine = 9, 
		Zero = 0, 
		Space = " ", 
		Dash = "-"
	};
	for v1372 = 65, 90 do
		local v1373 = string.char(v1372);
		l_Offsetter_0[v1373] = v1373;
	end;
	l_SCP_0 = l_hud_0.SCP294Panel.SCP294.Keyboard;
	for v1374, v1375 in pairs(l_Offsetter_0) do
		table.insert(v97, l_SCP_0[v1374].MouseButton1Down:Connect(function()
			playGlobalSound("rbxassetid://" .. 497220731);
			if v143 or v141.Active.Value then
				return;
			else
				if v142:len() < 36 then
					v142 = v142 .. tostring(v1375);
				end;
				l_hud_0.SCP294Panel.SCP294.Screen.Text = v142;
				return;
			end;
		end));
	end;
	table.insert(v97, l_SCP_0.Backspace.MouseButton1Down:Connect(function()
		playGlobalSound("rbxassetid://" .. 497220731);
		if v143 or v141.Active.Value then
			return;
		else
			local v1376 = v142:len();
			if v1376 > 0 then
				v142 = v142:sub(1, v1376 - 1);
			end;
			l_hud_0.SCP294Panel.SCP294.Screen.Text = v142;
			return;
		end;
	end));
	table.insert(v97, l_SCP_0.Enter.MouseButton1Down:Connect(function()
		playGlobalSound("rbxassetid://" .. 497220731);
		if v143 or v141.Active.Value then
			return;
		else
			local v1377 = nil;
			local v1378 = v142:lower();
			if v1378:sub(1, 7) == "cup of " then
				v1378 = v1378:sub(8) or "";
			end;
			for _, v1380 in ipairs(l_Liquids_0) do
				if table.find(v1380.names, v1378) then
					v1377 = v1380;
					break;
				end;
			end;
			if v1377 then
				local l_v141_0 = v141;
				v141.InputName:FireServer(v142);
				v142 = "";
				l_hud_0.SCP294Panel.SCP294.Screen.Text = v142;
				while true do
					s_RS.RenderStepped:wait();
					if l_v141_0.Active.Value then
						break;
					end;
				end;
				while true do
					s_RS.RenderStepped:wait();
					if not l_v141_0.Active.Value then
						break;
					end;
				end;
				v141 = nil;
				return;
			else
				v142 = "";
				l_hud_0.SCP294Panel.SCP294.Screen.Text = v142;
				v143 = true;
				for _ = 1, 3 do
					l_hud_0.SCP294Panel.SCP294.Screen.Text = "OUT OF RANGE";
					task.wait(0.5);
					l_hud_0.SCP294Panel.SCP294.Screen.Text = "";
					task.wait(0.5);
				end;
				v143 = false;
				return;
			end;
		end;
	end));
end;
setupGame = function()
	v72 = true;
	local l_v90_Attribute_4 = v90:GetAttribute("Gamemode");
	s_UIS.ModalEnabled = false;
	l_Humanoid_0:SetStateEnabled(Enum.HumanoidStateType.Climbing, false);
	loadUI();
	v124 = true;
	enterArea("LCZ");
	s_CAS:BindAction("ToggleInv", attemptToggleInv, false, Enum.KeyCode.ButtonY);
	s_CAS:BindAction("SaveGame", attemptSaveGame, false, Enum.KeyCode.DPadUp);
	s_CAS:BindAction("crouch", attemptCrouch, false, l_Keybinds_0:GetFirstInput("crouch"), l_Keybinds_0:GetSecondInput("crouch"), Enum.KeyCode.ButtonR1);
	s_CAS:BindAction("sprint", attemptSprint, false, l_Keybinds_0:GetFirstInput("sprint"), l_Keybinds_0:GetSecondInput("sprint"), Enum.KeyCode.ButtonL2);
	l_Weapon_0.gi = v90;
	l_Weapon_0.char = v88;
	l_Weapon_0.hud = v81.hud;
	l_Weapon_0.meter = v81.meter;
	l_Weapon_0.inv = v81.inv;
	if not (l_v90_Attribute_4 ~= "NTF") or l_v90_Attribute_4 == "CI" then
		v81.hud.Voice.Visible = true;
		s_CAS:BindAction("Voice", attemptToggleVoice, false, Enum.KeyCode.DPadLeft);
		local l_l_Keybinds_0_FirstInput_0 = l_Keybinds_0:GetFirstInput("voice");
		v81.hud.Voice.Toggle.Text = (l_l_Keybinds_0_FirstInput_0 and "[" .. l_l_Keybinds_0_FirstInput_0.Name .. "]" or " ") .. " Commands";
		v81.hud.Voice.Toggle.MouseButton1Down:Connect(function()
			toggleVoice();
		end);
		v81.hud.Voice.CameraScan.MouseButton1Down:Connect(function()
			re_voice:FireServer("CameraScan", l_preferences_0.VoiceType);
			toggleVoice(false);
		end);
		l_l_Keybinds_0_FirstInput_0 = l_v90_Attribute_4 == "CI" and v81.hud.Voice.PanelCI or v81.hud.Voice.Panel;
		local v1385 = l_VoiceLines_0[l_v90_Attribute_4 .. "/" .. v90:GetAttribute("Skin")] or l_VoiceLines_0[l_v90_Attribute_4];
		local v1386 = v81.hud.Voice.Panel.UIListLayout:Clone();
		for _, v1388 in ipairs(v1385.Commands) do
			local v1389 = l_l_Keybinds_0_FirstInput_0[v1388.name];
			if v1388.menu then
				local function v1390(v1391, v1392, v1393)
					local v1394 = 0;
					local l_Frame_0 = Instance.new("Frame");
					l_Frame_0.BackgroundTransparency = 1;
					l_Frame_0.Size = UDim2.new(0, 100, 0, 200);
					l_Frame_0.Position = UDim2.new(1, 24, 0, 0);
					l_Frame_0.Name = "Sub";
					local v1396 = {};
					for v1397 in pairs(v1391) do
						table.insert(v1396, v1397);
					end;
					table.sort(v1396);
					for v1398 = 1, #v1396 do
						v1394 = v1394 + 1;
						local v1399 = v1396[v1398];
						local v1400 = v1391[v1399];
						local v1401 = v1393:Clone();
						v1401.NumL.Text = v1394;
						v1401.LayoutOrder = v1394;
						v1401.MouseButton1Down:Connect(function()
							voiceCMD(v1401.LayoutOrder);
						end);
						if typeof(v1400) == "table" then
							v1401.Text = v1399 .. " ...";
							v1401.Font = Enum.Font.SourceSansItalic;
							v1390(v1400, v1401, v1393);
						else
							v1401.Text = v1399;
							v1401.Font = Enum.Font.SourceSans;
							v1401.Name = v1400;
						end;
						v1401.Parent = l_Frame_0;
					end;
					v1386:Clone().Parent = l_Frame_0;
					l_Frame_0.Visible = false;
					l_Frame_0.Parent = v1392;
				end;
				v1390(v1388.menu, v1389, v1389:Clone());
			end;
		end;
		for _, v1403 in pairs(l_l_Keybinds_0_FirstInput_0:GetChildren()) do
			if v1403:IsA("TextButton") then
				v1403.MouseButton1Down:Connect(function()
					voiceCMD(v1403.LayoutOrder);
				end);
			end;
		end;
	end;
	local l_v90_Attribute_5 = v90:GetAttribute("Equipment");
	if l_v90_Attribute_5 and l_v90_Attribute_5 > 0 then
		v133 = v90:GetAttribute("Equipment");
	end;
	l_v90_Attribute_5 = v90:GetAttribute("BodyEquip");
	if l_v90_Attribute_5 and l_v90_Attribute_5 > 0 then
		v136 = v90:GetAttribute("BodyEquip");
	end;
	l_v90_Attribute_5 = v90:GetAttribute("FaceEquip");
	if l_v90_Attribute_5 and l_v90_Attribute_5 > 0 then
		v134 = v90:GetAttribute("FaceEquip");
	end;
	l_v90_Attribute_5 = v90:GetAttribute("HandEquip");
	if l_v90_Attribute_5 and l_v90_Attribute_5 > 0 then
		v135 = v90:GetAttribute("HandEquip");
	end;
	if v90:GetAttribute("SelectedWeapon") ~= 0 then
		selectWeapon(v90:GetAttribute("SelectedWeapon"));
	end;
	l_MainMenu_0.destroy();
	updateLighting();
	for _, v1406 in pairs(v88:GetDescendants()) do
		if v1406:IsA("BasePart") then
			v1406.LocalTransparencyModifier = 1;
			v1406.CastShadow = false;
		end;
	end;
	if not l_preferences_0.NoBloxyArms then
		table.insert(v97, v88.ChildAdded:Connect(function(v1407)
			if v1407:IsA("CharacterMesh") then
				task.wait();
				v1407.Parent = v88.HumanoidRootPart;
			end;
		end));
		for _, v1409 in pairs(v88:GetChildren()) do
			if v1409:IsA("CharacterMesh") then
				v1409.Parent = v88.HumanoidRootPart;
			end;
		end;
	end;
	task.spawn(function()
		local v1410 = time();
		while true do
			task.wait();
			if not (not raycast(l_CurrentCamera_0.CFrame.Position, Vector3.new(0, -500, 0), {
				v88, 
				l_CurrentCamera_0
				}) and time() - v1410 <= 10) then
				break;
			end;
		end;
		task.wait(0.2);
		for _, v1412 in pairs(v88.HumanoidRootPart:GetChildren()) do
			if v1412.Name == "MenuBV" then
				v1412:Destroy();
			end;
		end;
		task.spawn(function()
			local v1413 = v88.HumanoidRootPart:WaitForChild("MenuBV", 10);
			if v1413 then
				pcall(v1413.Destroy, v1413);
			end;
		end);
	end);
	v72 = false;
end;
newGame = function(v1414, v1415)
	local v1416, v1417, _, v1419 = rf_newgame:InvokeServer(v1415);
	v90 = v1416;
	if v90 then
		v92 = v1414;
		l_RoomVisual_0.Shift:Fire(v1417.Base.Position);
		setupGame();
		local l_v1416_Attribute_0 = v1416:GetAttribute("Gamemode");
		if l_v1416_Attribute_0 == "NTF" then
			if v1419 then
				v99.e_ntfintro = v1419.Sequence.Value;
			end;
		elseif l_v1416_Attribute_0 ~= "CI" and v1417.Name ~= "intro" then
			v99.e_introalarm = 28.571428571428573;
			v99.e_commotion = 0;
			v99.e_commotionI = -8;
			playStrictSound("rbxassetid://" .. l_SoundIndexer_0.Alarm2, 0.8);
		end;
		if v1417.Name ~= "intro" then
			local v1421 = {};
			if v90:GetAttribute("Difficulty") < 3 then
				table.insert(v1421, "Press F5 or H to save");
			end;
			table.insert(v1421, "Hold Shift to run");
			table.insert(v1421, "Press Tab to open the inventory");
			task.spawn(function()
				while v90 and #v1421 > 0 do
					displayMessage(table.remove(v1421, 1));
					task.wait(6);
				end;
			end);
		else
			task.spawn(l_DebrisCollector_0.Clear, l_DebrisCollector_0);
		end;
		_G.lastsave = nil;
		return true;
	else
		return;
	end;
end;
loadGame = function(v1422)
	local l_status_1, l_result_1 = pcall(function()
		local v1423, v1424, v1425 = rf_loadgame:InvokeServer(v1422);
		print(v1423, v1424, v1425)
		if v1423 then
			v90 = v1423;
			v92 = v1424.name;
			l_RoomVisual_0.Shift:Fire(v1425.Base.Position);
			l_CurrentCamera_0.CFrame = CFrame.fromEulerAnglesYXZ(v1424.rotX, v1424.rotY, 0);
			l_GameCamera_0.last = l_CurrentCamera_0.CFrame;
			setupGame();
			local l_varlist_0 = v1424.varlist;
			if l_varlist_0 then
				v148 = l_varlist_0.radio_lastch or v148;
				v99.e_012 = l_varlist_0.e_012 or v99.e_012;
				v99.e_106 = l_varlist_0.e_106 or v99.e_106;
				if l_varlist_0.e_513 and not v99.e_513 then
					create513();
				end;
				v99.e_895 = l_varlist_0.e_106 or v99.e_895;
				v99.e_1079 = l_varlist_0.e_1079 or v99.e_1079;
				v99.e_pd = l_varlist_0.e_pd or v99.e_pd;
				v99.e_207 = l_varlist_0.e_207 or v99.e_207;
				v99.e_009 = l_varlist_0.e_009 or v99.e_009;
				v99.e_introalarm = l_varlist_0.e_introalarm or v99.e_introalarm;
				v99.e_commotion = l_varlist_0.e_commotion or v99.e_commotion;
				v99.e_commotionI = l_varlist_0.e_commotionI or v99.e_commotionI;
				v99.e_1499_enter = l_varlist_0.e_1499_enter and Vector3.new(unpack(l_varlist_0.e_1499_enter));
				v99.e_1499_exit = l_varlist_0.e_1499_exit and Vector3.new(unpack(l_varlist_0.e_1499_exit));
				v101 = l_varlist_0.sanity or v101;
				v111 = l_varlist_0.meter_sprint or v111;
				v111 = math.clamp(v111, 0, 20);
			end;
			v122 = v1424.crouch;
			v91 = v1422;
			_G.lastsave = v1422;
			return true;
		else
			return;
		end;
	end);
	if l_status_1 and l_result_1 then
		return true;
	else
		warn("Couldn't load save.", l_result_1);
		return false, l_result_1;
	end;
end;
loadmenu = function()
	local v1429 = {
		newGame = newGame, 
		loadGame = loadGame
	};
	if not l_LocalPlayer_0.PlayerGui:FindFirstChild("ChatGui") then
		s_ReS.ClientSide.FirstUI.ChatGui:Clone().Parent = l_LocalPlayer_0.PlayerGui;
	end;
	if not l_LocalPlayer_0.PlayerGui:FindFirstChild("SuperTickerGui") then
		s_ReS.ClientSide.FirstUI.SuperTickerGui:Clone().Parent = l_LocalPlayer_0.PlayerGui;
	end;
	local v1430 = s_ReS.ClientSide.FirstUI.MenuGui:Clone();
	v1430.Parent = l_LocalPlayer_0.PlayerGui;
	l_MainMenu_0.initialize(v1430, v1429);
end;
print("XDXD")
s_UIS.TouchTap:Connect(function(_, v1432)
	if not v90 then
		return;
	elseif v81.invDrag and v81.invHover and v81.invDrag ~= v81.invHover then
		onRelease();
		return;
	elseif v81.invDrag and (not v81.invDouble or v81.invDouble <= 0.2) then
		onRelease();
		return;
	elseif v1432 then
		return;
	elseif v130 then
		onRelease();
		return;
	elseif l_Weapon_0.info then
		onClick(true);
		return;
	else
		onClick();
		return;
	end;
end);
s_UIS.InputBegan:Connect(function(v1433, v1434)
	if not v90 then
		return;
	else
		local l_UserInputType_0 = v1433.UserInputType;
		local l_KeyCode_0 = v1433.KeyCode;
		if l_KeyCode_0 == Enum.KeyCode.ButtonA then
			if v126 then
				if v81.invGPSelect then
					local v1437 = v81.invGPSelect + 1;
					local v1438 = getSlot(v1437);
					if v81.invDrag and v81.invDrag ~= v1437 then
						onRelease();
					elseif v1438 ~= "" then
						if v81.invDouble > 0 then
							if not useItem(v1437) then
								toggleInv(false);
							end;
						else
							v81.invDrag = v1437;
							v81.invDouble = 0.5;
						end;
					end;
				end;
			elseif l_Weapon_0.info then
				onClick(true);
			else
				onClick();
			end;
		elseif l_KeyCode_0 == Enum.KeyCode.ButtonB then
			if v126 then
				if v81.invDrag then
					v81.invDrag = nil;
				elseif v81.invGPSelect then
					v81.invGPSelect = nil;
				end;
			elseif l_Weapon_0.info then
				l_Weapon_0.reloadWeapon();
			end;
		elseif l_KeyCode_0 == Enum.KeyCode.ButtonX then
			if v126 and v81.invGPSelect then
				local v1439 = v81.invGPSelect + 1;
				dropItem(v1439);
			end;
		elseif l_KeyCode_0 == Enum.KeyCode.ButtonL3 then
			if l_Weapon_0.info and l_Weapon_0.info.type ~= "Melee" then
				l_Weapon_0.aimDownSights();
			end;
		elseif v126 then
			if l_KeyCode_0 == Enum.KeyCode.DPadUp then
				v81.invGPSelect = ((v81.invGPSelect or 0) - 5) % 10;
			elseif l_KeyCode_0 == Enum.KeyCode.DPadDown then
				v81.invGPSelect = ((v81.invGPSelect or 0) + 5) % 10;
			elseif l_KeyCode_0 == Enum.KeyCode.DPadLeft then
				v81.invGPSelect = ((v81.invGPSelect or 0) - 1) % 10;
			elseif l_KeyCode_0 == Enum.KeyCode.DPadRight then
				v81.invGPSelect = ((v81.invGPSelect or 0) + 1) % 10;
			end;
		end;
		if v1434 then
			return;
		elseif l_UserInputType_0 == Enum.UserInputType.MouseButton1 then
			onClick();
			return;
		elseif l_UserInputType_0 == Enum.UserInputType.MouseButton2 then
			onRClick();
			return;
		elseif l_KeyCode_0 == Enum.KeyCode.ButtonL1 then
			doBlink();
			return;
		else
			if l_UserInputType_0 == Enum.UserInputType.Keyboard then
				local v1440 = l_Keybinds_0:ReadInput(l_KeyCode_0);
				if v81.hud and v81.hud.Voice.Open.Value then
					if v90 and v90:GetAttribute("Gamemode") == "NTF" and l_KeyCode_0 == Enum.KeyCode.T then
						re_voice:FireServer("CameraScan", l_preferences_0.VoiceType);
						toggleVoice(false);
						return;
					else
						local v1441 = {
							[Enum.KeyCode.One] = 1, 
							[Enum.KeyCode.Two] = 2, 
							[Enum.KeyCode.Three] = 3, 
							[Enum.KeyCode.Four] = 4, 
							[Enum.KeyCode.Five] = 5, 
							[Enum.KeyCode.Six] = 6, 
							[Enum.KeyCode.Seven] = 7, 
							[Enum.KeyCode.Eight] = 8, 
							[Enum.KeyCode.Nine] = 9
						};
						if v1441[l_KeyCode_0] then
							voiceCMD(v1441[l_KeyCode_0]);
							return;
						end;
					end;
				end;
				if v1440 == "blink" then
					doBlink();
					v120 = true;
					return;
				elseif v1440 == "interact" then
					if l_Weapon_0.info then
						onClick(true);
						return;
					else
						onClick();
						return;
					end;
				elseif v1440 == "console" then
					if not v82 then
						local v1442 = l_Userdata_0:HasKey("Console");
						displayMessage(v1442 and "Must be in Safe difficulty to use the console" or "Gamepass is required to unlock this feature");
						playGlobalSound("rbxassetid://5872801634");
						return;
					end;
				elseif v1440 == "aim" then
					if l_Weapon_0.info and l_Weapon_0.info.type ~= "Melee" then
						l_Weapon_0.aimDownSights();
						return;
					end;
				elseif v1440 == "holster" then
					selectWeapon();
					return;
				elseif v1440 == "reload" then
					if l_Weapon_0.info then
						l_Weapon_0.reloadWeapon();
						return;
					end;
				elseif v1440 == "switchmode" then
					l_Weapon_0.switchMode();
					return;
				elseif v1440 == "voice" then
					toggleVoice();
					return;
				elseif v1440 == "save" then
					saveGame();
					return;
				elseif v1440 == "inventory" then
					toggleInv(not v126);
					return;
				elseif v1440 == "flashlight" then
					l_Weapon_0.toggleAccessory("flashlight");
					return;
				elseif v1440 == "laser" then
					l_Weapon_0.toggleAccessory("laser");
					return;
				elseif v1440 == "suppressor" then
					l_Weapon_0.toggleAccessory("suppressor");
					return;
				elseif v1440 == "cinematic" then
					print("Toggling cinematic mode");
					l_preferences_0.Cinematic = not l_preferences_0.Cinematic;
					if v81 then
						v81:UpdatePreferences();
					end;
					if l_preferences_0.Cinematic then
						for _, v1444 in ipairs(s_P:GetPlayers()) do
							local v1445 = v1444.Character and v1444.Character:FindFirstChild("BubbleChat", true);
							if v1445 then
								pcall(v1445.Destroy, v1445);
								task.defer(function()
									pcall(v1445.Destroy, v1445);
								end);
							end;
						end;
						return;
					end;
				elseif l_KeyCode_0 == Enum.KeyCode.Y and s_RS:IsStudio() then
					--l_Map_0.DestroyMap();
					return;
				elseif v149 then
					if l_KeyCode_0 == Enum.KeyCode.One then
						selectChannel(1);
						return;
					elseif l_KeyCode_0 == Enum.KeyCode.Two then
						selectChannel(2);
						return;
					elseif l_KeyCode_0 == Enum.KeyCode.Three then
						selectChannel(3);
						return;
					elseif l_KeyCode_0 == Enum.KeyCode.Four then
						selectChannel(4);
						return;
					elseif l_KeyCode_0 == Enum.KeyCode.Five then
						selectChannel(5);
						return;
					end;
				elseif l_KeyCode_0 == Enum.KeyCode.One then
					selectWeapon(1);
					return;
				elseif l_KeyCode_0 == Enum.KeyCode.Two then
					selectWeapon(2);
					return;
				elseif l_KeyCode_0 == Enum.KeyCode.Three then
					selectWeapon(3);
					return;
				elseif l_KeyCode_0 == Enum.KeyCode.Four then
					selectWeapon(4);
				end;
			end;
			return;
		end;
	end;
end);
s_UIS.InputChanged:Connect(function(v1446, v1447)
	if v1447 then
		return;
	elseif not v90 then
		return;
	else
		if v1446.UserInputType == Enum.UserInputType.MouseWheel then
			if v1446.Position.Z < 0 then
				for v1448 = v90:GetAttribute("SelectedWeapon") + 1, 5 do
					if v1448 == 5 then
						selectWeapon();
					else
						local l_v90_Attribute_6 = v90:GetAttribute(v53[v1448]);
						if l_v90_Attribute_6 and l_v90_Attribute_6 ~= 0 then
							selectWeapon(v1448);
							return;
						end;
					end;
				end;
				return;
			elseif v1446.Position.Z > 0 then
				for v1450 = (v90:GetAttribute("SelectedWeapon") - 1) % 5, 0, -1 do
					if v1450 == 0 then
						selectWeapon();
					else
						local l_v90_Attribute_7 = v90:GetAttribute(v53[v1450]);
						if l_v90_Attribute_7 and l_v90_Attribute_7 ~= 0 then
							selectWeapon(v1450);
							return;
						end;
					end;
				end;
			end;
		end;
		return;
	end;
end);
s_UIS.InputEnded:Connect(function(v1452, _)
	if not v90 then
		return;
	elseif v1452.UserInputType == Enum.UserInputType.MouseButton1 then
		onRelease();
		return;
	elseif v1452.UserInputType == Enum.UserInputType.MouseButton2 then
		onRRelease();
		return;
	else
		if v1452.UserInputType == Enum.UserInputType.Keyboard then
			local v1454 = l_Keybinds_0:ReadInput(v1452.KeyCode);
			if v1454 == "interact" then
				if l_Weapon_0.info then
					onRelease(true);
					return;
				else
					onRelease();
					return;
				end;
			elseif v1454 == "blink" then
				v120 = false;
			end;
		end;
		return;
	end;
end);
l_LocalPlayer_0.CharacterAdded:Connect(function(v1455)
	task.spawn(function()
		if not l_LocalPlayer_0:GetAttribute("Updated") then
			while true do
				task.wait();
				if l_LocalPlayer_0:GetAttribute("Updated") then
					break;
				end;
			end;
		end;
		if v90 then
			pcall(v90.Destroy, v90);
			v90 = nil;
		end;
		v88 = v1455;
		cleanup();
		loadmenu();
	end);
	l_Humanoid_0 = nil;
	task.spawn(function()
		l_Humanoid_0 = v1455:WaitForChild("Humanoid");
	end);
	local l_HumanoidRootPart_9 = v1455:WaitForChild("HumanoidRootPart");
	local l_BodyVelocity_0 = Instance.new("BodyVelocity");
	l_BodyVelocity_0.Velocity = Vector3.new();
	l_BodyVelocity_0.MaxForce = Vector3.new(1e999, 1e999, 1e999);
	l_BodyVelocity_0.Name = "MenuBV";
	l_BodyVelocity_0.Parent = l_HumanoidRootPart_9;
end);
reout_doortoggle.OnClientEvent:Connect(doorToggle);
reout_necksnap.OnClientEvent:Connect(function()
	if v90 then
		e_necksnap = (math.random(0, 1) - 0.5) * 3;
		local v1458 = getNearestRoomFromPos(l_CurrentCamera_0.CFrame.Position);
		local v1459 = v1458 and v1458.Name;
		if not (v1459 ~= "room2closets" and v1459 ~= "lockroom") or v1459 == "coffin" then
			setDeathMsg("Fatal cervical fracture. The surveillance tapes confirm that the subject was killed by SCP-173.");
			return;
		elseif v1459 == "room2doors" then
			setDeathMsg("\"If I'm not mistaken, one of the main purposes of these rooms was to stop SCP-173 from moving further in the event of a containment breach. So, whose brilliant idea was it to put A MAN-SIZED VENTILATION DUCT in there?!\"");
			return;
		else
			setDeathMsg("Fatal cervical fracture. Assumed to be attacked by SCP-173.");
		end;
	end;
end);
reout_106.OnClientEvent:Connect(function(v1460)
	v99.e_106 = 0;
	v105 = v1460;
end);
re_tesla.OnClientEvent:Connect(function(v1461, v1462)
	local v1463 = v173[v1461];
	if v1463 then
		if v1462 then
			v1461.Tesla.Trigger:Play();
			v1463.timer = 0.5;
			v1463.state = 2;
			return;
		elseif not (v1463.state ~= -1) or v1463.timer > 1.9 then
			v1463.timer = 0;
			v1463.state = 0;
		end;
	end;
end);
re_elevator.OnClientEvent:Connect(function(v1464, v1465, v1466)
	v88.HumanoidRootPart.CFrame = v1465 * v1464:ToObjectSpace(v88.HumanoidRootPart.CFrame);
	l_CurrentCamera_0.CFrame = v1465 * v1464:ToObjectSpace(l_CurrentCamera_0.CFrame);
	l_GameCamera_0.set = l_CurrentCamera_0.CFrame;
	if v1466 then
		l_RoomVisual_0.Shift:Fire(v1466.Base.Position);
		task.spawn(function()
			for _ = 1, 20 do
				task.wait();
				updateLighting();
			end;
		end);
	end;
end);
reout_escape.OnClientEvent:Connect(function(_, v1469)
	_G.results = v1469;
	v99.e_escape = 0;
end);
re_shoot.OnClientEvent:Connect(function(v1470, v1471, v1472)
	local l_includeSelf3P_2 = l_Configurations_0.debug.includeSelf3P;
	local l_Character_0 = v1470.ClassName == "Player" and v1470.Character or v1470;
	if (not (v1470 == l_LocalPlayer_0) or l_includeSelf3P_2) and l_Character_0 and l_Character_0:IsDescendantOf(workspace) then
		local l_Position_36 = l_CurrentCamera_0.CFrame.Position;
		local v1476 = getPlayer(v1470);
		if v1471 then
			for _, v1478 in pairs(v1471) do
				local v1479, v1480, v1481 = unpack(v1478);
				l_BulletFX_0(v1479, v1480, v1481);
			end;
		end;
		if v1472 and not raycast2(l_Position_36, (v1472 * CFrame.new(0, 0, -5)).Position - l_Position_36, {
			l_CurrentCamera_0, 
			v88
			}) then
			local v1482 = true;
			if not (not v88 or not v88:GetAttribute("SpawnProtection")) or l_Character_0:GetAttribute("SpawnProtection") then
				v1482 = false;
			elseif v93 and v1476 then
				v1482 = false;
				local l_gi_3 = v93.gi;
				local l_gi_4 = v1476.gi;
				local l_Gamemode_3 = l_gi_3.Gamemode;
				local l_Gamemode_4 = l_gi_4.Gamemode;
				local l_Difficulty_1 = l_gi_3.Difficulty;
				local l_Difficulty_2 = l_gi_4.Difficulty;
				local v1489 = l_Teams_0.compareTeams(l_Gamemode_3, l_Gamemode_4);
				local v1490 = l_Teams_0.compareDifficulties(l_Difficulty_1, l_Difficulty_2);
				if not (not v1489 or not v1490) then
					v81.hud.NameTag.TextColor3 = Color3.new(1, 0, 0);
					v1482 = true;
				end;
			end;
			if v1482 then
				local l_LookVector_8 = v1472.LookVector;
				local v1492 = l_Position_36 - v1472.Position;
				local l_Unit_2 = v1492.Unit;
				local l_Magnitude_18 = v1492.Magnitude;
				local v1495 = l_LookVector_8:Dot(l_Unit_2);
				if v1495 > 0.96 then
					local v1496 = (v1495 - 0.96) / 0.04;
					local _ = -(v1496 - 1) ^ 4 + 1;
					local v1498 = 1 / ((l_Magnitude_18 / 48) ^ 2 + 1) * v1496 * 1.5;
					local v1499 = v99.e_shake or 0;
					if v1499 < 5 then
						v99.e_shake = v1499 + v1498;
					end;
					if v1498 < 0.8 then
						v1499 = randomItem({
							6149937362, 
							6149937570, 
							6149937752, 
							6149938264, 
							6149938405, 
							6149938566, 
							6149938724, 
							6149938869, 
							6149938996
						});
						local v1500 = math.min(3, v1498 * 2.5);
						playGlobalSound("rbxassetid://" .. v1499, v1500);
					else
						v1499 = randomItem({
							6149977109, 
							6149977608, 
							6149978100, 
							6149978441, 
							6149978835, 
							6149979173, 
							6149979477, 
							6149980852, 
							6149981177
						});
						local v1501 = math.min(3, v1498 * 3);
						playGlobalSound("rbxassetid://" .. v1499, v1501);
					end;
				end;
			end;
		end;
		local v1502 = v178[v1476];
		local v1503 = v1502 and v1502.wm;
		if v1503 then
			local l_Barrel_0 = v1503:FindFirstChild("Barrel");
			if l_Barrel_0 then
				v1502.firerate = 0.05;
				local l_suppressor_1 = v1502.suppressor;
				local v1506 = "Fire";
				local v1507 = "Echo";
				local v1508 = "Suppressor";
				if not (v84 ~= "gatea") or v84 == "exit1" then
					v1506 = v1506 .. "Out";
					v1507 = v1507 .. "Out";
					v1508 = v1508 .. "Out";
				end;
				for _, v1510 in pairs(l_Barrel_0:GetChildren()) do
					if v1510.Name:sub(1, 7) == "FlashFX" then
						v1510.Enabled = not l_suppressor_1;
					elseif v1510.Name == "Smoke" then
						v1510.Enabled = not l_suppressor_1;
					elseif l_suppressor_1 then
						if v1510.Name == v1508 then
							local v1511 = Instance.new("Attachment", l_Terrain_0);
							v1511.Position = l_Barrel_0.WorldPosition;
							local v1512 = v1510:Clone();
							v1512.Parent = v1511;
							v1512:Play();
							s_D:AddItem(v1511);
						end;
					elseif not (v1510.Name ~= v1506) or v1510.Name == v1507 then
						local v1513 = Instance.new("Attachment", l_Terrain_0);
						v1513.Position = l_Barrel_0.WorldPosition;
						local v1514 = v1510:Clone();
						v1514.Parent = v1513;
						v1514:Play();
						s_D:AddItem(v1513);
					end;
				end;
				if not l_preferences_0.HideCasings then
					local l_ammo_0 = v1502.ammo;
					if l_ammo_0 then
						local l_Chamber_0 = v1503:FindFirstChild("Chamber");
						if l_Chamber_0 then
							local v1517 = l_Casings_0(l_ammo_0);
							if v1517 then
								v1517.CFrame = l_Chamber_0.WorldCFrame * CFrame.new(0, 0, -0.3) * CFrame.Angles((math.random() - 0.5) * 0.3, 3.141592653589793 * math.random() * 0.2, 0) * v1517.CFrame;
								v1517.Parent = workspace.CurrentCamera;
								v1517.AssemblyLinearVelocity = l_Chamber_0.WorldCFrame.LookVector * (20 + math.random() * 5);
								v1517.AssemblyAngularVelocity = Vector3.new(0, (math.random() - 0.5) * 25, 0);
								game.Debris:AddItem(v1517, 3);
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end);
re_dmsg.OnClientEvent:Connect(setDeathMsg);
re_radio.OnClientEvent:Connect(function(v1518, v1519, v1520, v1521)
	if v80[v1518] then
		local v1522 = workspace.RadioChannels["Channel" .. v1518];
		if not v1520 then
			local l_Sound_7 = Instance.new("Sound");
			l_Sound_7.SoundId = v1519[1];
			l_Sound_7.Volume = v1519[2];
			l_Sound_7.Looped = v1519[3];
			l_Sound_7.TimePosition = v1519[5];
			l_Sound_7.Name = v1519[6];
			l_Sound_7.SoundGroup = v1522;
			l_Sound_7.Parent = v1522;
			if v1519[4] then
				l_Sound_7:Resume();
				return;
			end;
		elseif not (v1520 ~= "Volume") or v1520 == "TimePosition" then
			local l_v1522_FirstChild_0 = v1522:FindFirstChild(v1519);
			if l_v1522_FirstChild_0 then
				l_v1522_FirstChild_0[v1520] = v1521;
				return;
			end;
		elseif v1520 == "IsPlaying" then
			local l_v1522_FirstChild_1 = v1522:FindFirstChild(v1519);
			if l_v1522_FirstChild_1 then
				if v1521 then
					l_v1522_FirstChild_1:Resume();
					return;
				else
					l_v1522_FirstChild_1:Pause();
				end;
			end;
		end;
	end;
end);
re_msg.OnClientEvent:Connect(displayMessage);
re_ach.OnClientEvent:Connect(function(v1526)
	if v1526 == "SCP055" then
		return;
	else
		local v1527 = l_Achievements_0[v1526];
		if v1527 then
			game.StarterGui:SetCore("SendNotification", {
				Title = "Achievement", 
				Text = "\"" .. v1527.Name .. "\" unlocked!", 
				Icon = "rbxassetid://" .. v1527.Icon
			});
		end;
		return;
	end;
end);
re_room.OnClientEvent:Connect(function(v1528)
	l_RoomVisual_0.Shift:Fire(v1528);
end);
reout_sound.OnClientEvent:Connect(function(v1529)
	playGlobalSound("rbxassetid://" .. v1529);
end);
reout_ragdoll.OnClientEvent:Connect(function(v1530, v1531)
	ragdoll(v1530, v1531);
end);
re_use.OnClientEvent:Connect(function(v1532, _, v1534)
	if v1532 == "body" then
		if v1534 then
			dropItem(v136, true);
		end;
		v136 = nil;
		return;
	else
		if v1532 == "hand" then
			if v1534 then
				dropItem(v135, true);
			end;
			v135 = nil;
		end;
		return;
	end;
end);
re_refw.OnClientEvent:Connect(function(v1535)
	local l_includeSelf3P_3 = l_Configurations_0.debug.includeSelf3P;
	if v1535 and (not (v1535 == v88) or l_includeSelf3P_3) then
		local l_PlayerFromCharacter_0 = game.Players:GetPlayerFromCharacter(v1535);
		local v1538 = l_PlayerFromCharacter_0 and getPlayer(l_PlayerFromCharacter_0);
		disconnectWeapon(v1538);
	end;
end);
re_decal.OnClientEvent:Connect(function(v1539, v1540, v1541, v1542)
	if v1539 then
		if v1539.Character and v1539.Character.Parent == workspace then
			createDecal(v1540, v1541, v1542);
			return;
		end;
	else
		createDecal(v1540, v1541, v1542);
	end;
end);
re_ack.OnClientEvent:Connect(function()
	re_ack:FireServer();
end);
re_tp.OnClientEvent:Connect(function(v1543)
	local l_HumanoidRootPart_10 = v88:FindFirstChild("HumanoidRootPart");
	if l_HumanoidRootPart_10 then
		l_HumanoidRootPart_10.CFrame = CFrame.new(v1543) * (l_HumanoidRootPart_10.CFrame - l_HumanoidRootPart_10.Position);
	end;
end);
re_event.OnClientEvent:Connect(function(v1545, ...)
	if v1545 == "SCP066" then
		local _, v1547 = ...;
		if v1547 == 1 then
			v99.e_shake = 10;
			return;
		elseif v1547 == 2 then
			v99.e_066dim = math.random() * 10 + 10;
			return;
		elseif v1547 == 4 then
			v99.e_shake = 5;
			return;
		end;
	elseif v1545 == "SCP939" then
		playGlobalSound("rbxassetid://" .. 888630953, 1);
		return;
	elseif v1545 == "SCP966" then
		local v1548 = true;
		if v134 then
			local v1549 = l_InvManage_0.getSlotData(getSlot(v134));
			local v1550 = v1549 and v1549.name;
			local v1551 = v1549 and v1549.battery;
			if v1550 then
				if (not (v1550 ~= "NVG") or v1550 == "NVG_S") and v1551 and v1551 > 0 then
					v1548 = false;
				elseif v1550 == "NVG_R" then
					v1548 = false;
				end;
			end;
		end;
		if not v99.e_966 or v99.e_966 <= 0 then
			v99.e_966 = 20;
			if v1548 then
				displayMessage(randomItem({
					"You feel something breathing right next to you", 
					"\"It feels like something's in this room with me.\"", 
					"You feel like something is here with you, but you do not see anything.", 
					"\"Is my mind playing tricks on me or is there someone else here?\"", 
					"You feel like something is following you.", 
					"You can feel something near you, but you are unable to see it. Perhaps its time is now."
				}));
				return;
			end;
		end;
	elseif v1545 == "CameraScan" then
		if not v90 or v90:GetAttribute("Gamemode") ~= "NTF" then
			return;
		else
			local v1552 = ...;
			if v81.hud then
				local v1553 = s_ReS.ClientSide.Pos:Clone();
				local l_Offsetter_1 = v81.hud.SNav.Screen.Radar.Rooms.Offsetter;
				for _, v1556 in ipairs(l_Offsetter_1:GetChildren()) do
					if v1556.Name == "SCPos" then
						v1556:Destroy();
					end;
				end;
				for _, v1558 in ipairs(v1552) do
					local v1559 = v1553:Clone();
					local v1560 = v1558.X / 48;
					local v1561 = v1558.Z / 48;
					v1559.Position = UDim2.new(0, v1560 * 24, 0, v1561 * 24);
					v1559.Name = "SCPos";
					v1559.Parent = l_Offsetter_1;
				end;
			end;
		end;
	end;
end);
print("XDXD2")
local v1580 = {
	FallDamage = function(v1562)
		if v1562 == v88 then
			playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Impact, 1);
			v117 = true;
		end;
	end, 
	Blackout914 = function(v1563)
		if v1563 == v88 then
			playGlobalSound("rbxassetid://" .. 6042916718, 1);
			v103 = 8.5;
		end;
	end, 
	Elevator = function(v1564)
		if v1564 == v88 then
			v99.e_elevator = 7.1;
		end;
	end, 
	SCP009 = function(v1565)
		if v1565 == v88 then
			if v136 and v136 ~= v1565 then
				local v1566 = l_InvManage_0.getSlotData(getSlot(v136));
				local v1567 = v1566 and v1566.name;
				if not (v1567 ~= "Hazmat" and v1567 ~= "SuperHazmat") or v1566.name == "HeavyHazmat" then
					return;
				end;
			end;
			v99.e_009 = v99.e_009 or 0;
		end;
	end, 
	SCP079 = function(v1568)
		if v1568 == v88 then
			if v135 then
				local v1569 = l_InvManage_0.getSlotData(getSlot(v135));
				if v1569 and v1569.name == "SCP714" then
					return;
				end;
			end;
			if v134 then
				local v1570 = l_InvManage_0.getSlotData(getSlot(v134));
				if v1570 and v1570.name == "GasMask3" then
					return;
				end;
			end;
			if v136 then
				local v1571 = l_InvManage_0.getSlotData(getSlot(v136));
				if v1571 and v1571.name == "HeavyHazmat" then
					return;
				end;
			end;
			playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Horror7, 0.6);
		end;
	end, 
	SCP096 = function(v1572)
		if v1572 == v88 then
			playGlobalSound("rbxassetid://" .. 6076438409, 1);
		end;
	end, 
	SCP513 = function(v1573)
		if v1573 == v88 and v99.e_513 then
			destroy513();
		end;
	end, 
	NoHand = function(v1574)
		if v1574 == v88 then
			v125 = true;
			displayMessage("You feel your hands dropping from your arms.");
			playGlobalSound("rbxassetid://" .. 5519568804, 7);
			playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Horror1, 0.5);
			playGlobalSound("rbxassetid://" .. l_SoundIndexer_0.Horror0, 2);
			local v1575 = true;
			do
				local l_v1575_0 = v1575;
				task.delay(0.5, function()
					l_v1575_0 = nil;
				end);
				local l_l_Humanoid_0_2 = l_Humanoid_0;
				setDeathMsg("The lever broke.");
				local v1578 = l_ScaryPart_0:Clone();
				v1578.CFrame = l_CurrentCamera_0.CFrame * CFrame.new(0, 0, -1) * CFrame.fromEulerAnglesYXZ(0, 3.141592653589793, 0);
				v1578.Parent = l_CurrentCamera_0;
				v1578.Beam.Width0 = 3;
				v1578.Beam.Width1 = 3;
				task.spawn(function()
					while l_l_Humanoid_0_2:IsDescendantOf(workspace) and s_RS.RenderStepped:wait() do
						v1578.CFrame = l_CurrentCamera_0.CFrame * CFrame.new(0, 0, -1) * CFrame.fromEulerAnglesYXZ(0, 3.141592653589793, 0);
						if l_v1575_0 then
							v1578.Beam.Enabled = true;
							v112 = v112 + 1;
						else
							v1578.Beam.Enabled = math.random() < (100 - l_l_Humanoid_0_2.Health) / 500;
							v112 = v112 + (1 - l_l_Humanoid_0_2.Health / l_l_Humanoid_0_2.MaxHealth);
						end;
						v1578.Beam.Texture = "rbxassetid://" .. randomItem(v39);
					end;
					v1578:Destroy();
				end);
			end;
		end;
	end, 
	LightBlink = function()
		if v84 ~= "pocketdimension" and v84 ~= "SCP860" and v84 ~= "SCP1499" then
			v100 = 1;
		end;
	end, 
	Flash1162 = function(v1579)
		if v1579 == v88 then
			v99.e_1162 = 0;
		end;
	end
};
print("XDXD1")
workspace.Events.ChildAdded:Connect(function(v1581)
	local l_Name_3 = v1581.Name;
	local l_Value_5 = v1581.Value;
	local v1584 = v1580[l_Name_3];
	if v1584 then
		v1584(l_Value_5);
		return;
	else
		if v1581.Name:sub(1, 7) == "VoiceCD" and v1581.Name:sub(8) == tostring(l_LocalPlayer_0.UserId) and v81.hud then
			v81.hud.Voice.Cooldown.TNV.Value = 1;
			s_T:Create(v81.hud.Voice.Cooldown.TNV, TweenInfo.new(v1581.Value, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
				Value = 0
			}):Play();
		end;
		return;
	end;
end);
connectCA(workspace);
connectCA(workspace.NPCs);
connectCA(workspace.SCPs);
s_RS:BindToRenderStep("cam_bf", Enum.RenderPriority.Input.Value + 1, beforeCam);
s_RS:BindToRenderStep("cam", Enum.RenderPriority.Camera.Value + 1, mainCam);
s_RS:BindToRenderStep("cam2", Enum.RenderPriority.Character.Value + 2, secondaryCam)

s_RS:BindToRenderStep("char", Enum.RenderPriority.Character.Value + 1, function(v1585)
	v76 = v76 + 1;
	v74 = v74 + 1;
	v75 = v75 + v1585; -- variavel que controla a velocidade do movimento do avatar
	v73 = v73 + v1585;
	if v75 > 1 then
		v73 = v74;
		v74 = 0;
		v75 = v75 - 1;
	end;
	if l_preferences_0.FPS then
		l_DebugGui_0.FPS.Text = math.floor(v73);
		l_DebugGui_0.FPS.Visible = true;
	else
		l_DebugGui_0.FPS.Visible = false;
	end;
	if not v77 then
		v77 = l_Map_0.currentMap;
		if v77 then
			setMap(v77);
		end;
	elseif not v77.valid then
		v77 = nil;
		resetMap();
	end;
	if v90 and v77 and v77.valid then
		mainLoop(v1585);
	else
		s_UIS.MouseIconEnabled = true;
		l_l_LocalPlayer_0_Mouse_0.Icon = "";
		if v84 ~= "Menu" then
			enterArea("Menu");
		end;
		bgLoop(v1585); -- erro
	end;
	l_SmoothSCP173_0(v1585);
end)

pcall(function()
	game.StarterGui:SetCoreGuiEnabled("All", false)
end)

task.spawn(function()
	print("XDXD")
	if not l_LocalPlayer_0:GetAttribute("Updated") then
		while true do
			task.wait()
			if l_LocalPlayer_0:GetAttribute("Updated") then
				break
			else
				break
			end
		end
	end
	loadmenu()
end)

task.spawn(function()
	while true do
		task.wait()
		print("1")
		if l_LocalPlayer_0.Character then
			break
		end
	end

	local l_HumanoidRootPart_11 = l_LocalPlayer_0.Character:WaitForChild("HumanoidRootPart")
	local l_BodyVelocity_1 = Instance.new("BodyVelocity")
	l_BodyVelocity_1.Velocity = Vector3.new()
	l_BodyVelocity_1.MaxForce = Vector3.new(1e999, 1e999, 1e999);
	l_BodyVelocity_1.Name = "MenuBV"
	l_BodyVelocity_1.Parent = l_HumanoidRootPart_11
end);

l_Weapon_0.playSound = playGlobalSound;
l_Weapon_0.displayMessage = displayMessage;
l_Weapon_0.bfx = l_BulletFX_0;
l_Weapon_0.ragdolls = v79;
l_Skybox_0:UseSky(l_Sky_0);

l_Thunder_0.playSound = playGlobalSound;

l_Rain_0:SetCollisionMode(l_Rain_0.CollisionMode.Function, function(v1588)
	return v1588.Transparency < 1;
end);
task.spawn(function()
	while true do
		if v90 then
			pcall(rf_updatecam.InvokeServer, rf_updatecam, l_CurrentCamera_0.CFrame);
		else
			s_RS.RenderStepped:wait();
		end;
	end;
end);
