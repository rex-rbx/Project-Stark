local v1 = {}
local _ = require
v1["script.lua"] = function()
	local v_u_2 = game
	local v3 = v_u_2
	local v_u_4 = v_u_2.GetService(v3, "Players")
	local v5 = v_u_2
	local v_u_6 = v_u_2.GetService(v5, "StarterGui")
	local v7 = v_u_2
	local v_u_8 = v_u_2.GetService(v7, "HttpService")
	local v9 = v_u_2
	local v_u_10 = v_u_2.GetService(v9, "ReplicatedStorage")
	local v_u_11 = v_u_4.LocalPlayer
	local v12 = false
	local v_u_13 = "rbxassetid://133984921094142"
	local v_u_14 = "FDG5V5AfFh"
	local v_u_15 = "https://discord.gg/FDG5V5AfFh"
	local v_u_16 = "https://Urbanstorm.uk"
	local v_u_17 = "ProjectStark_Key.txt"
	local v_u_18 = 0
	local v_u_19 = 3
	local function v_u_21(p_u_20)
		-- upvalues: (ref) v_u_17
		pcall(function()
			-- upvalues: (ref) v_u_17, (ref) p_u_20
			writefile(v_u_17, p_u_20)
		end)
	end
	local function v24()
		-- upvalues: (ref) v_u_17
		local v22, v23 = pcall(function()
			-- upvalues: (ref) v_u_17
			if isfile(v_u_17) then
				return readfile(v_u_17)
			else
				return nil
			end
		end)
		return v22 and v23 and v23 or nil
	end
	local function v25()
		-- upvalues: (ref) v_u_17
		pcall(function()
			-- upvalues: (ref) v_u_17
			if isfile(v_u_17) then
				delfile(v_u_17)
			end
		end)
	end
	local function v_u_29(p_u_26, p_u_27, p_u_28)
		-- upvalues: (ref) v_u_6, (ref) v_u_13
		pcall(function()
			-- upvalues: (ref) v_u_6, (ref) p_u_26, (ref) p_u_27, (ref) v_u_13, (ref) p_u_28
			v_u_6:SetCore("SendNotification", {
				["Title"] = p_u_26 or "Project Stark",
				["Text"] = p_u_27,
				["Icon"] = v_u_13,
				["Duration"] = p_u_28 or 5
			})
		end)
	end
	local function v_u_30()
		-- upvalues: (ref) v_u_16
		pcall(function()
			-- upvalues: (ref) v_u_16
			setclipboard(v_u_16)
		end)
	end
	local function v_u_31()
		-- upvalues: (ref) v_u_15
		pcall(function()
			-- upvalues: (ref) v_u_15
			setclipboard(v_u_15)
		end)
	end
	local function v_u_38(p_u_32)
		-- upvalues: (ref) v_u_8
		pcall(function()
			-- upvalues: (ref) v_u_8, (ref) p_u_32
			local v33 = syn and syn.request or request
			local v34 = {
				["Url"] = "http://127.0.0.1:6463/rpc?v=1",
				["Method"] = "POST",
				["Headers"] = {
					["Content-Type"] = "application/json",
					["Origin"] = "https://discord.com"
				}
			}
			local v35 = v_u_8
			local v36 = v35.JSONEncode
			local v37 = {
				["cmd"] = "INVITE_BROWSER",
				["args"] = {
					["code"] = p_u_32
				},
				["nonce"] = v_u_8:GenerateGUID(false)
			}
			v34.Body = v36(v35, v37)
			v33(v34)
		end)
	end
	local function v_u_44(p39)
		-- upvalues: (ref) v_u_4, (ref) v_u_31, (ref) v_u_38, (ref) v_u_14, (ref) v_u_15, (ref) v_u_10
		local v40 = v_u_4.LocalPlayer
		if v40 then
			v_u_31()
			v_u_38(v_u_14)
			task.wait(0.5)
			local v41 = "\226\156\152 " .. p39 .. "\nJoin the discord\n" .. v_u_15 .. "\n(Copied to clipboard)"
			local v42 = v_u_10:FindFirstChild("DefaultChatSystemChatEvents")
			local v43 = v42 and v42:FindFirstChild("SayMessageRequest")
			if v43 then
				v43:FireServer(v41, "All")
			end
			v40:Kick(v41)
		end
	end
	local function v46()
		-- upvalues: (ref) v_u_11
		local v45 = v_u_11:FindFirstChild("Project Stark Key Check")
		return v45 and (v45:IsA("BoolValue") and v45.Value == true) and true or false
	end
	local function v_u_51(p_u_47)
		-- upvalues: (ref) v_u_2
		local v49, v50 = pcall(function()
			-- upvalues: (ref) v_u_2, (ref) p_u_47
			local v48 = v_u_2
			return loadstring(v48:HttpGet(p_u_47))()
		end)
		if v49 and type(v50) == "table" then
			return v50
		else
			return nil, "failed_to_fetch"
		end
	end
	local function v_u_55(p52)
		if not p52 or type(p52) ~= "string" then
			return "", {
				["empty"] = true
			}
		end
		local v53 = (p52:match("^%s*(.-)%s*$") or ""):gsub("%s+", ""):gsub("[\194\160]", ""):gsub("[\226\128\139]", ""):gsub("[\226\128\140]", ""):gsub("[\226\128\141]", ""):gsub("[\239\187\191]", ""):gsub("[\"\']", ""):gsub("`", ""):gsub("[\n\r\t]", ""):gsub("^[Kk][Ee][Yy][:=%s]*", ""):gsub("^[Cc][Oo][Dd][Ee][:=%s]*", "")
		local v54 = p52 ~= v53 and true or false
		return v53, {
			["empty"] = #v53 == 0,
			["tooShort"] = #v53 > 0 and #v53 < 5,
			["tooLong"] = #v53 > 100,
			["madeChanges"] = v54
		}
	end
	local function v_u_77(p56, p57)
		local v58, v59, v60 = ipairs(p57)
		while true do
			local v61
			v60, v61 = v58(v59, v60)
			if v60 == nil then
				break
			end
			if v61 == p56 then
				return true, v61, "exact"
			end
		end
		local v62 = p56:lower()
		local v63, v64, v65 = ipairs(p57)
		while true do
			local v66
			v65, v66 = v63(v64, v65)
			if v65 == nil then
				break
			end
			if v66:lower() == v62 then
				return true, v66, "case_fixed"
			end
		end
		local v67, v68, v69 = ipairs(p57)
		while true do
			local v70
			v69, v70 = v67(v68, v69)
			if v69 == nil then
				break
			end
			if #v70 == #p56 then
				local v71 = 0
				for v72 = 1, #p56 do
					if p56:sub(v72, v72):lower() ~= v70:sub(v72, v72):lower() then
						v71 = v71 + 1
					end
				end
				if v71 <= 2 then
					return false, v70, "close_match"
				end
			end
		end
		local v73, v74, v75 = ipairs(p57)
		while true do
			local v76
			v75, v76 = v73(v74, v75)
			if v75 == nil then
				break
			end
			if v76:lower():find(v62, 1, true) or v62:find(v76:lower(), 1, true) then
				return false, v76, "partial_match"
			end
		end
		return false, nil, "no_match"
	end
	local function v_u_79()
		-- upvalues: (ref) v_u_11
		local v78 = v_u_11:FindFirstChild("Project Stark Key Check")
		if not v78 then
			v78 = Instance.new("BoolValue")
			v78.Name = "Project Stark Key Check"
			v78.Parent = v_u_11
		end
		v78.Value = true
	end
	local function v_u_83()
		-- upvalues: (ref) v_u_2, (ref) v_u_29, (ref) v_u_44
		local v_u_80 = "https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/" .. tostring(v_u_2.GameId) .. ".lua"
		local v81, v_u_82 = pcall(function()
			-- upvalues: (ref) v_u_2, (ref) v_u_80
			return v_u_2:HttpGet(v_u_80)
		end)
		if v81 and v_u_82 then
			pcall(function()
				-- upvalues: (ref) v_u_82
				loadstring(v_u_82)()
			end)
		else
			v_u_29("Error", "Script failed to load.", 5)
			task.delay(2, function()
				-- upvalues: (ref) v_u_44
				v_u_44("Script not found for this game.")
			end)
		end
	end
	local function v_u_86(p84)
		-- upvalues: (ref) v_u_18, (ref) v_u_19, (ref) v_u_30, (ref) v_u_29, (ref) v_u_31, (ref) v_u_38, (ref) v_u_14, (ref) v_u_44
		v_u_18 = v_u_18 + 1
		local v85 = v_u_19 - v_u_18
		v_u_30()
		if v85 > 0 then
			if p84 == "close_match" then
				v_u_29("Almost!", "Check for typos. " .. v85 .. " left. Link copied!", 6)
			elseif p84 == "partial_match" then
				v_u_29("Incomplete", "Copy full key. " .. v85 .. " left. Link copied!", 6)
			else
				v_u_29("Invalid Key", v85 .. " attempts left. Link copied!", 6)
			end
		else
			v_u_29("Out of Attempts", "You will be kicked.", 4)
			v_u_31()
			v_u_38(v_u_14)
			task.delay(3, function()
				-- upvalues: (ref) v_u_44
				v_u_44("Too many invalid attempts.")
			end)
		end
	end
	local function v_u_94(p87)
		-- upvalues: (ref) v_u_55, (ref) v_u_29, (ref) v_u_30, (ref) v_u_18, (ref) v_u_19, (ref) v_u_51, (ref) v_u_31, (ref) v_u_38, (ref) v_u_14, (ref) v_u_77, (ref) v_u_21, (ref) v_u_79, (ref) v_u_83, (ref) v_u_86
		local v88, v89 = v_u_55(p87)
		if v89.empty then
			v_u_29("No Key", "Enter a key first!", 4)
			return false
		end
		if v89.tooShort then
			v_u_30()
			v_u_29("Too Short", "Invalid format. Link copied!", 4)
			return false
		end
		if v89.tooLong then
			v_u_29("Too Long", "Check your input.", 4)
			return false
		end
		if v_u_19 <= v_u_18 then
			v_u_29("Locked", "Restart to try again.", 4)
			return false
		end
		v_u_29("Verifying", "Checking key...", 3)
		local v90, _ = v_u_51("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/vgYZApyrZC")
		if not v90 then
			v_u_31()
			v_u_38(v_u_14)
			v_u_29("Error", "Server unreachable. Discord copied!", 5)
			return false
		end
		local v91, v92, v93 = v_u_77(v88, v90)
		if not v91 then
			v_u_86(v93)
			return false
		end
		v_u_21(v92 or v88)
		v_u_79()
		v_u_29("\226\156\133 Verified", "Loading script...", 4)
		task.delay(1.5, function()
			-- upvalues: (ref) v_u_83
			v_u_83()
		end)
		return true
	end
	if v46() then
		v_u_29("\226\156\133 Verified", "Loading...", 3)
		v_u_83()
		return
	elseif v12 then
		v_u_29("Bypassed", "Loading...", 3)
		v_u_83()
	else
		local v95 = v24()
		local v96 = false
		if v95 and v95 ~= "" then
			local v97, _ = v_u_55(v95)
			if v97 == "" then
				v25()
			else
				local v98, _ = v_u_51("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/vgYZApyrZC")
				if v98 then
					local v99, v100, v101 = v_u_77(v97, v98)
					if v99 then
						if v101 == "case_fixed" and v100 then
							v_u_21(v100)
						end
						v_u_29("\226\156\133 Welcome Back", "Loading...", 4)
						v_u_79()
						task.delay(1, function()
							-- upvalues: (ref) v_u_83
							v_u_83()
						end)
						return
					end
					v25()
					v96 = true
				end
			end
		end
		pcall(function()
			-- upvalues: (ref) v_u_2
			local v102 = v_u_2:GetService("CoreGui"):FindFirstChild("Project Stark Key System")
			if v102 then
				v102:Destroy()
			end
		end)
		if v96 then
			v_u_30()
			v_u_29("\226\154\160\239\184\143 Key Expired", "Your key expired. Keys reset every 4 hours. Link copied!", 15)
		end
		local v103 = v_u_2
		local v104 = loadstring(v_u_2.HttpGet(v103, "https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/UiLib.lua"))():Window("Project Stark\nKey System", Color3.fromRGB(120, 81, 169))
		local v105 = v104:Tab("Key")
		local v_u_106 = ""
		v105:Textbox("Enter your key", false, function() end)
		task.delay(0.1, function()
			-- upvalues: (ref) v_u_2, (ref) v_u_106
			local v107, v108, v109 = ipairs(v_u_2:GetService("CoreGui"):GetDescendants())
			while true do
				local v_u_110
				v109, v_u_110 = v107(v108, v109)
				if v109 == nil then
					break
				end
				if v_u_110:IsA("TextBox") and v_u_110.PlaceholderText == "Enter your key" then
					v_u_110:GetPropertyChangedSignal("Text"):Connect(function()
						-- upvalues: (ref) v_u_106, (ref) v_u_110
						v_u_106 = v_u_110.Text
					end)
					break
				end
			end
		end)
		v105:Button("Execute", function()
			-- upvalues: (ref) v_u_94, (ref) v_u_106
			pcall(function()
				-- upvalues: (ref) v_u_94, (ref) v_u_106
				v_u_94(v_u_106)
			end)
		end)
		v105:Button("Get key (Copy link)", function()
			-- upvalues: (ref) v_u_30, (ref) v_u_29, (ref) v_u_16
			v_u_30()
			v_u_29("Link Copied", v_u_16, 4)
		end)
		local v111 = v104:Tab("Help")
		v111:Button("Why isn\'t my key working?", function()
			-- upvalues: (ref) v_u_29
			v_u_29("Key Help", "Keys reset every 4 hours. Get a fresh one!", 6)
		end)
		v111:Button("How often do keys change?", function()
			-- upvalues: (ref) v_u_29
			v_u_29("Key Info", "Every 4 hours globally.", 5)
		end)
		v111:Button("My key just expired", function()
			-- upvalues: (ref) v_u_30, (ref) v_u_29
			v_u_30()
			v_u_29("Link Copied", "Get a new key!", 4)
		end)
		v111:Button("Copy key link", function()
			-- upvalues: (ref) v_u_30, (ref) v_u_29, (ref) v_u_16
			v_u_30()
			v_u_29("Link Copied", v_u_16, 4)
		end)
		v111:Button("Join Discord for help", function()
			-- upvalues: (ref) v_u_38, (ref) v_u_14, (ref) v_u_31, (ref) v_u_29
			v_u_38(v_u_14)
			v_u_31()
			v_u_29("Discord", "Invite copied!", 4)
		end)
		local v112 = v104:Tab("Credits")
		v112:Button("Made by Urbanstorm", function()
			-- upvalues: (ref) v_u_29
			pcall(function()
				setclipboard("Urbanstorm")
			end)
			v_u_29("Copied", "Urbanstorm", 3)
		end)
		v112:Button(v_u_15 .. " - Click to copy", function()
			-- upvalues: (ref) v_u_38, (ref) v_u_14, (ref) v_u_31, (ref) v_u_29
			v_u_38(v_u_14)
			v_u_31()
			v_u_29("Copied", "Discord link copied!", 3)
		end)
		v_u_11.Chatted:Connect(function(p113)
			-- upvalues: (ref) v_u_10
			if p113:lower() == "!keycheck" then
				local v114 = v_u_10:FindFirstChild("DefaultChatSystemChatEvents")
				local v115 = v114 and v114:FindFirstChild("SayMessageRequest")
				if v115 then
					v115:FireServer("Project Stark | Free Script Hub | Look it up!", "All")
				end
			end
		end)
		print("Project Stark | Free Script Hub")
		v_u_31()
	end
end
return v1["script.lua"](...)
