local v1 = {}
local _ = require
v1["script.lua"] = function()
	local v_u_2 = game:GetService("Players")
	local v_u_3 = game:GetService("TweenService")
	local v_u_4 = game:GetService("UserInputService")
	local v_u_5 = v_u_2.LocalPlayer
	local v_u_6 = workspace.CurrentCamera
	local v_u_7 = false
	local v_u_8 = nil
	local v_u_9 = {}
	local v_u_10 = true
	local v_u_11 = false
	local v_u_12 = nil
	local v_u_13 = nil
	local v_u_14 = nil
	local v_u_15 = nil
	local v_u_16 = {
		["TextColor"] = Color3.new(1, 1, 1),
		["TextColorHighlight"] = Color3.fromRGB(255, 214, 81),
		["TextColorJoin"] = Color3.fromRGB(100, 255, 100),
		["TextColorLeave"] = Color3.fromRGB(255, 150, 100),
		["TextColorError"] = Color3.fromRGB(255, 100, 100),
		["Font"] = Enum.Font.SourceSansSemibold,
		["TextSize"] = 18,
		["TextSizeSmall"] = 14,
		["RowHeight"] = 20,
		["NotificationHeight"] = 16,
		["BaseHeight"] = 40
	}
	local function v_u_26()
		-- upvalues: (ref) v_u_12, (ref) v_u_15, (ref) v_u_16, (ref) v_u_3
		if v_u_12 and v_u_15 then
			local v17 = v_u_15
			local v18, v19, v20 = pairs(v17:GetChildren())
			local v21 = 0
			while true do
				local v22
				v20, v22 = v18(v19, v20)
				if v20 == nil then
					break
				end
				if v22:IsA("TextLabel") then
					v21 = v21 + 1
				end
			end
			local v23 = math.max(1, math.min(v21, 3))
			local v24 = v_u_16.BaseHeight + (v23 - 1) * v_u_16.NotificationHeight
			v_u_3:Create(v_u_12, TweenInfo.new(0.15), {
				["Size"] = UDim2.new(1, 0, 0, v24)
			}):Play()
			local v25 = v23 * v_u_16.NotificationHeight
			v_u_3:Create(v_u_15, TweenInfo.new(0.15), {
				["Size"] = UDim2.new(1, -10, 0, v25)
			}):Play()
		end
	end
	local function v_u_27()
		-- upvalues: (ref) v_u_5
		return v_u_5:WaitForChild("PlayerGui"):WaitForChild("LeaderboardGui", 10)
	end
	local function v_u_40()
		-- upvalues: (ref) v_u_11, (ref) v_u_12, (ref) v_u_10, (ref) v_u_3, (ref) v_u_7
		if not v_u_11 and v_u_12 then
			v_u_11 = true
			local v_u_28 = v_u_12:FindFirstChild("Background")
			if v_u_10 then
				v_u_3:Create(v_u_12, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
					["Position"] = UDim2.new(1.5, 0, 1, 0)
				}):Play()
				if v_u_28 then
					v_u_3:Create(v_u_28, TweenInfo.new(0.2), {
						["ImageTransparency"] = 1
					}):Play()
				end
				local v29 = v_u_12
				local v30, v31, v32 = pairs(v29:GetDescendants())
				while true do
					local v33
					v32, v33 = v30(v31, v32)
					if v32 == nil then
						break
					end
					if v33:IsA("TextLabel") or v33:IsA("TextButton") then
						v_u_3:Create(v33, TweenInfo.new(0.15), {
							["TextTransparency"] = 1
						}):Play()
					elseif v33:IsA("Frame") and v33.Name == "Separator" then
						v_u_3:Create(v33, TweenInfo.new(0.15), {
							["BackgroundTransparency"] = 1
						}):Play()
					end
				end
				task.delay(0.3, function()
					-- upvalues: (ref) v_u_10, (ref) v_u_11
					v_u_10 = false
					v_u_11 = false
				end)
			else
				v_u_12.Position = UDim2.new(1.5, 0, 1, 0)
				v_u_3:Create(v_u_12, TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
					["Position"] = UDim2.new(0, 0, 1, 0)
				}):Play()
				task.delay(0.1, function()
					-- upvalues: (ref) v_u_28, (ref) v_u_3, (ref) v_u_12, (ref) v_u_7
					if v_u_28 then
						v_u_3:Create(v_u_28, TweenInfo.new(0.3), {
							["ImageTransparency"] = 0.8
						}):Play()
					end
					local v34 = v_u_12
					local v35, v36, v37 = pairs(v34:GetDescendants())
					while true do
						local v38
						v37, v38 = v35(v36, v37)
						if v37 == nil then
							break
						end
						if v38:IsA("TextLabel") then
							local v39 = (v38.Name ~= "StatusLabel" or v_u_7) and 0 or 0.4
							v_u_3:Create(v38, TweenInfo.new(0.25), {
								["TextTransparency"] = v39
							}):Play()
						elseif v38:IsA("TextButton") then
							v_u_3:Create(v38, TweenInfo.new(0.25), {
								["TextTransparency"] = 0.3
							}):Play()
						elseif v38:IsA("Frame") and v38.Name == "Separator" then
							v_u_3:Create(v38, TweenInfo.new(0.25), {
								["BackgroundTransparency"] = 0.7
							}):Play()
						end
					end
				end)
				v_u_10 = true
				task.delay(0.4, function()
					-- upvalues: (ref) v_u_11
					v_u_11 = false
				end)
			end
		end
	end
	local function v_u_54(p41, p42)
		-- upvalues: (ref) v_u_15, (ref) v_u_16, (ref) v_u_26, (ref) v_u_3
		if v_u_15 then
			local v43 = v_u_16.TextColor
			if p42 == "error" then
				v43 = v_u_16.TextColorError
			elseif p42 == "join" then
				v43 = v_u_16.TextColorJoin
			elseif p42 == "leave" then
				v43 = v_u_16.TextColorLeave
			elseif p42 == "spectate" then
				v43 = v_u_16.TextColorHighlight
			end
			local v44 = v_u_15
			local v45, v46, v47 = pairs(v44:GetChildren())
			local v48 = {}
			while true do
				local v49
				v47, v49 = v45(v46, v47)
				if v47 == nil then
					break
				end
				if v49:IsA("TextLabel") then
					table.insert(v48, v49)
				end
			end
			table.sort(v48, function(p50, p51)
				return p50.LayoutOrder < p51.LayoutOrder
			end)
			while #v48 >= 3 do
				v48[1]:Destroy()
				table.remove(v48, 1)
			end
			local v_u_52 = Instance.new("TextLabel")
			v_u_52.Name = "Notification"
			v_u_52.Size = UDim2.new(1, 0, 0, v_u_16.NotificationHeight)
			v_u_52.BackgroundTransparency = 1
			v_u_52.Text = p41
			v_u_52.TextColor3 = v43
			v_u_52.Font = v_u_16.Font
			v_u_52.TextSize = 12
			v_u_52.TextXAlignment = Enum.TextXAlignment.Left
			v_u_52.TextTransparency = 0
			v_u_52.LayoutOrder = tick()
			v_u_52.Parent = v_u_15
			v_u_26()
			task.delay(4, function()
				-- upvalues: (ref) v_u_52, (ref) v_u_3, (ref) v_u_26
				if v_u_52 and v_u_52.Parent then
					local v53 = v_u_3:Create(v_u_52, TweenInfo.new(0.5), {
						["TextTransparency"] = 1
					})
					v53:Play()
					v53.Completed:Connect(function()
						-- upvalues: (ref) v_u_52, (ref) v_u_26
						if v_u_52 and v_u_52.Parent then
							v_u_52:Destroy()
							v_u_26()
						end
					end)
				end
			end)
		end
	end
	local function v_u_55()
		-- upvalues: (ref) v_u_12, (ref) v_u_7, (ref) v_u_8, (ref) v_u_13, (ref) v_u_16, (ref) v_u_14
		if v_u_12 then
			if v_u_7 and v_u_8 then
				v_u_13.Text = "Spectating: " .. v_u_8.Name
				v_u_13.TextColor3 = v_u_16.TextColorHighlight
				v_u_13.TextTransparency = 0
				v_u_14.Text = "[Stop]"
				v_u_14.TextColor3 = v_u_16.TextColorError
			else
				v_u_13.Text = "Click a name to spectate"
				v_u_13.TextColor3 = v_u_16.TextColor
				v_u_13.TextTransparency = 0.4
				v_u_14.Text = "[Reset]"
				v_u_14.TextColor3 = v_u_16.TextColor
			end
		end
	end
	local function v_u_66(p56)
		-- upvalues: (ref) v_u_2
		local v57 = p56:match("^%s*(.-)%s*$")
		local v58 = v_u_2
		local v59, v60, v61 = pairs(v58:GetPlayers())
		while true do
			local v62
			v61, v62 = v59(v60, v61)
			if v61 == nil then
				break
			end
			local v63 = v62:GetAttribute("FirstName") or ""
			local v64 = v62:GetAttribute("LastName") or ""
			local v65
			if v64 and v64 ~= "" then
				v65 = v63 .. " " .. v64
			else
				v65 = v63
			end
			if v57:find(v65, 1, true) or v57:find(v63, 1, true) then
				return v62
			end
			if v57:match(v62.Name:sub(1, 2) .. ".*" .. v62.Name:sub(3)) then
				return v62
			end
		end
		return nil
	end
	local function v_u_72(p67)
		-- upvalues: (ref) v_u_54, (ref) v_u_5, (ref) v_u_6, (ref) v_u_7, (ref) v_u_8, (ref) v_u_55
		if not p67 then
			v_u_54("Player not found", "error")
			return false
		end
		if p67 == v_u_5 then
			v_u_54("Cannot spectate yourself", "error")
			return false
		end
		local v68 = p67.Character
		if not v68 then
			v_u_54("Player has no character", "error")
			return false
		end
		local v69 = v68:FindFirstChildOfClass("Humanoid")
		if not v69 then
			v_u_54("Player has no humanoid", "error")
			return false
		end
		v_u_6.CameraSubject = v69
		v_u_7 = true
		v_u_8 = p67
		local v70 = p67:GetAttribute("FirstName") or p67.Name
		local v71 = p67:GetAttribute("LastName") or ""
		if v71 ~= "" then
			v70 = v70 .. " " .. v71
		end
		v_u_55()
		v_u_54("Now spectating " .. v70 .. " (" .. p67.Name .. ")", "spectate")
		return true
	end
	local function v_u_78()
		-- upvalues: (ref) v_u_5, (ref) v_u_6, (ref) v_u_7, (ref) v_u_8, (ref) v_u_55, (ref) v_u_54
		local v73 = v_u_5.Character
		local v74 = v73 and v73:FindFirstChildOfClass("Humanoid")
		if v74 then
			v_u_6.CameraSubject = v74
		end
		if v_u_7 and v_u_8 then
			local v75 = v_u_8:GetAttribute("FirstName") or v_u_8.Name
			local v76 = v_u_8:GetAttribute("LastName") or ""
			if v76 ~= "" then
				v75 = v75 .. " " .. v76
			end
			local v77 = v_u_8.Name
			v_u_7 = false
			v_u_8 = nil
			v_u_55()
			v_u_54("Stopped spectating " .. v75 .. " (" .. v77 .. ")", "spectate")
		else
			v_u_54("View reset", "spectate")
		end
	end
	local function v_u_79()
		-- upvalues: (ref) v_u_7, (ref) v_u_78
		if v_u_7 then
			v_u_78()
		end
	end
	local function v_u_86(p80)
		-- upvalues: (ref) v_u_12, (ref) v_u_16, (ref) v_u_13, (ref) v_u_14, (ref) v_u_78, (ref) v_u_15
		local v81 = p80:FindFirstChild("MainFrame")
		if v81 then
			v_u_12 = Instance.new("Frame")
			v_u_12.Name = "SpectateSection"
			v_u_12.Size = UDim2.new(1, 0, 0, v_u_16.BaseHeight)
			v_u_12.Position = UDim2.new(0, 0, 1, 0)
			v_u_12.BackgroundTransparency = 1
			v_u_12.ClipsDescendants = true
			v_u_12.Parent = v81
			local v82 = Instance.new("ImageLabel")
			v82.Name = "Background"
			v82.Size = UDim2.new(1, 0, 1, 0)
			v82.Position = UDim2.new(0, 0, 0, 0)
			v82.Image = "rbxassetid://1327087642"
			v82.ImageColor3 = Color3.new(1, 1, 1)
			v82.ImageTransparency = 0.8
			v82.BackgroundTransparency = 1
			v82.BorderSizePixel = 0
			v82.ZIndex = 0
			v82.Parent = v_u_12
			local v83 = Instance.new("Frame")
			v83.Name = "Separator"
			v83.Size = UDim2.new(1, -10, 0, 1)
			v83.Position = UDim2.new(0, 5, 0, 0)
			v83.BackgroundColor3 = v_u_16.TextColor
			v83.BackgroundTransparency = 0.7
			v83.BorderSizePixel = 0
			v83.Parent = v_u_12
			local v84 = Instance.new("Frame")
			v84.Name = "StatusRow"
			v84.Size = UDim2.new(1, -10, 0, v_u_16.RowHeight)
			v84.Position = UDim2.new(0, 5, 0, 4)
			v84.BackgroundTransparency = 1
			v84.Parent = v_u_12
			v_u_13 = Instance.new("TextLabel")
			v_u_13.Name = "StatusLabel"
			v_u_13.Size = UDim2.new(1, -45, 1, 0)
			v_u_13.Position = UDim2.new(0, 0, 0, 0)
			v_u_13.BackgroundTransparency = 1
			v_u_13.Text = "Click a name to spectate"
			v_u_13.TextColor3 = v_u_16.TextColor
			v_u_13.TextTransparency = 0.4
			v_u_13.Font = v_u_16.Font
			v_u_13.TextSize = v_u_16.TextSizeSmall
			v_u_13.TextXAlignment = Enum.TextXAlignment.Left
			v_u_13.TextTruncate = Enum.TextTruncate.AtEnd
			v_u_13.Parent = v84
			v_u_14 = Instance.new("TextButton")
			v_u_14.Name = "ActionButton"
			v_u_14.Size = UDim2.new(0, 40, 1, 0)
			v_u_14.Position = UDim2.new(1, -40, 0, 0)
			v_u_14.BackgroundTransparency = 1
			v_u_14.Text = "[Reset]"
			v_u_14.TextColor3 = v_u_16.TextColor
			v_u_14.Font = v_u_16.Font
			v_u_14.TextSize = 12
			v_u_14.TextXAlignment = Enum.TextXAlignment.Right
			v_u_14.TextTransparency = 0.3
			v_u_14.Parent = v84
			v_u_14.MouseEnter:Connect(function()
				-- upvalues: (ref) v_u_14
				v_u_14.TextTransparency = 0
			end)
			v_u_14.MouseLeave:Connect(function()
				-- upvalues: (ref) v_u_14
				v_u_14.TextTransparency = 0.3
			end)
			v_u_14.MouseButton1Click:Connect(function()
				-- upvalues: (ref) v_u_78
				v_u_78()
			end)
			v_u_15 = Instance.new("Frame")
			v_u_15.Name = "NotificationContainer"
			v_u_15.Size = UDim2.new(1, -10, 0, v_u_16.NotificationHeight)
			v_u_15.Position = UDim2.new(0, 5, 0, 24)
			v_u_15.BackgroundTransparency = 1
			v_u_15.ClipsDescendants = true
			v_u_15.Parent = v_u_12
			local v85 = Instance.new("UIListLayout")
			v85.SortOrder = Enum.SortOrder.LayoutOrder
			v85.Padding = UDim.new(0, 0)
			v85.Parent = v_u_15
		end
	end
	local function v_u_92(p_u_87)
		-- upvalues: (ref) v_u_7, (ref) v_u_8, (ref) v_u_79, (ref) v_u_66, (ref) v_u_72, (ref) v_u_54, (ref) v_u_9
		if p_u_87:IsA("TextLabel") then
			if not p_u_87:FindFirstChild("SpectateButton") then
				local v88 = Instance.new("TextButton")
				v88.Name = "SpectateButton"
				v88.Size = UDim2.new(1, 0, 1, 0)
				v88.Position = UDim2.new(0, 0, 0, 0)
				v88.BackgroundTransparency = 1
				v88.Text = ""
				v88.ZIndex = p_u_87.ZIndex + 1
				v88.Parent = p_u_87
				local v91 = v88.MouseButton1Click:Connect(function()
					-- upvalues: (ref) p_u_87, (ref) v_u_7, (ref) v_u_8, (ref) v_u_79, (ref) v_u_66, (ref) v_u_72, (ref) v_u_54
					local v89 = p_u_87.Text
					if v_u_7 and v_u_8 and v89:find(v_u_8.Name:sub(1, 2)) then
						v_u_79()
					else
						local v90 = v_u_66(v89)
						if v90 then
							v_u_72(v90)
						else
							v_u_54("Could not find player", "error")
						end
					end
				end)
				table.insert(v_u_9, v91)
			end
		else
			return
		end
	end
	local function v103()
		-- upvalues: (ref) v_u_2, (ref) v_u_54, (ref) v_u_9, (ref) v_u_8, (ref) v_u_79
		local v97 = v_u_2.PlayerAdded:Connect(function(p93)
			-- upvalues: (ref) v_u_54
			task.wait(0.5)
			local v94 = p93:GetAttribute("FirstName")
			local v95 = p93:GetAttribute("LastName") or ""
			local v96 = v94 or p93.Name
			if v95 ~= "" then
				v96 = v94 .. " " .. v95
			end
			v_u_54("+ " .. v96 .. " (" .. p93.Name .. ")", "join")
		end)
		table.insert(v_u_9, v97)
		local v102 = v_u_2.PlayerRemoving:Connect(function(p98)
			-- upvalues: (ref) v_u_54, (ref) v_u_8, (ref) v_u_79
			local v99 = p98:GetAttribute("FirstName")
			local v100 = p98:GetAttribute("LastName") or ""
			local v101 = v99 or p98.Name
			if v100 ~= "" then
				v101 = v99 .. " " .. v100
			end
			v_u_54("- " .. v101 .. " (" .. p98.Name .. ")", "leave")
			if v_u_8 == p98 then
				v_u_54("Target left", "error")
				v_u_79()
			end
		end)
		table.insert(v_u_9, v102)
	end
	local function v106()
		-- upvalues: (ref) v_u_4, (ref) v_u_7, (ref) v_u_79, (ref) v_u_40
		v_u_4.InputBegan:Connect(function(p104, p105)
			-- upvalues: (ref) v_u_7, (ref) v_u_79, (ref) v_u_40
			if not p105 then
				if p104.KeyCode ~= Enum.KeyCode.Backspace or not v_u_7 then
					if p104.KeyCode == Enum.KeyCode.Delete then
						v_u_40()
					end
				else
					v_u_79()
				end
			end
		end)
	end
	if (function()
		-- upvalues: (ref) v_u_27, (ref) v_u_86, (ref) v_u_92, (ref) v_u_9, (ref) v_u_54
		local v107 = v_u_27()
		if not v107 then
			return false
		end
		local v108 = v107:WaitForChild("MainFrame", 5)
		if not v108 then
			return false
		end
		local v109 = v108:WaitForChild("ScrollingFrame", 5)
		if not v109 then
			return false
		end
		v_u_86(v107)
		local v110, v111, v112 = pairs(v109:GetChildren())
		while true do
			local v113
			v112, v113 = v110(v111, v112)
			if v112 == nil then
				break
			end
			if v113.Name == "PlayerLabel" then
				v_u_92(v113)
			end
		end
		local v115 = v109.ChildAdded:Connect(function(p114)
			-- upvalues: (ref) v_u_92
			if p114.Name == "PlayerLabel" then
				task.wait(0.1)
				v_u_92(p114)
			end
		end)
		table.insert(v_u_9, v115)
		v_u_54("Spectate Initialized (By Project Stark)", "spectate")
		return true
	end)() then
		v103()
		v106()
	end
end
return v1["script.lua"](...)
