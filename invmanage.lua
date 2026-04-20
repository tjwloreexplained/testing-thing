-- Saved by UniversalSynSaveInstance https://discord.gg/wx4ThpAsmw

--Decompiled by Oracle https://discord.gg/Y6UhaEjGaG
local v0 = {};
 
local l_Players_0 = game:GetService("Players");
 
local l_HttpService_0 = game:GetService("HttpService");
 
local l_RunService_0 = game:GetService("RunService");
 
local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");
 
local l_GameInfo_0 = require(l_ReplicatedStorage_0:FindFirstChild("GameInfo"));
 
local l_ItemsInfo_0 = require(l_ReplicatedStorage_0:FindFirstChild("ItemsInfo"));
 
local l_Map_0 = require(l_ReplicatedStorage_0:FindFirstChild("Map"));
 
local v8 = nil;
 
local l_getSlot_0 = l_GameInfo_0.getSlot;
 
local l_setSlot_0 = l_GameInfo_0.setSlot;
 
local _ = l_GameInfo_0.getWSlot;
 
local _ = l_GameInfo_0.setWSlot;
 
v0.getSlotData = function(...)
end
v0.removeItem = function(...)
end
v0.makeItemObject = function(...)
end
print("LOLO")
local function _(v13, v14)
    local v15 = v13.CFrame:PointToObjectSpace(v14) / v13.Size * 2;
    local v16 = false;
    if math.abs(v15.X) < 1 then
        v16 = false;
        if math.abs(v15.Y) < 1 then
            v16 = math.abs(v15.Z) < 1;
        end;
    end;
    return v16;
end;
local function v26(v18)
    if not v8 then
        v8 = {};
        for _, v20 in pairs(workspace.Rooms:GetChildren()) do
            v8[v20] = v20.Base.Position;
        end;
    end;
    local v21 = 1e999;
    local v22 = nil;
    for v23, v24 in pairs(v8) do
        local l_Magnitude_0 = (v24 - v18).Magnitude;
        if l_Magnitude_0 < v21 then
            v21 = l_Magnitude_0;
            v22 = v23;
        end;
    end;
    return v22;
end;
print("LOLO")
local function v32(v27, v28, v29)
    for _, v31 in ipairs({
        "Equipment", 
        "FaceEquip", 
        "HandEquip", 
        "BodyEquip", 
        "Primary", 
        "Secondary", 
        "Melee", 
        "Special"
    }) do
        if v27:GetAttribute(v31) == v28 then
            v27:SetAttribute(v31, v29);
        end;
    end;
end;
v0.isFull = function(v33)
    for v34 = 1, v33:GetAttribute("Slots") or 10 do
        if l_getSlot_0(v33, v34) == "" then
            return false;
        end;
    end;
    return true;
end;
v0.findFirstEmpty = function(v35)
    for v36 = 1, v35:GetAttribute("Slots") or 10 do
        if l_getSlot_0(v35, v36) == "" then
            return v36;
        end;
    end;
end;
print("LOLO")
v0.addItem = function(v37, v38, v39)
    local v40 = v39 or v0.findFirstEmpty(v37);
    if v40 then
        local l_v38_Attribute_0 = v38:GetAttribute("ItemData");
        l_setSlot_0(v37, v40, l_v38_Attribute_0 or l_HttpService_0:JSONEncode({
            name = v38.Name
        }));
        v38.Parent = nil;
        local v42 = l_ItemsInfo_0[v38.Name];
        if v42 and v42.body then
            v37:SetAttribute("BodyEquip", v40);
        end;
        if l_RunService_0:IsServer() then
            if v38.Name == "Keycard6" then
				local l_v37_Attribute_0 = v37:GetAttribute("Gamemode")
				local Skin_Attribute_0 = v37:GetAttribute("Skin")
				if (not (l_v37_Attribute_0 ~= "Default" and l_v37_Attribute_0 ~= "Scientist" and l_v37_Attribute_0 ~= "Janitor") or l_v37_Attribute_0 == "Doctor") and v37:GetAttribute("Difficulty") > 1 and Skin_Attribute_0 == "O5" then
                    local v44 = v37.Parent and l_Players_0:GetPlayerFromCharacter(v37.Parent)
                    if v44 then
						_G.AB_awardBadge(v44, 2146326904296885)
                    end
                end
            end
            if v38.Name == "Keycard6" then
                local v45 = v37.Parent and l_Players_0:GetPlayerFromCharacter(v37.Parent);
                if v45 then
                    _G.award(v45, "Omni");
                end;
            elseif v38.Name == "SNavUlt" then
                local v46 = v37.Parent and l_Players_0:GetPlayerFromCharacter(v37.Parent);
                if v46 then
                    _G.award(v46, "SNAV");
                end;
            elseif v38.Name == "SCP148" then
                local v47 = v37.Parent and l_Players_0:GetPlayerFromCharacter(v37.Parent);
                if v47 then
                    _G.award(v47, "SCP148");
                end;
            elseif v38.Name == "SCP860" then
                local v48 = v37.Parent and l_Players_0:GetPlayerFromCharacter(v37.Parent);
                if v48 then
                    _G.award(v48, "SCP860");
                end;
            end;
        end;
        return true, v40;
    else
        return false, "You can't take anymore items";
    end;
end;
v0.moveItem = function(v49, v50, v51, v52)
    if v52 then
        local v53 = l_getSlot_0(v49, v52);
        local v54 = v0.getSlotData(v53);
        if v54 and v54.items then
            local v55 = v54.slots or 10;
            if v50 > 0 and v51 > 0 and v50 <= v55 and v51 <= v55 then
                local v56 = v54.items[v50];
                v54.items[v50] = v54.items[v51];
                v54.items[v51] = v56;
                l_setSlot_0(v49, v52, l_HttpService_0:JSONEncode(v54));
                return true;
            end;
        end;
    else
        local l_v49_Attribute_0 = v49:GetAttribute("Slots");
        if v50 > 0 and v51 > 0 and v50 <= l_v49_Attribute_0 and v51 <= l_v49_Attribute_0 then
            local v58 = l_getSlot_0(v49, v50);
            local v59 = l_getSlot_0(v49, v51);
            l_setSlot_0(v49, v50, v59);
            l_setSlot_0(v49, v51, v58);
            v32(v49, v50, v51);
        end;
    end;
    return true;
end;
v0.combineItems = function(v60, v61, v62)
    local v63 = l_getSlot_0(v60, v61);
    local v64 = l_getSlot_0(v60, v62);
    local v65 = v0.getSlotData(v63);
    local v66 = v0.getSlotData(v64);
    if v65 and v65.name and v66 and v66.name then
        if v66.name == "Clipboard" then
            local v67 = false;
            local v68 = nil;
            local v69 = "Use0";
            if v65.name:sub(1, 8) == "Document" then
                v68 = "This document was added to the clipboard.";
                v67 = true;
            elseif not (v65.name:sub(1, 7) ~= "Keycard" and v65.name ~= "RobloxCard") or v65.name == "PlayingCard" then
                v68 = "The " .. l_ItemsInfo_0[v65.name].name .. " was added to the clipboard.";
                v67 = true;
                v69 = "Use1";
            end;
            if v67 then
                if not v66.items then
                    local v70 = {};
                    v70 = {
                        [1] = v63
                    };
                    for v71 = 2, v66.slots or 10 do
                        v70[v71] = "";
                    end;
                    v66.items = v70;
                    l_setSlot_0(v60, v62, l_HttpService_0:JSONEncode(v66));
                    l_setSlot_0(v60, v61, "");
                    return true, v68, v69;
                else
                    for v72 = 1, v66.slots or 10 do
                        if v66.items[v72] == "" then
                            v66.items[v72] = v63;
                            l_setSlot_0(v60, v62, l_HttpService_0:JSONEncode(v66));
                            l_setSlot_0(v60, v61, "");
                            return true, v68, v69;
                        end;
                    end;
                    return false, "The paperclip is not strong enough to hold any more items.";
                end;
            end;
        elseif v66.name == "Wallet" then
            local v73 = false;
            local v74 = "You put " .. l_ItemsInfo_0[v65.name].name .. " into the wallet.";
            local v75 = l_ItemsInfo_0[v65.name].pickSound or "Use1";
            if v65.name == "SCP860" then
                v73 = true;
            elseif v65.name:sub(1, 7) == "Keycard" then
                v73 = true;
            elseif v65.name == "RobloxCard" then
                v73 = true;
            elseif v65.name == "PlayingCard" then
                v73 = true;
            elseif v65.name == "Quarter" then
                v73 = true;
            end;
            if v73 then
                if not v66.items then
                    local v76 = {};
                    v76 = {
                        [1] = v63
                    };
                    for v77 = 2, v66.slots or 10 do
                        v76[v77] = "";
                    end;
                    v66.items = v76;
                    l_setSlot_0(v60, v62, l_HttpService_0:JSONEncode(v66));
                    l_setSlot_0(v60, v61, "");
                    return true, v74, v75;
                else
                    for v78 = 1, v66.slots or 10 do
                        if v66.items[v78] == "" then
                            v66.items[v78] = v63;
                            l_setSlot_0(v60, v62, l_HttpService_0:JSONEncode(v66));
                            l_setSlot_0(v60, v61, "");
                            return true, v74, v75;
                        end;
                    end;
                    return false, "The wallet is full.";
                end;
            end;
        elseif v65.name == "Battery9V" then
            if v66.name == "Radio" then
                if (v66.battery or 0) < 100 then
                    v66.battery = 100;
                    l_setSlot_0(v60, v62, l_HttpService_0:JSONEncode(v66));
                    l_setSlot_0(v60, v61, "");
                    return true, "You replaced the radio's battery.", "Use1";
                else
                    return false, "The radio's battery doesn't need to be replaced for now.";
                end;
            elseif not (v66.name ~= "SNav") or v66.name == "SNav310" then
                if (v66.battery or 0) < 100 then
                    v66.battery = 100;
                    l_setSlot_0(v60, v62, l_HttpService_0:JSONEncode(v66));
                    l_setSlot_0(v60, v61, "");
                    return true, "You replaced the navigator's battery.", "Use1";
                else
                    return false, "The navigator's battery doesn't need to be replaced for now.";
                end;
            elseif not (v66.name ~= "NVG") or v66.name == "NVG_S" then
                if (v66.battery or 0) < 100 then
                    v66.battery = 100;
                    l_setSlot_0(v60, v62, l_HttpService_0:JSONEncode(v66));
                    l_setSlot_0(v60, v61, "");
                    return true, "You replaced the goggles' battery.", "Use1";
                else
                    return false, "The goggles' battery doesn't need to be replaced for now.";
                end;
            elseif v66.name == "NVG_R" then
                return false, "There seems to be no place for batteries in these night vision goggles.";
            elseif v66.name == "RadioFine" then
                return false, "There seems to be no place for batteries in the radio.";
            elseif not (v66.name ~= "Radio18V") or v66.name == "SCRAMBLE" then
                return false, "The battery doesn't seem to fit.";
            end;
        elseif v65.name == "Battery18V" then
            if v66.name == "SCRAMBLE" then
                if (v66.battery or 0) < 100 then
                    v66.battery = 100;
                    l_setSlot_0(v60, v62, l_HttpService_0:JSONEncode(v66));
                    l_setSlot_0(v60, v61, "");
                    return true, "You replaced the gear's battery.", "Use1";
                else
                    return false, "The gear's battery doesn't need to be replaced for now.";
                end;
            elseif v66.name == "Radio18V" then
                if (v66.battery or 0) < 100 then
                    v66.battery = 100;
                    l_setSlot_0(v60, v62, l_HttpService_0:JSONEncode(v66));
                    l_setSlot_0(v60, v61, "");
                    return true, "You replaced the radio's battery.", "Use1";
                else
                    return false, "The radio's battery doesn't need to be replaced for now.";
                end;
            elseif not (v66.name ~= "Radio" and v66.name ~= "SNav" and v66.name ~= "NVG") or v66.name == "NVG_S" then
                return false, "The battery doesn't seem to fit.";
            elseif v66.name == "NVG_R" then
                return false, "There seems to be no place for batteries in these night vision goggles.";
            elseif v66.name == "RadioFine" then
                return false, "There seems to be no place for batteries in the radio.";
            end;
		else
			warn("XD")
            local v79 = l_ItemsInfo_0[v65.name];
            if v79.ammo and l_ItemsInfo_0[v66.name].weapon then
                local v80 = require(l_ReplicatedStorage_0.WeaponData[v66.name].Config);
                if not (v66.name ~= v79.ammo) or v80.ammo == v79.ammo then
                    local v81 = v66.reserve or 0;
                    if v81 < v80.maxreserve * v80.max then
                        local v82 = math.min(v80.maxreserve * v80.max, v81 + v79.amount);
                        local v83 = v82 - v81;
                        v66.reserve = v82;
                        l_setSlot_0(v60, v62, l_HttpService_0:JSONEncode(v66));
                        l_setSlot_0(v60, v61, "");
                        return true, "Added " .. v83 .. " round" .. (v83 == 1 and "" or "s") .. " for the " .. v66.name .. ".", "Use1";
                    end;
                end;
            end;
        end;
    end;
    return false;
end;
print("LOLO")
v0.dropItem = function(v84, v85, v86)
    local v87 = false;
    local v88 = false;
    local v89 = false;
    local v90 = false;
    local l_Items_0 = l_Map_0.currentMap.data.Items;
    if v86 then
        local v92 = l_getSlot_0(v84, v86);
        local v93 = v0.getSlotData(v92);
        if v93 and v93.items then
            local v94 = v93.items[v85];
            local v95 = false;
            if v94 ~= "" then
                v95 = l_HttpService_0:JSONDecode(v94);
            end;
            if v95 and v95.name then
                local l_HumanoidRootPart_0 = v84.Parent.HumanoidRootPart;
                local v97 = l_HumanoidRootPart_0.Position + l_HumanoidRootPart_0.CFrame.LookVector * 0.5 + Vector3.new(0, 1.5, 0);
                local v98 = v26(v97);
                local l_Safe_0 = l_Items_0.Safe;
                if workspace.Rooms:FindFirstChild("room914") then
                    local l_Input_0 = workspace.Rooms.room914.Input;
                    local v101 = l_Input_0.CFrame:PointToObjectSpace(v97) / l_Input_0.Size * 2;
                    local v102 = false;
                    if math.abs(v101.X) < 1 then
                        v102 = false;
                        if math.abs(v101.Y) < 1 then
                            v102 = math.abs(v101.Z) < 1;
                        end;
                    end;
                    if not v102 then
                        l_Input_0 = workspace.Rooms.room914.Output;
                        v101 = l_Input_0.CFrame:PointToObjectSpace(v97) / l_Input_0.Size * 2;
                        v102 = false;
                        if math.abs(v101.X) < 1 then
                            v102 = false;
                            if math.abs(v101.Y) < 1 then
                                v102 = math.abs(v101.Z) < 1;
                            end;
                        end;
                        v88 = not v102;
                    end;
                    if not v88 then
                        l_Safe_0 = l_Items_0[l_Players_0:GetPlayerFromCharacter(v84.Parent).UserId];
                        v87 = true;
                    end;
                end;
                if v88 or not v87 then
                    v88 = false;
                    if v98 and v98.Name == "intro" then
                        l_Safe_0 = l_Items_0[l_Players_0:GetPlayerFromCharacter(v84.Parent).UserId];
                    elseif v84:GetAttribute("Difficulty") == 2 then
                        l_Safe_0 = l_Items_0.Euclid;
                    elseif v84:GetAttribute("Difficulty") == 3 then
                        l_Safe_0 = l_Items_0.Keter;
                    end;
                end;
                v87 = false;
                local v103 = v0.makeItemObject(v95.name);
                v103.Position = v97;
                v103:SetAttribute("ItemData", v94);
                local l_ObjectValue_0 = Instance.new("ObjectValue");
                l_ObjectValue_0.Name = "Owner";
                l_ObjectValue_0.Value = v84;
                l_ObjectValue_0.Parent = v103;
                v103.Parent = l_Safe_0;
            end;
            v93.items[v85] = "";
            l_setSlot_0(v84, v86, l_HttpService_0:JSONEncode(v93));
            return;
        end;
    else
        local v105 = l_getSlot_0(v84, v85);
        local v106 = v0.getSlotData(v105);
        if v106 and v106.name then
            local l_HumanoidRootPart_1 = v84.Parent.HumanoidRootPart;
            local v108 = l_HumanoidRootPart_1.Position + l_HumanoidRootPart_1.CFrame.LookVector * 0.5 + Vector3.new(0, 1.5, 0);
            local v109 = v26(v108);
            local l_Safe_1 = l_Items_0.Safe;
            if workspace.Rooms:FindFirstChild("room914") then
                local l_Input_1 = workspace.Rooms.room914.Input;
                local v112 = l_Input_1.CFrame:PointToObjectSpace(v108) / l_Input_1.Size * 2;
                local v113 = false;
                if math.abs(v112.X) < 1 then
                    v113 = false;
                    if math.abs(v112.Y) < 1 then
                        v113 = math.abs(v112.Z) < 1;
                    end;
                end;
                if not v113 then
                    l_Input_1 = workspace.Rooms.room914.Output;
                    v112 = l_Input_1.CFrame:PointToObjectSpace(v108) / l_Input_1.Size * 2;
                    v113 = false;
                    if math.abs(v112.X) < 1 then
                        v113 = false;
                        if math.abs(v112.Y) < 1 then
                            v113 = math.abs(v112.Z) < 1;
                        end;
                    end;
                    v90 = not v113;
                end;
                if not v90 then
                    l_Safe_1 = l_Items_0[l_Players_0:GetPlayerFromCharacter(v84.Parent).UserId];
                    v89 = true;
                end;
            end;
            if v90 or not v89 then
                v90 = false;
                if v109 and v109.Name == "intro" then
                    l_Safe_1 = l_Items_0[l_Players_0:GetPlayerFromCharacter(v84.Parent).UserId];
                elseif v84:GetAttribute("Difficulty") == 2 then
                    l_Safe_1 = l_Items_0.Euclid;
                elseif v84:GetAttribute("Difficulty") == 3 then
                    l_Safe_1 = l_Items_0.Keter;
                end;
            end;
            v89 = false;
            local v114 = v0.makeItemObject(v106.name);
            v114.Position = v108;
            v114:SetAttribute("ItemData", v105);
            local l_ObjectValue_1 = Instance.new("ObjectValue");
            l_ObjectValue_1.Name = "Owner";
            l_ObjectValue_1.Value = v84;
            l_ObjectValue_1.Parent = v114;
            v114.Parent = l_Safe_1;
        end;
        v0.removeItem(v84, v85);
    end;
end;
v0.removeItem = function(v116, v117, v118)
    if v118 then
        local v119 = l_getSlot_0(v116, v118);
        local v120 = v0.getSlotData(v119);
        if v120 and v120.items then
            v120.items[v117] = "";
            l_setSlot_0(v116, v118, l_HttpService_0:JSONEncode(v120));
            return;
        end;
    else
        l_setSlot_0(v116, v117, "");
        v32(v116, v117, 0);
    end;
end;

v0.makeItemObject = function(v121)
    local l_Part_0 = Instance.new("Part");
    l_Part_0.Transparency = 1;
    l_Part_0.Size = Vector3.new(0.4000000059604645, 0.4000000059604645, 0.4000000059604645);
    l_Part_0.Material = Enum.Material.Fabric;
    l_Part_0.CastShadow = false;
    l_Part_0.Name = v121;
    local l_BodyVelocity_0 = Instance.new("BodyVelocity");
    l_BodyVelocity_0.Velocity = Vector3.new(0, 0, 0);
    l_BodyVelocity_0.MaxForce = Vector3.one;
    l_BodyVelocity_0.Parent = l_Part_0;
    task.delay(5, function()
        l_BodyVelocity_0:Destroy();
    end);
    return l_Part_0;
end;
print("LOLO")
v0.getSlotData = function(v124)
    local v125 = false;
    if v124 ~= "" then
        v125 = l_HttpService_0:JSONDecode(v124);
    end;
    return v125;
end;

return v0;
