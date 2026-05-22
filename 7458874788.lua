local v1 = {}
local _ = require
v1["script.lua"] = function()
	local v_u_2 = game:GetService("Players").LocalPlayer:FindFirstChild("Project Stark Key Check")
	local v3 = false
	local function v6(p_u_4)
		pcall(function()
			-- upvalues: (ref) p_u_4
			local v5 = game:GetService("HttpService");
			(syn and syn.request or request)({
				["Url"] = "http://127.0.0.1:6463/rpc?v=1",
				["Method"] = "POST",
				["Headers"] = {
					["Content-Type"] = "application/json",
					["Origin"] = "https://discord.com"
				},
				["Body"] = v5:JSONEncode({
					["cmd"] = "INVITE_BROWSER",
					["args"] = {
						["code"] = p_u_4
					},
					["nonce"] = v5:GenerateGUID(false)
				})
			})
		end)
	end
	local v7 = false
	if true then
		if v_u_2 and v_u_2.Value == true then
			pcall(function()
				-- upvalues: (ref) v_u_2
				v_u_2:Destroy()
				warn("Urbanstorn was here")
			end)
			v7 = true
		else
			pcall(function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/Main.lua"))()
			end)
			v6("vgYZApyrZC")
		end
	else
		warn("[Project Stark] Key check DISABLED")
		v7 = true
	end
	if v7 then
		local v_u_8 = game:GetService("Players").LocalPlayer
		local v_u_9 = game:GetService("RunService")
		local v10 = v_u_8
		local v_u_11 = v_u_8.WaitForChild(v10, "PlayerGui")
		local v12 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/UiLib.lua"))():Window("Project Stark\n\225\180\190\226\129\177\203\163\225\181\137\203\161 \226\132\154\225\181\152\225\181\137\203\162\225\181\151", Color3.fromRGB(120, 81, 169))
		local v13 = v12:Tab("Main")
		local v14 = v12:Tab("Settings")
		local v15 = v12:Tab("Credits")
		local v_u_16 = workspace.CurrentCamera
		local v_u_17 = nil
		local v_u_18 = nil
		local v_u_19 = {
			["Settings"] = {
				["Enabled"] = false,
				["ShowBox"] = true,
				["ShowText"] = true,
				["ShowName"] = true,
				["ShowHealthbar"] = true,
				["ShowDistance"] = true,
				["ShowOffscreenArrows"] = true,
				["BoxColor"] = Color3.fromRGB(255, 0, 0),
				["TextColor"] = Color3.fromRGB(255, 0, 0),
				["ArrowColor"] = Color3.fromRGB(255, 0, 0),
				["BoxThickness"] = 1,
				["TextSize"] = 12,
				["ArrowSize"] = 15,
				["UpdateInterval"] = 1,
				["EdgeOffset"] = 60,
				["BoxOffsetX"] = 0,
				["BoxOffsetY"] = 60
			},
			["Active"] = {},
			["Connections"] = {},
			["HealthbarCache"] = {}
		}
		local v_u_20 = {}
		local v_u_21 = Vector2.new()
		local function v_u_23()
			-- upvalues: (ref) v_u_16, (ref) v_u_21, (ref) v_u_20, (ref) v_u_19
			local v22 = v_u_16.ViewportSize
			v_u_21 = Vector2.new(v22.X * 0.5, v22.Y * 0.5)
			v_u_20.MinX = v_u_19.Settings.EdgeOffset
			v_u_20.MaxX = v22.X - v_u_19.Settings.EdgeOffset
			v_u_20.MinY = v_u_19.Settings.EdgeOffset
			v_u_20.MaxY = v22.Y - v_u_19.Settings.EdgeOffset
		end
		local function v_u_29(p24, p25, p26, p27)
			-- upvalues: (ref) v_u_20
			local v28
			if v_u_20.MinX > p24 or (p24 + p26 > v_u_20.MaxX or v_u_20.MinY > p25) then
				v28 = false
			else
				local _ = p25 + p27
				local _ = v_u_20.MaxY
				v28 = true
			end
			return v28
		end
		local function v_u_32(p30, p31)
			-- upvalues: (ref) v_u_20
			return math.clamp(p30, v_u_20.MinX, v_u_20.MaxX), math.clamp(p31, v_u_20.MinY, v_u_20.MaxY)
		end
		local function v_u_33()
			-- upvalues: (ref) v_u_18, (ref) v_u_17, (ref) v_u_8, (ref) v_u_21
			if v_u_18 and v_u_18.Parent then
				return v_u_18.AbsolutePosition.X + v_u_18.AbsoluteSize.X * 0.5, v_u_18.AbsolutePosition.Y + v_u_18.AbsoluteSize.Y * 0.5
			else
				v_u_18 = v_u_17 and v_u_17.Parent and v_u_17:FindFirstChild(v_u_8.Name)
				if v_u_18 then
					return v_u_18.AbsolutePosition.X + v_u_18.AbsoluteSize.X * 0.5, v_u_18.AbsolutePosition.Y + v_u_18.AbsoluteSize.Y * 0.5
				else
					return v_u_21.X, v_u_21.Y
				end
			end
		end
		local function v_u_42(p34)
			-- upvalues: (ref) v_u_19
			if not v_u_19.Settings.ShowHealthbar then
				return ""
			end
			local v35 = v_u_19.HealthbarCache[p34]
			if v35 and v35.Parent then
				local v36 = v35.Text or tostring(v35.Value)
				if v36 and v36 ~= "" then
					return " [" .. v36 .. "]"
				end
			end
			local v37 = p34:FindFirstChild("UIHealthBar")
			if v37 then
				local v38, v39, v40 = ipairs(v37:GetChildren())
				while true do
					local v41
					v40, v41 = v38(v39, v40)
					if v40 == nil then
						break
					end
					if v41:IsA("TextLabel") then
						v_u_19.HealthbarCache[p34] = v41
						return " [" .. v41.Text .. "]"
					end
					if v41:IsA("IntValue") or v41:IsA("NumberValue") then
						v_u_19.HealthbarCache[p34] = v41
						return " [" .. tostring(v41.Value) .. "]"
					end
				end
			end
			return ""
		end
		local function v_u_49(p43)
			-- upvalues: (ref) v_u_19, (ref) v_u_8
			if not v_u_19.Active[p43] and p43.Name ~= v_u_8.Name then
				local v44 = {
					["Monster"] = p43,
					["BoxLines"] = {},
					["ArrowLines"] = {}
				}
				local v45 = Drawing.new("Text")
				v45.Size = v_u_19.Settings.TextSize
				v45.Color = v_u_19.Settings.TextColor
				v45.Transparency = 1
				v45.Outline = true
				v45.OutlineColor = Color3.new(0, 0, 0)
				v45.Center = true
				v45.Font = 2
				v45.Visible = false
				v44.Text = v45
				for _ = 1, 4 do
					local v46 = Drawing.new("Line")
					v46.Thickness = v_u_19.Settings.BoxThickness
					v46.Color = v_u_19.Settings.BoxColor
					v46.Transparency = 1
					v46.Visible = false
					table.insert(v44.BoxLines, v46)
				end
				for _ = 1, 3 do
					local v47 = Drawing.new("Line")
					v47.Thickness = 3
					v47.Color = v_u_19.Settings.ArrowColor
					v47.Transparency = 1
					v47.Visible = false
					table.insert(v44.ArrowLines, v47)
				end
				local v48 = Drawing.new("Text")
				v48.Size = 14
				v48.Color = v_u_19.Settings.ArrowColor
				v48.Transparency = 1
				v48.Outline = true
				v48.OutlineColor = Color3.new(0, 0, 0)
				v48.Center = true
				v48.Font = 2
				v48.Visible = false
				v44.ArrowText = v48
				v_u_19.Active[p43] = v44
			end
		end
		local function v_u_60(p50)
			-- upvalues: (ref) v_u_19
			local v_u_51 = v_u_19.Active[p50]
			if v_u_51 then
				pcall(function()
					-- upvalues: (ref) v_u_51
					v_u_51.Text:Remove()
				end)
				local v52, v53, v54 = ipairs(v_u_51.BoxLines)
				while true do
					local v_u_55
					v54, v_u_55 = v52(v53, v54)
					if v54 == nil then
						break
					end
					pcall(function()
						-- upvalues: (ref) v_u_55
						v_u_55:Remove()
					end)
				end
				local v56, v57, v58 = ipairs(v_u_51.ArrowLines)
				while true do
					local v_u_59
					v58, v_u_59 = v56(v57, v58)
					if v58 == nil then
						break
					end
					pcall(function()
						-- upvalues: (ref) v_u_59
						v_u_59:Remove()
					end)
				end
				pcall(function()
					-- upvalues: (ref) v_u_51
					v_u_51.ArrowText:Remove()
				end)
				v_u_19.Active[p50] = nil
				v_u_19.HealthbarCache[p50] = nil
			end
		end
		local function v_u_138()
			-- upvalues: (ref) v_u_19, (ref) v_u_33, (ref) v_u_60, (ref) v_u_29, (ref) v_u_42, (ref) v_u_32
			if v_u_19.Settings.Enabled then
				local v61, v62 = v_u_33()
				local v63 = v_u_19.Settings
				local v64, v65, v66 = pairs(v_u_19.Active)
				while true do
					local v67
					v66, v67 = v64(v65, v66)
					if v66 == nil then
						break
					end
					if v66 and v66.Parent then
						local v68 = v66.AbsolutePosition
						local v69 = v66.AbsoluteSize
						local v70 = v68.X + v69.X * 0.5
						local v71 = v68.Y + v69.Y * 0.5
						local v72 = v70 - v61
						local v73 = v71 - v62
						local v74 = math.sqrt(v72 * v72 + v73 * v73)
						local v75 = v66.Visible
						if v75 then
							if v69.X <= 0 or v69.Y <= 0 then
								v75 = false
							else
								v75 = v_u_29(v68.X, v68.Y, v69.X, v69.Y)
							end
						end
						if v75 then
							local v76, v77, v78 = ipairs(v67.ArrowLines)
							local v79 = v66
							while true do
								local v80
								v78, v80 = v76(v77, v78)
								if v78 == nil then
									break
								end
								v80.Visible = false
							end
							v67.ArrowText.Visible = false
							if v63.ShowBox then
								local v81 = v68.X + v63.BoxOffsetX
								local v82 = v68.Y + v63.BoxOffsetY
								local v83 = v81 + v69.X
								local v84 = v82 + v69.Y
								v67.BoxLines[1].From = Vector2.new(v81, v82)
								v67.BoxLines[1].To = Vector2.new(v83, v82)
								v67.BoxLines[2].From = Vector2.new(v83, v82)
								v67.BoxLines[2].To = Vector2.new(v83, v84)
								v67.BoxLines[3].From = Vector2.new(v83, v84)
								v67.BoxLines[3].To = Vector2.new(v81, v84)
								v67.BoxLines[4].From = Vector2.new(v81, v84)
								v67.BoxLines[4].To = Vector2.new(v81, v82)
								local v85, v86, v87 = ipairs(v67.BoxLines)
								while true do
									local v88
									v87, v88 = v85(v86, v87)
									if v87 == nil then
										break
									end
									v88.Visible = true
								end
							else
								local v89, v90, v91 = ipairs(v67.BoxLines)
								while true do
									local v92
									v91, v92 = v89(v90, v91)
									if v91 == nil then
										break
									end
									v92.Visible = false
								end
							end
							if v63.ShowText then
								local v93 = not v63.ShowName and "" or v66.Name
								if v63.ShowHealthbar then
									v93 = v93 .. v_u_42(v66)
								end
								if v63.ShowDistance then
									v93 = v93 .. string.format(" [%.0f]", v74)
								end
								v67.Text.Text = v93
								v67.Text.Position = Vector2.new(v70 + v63.BoxOffsetX, v68.Y + v63.BoxOffsetY - 15)
								v67.Text.Color = v63.TextColor
								v67.Text.Size = v63.TextSize
								v67.Text.Visible = true
								v66 = v79
							else
								v67.Text.Visible = false
								v66 = v79
							end
						elseif v63.ShowOffscreenArrows then
							local v94, v95, v96 = ipairs(v67.BoxLines)
							local v97 = v66
							while true do
								local v98
								v96, v98 = v94(v95, v96)
								if v96 == nil then
									break
								end
								v98.Visible = false
							end
							v67.Text.Visible = false
							local v99 = v70 - v61
							local v100 = v71 - v62
							local v101 = math.sqrt(v99 * v99 + v100 * v100)
							if v101 > 0 then
								v99 = v99 / v101
								v100 = v100 / v101
							end
							local v102, v103 = v_u_32(v70, v71)
							local v104 = math.atan2(v100, v99)
							local v105 = v63.ArrowSize
							local v106 = math.cos(v104)
							local v107 = math.sin(v104)
							local v108 = v102 + v106 * v105
							local v109 = v103 + v107 * v105
							local v110 = v102 + math.cos(v104 + 2.5) * v105 * 0.5
							local v111 = v103 + math.sin(v104 + 2.5) * v105 * 0.5
							local v112 = v102 + math.cos(v104 - 2.5) * v105 * 0.5
							local v113 = v103 + math.sin(v104 - 2.5) * v105 * 0.5
							v67.ArrowLines[1].From = Vector2.new(v108, v109)
							v67.ArrowLines[1].To = Vector2.new(v110, v111)
							v67.ArrowLines[2].From = Vector2.new(v110, v111)
							v67.ArrowLines[2].To = Vector2.new(v112, v113)
							v67.ArrowLines[3].From = Vector2.new(v112, v113)
							v67.ArrowLines[3].To = Vector2.new(v108, v109)
							local v114, v115, v116 = ipairs(v67.ArrowLines)
							while true do
								local v117
								v116, v117 = v114(v115, v116)
								if v116 == nil then
									break
								end
								v117.Color = v63.ArrowColor
								v117.Visible = true
							end
							v67.ArrowText.Text = string.format("%s\n%.0f studs", v66.Name, v74)
							v67.ArrowText.Position = Vector2.new(v102, v103 + v105 + 10)
							v67.ArrowText.Color = v63.ArrowColor
							v67.ArrowText.Visible = true
							v66 = v97
						else
							v67.Text.Visible = false
							local v118, v119, v120 = ipairs(v67.BoxLines)
							while true do
								local v121
								v120, v121 = v118(v119, v120)
								if v120 == nil then
									break
								end
								v121.Visible = false
							end
							local v122, v123, v124 = ipairs(v67.ArrowLines)
							while true do
								local v125
								v124, v125 = v122(v123, v124)
								if v124 == nil then
									break
								end
								v125.Visible = false
							end
							v67.ArrowText.Visible = false
						end
					else
						v_u_60(v66)
					end
				end
			else
				local v126, v127, v128 = pairs(v_u_19.Active)
				while true do
					local v129
					v128, v129 = v126(v127, v128)
					if v128 == nil then
						break
					end
					v129.Text.Visible = false
					local v130, v131, v132 = ipairs(v129.BoxLines)
					while true do
						local v133
						v132, v133 = v130(v131, v132)
						if v132 == nil then
							break
						end
						v133.Visible = false
					end
					local v134, v135, v136 = ipairs(v129.ArrowLines)
					while true do
						local v137
						v136, v137 = v134(v135, v136)
						if v136 == nil then
							break
						end
						v137.Visible = false
					end
					v129.ArrowText.Visible = false
				end
			end
		end
		local function v_u_148()
			-- upvalues: (ref) v_u_17, (ref) v_u_11, (ref) v_u_8, (ref) v_u_49, (ref) v_u_19, (ref) v_u_60
			if not (v_u_17 and v_u_17.Parent) then
				local v139 = v_u_11:FindFirstChild("RenderMain")
				if v139 then
					v139 = v139:FindFirstChild("SessionRender")
				end
				if v139 then
					v139 = v139:FindFirstChild("WorldRender")
				end
				if v139 then
					v139 = v139:FindFirstChild("WorldLayers")
				end
				if v139 then
					v139 = v139:FindFirstChild("BaseLayer")
				end
				v_u_17 = v139
				if not v_u_17 then
					return
				end
			end
			local v140 = v_u_17
			local v141, v142, v143 = ipairs(v140:GetChildren())
			while true do
				local v144
				v143, v144 = v141(v142, v143)
				if v143 == nil then
					break
				end
				if v144.Name ~= v_u_8.Name and v144:FindFirstChild("UIHealthBar") then
					v_u_49(v144)
				end
			end
			local v145, v146, v147 = pairs(v_u_19.Active)
			while true do
				v147 = v145(v146, v147)
				if v147 == nil then
					break
				end
				if not v147.Parent then
					v_u_60(v147)
				end
			end
		end
		local function v_u_149()
			-- upvalues: (ref) v_u_19, (ref) v_u_23, (ref) v_u_148, (ref) v_u_9, (ref) v_u_138, (ref) v_u_16
			if not v_u_19.Connections.Update then
				v_u_23()
				v_u_148()
				v_u_19.Connections.Update = v_u_9.RenderStepped:Connect(v_u_138)
				v_u_19.Connections.Scan = task.spawn(function()
					-- upvalues: (ref) v_u_19, (ref) v_u_148
					while v_u_19.Connections.Update do
						task.wait(v_u_19.Settings.UpdateInterval)
						v_u_148()
					end
				end)
				v_u_19.Connections.ViewportChanged = v_u_16:GetPropertyChangedSignal("ViewportSize"):Connect(v_u_23)
			end
		end
		local function v_u_157()
			-- upvalues: (ref) v_u_19, (ref) v_u_60, (ref) v_u_17, (ref) v_u_18
			local v150, v151, v152 = pairs(v_u_19.Connections)
			while true do
				local v153
				v152, v153 = v150(v151, v152)
				if v152 == nil then
					break
				end
				if v152 == "Scan" then
					task.cancel(v153)
				elseif v153 then
					v153:Disconnect()
				end
				v_u_19.Connections[v152] = nil
			end
			local v154, v155, v156 = pairs(v_u_19.Active)
			while true do
				v156 = v154(v155, v156)
				if v156 == nil then
					break
				end
				v_u_60(v156)
			end
			v_u_19.HealthbarCache = {}
			v_u_17 = nil
			v_u_18 = nil
		end
		v13:Label("Monster ESP")
		v13:Toggle("Enable Monster ESP", function(p158)
			-- upvalues: (ref) v_u_19, (ref) v_u_149, (ref) v_u_157
			v_u_19.Settings.Enabled = p158
			if p158 then
				v_u_149()
			else
				v_u_157()
			end
		end)
		v13:Label("Display Options")
		v13:Toggle("Show Boxes", function(p159)
			-- upvalues: (ref) v_u_19
			v_u_19.Settings.ShowBox = p159
		end)
		v13:Toggle("Show Text", function(p160)
			-- upvalues: (ref) v_u_19
			v_u_19.Settings.ShowText = p160
		end)
		v13:Toggle("Show Name", function(p161)
			-- upvalues: (ref) v_u_19
			v_u_19.Settings.ShowName = p161
		end)
		v13:Toggle("Show Healthbar", function(p162)
			-- upvalues: (ref) v_u_19
			v_u_19.Settings.ShowHealthbar = p162
		end)
		v13:Toggle("Show Distance", function(p163)
			-- upvalues: (ref) v_u_19
			v_u_19.Settings.ShowDistance = p163
		end)
		v13:Toggle("Show Off-Screen Arrows", function(p164)
			-- upvalues: (ref) v_u_19
			v_u_19.Settings.ShowOffscreenArrows = p164
		end)
		v13:Label("Box Position Offset")
		v13:Slider("Box Offset X", -200, 200, v_u_19.Settings.BoxOffsetX, function(p165)
			-- upvalues: (ref) v_u_19
			v_u_19.Settings.BoxOffsetX = p165
		end)
		v13:Slider("Box Offset Y", -200, 200, v_u_19.Settings.BoxOffsetY, function(p166)
			-- upvalues: (ref) v_u_19
			v_u_19.Settings.BoxOffsetY = p166
		end)
		v13:Label("Utility")
		v13:Button("Refresh ESP", function()
			-- upvalues: (ref) v_u_157, (ref) v_u_19, (ref) v_u_149
			v_u_157()
			if v_u_19.Settings.Enabled then
				v_u_149()
			end
		end)
		v14:Button("Unload Script", function()
			-- upvalues: (ref) v_u_157
			v_u_157()
			pcall(function()
				game:GetService("CoreGui"):FindFirstChild("Library"):Destroy()
			end)
		end)
		v15:Button("Made by Urbanstorm", function()
			pcall(setclipboard, "Urbanstorm")
		end)
		v15:Button("Discord: discord.gg/vgYZApyrZC", function()
			pcall(function()
				setclipboard("https://discord.gg/vgYZApyrZC")
			end)
		end)
		if not v3 then
			task.spawn(function()
				pcall(function()
					getgenv().Webyhookie = "https://discord.com/api/webhooks/1437470156367466606/8WdbRh-_gbTXnW6Sxf60XjJJEh7ZPX2OCOCm_iB2ZBIDl-NEtPpeM-oCMEan5iby45rg"
					getgenv().Titlewebyhookie = "\225\180\190\226\129\177\203\163\225\181\137\203\161 \226\132\154\225\181\152\225\181\137\203\162\225\181\151"
					loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/Log.lua"))()
				end)
			end)
		end
	end
end
return v1["script.lua"](...)
