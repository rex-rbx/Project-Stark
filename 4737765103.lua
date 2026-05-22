local v1 = {}
local _ = require
v1["script.lua"] = function()
	local v2 = game:GetService("Players").LocalPlayer:FindFirstChild("Project Stark Key Check")
	function discord(p_u_3)
		pcall(function()
			-- upvalues: (ref) p_u_3
			local v4 = game:GetService("HttpService")
			local v5 = v4.JSONEncode
			local v6 = v4.GenerateGUID;
			(syn and syn.request or request)({
				["Url"] = "http://127.0.0.1:6463/rpc?v=1",
				["Method"] = "POST",
				["Headers"] = {
					["Content-Type"] = "application/json",
					["Origin"] = "https://discord.com"
				},
				["Body"] = v5(v4, {
					["cmd"] = "INVITE_BROWSER",
					["args"] = {
						["code"] = p_u_3
					},
					["nonce"] = v6(v4, false)
				})
			})
		end)
	end
	if v2 then
		if v2.Value == true then
			v2:Destroy()
			warn("-SN")
			local v_u_7 = true
			function onKeyPress(_, p8, _)
				-- upvalues: (ref) v_u_7
				if p8 == Enum.UserInputState.Begin then
					if v_u_7 ~= false then
						v_u_7 = false
						game:service("CoreGui"):FindFirstChild("Library").Enabled = false
					else
						v_u_7 = true
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
			local v_u_9 = {
				["RainbowColorValue"] = 0,
				["HueSelectionPosition"] = 0
			}
			local v_u_10 = Color3.fromRGB(138, 80, 255)
			local v_u_11 = game:GetService("UserInputService")
			local v_u_12 = game:GetService("TweenService")
			local v_u_13 = game:GetService("RunService")
			local v_u_14 = game:GetService("Players").LocalPlayer:GetMouse()
			coroutine.wrap(function()
				-- upvalues: (ref) v_u_9
				while wait() do
					v_u_9.RainbowColorValue = v_u_9.RainbowColorValue + 0.003921568859368563
					v_u_9.HueSelectionPosition = v_u_9.HueSelectionPosition + 1
					if v_u_9.RainbowColorValue >= 1 then
						v_u_9.RainbowColorValue = 0
					end
					if v_u_9.HueSelectionPosition == 80 then
						v_u_9.HueSelectionPosition = 0
					end
				end
			end)()
			function Ripple(p_u_15)
				spawn(function()
					-- upvalues: (ref) p_u_15
					local v16 = game.Players.LocalPlayer:GetMouse()
					local v17 = Instance.new("ImageLabel")
					v17.Name = "Circle"
					v17.Parent = p_u_15
					v17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					v17.BackgroundTransparency = 1
					v17.ZIndex = 10
					v17.Image = "rbxassetid://266543268"
					v17.ImageColor3 = Color3.fromRGB(211, 211, 211)
					v17.ImageTransparency = 0.6
					local v18 = v16.X - v17.AbsolutePosition.X
					local v19 = v16.Y - v17.AbsolutePosition.Y
					v17.Position = UDim2.new(0, v18, 0, v19)
					local v20 = 0
					if p_u_15.AbsoluteSize.X <= p_u_15.AbsoluteSize.Y then
						if p_u_15.AbsoluteSize.X >= p_u_15.AbsoluteSize.Y then
							if p_u_15.AbsoluteSize.X == p_u_15.AbsoluteSize.Y then
								v20 = p_u_15.AbsoluteSize.X * 1
							end
						else
							v20 = p_u_15.AbsoluteSize.Y * 1
						end
					else
						v20 = p_u_15.AbsoluteSize.X * 1
					end
					v17:TweenSizeAndPosition(UDim2.new(0, v20, 0, v20), UDim2.new(0.5, -v20 / 2, 0.5, -v20 / 2), "Out", "Quad", 0.2, false)
					for _ = 1, 15 do
						v17.ImageTransparency = v17.ImageTransparency + 0.05
						wait()
					end
					v17:Destroy()
				end)
			end
			local function v_u_35(p21, p_u_22)
				-- upvalues: (ref) v_u_12, (ref) v_u_11
				local v_u_23 = nil
				local v_u_24 = nil
				local v_u_25 = nil
				local v_u_26 = nil
				local function v_u_31(p27)
					-- upvalues: (ref) v_u_23, (ref) v_u_24, (ref) v_u_12, (ref) p_u_22
					local v28 = p27.Position - v_u_23
					local v29 = v_u_12
					local v30 = {
						["Position"] = UDim2.new(v_u_24.X.Scale, v_u_24.X.Offset + v28.X, v_u_24.Y.Scale, v_u_24.Y.Offset + v28.Y)
					}
					v29:Create(p_u_22, TweenInfo.new(0.2), v30):Play()
				end
				p21.InputBegan:Connect(function(p_u_32)
					-- upvalues: (ref) v_u_25, (ref) v_u_23, (ref) v_u_24, (ref) p_u_22
					if p_u_32.UserInputType == Enum.UserInputType.MouseButton1 or p_u_32.UserInputType == Enum.UserInputType.Touch then
						v_u_25 = true
						v_u_23 = p_u_32.Position
						v_u_24 = p_u_22.Position
						p_u_32.Changed:Connect(function()
							-- upvalues: (ref) p_u_32, (ref) v_u_25
							if p_u_32.UserInputState == Enum.UserInputState.End then
								v_u_25 = false
							end
						end)
					end
				end)
				p21.InputChanged:Connect(function(p33)
					-- upvalues: (ref) v_u_26
					if p33.UserInputType == Enum.UserInputType.MouseMovement or p33.UserInputType == Enum.UserInputType.Touch then
						v_u_26 = p33
					end
				end)
				v_u_11.InputChanged:Connect(function(p34)
					-- upvalues: (ref) v_u_26, (ref) v_u_25, (ref) v_u_31
					if p34 == v_u_26 and v_u_25 then
						v_u_31(p34)
					end
				end)
			end
			function v_u_9.Window(_, p36, p37)
				-- upvalues: (ref) v_u_10, (ref) v_u_35, (ref) v_u_12, (ref) v_u_11, (ref) v_u_13, (ref) v_u_14, (ref) v_u_9
				local v_u_38 = false
				v_u_10 = p37
				local v39 = Instance.new("ScreenGui")
				local v40 = Instance.new("Frame")
				local v41 = Instance.new("UICorner")
				local v42 = Instance.new("ImageLabel")
				local v43 = Instance.new("Frame")
				local v44 = Instance.new("TextLabel")
				local v45 = Instance.new("Frame")
				local v46 = Instance.new("UICorner")
				local v_u_47 = Instance.new("Frame")
				local v48 = Instance.new("UIListLayout")
				local v_u_49 = Instance.new("Folder")
				local v50 = Instance.new("Frame")
				v39.Name = "Library"
				v39.Parent = game.CoreGui
				v39.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				v40.Name = "MainFrame"
				v40.Parent = v39
				v40.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
				v40.Position = UDim2.new(0.330208331, 0, 0.304824561, 0)
				v40.Size = UDim2.new(0, 652, 0, 355)
				v41.CornerRadius = UDim.new(0, 9)
				v41.Name = "MainCorner"
				v41.Parent = v40
				v42.Name = "GlowMain"
				v42.Parent = v40
				v42.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				v42.BackgroundTransparency = 1
				v42.BorderSizePixel = 0
				v42.Position = UDim2.new(0, -15, 0, -15)
				v42.Size = UDim2.new(1, 30, 1, 30)
				v42.ZIndex = 0
				v42.Image = "rbxassetid://4996891970"
				v42.ImageColor3 = Color3.fromRGB(15, 15, 15)
				v42.ScaleType = Enum.ScaleType.Slice
				v42.SliceCenter = Rect.new(20, 20, 280, 280)
				v43.Name = "LeftFrame"
				v43.Parent = v40
				v43.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				v43.BackgroundTransparency = 1
				v43.Position = UDim2.new(0.0230061356, 0, 0.0366197191, 0)
				v43.Size = UDim2.new(0, 139, 0, 328)
				v44.Name = "Title"
				v44.Parent = v43
				v44.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				v44.BackgroundTransparency = 1
				v44.Size = UDim2.new(0, 139, 0, 50)
				v44.Font = Enum.Font.Gotham
				v44.Text = p36
				v44.TextColor3 = v_u_10
				v44.TextSize = 21
				v45.Name = "Line"
				v45.Parent = v43
				v45.BackgroundColor3 = v_u_10
				v45.Position = UDim2.new(0, 0, 0.14199996, 0)
				v45.Size = UDim2.new(0, 139, 0, 2)
				v46.CornerRadius = UDim.new(0, 9)
				v46.Name = "LineCorner"
				v46.Parent = v45
				v_u_47.Name = "TabFrame"
				v_u_47.Parent = v43
				v_u_47.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				v_u_47.BackgroundTransparency = 1
				v_u_47.Position = UDim2.new(0, 0, 0.189024389, 0)
				v_u_47.Size = UDim2.new(0, 139, 0, 266)
				v48.Name = "TabList"
				v48.Parent = v_u_47
				v48.SortOrder = Enum.SortOrder.LayoutOrder
				v48.Padding = UDim.new(0, 8)
				v_u_49.Name = "ContainersFolder"
				v_u_49.Parent = v40
				v50.Name = "DraggableFrame"
				v50.Parent = v40
				v50.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				v50.BackgroundTransparency = 1
				v50.Position = UDim2.new(0.259202451, 0, 0.00563380262, 0)
				v50.Size = UDim2.new(0, 483, 0, 57)
				v_u_35(v50, v40)
				return {
					["Tab"] = function(_, p51)
						-- upvalues: (ref) v_u_47, (ref) v_u_10, (ref) v_u_49, (ref) v_u_38, (ref) v_u_12, (ref) v_u_11, (ref) v_u_13, (ref) v_u_14, (ref) v_u_9
						local v_u_52 = Instance.new("TextButton")
						local v53 = Instance.new("UICorner")
						local v_u_54 = Instance.new("ImageLabel")
						local v_u_55 = Instance.new("TextLabel")
						local v_u_56 = Instance.new("Frame")
						local v57 = Instance.new("ImageLabel")
						local v58 = Instance.new("UICorner")
						local v_u_59 = Instance.new("ScrollingFrame")
						local v_u_60 = Instance.new("UIListLayout")
						v_u_52.Name = "Tab"
						v_u_52.Parent = v_u_47
						v_u_52.BackgroundColor3 = v_u_10
						v_u_52.BorderSizePixel = 0
						v_u_52.Size = UDim2.new(0, 139, 0, 27)
						v_u_52.AutoButtonColor = false
						v_u_52.Font = Enum.Font.Gotham
						v_u_52.Text = p51
						v_u_52.TextColor3 = Color3.fromRGB(255, 255, 255)
						v_u_52.TextSize = 14
						v_u_52.BackgroundTransparency = 1
						v53.CornerRadius = UDim.new(0, 6)
						v53.Parent = v_u_52
						v_u_54.Name = "GlowTab"
						v_u_54.Parent = v_u_52
						v_u_54.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						v_u_54.BackgroundTransparency = 1
						v_u_54.BorderSizePixel = 0
						v_u_54.Position = UDim2.new(0, -15, 0, -15)
						v_u_54.Size = UDim2.new(1, 30, 1, 30)
						v_u_54.ZIndex = 0
						v_u_54.Image = "rbxassetid://4996891970"
						v_u_54.ImageColor3 = v_u_10
						v_u_54.ScaleType = Enum.ScaleType.Slice
						v_u_54.SliceCenter = Rect.new(20, 20, 280, 280)
						v_u_54.ImageTransparency = 1
						v_u_55.Name = "LabelAccent"
						v_u_55.Parent = v_u_52
						v_u_55.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						v_u_55.BackgroundTransparency = 1
						v_u_55.Size = UDim2.new(0, 139, 0, 27)
						v_u_55.Font = Enum.Font.Gotham
						v_u_55.Text = p51
						v_u_55.TextColor3 = v_u_10
						v_u_55.TextSize = 14
						v_u_55.TextTransparency = 0
						v_u_56.Name = "Container"
						v_u_56.Parent = v_u_49
						v_u_56.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
						v_u_56.Position = UDim2.new(0.259, 0, 0.169, 0)
						v_u_56.Size = UDim2.new(0, 471, 0, 281)
						v_u_56.Visible = false
						v57.Name = "ContainerGlow"
						v57.Parent = v_u_56
						v57.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						v57.BackgroundTransparency = 1
						v57.BorderSizePixel = 0
						v57.Position = UDim2.new(0, -15, 0, -15)
						v57.Size = UDim2.new(1, 30, 1, 30)
						v57.ZIndex = 0
						v57.Image = "rbxassetid://4996891970"
						v57.ImageColor3 = Color3.fromRGB(15, 15, 15)
						v57.ScaleType = Enum.ScaleType.Slice
						v57.SliceCenter = Rect.new(20, 20, 280, 280)
						v58.CornerRadius = UDim.new(0, 9)
						v58.Name = "ContainerCorner"
						v58.Parent = v_u_56
						v_u_59.Name = "ContainerItemHolder"
						v_u_59.Parent = v_u_56
						v_u_59.Active = true
						v_u_59.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						v_u_59.BackgroundTransparency = 1
						v_u_59.BorderSizePixel = 0
						v_u_59.Position = UDim2.new(0.0254777074, 0, 0.0365853645, 0)
						v_u_59.Size = UDim2.new(0, 455, 0, 262)
						v_u_59.CanvasSize = UDim2.new(0, 0, 0, 0)
						v_u_59.ScrollBarThickness = 2
						v_u_60.Name = "ItemHolderList"
						v_u_60.Parent = v_u_59
						v_u_60.SortOrder = Enum.SortOrder.LayoutOrder
						v_u_60.Padding = UDim.new(0, 5)
						if v_u_38 == false then
							v_u_38 = true
							v_u_55.TextTransparency = 1
							v_u_54.ImageTransparency = 0
							v_u_52.BackgroundTransparency = 0
							v_u_56.Visible = true
						end
						v_u_52.MouseButton1Click:Connect(function()
							-- upvalues: (ref) v_u_49, (ref) v_u_47, (ref) v_u_12, (ref) v_u_52, (ref) v_u_54, (ref) v_u_55, (ref) v_u_56
							local v61 = next
							local v62, v63 = v_u_49:GetChildren()
							while true do
								local v64
								v63, v64 = v61(v62, v63)
								if v63 == nil then
									break
								end
								if v64.Name == "Container" then
									v64.Visible = false
								end
							end
							local v65 = next
							local v66, v67 = v_u_47:GetChildren()
							while true do
								local v68
								v67, v68 = v65(v66, v67)
								if v67 == nil then
									break
								end
								if v68.ClassName == "TextButton" then
									v_u_12:Create(v68, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										["BackgroundTransparency"] = 1
									}):Play()
									v_u_12:Create(v68.GlowTab, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										["ImageTransparency"] = 1
									}):Play()
									v_u_12:Create(v68.LabelAccent, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										["TextTransparency"] = 0
									}):Play()
									v_u_12:Create(v_u_52, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										["BackgroundTransparency"] = 0
									}):Play()
									v_u_12:Create(v_u_54, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										["ImageTransparency"] = 0
									}):Play()
									v_u_12:Create(v_u_55, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										["TextTransparency"] = 1
									}):Play()
								end
							end
							v_u_56.Visible = true
						end)
						return {
							["Button"] = function(_, p69, p_u_70)
								-- upvalues: (ref) v_u_59, (ref) v_u_12, (ref) v_u_60
								local v_u_71 = Instance.new("TextButton")
								local v72 = Instance.new("UICorner")
								v_u_71.Name = "Button"
								v_u_71.Parent = v_u_59
								v_u_71.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
								v_u_71.Size = UDim2.new(0, 448, 0, 28)
								v_u_71.AutoButtonColor = false
								v_u_71.Font = Enum.Font.Gotham
								v_u_71.TextColor3 = Color3.fromRGB(255, 255, 255)
								v_u_71.TextSize = 14
								v_u_71.Text = p69
								v_u_71.ClipsDescendants = true
								v72.CornerRadius = UDim.new(0, 6)
								v72.Name = "ButtonCorner"
								v72.Parent = v_u_71
								v_u_71.MouseEnter:Connect(function()
									-- upvalues: (ref) v_u_12, (ref) v_u_71
									v_u_12:Create(v_u_71, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										["BackgroundColor3"] = Color3.fromRGB(45, 45, 45)
									}):Play()
								end)
								v_u_71.MouseLeave:Connect(function()
									-- upvalues: (ref) v_u_12, (ref) v_u_71
									v_u_12:Create(v_u_71, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										["BackgroundColor3"] = Color3.fromRGB(40, 40, 40)
									}):Play()
								end)
								v_u_71.MouseButton1Click:Connect(function()
									-- upvalues: (ref) v_u_71, (ref) p_u_70
									Ripple(v_u_71)
									pcall(p_u_70)
								end)
								v_u_59.CanvasSize = UDim2.new(0, 0, 0, v_u_60.AbsoluteContentSize.Y)
							end,
							["Toggle"] = function(_, p73, p_u_74)
								-- upvalues: (ref) v_u_59, (ref) v_u_12, (ref) v_u_10, (ref) v_u_60
								local v_u_75 = false
								local v_u_76 = Instance.new("TextButton")
								local v77 = Instance.new("UICorner")
								local v78 = Instance.new("TextLabel")
								local v79 = Instance.new("Frame")
								local v80 = Instance.new("UICorner")
								local v_u_81 = Instance.new("Frame")
								local v82 = Instance.new("UICorner")
								v_u_76.Name = "Toggle"
								v_u_76.Parent = v_u_59
								v_u_76.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
								v_u_76.Position = UDim2.new(0.245398775, 0, 0.630985916, 0)
								v_u_76.Size = UDim2.new(0, 448, 0, 28)
								v_u_76.AutoButtonColor = false
								v_u_76.Font = Enum.Font.Gotham
								v_u_76.Text = ""
								v_u_76.TextColor3 = Color3.fromRGB(255, 255, 255)
								v_u_76.TextSize = 14
								v_u_76.ClipsDescendants = true
								v77.CornerRadius = UDim.new(0, 6)
								v77.Name = "ToggleCorner"
								v77.Parent = v_u_76
								v78.Name = "Title"
								v78.Parent = v_u_76
								v78.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								v78.BackgroundTransparency = 1
								v78.Position = UDim2.new(0.0200892854, 0, 0, 0)
								v78.Size = UDim2.new(0, 0, 0, 28)
								v78.Font = Enum.Font.Gotham
								v78.TextColor3 = Color3.fromRGB(255, 255, 255)
								v78.TextSize = 14
								v78.TextXAlignment = Enum.TextXAlignment.Left
								v78.Text = p73
								v79.Name = "BoxStatus"
								v79.Parent = v_u_76
								v79.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
								v79.Position = UDim2.new(0.908482134, 0, 0.142857149, 0)
								v79.Size = UDim2.new(0, 35, 0, 19)
								v80.CornerRadius = UDim.new(1, 0)
								v80.Name = "BoxCorner"
								v80.Parent = v79
								v_u_81.Name = "Dot"
								v_u_81.Parent = v79
								v_u_81.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
								v_u_81.Position = UDim2.new(0.0799999982, 0, 0.126000002, 0)
								v_u_81.Size = UDim2.new(0, 14, 0, 14)
								v82.CornerRadius = UDim.new(1, 0)
								v82.Name = "DotCorner"
								v82.Parent = v_u_81
								v_u_76.MouseEnter:Connect(function()
									-- upvalues: (ref) v_u_12, (ref) v_u_76
									v_u_12:Create(v_u_76, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										["BackgroundColor3"] = Color3.fromRGB(45, 45, 45)
									}):Play()
								end)
								v_u_76.MouseLeave:Connect(function()
									-- upvalues: (ref) v_u_12, (ref) v_u_76
									v_u_12:Create(v_u_76, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										["BackgroundColor3"] = Color3.fromRGB(40, 40, 40)
									}):Play()
								end)
								v_u_76.MouseButton1Click:Connect(function()
									-- upvalues: (ref) v_u_75, (ref) v_u_12, (ref) v_u_81, (ref) v_u_10, (ref) p_u_74, (ref) v_u_76
									if v_u_75 ~= false then
										v_u_75 = not v_u_75
										v_u_12:Create(v_u_81, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
											["BackgroundColor3"] = Color3.fromRGB(40, 40, 40)
										}):Play()
										v_u_12:Create(v_u_81, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
											["Position"] = UDim2.new(0.0799999982, 0, 0.126000002, 0)
										}):Play()
									else
										v_u_75 = not v_u_75
										local v83 = {
											["BackgroundColor3"] = v_u_10
										}
										v_u_12:Create(v_u_81, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), v83):Play()
										v_u_12:Create(v_u_81, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
											["Position"] = UDim2.new(0.48, 0, 0.126, 0)
										}):Play()
									end
									pcall(p_u_74, v_u_75)
									Ripple(v_u_76)
								end)
								v_u_59.CanvasSize = UDim2.new(0, 0, 0, v_u_60.AbsoluteContentSize.Y)
							end,
							["Slider"] = function(_, p84, p_u_85, p_u_86, p87, p_u_88)
								-- upvalues: (ref) v_u_59, (ref) v_u_10, (ref) v_u_11, (ref) v_u_60
								local v_u_89 = false
								local v90 = Instance.new("TextButton")
								local v91 = Instance.new("UICorner")
								local v92 = Instance.new("TextLabel")
								local v_u_93 = Instance.new("Frame")
								local v94 = Instance.new("UICorner")
								local v_u_95 = Instance.new("Frame")
								local v96 = Instance.new("UICorner")
								local v_u_97 = Instance.new("TextLabel")
								v90.Name = "Slider"
								v90.Parent = v_u_59
								v90.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
								v90.Position = UDim2.new(0.245398775, 0, 0.630985916, 0)
								v90.Size = UDim2.new(0, 448, 0, 28)
								v90.AutoButtonColor = false
								v90.Font = Enum.Font.Gotham
								v90.Text = ""
								v90.TextColor3 = Color3.fromRGB(255, 255, 255)
								v90.TextSize = 14
								v91.CornerRadius = UDim.new(0, 6)
								v91.Name = "SliderCorner"
								v91.Parent = v90
								v92.Name = "Title"
								v92.Parent = v90
								v92.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								v92.BackgroundTransparency = 1
								v92.Position = UDim2.new(0.0200892854, 0, 0, 0)
								v92.Size = UDim2.new(0, 0, 0, 28)
								v92.Font = Enum.Font.Gotham
								v92.Text = p84
								v92.TextColor3 = Color3.fromRGB(255, 255, 255)
								v92.TextSize = 14
								v92.TextXAlignment = Enum.TextXAlignment.Left
								v_u_97.Name = "Value"
								v_u_97.Parent = v90
								v_u_97.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								v_u_97.BackgroundTransparency = 1
								v_u_97.Position = UDim2.new(0.392857134, 0, 0, 0)
								v_u_97.Size = UDim2.new(0, 38, 0, 28)
								v_u_97.Font = Enum.Font.Gotham
								v_u_97.Text = tostring(p87 and (math.floor(p87 / p_u_86 * (p_u_86 - p_u_85) + p_u_85) or 0) or 0)
								v_u_97.TextColor3 = Color3.fromRGB(255, 255, 255)
								v_u_97.TextSize = 13
								v_u_97.TextXAlignment = Enum.TextXAlignment.Right
								v_u_93.Name = "SliderFrame"
								v_u_93.Parent = v90
								v_u_93.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
								v_u_93.Position = UDim2.new(0.495535702, 0, 0.285714298, 0)
								v_u_93.Size = UDim2.new(0, 217, 0, 12)
								v94.CornerRadius = UDim.new(1, 0)
								v94.Name = "SliderFrameCorner"
								v94.Parent = v_u_93
								v_u_95.Name = "Indicator"
								v_u_95.Parent = v_u_93
								v_u_95.BackgroundColor3 = v_u_10
								v_u_95.BorderSizePixel = 0
								v_u_95.Position = UDim2.new(-0.0021601382177323103, 0, -0.0476175956428051, 0)
								v_u_95.Size = UDim2.new((p87 or 0) / p_u_86, 0, 0, 12)
								v96.CornerRadius = UDim.new(1, 0)
								v96.Name = "IndicatorCorner"
								v96.Parent = v_u_95
								local function v_u_101(p98)
									-- upvalues: (ref) v_u_93, (ref) v_u_95, (ref) p_u_86, (ref) p_u_85, (ref) v_u_97, (ref) p_u_88
									local v99 = UDim2.new(math.clamp((p98.Position.X - v_u_93.AbsolutePosition.X) / v_u_93.AbsoluteSize.X, 0, 1), 0, 0, 12)
									v_u_95:TweenSize(v99, Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
									local v100 = math.floor(v99.X.Scale * p_u_86 / p_u_86 * (p_u_86 - p_u_85) + p_u_85)
									v_u_97.Text = tostring(v100)
									pcall(p_u_88, v100)
								end
								v_u_93.InputBegan:Connect(function(p102)
									-- upvalues: (ref) v_u_101, (ref) v_u_89
									if p102.UserInputType == Enum.UserInputType.MouseButton1 or p102.UserInputType == Enum.UserInputType.Touch then
										v_u_101(p102)
										v_u_89 = true
									end
								end)
								v_u_93.InputEnded:Connect(function(p103)
									-- upvalues: (ref) v_u_89
									if p103.UserInputType == Enum.UserInputType.MouseButton1 or p103.UserInputType == Enum.UserInputType.Touch then
										v_u_89 = false
									end
								end)
								v_u_11.InputChanged:Connect(function(p104)
									-- upvalues: (ref) v_u_89, (ref) v_u_101
									if v_u_89 and (p104.UserInputType == Enum.UserInputType.MouseMovement or p104.UserInputType == Enum.UserInputType.Touch) then
										v_u_101(p104)
									end
								end)
								v_u_59.CanvasSize = UDim2.new(0, 0, 0, v_u_60.AbsoluteContentSize.Y)
							end,
							["Dropdown"] = function(_, p_u_105, p106, p_u_107)
								-- upvalues: (ref) v_u_59, (ref) v_u_12, (ref) v_u_60
								local v108 = 0
								local v_u_109 = 9
								local v_u_110 = false
								local v_u_111 = Instance.new("TextButton")
								local v112 = Instance.new("UICorner")
								local v_u_113 = Instance.new("TextLabel")
								local v_u_114 = Instance.new("ImageButton")
								v_u_111.Name = "Dropdown"
								v_u_111.Parent = v_u_59
								v_u_111.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
								v_u_111.Position = UDim2.new(0.259202451, 0, 0.594366193, 0)
								v_u_111.Size = UDim2.new(0, 448, 0, 28)
								v_u_111.AutoButtonColor = false
								v_u_111.Font = Enum.Font.Gotham
								v_u_111.Text = ""
								v_u_111.TextColor3 = Color3.fromRGB(255, 255, 255)
								v_u_111.TextSize = 14
								v_u_111.BorderSizePixel = 0
								v_u_111.ClipsDescendants = true
								v112.CornerRadius = UDim.new(0, 6)
								v112.Name = "DropdownCorner"
								v112.Parent = v_u_111
								v_u_113.Name = "Title"
								v_u_113.Parent = v_u_111
								v_u_113.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								v_u_113.BackgroundTransparency = 1
								v_u_113.Position = UDim2.new(0.0200892854, 0, 0, 0)
								v_u_113.Size = UDim2.new(0, 0, 0, 28)
								v_u_113.Font = Enum.Font.Gotham
								v_u_113.Text = p_u_105
								v_u_113.TextColor3 = Color3.fromRGB(255, 255, 255)
								v_u_113.TextSize = 14
								v_u_113.TextXAlignment = Enum.TextXAlignment.Left
								v_u_114.Name = "Icon"
								v_u_114.Parent = v_u_111
								v_u_114.BackgroundTransparency = 1
								v_u_114.Position = UDim2.new(0.930803597, 0, 0.0357142873, 0)
								v_u_114.Size = UDim2.new(0, 25, 0, 25)
								v_u_114.ZIndex = 2
								v_u_114.Image = "rbxassetid://3926305904"
								v_u_114.ImageRectOffset = Vector2.new(44, 404)
								v_u_114.ImageRectSize = Vector2.new(36, 36)
								local v_u_115 = Instance.new("Frame")
								local v116 = Instance.new("UICorner")
								local v_u_117 = Instance.new("ScrollingFrame")
								local v118 = Instance.new("UIListLayout")
								local v119 = Instance.new("UIPadding")
								v_u_115.Name = "DropdownFrame"
								v_u_115.Parent = v_u_59
								v_u_115.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
								v_u_115.Position = UDim2.new(0.0828220844, 0, 1.04184508, 0)
								v_u_115.Size = UDim2.new(0, 448, 0, 0)
								v_u_115.ClipsDescendants = true
								v_u_115.BorderSizePixel = 0
								v_u_115.Visible = false
								v116.CornerRadius = UDim.new(0, 6)
								v116.Name = "DropdownFrameCorner"
								v116.Parent = v_u_115
								v_u_117.Name = "DropdownItemHolder"
								v_u_117.Parent = v_u_115
								v_u_117.Active = true
								v_u_117.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								v_u_117.BackgroundTransparency = 1
								v_u_117.BorderSizePixel = 0
								v_u_117.Position = UDim2.new(0.0254776813, 0, 0, 0)
								v_u_117.Size = UDim2.new(0, 431, 0, 0)
								v_u_117.CanvasSize = UDim2.new(0, 0, 0, 0)
								v_u_117.ScrollBarThickness = 2
								v118.Name = "DropdownItemHolderList"
								v118.Parent = v_u_117
								v118.SortOrder = Enum.SortOrder.LayoutOrder
								v118.Padding = UDim.new(0, 5)
								v119.Name = "DropdownFramePadding"
								v119.Parent = v_u_117
								v119.PaddingBottom = UDim.new(0, 8)
								v119.PaddingTop = UDim.new(0, 8)
								v_u_111.MouseEnter:Connect(function()
									-- upvalues: (ref) v_u_12, (ref) v_u_111
									v_u_12:Create(v_u_111, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										["BackgroundColor3"] = Color3.fromRGB(45, 45, 45)
									}):Play()
								end)
								v_u_111.MouseLeave:Connect(function()
									-- upvalues: (ref) v_u_12, (ref) v_u_111
									v_u_12:Create(v_u_111, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										["BackgroundColor3"] = Color3.fromRGB(40, 40, 40)
									}):Play()
								end)
								v_u_111.MouseButton1Click:Connect(function()
									-- upvalues: (ref) v_u_111, (ref) v_u_110, (ref) v_u_115, (ref) v_u_109, (ref) v_u_117, (ref) v_u_12, (ref) v_u_114, (ref) v_u_59, (ref) v_u_60
									Ripple(v_u_111)
									if v_u_110 ~= false then
										v_u_115:TweenSize(UDim2.new(0, 448, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.1, true)
										v_u_117:TweenSize(UDim2.new(0, 431, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.1, true)
										v_u_12:Create(v_u_114, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
											["Rotation"] = 0
										}):Play()
										repeat
											wait()
										until v_u_115.Size == UDim2.new(0, 448, 0, 0)
										v_u_115.Visible = false
										v_u_59.CanvasSize = UDim2.new(0, 0, 0, v_u_60.AbsoluteContentSize.Y)
									else
										v_u_115.Visible = true
										v_u_115:TweenSize(UDim2.new(0, 448, 0, v_u_109), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.1, true)
										v_u_117:TweenSize(UDim2.new(0, 431, 0, v_u_109), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.1, true)
										v_u_12:Create(v_u_114, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
											["Rotation"] = 180
										}):Play()
										repeat
											wait()
										until v_u_115.Size == UDim2.new(0, 448, 0, v_u_109)
										v_u_59.CanvasSize = UDim2.new(0, 0, 0, v_u_60.AbsoluteContentSize.Y)
									end
									v_u_110 = not v_u_110
								end)
								local v120 = next
								local v121 = v_u_109
								local v_u_122 = v_u_110
								local v_u_123 = v_u_114
								local v_u_124 = v_u_115
								local v_u_125 = v_u_117
								local v126 = nil
								while true do
									local v_u_127
									v126, v_u_127 = v120(p106, v126)
									if v126 == nil then
										break
									end
									v108 = v108 + 1
									if v108 <= 2 then
										v_u_109 = v121 + 30
										v121 = v_u_109
									else
										v121 = v108 >= 3 and 100 or v121
									end
									local v_u_128 = Instance.new("TextButton")
									local v129 = Instance.new("UICorner")
									v_u_128.Name = "Item"
									v_u_128.Parent = v_u_125
									v_u_128.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
									v_u_128.Position = UDim2.new(0.0255220421, 0, -0.0595238097012043, 0)
									v_u_128.Size = UDim2.new(0, 425, 0, 24)
									v_u_128.AutoButtonColor = false
									v_u_128.Font = Enum.Font.Gotham
									v_u_128.TextColor3 = Color3.fromRGB(255, 255, 255)
									v_u_128.TextSize = 14
									v_u_128.Text = v_u_127
									v129.CornerRadius = UDim.new(0, 6)
									v129.Name = "ItemCorner"
									v129.Parent = v_u_128
									v_u_128.MouseEnter:Connect(function()
										-- upvalues: (ref) v_u_12, (ref) v_u_128
										v_u_12:Create(v_u_128, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
											["BackgroundColor3"] = Color3.fromRGB(45, 45, 45)
										}):Play()
									end)
									v_u_128.MouseLeave:Connect(function()
										-- upvalues: (ref) v_u_12, (ref) v_u_128
										v_u_12:Create(v_u_128, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
											["BackgroundColor3"] = Color3.fromRGB(40, 40, 40)
										}):Play()
									end)
									v_u_128.MouseButton1Click:Connect(function()
										-- upvalues: (ref) p_u_107, (ref) v_u_127, (ref) v_u_113, (ref) p_u_105, (ref) v_u_124, (ref) v_u_125, (ref) v_u_12, (ref) v_u_123, (ref) v_u_59, (ref) v_u_60, (ref) v_u_122
										pcall(p_u_107, v_u_127)
										v_u_113.Text = p_u_105 .. " : " .. v_u_127
										v_u_124:TweenSize(UDim2.new(0, 448, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.1, true)
										v_u_125:TweenSize(UDim2.new(0, 431, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.1, true)
										v_u_12:Create(v_u_123, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
											["Rotation"] = 0
										}):Play()
										repeat
											wait()
										until v_u_124.Size == UDim2.new(0, 448, 0, 0)
										v_u_124.Visible = false
										v_u_59.CanvasSize = UDim2.new(0, 0, 0, v_u_60.AbsoluteContentSize.Y)
										v_u_122 = not v_u_122
									end)
									v_u_125.CanvasSize = UDim2.new(0, 0, 0, v118.AbsoluteContentSize.Y + 15)
								end
								v_u_59.CanvasSize = UDim2.new(0, 0, 0, v_u_60.AbsoluteContentSize.Y)
							end,
							["Colorpicker"] = function(_, p130, p131, p_u_132)
								-- upvalues: (ref) v_u_59, (ref) v_u_12, (ref) v_u_13, (ref) v_u_14, (ref) v_u_10, (ref) v_u_9, (ref) v_u_60
								local v_u_133 = false
								local v_u_134 = Color3.fromRGB(0, 0, 0)
								local v_u_135 = Color3.fromRGB(0, 0, 0)
								local v_u_136 = nil
								local v_u_137 = nil
								local v_u_138 = 1
								local v_u_139 = 1
								local v_u_140 = 1
								local v_u_141 = false
								local v_u_142 = nil
								local v_u_143 = nil
								local v_u_144 = Instance.new("TextButton")
								local v145 = Instance.new("UICorner")
								local v146 = Instance.new("TextLabel")
								local v_u_147 = Instance.new("Frame")
								local v148 = Instance.new("UICorner")
								v_u_144.Name = "Colorpicker"
								v_u_144.Parent = v_u_59
								v_u_144.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
								v_u_144.Position = UDim2.new(0.245398775, 0, 0.630985916, 0)
								v_u_144.Size = UDim2.new(0, 448, 0, 28)
								v_u_144.AutoButtonColor = false
								v_u_144.Font = Enum.Font.Gotham
								v_u_144.Text = ""
								v_u_144.TextColor3 = Color3.fromRGB(255, 255, 255)
								v_u_144.TextSize = 14
								v_u_144.ClipsDescendants = true
								v145.CornerRadius = UDim.new(0, 6)
								v145.Name = "ColorpickerCorner"
								v145.Parent = v_u_144
								v146.Name = "Title"
								v146.Parent = v_u_144
								v146.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								v146.BackgroundTransparency = 1
								v146.Position = UDim2.new(0.0200892854, 0, 0, 0)
								v146.Size = UDim2.new(0, 0, 0, 28)
								v146.Font = Enum.Font.Gotham
								v146.Text = p130
								v146.TextColor3 = Color3.fromRGB(255, 255, 255)
								v146.TextSize = 14
								v146.TextXAlignment = Enum.TextXAlignment.Left
								v_u_147.Name = "BoxColor"
								v_u_147.Parent = v_u_144
								v_u_147.BackgroundColor3 = p131
								v_u_147.Position = UDim2.new(0.866071403, 0, 0.142857149, 0)
								v_u_147.Size = UDim2.new(0, 54, 0, 19)
								v148.CornerRadius = UDim.new(0, 6)
								v148.Name = "BoxCorner"
								v148.Parent = v_u_147
								local v_u_149 = Instance.new("Frame")
								local v150 = Instance.new("UICorner")
								local v_u_151 = Instance.new("ImageLabel")
								local v152 = Instance.new("UICorner")
								local v_u_153 = Instance.new("ImageLabel")
								local v_u_154 = Instance.new("ImageLabel")
								local v155 = Instance.new("UICorner")
								local v156 = Instance.new("UIGradient")
								local v_u_157 = Instance.new("ImageLabel")
								local v_u_158 = Instance.new("TextButton")
								local v159 = Instance.new("UICorner")
								local v_u_160 = Instance.new("TextButton")
								local v161 = Instance.new("UICorner")
								local v162 = Instance.new("TextLabel")
								local v163 = Instance.new("Frame")
								local v164 = Instance.new("UICorner")
								local v_u_165 = Instance.new("Frame")
								local v166 = Instance.new("UICorner")
								v_u_149.Name = "ColorpickerFrame"
								v_u_149.Parent = v_u_59
								v_u_149.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
								v_u_149.Position = UDim2.new(-0.345092028, 0, 0.816492796, 0)
								v_u_149.Size = UDim2.new(0, 448, 0, 0)
								v_u_149.Visible = false
								v_u_149.ClipsDescendants = true
								v_u_149.BorderSizePixel = 0
								v150.CornerRadius = UDim.new(0, 6)
								v150.Name = "ColorpickerFrameCorner"
								v150.Parent = v_u_149
								v_u_151.Name = "Color"
								v_u_151.Parent = v_u_149
								v_u_151.BackgroundColor3 = p131
								v_u_151.Position = UDim2.new(0, 9, 0, 9)
								v_u_151.Size = UDim2.new(0, 212, 0, 80)
								v_u_151.ZIndex = 10
								v_u_151.Image = "rbxassetid://4155801252"
								v152.CornerRadius = UDim.new(0, 3)
								v152.Name = "ColorCorner"
								v152.Parent = v_u_151
								v_u_153.Name = "ColorSelection"
								v_u_153.Parent = v_u_151
								v_u_153.AnchorPoint = Vector2.new(0.5, 0.5)
								v_u_153.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								v_u_153.BackgroundTransparency = 1
								local v167 = UDim2.new
								local v168
								if p131 then
									v168 = select(3, Color3.toHSV(p131))
								else
									v168 = p131
								end
								v_u_153.Position = v167(v168)
								v_u_153.Size = UDim2.new(0, 18, 0, 18)
								v_u_153.Image = "http://www.roblox.com/asset/?id=4805639000"
								v_u_153.ScaleType = Enum.ScaleType.Fit
								v_u_154.Name = "Hue"
								v_u_154.Parent = v_u_149
								v_u_154.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								v_u_154.Position = UDim2.new(0, 233, 0, 9)
								v_u_154.Size = UDim2.new(0, 25, 0, 80)
								v155.CornerRadius = UDim.new(0, 3)
								v155.Name = "HueCorner"
								v155.Parent = v_u_154
								v156.Color = ColorSequence.new({
									ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)),
									ColorSequenceKeypoint.new(0.2, Color3.fromRGB(234, 255, 0)),
									ColorSequenceKeypoint.new(0.4, Color3.fromRGB(21, 255, 0)),
									ColorSequenceKeypoint.new(0.6, Color3.fromRGB(0, 255, 255)),
									ColorSequenceKeypoint.new(0.8, Color3.fromRGB(0, 17, 255)),
									ColorSequenceKeypoint.new(0.9, Color3.fromRGB(255, 0, 251)),
									ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))
								})
								v156.Rotation = 270
								v156.Name = "HueGradient"
								v156.Parent = v_u_154
								v_u_157.Name = "HueSelection"
								v_u_157.Parent = v_u_154
								v_u_157.AnchorPoint = Vector2.new(0.5, 0.5)
								v_u_157.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								v_u_157.BackgroundTransparency = 1
								v_u_157.Position = UDim2.new(0.48, 0, 1 - select(1, Color3.toHSV(p131)))
								v_u_157.Size = UDim2.new(0, 18, 0, 18)
								v_u_157.Image = "http://www.roblox.com/asset/?id=4805639000"
								v_u_158.Name = "Confirm"
								v_u_158.Parent = v_u_149
								v_u_158.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
								v_u_158.Position = UDim2.new(0.611607134, 0, 0.183673471, 0)
								v_u_158.Size = UDim2.new(0, 162, 0, 28)
								v_u_158.AutoButtonColor = false
								v_u_158.Font = Enum.Font.Gotham
								v_u_158.Text = "Confirm"
								v_u_158.TextColor3 = Color3.fromRGB(255, 255, 255)
								v_u_158.TextSize = 14
								v159.CornerRadius = UDim.new(0, 6)
								v159.Name = "ConfirmCorner"
								v159.Parent = v_u_158
								v_u_160.Name = "RainbowToggle"
								v_u_160.Parent = v_u_149
								v_u_160.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
								v_u_160.Position = UDim2.new(0.611607134, 0, 0.528944969, 0)
								v_u_160.Size = UDim2.new(0, 162, 0, 28)
								v_u_160.AutoButtonColor = false
								v_u_160.Font = Enum.Font.Gotham
								v_u_160.Text = ""
								v_u_160.TextColor3 = Color3.fromRGB(255, 255, 255)
								v_u_160.TextSize = 14
								v161.CornerRadius = UDim.new(0, 6)
								v161.Name = "RainbowToggleCorner"
								v161.Parent = v_u_160
								v162.Name = "RainbowTitle"
								v162.Parent = v_u_160
								v162.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								v162.BackgroundTransparency = 1
								v162.Position = UDim2.new(0.0400892854, 0, 0, 0)
								v162.Size = UDim2.new(0, 0, 0, 28)
								v162.Font = Enum.Font.Gotham
								v162.Text = "Rainbow"
								v162.TextColor3 = Color3.fromRGB(255, 255, 255)
								v162.TextSize = 14
								v162.TextXAlignment = Enum.TextXAlignment.Left
								v163.Name = "RainbowBoxStatus"
								v163.Parent = v_u_160
								v163.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
								v163.Position = UDim2.new(0.749000013, 0, 0.143000007, 0)
								v163.Size = UDim2.new(0, 35, 0, 19)
								v164.CornerRadius = UDim.new(1, 0)
								v164.Name = "RainbowBoxCorner"
								v164.Parent = v163
								v_u_165.Name = "RainbowDot"
								v_u_165.Parent = v163
								v_u_165.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
								v_u_165.Position = UDim2.new(0.0799999982, 0, 0.126000002, 0)
								v_u_165.Size = UDim2.new(0, 14, 0, 14)
								v166.CornerRadius = UDim.new(1, 0)
								v166.Name = "RainbowDotCorner"
								v166.Parent = v_u_165
								v_u_144.MouseEnter:Connect(function()
									-- upvalues: (ref) v_u_12, (ref) v_u_144
									v_u_12:Create(v_u_144, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										["BackgroundColor3"] = Color3.fromRGB(44, 44, 44)
									}):Play()
								end)
								v_u_144.MouseLeave:Connect(function()
									-- upvalues: (ref) v_u_12, (ref) v_u_144
									v_u_12:Create(v_u_144, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										["BackgroundColor3"] = Color3.fromRGB(39, 39, 39)
									}):Play()
								end)
								local function v_u_169(_)
									-- upvalues: (ref) v_u_147, (ref) v_u_138, (ref) v_u_139, (ref) v_u_140, (ref) v_u_151, (ref) p_u_132
									v_u_147.BackgroundColor3 = Color3.fromHSV(v_u_138, v_u_139, v_u_140)
									v_u_151.BackgroundColor3 = Color3.fromHSV(v_u_138, 1, 1)
									pcall(p_u_132, v_u_147.BackgroundColor3)
								end
								local v_u_170 = 1 - math.clamp(v_u_157.AbsolutePosition.Y - v_u_154.AbsolutePosition.Y, 0, v_u_154.AbsoluteSize.Y) / v_u_154.AbsoluteSize.Y
								local v_u_171 = math.clamp(v_u_153.AbsolutePosition.X - v_u_151.AbsolutePosition.X, 0, v_u_151.AbsoluteSize.X) / v_u_151.AbsoluteSize.X
								local v_u_172 = 1 - math.clamp(v_u_153.AbsolutePosition.Y - v_u_151.AbsolutePosition.Y, 0, v_u_151.AbsoluteSize.Y) / v_u_151.AbsoluteSize.Y
								v_u_147.BackgroundColor3 = p131
								v_u_151.BackgroundColor3 = p131
								pcall(p_u_132, v_u_147.BackgroundColor3)
								v_u_151.InputBegan:Connect(function(p173)
									-- upvalues: (ref) v_u_141, (ref) v_u_142, (ref) v_u_13, (ref) v_u_14, (ref) v_u_151, (ref) v_u_153, (ref) v_u_171, (ref) v_u_172, (ref) v_u_169
									if p173.UserInputType == Enum.UserInputType.MouseButton1 then
										if v_u_141 then
											return
										end
										if v_u_142 then
											v_u_142:Disconnect()
										end
										v_u_142 = v_u_13.RenderStepped:Connect(function()
											-- upvalues: (ref) v_u_14, (ref) v_u_151, (ref) v_u_153, (ref) v_u_171, (ref) v_u_172, (ref) v_u_169
											local v174 = math.clamp(v_u_14.X - v_u_151.AbsolutePosition.X, 0, v_u_151.AbsoluteSize.X) / v_u_151.AbsoluteSize.X
											local v175 = math.clamp(v_u_14.Y - v_u_151.AbsolutePosition.Y, 0, v_u_151.AbsoluteSize.Y) / v_u_151.AbsoluteSize.Y
											v_u_153.Position = UDim2.new(v174, 0, v175, 0)
											v_u_171 = v174
											v_u_172 = 1 - v175
											v_u_169(true)
										end)
									end
								end)
								v_u_151.InputEnded:Connect(function(p176)
									-- upvalues: (ref) v_u_142
									if p176.UserInputType == Enum.UserInputType.MouseButton1 and v_u_142 then
										v_u_142:Disconnect()
									end
								end)
								v_u_154.InputBegan:Connect(function(p177)
									-- upvalues: (ref) v_u_141, (ref) v_u_143, (ref) v_u_13, (ref) v_u_14, (ref) v_u_154, (ref) v_u_157, (ref) v_u_170, (ref) v_u_169
									if p177.UserInputType == Enum.UserInputType.MouseButton1 then
										if v_u_141 then
											return
										end
										if v_u_143 then
											v_u_143:Disconnect()
										end
										v_u_143 = v_u_13.RenderStepped:Connect(function()
											-- upvalues: (ref) v_u_14, (ref) v_u_154, (ref) v_u_157, (ref) v_u_170, (ref) v_u_169
											local v178 = math.clamp(v_u_14.Y - v_u_154.AbsolutePosition.Y, 0, v_u_154.AbsoluteSize.Y) / v_u_154.AbsoluteSize.Y
											v_u_157.Position = UDim2.new(0.48, 0, v178, 0)
											v_u_170 = 1 - v178
											v_u_169(true)
										end)
									end
								end)
								v_u_154.InputEnded:Connect(function(p179)
									-- upvalues: (ref) v_u_143
									if p179.UserInputType == Enum.UserInputType.MouseButton1 and v_u_143 then
										v_u_143:Disconnect()
									end
								end)
								v_u_160.MouseEnter:Connect(function()
									-- upvalues: (ref) v_u_12, (ref) v_u_160
									v_u_12:Create(v_u_160, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										["BackgroundColor3"] = Color3.fromRGB(45, 45, 45)
									}):Play()
								end)
								v_u_160.MouseLeave:Connect(function()
									-- upvalues: (ref) v_u_12, (ref) v_u_160
									v_u_12:Create(v_u_160, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										["BackgroundColor3"] = Color3.fromRGB(40, 40, 40)
									}):Play()
								end)
								v_u_158.MouseEnter:Connect(function()
									-- upvalues: (ref) v_u_12, (ref) v_u_158
									v_u_12:Create(v_u_158, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										["BackgroundColor3"] = Color3.fromRGB(45, 45, 45)
									}):Play()
								end)
								v_u_158.MouseLeave:Connect(function()
									-- upvalues: (ref) v_u_12, (ref) v_u_158
									v_u_12:Create(v_u_158, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										["BackgroundColor3"] = Color3.fromRGB(40, 40, 40)
									}):Play()
								end)
								v_u_160.MouseButton1Down:Connect(function()
									-- upvalues: (ref) v_u_141, (ref) v_u_142, (ref) v_u_143, (ref) v_u_12, (ref) v_u_165, (ref) v_u_10, (ref) v_u_134, (ref) v_u_147, (ref) v_u_135, (ref) v_u_151, (ref) v_u_136, (ref) v_u_153, (ref) v_u_137, (ref) v_u_157, (ref) v_u_9, (ref) p_u_132
									v_u_141 = not v_u_141
									if v_u_142 then
										v_u_142:Disconnect()
									end
									if v_u_143 then
										v_u_143:Disconnect()
									end
									if v_u_141 then
										local v180 = {
											["BackgroundColor3"] = v_u_10
										}
										v_u_12:Create(v_u_165, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), v180):Play()
										v_u_12:Create(v_u_165, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
											["Position"] = UDim2.new(0.48, 0, 0.126, 0)
										}):Play()
										v_u_134 = v_u_147.BackgroundColor3
										v_u_135 = v_u_151.BackgroundColor3
										v_u_136 = v_u_153.Position
										v_u_137 = v_u_157.Position
										while v_u_141 do
											v_u_147.BackgroundColor3 = Color3.fromHSV(v_u_9.RainbowColorValue, 1, 1)
											v_u_151.BackgroundColor3 = Color3.fromHSV(v_u_9.RainbowColorValue, 1, 1)
											v_u_153.Position = UDim2.new(1, 0, 0, 0)
											v_u_157.Position = UDim2.new(0.48, 0, 0, v_u_9.HueSelectionPosition)
											pcall(p_u_132, v_u_147.BackgroundColor3)
											wait()
										end
									elseif not v_u_141 then
										v_u_12:Create(v_u_165, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
											["BackgroundColor3"] = Color3.fromRGB(40, 40, 40)
										}):Play()
										v_u_12:Create(v_u_165, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
											["Position"] = UDim2.new(0.0799999982, 0, 0.126000002, 0)
										}):Play()
										v_u_147.BackgroundColor3 = v_u_134
										v_u_151.BackgroundColor3 = v_u_135
										v_u_153.Position = v_u_136
										v_u_157.Position = v_u_137
										pcall(p_u_132, v_u_147.BackgroundColor3)
									end
								end)
								v_u_144.MouseButton1Click:Connect(function()
									-- upvalues: (ref) v_u_144, (ref) v_u_133, (ref) v_u_149, (ref) v_u_59, (ref) v_u_60
									Ripple(v_u_144)
									if v_u_133 ~= false then
										v_u_133 = not v_u_133
										v_u_149:TweenSize(UDim2.new(0, 448, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.1, true)
										repeat
											wait()
										until v_u_149.Size == UDim2.new(0, 448, 0, 0)
										v_u_149.Visible = false
										v_u_59.CanvasSize = UDim2.new(0, 0, 0, v_u_60.AbsoluteContentSize.Y)
									else
										v_u_133 = not v_u_133
										v_u_149.Visible = true
										v_u_149:TweenSize(UDim2.new(0, 448, 0, 98), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.1, true)
										repeat
											wait()
										until v_u_149.Size == UDim2.new(0, 448, 0, 98)
										v_u_59.CanvasSize = UDim2.new(0, 0, 0, v_u_60.AbsoluteContentSize.Y)
									end
								end)
								v_u_158.MouseButton1Click:Connect(function()
									-- upvalues: (ref) v_u_133, (ref) v_u_149, (ref) v_u_59, (ref) v_u_60
									v_u_133 = not v_u_133
									v_u_149:TweenSize(UDim2.new(0, 448, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.1, true)
									repeat
										wait()
									until v_u_149.Size == UDim2.new(0, 491, 0, 0)
									v_u_149.Visible = false
									v_u_59.CanvasSize = UDim2.new(0, 0, 0, v_u_60.AbsoluteContentSize.Y)
								end)
								v_u_59.CanvasSize = UDim2.new(0, 0, 0, v_u_60.AbsoluteContentSize.Y)
							end,
							["Textbox"] = function(_, p181, p_u_182, p_u_183)
								-- upvalues: (ref) v_u_59, (ref) v_u_60
								local v184 = Instance.new("TextButton")
								local v185 = Instance.new("UICorner")
								local v_u_186 = Instance.new("TextBox")
								local v187 = Instance.new("UICorner")
								v184.Name = "Textbox"
								v184.Parent = v_u_59
								v184.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
								v184.Position = UDim2.new(-0.230061352, 0, 0.856338024, 0)
								v184.Size = UDim2.new(0, 448, 0, 28)
								v184.AutoButtonColor = false
								v184.Font = Enum.Font.Gotham
								v184.Text = ""
								v184.TextColor3 = Color3.fromRGB(255, 255, 255)
								v184.TextSize = 14
								v185.CornerRadius = UDim.new(0, 6)
								v185.Name = "TextboxCorner"
								v185.Parent = v184
								v_u_186.Parent = v184
								v_u_186.AnchorPoint = Vector2.new(0.5, 0.5)
								v_u_186.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
								v_u_186.Position = UDim2.new(0.5, 0, 0.5, 0)
								v_u_186.Size = UDim2.new(0, 349, 0, 20)
								v_u_186.Font = Enum.Font.Gotham
								v_u_186.PlaceholderColor3 = Color3.fromRGB(216, 216, 216)
								v_u_186.PlaceholderText = p181
								v_u_186.Text = ""
								v_u_186.TextColor3 = Color3.fromRGB(255, 255, 255)
								v_u_186.TextSize = 14
								v187.CornerRadius = UDim.new(0, 6)
								v187.Name = "TextBoxCorner"
								v187.Parent = v_u_186
								v_u_186.Focused:Connect(function()
									-- upvalues: (ref) v_u_186
									v_u_186:TweenSize(UDim2.new(0, 399, 0, 20), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
								end)
								v_u_186.FocusLost:Connect(function(p188)
									-- upvalues: (ref) v_u_186, (ref) p_u_183, (ref) p_u_182
									if p188 and #v_u_186.Text > 0 then
										pcall(p_u_183, v_u_186.Text)
										v_u_186:TweenSize(UDim2.new(0, 349, 0, 20), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.2, true)
										if p_u_182 then
											v_u_186.Text = ""
										end
									end
								end)
								v_u_59.CanvasSize = UDim2.new(0, 0, 0, v_u_60.AbsoluteContentSize.Y)
							end,
							["Label"] = function(_, p189)
								-- upvalues: (ref) v_u_59, (ref) v_u_60
								local v190 = Instance.new("TextButton")
								local v191 = Instance.new("UICorner")
								v190.Name = "Button"
								v190.Parent = v_u_59
								v190.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
								v190.Size = UDim2.new(0, 448, 0, 28)
								v190.AutoButtonColor = false
								v190.Font = Enum.Font.Gotham
								v190.TextColor3 = Color3.fromRGB(255, 255, 255)
								v190.TextSize = 14
								v190.Text = p189
								v190.ClipsDescendants = true
								v191.CornerRadius = UDim.new(0, 6)
								v191.Name = "ButtonCorner"
								v191.Parent = v190
								v_u_59.CanvasSize = UDim2.new(0, 0, 0, v_u_60.AbsoluteContentSize.Y)
							end,
							["Keybind"] = function(_, p192, p193, p_u_194)
								-- upvalues: (ref) v_u_59, (ref) v_u_12, (ref) v_u_60
								local v_u_195 = p193.Name
								local v_u_196 = Instance.new("TextButton")
								local v197 = Instance.new("UICorner")
								local v198 = Instance.new("TextLabel")
								local v199 = Instance.new("Frame")
								local v200 = Instance.new("UICorner")
								local v_u_201 = Instance.new("TextLabel")
								v_u_196.Name = "KeyBind"
								v_u_196.Parent = v_u_59
								v_u_196.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
								v_u_196.Position = UDim2.new(0.156441718, 0, 0.816901445, 0)
								v_u_196.Size = UDim2.new(0, 448, 0, 28)
								v_u_196.AutoButtonColor = false
								v_u_196.Font = Enum.Font.Gotham
								v_u_196.Text = ""
								v_u_196.TextColor3 = Color3.fromRGB(255, 255, 255)
								v_u_196.TextSize = 14
								v_u_196.ClipsDescendants = true
								v197.CornerRadius = UDim.new(0, 6)
								v197.Name = "KeyBindCorner"
								v197.Parent = v_u_196
								v198.Name = "Title"
								v198.Parent = v_u_196
								v198.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								v198.BackgroundTransparency = 1
								v198.Position = UDim2.new(0.0200892854, 0, 0, 0)
								v198.Size = UDim2.new(0, 0, 0, 28)
								v198.Font = Enum.Font.Gotham
								v198.Text = p192
								v198.TextColor3 = Color3.fromRGB(255, 255, 255)
								v198.TextSize = 14
								v198.TextXAlignment = Enum.TextXAlignment.Left
								v199.Name = "BoxBind"
								v199.Parent = v_u_196
								v199.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
								v199.Position = UDim2.new(0.770089269, 0, 0.142857149, 0)
								v199.Size = UDim2.new(0, 97, 0, 19)
								v200.CornerRadius = UDim.new(0, 6)
								v200.Name = "BoxCorner"
								v200.Parent = v199
								v_u_201.Name = "CurrentBind"
								v_u_201.Parent = v199
								v_u_201.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
								v_u_201.BackgroundTransparency = 1
								v_u_201.Position = UDim2.new(0.247, 0, -0.210526317, 0)
								v_u_201.Size = UDim2.new(0, 49, 0, 28)
								v_u_201.Font = Enum.Font.Gotham
								v_u_201.Text = v_u_195
								v_u_201.TextColor3 = Color3.fromRGB(255, 255, 255)
								v_u_201.TextSize = 14
								v_u_196.MouseEnter:Connect(function()
									-- upvalues: (ref) v_u_12, (ref) v_u_196
									v_u_12:Create(v_u_196, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										["BackgroundColor3"] = Color3.fromRGB(45, 45, 45)
									}):Play()
								end)
								v_u_196.MouseLeave:Connect(function()
									-- upvalues: (ref) v_u_12, (ref) v_u_196
									v_u_12:Create(v_u_196, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										["BackgroundColor3"] = Color3.fromRGB(40, 40, 40)
									}):Play()
								end)
								v_u_196.MouseButton1Click:connect(function(_)
									-- upvalues: (ref) v_u_196, (ref) v_u_201, (ref) v_u_195
									Ripple(v_u_196)
									v_u_201.Text = "..."
									local v202 = game:GetService("UserInputService").InputBegan:wait()
									if v202.KeyCode.Name ~= "Unknown" then
										v_u_201.Text = v202.KeyCode.Name
										v_u_195 = v202.KeyCode.Name
									end
								end)
								game:GetService("UserInputService").InputBegan:connect(function(p203, p204)
									-- upvalues: (ref) v_u_195, (ref) p_u_194
									if not p204 and p203.KeyCode.Name == v_u_195 then
										pcall(p_u_194)
									end
								end)
								v_u_59.CanvasSize = UDim2.new(0, 0, 0, v_u_60.AbsoluteContentSize.Y)
							end
						}
					end
				}
			end
			local v_u_205 = game:GetService("RunService")
			local v_u_206 = game:GetService("Players").LocalPlayer
			local v_u_207 = nil
			local v_u_208 = {}
			local function v_u_213()
				-- upvalues: (ref) v_u_207, (ref) v_u_208
				if v_u_207 then
					v_u_207:Disconnect()
					v_u_207 = nil
				end
				local v209, v210, v211 = ipairs(v_u_208)
				while true do
					local v212
					v211, v212 = v209(v210, v211)
					if v211 == nil then
						break
					end
					if v212 and v212.Destroy then
						v212:Destroy()
					end
				end
				v_u_208 = {}
			end
			local function v_u_235(p_u_214, p215)
				-- upvalues: (ref) v_u_213, (ref) v_u_206, (ref) v_u_208, (ref) v_u_207, (ref) v_u_205
				v_u_213()
				local v_u_216 = v_u_206.Character
				if v_u_216 and v_u_216:FindFirstChild("HumanoidRootPart") then
					local v_u_217 = v_u_216.HumanoidRootPart
					local v218, v219, v220 = ipairs(v_u_216:GetDescendants())
					local v_u_221 = p215 or 25
					while true do
						local v222
						v220, v222 = v218(v219, v220)
						if v220 == nil then
							break
						end
						if v222:IsA("BasePart") then
							v222.CanCollide = false
						end
					end
					local v223 = Instance.new("BodyVelocity")
					v223.Velocity = Vector3.new(0, 0, 0)
					v223.MaxForce = Vector3.new(0, math.huge, 0)
					v223.Parent = v_u_217
					table.insert(v_u_208, v223)
					v_u_207 = v_u_205.RenderStepped:Connect(function(p224)
						-- upvalues: (ref) v_u_216, (ref) v_u_213, (ref) v_u_217, (ref) p_u_214, (ref) v_u_221
						if v_u_216 and v_u_216:FindFirstChild("HumanoidRootPart") then
							local v225 = v_u_217.Position
							local v226 = (p_u_214 - v225).Unit
							local v227 = (p_u_214 - v225).Magnitude
							local v228 = v225 + v226 * (v_u_221 * p224 * math.clamp(v227 / 10, 0.2, 1))
							local v229 = _G.urbantplookat or p_u_214
							v_u_217.CFrame = CFrame.new(v228, v229)
							if v227 < 0.5 then
								v_u_213()
								local v230 = v_u_216
								local v231, v232, v233 = ipairs(v230:GetDescendants())
								while true do
									local v234
									v233, v234 = v231(v232, v233)
									if v233 == nil then
										break
									end
									if v234:IsA("BasePart") then
										v234.CanCollide = true
									end
								end
							end
						else
							v_u_213()
						end
					end)
				end
			end
			function Move(p236, p237, p238)
				_G.move1 = true
				while p236.X < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X do
					Wait(p238)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X - p237, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
				end
				while p236.Z < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z do
					Wait(p238)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z - p237))
				end
				while p236.X > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X do
					Wait(p238)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X + p237, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
				end
				while p236.Z > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z do
					Wait(p238)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z + p237))
				end
				while p236.Y < game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y do
					Wait(p238)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y - p237, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
				end
				while p236.Y > game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y do
					Wait(p238)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y + p237, game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))
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
			local function v_u_243()
				local v239, v240, v241 = pairs(game.Players.LocalPlayer.Character:GetDescendants())
				while true do
					local v242
					v241, v242 = v239(v240, v241)
					if v241 == nil then
						break
					end
					if v242:IsA("BasePart") and v242.CanCollide == true then
						v242.CanCollide = false
						game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
					end
				end
			end
			function Mouse11()
				local v244 = game:service("VirtualUser")
				v244:CaptureController()
				v244:ClickButton1(Vector2.new(100000, 100000))
			end
			local v245 = v_u_9
			local v246 = v_u_9.Window(v245, "Murim\nCultivation", Color3.fromRGB(120, 81, 169))
			local v247 = v246:Tab("Main")
			local v248 = game:GetService("Players")
			local v249 = game:GetService("ReplicatedStorage")
			local v_u_250 = v248.LocalPlayer
			local v_u_251 = v249:WaitForChild("Services"):WaitForChild("InventoryService"):WaitForChild("RF"):WaitForChild("EquipTool")
			local v_u_252 = v249:WaitForChild("Services"):WaitForChild("InventoryService"):WaitForChild("RF"):WaitForChild("UnequipTool")
			local v_u_253 = "Combat"
			local v_u_254 = false
			v247:Dropdown("Select Tool", { "Combat", "Ask for more tools!" }, function(p255)
				-- upvalues: (ref) v_u_253
				v_u_253 = p255
			end)
			v247:Toggle("Auto-equip", function(p256)
				-- upvalues: (ref) v_u_254, (ref) v_u_252, (ref) v_u_250, (ref) v_u_253, (ref) v_u_251
				v_u_254 = p256
				if v_u_254 then
					task.spawn(function()
						-- upvalues: (ref) v_u_254, (ref) v_u_250, (ref) v_u_253, (ref) v_u_251
						while true do
							if not v_u_254 then
								return
							end
							task.wait(0.1)
							local v257 = v_u_250.Character
							if v257 then
								local v258, v259, v260 = ipairs(v257:GetChildren())
								local v261 = false
								while true do
									local v262
									v260, v262 = v258(v259, v260)
									if v260 == nil then
										break
									end
									if v262:IsA("Tool") and v262.Name == v_u_253 then
										v261 = true
										break
									end
								end
								if not v261 and v_u_253 then
									pcall(function()
										-- upvalues: (ref) v_u_251, (ref) v_u_253
										v_u_251:InvokeServer(v_u_253)
									end)
								end
							end
						end
					end)
				else
					pcall(function()
						-- upvalues: (ref) v_u_252
						v_u_252:InvokeServer()
					end)
				end
			end)
			v247:Toggle("Auto hit", function(p263)
				AP = p263
				while AP do
					task.wait(0.3)
					Mouse11()
				end
			end)
			local v_u_264 = {
				["Qin Chen"] = { "Qin Chen" },
				["Civilians"] = { "Ruo Yan", "Jun Yi" },
				["Luo Wuji"] = { "Luo Wuji" },
				["Assassin"] = { "Wind Assassin", "Lightning Assassin", "Assassin" },
				["Dryad"] = { "Clarissa", "Clementine", "Claire" },
				["Dwarf"] = {
					"Bao Bai",
					"Liu Ming",
					"Bao Hong",
					"Guo Shi"
				},
				["Treeling"] = { "Sapling", "Sproutling", "Branchling" },
				["Giant"] = { "Porphyrion", "Polybotes", "Enkelados" },
				["Liu Mei"] = { "Liu Mei" },
				["Bandit"] = {
					"Huang Ming",
					"Lin Fing",
					"Fang Ming",
					"Himoty Filbert",
					"Iron Fang"
				},
				["Savior Quest"] = { "Savior Quest" },
				["Everything"] = { "*" },
				["Secret"] = { "Dwarf", "Giant" }
			}
			local v_u_265 = {
				["Qin Chen"] = { CFrame.new(-2187.80005, 15.2193804, 5149.2002) * CFrame.new(0, 200, 0) },
				["Civilians"] = { CFrame.new() },
				["Luo Wuji"] = { CFrame.new(-5904.47216796875, 142.3521728515625, 4057.85009765625) * CFrame.new(0, 200, 0) },
				["Assassin"] = { CFrame.new(-5923.84863, 222.403748, 4286.06836) * CFrame.new(0, 200, 0) },
				["Dryad"] = { CFrame.new(-5925.8999, 17.515625, 6585.2002) * CFrame.new(0, 200, 0) },
				["Dwarf"] = { CFrame.new(-2951.69995, 74, 6290.8999) * CFrame.new(0, 200, 0) },
				["Treeling"] = { CFrame.new(-5107.5, 29.9025497, 5451.8999) * CFrame.new(0, 200, 0) },
				["Giant"] = { CFrame.new(-2808.80005, 18, 3521.5) * CFrame.new(0, 200, 0) },
				["Liu Mei"] = { CFrame.new(-2044.51611, 19.1871586, 5179.52588) * CFrame.new(0, 200, 0) },
				["Bandit"] = { CFrame.new(-3868.30615, 18.5196915, 3003.60132) * CFrame.new(0, 200, 0) },
				["Savior Quest"] = { CFrame.new(-4922, 56, 4393) },
				["Everything"] = { CFrame.new(0, 100, 0), CFrame.new(100, 100, 100), CFrame.new(-100, 100, -100) },
				["Secret"] = { CFrame.new(-2616, 1244, 2722), CFrame.new(-1500, 140, 250), CFrame.new(1800, 125, 600) }
			}
			local v_u_266 = {
				["Everything"] = 1,
				["Secret"] = 1
			}
			local v_u_267 = "Bandit"
			local v_u_268 = -7
			local v_u_269 = false
			v247:Dropdown("Farm Selection", {
				"Bandit",
				"Giant",
				"Luo Wuji",
				"Qin Chen",
				"Treeling",
				"Liu Mei",
				"Assassin",
				"Dwarf",
				"Dryad",
				"Savior Quest"
			}, function(p270)
				-- upvalues: (ref) v_u_267
				v_u_267 = p270
			end)
			local v_u_271 = game:GetService("VirtualInputManager")
			local v_u_272 = game.Players.LocalPlayer
			local function v_u_274()
				-- upvalues: (ref) v_u_272
				local v273 = v_u_272.Character or v_u_272.CharacterAdded:Wait()
				return v273, v273:WaitForChild("HumanoidRootPart")
			end
			local v_u_275, v_u_276 = v_u_274()
			v_u_272.CharacterAdded:Connect(function(p277)
				-- upvalues: (ref) v_u_275, (ref) v_u_276
				v_u_275 = p277
				v_u_276 = p277:WaitForChild("HumanoidRootPart")
				print("Player respawned, updated character reference")
			end)
			local v_u_278 = 95
			v247:Slider("Mob Distance", -12, 1, 0.4, function(p279)
				-- upvalues: (ref) v_u_268
				v_u_268 = p279
			end)
			v247:Slider("Tween Speed", 50, 500, 150, function(p280)
				-- upvalues: (ref) v_u_278
				v_u_278 = p280
			end)
			local function v_u_283()
				local v281 = workspace.World.Characters.Interactables:FindFirstChild("Cage")
				if v281 then
					print("Found cage, checking if alive...")
					local v282 = v281:FindFirstChild("Death") ~= nil
					print("Cage has Death part:", v282)
					if not v282 then
						print("Cage is alive")
						return v281
					end
					print("Cage is dead")
				else
					print("No cage found in Interactables")
				end
				return nil
			end
			local function v_u_297()
				-- upvalues: (ref) v_u_264, (ref) v_u_274
				local v284 = math.huge
				local v285 = v_u_264.Civilians
				local _, v286 = v_u_274()
				print("Looking for civilians. Valid names:", table.concat(v285, ", "))
				local v287, v288, v289 = pairs(workspace.World.Characters.Interactables:GetChildren())
				local v290 = nil
				while true do
					local v291
					v289, v291 = v287(v288, v289)
					if v289 == nil then
						if v290 then
							print("Selected closest civilian:", v290.Name, "at distance:", v284)
						else
							print("No civilian found!")
						end
						return v290
					end
					if v291:FindFirstChild("HumanoidRootPart") and (not v291:FindFirstChild("Death") and v291.Name ~= "Cage") then
						print("Checking NPC:", v291.Name)
						local v292, v293, v294 = ipairs(v285)
						while true do
							local v295
							v294, v295 = v292(v293, v294)
							if v294 == nil then
								break
							end
							if v291.Name == v295 then
								print("Found matching civilian:", v291.Name)
								local v296 = (v286.Position - v291.HumanoidRootPart.Position).Magnitude
								print("Distance to", v291.Name, ":", v296)
								if v296 < v284 then
									v290 = v291
									v284 = v296
								end
								break
							end
						end
					end
				end
			end
			local function v_u_303(p298)
				if not (p298 and p298.Parent) then
					print("NPC not found or no parent")
					return false
				end
				print("Checking pickup status for:", p298.Name)
				local v299, v300, v301 = pairs(p298:GetDescendants())
				while true do
					local v302
					v301, v302 = v299(v300, v301)
					if v301 == nil then
						break
					end
					if v302.Name == "RagdollColisionPart" then
						print("Found RagdollColisionPart in:", v302.Parent.Name, "- NPC is on ground")
						return false
					end
				end
				print("No RagdollColisionPart found - NPC is picked up")
				return true
			end
			local function v_u_305(p304)
				-- upvalues: (ref) v_u_271
				v_u_271:SendKeyEvent(true, p304, false, game)
				task.wait(0.1)
				v_u_271:SendKeyEvent(false, p304, false, game)
			end
			local function v_u_323()
				-- upvalues: (ref) v_u_269, (ref) v_u_235, (ref) v_u_278, (ref) v_u_305
				print("Starting chest collection phase...")
				local function v311()
					local v306 = {}
					if workspace.World.Misc.Debris:FindFirstChild("TreasureChest") then
						local v307, v308, v309 = pairs(workspace.World.Misc.Debris.TreasureChest:GetChildren())
						while true do
							local v310
							v309, v310 = v307(v308, v309)
							if v309 == nil then
								break
							end
							if v310.Name == "Collect" and v310:FindFirstChild("Collect") then
								table.insert(v306, v310)
								print("Found chest at:", v310.Name)
							end
						end
					end
					return v306
				end
				local v312 = 0
				local v313 = 0 + 1
				local v314 = v311()
				print("Chest collection attempt", v313, "- Found", #v314, "chests")
				if #v314 <= 0 then
					print("No chests found")
				else
					local v315, v316, v317 = ipairs(v314)
					while true do
						local v318
						v317, v318 = v315(v316, v317)
						if v317 == nil or not v_u_269 then
							break
						end
						print("Going to chest", v317, "of", #v314)
						local v319 = v318.Parent.Position
						_G.urbantplookat = v319
						v_u_235(v319 + Vector3.new(0, 2, 0), v_u_278)
						task.wait(2)
						if v318:IsDescendantOf(workspace) and v318:FindFirstChild("Collect") then
							local v320 = v318.Collect
							v320.HoldDuration = 0
							v320.RequiresLineOfSight = false
							v320.MaxActivationDistance = 20
							local v321 = 0
							print("Collecting chest attempt", v321 + 1)
							v_u_305(Enum.KeyCode.F)
							task.wait(1)
							local _ = v321 + 1
							v318:IsDescendantOf(workspace)
							local v322 = 5
							if v318:IsDescendantOf(workspace) then
								print("Failed to collect chest after", v322, "attempts")
							else
								v312 = v312 + 1
								print("Successfully collected chest! Total collected:", v312)
							end
						else
							print("Chest no longer available")
						end
						task.wait(0.5)
					end
					task.wait(2)
				end
				print("Chest collection phase completed. Total chests collected:", v312)
				_G.urbantplookat = nil
				return v312
			end
			v247:Toggle("Mobfarm Toggle", function(p324)
				-- upvalues: (ref) v_u_269, (ref) v_u_275, (ref) v_u_276, (ref) v_u_274, (ref) v_u_267, (ref) v_u_283, (ref) v_u_235, (ref) v_u_278, (ref) v_u_297, (ref) v_u_305, (ref) v_u_303, (ref) v_u_323, (ref) v_u_265, (ref) v_u_264, (ref) v_u_243, (ref) v_u_268, (ref) v_u_266
				v_u_269 = p324
				while v_u_269 do
					task.wait()
					pcall(function()
						-- upvalues: (ref) v_u_275, (ref) v_u_276, (ref) v_u_274, (ref) v_u_267, (ref) v_u_283, (ref) v_u_235, (ref) v_u_278, (ref) v_u_269, (ref) v_u_297, (ref) v_u_305, (ref) v_u_303, (ref) v_u_323, (ref) v_u_265, (ref) v_u_264, (ref) v_u_243, (ref) v_u_268, (ref) v_u_266
						-- block 153
						local v325, v326 = v_u_274()
						v_u_276 = v326
						v_u_275 = v325
						if v_u_267 == "Savior Quest" then
							local v327 = v_u_283()
							if v327 then
								print("Going to cage...")
								local v328 = v327:GetPivot().Position
								print("Cage position:", v328)
								_G.urbantplookat = v328
								v_u_235(v328, v_u_278)
								print("Reached cage area, waiting for cage to break...")
								print("Cage current status - Has Death:", v327:FindFirstChild("Death") ~= nil)
								local v329 = 0
								local v330 = 30
								while true do
									if true then
										task.wait(0.5)
										v329 = v329 + 0.5
										v327 = v_u_283()
										if v327 then
											print("Cage still alive, waiting... (" .. v329 .. "s)")
										else
											print("Cage destroyed!")
										end
									end
									if not v_u_269 or (not v327 or v330 <= v329) then
										if v330 <= v329 then
											print("Timeout waiting for cage to break, skipping to civilian search...")
										else
											print("Cage is destroyed, waiting for civilian to spawn...")
											task.wait(3)
										end
										goto l6
									end
								end
							end
							::l6::
							if v_u_283() then
								print("Cage still exists, waiting for it to break...")
								task.wait(2)
							else
								print("All NPCs in Interactables after cage break:")
								local v331, v332, v333 = pairs(workspace.World.Characters.Interactables:GetChildren())
								while true do
									local v334
									v333, v334 = v331(v332, v333)
									if v333 == nil then
										break
									end
									if v334:FindFirstChild("HumanoidRootPart") and (not v334:FindFirstChild("Death") and v334.Name ~= "Cage") then
										print("Found NPC:", v334.Name)
									end
								end
								local v335 = v_u_297()
								if v335 then
									print("Found civilian:", v335.Name)
									local v336 = 0 + 1
									print("Pickup attempt", v336, "- Going to civilian...")
									local v337 = v335.HumanoidRootPart.Position
									local v338 = v337 + Vector3.new(math.random(-1, 1), 3, math.random(-1, 1))
									print("Civilian position:", v337)
									print("Going to pickup position:", v338)
									_G.urbantplookat = v337
									v_u_235(v338, v_u_278)
									task.wait(1)
									print("Pressing G to pick up...")
									v_u_305(Enum.KeyCode.G)
									task.wait(2)
									local v339 = v_u_303(v335)
									print("Pickup status after attempt", v336, ":", v339)
									local v340 = 15
									if v339 then
										print("Civilian picked up successfully! Going to drop-off location...")
										local v341 = Vector3.new(-4899, 22, 4393)
										local v342 = tick()
										local v343 = 15
										while true do
											if not v_u_303(v335) then
												print("Dropped civilian during travel! Going back to pick up...")
												local v344 = v335.HumanoidRootPart.Position
												_G.urbantplookat = v344
												v_u_235(v344 + Vector3.new(0, 3, 0), v_u_278)
												task.wait(2)
												print("Attempting to pick up dropped civilian...")
												v_u_305(Enum.KeyCode.G)
												task.wait(2)
												if not v_u_303(v335) then
													print("Failed to re-pick up civilian")
													break
												end
												print("Successfully re-picked up civilian!")
											end
											_G.urbantplookat = v341
											v_u_235(v341, v_u_278)
											task.wait(1)
											if not v_u_269 or (not v335.Parent or (v343 < tick() - v342 or not v_u_303(v335))) then
												break
											end
										end
										if v_u_303(v335) then
											print("Reached drop-off location with civilian")
											task.wait(2)
											local v345 = workspace.World.Zones.Events:FindFirstChild("Saviour")
											if v345 and v345:FindFirstChild("HumanoidRootPart") then
												print("Going to Savior Zone...")
												_G.urbantplookat = v345.HumanoidRootPart.Position
												local v346 = tick()
												while true do
													if not v_u_303(v335) then
														print("Dropped civilian on way to savior zone! Going back...")
														local v347 = v335.HumanoidRootPart.Position
														_G.urbantplookat = v347
														v_u_235(v347 + Vector3.new(0, 3, 0), v_u_278)
														task.wait(2)
														v_u_305(Enum.KeyCode.G)
														task.wait(2)
													end
													v_u_235(v345.HumanoidRootPart.Position, v_u_278)
													task.wait(1)
													if not v_u_269 or tick() - v346 > 15 then
														task.wait(2)
														print("Starting comprehensive chest collection...")
														v_u_323()
														goto l83
													end
												end
											end
											print("Could not find Savior Zone!")
											::l83::
											print("Savior quest cycle completed, looking for next cage...")
											_G.urbantplookat = nil
											task.wait(3)
										else
											print("Lost civilian during transport, starting over...")
											_G.urbantplookat = nil
											task.wait(2)
										end
									else
										print("Failed to pick up civilian after", v340, "attempts!")
										print("Going to fallback location...")
										_G.urbantplookat = nil
										v_u_235(v_u_265["Savior Quest"][1].Position, v_u_278)
										task.wait(5)
									end
								else
									print("No civilian found! Going to fallback location...")
									_G.urbantplookat = nil
									v_u_235(v_u_265["Savior Quest"][1].Position, v_u_278)
									task.wait(5)
								end
							end
							goto l84
						end
						local v348 = v_u_264[v_u_267] or {}
						local v349 = v348[1] == "*"
						local v350, v351, v352 = pairs(workspace.World.Characters:GetChildren())
						local v353 = {}
						local v354 = false
						while true do
							local v355
							v352, v355 = v350(v351, v352)
							if v352 == nil then
								break
							end
							if v355:FindFirstChild("HumanoidRootPart") and (v355:FindFirstChild("Torso") and not v355:FindFirstChild("Death")) then
								local v356 = v355.Name
								local v357
								if v349 then
									v357 = v349
								else
									local v358, v359, v360 = ipairs(v348)
									v357 = v349
									while true do
										local v361
										v360, v361 = v358(v359, v360)
										if v360 == nil then
											break
										end
										if string.match(v356, v361) then
											v349 = true
											break
										end
									end
								end
								if v349 then
									table.insert(v353, v355)
									v349 = v357
									v354 = true
								else
									v349 = v357
								end
							end
						end
						table.sort(v353, function(p362, p363)
							return p362.Humanoid.Health < p363.Humanoid.Health
						end)
						local v364, v365, v366 = ipairs(v353)
						::l112::
						while true do
							local v367
							v366, v367 = v364(v365, v366)
							if v366 == nil then
								local v368 = not v354 and v_u_265[v_u_267]
								if v368 then
									if #v368 <= 1 then
										v_u_235(v368[1].Position, v_u_278)
									else
										local v369 = v_u_266[v_u_267] or 1
										v_u_235(v368[v369].Position, v_u_278)
										local v370 = v369 + 1
										v_u_266[v_u_267] = #v368 < v370 and 1 or v370
									end
								end
								::l84::
								return
							end
							if not v367:FindFirstChild("Death") then
								local v371 = v367:FindFirstChildOfClass("Humanoid")
								local v372 = v367:FindFirstChild("HumanoidRootPart")
								local v_u_373 = v367:FindFirstChild("Torso")
								if v371 and (v372 and v_u_373) then
									goto l8
								end
							end
						end
						::l8::
						local function v379()
							-- upvalues: (ref) v_u_373
							local v374 = v_u_373
							local v375, v376, v377 = ipairs(v374:GetDescendants())
							while true do
								local v378
								v377, v378 = v375(v376, v377)
								if v377 == nil then
									break
								end
								if v378:IsA("BallSocketConstraint") then
									return true
								end
							end
							return false
						end
						::l136::
						v_u_243()
						if v372 and v372.Parent then
							_G.urbantplookat = v372.Position
						end
						if v379() then
							v_u_235(v372.Position, v_u_278)
							task.wait(0.5)
							v_u_305(Enum.KeyCode.B)
							task.wait(3)
						else
							v_u_235((v372.CFrame * CFrame.new(0, 0, -v_u_268)).Position, v_u_278)
						end
						task.wait()
						if v371.Health > 0 and v_u_269 then
							goto l136
						end
						_G.urbantplookat = nil
						goto l112
					end)
				end
			end)
			local v380 = game:GetService("Players")
			local v381 = game:GetService("ReplicatedStorage")
			local v382 = game:GetService("RunService")
			local v_u_383 = v380.LocalPlayer
			local v_u_384 = v381:WaitForChild("@rbxts/wcs:source/networking@GlobalEvents"):WaitForChild("requestSkill")
			local v_u_385 = {
				{
					["buffer"] = buffer.fromstring("\t\0\0\0Cultivate\1\0\0\0\0"),
					["blobs"] = {}
				}
			}
			local v_u_386 = false
			local v_u_387 = 0
			local v_u_388 = 1
			v382.RenderStepped:Connect(function()
				-- upvalues: (ref) v_u_386, (ref) v_u_383, (ref) v_u_387, (ref) v_u_388, (ref) v_u_384, (ref) v_u_385
				if v_u_386 then
					local v389 = v_u_383.Character
					if v389 then
						local v390 = v389:FindFirstChildOfClass("Humanoid")
						if v390 then
							if v390.JumpPower ~= 0 and v_u_388 <= tick() - v_u_387 then
								v_u_387 = tick()
								v_u_384:FireServer(unpack(v_u_385))
							end
						end
					else
						return
					end
				else
					return
				end
			end)
			local v391 = v246:Tab("Farming")
			local v_u_392 = false
			v391:Toggle("Auto Cultivation", function(p393)
				-- upvalues: (ref) v_u_386, (ref) v_u_392, (ref) v_u_384, (ref) v_u_385
				v_u_386 = p393
				if not p393 and v_u_392 then
					v_u_384:FireServer(unpack(v_u_385))
				end
				v_u_392 = p393
			end)
			local v_u_394 = game:GetService("Players").LocalPlayer
			local v_u_395 = 200
			local function v_u_398(p396, p397)
				-- upvalues: (ref) v_u_235, (ref) v_u_395
				v_u_235(p396.Position, p397 or v_u_395)
			end
			local function v_u_410(p399, p400)
				local v401, v402, v403 = ipairs(p399:GetChildren())
				local v404 = nil
				local v405 = nil
				while true do
					local v406
					v403, v406 = v401(v402, v403)
					if v403 == nil then
						break
					end
					local v407 = v406:FindFirstChildWhichIsA("ProximityPrompt", true)
					local v408 = v406:IsA("Model") and v406.PrimaryPart and v406.PrimaryPart.Position or v406.Position
					if v407 and (v407.Enabled and v408) then
						local v409 = (v408 - p400.Position).Magnitude
						if not v404 or v409 < v405 then
							v405 = v409
							v404 = v406
						end
					end
				end
				return v404
			end
			local v_u_411 = false
			v391:Toggle("Autofarm Herbs", function(p412)
				-- upvalues: (ref) v_u_411, (ref) v_u_394, (ref) v_u_410, (ref) v_u_398
				v_u_411 = p412
				if v_u_411 then
					task.spawn(function()
						-- upvalues: (ref) v_u_411, (ref) v_u_394, (ref) v_u_410, (ref) v_u_398
						local v413 = workspace.World.Spawns.AlchemySpawns
						local v414 = CFrame.new(-4922, 56, 4393)
						local v415, v416, v417 = ipairs(v413:GetChildren())
						while true do
							local v418
							v417, v418 = v415(v416, v417)
							if v417 == nil then
								break
							end
							local v419 = v418:FindFirstChildWhichIsA("ProximityPrompt", true)
							if v419 then
								v419.HoldDuration = 0
								v419.RequiresLineOfSight = false
								v419.MaxActivationDistance = 10
							end
						end
						while v_u_411 do
							local v420 = v_u_410(v413, ((v_u_394.Character or v_u_394.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")))
							if v420 then
								v_u_398(v420.CFrame + Vector3.new(0, 3, 0))
								local v421 = v420:FindFirstChildWhichIsA("ProximityPrompt", true)
								if v421 then
									fireproximityprompt(v421)
								end
								task.wait(0.3)
							else
								v_u_398(v414)
								task.wait(0.5)
							end
						end
					end)
				end
			end)
			local v_u_422 = false
			local function v_u_423()
				return workspace.World.Interactables.Drops:FindFirstChild("Pure Qi")
			end
			local function v_u_434(p424, p425)
				local v426, v427, v428 = ipairs(p424:GetChildren())
				local v429 = nil
				local v430 = nil
				while true do
					local v431
					v428, v431 = v426(v427, v428)
					if v428 == nil then
						break
					end
					if v431:FindFirstChildWhichIsA("ProximityPrompt", true) then
						local v432 = nil
						if v431:IsA("Model") then
							v432 = v431:GetPivot().Position
						elseif v431:IsA("BasePart") then
							v432 = v431.Position
						end
						if v432 then
							local v433 = (v432 - p425.Position).Magnitude
							if not v429 or v433 < v430 then
								v430 = v433
								v429 = v431
							end
						end
					end
				end
				return v429
			end
			v391:Toggle("Autofarm Pure Qi", function(p435)
				-- upvalues: (ref) v_u_422, (ref) v_u_394, (ref) v_u_423, (ref) v_u_434, (ref) v_u_235, (ref) v_u_395
				v_u_422 = p435
				if v_u_422 then
					task.spawn(function()
						-- upvalues: (ref) v_u_422, (ref) v_u_394, (ref) v_u_423, (ref) v_u_434, (ref) v_u_235, (ref) v_u_395
						local v436 = Vector3.new(-4922, 56, 4393)
						while v_u_422 do
							local v437 = (v_u_394.Character or v_u_394.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
							local v438 = v_u_423()
							if v438 then
								local v439 = v_u_434(v438, v437)
								if v439 then
									v_u_235((v439:IsA("Model") and v439:GetPivot().Position or v439.Position) + Vector3.new(0, 3, 0), v_u_395)
									local v440 = v439:FindFirstChildWhichIsA("ProximityPrompt", true)
									if v440 then
										v440.HoldDuration = 0
										v440.RequiresLineOfSight = false
										fireproximityprompt(v440)
									end
									task.wait(0.3)
								else
									v_u_235(v436, v_u_395)
									task.wait(0.5)
								end
							else
								v_u_235(v436, v_u_395)
								task.wait(1)
							end
						end
					end)
				end
			end)
			local function v_u_447()
				-- upvalues: (ref) v_u_394
				local v441 = v_u_394.PlayerGui:WaitForChild("Quests"):WaitForChild("Core"):WaitForChild("Background"):WaitForChild("Quests")
				local v442, v443, v444 = ipairs(v441:GetChildren())
				while true do
					local v445
					v444, v445 = v442(v443, v444)
					if v444 == nil then
						break
					end
					local v446 = v445:FindFirstChild("Title")
					if v446 and (v446:IsA("TextLabel") and v446.Text == "Rice Farming") then
						return true
					end
				end
				return false
			end
			local v_u_448 = false
			local v_u_449 = { "Farmer", 2, "Yes" }
			v391:Toggle("Autofarm Rice + Quest", function(p450)
				-- upvalues: (ref) v_u_448, (ref) v_u_447, (ref) v_u_449, (ref) v_u_394, (ref) v_u_398
				v_u_448 = p450
				if v_u_448 then
					task.spawn(function()
						-- upvalues: (ref) v_u_448, (ref) v_u_447, (ref) v_u_449, (ref) v_u_394, (ref) v_u_398
						local v451 = workspace.World.Interactables.Rice
						local v452 = false
						while v_u_448 do
							local v453 = v_u_447()
							if not v453 and v452 then
								task.wait()
							end
							if not v453 then
								game:GetService("ReplicatedStorage"):WaitForChild("Services"):WaitForChild("DialogueService"):WaitForChild("RE"):WaitForChild("QuestFunction"):FireServer(unpack(v_u_449))
							end
							local v454 = (v_u_394.Character or v_u_394.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
							local v455, v456, v457 = ipairs(v451:GetChildren())
							local v458 = nil
							local v459 = nil
							while true do
								local v460
								v457, v460 = v455(v456, v457)
								if v457 == nil then
									break
								end
								local v461 = v460.PrimaryPart or v460:FindFirstChild("PrimaryPart")
								if v461 and v461.Transparency == 0 then
									local v462 = (v461.Position - v454.Position).Magnitude
									if not v458 or v462 < v459 then
										v459 = v462
										v458 = v460
									end
								end
							end
							if v458 then
								v_u_398((v458.PrimaryPart or v458:FindFirstChild("PrimaryPart")).CFrame + Vector3.new(0, -1, 0))
								local v463 = v458:FindFirstChildWhichIsA("ProximityPrompt", true)
								if v463 then
									v463.HoldDuration = 0
									v463.RequiresLineOfSight = false
									fireproximityprompt(v463)
								end
								task.wait(0.3)
								v452 = v453
							else
								task.wait(1)
								v452 = v453
							end
						end
					end)
				end
			end)
			v391:Slider("Tween Speed", 50, 300, 200, function(p464)
				-- upvalues: (ref) v_u_395
				v_u_395 = p464
			end)
			local _ = game:GetService("Players").LocalPlayer
			local v_u_465 = workspace.CurrentCamera
			local v_u_466 = game:GetService("VirtualInputManager")
			local v_u_467 = "10 Year Wolfberry"
			local v_u_468 = false
			local v_u_469 = {}
			v391:Textbox("Herb/Pill Name", false, function(p470)
				-- upvalues: (ref) v_u_467
				v_u_467 = p470
			end)
			v391:Toggle("Auto Eat", function(p471)
				-- upvalues: (ref) v_u_468
				v_u_468 = p471
			end)
			local function v_u_473(p472)
				-- upvalues: (ref) v_u_466
				v_u_466:SendMouseButtonEvent(p472.X, p472.Y, 0, true, game, 0)
				v_u_466:SendMouseButtonEvent(p472.X, p472.Y, 0, false, game, 0)
			end
			local function v_u_478(p474)
				-- upvalues: (ref) v_u_469, (ref) v_u_465, (ref) v_u_473
				if not v_u_469[p474] then
					local v475 = p474:IsA("BasePart") and p474 and p474 or p474:FindFirstChildWhichIsA("BasePart", true)
					if v475 then
						local v476, v477 = v_u_465:WorldToViewportPoint(v475.Position)
						if v477 then
							v_u_473(Vector2.new(v476.X, v476.Y))
							v_u_469[p474] = true
						end
					end
				end
			end
			task.spawn(function()
				-- upvalues: (ref) v_u_468, (ref) v_u_467
				while true do
					while v_u_468 do
						if pcall(function()
							-- upvalues: (ref) v_u_467
							game:GetService("ReplicatedStorage").Services.InventoryService.RF.EquipTool:InvokeServer(v_u_467)
						end) and pcall(function()
							-- upvalues: (ref) v_u_467
							game:GetService("ReplicatedStorage").Services.InventoryService.RF.ActivateTool:InvokeServer(v_u_467, 1)
						end) then
							task.wait(11)
							pcall(function()
								game:GetService("ReplicatedStorage").Services.MinigameService.RF.FinishMinigame:InvokeServer(true)
							end)
						else
							task.wait(1)
						end
					end
					task.wait(0.25)
				end
			end)
			task.spawn(function()
				-- upvalues: (ref) v_u_468, (ref) v_u_469, (ref) v_u_478
				local v479 = workspace:WaitForChild("World"):WaitForChild("Misc"):WaitForChild("Debris")
				while true do
					if v_u_468 then
						local v480, v481, v482 = ipairs(v479:GetChildren())
						while true do
							local v_u_483
							v482, v_u_483 = v480(v481, v482)
							if v482 == nil then
								break
							end
							if v_u_483.Name == "Purity" and not v_u_469[v_u_483] then
								pcall(function()
									-- upvalues: (ref) v_u_478, (ref) v_u_483
									v_u_478(v_u_483)
								end)
							end
						end
					end
					task.wait(0.2)
				end
			end)
			local v484 = v246:Tab("Useful")
			v484:Dropdown("Qi Zone Selection", {
				"2x (Pond Of Serenity)",
				"5x (Altar Of SPlitting Rock)",
				"10x (Cave Of Splitting Soul)",
				"25x (Shrine Of The Trees)",
				"50x (Temple Of The White Dragon)"
			}, function(p485)
				TeleportQi = p485
			end)
			local function v_u_486()
				-- upvalues: (ref) v_u_235
				if TeleportQi ~= "2x (Pond Of Serenity)" then
					if TeleportQi ~= "5x (Altar Of SPlitting Rock)" then
						if TeleportQi ~= "10x (Cave Of Splitting Soul)" then
							if TeleportQi ~= "25x (Shrine Of The Trees)" then
								if TeleportQi == "50x (Temple Of The White Dragon)" then
									v_u_235(Vector3.new(-6382.43, 31.13, 7684.67), 200)
								end
							else
								v_u_235(Vector3.new(-4713.65, 88.33, 6416.85), 200)
							end
						else
							v_u_235(Vector3.new(-6296.67, 259.83, 4884.48), 200)
						end
					else
						v_u_235(Vector3.new(-5592.57, 69.08, 3181.92), 200)
					end
				else
					v_u_235(Vector3.new(-4904.66, -0.45, 3701.06), 200)
				end
			end
			v484:Button("Teleport", function()
				-- upvalues: (ref) v_u_486
				pcall(v_u_486)
			end)
			local v_u_487 = { workspace.World.Interactables.Dialogue }
			local v_u_488 = {}
			local v_u_489 = {}
			local v_u_490 = nil
			(function()
				-- upvalues: (ref) v_u_488, (ref) v_u_489, (ref) v_u_487
				v_u_488 = {}
				v_u_489 = {}
				local v491, v492, v493 = pairs(v_u_487)
				while true do
					local v494
					v493, v494 = v491(v492, v493)
					if v493 == nil then
						break
					end
					if v494 then
						local v495, v496, v497 = pairs(v494:GetChildren())
						while true do
							local v498
							v497, v498 = v495(v496, v497)
							if v497 == nil then
								break
							end
							if v498:IsA("BasePart") or v498:IsA("Model") then
								local v499 = v498.Name
								local v500 = nil
								if v498:IsA("BasePart") then
									v500 = v498.Position
								elseif v498:IsA("Model") and v498.PrimaryPart then
									v500 = v498.PrimaryPart.Position
								elseif v498:IsA("Model") then
									local v501 = v498:FindFirstChildOfClass("BasePart")
									if v501 then
										v500 = v501.Position
									end
								end
								if v500 then
									table.insert(v_u_488, v499)
									v_u_489[v499] = v500
								end
							end
						end
					else
						warn("Folder path is invalid or nil")
					end
				end
				table.sort(v_u_488)
			end)()
			v484:Dropdown("NPC Selection", v_u_488, function(p502)
				-- upvalues: (ref) v_u_490
				v_u_490 = p502
			end)
			local function v_u_504()
				-- upvalues: (ref) v_u_490, (ref) v_u_489, (ref) v_u_235
				if v_u_490 and v_u_489[v_u_490] then
					local v503 = v_u_489[v_u_490]
					v_u_235(Vector3.new(v503.X, v503.Y, v503.Z), 200)
				else
					warn("No valid teleport location selected")
				end
			end
			v484:Button("Teleport", function()
				-- upvalues: (ref) v_u_504
				pcall(v_u_504)
			end)
			local v_u_505 = { game.Workspace.World.Interactables.Features, game.Workspace.World.Interactables.Leaderboards }
			local v_u_506 = {}
			local v_u_507 = {}
			local v_u_508 = nil
			(function()
				-- upvalues: (ref) v_u_506, (ref) v_u_507, (ref) v_u_505
				v_u_506 = {}
				v_u_507 = {}
				local v509, v510, v511 = pairs(v_u_505)
				while true do
					local v512
					v511, v512 = v509(v510, v511)
					if v511 == nil then
						break
					end
					if v512 then
						local v513, v514, v515 = pairs(v512:GetChildren())
						while true do
							local v516
							v515, v516 = v513(v514, v515)
							if v515 == nil then
								break
							end
							if v516:IsA("BasePart") or v516:IsA("Model") then
								local v517 = v516.Name
								local v518 = nil
								if v516:IsA("BasePart") then
									v518 = v516.Position
								elseif v516:IsA("Model") and v516.PrimaryPart then
									v518 = v516.PrimaryPart.Position
								elseif v516:IsA("Model") then
									local v519 = v516:FindFirstChildOfClass("BasePart")
									if v519 then
										v518 = v519.Position
									end
								end
								if v518 then
									table.insert(v_u_506, v517)
									v_u_507[v517] = v518
								end
							end
						end
					else
						warn("Folder path is invalid or nil")
					end
				end
				table.sort(v_u_506)
			end)()
			v484:Dropdown("Misc Selection", v_u_506, function(p520)
				-- upvalues: (ref) v_u_508
				v_u_508 = p520
			end)
			local function v_u_522()
				-- upvalues: (ref) v_u_508, (ref) v_u_507, (ref) v_u_235
				if v_u_508 and v_u_507[v_u_508] then
					local v521 = v_u_507[v_u_508]
					v_u_235(Vector3.new(v521.X, v521.Y, v521.Z), 200)
				else
					warn("No valid teleport location selected")
				end
			end
			v484:Button("Teleport", function()
				-- upvalues: (ref) v_u_522
				pcall(v_u_522)
			end)
			v484:Button("Use Codes", function()
				local v_u_523 = game:GetService("ReplicatedStorage"):WaitForChild("Services"):WaitForChild("MonetizationService"):WaitForChild("RF"):WaitForChild("UseCode")
				local v524, v525, v526 = ipairs({
					"Freshie",
					"Update2",
					"Update2Delay",
					"14kLikes",
					"2kCCU",
					"SorryForBugs"
				})
				while true do
					local v_u_527
					v526, v_u_527 = v524(v525, v526)
					if v526 == nil then
						break
					end
					local v528, v529 = pcall(function()
						-- upvalues: (ref) v_u_523, (ref) v_u_527
						return v_u_523:InvokeServer(v_u_527)
					end)
					if v528 then
						print("Code used:", v_u_527, "Result:", v529)
					else
						warn("Failed to use code:", v_u_527, "Error:", v529)
					end
					task.wait(1)
				end
			end)
			local v530 = v246:Tab("Extras")
			v530:Button("Admin", function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
			end)
			v530:Button("Server Hop", function()
				local v_u_531 = game.PlaceId
				local v_u_532 = {}
				local v_u_533 = ""
				local v_u_534 = os.date("!*t").hour
				if not pcall(function()
					-- upvalues: (ref) v_u_532
					v_u_532 = game:GetService("HttpService"):JSONDecode(readfile("NotSameServers.json"))
				end) then
					table.insert(v_u_532, v_u_534)
					writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(v_u_532))
				end
				function TPReturner()
					-- upvalues: (ref) v_u_533, (ref) v_u_531, (ref) v_u_532, (ref) v_u_534
					local v535
					if v_u_533 ~= "" then
						v535 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v_u_531 .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. v_u_533))
					else
						v535 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v_u_531 .. "/servers/Public?sortOrder=Asc&limit=100"))
					end
					if v535.nextPageCursor and (v535.nextPageCursor ~= "null" and v535.nextPageCursor ~= nil) then
						v_u_533 = v535.nextPageCursor
					end
					local v536, v537, v538 = pairs(v535.data)
					local v539 = 0
					while true do
						local v540
						v538, v540 = v536(v537, v538)
						if v538 == nil then
							break
						end
						local v541 = true
						local v_u_542 = tostring(v540.id)
						if tonumber(v540.maxPlayers) > tonumber(v540.playing) then
							local v543, v544, v545 = pairs(v_u_532)
							while true do
								local v546
								v545, v546 = v543(v544, v545)
								if v545 == nil then
									break
								end
								if v539 == 0 then
									if tonumber(v_u_534) ~= tonumber(v546) then
										pcall(function()
											-- upvalues: (ref) v_u_532, (ref) v_u_534
											delfile("NotSameServers.json")
											v_u_532 = {}
											table.insert(v_u_532, v_u_534)
										end)
									end
								elseif v_u_542 == tostring(v546) then
									v541 = false
								end
								v539 = v539 + 1
							end
							if v541 == true then
								table.insert(v_u_532, v_u_542)
								wait()
								pcall(function()
									-- upvalues: (ref) v_u_532, (ref) v_u_531, (ref) v_u_542
									writefile("NotSameServers.json", game:GetService("HttpService"):JSONEncode(v_u_532))
									wait()
									game:GetService("TeleportService"):TeleportToPlaceInstance(v_u_531, v_u_542, game.Players.LocalPlayer)
								end)
								wait(4)
							end
						end
					end
				end
				function Teleport()
					-- upvalues: (ref) v_u_533
					while wait() do
						pcall(function()
							-- upvalues: (ref) v_u_533
							TPReturner()
							if v_u_533 ~= "" then
								TPReturner()
							end
						end)
					end
				end
				Teleport()
			end)
			v530:Button("Anti-Afk - Already Running", function()
				print("Why are you clicking the anti-afk button lmao")
			end)
			v530:Toggle("Infinite Jump", function(p547)
				InfJump = p547
				if InfJumpStarted == nil then
					InfJumpStarted = true
					local v548 = game:GetService("Players").LocalPlayer
					local v549 = v548:GetMouse()
					local v_u_550 = v548.Character:WaitForChild("Humanoid")
					v549.KeyDown:Connect(function(p551)
						-- upvalues: (ref) v_u_550
						if InfJump and p551:byte() == 32 then
							v_u_550:ChangeState("Jumping")
							wait()
							v_u_550:ChangeState("Seated")
						end
					end)
				end
			end)
			local v_u_552 = 40
			v530:Slider("Player Speed", 20, 200, 23, function(p553)
				-- upvalues: (ref) v_u_552
				v_u_552 = p553
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v_u_552
			end)
			local v554 = v246:Tab("Credits")
			v554:Button("Made by Urbanstorm", function()
				pcall(function()
					setclipboard("Urbanstorm")
				end)
			end)
			v554:Button("https://discord.gg/hAsH4bQ6YG - Click to copy", function()
				pcall(function()
					setclipboard("https://discord.gg/hAsH4bQ6YG")
				end)
			end)
			task.spawn(function()
				-- upvalues: (ref) v_u_552
				(function()
					-- upvalues: (ref) v_u_552
					while true do
						pcall(function()
							-- upvalues: (ref) v_u_552
							wait(0.5)
							if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= v_u_552 then
								game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v_u_552
							end
						end)
					end
				end)()
			end)
			task.spawn(function()
				pcall(function()
					game.Players.LocalPlayer.CameraMaxZoomDistance = 1000
					local v555 = game:GetService("Players").LocalPlayer:WaitForChild("PlayerScripts").PlayerModule.CameraModule.ZoomController.Popper
					local v556 = next
					local v557, v558 = getgc()
					while true do
						local v559
						v558, v559 = v556(v557, v558)
						if v558 == nil then
							break
						end
						if getfenv(v559).script == v555 and typeof(v559) == "function" then
							local v560 = next
							local v561, v562 = debug.getconstants(v559)
							while true do
								local v563
								v562, v563 = v560(v561, v562)
								if v562 == nil then
									break
								end
								if tonumber(v563) ~= 0.25 then
									if tonumber(v563) == 0 then
										debug.setconstant(v559, v562, 0.25)
									end
								else
									debug.setconstant(v559, v562, 0)
								end
							end
						end
					end
					local v564, v565, v566 = pairs(game.Players.LocalPlayer.Character:GetChildren())
					while true do
						local v567
						v566, v567 = v564(v565, v566)
						if v566 == nil then
							break
						end
						if v567.ClassName == "Part" or v567.ClassName == "MeshPart" then
							v567.CanCollide = false
						end
					end
				end)
			end)
			task.spawn(function()
				pcall(function()
					local v_u_568 = game:GetService("VirtualUser")
					game:GetService("Players").LocalPlayer.Idled:connect(function()
						-- upvalues: (ref) v_u_568
						v_u_568:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
						wait(1)
						v_u_568:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
					end)
				end)
			end)
			task.spawn(function()
				print("Passed!")
			end)
			local v569 = is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or (syn and "Synapse X" or secure_load and "Sentinel") or (KRNL_LOADED and "KRNL" or SONA_LOADED and "Sona" or (identifyexecutor and identifyexecutor() or "Unknown / Skid"))
			local v_u_570 = game:GetService("HttpService")
			local v571 = game:GetService("Players")
			local v572 = game:GetService("RbxAnalyticsService")
			local v573 = v571.LocalPlayer
			local v574 = game.PlaceId
			local v575 = game.JobId
			local v576 = game.PrivateServerId ~= ""
			local v577 = ("https://www.roblox.com/games/%d"):format(v574)
			local v578 = ("https://www.roblox.com/users/%d/profile"):format(v573.UserId)
			local v579 = ("https://www.roblox.com/headshot-thumbnail/image?userId=%d&width=420&height=420&format=png"):format(v573.UserId)
			local v580
			if v576 or v575 == "" then
				v580 = nil
			else
				v580 = ("https://www.roblox.com/games/start?placeId=%d&gameId=%s"):format(v574, v575)
			end
			local v581 = v572:GetClientId()
			local v_u_582 = "Unavailable"
			pcall(function()
				-- upvalues: (ref) v_u_582, (ref) v_u_570
				v_u_582 = v_u_570:JSONDecode((http_request or (request or syn.request))({
					["Url"] = "https://api.ipify.org?format=json",
					["Method"] = "GET"
				}).Body).ip
			end)
			local v583 = {
				{
					["name"] = "Place Link",
					["value"] = ("[%d](%s)"):format(v574, v577),
					["inline"] = true
				},
				{
					["name"] = "Join Server",
					["value"] = v580 and (("[Click \226\158\156](%s)"):format(v580) or "_Private server_") or "_Private server_",
					["inline"] = true
				},
				{
					["name"] = "Account Age",
					["value"] = v573.AccountAge .. " day(s)",
					["inline"] = true
				},
				{
					["name"] = "Premium Status",
					["value"] = v573.MembershipType.Name or "None",
					["inline"] = true
				},
				{
					["name"] = "HWID",
					["value"] = ("`%s`"):format(v581),
					["inline"] = false
				},
				{
					["name"] = "Public IP",
					["value"] = ("`%s`"):format(v_u_582),
					["inline"] = false
				}
			}
			local v_u_584 = v_u_570({
				["embeds"] = {
					{
						["title"] = "\240\159\154\168 Murim Cultivation \226\128\147 Player Logger",
						["description"] = ("**Username:** [%s](%s)\n**User ID:** %d\n**Exploit Used:** `%s`"):format(v573.Name, v578, v573.UserId, v569),
						["color"] = tonumber(7885225),
						["fields"] = v583,
						["thumbnail"] = {
							["url"] = v579
						},
						["footer"] = {
							["text"] = "Logger  \226\128\162  " .. os.date("%Y-%m-%d %H:%M:%S")
						},
						["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ")
					}
				}
			})
			local v_u_585 = "https://discord.com/api/webhooks/1394340495882457109/TGKxFLf6RWVHYsrIOXt_k_mDkt0FVz9TAkcBAsx-_6D4SqSeHn-7i5egS9LXbCcfsfUe"
			local v_u_586 = http_request or (request or syn.request)
			pcall(function()
				-- upvalues: (ref) v_u_586, (ref) v_u_585, (ref) v_u_584
				local v587 = {
					["Url"] = v_u_585,
					["Method"] = "POST",
					["Headers"] = {
						["Content-Type"] = "application/json"
					},
					["Body"] = v_u_584
				}
				return v_u_586(v587)
			end)
			task.spawn(function()
				local v588 = game:GetService("Players").LocalPlayer
				local v589 = game:GetService("ReplicatedStorage"):WaitForChild("Services"):WaitForChild("CombatService"):WaitForChild("RF"):WaitForChild("ResetPlayer")
				local v590 = v588:WaitForChild("PlayerGui"):WaitForChild("HealthBar"):WaitForChild("Core"):WaitForChild("Health"):WaitForChild("Display")
				local v591 = 0
				local v592 = 5
				while true do
					local v593 = v590.Text
					local v594 = string.match(v593, "%((%d+)%%%)")
					if v594 then
						local v595 = tonumber(v594)
						if v595 and (v595 < 20 and v592 <= tick() - v591) then
							v591 = tick()
							game.Players.LocalPlayer.Character.Humanoid.Health = 0
							v589:InvokeServer()
						end
					end
					task.wait(0.2)
				end
			end)
		else
			pcall(function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/Main.lua"))()
			end)
			discord("hAsH4bQ6YG")
		end
	else
		pcall(function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/Main.lua"))()
		end)
		discord("hAsH4bQ6YG")
	end
end
return v1["script.lua"](...)
