local v1 = {}
local _ = require
v1["script.lua"] = function()
	local v_u_2 = true
	function onKeyPress(_, p3, _)
		-- upvalues: (ref) v_u_2
		if p3 == Enum.UserInputState.Begin then
			if v_u_2 ~= false then
				v_u_2 = false
				game:service("CoreGui"):FindFirstChild("Library").Enabled = false
			else
				v_u_2 = true
				game:service("CoreGui"):FindFirstChild("Library").Enabled = true
			end
		end
	end
	game.ContextActionService:BindAction("keyPress", onKeyPress, false, Enum.KeyCode.RightAlt)
	function removegui()
		if game:service("CoreGui"):FindFirstChild("Library") then
			game:service("CoreGui"):FindFirstChild("Library"):Destroy()
		end
	end
	removegui()
	local v_u_4 = {
		["RainbowColorValue"] = 0,
		["HueSelectionPosition"] = 0
	}
	local v_u_5 = Color3.fromRGB(138, 80, 255)
	local v_u_6 = game:GetService("UserInputService")
	local v_u_7 = game:GetService("TweenService")
	local v_u_8 = game:GetService("RunService")
	local v_u_9 = game:GetService("Players").LocalPlayer:GetMouse()
	coroutine.wrap(function()
		-- upvalues: (ref) v_u_4
		while wait() do
			v_u_4.RainbowColorValue = v_u_4.RainbowColorValue + 0.003921568859368563
			v_u_4.HueSelectionPosition = v_u_4.HueSelectionPosition + 1
			if v_u_4.RainbowColorValue >= 1 then
				v_u_4.RainbowColorValue = 0
			end
			if v_u_4.HueSelectionPosition == 80 then
				v_u_4.HueSelectionPosition = 0
			end
		end
	end)()
	function Ripple(p_u_10)
		spawn(function()
			-- upvalues: (ref) p_u_10
			local v11 = game.Players.LocalPlayer:GetMouse()
			local v12 = Instance.new("ImageLabel")
			v12.Name = "Circle"
			v12.Parent = p_u_10
			v12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			v12.BackgroundTransparency = 1
			v12.ZIndex = 10
			v12.Image = "rbxassetid://266543268"
			v12.ImageColor3 = Color3.fromRGB(211, 211, 211)
			v12.ImageTransparency = 0.6
			local v13 = v11.X - v12.AbsolutePosition.X
			local v14 = v11.Y - v12.AbsolutePosition.Y
			v12.Position = UDim2.new(0, v13, 0, v14)
			local v15 = 0
			if p_u_10.AbsoluteSize.X <= p_u_10.AbsoluteSize.Y then
				if p_u_10.AbsoluteSize.X >= p_u_10.AbsoluteSize.Y then
					if p_u_10.AbsoluteSize.X == p_u_10.AbsoluteSize.Y then
						v15 = p_u_10.AbsoluteSize.X * 1
					end
				else
					v15 = p_u_10.AbsoluteSize.Y * 1
				end
			else
				v15 = p_u_10.AbsoluteSize.X * 1
			end
			v12:TweenSizeAndPosition(UDim2.new(0, v15, 0, v15), UDim2.new(0.5, -v15 / 2, 0.5, -v15 / 2), "Out", "Quad", 0.2, false)
			for _ = 1, 15 do
				v12.ImageTransparency = v12.ImageTransparency + 0.05
				wait()
			end
			v12:Destroy()
		end)
	end
	local function v_u_30(p16, p_u_17)
		-- upvalues: (ref) v_u_7, (ref) v_u_6
		local v_u_18 = nil
		local v_u_19 = nil
		local v_u_20 = nil
		local v_u_21 = nil
		local function v_u_26(p22)
			-- upvalues: (ref) v_u_18, (ref) v_u_19, (ref) v_u_7, (ref) p_u_17
			local v23 = p22.Position - v_u_18
			local v24 = v_u_7
			local v25 = {
				["Position"] = UDim2.new(v_u_19.X.Scale, v_u_19.X.Offset + v23.X, v_u_19.Y.Scale, v_u_19.Y.Offset + v23.Y)
			}
			v24:Create(p_u_17, TweenInfo.new(0.2), v25):Play()
		end
		p16.InputBegan:Connect(function(p_u_27)
			-- upvalues: (ref) v_u_20, (ref) v_u_18, (ref) v_u_19, (ref) p_u_17
			if p_u_27.UserInputType == Enum.UserInputType.MouseButton1 or p_u_27.UserInputType == Enum.UserInputType.Touch then
				v_u_20 = true
				v_u_18 = p_u_27.Position
				v_u_19 = p_u_17.Position
				p_u_27.Changed:Connect(function()
					-- upvalues: (ref) p_u_27, (ref) v_u_20
					if p_u_27.UserInputState == Enum.UserInputState.End then
						v_u_20 = false
					end
				end)
			end
		end)
		p16.InputChanged:Connect(function(p28)
			-- upvalues: (ref) v_u_21
			if p28.UserInputType == Enum.UserInputType.MouseMovement or p28.UserInputType == Enum.UserInputType.Touch then
				v_u_21 = p28
			end
		end)
		v_u_6.InputChanged:Connect(function(p29)
			-- upvalues: (ref) v_u_21, (ref) v_u_20, (ref) v_u_26
			if p29 == v_u_21 and v_u_20 then
				v_u_26(p29)
			end
		end)
	end
	function v_u_4.Window(_, p31, p32)
		-- upvalues: (ref) v_u_5, (ref) v_u_30, (ref) v_u_7, (ref) v_u_6, (ref) v_u_8, (ref) v_u_9, (ref) v_u_4
		local v_u_33 = false
		v_u_5 = p32
		local v34 = Instance.new("ScreenGui")
		local v35 = Instance.new("Frame")
		local v36 = Instance.new("UICorner")
		local v37 = Instance.new("ImageLabel")
		local v38 = Instance.new("Frame")
		local v39 = Instance.new("TextLabel")
		local v40 = Instance.new("Frame")
		local v41 = Instance.new("UICorner")
		local v_u_42 = Instance.new("Frame")
		local v43 = Instance.new("UIListLayout")
		local v_u_44 = Instance.new("Folder")
		local v45 = Instance.new("Frame")
		v34.Name = "Library"
		v34.Parent = game.CoreGui
		v34.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		v35.Name = "MainFrame"
		v35.Parent = v34
		v35.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
		v35.Position = UDim2.new(0.330208331, 0, 0.304824561, 0)
		v35.Size = UDim2.new(0, 652, 0, 355)
		v36.CornerRadius = UDim.new(0, 9)
		v36.Name = "MainCorner"
		v36.Parent = v35
		v37.Name = "GlowMain"
		v37.Parent = v35
		v37.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		v37.BackgroundTransparency = 1
		v37.BorderSizePixel = 0
		v37.Position = UDim2.new(0, -15, 0, -15)
		v37.Size = UDim2.new(1, 30, 1, 30)
		v37.ZIndex = 0
		v37.Image = "rbxassetid://4996891970"
		v37.ImageColor3 = Color3.fromRGB(15, 15, 15)
		v37.ScaleType = Enum.ScaleType.Slice
		v37.SliceCenter = Rect.new(20, 20, 280, 280)
		v38.Name = "LeftFrame"
		v38.Parent = v35
		v38.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		v38.BackgroundTransparency = 1
		v38.Position = UDim2.new(0.0230061356, 0, 0.0366197191, 0)
		v38.Size = UDim2.new(0, 139, 0, 328)
		v39.Name = "Title"
		v39.Parent = v38
		v39.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		v39.BackgroundTransparency = 1
		v39.Size = UDim2.new(0, 139, 0, 50)
		v39.Font = Enum.Font.Gotham
		v39.Text = p31
		v39.TextColor3 = v_u_5
		v39.TextSize = 21
		v40.Name = "Line"
		v40.Parent = v38
		v40.BackgroundColor3 = v_u_5
		v40.Position = UDim2.new(0, 0, 0.14199996, 0)
		v40.Size = UDim2.new(0, 139, 0, 2)
		v41.CornerRadius = UDim.new(0, 9)
		v41.Name = "LineCorner"
		v41.Parent = v40
		v_u_42.Name = "TabFrame"
		v_u_42.Parent = v38
		v_u_42.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		v_u_42.BackgroundTransparency = 1
		v_u_42.Position = UDim2.new(0, 0, 0.189024389, 0)
		v_u_42.Size = UDim2.new(0, 139, 0, 266)
		v43.Name = "TabList"
		v43.Parent = v_u_42
		v43.SortOrder = Enum.SortOrder.LayoutOrder
		v43.Padding = UDim.new(0, 8)
		v_u_44.Name = "ContainersFolder"
		v_u_44.Parent = v35
		v45.Name = "DraggableFrame"
		v45.Parent = v35
		v45.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		v45.BackgroundTransparency = 1
		v45.Position = UDim2.new(0.259202451, 0, 0.00563380262, 0)
		v45.Size = UDim2.new(0, 483, 0, 57)
		v_u_30(v45, v35)
		return {
			["Tab"] = function(_, p46)
				-- upvalues: (ref) v_u_42, (ref) v_u_5, (ref) v_u_44, (ref) v_u_33, (ref) v_u_7, (ref) v_u_6, (ref) v_u_8, (ref) v_u_9, (ref) v_u_4
				local v_u_47 = Instance.new("TextButton")
				local v48 = Instance.new("UICorner")
				local v_u_49 = Instance.new("ImageLabel")
				local v_u_50 = Instance.new("TextLabel")
				local v_u_51 = Instance.new("Frame")
				local v52 = Instance.new("ImageLabel")
				local v53 = Instance.new("UICorner")
				local v_u_54 = Instance.new("ScrollingFrame")
				local v_u_55 = Instance.new("UIListLayout")
				v_u_47.Name = "Tab"
				v_u_47.Parent = v_u_42
				v_u_47.BackgroundColor3 = v_u_5
				v_u_47.BorderSizePixel = 0
				v_u_47.Size = UDim2.new(0, 139, 0, 27)
				v_u_47.AutoButtonColor = false
				v_u_47.Font = Enum.Font.Gotham
				v_u_47.Text = p46
				v_u_47.TextColor3 = Color3.fromRGB(255, 255, 255)
				v_u_47.TextSize = 14
				v_u_47.BackgroundTransparency = 1
				v48.CornerRadius = UDim.new(0, 6)
				v48.Parent = v_u_47
				v_u_49.Name = "GlowTab"
				v_u_49.Parent = v_u_47
				v_u_49.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				v_u_49.BackgroundTransparency = 1
				v_u_49.BorderSizePixel = 0
				v_u_49.Position = UDim2.new(0, -15, 0, -15)
				v_u_49.Size = UDim2.new(1, 30, 1, 30)
				v_u_49.ZIndex = 0
				v_u_49.Image = "rbxassetid://4996891970"
				v_u_49.ImageColor3 = v_u_5
				v_u_49.ScaleType = Enum.ScaleType.Slice
				v_u_49.SliceCenter = Rect.new(20, 20, 280, 280)
				v_u_49.ImageTransparency = 1
				v_u_50.Name = "LabelAccent"
				v_u_50.Parent = v_u_47
				v_u_50.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				v_u_50.BackgroundTransparency = 1
				v_u_50.Size = UDim2.new(0, 139, 0, 27)
				v_u_50.Font = Enum.Font.Gotham
				v_u_50.Text = p46
				v_u_50.TextColor3 = v_u_5
				v_u_50.TextSize = 14
				v_u_50.TextTransparency = 0
				v_u_51.Name = "Container"
				v_u_51.Parent = v_u_44
				v_u_51.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
				v_u_51.Position = UDim2.new(0.259, 0, 0.169, 0)
				v_u_51.Size = UDim2.new(0, 471, 0, 281)
				v_u_51.Visible = false
				v52.Name = "ContainerGlow"
				v52.Parent = v_u_51
				v52.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				v52.BackgroundTransparency = 1
				v52.BorderSizePixel = 0
				v52.Position = UDim2.new(0, -15, 0, -15)
				v52.Size = UDim2.new(1, 30, 1, 30)
				v52.ZIndex = 0
				v52.Image = "rbxassetid://4996891970"
				v52.ImageColor3 = Color3.fromRGB(15, 15, 15)
				v52.ScaleType = Enum.ScaleType.Slice
				v52.SliceCenter = Rect.new(20, 20, 280, 280)
				v53.CornerRadius = UDim.new(0, 9)
				v53.Name = "ContainerCorner"
				v53.Parent = v_u_51
				v_u_54.Name = "ContainerItemHolder"
				v_u_54.Parent = v_u_51
				v_u_54.Active = true
				v_u_54.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				v_u_54.BackgroundTransparency = 1
				v_u_54.BorderSizePixel = 0
				v_u_54.Position = UDim2.new(0.0254777074, 0, 0.0365853645, 0)
				v_u_54.Size = UDim2.new(0, 455, 0, 262)
				v_u_54.CanvasSize = UDim2.new(0, 0, 0, 0)
				v_u_54.ScrollBarThickness = 2
				v_u_55.Name = "ItemHolderList"
				v_u_55.Parent = v_u_54
				v_u_55.SortOrder = Enum.SortOrder.LayoutOrder
				v_u_55.Padding = UDim.new(0, 5)
				if v_u_33 == false then
					v_u_33 = true
					v_u_50.TextTransparency = 1
					v_u_49.ImageTransparency = 0
					v_u_47.BackgroundTransparency = 0
					v_u_51.Visible = true
				end
				v_u_47.MouseButton1Click:Connect(function()
					-- upvalues: (ref) v_u_44, (ref) v_u_42, (ref) v_u_7, (ref) v_u_47, (ref) v_u_49, (ref) v_u_50, (ref) v_u_51
					local v56 = next
					local v57, v58 = v_u_44:GetChildren()
					while true do
						local v59
						v58, v59 = v56(v57, v58)
						if v58 == nil then
							break
						end
						if v59.Name == "Container" then
							v59.Visible = false
						end
					end
					local v60 = next
					local v61, v62 = v_u_42:GetChildren()
					while true do
						local v63
						v62, v63 = v60(v61, v62)
						if v62 == nil then
							break
						end
						if v63.ClassName == "TextButton" then
							v_u_7:Create(v63, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["BackgroundTransparency"] = 1
							}):Play()
							v_u_7:Create(v63.GlowTab, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["ImageTransparency"] = 1
							}):Play()
							v_u_7:Create(v63.LabelAccent, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["TextTransparency"] = 0
							}):Play()
							v_u_7:Create(v_u_47, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["BackgroundTransparency"] = 0
							}):Play()
							v_u_7:Create(v_u_49, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["ImageTransparency"] = 0
							}):Play()
							v_u_7:Create(v_u_50, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["TextTransparency"] = 1
							}):Play()
						end
					end
					v_u_51.Visible = true
				end)
				return {
					["Button"] = function(_, p64, p_u_65)
						-- upvalues: (ref) v_u_54, (ref) v_u_7, (ref) v_u_55
						local v_u_66 = Instance.new("TextButton")
						local v67 = Instance.new("UICorner")
						v_u_66.Name = "Button"
						v_u_66.Parent = v_u_54
						v_u_66.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
						v_u_66.Size = UDim2.new(0, 448, 0, 28)
						v_u_66.AutoButtonColor = false
						v_u_66.Font = Enum.Font.Gotham
						v_u_66.TextColor3 = Color3.fromRGB(255, 255, 255)
						v_u_66.TextSize = 14
						v_u_66.Text = p64
						v_u_66.ClipsDescendants = true
						v67.CornerRadius = UDim.new(0, 6)
						v67.Name = "ButtonCorner"
						v67.Parent = v_u_66
						v_u_66.MouseEnter:Connect(function()
							-- upvalues: (ref) v_u_7, (ref) v_u_66
							v_u_7:Create(v_u_66, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["BackgroundColor3"] = Color3.fromRGB(45, 45, 45)
							}):Play()
						end)
						v_u_66.MouseLeave:Connect(function()
							-- upvalues: (ref) v_u_7, (ref) v_u_66
							v_u_7:Create(v_u_66, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["BackgroundColor3"] = Color3.fromRGB(40, 40, 40)
							}):Play()
						end)
						v_u_66.MouseButton1Click:Connect(function()
							-- upvalues: (ref) v_u_66, (ref) p_u_65
							Ripple(v_u_66)
							pcall(p_u_65)
						end)
						v_u_54.CanvasSize = UDim2.new(0, 0, 0, v_u_55.AbsoluteContentSize.Y)
					end,
					["Toggle"] = function(_, p68, p_u_69)
						-- upvalues: (ref) v_u_54, (ref) v_u_7, (ref) v_u_5, (ref) v_u_55
						local v_u_70 = false
						local v_u_71 = Instance.new("TextButton")
						local v72 = Instance.new("UICorner")
						local v73 = Instance.new("TextLabel")
						local v74 = Instance.new("Frame")
						local v75 = Instance.new("UICorner")
						local v_u_76 = Instance.new("Frame")
						local v77 = Instance.new("UICorner")
						v_u_71.Name = "Toggle"
						v_u_71.Parent = v_u_54
						v_u_71.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
						v_u_71.Position = UDim2.new(0.245398775, 0, 0.630985916, 0)
						v_u_71.Size = UDim2.new(0, 448, 0, 28)
						v_u_71.AutoButtonColor = false
						v_u_71.Font = Enum.Font.Gotham
						v_u_71.Text = ""
						v_u_71.TextColor3 = Color3.fromRGB(255, 255, 255)
						v_u_71.TextSize = 14
						v_u_71.ClipsDescendants = true
						v72.CornerRadius = UDim.new(0, 6)
						v72.Name = "ToggleCorner"
						v72.Parent = v_u_71
						v73.Name = "Title"
						v73.Parent = v_u_71
						v73.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						v73.BackgroundTransparency = 1
						v73.Position = UDim2.new(0.0200892854, 0, 0, 0)
						v73.Size = UDim2.new(0, 0, 0, 28)
						v73.Font = Enum.Font.Gotham
						v73.TextColor3 = Color3.fromRGB(255, 255, 255)
						v73.TextSize = 14
						v73.TextXAlignment = Enum.TextXAlignment.Left
						v73.Text = p68
						v74.Name = "BoxStatus"
						v74.Parent = v_u_71
						v74.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						v74.Position = UDim2.new(0.908482134, 0, 0.142857149, 0)
						v74.Size = UDim2.new(0, 35, 0, 19)
						v75.CornerRadius = UDim.new(1, 0)
						v75.Name = "BoxCorner"
						v75.Parent = v74
						v_u_76.Name = "Dot"
						v_u_76.Parent = v74
						v_u_76.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
						v_u_76.Position = UDim2.new(0.0799999982, 0, 0.126000002, 0)
						v_u_76.Size = UDim2.new(0, 14, 0, 14)
						v77.CornerRadius = UDim.new(1, 0)
						v77.Name = "DotCorner"
						v77.Parent = v_u_76
						v_u_71.MouseEnter:Connect(function()
							-- upvalues: (ref) v_u_7, (ref) v_u_71
							v_u_7:Create(v_u_71, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["BackgroundColor3"] = Color3.fromRGB(45, 45, 45)
							}):Play()
						end)
						v_u_71.MouseLeave:Connect(function()
							-- upvalues: (ref) v_u_7, (ref) v_u_71
							v_u_7:Create(v_u_71, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["BackgroundColor3"] = Color3.fromRGB(40, 40, 40)
							}):Play()
						end)
						v_u_71.MouseButton1Click:Connect(function()
							-- upvalues: (ref) v_u_70, (ref) v_u_7, (ref) v_u_76, (ref) v_u_5, (ref) p_u_69, (ref) v_u_71
							if v_u_70 ~= false then
								v_u_70 = not v_u_70
								v_u_7:Create(v_u_76, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
									["BackgroundColor3"] = Color3.fromRGB(40, 40, 40)
								}):Play()
								v_u_7:Create(v_u_76, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
									["Position"] = UDim2.new(0.0799999982, 0, 0.126000002, 0)
								}):Play()
							else
								v_u_70 = not v_u_70
								local v78 = {
									["BackgroundColor3"] = v_u_5
								}
								v_u_7:Create(v_u_76, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), v78):Play()
								v_u_7:Create(v_u_76, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
									["Position"] = UDim2.new(0.48, 0, 0.126, 0)
								}):Play()
							end
							pcall(p_u_69, v_u_70)
							Ripple(v_u_71)
						end)
						v_u_54.CanvasSize = UDim2.new(0, 0, 0, v_u_55.AbsoluteContentSize.Y)
					end,
					["Slider"] = function(_, p79, p_u_80, p_u_81, p82, p_u_83)
						-- upvalues: (ref) v_u_54, (ref) v_u_5, (ref) v_u_6, (ref) v_u_55
						local v_u_84 = false
						local v85 = Instance.new("TextButton")
						local v86 = Instance.new("UICorner")
						local v87 = Instance.new("TextLabel")
						local v_u_88 = Instance.new("Frame")
						local v89 = Instance.new("UICorner")
						local v_u_90 = Instance.new("Frame")
						local v91 = Instance.new("UICorner")
						local v_u_92 = Instance.new("TextLabel")
						v85.Name = "Slider"
						v85.Parent = v_u_54
						v85.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
						v85.Position = UDim2.new(0.245398775, 0, 0.630985916, 0)
						v85.Size = UDim2.new(0, 448, 0, 28)
						v85.AutoButtonColor = false
						v85.Font = Enum.Font.Gotham
						v85.Text = ""
						v85.TextColor3 = Color3.fromRGB(255, 255, 255)
						v85.TextSize = 14
						v86.CornerRadius = UDim.new(0, 6)
						v86.Name = "SliderCorner"
						v86.Parent = v85
						v87.Name = "Title"
						v87.Parent = v85
						v87.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						v87.BackgroundTransparency = 1
						v87.Position = UDim2.new(0.0200892854, 0, 0, 0)
						v87.Size = UDim2.new(0, 0, 0, 28)
						v87.Font = Enum.Font.Gotham
						v87.Text = p79
						v87.TextColor3 = Color3.fromRGB(255, 255, 255)
						v87.TextSize = 14
						v87.TextXAlignment = Enum.TextXAlignment.Left
						v_u_92.Name = "Value"
						v_u_92.Parent = v85
						v_u_92.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						v_u_92.BackgroundTransparency = 1
						v_u_92.Position = UDim2.new(0.392857134, 0, 0, 0)
						v_u_92.Size = UDim2.new(0, 38, 0, 28)
						v_u_92.Font = Enum.Font.Gotham
						v_u_92.Text = tostring(p82 and (math.floor(p82 / p_u_81 * (p_u_81 - p_u_80) + p_u_80) or 0) or 0)
						v_u_92.TextColor3 = Color3.fromRGB(255, 255, 255)
						v_u_92.TextSize = 13
						v_u_92.TextXAlignment = Enum.TextXAlignment.Right
						v_u_88.Name = "SliderFrame"
						v_u_88.Parent = v85
						v_u_88.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						v_u_88.Position = UDim2.new(0.495535702, 0, 0.285714298, 0)
						v_u_88.Size = UDim2.new(0, 217, 0, 12)
						v89.CornerRadius = UDim.new(1, 0)
						v89.Name = "SliderFrameCorner"
						v89.Parent = v_u_88
						v_u_90.Name = "Indicator"
						v_u_90.Parent = v_u_88
						v_u_90.BackgroundColor3 = v_u_5
						v_u_90.BorderSizePixel = 0
						v_u_90.Position = UDim2.new(-0.0021601382177323103, 0, -0.0476175956428051, 0)
						v_u_90.Size = UDim2.new((p82 or 0) / p_u_81, 0, 0, 12)
						v91.CornerRadius = UDim.new(1, 0)
						v91.Name = "IndicatorCorner"
						v91.Parent = v_u_90
						local function v_u_96(p93)
							-- upvalues: (ref) v_u_88, (ref) v_u_90, (ref) p_u_81, (ref) p_u_80, (ref) v_u_92, (ref) p_u_83
							local v94 = UDim2.new(math.clamp((p93.Position.X - v_u_88.AbsolutePosition.X) / v_u_88.AbsoluteSize.X, 0, 1), 0, 0, 12)
							v_u_90:TweenSize(v94, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
							local v95 = math.floor(v94.X.Scale * p_u_81 / p_u_81 * (p_u_81 - p_u_80) + p_u_80)
							v_u_92.Text = tostring(v95)
							pcall(p_u_83, v95)
						end
						v_u_88.InputBegan:Connect(function(p97)
							-- upvalues: (ref) v_u_96, (ref) v_u_84
							if p97.UserInputType == Enum.UserInputType.MouseButton1 or p97.UserInputType == Enum.UserInputType.Touch then
								v_u_96(p97)
								v_u_84 = true
							end
						end)
						v_u_88.InputEnded:Connect(function(p98)
							-- upvalues: (ref) v_u_84
							if p98.UserInputType == Enum.UserInputType.MouseButton1 or p98.UserInputType == Enum.UserInputType.Touch then
								v_u_84 = false
							end
						end)
						v_u_6.InputChanged:Connect(function(p99)
							-- upvalues: (ref) v_u_84, (ref) v_u_96
							if v_u_84 and (p99.UserInputType == Enum.UserInputType.MouseMovement or p99.UserInputType == Enum.UserInputType.Touch) then
								v_u_96(p99)
							end
						end)
						v_u_54.CanvasSize = UDim2.new(0, 0, 0, v_u_55.AbsoluteContentSize.Y)
					end,
					["Dropdown"] = function(_, p_u_100, p101, p_u_102)
						-- upvalues: (ref) v_u_54, (ref) v_u_7, (ref) v_u_55
						local v103 = 0
						local v_u_104 = 9
						local v_u_105 = false
						local v_u_106 = Instance.new("TextButton")
						local v107 = Instance.new("UICorner")
						local v_u_108 = Instance.new("TextLabel")
						local v_u_109 = Instance.new("ImageButton")
						v_u_106.Name = "Dropdown"
						v_u_106.Parent = v_u_54
						v_u_106.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
						v_u_106.Position = UDim2.new(0.259202451, 0, 0.594366193, 0)
						v_u_106.Size = UDim2.new(0, 448, 0, 28)
						v_u_106.AutoButtonColor = false
						v_u_106.Font = Enum.Font.Gotham
						v_u_106.Text = ""
						v_u_106.TextColor3 = Color3.fromRGB(255, 255, 255)
						v_u_106.TextSize = 14
						v_u_106.BorderSizePixel = 0
						v_u_106.ClipsDescendants = true
						v107.CornerRadius = UDim.new(0, 6)
						v107.Name = "DropdownCorner"
						v107.Parent = v_u_106
						v_u_108.Name = "Title"
						v_u_108.Parent = v_u_106
						v_u_108.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						v_u_108.BackgroundTransparency = 1
						v_u_108.Position = UDim2.new(0.0200892854, 0, 0, 0)
						v_u_108.Size = UDim2.new(0, 0, 0, 28)
						v_u_108.Font = Enum.Font.Gotham
						v_u_108.Text = p_u_100
						v_u_108.TextColor3 = Color3.fromRGB(255, 255, 255)
						v_u_108.TextSize = 14
						v_u_108.TextXAlignment = Enum.TextXAlignment.Left
						v_u_109.Name = "Icon"
						v_u_109.Parent = v_u_106
						v_u_109.BackgroundTransparency = 1
						v_u_109.Position = UDim2.new(0.930803597, 0, 0.0357142873, 0)
						v_u_109.Size = UDim2.new(0, 25, 0, 25)
						v_u_109.ZIndex = 2
						v_u_109.Image = "rbxassetid://3926305904"
						v_u_109.ImageRectOffset = Vector2.new(44, 404)
						v_u_109.ImageRectSize = Vector2.new(36, 36)
						local v_u_110 = Instance.new("Frame")
						local v111 = Instance.new("UICorner")
						local v_u_112 = Instance.new("ScrollingFrame")
						local v113 = Instance.new("UIListLayout")
						local v114 = Instance.new("UIPadding")
						v_u_110.Name = "DropdownFrame"
						v_u_110.Parent = v_u_54
						v_u_110.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
						v_u_110.Position = UDim2.new(0.0828220844, 0, 1.04184508, 0)
						v_u_110.Size = UDim2.new(0, 448, 0, 0)
						v_u_110.ClipsDescendants = true
						v_u_110.BorderSizePixel = 0
						v_u_110.Visible = false
						v111.CornerRadius = UDim.new(0, 6)
						v111.Name = "DropdownFrameCorner"
						v111.Parent = v_u_110
						v_u_112.Name = "DropdownItemHolder"
						v_u_112.Parent = v_u_110
						v_u_112.Active = true
						v_u_112.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						v_u_112.BackgroundTransparency = 1
						v_u_112.BorderSizePixel = 0
						v_u_112.Position = UDim2.new(0.0254776813, 0, 0, 0)
						v_u_112.Size = UDim2.new(0, 431, 0, 0)
						v_u_112.CanvasSize = UDim2.new(0, 0, 0, 0)
						v_u_112.ScrollBarThickness = 2
						v113.Name = "DropdownItemHolderList"
						v113.Parent = v_u_112
						v113.SortOrder = Enum.SortOrder.LayoutOrder
						v113.Padding = UDim.new(0, 5)
						v114.Name = "DropdownFramePadding"
						v114.Parent = v_u_112
						v114.PaddingBottom = UDim.new(0, 8)
						v114.PaddingTop = UDim.new(0, 8)
						v_u_106.MouseEnter:Connect(function()
							-- upvalues: (ref) v_u_7, (ref) v_u_106
							v_u_7:Create(v_u_106, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["BackgroundColor3"] = Color3.fromRGB(45, 45, 45)
							}):Play()
						end)
						v_u_106.MouseLeave:Connect(function()
							-- upvalues: (ref) v_u_7, (ref) v_u_106
							v_u_7:Create(v_u_106, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["BackgroundColor3"] = Color3.fromRGB(40, 40, 40)
							}):Play()
						end)
						v_u_106.MouseButton1Click:Connect(function()
							-- upvalues: (ref) v_u_106, (ref) v_u_105, (ref) v_u_110, (ref) v_u_104, (ref) v_u_112, (ref) v_u_7, (ref) v_u_109, (ref) v_u_54, (ref) v_u_55
							Ripple(v_u_106)
							if v_u_105 ~= false then
								v_u_110:TweenSize(UDim2.new(0, 448, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.1, true)
								v_u_112:TweenSize(UDim2.new(0, 431, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.1, true)
								v_u_7:Create(v_u_109, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
									["Rotation"] = 0
								}):Play()
								repeat
									wait()
								until v_u_110.Size == UDim2.new(0, 448, 0, 0)
								v_u_110.Visible = false
								v_u_54.CanvasSize = UDim2.new(0, 0, 0, v_u_55.AbsoluteContentSize.Y)
							else
								v_u_110.Visible = true
								v_u_110:TweenSize(UDim2.new(0, 448, 0, v_u_104), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.1, true)
								v_u_112:TweenSize(UDim2.new(0, 431, 0, v_u_104), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.1, true)
								v_u_7:Create(v_u_109, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
									["Rotation"] = 180
								}):Play()
								repeat
									wait()
								until v_u_110.Size == UDim2.new(0, 448, 0, v_u_104)
								v_u_54.CanvasSize = UDim2.new(0, 0, 0, v_u_55.AbsoluteContentSize.Y)
							end
							v_u_105 = not v_u_105
						end)
						local v115 = next
						local v116 = v_u_104
						local v_u_117 = v_u_109
						local v_u_118 = v_u_112
						local v_u_119 = v_u_110
						local v_u_120 = v_u_105
						local v121 = nil
						while true do
							local v_u_122
							v121, v_u_122 = v115(p101, v121)
							if v121 == nil then
								break
							end
							v103 = v103 + 1
							if v103 <= 2 then
								v_u_104 = v116 + 30
								v116 = v_u_104
							else
								v116 = v103 >= 3 and 100 or v116
							end
							local v_u_123 = Instance.new("TextButton")
							local v124 = Instance.new("UICorner")
							v_u_123.Name = "Item"
							v_u_123.Parent = v_u_118
							v_u_123.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
							v_u_123.Position = UDim2.new(0.0255220421, 0, -0.0595238097012043, 0)
							v_u_123.Size = UDim2.new(0, 425, 0, 24)
							v_u_123.AutoButtonColor = false
							v_u_123.Font = Enum.Font.Gotham
							v_u_123.TextColor3 = Color3.fromRGB(255, 255, 255)
							v_u_123.TextSize = 14
							v_u_123.Text = v_u_122
							v124.CornerRadius = UDim.new(0, 6)
							v124.Name = "ItemCorner"
							v124.Parent = v_u_123
							v_u_123.MouseEnter:Connect(function()
								-- upvalues: (ref) v_u_7, (ref) v_u_123
								v_u_7:Create(v_u_123, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
									["BackgroundColor3"] = Color3.fromRGB(45, 45, 45)
								}):Play()
							end)
							v_u_123.MouseLeave:Connect(function()
								-- upvalues: (ref) v_u_7, (ref) v_u_123
								v_u_7:Create(v_u_123, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
									["BackgroundColor3"] = Color3.fromRGB(40, 40, 40)
								}):Play()
							end)
							v_u_123.MouseButton1Click:Connect(function()
								-- upvalues: (ref) p_u_102, (ref) v_u_122, (ref) v_u_108, (ref) p_u_100, (ref) v_u_119, (ref) v_u_118, (ref) v_u_7, (ref) v_u_117, (ref) v_u_54, (ref) v_u_55, (ref) v_u_120
								pcall(p_u_102, v_u_122)
								v_u_108.Text = p_u_100 .. " : " .. v_u_122
								v_u_119:TweenSize(UDim2.new(0, 448, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.1, true)
								v_u_118:TweenSize(UDim2.new(0, 431, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.1, true)
								v_u_7:Create(v_u_117, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
									["Rotation"] = 0
								}):Play()
								repeat
									wait()
								until v_u_119.Size == UDim2.new(0, 448, 0, 0)
								v_u_119.Visible = false
								v_u_54.CanvasSize = UDim2.new(0, 0, 0, v_u_55.AbsoluteContentSize.Y)
								v_u_120 = not v_u_120
							end)
							v_u_118.CanvasSize = UDim2.new(0, 0, 0, v113.AbsoluteContentSize.Y + 15)
						end
						v_u_54.CanvasSize = UDim2.new(0, 0, 0, v_u_55.AbsoluteContentSize.Y)
					end,
					["Colorpicker"] = function(_, p125, p126, p_u_127)
						-- upvalues: (ref) v_u_54, (ref) v_u_7, (ref) v_u_8, (ref) v_u_9, (ref) v_u_5, (ref) v_u_4, (ref) v_u_55
						local v_u_128 = false
						local v_u_129 = Color3.fromRGB(0, 0, 0)
						local v_u_130 = Color3.fromRGB(0, 0, 0)
						local v_u_131 = nil
						local v_u_132 = nil
						local v_u_133 = 1
						local v_u_134 = 1
						local v_u_135 = 1
						local v_u_136 = false
						local v_u_137 = nil
						local v_u_138 = nil
						local v_u_139 = Instance.new("TextButton")
						local v140 = Instance.new("UICorner")
						local v141 = Instance.new("TextLabel")
						local v_u_142 = Instance.new("Frame")
						local v143 = Instance.new("UICorner")
						v_u_139.Name = "Colorpicker"
						v_u_139.Parent = v_u_54
						v_u_139.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
						v_u_139.Position = UDim2.new(0.245398775, 0, 0.630985916, 0)
						v_u_139.Size = UDim2.new(0, 448, 0, 28)
						v_u_139.AutoButtonColor = false
						v_u_139.Font = Enum.Font.Gotham
						v_u_139.Text = ""
						v_u_139.TextColor3 = Color3.fromRGB(255, 255, 255)
						v_u_139.TextSize = 14
						v_u_139.ClipsDescendants = true
						v140.CornerRadius = UDim.new(0, 6)
						v140.Name = "ColorpickerCorner"
						v140.Parent = v_u_139
						v141.Name = "Title"
						v141.Parent = v_u_139
						v141.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						v141.BackgroundTransparency = 1
						v141.Position = UDim2.new(0.0200892854, 0, 0, 0)
						v141.Size = UDim2.new(0, 0, 0, 28)
						v141.Font = Enum.Font.Gotham
						v141.Text = p125
						v141.TextColor3 = Color3.fromRGB(255, 255, 255)
						v141.TextSize = 14
						v141.TextXAlignment = Enum.TextXAlignment.Left
						v_u_142.Name = "BoxColor"
						v_u_142.Parent = v_u_139
						v_u_142.BackgroundColor3 = p126
						v_u_142.Position = UDim2.new(0.866071403, 0, 0.142857149, 0)
						v_u_142.Size = UDim2.new(0, 54, 0, 19)
						v143.CornerRadius = UDim.new(0, 6)
						v143.Name = "BoxCorner"
						v143.Parent = v_u_142
						local v_u_144 = Instance.new("Frame")
						local v145 = Instance.new("UICorner")
						local v_u_146 = Instance.new("ImageLabel")
						local v147 = Instance.new("UICorner")
						local v_u_148 = Instance.new("ImageLabel")
						local v_u_149 = Instance.new("ImageLabel")
						local v150 = Instance.new("UICorner")
						local v151 = Instance.new("UIGradient")
						local v_u_152 = Instance.new("ImageLabel")
						local v_u_153 = Instance.new("TextButton")
						local v154 = Instance.new("UICorner")
						local v_u_155 = Instance.new("TextButton")
						local v156 = Instance.new("UICorner")
						local v157 = Instance.new("TextLabel")
						local v158 = Instance.new("Frame")
						local v159 = Instance.new("UICorner")
						local v_u_160 = Instance.new("Frame")
						local v161 = Instance.new("UICorner")
						v_u_144.Name = "ColorpickerFrame"
						v_u_144.Parent = v_u_54
						v_u_144.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
						v_u_144.Position = UDim2.new(-0.345092028, 0, 0.816492796, 0)
						v_u_144.Size = UDim2.new(0, 448, 0, 0)
						v_u_144.Visible = false
						v_u_144.ClipsDescendants = true
						v_u_144.BorderSizePixel = 0
						v145.CornerRadius = UDim.new(0, 6)
						v145.Name = "ColorpickerFrameCorner"
						v145.Parent = v_u_144
						v_u_146.Name = "Color"
						v_u_146.Parent = v_u_144
						v_u_146.BackgroundColor3 = p126
						v_u_146.Position = UDim2.new(0, 9, 0, 9)
						v_u_146.Size = UDim2.new(0, 212, 0, 80)
						v_u_146.ZIndex = 10
						v_u_146.Image = "rbxassetid://4155801252"
						v147.CornerRadius = UDim.new(0, 3)
						v147.Name = "ColorCorner"
						v147.Parent = v_u_146
						v_u_148.Name = "ColorSelection"
						v_u_148.Parent = v_u_146
						v_u_148.AnchorPoint = Vector2.new(0.5, 0.5)
						v_u_148.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						v_u_148.BackgroundTransparency = 1
						local v162 = UDim2.new
						local v163
						if p126 then
							v163 = select(3, Color3.toHSV(p126))
						else
							v163 = p126
						end
						v_u_148.Position = v162(v163)
						v_u_148.Size = UDim2.new(0, 18, 0, 18)
						v_u_148.Image = "http://www.roblox.com/asset/?id=4805639000"
						v_u_148.ScaleType = Enum.ScaleType.Fit
						v_u_149.Name = "Hue"
						v_u_149.Parent = v_u_144
						v_u_149.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						v_u_149.Position = UDim2.new(0, 233, 0, 9)
						v_u_149.Size = UDim2.new(0, 25, 0, 80)
						v150.CornerRadius = UDim.new(0, 3)
						v150.Name = "HueCorner"
						v150.Parent = v_u_149
						v151.Color = ColorSequence.new({
							ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)),
							ColorSequenceKeypoint.new(0.2, Color3.fromRGB(234, 255, 0)),
							ColorSequenceKeypoint.new(0.4, Color3.fromRGB(21, 255, 0)),
							ColorSequenceKeypoint.new(0.6, Color3.fromRGB(0, 255, 255)),
							ColorSequenceKeypoint.new(0.8, Color3.fromRGB(0, 17, 255)),
							ColorSequenceKeypoint.new(0.9, Color3.fromRGB(255, 0, 251)),
							ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))
						})
						v151.Rotation = 270
						v151.Name = "HueGradient"
						v151.Parent = v_u_149
						v_u_152.Name = "HueSelection"
						v_u_152.Parent = v_u_149
						v_u_152.AnchorPoint = Vector2.new(0.5, 0.5)
						v_u_152.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						v_u_152.BackgroundTransparency = 1
						v_u_152.Position = UDim2.new(0.48, 0, 1 - select(1, Color3.toHSV(p126)))
						v_u_152.Size = UDim2.new(0, 18, 0, 18)
						v_u_152.Image = "http://www.roblox.com/asset/?id=4805639000"
						v_u_153.Name = "Confirm"
						v_u_153.Parent = v_u_144
						v_u_153.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
						v_u_153.Position = UDim2.new(0.611607134, 0, 0.183673471, 0)
						v_u_153.Size = UDim2.new(0, 162, 0, 28)
						v_u_153.AutoButtonColor = false
						v_u_153.Font = Enum.Font.Gotham
						v_u_153.Text = "Confirm"
						v_u_153.TextColor3 = Color3.fromRGB(255, 255, 255)
						v_u_153.TextSize = 14
						v154.CornerRadius = UDim.new(0, 6)
						v154.Name = "ConfirmCorner"
						v154.Parent = v_u_153
						v_u_155.Name = "RainbowToggle"
						v_u_155.Parent = v_u_144
						v_u_155.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
						v_u_155.Position = UDim2.new(0.611607134, 0, 0.528944969, 0)
						v_u_155.Size = UDim2.new(0, 162, 0, 28)
						v_u_155.AutoButtonColor = false
						v_u_155.Font = Enum.Font.Gotham
						v_u_155.Text = ""
						v_u_155.TextColor3 = Color3.fromRGB(255, 255, 255)
						v_u_155.TextSize = 14
						v156.CornerRadius = UDim.new(0, 6)
						v156.Name = "RainbowToggleCorner"
						v156.Parent = v_u_155
						v157.Name = "RainbowTitle"
						v157.Parent = v_u_155
						v157.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						v157.BackgroundTransparency = 1
						v157.Position = UDim2.new(0.0400892854, 0, 0, 0)
						v157.Size = UDim2.new(0, 0, 0, 28)
						v157.Font = Enum.Font.Gotham
						v157.Text = "Rainbow"
						v157.TextColor3 = Color3.fromRGB(255, 255, 255)
						v157.TextSize = 14
						v157.TextXAlignment = Enum.TextXAlignment.Left
						v158.Name = "RainbowBoxStatus"
						v158.Parent = v_u_155
						v158.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						v158.Position = UDim2.new(0.749000013, 0, 0.143000007, 0)
						v158.Size = UDim2.new(0, 35, 0, 19)
						v159.CornerRadius = UDim.new(1, 0)
						v159.Name = "RainbowBoxCorner"
						v159.Parent = v158
						v_u_160.Name = "RainbowDot"
						v_u_160.Parent = v158
						v_u_160.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
						v_u_160.Position = UDim2.new(0.0799999982, 0, 0.126000002, 0)
						v_u_160.Size = UDim2.new(0, 14, 0, 14)
						v161.CornerRadius = UDim.new(1, 0)
						v161.Name = "RainbowDotCorner"
						v161.Parent = v_u_160
						v_u_139.MouseEnter:Connect(function()
							-- upvalues: (ref) v_u_7, (ref) v_u_139
							v_u_7:Create(v_u_139, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["BackgroundColor3"] = Color3.fromRGB(44, 44, 44)
							}):Play()
						end)
						v_u_139.MouseLeave:Connect(function()
							-- upvalues: (ref) v_u_7, (ref) v_u_139
							v_u_7:Create(v_u_139, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["BackgroundColor3"] = Color3.fromRGB(39, 39, 39)
							}):Play()
						end)
						local function v_u_164(_)
							-- upvalues: (ref) v_u_142, (ref) v_u_133, (ref) v_u_134, (ref) v_u_135, (ref) v_u_146, (ref) p_u_127
							v_u_142.BackgroundColor3 = Color3.fromHSV(v_u_133, v_u_134, v_u_135)
							v_u_146.BackgroundColor3 = Color3.fromHSV(v_u_133, 1, 1)
							pcall(p_u_127, v_u_142.BackgroundColor3)
						end
						local v_u_165 = 1 - math.clamp(v_u_152.AbsolutePosition.Y - v_u_149.AbsolutePosition.Y, 0, v_u_149.AbsoluteSize.Y) / v_u_149.AbsoluteSize.Y
						local v_u_166 = math.clamp(v_u_148.AbsolutePosition.X - v_u_146.AbsolutePosition.X, 0, v_u_146.AbsoluteSize.X) / v_u_146.AbsoluteSize.X
						local v_u_167 = 1 - math.clamp(v_u_148.AbsolutePosition.Y - v_u_146.AbsolutePosition.Y, 0, v_u_146.AbsoluteSize.Y) / v_u_146.AbsoluteSize.Y
						v_u_142.BackgroundColor3 = p126
						v_u_146.BackgroundColor3 = p126
						pcall(p_u_127, v_u_142.BackgroundColor3)
						v_u_146.InputBegan:Connect(function(p168)
							-- upvalues: (ref) v_u_136, (ref) v_u_137, (ref) v_u_8, (ref) v_u_9, (ref) v_u_146, (ref) v_u_148, (ref) v_u_166, (ref) v_u_167, (ref) v_u_164
							if p168.UserInputType == Enum.UserInputType.MouseButton1 then
								if v_u_136 then
									return
								end
								if v_u_137 then
									v_u_137:Disconnect()
								end
								v_u_137 = v_u_8.RenderStepped:Connect(function()
									-- upvalues: (ref) v_u_9, (ref) v_u_146, (ref) v_u_148, (ref) v_u_166, (ref) v_u_167, (ref) v_u_164
									local v169 = math.clamp(v_u_9.X - v_u_146.AbsolutePosition.X, 0, v_u_146.AbsoluteSize.X) / v_u_146.AbsoluteSize.X
									local v170 = math.clamp(v_u_9.Y - v_u_146.AbsolutePosition.Y, 0, v_u_146.AbsoluteSize.Y) / v_u_146.AbsoluteSize.Y
									v_u_148.Position = UDim2.new(v169, 0, v170, 0)
									v_u_166 = v169
									v_u_167 = 1 - v170
									v_u_164(true)
								end)
							end
						end)
						v_u_146.InputEnded:Connect(function(p171)
							-- upvalues: (ref) v_u_137
							if p171.UserInputType == Enum.UserInputType.MouseButton1 and v_u_137 then
								v_u_137:Disconnect()
							end
						end)
						v_u_149.InputBegan:Connect(function(p172)
							-- upvalues: (ref) v_u_136, (ref) v_u_138, (ref) v_u_8, (ref) v_u_9, (ref) v_u_149, (ref) v_u_152, (ref) v_u_165, (ref) v_u_164
							if p172.UserInputType == Enum.UserInputType.MouseButton1 then
								if v_u_136 then
									return
								end
								if v_u_138 then
									v_u_138:Disconnect()
								end
								v_u_138 = v_u_8.RenderStepped:Connect(function()
									-- upvalues: (ref) v_u_9, (ref) v_u_149, (ref) v_u_152, (ref) v_u_165, (ref) v_u_164
									local v173 = math.clamp(v_u_9.Y - v_u_149.AbsolutePosition.Y, 0, v_u_149.AbsoluteSize.Y) / v_u_149.AbsoluteSize.Y
									v_u_152.Position = UDim2.new(0.48, 0, v173, 0)
									v_u_165 = 1 - v173
									v_u_164(true)
								end)
							end
						end)
						v_u_149.InputEnded:Connect(function(p174)
							-- upvalues: (ref) v_u_138
							if p174.UserInputType == Enum.UserInputType.MouseButton1 and v_u_138 then
								v_u_138:Disconnect()
							end
						end)
						v_u_155.MouseEnter:Connect(function()
							-- upvalues: (ref) v_u_7, (ref) v_u_155
							v_u_7:Create(v_u_155, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["BackgroundColor3"] = Color3.fromRGB(45, 45, 45)
							}):Play()
						end)
						v_u_155.MouseLeave:Connect(function()
							-- upvalues: (ref) v_u_7, (ref) v_u_155
							v_u_7:Create(v_u_155, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["BackgroundColor3"] = Color3.fromRGB(40, 40, 40)
							}):Play()
						end)
						v_u_153.MouseEnter:Connect(function()
							-- upvalues: (ref) v_u_7, (ref) v_u_153
							v_u_7:Create(v_u_153, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["BackgroundColor3"] = Color3.fromRGB(45, 45, 45)
							}):Play()
						end)
						v_u_153.MouseLeave:Connect(function()
							-- upvalues: (ref) v_u_7, (ref) v_u_153
							v_u_7:Create(v_u_153, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["BackgroundColor3"] = Color3.fromRGB(40, 40, 40)
							}):Play()
						end)
						v_u_155.MouseButton1Down:Connect(function()
							-- upvalues: (ref) v_u_136, (ref) v_u_137, (ref) v_u_138, (ref) v_u_7, (ref) v_u_160, (ref) v_u_5, (ref) v_u_129, (ref) v_u_142, (ref) v_u_130, (ref) v_u_146, (ref) v_u_131, (ref) v_u_148, (ref) v_u_132, (ref) v_u_152, (ref) v_u_4, (ref) p_u_127
							v_u_136 = not v_u_136
							if v_u_137 then
								v_u_137:Disconnect()
							end
							if v_u_138 then
								v_u_138:Disconnect()
							end
							if v_u_136 then
								local v175 = {
									["BackgroundColor3"] = v_u_5
								}
								v_u_7:Create(v_u_160, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), v175):Play()
								v_u_7:Create(v_u_160, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
									["Position"] = UDim2.new(0.48, 0, 0.126, 0)
								}):Play()
								v_u_129 = v_u_142.BackgroundColor3
								v_u_130 = v_u_146.BackgroundColor3
								v_u_131 = v_u_148.Position
								v_u_132 = v_u_152.Position
								while v_u_136 do
									v_u_142.BackgroundColor3 = Color3.fromHSV(v_u_4.RainbowColorValue, 1, 1)
									v_u_146.BackgroundColor3 = Color3.fromHSV(v_u_4.RainbowColorValue, 1, 1)
									v_u_148.Position = UDim2.new(1, 0, 0, 0)
									v_u_152.Position = UDim2.new(0.48, 0, 0, v_u_4.HueSelectionPosition)
									pcall(p_u_127, v_u_142.BackgroundColor3)
									wait()
								end
							elseif not v_u_136 then
								v_u_7:Create(v_u_160, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
									["BackgroundColor3"] = Color3.fromRGB(40, 40, 40)
								}):Play()
								v_u_7:Create(v_u_160, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
									["Position"] = UDim2.new(0.0799999982, 0, 0.126000002, 0)
								}):Play()
								v_u_142.BackgroundColor3 = v_u_129
								v_u_146.BackgroundColor3 = v_u_130
								v_u_148.Position = v_u_131
								v_u_152.Position = v_u_132
								pcall(p_u_127, v_u_142.BackgroundColor3)
							end
						end)
						v_u_139.MouseButton1Click:Connect(function()
							-- upvalues: (ref) v_u_139, (ref) v_u_128, (ref) v_u_144, (ref) v_u_54, (ref) v_u_55
							Ripple(v_u_139)
							if v_u_128 ~= false then
								v_u_128 = not v_u_128
								v_u_144:TweenSize(UDim2.new(0, 448, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.1, true)
								repeat
									wait()
								until v_u_144.Size == UDim2.new(0, 448, 0, 0)
								v_u_144.Visible = false
								v_u_54.CanvasSize = UDim2.new(0, 0, 0, v_u_55.AbsoluteContentSize.Y)
							else
								v_u_128 = not v_u_128
								v_u_144.Visible = true
								v_u_144:TweenSize(UDim2.new(0, 448, 0, 98), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.1, true)
								repeat
									wait()
								until v_u_144.Size == UDim2.new(0, 448, 0, 98)
								v_u_54.CanvasSize = UDim2.new(0, 0, 0, v_u_55.AbsoluteContentSize.Y)
							end
						end)
						v_u_153.MouseButton1Click:Connect(function()
							-- upvalues: (ref) v_u_128, (ref) v_u_144, (ref) v_u_54, (ref) v_u_55
							v_u_128 = not v_u_128
							v_u_144:TweenSize(UDim2.new(0, 448, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.1, true)
							repeat
								wait()
							until v_u_144.Size == UDim2.new(0, 491, 0, 0)
							v_u_144.Visible = false
							v_u_54.CanvasSize = UDim2.new(0, 0, 0, v_u_55.AbsoluteContentSize.Y)
						end)
						v_u_54.CanvasSize = UDim2.new(0, 0, 0, v_u_55.AbsoluteContentSize.Y)
					end,
					["Textbox"] = function(_, p176, p_u_177, p_u_178)
						-- upvalues: (ref) v_u_54, (ref) v_u_55
						local v179 = Instance.new("TextButton")
						local v180 = Instance.new("UICorner")
						local v_u_181 = Instance.new("TextBox")
						local v182 = Instance.new("UICorner")
						v179.Name = "Textbox"
						v179.Parent = v_u_54
						v179.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
						v179.Position = UDim2.new(-0.230061352, 0, 0.856338024, 0)
						v179.Size = UDim2.new(0, 448, 0, 28)
						v179.AutoButtonColor = false
						v179.Font = Enum.Font.Gotham
						v179.Text = ""
						v179.TextColor3 = Color3.fromRGB(255, 255, 255)
						v179.TextSize = 14
						v180.CornerRadius = UDim.new(0, 6)
						v180.Name = "TextboxCorner"
						v180.Parent = v179
						v_u_181.Parent = v179
						v_u_181.AnchorPoint = Vector2.new(0.5, 0.5)
						v_u_181.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						v_u_181.Position = UDim2.new(0.5, 0, 0.5, 0)
						v_u_181.Size = UDim2.new(0, 349, 0, 20)
						v_u_181.Font = Enum.Font.Gotham
						v_u_181.PlaceholderColor3 = Color3.fromRGB(216, 216, 216)
						v_u_181.PlaceholderText = p176
						v_u_181.Text = ""
						v_u_181.TextColor3 = Color3.fromRGB(255, 255, 255)
						v_u_181.TextSize = 14
						v182.CornerRadius = UDim.new(0, 6)
						v182.Name = "TextBoxCorner"
						v182.Parent = v_u_181
						v_u_181.Focused:Connect(function()
							-- upvalues: (ref) v_u_181
							v_u_181:TweenSize(UDim2.new(0, 399, 0, 20), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
						end)
						v_u_181.FocusLost:Connect(function(p183)
							-- upvalues: (ref) v_u_181, (ref) p_u_178, (ref) p_u_177
							if p183 and #v_u_181.Text > 0 then
								pcall(p_u_178, v_u_181.Text)
								v_u_181:TweenSize(UDim2.new(0, 349, 0, 20), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
								if p_u_177 then
									v_u_181.Text = ""
								end
							end
						end)
						v_u_54.CanvasSize = UDim2.new(0, 0, 0, v_u_55.AbsoluteContentSize.Y)
					end,
					["Label"] = function(_, p184)
						-- upvalues: (ref) v_u_54, (ref) v_u_55
						local v185 = Instance.new("TextButton")
						local v186 = Instance.new("UICorner")
						v185.Name = "Button"
						v185.Parent = v_u_54
						v185.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
						v185.Size = UDim2.new(0, 448, 0, 28)
						v185.AutoButtonColor = false
						v185.Font = Enum.Font.Gotham
						v185.TextColor3 = Color3.fromRGB(255, 255, 255)
						v185.TextSize = 14
						v185.Text = p184
						v185.ClipsDescendants = true
						v186.CornerRadius = UDim.new(0, 6)
						v186.Name = "ButtonCorner"
						v186.Parent = v185
						v_u_54.CanvasSize = UDim2.new(0, 0, 0, v_u_55.AbsoluteContentSize.Y)
					end,
					["Keybind"] = function(_, p187, p188, p_u_189)
						-- upvalues: (ref) v_u_54, (ref) v_u_7, (ref) v_u_55
						local v_u_190 = p188.Name
						local v_u_191 = Instance.new("TextButton")
						local v192 = Instance.new("UICorner")
						local v193 = Instance.new("TextLabel")
						local v194 = Instance.new("Frame")
						local v195 = Instance.new("UICorner")
						local v_u_196 = Instance.new("TextLabel")
						v_u_191.Name = "KeyBind"
						v_u_191.Parent = v_u_54
						v_u_191.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
						v_u_191.Position = UDim2.new(0.156441718, 0, 0.816901445, 0)
						v_u_191.Size = UDim2.new(0, 448, 0, 28)
						v_u_191.AutoButtonColor = false
						v_u_191.Font = Enum.Font.Gotham
						v_u_191.Text = ""
						v_u_191.TextColor3 = Color3.fromRGB(255, 255, 255)
						v_u_191.TextSize = 14
						v_u_191.ClipsDescendants = true
						v192.CornerRadius = UDim.new(0, 6)
						v192.Name = "KeyBindCorner"
						v192.Parent = v_u_191
						v193.Name = "Title"
						v193.Parent = v_u_191
						v193.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						v193.BackgroundTransparency = 1
						v193.Position = UDim2.new(0.0200892854, 0, 0, 0)
						v193.Size = UDim2.new(0, 0, 0, 28)
						v193.Font = Enum.Font.Gotham
						v193.Text = p187
						v193.TextColor3 = Color3.fromRGB(255, 255, 255)
						v193.TextSize = 14
						v193.TextXAlignment = Enum.TextXAlignment.Left
						v194.Name = "BoxBind"
						v194.Parent = v_u_191
						v194.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
						v194.Position = UDim2.new(0.770089269, 0, 0.142857149, 0)
						v194.Size = UDim2.new(0, 97, 0, 19)
						v195.CornerRadius = UDim.new(0, 6)
						v195.Name = "BoxCorner"
						v195.Parent = v194
						v_u_196.Name = "CurrentBind"
						v_u_196.Parent = v194
						v_u_196.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						v_u_196.BackgroundTransparency = 1
						v_u_196.Position = UDim2.new(0.247, 0, -0.210526317, 0)
						v_u_196.Size = UDim2.new(0, 49, 0, 28)
						v_u_196.Font = Enum.Font.Gotham
						v_u_196.Text = v_u_190
						v_u_196.TextColor3 = Color3.fromRGB(255, 255, 255)
						v_u_196.TextSize = 14
						v_u_191.MouseEnter:Connect(function()
							-- upvalues: (ref) v_u_7, (ref) v_u_191
							v_u_7:Create(v_u_191, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["BackgroundColor3"] = Color3.fromRGB(45, 45, 45)
							}):Play()
						end)
						v_u_191.MouseLeave:Connect(function()
							-- upvalues: (ref) v_u_7, (ref) v_u_191
							v_u_7:Create(v_u_191, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								["BackgroundColor3"] = Color3.fromRGB(40, 40, 40)
							}):Play()
						end)
						v_u_191.MouseButton1Click:connect(function(_)
							-- upvalues: (ref) v_u_191, (ref) v_u_196, (ref) v_u_190
							Ripple(v_u_191)
							v_u_196.Text = "..."
							local v197 = game:GetService("UserInputService").InputBegan:wait()
							if v197.KeyCode.Name ~= "Unknown" then
								v_u_196.Text = v197.KeyCode.Name
								v_u_190 = v197.KeyCode.Name
							end
						end)
						game:GetService("UserInputService").InputBegan:connect(function(p198, p199)
							-- upvalues: (ref) v_u_190, (ref) p_u_189
							if not p199 and p198.KeyCode.Name == v_u_190 then
								pcall(p_u_189)
							end
						end)
						v_u_54.CanvasSize = UDim2.new(0, 0, 0, v_u_55.AbsoluteContentSize.Y)
					end
				}
			end
		}
	end
	function Move(p200, p201, p202)
		_G.move1 = true
		while p200.X < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X do
			Wait(p202)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X - p201, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
		end
		while p200.Z < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z do
			Wait(p202)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z - p201))
		end
		while p200.X > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X do
			Wait(p202)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X + p201, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
		end
		while p200.Z > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z do
			Wait(p202)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z + p201))
		end
		while p200.Y < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y do
			Wait(p202)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y - p201, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
		end
		while p200.Y > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y do
			Wait(p202)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y + p201, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
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
	game:GetService("TweenService")
	function Mouse11()
		local v203 = game:service("VirtualUser")
		v203:CaptureController()
		v203:ClickButton1(Vector2.new(100000, 100000))
	end
	local v204 = v_u_4
	local v205 = v_u_4.Window(v204, "Universal\nInstakill", Color3.fromRGB(120, 81, 169))
	local v_u_206 = false
	local v_u_207 = 99.99
	local v208 = v205:Tab("Instakill")
	v208:Slider("Health % Trigger Kill", 1, 100, 99, function(p209)
		-- upvalues: (ref) v_u_207
		v_u_207 = p209
	end)
	v208:Toggle("Instakill", function(p210)
		-- upvalues: (ref) v_u_206, (ref) v_u_207
		v_u_206 = p210
		if p210 then
			task.spawn(function()
				-- upvalues: (ref) v_u_206, (ref) v_u_207
				local v_u_211 = {}
				local function v_u_213(p_u_212)
					-- upvalues: (ref) v_u_211, (ref) v_u_206, (ref) v_u_207
					if not (v_u_211[p_u_212] or game.Players:FindFirstChild(p_u_212.Parent.Name)) then
						v_u_211[p_u_212] = p_u_212:GetPropertyChangedSignal("Health"):Connect(function()
							-- upvalues: (ref) v_u_206, (ref) p_u_212, (ref) v_u_207
							if v_u_206 and p_u_212.Health / p_u_212.MaxHealth * 100 < v_u_207 then
								for _ = 1, 20 do
									p_u_212.Health = 0
								end
							end
						end)
					end
				end
				local v214, v215, v216 = pairs(workspace:GetDescendants())
				while true do
					local v217
					v216, v217 = v214(v215, v216)
					if v216 == nil then
						break
					end
					if v217:IsA("Humanoid") and v217.Parent.Name ~= game.Players.LocalPlayer.Name then
						v_u_213(v217)
					end
				end
				workspace.DescendantAdded:Connect(function(p218)
					-- upvalues: (ref) v_u_213
					if p218:IsA("Humanoid") and p218.Parent.Name ~= game.Players.LocalPlayer.Name then
						v_u_213(p218)
					end
				end)
			end)
		end
	end)
	local v219 = v205:Tab("Extras")
	v219:Button("Admin", function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
	end)
	v219:Button("Server Hop", function()
		local v_u_220 = game.PlaceId
		local v_u_221 = {}
		local v_u_222 = ""
		local v_u_223 = os.date("!*t").hour
		if not pcall(function()
			-- upvalues: (ref) v_u_221
			v_u_221 = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"))
		end) then
			table.insert(v_u_221, v_u_223)
			writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(v_u_221))
		end
		function TPReturner()
			-- upvalues: (ref) v_u_222, (ref) v_u_220, (ref) v_u_221, (ref) v_u_223
			local v224
			if v_u_222 ~= "" then
				v224 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v_u_220 .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. v_u_222))
			else
				v224 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v_u_220 .. "/servers/Public?sortOrder=Asc&limit=100"))
			end
			if v224.nextPageCursor and (v224.nextPageCursor ~= "null" and v224.nextPageCursor ~= nil) then
				v_u_222 = v224.nextPageCursor
			end
			local v225, v226, v227 = pairs(v224.data)
			local v228 = 0
			while true do
				local v229
				v227, v229 = v225(v226, v227)
				if v227 == nil then
					break
				end
				local v230 = true
				local v_u_231 = tostring(v229.id)
				if tonumber(v229.maxPlayers) > tonumber(v229.playing) then
					local v232, v233, v234 = pairs(v_u_221)
					while true do
						local v235
						v234, v235 = v232(v233, v234)
						if v234 == nil then
							break
						end
						if v228 == 0 then
							if tonumber(v_u_223) ~= tonumber(v235) then
								pcall(function()
									-- upvalues: (ref) v_u_221, (ref) v_u_223
									delfile("NotSameServers.json")
									v_u_221 = {}
									table.insert(v_u_221, v_u_223)
								end)
							end
						elseif v_u_231 == tostring(v235) then
							v230 = false
						end
						v228 = v228 + 1
					end
					if v230 == true then
						table.insert(v_u_221, v_u_231)
						wait()
						pcall(function()
							-- upvalues: (ref) v_u_221, (ref) v_u_220, (ref) v_u_231
							writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(v_u_221))
							wait()
							game:GetService("TeleportService"):TeleportToPlaceInstance(v_u_220, v_u_231, game.Players.LocalPlayer)
						end)
						wait(4)
					end
				end
			end
		end
		function Teleport()
			-- upvalues: (ref) v_u_222
			while wait() do
				pcall(function()
					-- upvalues: (ref) v_u_222
					TPReturner()
					if v_u_222 ~= "" then
						TPReturner()
					end
				end)
			end
		end
		Teleport()
	end)
	v219:Button("Anti-Afk - Already Running", function()
		print("Why are you clicking the anti-afk button lmao")
	end)
	v219:Toggle("Infinite Jump", function(p236)
		InfJump = p236
		if InfJumpStarted == nil then
			InfJumpStarted = true
			local v237 = game:GetService("Players").LocalPlayer
			local v238 = v237:GetMouse()
			local v_u_239 = v237.Character:WaitForChild("Humanoid")
			v238.KeyDown:Connect(function(p240)
				-- upvalues: (ref) v_u_239
				if InfJump and p240:byte() == 32 then
					v_u_239:ChangeState("Jumping")
					wait()
					v_u_239:ChangeState("Seated")
				end
			end)
		end
	end)
	local v_u_241 = 40
	v219:Slider("Player Speed", 20, 200, 23, function(p242)
		-- upvalues: (ref) v_u_241
		v_u_241 = p242
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v_u_241
	end)
	local v243 = v205:Tab("Credits")
	v243:Button("Made by Urbanstorm", function()
		pcall(function()
			setclipboard("Urbanstorm")
		end)
	end)
	v243:Button("https://discord.gg/hAsH4bQ6YG - Click to copy", function()
		pcall(function()
			setclipboard("https://discord.gg/hAsH4bQ6YG")
		end)
	end)
	task.spawn(function()
		-- upvalues: (ref) v_u_241
		(function()
			-- upvalues: (ref) v_u_241
			while true do
				pcall(function()
					-- upvalues: (ref) v_u_241
					wait(0.5)
					if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= v_u_241 then
						game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v_u_241
					end
				end)
			end
		end)()
	end)
	task.spawn(function()
		pcall(function()
			game.Players.LocalPlayer.CameraMaxZoomDistance = 1000
			local v244 = game:GetService("Players").LocalPlayer:WaitForChild("PlayerScripts").PlayerModule.CameraModule.ZoomController.Popper
			local v245 = next
			local v246, v247 = getgc()
			while true do
				local v248
				v247, v248 = v245(v246, v247)
				if v247 == nil then
					break
				end
				if getfenv(v248).script == v244 and typeof(v248) == "function" then
					local v249 = next
					local v250, v251 = debug.getconstants(v248)
					while true do
						local v252
						v251, v252 = v249(v250, v251)
						if v251 == nil then
							break
						end
						if tonumber(v252) ~= 0.25 then
							if tonumber(v252) == 0 then
								debug.setconstant(v248, v251, 0.25)
							end
						else
							debug.setconstant(v248, v251, 0)
						end
					end
				end
			end
			local v253, v254, v255 = pairs(game.Players.LocalPlayer.Character:GetChildren())
			while true do
				local v256
				v255, v256 = v253(v254, v255)
				if v255 == nil then
					break
				end
				if v256.ClassName == "Part" or v256.ClassName == "MeshPart" then
					v256.CanCollide = false
				end
			end
		end)
	end)
	task.spawn(function()
		pcall(function()
			local v_u_257 = game:GetService("VirtualUser")
			game:GetService("Players").LocalPlayer.Idled:connect(function()
				-- upvalues: (ref) v_u_257
				v_u_257:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
				wait(1)
				v_u_257:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
			end)
		end)
	end)
end
return v1["script.lua"](...)
