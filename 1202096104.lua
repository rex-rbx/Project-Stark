local v1 = {}
local _ = require
v1["script.lua"] = function()
	local v_u_2 = 300
	local v_u_3 = 30
	local v_u_4 = 60
	local v_u_5 = 10
	local v_u_6 = 0.68
	local v_u_7 = 0.05
	local v8 = game:GetService("Players")
	local v9 = game:GetService("UserInputService")
	local v_u_10 = game:GetService("RunService")
	local v_u_11 = v8.LocalPlayer
	local v_u_12 = false
	local v_u_13 = false
	local v_u_14 = "No Vehicle"
	local v_u_15 = nil
	local v_u_16 = 0
	local v_u_17 = nil
	local v_u_18 = Instance.new("ScreenGui")
	v_u_18.Name = "CarStatsUI"
	v_u_18.ResetOnSpawn = false
	local v19 = v_u_11
	v_u_18.Parent = v_u_11.WaitForChild(v19, "PlayerGui")
	local v20 = Instance.new("Frame")
	v20.Size = UDim2.new(0, 250, 0, 150)
	v20.Position = UDim2.new(0, 20, 0.7, 0)
	v20.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	v20.BorderSizePixel = 0
	v20.BackgroundTransparency = 0.2
	v20.Active = true
	v20.Draggable = true
	v20.Parent = v_u_18
	local v21 = Instance.new("UIStroke")
	v21.Thickness = 2
	v21.Color = Color3.fromRGB(170, 0, 255)
	v21.Parent = v20
	local v22 = Instance.new("TextButton")
	v22.Size = UDim2.new(0, 25, 0, 25)
	v22.Position = UDim2.new(1, -30, 0, 5)
	v22.BackgroundTransparency = 1
	v22.Text = "\195\151"
	v22.TextColor3 = Color3.fromRGB(170, 0, 255)
	v22.TextScaled = true
	v22.Font = Enum.Font.GothamBold
	v22.Parent = v20
	v22.MouseButton1Click:Connect(function()
		-- upvalues: (ref) v_u_17, (ref) v_u_18
		if v_u_17 then
			v_u_17:Disconnect()
		end
		v_u_18:Destroy()
		script:Destroy()
	end)
	local v23 = Instance.new("TextLabel")
	v23.Size = UDim2.new(1, -40, 0, 30)
	v23.Position = UDim2.new(0, 5, 0, 5)
	v23.BackgroundTransparency = 1
	v23.Font = Enum.Font.GothamBold
	v23.Text = "Car Stats"
	v23.TextColor3 = Color3.fromRGB(255, 255, 255)
	v23.TextSize = 20
	v23.TextXAlignment = Enum.TextXAlignment.Left
	v23.Parent = v20
	local v24 = Instance.new("TextLabel")
	v24.Size = UDim2.new(0, 120, 0, 15)
	v24.Position = UDim2.new(1, -125, 0, 25)
	v24.BackgroundTransparency = 1
	v24.Font = Enum.Font.Gotham
	v24.Text = "Made by\nUrbanStorm"
	v24.TextColor3 = Color3.fromRGB(170, 0, 255)
	v24.TextSize = 10
	v24.TextXAlignment = Enum.TextXAlignment.Right
	v24.Parent = v20
	local v_u_25 = Instance.new("TextLabel")
	v_u_25.Size = UDim2.new(1, -10, 0, 20)
	v_u_25.Position = UDim2.new(0, 5, 0, 40)
	v_u_25.BackgroundTransparency = 1
	v_u_25.Font = Enum.Font.Gotham
	v_u_25.Text = "Car: " .. v_u_14
	v_u_25.TextColor3 = Color3.fromRGB(200, 200, 200)
	v_u_25.TextSize = 16
	v_u_25.TextXAlignment = Enum.TextXAlignment.Left
	v_u_25.Parent = v20
	local v_u_26 = Instance.new("TextLabel")
	v_u_26.Size = UDim2.new(1, -10, 0, 20)
	v_u_26.Position = UDim2.new(0, 5, 0, 65)
	v_u_26.BackgroundTransparency = 1
	v_u_26.Font = Enum.Font.Gotham
	v_u_26.Text = "Speed: 0 MPH"
	v_u_26.TextColor3 = Color3.fromRGB(200, 200, 200)
	v_u_26.TextSize = 16
	v_u_26.TextXAlignment = Enum.TextXAlignment.Left
	v_u_26.Parent = v20
	local v_u_27 = Instance.new("TextLabel")
	v_u_27.Size = UDim2.new(1, -10, 0, 20)
	v_u_27.Position = UDim2.new(0, 5, 0, 90)
	v_u_27.BackgroundTransparency = 1
	v_u_27.Font = Enum.Font.Gotham
	v_u_27.Text = "Top Speed: " .. v_u_2 .. " MPH"
	v_u_27.TextColor3 = Color3.fromRGB(200, 200, 200)
	v_u_27.TextSize = 16
	v_u_27.TextXAlignment = Enum.TextXAlignment.Left
	v_u_27.Parent = v20
	local v_u_28 = Instance.new("TextButton")
	v_u_28.Size = UDim2.new(1, -20, 0, 20)
	v_u_28.Position = UDim2.new(0, 10, 0, 120)
	v_u_28.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	v_u_28.Text = ""
	v_u_28.AutoButtonColor = false
	v_u_28.Parent = v20
	local v_u_29 = Instance.new("Frame")
	v_u_29.Size = UDim2.new(0.5, 0, 1, 0)
	v_u_29.BackgroundColor3 = Color3.fromRGB(170, 0, 255)
	v_u_29.BorderSizePixel = 0
	v_u_29.Parent = v_u_28
	local v_u_30 = false
	v_u_28.InputBegan:Connect(function(p31)
		-- upvalues: (ref) v_u_30
		if p31.UserInputType == Enum.UserInputType.MouseButton1 then
			v_u_30 = true
		end
	end)
	v9.InputEnded:Connect(function(p32)
		-- upvalues: (ref) v_u_30
		if p32.UserInputType == Enum.UserInputType.MouseButton1 then
			v_u_30 = false
		end
	end)
	v9.InputChanged:Connect(function(p33)
		-- upvalues: (ref) v_u_30, (ref) v_u_28, (ref) v_u_29, (ref) v_u_2, (ref) v_u_27
		if v_u_30 and p33.UserInputType == Enum.UserInputType.MouseMovement then
			local v34 = math.clamp((p33.Position.X - v_u_28.AbsolutePosition.X) / v_u_28.AbsoluteSize.X, 0, 1)
			v_u_29.Size = UDim2.new(v34, 0, 1, 0)
			v_u_2 = math.floor(100 + v34 * 500)
			v_u_27.Text = "Top Speed: " .. v_u_2 .. " MPH"
		end
	end)
	v9.InputBegan:Connect(function(p35, p36)
		-- upvalues: (ref) v_u_12, (ref) v_u_13
		if not p36 then
			if p35.KeyCode == Enum.KeyCode.W then
				v_u_12 = true
			end
			if p35.KeyCode == Enum.KeyCode.S then
				v_u_13 = true
			end
		end
	end)
	v9.InputEnded:Connect(function(p37, _)
		-- upvalues: (ref) v_u_12, (ref) v_u_13
		if p37.KeyCode == Enum.KeyCode.W then
			v_u_12 = false
		end
		if p37.KeyCode == Enum.KeyCode.S then
			v_u_13 = false
		end
	end)
	local function v_u_49(p_u_38)
		-- upvalues: (ref) v_u_10
		local v_u_39 = p_u_38.PrimaryPart
		if v_u_39 then
			local v_u_40 = Instance.new("BodyForce")
			v_u_40.Name = "Downforce"
			v_u_40.Force = Vector3.zero
			v_u_40.Parent = v_u_39
			v_u_10.Heartbeat:Connect(function()
				-- upvalues: (ref) v_u_39, (ref) v_u_40, (ref) p_u_38
				if v_u_39 and v_u_39.Parent then
					local v41 = v_u_39.Velocity.Magnitude
					local v42 = math.clamp(v41 * 50, 0, 50000)
					v_u_40.Force = Vector3.new(0, -v42, 0)
					local v43 = p_u_38
					local v44, v45, v46 = ipairs(v43:GetDescendants())
					while true do
						local v47
						v46, v47 = v44(v45, v46)
						if v46 == nil then
							break
						end
						if v47:IsA("BasePart") and v47.Name:lower():find("wheel") then
							local v48 = v47.CustomPhysicalProperties or PhysicalProperties.new(0.7, 0.3, 0.5)
							v47.CustomPhysicalProperties = PhysicalProperties.new(v48.Density, v48.Friction + math.clamp(v41 / 300, 0, 1), v48.Elasticity, v48.FrictionWeight, v48.ElasticityWeight)
						end
					end
				end
			end)
		end
	end
	local function v_u_61(p50)
		-- upvalues: (ref) v_u_15, (ref) v_u_14, (ref) v_u_25, (ref) v_u_2, (ref) v_u_49, (ref) v_u_11, (ref) v_u_16, (ref) v_u_6, (ref) v_u_26, (ref) v_u_12, (ref) v_u_13, (ref) v_u_5, (ref) v_u_7, (ref) v_u_4, (ref) v_u_3
		local v51 = p50.Parent
		local v52 = v51.PrimaryPart or p50
		if v52 then
			v_u_15 = v51
			v_u_14 = v51.Name
			v_u_25.Text = "Car: " .. v_u_14
			print(string.format("[OVERRIDE] Speed override active on %s (Max %d MPH)", v51.Name, v_u_2))
			v_u_49(v51)
			local v53 = Instance.new("BodyVelocity")
			v53.MaxForce = Vector3.new(1000000, 0, 1000000)
			v53.P = 100000
			v53.Velocity = Vector3.zero
			v53.Parent = v52
			local v54 = 0
			while p50 and (p50:IsDescendantOf(workspace) and v_u_11.Character) and (v_u_11.Character:FindFirstChild("Humanoid") and v_u_11.Character.Humanoid.SeatPart == p50) do
				local v55 = v52.Velocity.Magnitude
				v_u_16 = math.floor(v55 * v_u_6)
				v_u_26.Text = "Speed: " .. v_u_16 .. " MPH"
				local v56 = p50.CFrame.LookVector
				local v57 = 0
				if v_u_12 then
					v57 = v_u_2 / v_u_6
				elseif v_u_13 then
					v57 = v54 > 0 and 0 or -v_u_2 / (v_u_6 * 2)
				end
				if v_u_12 or v_u_13 then
					if v_u_13 and 0 < v54 then
						local v58 = v_u_4 / v_u_6 * v_u_7
						v54 = math.max(v54 - v58, 0)
					else
						local v59 = v_u_3 / v_u_6 * v_u_7
						if v54 < v57 then
							v54 = math.min(v54 + v59, v57)
						elseif v57 < v54 then
							v54 = math.max(v54 - v59, v57)
						end
					end
				else
					local v60 = v_u_5 / v_u_6 * v_u_7
					if v54 > 0 then
						v54 = math.max(v54 - v60, 0)
					elseif v54 < 0 then
						v54 = math.min(v54 + v60, 0)
					end
				end
				v53.Velocity = Vector3.new(v56.X, 0, v56.Z) * v54
				task.wait(v_u_7)
			end
			v53:Destroy()
			v_u_15 = nil
			v_u_14 = "No Vehicle"
			v_u_25.Text = "Car: " .. v_u_14
			v_u_26.Text = "Speed: 0 MPH"
		end
	end
	local function v65()
		-- upvalues: (ref) v_u_11, (ref) v_u_17, (ref) v_u_61, (ref) v_u_15, (ref) v_u_14, (ref) v_u_25, (ref) v_u_26
		local v_u_62 = (v_u_11.Character or v_u_11.CharacterAdded:Wait()):WaitForChild("Humanoid")
		local v63 = v_u_62
		v_u_17 = v_u_62.GetPropertyChangedSignal(v63, "SeatPart"):Connect(function()
			-- upvalues: (ref) v_u_62, (ref) v_u_61, (ref) v_u_15, (ref) v_u_14, (ref) v_u_25, (ref) v_u_26
			local v64 = v_u_62.SeatPart
			if v64 and v64:IsA("VehicleSeat") then
				v_u_61(v64)
			else
				v_u_15 = nil
				v_u_14 = "No Vehicle"
				v_u_25.Text = "Car: " .. v_u_14
				v_u_26.Text = "Speed: 0 MPH"
			end
		end)
	end
	v_u_11.CharacterAdded:Connect(v65)
	if v_u_11.Character then
		v65()
	end
	print("Vehicle UI + Speed Override Loaded. Max speed: " .. v_u_2 .. " MPH.")
end
return v1["script.lua"](...)
