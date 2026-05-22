local v1 = {}
local _ = require
v1["script.lua"] = function()
	local v_u_2 = {
		["getService"] = function()
			return game.GetService(game, ...)
		end
	}
	local v_u_3 = v_u_2["getService"]("Players")["LocalPlayer"]
	local v_u_4 = v_u_3["FindFirstChild"](v_u_3, "Project Stark Key Check")
	local function v7(p_u_5)
		-- upvalues: (ref) v_u_2
		pcall(function()
			-- upvalues: (ref) v_u_2, (ref) p_u_5
			local v6 = v_u_2["getService"]("HttpService");
			(syn and syn["request"] or request)({
				["Url"] = "http://127.0.0.1:6463/rpc?v=1",
				["Method"] = "POST",
				["Headers"] = {
					["Content-Type"] = "application/json",
					["Origin"] = "https://discord.com"
				},
				["Body"] = v6["JSONEncode"](v6, {
					["cmd"] = "INVITE_BROWSER",
					["args"] = {
						["code"] = p_u_5
					},
					["nonce"] = v6["GenerateGUID"](v6, false)
				})
			})
		end)
	end
	local v8 = false
	if true then
		if v_u_4 and v_u_4["Value"] == true then
			pcall(function()
				-- upvalues: (ref) v_u_4
				v_u_4["Destroy"](v_u_4)
				warn("Urbanstorn was here")
			end)
			v8 = true
		else
			pcall(function()
				loadstring(game["HttpGet"](game, "https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/Main.lua"))()
			end)
			v7("FDG5V5AfFh")
		end
	else
		warn("[Project Stark] Key check DISABLED")
		v8 = true
	end
	if v8 then
		local v_u_9 = v_u_2["getService"]("RunService")
		local v_u_10 = v_u_2["getService"]("VirtualInputManager")
		local v_u_11 = {
			Enum["KeyCode"]["D"],
			Enum["KeyCode"]["F"],
			Enum["KeyCode"]["J"],
			Enum["KeyCode"]["K"],
			Enum["KeyCode"]["S"],
			Enum["KeyCode"]["G"],
			Enum["KeyCode"]["H"],
			Enum["KeyCode"]["L"],
			Enum["KeyCode"]["E"],
			Enum["KeyCode"]["I"]
		}
		local v_u_12 = setmetatable({}, {
			["__mode"] = "k"
		})
		local v_u_13 = setmetatable({}, {
			["__mode"] = "k"
		})
		local v_u_14 = setmetatable({}, {
			["__mode"] = "k"
		})
		local v_u_15 = setmetatable({}, {
			["__mode"] = "k"
		})
		local v16, v17, v18 = ipairs(v_u_11)
		local v_u_19 = v_u_2
		local v_u_20 = {}
		local v_u_21 = 1
		local v_u_22 = nil
		local v_u_23 = false
		local v_u_24 = false
		local v_u_25 = 0.8
		local v_u_26 = 70
		local v_u_27 = 2
		while true do
			local v28
			v18, v28 = v16(v17, v18)
			if v18 == nil then
				break
			end
			v_u_20[v28] = false
		end
		local function v_u_30(p29)
			-- upvalues: (ref) v_u_20, (ref) v_u_10, (ref) v_u_24
			if not v_u_20[p29] then
				v_u_10["SendKeyEvent"](v_u_10, true, p29, false, game)
				v_u_20[p29] = true
				if v_u_24 then
					print("✓ PRESS:", p29)
				end
			end
		end
		local function v_u_32(p31)
			-- upvalues: (ref) v_u_20, (ref) v_u_10, (ref) v_u_24
			if v_u_20[p31] then
				v_u_10["SendKeyEvent"](v_u_10, false, p31, false, game)
				v_u_20[p31] = false
				if v_u_24 then
					print("✗ RELEASE:", p31)
				end
			end
		end
		local function v_u_37()
			-- upvalues: (ref) v_u_20, (ref) v_u_32
			local v33, v34, v35 = pairs(v_u_20)
			while true do
				local v36
				v35, v36 = v33(v34, v35)
				if v35 == nil then
					break
				end
				if v36 then
					v_u_32(v35)
				end
			end
		end
		local function v_u_42()
			-- upvalues: (ref) v_u_11, (ref) v_u_20, (ref) v_u_24
			local v38, v39, v40 = ipairs(v_u_11)
			while true do
				local v41
				v40, v41 = v38(v39, v40)
				if v40 == nil then
					break
				end
				if not v_u_20[v41] then
					return v41
				end
			end
			if v_u_24 then
				print("⚠ WARNING: All 10 keys in use!")
			end
			return nil
		end
		local function v_u_49(p43)
			-- upvalues: (ref) v_u_11, (ref) v_u_20
			local v44, v45, v46 = ipairs(v_u_11)
			local v47 = {}
			while true do
				local v48
				v46, v48 = v44(v45, v46)
				if v46 == nil then
					break
				end
				if not v_u_20[v48] then
					table.insert(v47, v48)
					if p43 <= #v47 then
						break
					end
				end
			end
			return v47
		end
		local function v_u_55()
			-- upvalues: (ref) v_u_11, (ref) v_u_20
			local v50, v51, v52 = ipairs(v_u_11)
			local v53 = 0
			while true do
				local v54
				v52, v54 = v50(v51, v52)
				if v52 == nil then
					break
				end
				if not v_u_20[v54] then
					v53 = v53 + 1
				end
			end
			return v53
		end
		local function v_u_68(p56)
			-- upvalues: (ref) v_u_13, (ref) v_u_20
			local v57 = math.huge
			local v58, v59, v60 = pairs(v_u_13)
			local v61 = nil
			while true do
				local v62
				v60, v62 = v58(v59, v60)
				if v60 == nil then
					break
				end
				if v62["started"] then
					local v63 = math.abs(v62["y"] - p56)
					if v63 < v57 then
						v61 = v62["key"]
						v57 = v63
					end
				end
			end
			if not v61 then
				local v64, v65, v66 = pairs(v_u_20)
				while true do
					local v67
					v66, v67 = v64(v65, v66)
					if v66 == nil then
						break
					end
					if v67 then
						return v66
					end
				end
			end
			return v61
		end
		local function v_u_70(p69)
			return p69["FindFirstChild"](p69, "tail") ~= nil and p69["FindFirstChild"](p69, "tailhead") ~= nil
		end
		local function v_u_78(p71)
			local v72 = p71["FindFirstChild"](p71, "note")
			if v72 and v72["IsA"](v72, "BasePart") then
				return v72["Position"]["X"], v72["Position"]["Y"]
			end
			local v73 = p71["FindFirstChild"](p71, "bg")
			if v73 and v73["IsA"](v73, "BasePart") then
				return v73["Position"]["X"], v73["Position"]["Y"]
			end
			local v74, v75, v76 = pairs(p71["GetChildren"](p71))
			while true do
				local v77
				v76, v77 = v74(v75, v76)
				if v76 == nil then
					break
				end
				if v77["IsA"](v77, "BasePart") then
					return v77["Position"]["X"], v77["Position"]["Y"]
				end
			end
			return nil, nil
		end
		local function v_u_81(p79)
			local v80 = p79["FindFirstChild"](p79, "tailhead")
			if v80 and v80["IsA"](v80, "BasePart") then
				return v80["Position"]["X"]
			else
				return nil
			end
		end
		local function v_u_83(p82)
			-- upvalues: (ref) v_u_26, (ref) v_u_25
			math.abs(p82 - v_u_26)
			return true
		end
		local function v_u_86(p84)
			-- upvalues: (ref) v_u_26, (ref) v_u_27, (ref) v_u_21
			local v85
			if v_u_26 - v_u_27 > p84 then
				v85 = false
			else
				local _ = v_u_26 + v_u_21
				v85 = true
			end
			return v85
		end
		local function v_u_88(p87)
			-- upvalues: (ref) v_u_26, (ref) v_u_21
			return v_u_26 + v_u_21 < p87
		end
		local function v_u_98(p89, p90, p91)
			-- upvalues: (ref) v_u_86, (ref) v_u_14, (ref) v_u_12, (ref) v_u_78, (ref) v_u_70
			if not v_u_86(p91) then
				return {}
			end
			local v92, v93, v94 = pairs(p90)
			local v95 = {}
			while true do
				local v96
				v94, v96 = v92(v93, v94)
				if v94 == nil then
					break
				end
				if v96 ~= p89 and (v96["Name"] == "taphold" and (v96["IsA"](v96, "Model") and not (v_u_14[v96] or v_u_12[v96] and v_u_12[v96]["hit"]))) then
					local v97, _ = v_u_78(v96)
					if v97 and (math.abs(p91 - v97) < 0.6 and not v_u_70(v96)) then
						table.insert(v95, v96)
					end
				end
			end
			return v95
		end
		local function v_u_154()
			-- upvalues: (ref) v_u_22, (ref) v_u_26, (ref) v_u_9, (ref) v_u_23, (ref) v_u_37, (ref) v_u_24, (ref) v_u_70, (ref) v_u_55, (ref) v_u_12, (ref) v_u_13, (ref) v_u_32, (ref) v_u_14, (ref) v_u_15, (ref) v_u_78, (ref) v_u_88, (ref) v_u_81, (ref) v_u_83, (ref) v_u_42, (ref) v_u_30, (ref) v_u_98, (ref) v_u_49, (ref) v_u_68, (ref) v_u_25
			if not v_u_22 then
				pcall(function()
					-- upvalues: (ref) v_u_26
					local v99 = workspace["WaitForChild"](workspace, "gameplay", 5)["WaitForChild"](workspace["gameplay"], "line", 5)
					if v99 then
						v_u_26 = v99["Position"]["X"]
					end
				end)
				local v_u_100 = 0
				local v_u_101 = 0
				v_u_22 = v_u_9["Heartbeat"]["Connect"](v_u_9["Heartbeat"], function()
					-- upvalues: (ref) v_u_101, (ref) v_u_23, (ref) v_u_37, (ref) v_u_24, (ref) v_u_100, (ref) v_u_70, (ref) v_u_55, (ref) v_u_12, (ref) v_u_13, (ref) v_u_32, (ref) v_u_14, (ref) v_u_15, (ref) v_u_78, (ref) v_u_88, (ref) v_u_81, (ref) v_u_83, (ref) v_u_42, (ref) v_u_30, (ref) v_u_26, (ref) v_u_98, (ref) v_u_49, (ref) v_u_68
					v_u_101 = v_u_101 + 1
					if not v_u_23 then
						v_u_37()
						return
					end
					local v102 = workspace["GetChildren"](workspace)
					local v103 = tick()
					if v_u_24 and v103 - v_u_100 > 1 then
						local v104, v105, v106 = pairs(v102)
						local v107 = 0
						local v108 = 0
						local v109 = 0
						local v110 = 0
						while true do
							local v111
							v106, v111 = v104(v105, v106)
							if v106 == nil then
								break
							end
							if v111["IsA"](v111, "Model") then
								if v111["Name"] ~= "taphold" then
									if v111["Name"] ~= "release" then
										if v111["Name"] == "catch" then
											v107 = v107 + 1
										end
									else
										v108 = v108 + 1
									end
								elseif v_u_70(v111) then
									v110 = v110 + 1
								else
									v109 = v109 + 1
								end
							end
						end
						local v112 = v_u_55()
						if v109 + v110 + v108 + v107 > 0 then
							print(string.format("Notes: T:%d H:%d R:%d C:%d | Keys Available: %d/10", v109, v110, v108, v107, v112))
						end
						v_u_100 = v103
					end
					local v113, v114, v115 = pairs(v_u_12)
					while true do
						local v116
						v115, v116 = v113(v114, v115)
						if v115 == nil then
							break
						end
						if not v115["Parent"] then
							v_u_12[v115] = nil
						end
					end
					local v117, v118, v119 = pairs(v_u_13)
					while true do
						local v120
						v119, v120 = v117(v118, v119)
						if v119 == nil then
							break
						end
						if not v119["Parent"] then
							if v120["key"] then
								v_u_32(v120["key"])
							end
							v_u_13[v119] = nil
						end
					end
					local v121, v122, v123 = pairs(v_u_14)
					while true do
						v123 = v121(v122, v123)
						if v123 == nil then
							break
						end
						if not v123["Parent"] then
							v_u_14[v123] = nil
						end
					end
					local v124, v125, v126 = pairs(v_u_15)
					while true do
						v126 = v124(v125, v126)
						if v126 == nil then
							break
						end
						if not v126["Parent"] then
							v_u_15[v126] = nil
						end
					end
					local v127, v128, v129 = pairs(v102)
					while true do
						local v130
						v129, v130 = v127(v128, v129)
						if v129 == nil then
							return
						end
						if v130["IsA"](v130, "Model") then
							if v130["Name"] ~= "taphold" then
								if v130["Name"] ~= "release" then
									if v130["Name"] == "catch" then
										local v131, v132 = v_u_78(v130)
										if v131 then
											if not v_u_12[v130] then
												v_u_12[v130] = {
													["lastX"] = v131,
													["hit"] = false,
													["type"] = "catch"
												}
											end
											local v133 = v_u_12[v130]
											if v133["lastX"] and v131 < v133["lastX"] - 5 then
												v133["hit"] = false
												if v_u_13[v130] then
													v_u_32(v_u_13[v130]["key"])
													v_u_13[v130] = nil
												end
												if v_u_24 then
													print("🔄 Catch RECYCLED at X:", v131)
												end
											end
											if v_u_88(v131) then
												if v_u_13[v130] then
													v_u_32(v_u_13[v130]["key"])
													v_u_13[v130] = nil
													if v_u_24 then
														print("🎵 CATCH END (passed)")
													end
												end
												v133["hit"] = true
												v133["lastX"] = v131
											else
												if not v_u_13[v130] and v_u_83(v131) then
													local v134 = v_u_42()
													if v134 then
														v_u_30(v134)
														v_u_13[v130] = {
															["key"] = v134,
															["y"] = v132,
															["started"] = true
														}
														v_u_15[v130] = v134
														v133["hit"] = true
														if v_u_24 then
															print("🎵 CATCH START at Y:", v132, "X:", v131, "Key:", v134)
														end
													elseif v_u_24 then
														print("⚠ No key available for CATCH (all 10 in use)")
													end
												end
												v133["lastX"] = v131
											end
										end
									end
								else
									local v135, v136 = v_u_78(v130)
									if v135 then
										if not v_u_12[v130] then
											v_u_12[v130] = {
												["lastX"] = v135,
												["hit"] = false,
												["type"] = "release"
											}
										end
										local v137 = v_u_12[v130]
										if v137["lastX"] and v135 < v137["lastX"] - 5 then
											v137["hit"] = false
											if v_u_24 then
												print("🔄 Release RECYCLED at X:", v135)
											end
										end
										if v_u_88(v135) then
											if not v137["hit"] and v_u_24 then
												print("⚠ MISSED release at Y:", v136)
											end
											v137["hit"] = true
											v137["lastX"] = v135
										else
											if not v137["hit"] and v_u_83(v135) then
												local v138 = v_u_68(v136)
												if not v138 then
													if v_u_24 then
														print("⚠ No key held for RELEASE at Y:", v136)
													end
													goto l182
												end
												v_u_32(v138)
												local v139, v140, v141 = pairs(v_u_13)
												while true do
													local v142
													v141, v142 = v139(v140, v141)
													if v141 == nil then
														break
													end
													if v142["key"] == v138 then
														v_u_13[v141] = nil
														break
													end
												end
												if v_u_24 then
													print("🎵 RELEASE at Y:", v136, "X:", v135)
												end
												::l182::
												v137["hit"] = true
											end
											v137["lastX"] = v135
										end
									end
								end
							else
								local v143, v144 = v_u_78(v130)
								if v143 then
									if not v_u_12[v130] then
										v_u_12[v130] = {
											["lastX"] = v143,
											["hit"] = false,
											["type"] = "taphold"
										}
									end
									local v145 = v_u_12[v130]
									if v145["lastX"] and v143 < v145["lastX"] - 5 then
										v145["hit"] = false
										v_u_14[v130] = nil
										v_u_15[v130] = nil
										if v_u_13[v130] then
											v_u_32(v_u_13[v130]["key"])
											v_u_13[v130] = nil
										end
										if v_u_24 then
											print("🔄 Note RECYCLED at X:", v143)
										end
									end
									if v_u_88(v143) then
										if not v145["hit"] and v_u_24 then
											print("⚠ MISSED taphold at Y:", v144, "X:", v143)
										end
										v145["hit"] = true
										v145["lastX"] = v143
									elseif v145["hit"] then
										v145["lastX"] = v143
									elseif v_u_14[v130] then
										v145["lastX"] = v143
									else
										if not v_u_70(v130) then
											if v_u_83(v143) then
												local v146 = v_u_98(v130, v102, v143)
												local v_u_147 = 1 + #v146
												local v_u_148 = v_u_49(v_u_147)
												if #v_u_148 <= 0 then
													if v_u_24 then
														print("⚠ No keys available for TAP (all 10 in use)")
													end
												else
													for v149 = 1, math.min(#v_u_148, v_u_147) do
														v_u_30(v_u_148[v149])
													end
													task.delay(0.03, function()
														-- upvalues: (ref) v_u_148, (ref) v_u_147, (ref) v_u_32
														for v150 = 1, math.min(#v_u_148, v_u_147) do
															v_u_32(v_u_148[v150])
														end
													end)
													v145["hit"] = true
													v_u_14[v130] = true
													v_u_15[v130] = v_u_148[1]
													for v151 = 1, math.min(#v146, #v_u_148 - 1) do
														v_u_14[v146[v151]] = true
														v_u_15[v146[v151]] = v_u_148[v151 + 1]
														if v_u_12[v146[v151]] then
															v_u_12[v146[v151]]["hit"] = true
														end
													end
													if v_u_24 then
														print(string.format("🎵 TAP %d notes at X:%.2f Y:%.2f (Keys: %d available)", math.min(v_u_147, #v_u_148), v143, v144, v_u_55()))
													end
												end
											end
											goto l114
										end
										local v152 = v_u_81(v130)
										if v152 then
											if not v_u_13[v130] and v_u_83(v143) then
												local v153 = v_u_42()
												if v153 then
													v_u_30(v153)
													v_u_13[v130] = {
														["key"] = v153,
														["y"] = v144,
														["started"] = true
													}
													v_u_15[v130] = v153
													v145["hit"] = true
													if v_u_24 then
														print("🎵 HOLD START at Y:", v144, "X:", v143, "Key:", v153)
													end
												elseif v_u_24 then
													print("⚠ No key available for HOLD (all 10 in use)")
												end
											end
											if v_u_13[v130] and (v_u_13[v130]["started"] and (v_u_83(v152) or v_u_26 < v152)) then
												v_u_32(v_u_13[v130]["key"])
												if v_u_24 then
													print("🎵 HOLD END at tailX:", v152)
												end
												v_u_13[v130] = nil
											end
											::l114::
											v145["lastX"] = v143
										end
									end
								end
							end
						end
					end
				end)
				print("=====================================")
				print("   RHYTHM AUTO PLAYER STARTED")
				print("   Keys: D, F, J, K, S, G, H, L, E, I")
				print("   Line X:", v_u_26)
				print("   Hit Range: ±" .. v_u_25)
				print("=====================================")
			end
		end
		local v155 = loadstring(game["HttpGet"](game, "https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/UiLib.lua"))()
		local v156 = v155["Window"](v155, "Project Stark\
Rusher", Color3.fromRGB(120, 81, 169))
		local v157 = v156["Tab"](v156, "Main")
		v157["Toggle"](v157, "Enable Auto Player", function(p158)
			-- upvalues: (ref) v_u_23, (ref) v_u_154, (ref) v_u_37
			v_u_23 = p158
			if v_u_23 then
				v_u_154()
				warn("[Rhythm Auto] ENABLED")
			else
				v_u_37()
				warn("[Rhythm Auto] DISABLED")
			end
		end)
		v157["Toggle"](v157, "Debug Mode", function(p159)
			-- upvalues: (ref) v_u_24
			v_u_24 = p159
			warn("[Rhythm Auto] Debug: " .. (v_u_24 and "ON" or "OFF"))
		end)
		v157["Slider"](v157, "Hit Range", 1, 20, 8, function(p160)
			-- upvalues: (ref) v_u_25
			v_u_25 = p160 / 10
			warn("[Rhythm Auto] Hit Range: " .. v_u_25)
		end)
		v157["Slider"](v157, "Early Range", 1, 50, 20, function(p161)
			-- upvalues: (ref) v_u_27
			v_u_27 = p161 / 10
			warn("[Rhythm Auto] Early Range: " .. v_u_27)
		end)
		v157["Slider"](v157, "Late Range", 1, 50, 10, function(p162)
			-- upvalues: (ref) v_u_21
			v_u_21 = p162 / 10
			warn("[Rhythm Auto] Late Range: " .. v_u_21)
		end)
		v157["Button"](v157, "Refresh Line Position", function()
			-- upvalues: (ref) v_u_26
			pcall(function()
				-- upvalues: (ref) v_u_26
				local v163 = workspace["WaitForChild"](workspace, "gameplay", 5)["WaitForChild"](workspace["gameplay"], "line", 5)
				if v163 then
					v_u_26 = v163["Position"]["X"]
					warn("[Rhythm Auto] Line X updated to: " .. v_u_26)
				else
					warn("[Rhythm Auto] Could not find line!")
				end
			end)
		end)
		v157["Button"](v157, "Release All Keys", function()
			-- upvalues: (ref) v_u_37
			v_u_37()
			warn("[Rhythm Auto] All keys released")
		end)
		local v164 = v156["Tab"](v156, "Extras")
		v164["Button"](v164, "Bind UI Toggle Key (click to set)", function()
			-- upvalues: (ref) v_u_19
			local v_u_165 = v_u_19["getService"]("UserInputService")
			local v_u_166 = true
			local v_u_167 = nil
			v_u_167 = v_u_165["InputBegan"]["Connect"](v_u_165["InputBegan"], function(p168, p169)
				-- upvalues: (ref) v_u_166, (ref) v_u_167, (ref) v_u_165
				if not p169 and v_u_166 then
					v_u_166 = false
					if v_u_167 then
						v_u_167["Disconnect"](v_u_167)
					end
					local v_u_170 = p168["KeyCode"]
					if v_u_170 and v_u_170 ~= Enum["KeyCode"]["Unknown"] then
						v_u_165["InputBegan"]["Connect"](v_u_165["InputBegan"], function(p171, p172)
							-- upvalues: (ref) v_u_170
							local v173 = not p172 and (p171["KeyCode"] == v_u_170 and game["GetService"](game, "CoreGui")["FindFirstChild"](game["GetService"](game, "CoreGui"), "Library"))
							if v173 then
								v173["Enabled"] = not v173["Enabled"]
							end
						end)
					end
				end
			end)
		end)
		v164["Button"](v164, "Unload Script", function()
			pcall(function()
				local v174 = game["GetService"](game, "CoreGui")["FindFirstChild"](game["GetService"](game, "CoreGui"), "Library")
				if v174 then
					v174["Destroy"](v174)
				end
			end)
		end)
		v164["Button"](v164, "Admin", function()
			loadstring(game["HttpGet"](game, "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
		end)
		v164["Button"](v164, "Server Hop", function()
			local v_u_175 = game["PlaceId"]
			local v_u_176 = {}
			local v_u_177 = ""
			local v_u_178 = os.date("!*t")["hour"]
			if not pcall(function()
				-- upvalues: (ref) v_u_176
				v_u_176 = game["GetService"](game, "HttpService")["JSONDecode"](game["GetService"](game, "HttpService"), readfile("NotSameServers.json"))
			end) then
				table.insert(v_u_176, v_u_178)
				writefile("NotSameServers.json", game["GetService"](game, "HttpService")["JSONEncode"](game["GetService"](game, "HttpService"), v_u_176))
			end
			function TPReturner()
				-- upvalues: (ref) v_u_177, (ref) v_u_175, (ref) v_u_176, (ref) v_u_178
				local v179
				if v_u_177 ~= "" then
					v179 = game["HttpService"]["JSONDecode"](game["HttpService"], game["HttpGet"](game, "https://games.roblox.com/v1/games/" .. v_u_175 .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. v_u_177))
				else
					v179 = game["HttpService"]["JSONDecode"](game["HttpService"], game["HttpGet"](game, "https://games.roblox.com/v1/games/" .. v_u_175 .. "/servers/Public?sortOrder=Asc&limit=100"))
				end
				if v179["nextPageCursor"] and (v179["nextPageCursor"] ~= "null" and v179["nextPageCursor"] ~= nil) then
					v_u_177 = v179["nextPageCursor"]
				end
				local v180, v181, v182 = pairs(v179["data"])
				local v183 = 0
				while true do
					local v184
					v182, v184 = v180(v181, v182)
					if v182 == nil then
						break
					end
					local v185 = true
					local v_u_186 = tostring(v184["id"])
					if tonumber(v184["maxPlayers"]) > tonumber(v184["playing"]) then
						local v187, v188, v189 = pairs(v_u_176)
						while true do
							local v190
							v189, v190 = v187(v188, v189)
							if v189 == nil then
								break
							end
							if v183 == 0 then
								if tonumber(v_u_178) ~= tonumber(v190) then
									pcall(function()
										-- upvalues: (ref) v_u_176, (ref) v_u_178
										delfile("NotSameServers.json")
										v_u_176 = {}
										table.insert(v_u_176, v_u_178)
									end)
								end
							elseif v_u_186 == tostring(v190) then
								v185 = false
							end
							v183 = v183 + 1
						end
						if v185 == true then
							table.insert(v_u_176, v_u_186)
							wait()
							pcall(function()
								-- upvalues: (ref) v_u_176, (ref) v_u_175, (ref) v_u_186
								writefile("NotSameServers.json", game["GetService"](game, "HttpService")["JSONEncode"](game["GetService"](game, "HttpService"), v_u_176))
								wait()
								game["GetService"](game, "TeleportService")["TeleportToPlaceInstance"](game["GetService"](game, "TeleportService"), v_u_175, v_u_186, game["Players"]["LocalPlayer"])
							end)
							wait(4)
						end
					end
				end
			end
			function Teleport()
				-- upvalues: (ref) v_u_177
				while wait() do
					pcall(function()
						-- upvalues: (ref) v_u_177
						TPReturner()
						if v_u_177 ~= "" then
							TPReturner()
						end
					end)
				end
			end
			Teleport()
		end)
		v164["Button"](v164, "Anti-Afk - Already Running", function()
			print("Why are you clicking the anti-afk button lmao")
		end)
		v164["Toggle"](v164, "Infinite Jump", function(p191)
			InfJump = p191
			if InfJumpStarted == nil then
				InfJumpStarted = true
				local v192 = game["GetService"](game, "Players")["LocalPlayer"]
				local v193 = v192["GetMouse"](v192)
				local v_u_194 = v192["Character"]["WaitForChild"](v192["Character"], "Humanoid")
				v193["KeyDown"]["Connect"](v193["KeyDown"], function(p195)
					-- upvalues: (ref) v_u_194
					if InfJump and p195:byte() == 32 then
						v_u_194["ChangeState"](v_u_194, "Jumping")
						wait()
						v_u_194["ChangeState"](v_u_194, "Seated")
					end
				end)
			end
		end)
		local v_u_196 = 40
		v164["Slider"](v164, "Player Speed", 20, 200, 23, function(p197)
			-- upvalues: (ref) v_u_196
			v_u_196 = p197
			game["Players"]["LocalPlayer"]["Character"]["Humanoid"]["WalkSpeed"] = v_u_196
		end)
		local v198 = v156["Tab"](v156, "Credits")
		v198["Button"](v198, "Made by Urbanstorm", function()
			pcall(function()
				setclipboard("Urbanstorm")
			end)
		end)
		v198["Button"](v198, "https://discord.gg/FDG5V5AfFh - Click to copy", function()
			pcall(function()
				setclipboard("https://discord.gg/FDG5V5AfFh")
			end)
		end)
		task.spawn(function()
			-- upvalues: (ref) v_u_196
			while true do
				pcall(function()
					-- upvalues: (ref) v_u_196
					wait(0.5)
					if game["Players"]["LocalPlayer"]["Character"]["Humanoid"]["WalkSpeed"] ~= v_u_196 then
						game["Players"]["LocalPlayer"]["Character"]["Humanoid"]["WalkSpeed"] = v_u_196
					end
				end)
			end
		end)
		task.spawn(function()
			-- upvalues: (ref) v_u_3
			pcall(function()
				-- upvalues: (ref) v_u_3
				game["Players"]["LocalPlayer"]["CameraMaxZoomDistance"] = 1000
				local v199 = v_u_3["WaitForChild"](v_u_3, "PlayerScripts")["PlayerModule"]["CameraModule"]["ZoomController"]["Popper"]
				local v200 = next
				local v201, v202 = getgc()
				while true do
					local v203
					v202, v203 = v200(v201, v202)
					if v202 == nil then
						break
					end
					if getfenv(v203)["script"] == v199 and typeof(v203) == "function" then
						local v204 = next
						local v205, v206 = debug.getconstants(v203)
						while true do
							local v207
							v206, v207 = v204(v205, v206)
							if v206 == nil then
								break
							end
							if tonumber(v207) ~= 0.25 then
								if tonumber(v207) == 0 then
									debug.setconstant(v203, v206, 0.25)
								end
							else
								debug.setconstant(v203, v206, 0)
							end
						end
					end
				end
				local v208, v209, v210 = pairs(game["Players"]["LocalPlayer"]["Character"]["GetChildren"](game["Players"]["LocalPlayer"]["Character"]))
				while true do
					local v211
					v210, v211 = v208(v209, v210)
					if v210 == nil then
						break
					end
					if v211["ClassName"] == "Part" or v211["ClassName"] == "MeshPart" then
						v211["CanCollide"] = false
					end
				end
			end)
		end)
		task.spawn(function()
			pcall(function()
				local v_u_212 = game["GetService"](game, "VirtualUser")
				game["GetService"](game, "Players")["LocalPlayer"]["Idled"]:connect(function()
					-- upvalues: (ref) v_u_212
					v_u_212["Button2Down"](v_u_212, Vector2.new(0, 0), workspace["CurrentCamera"]["CFrame"])
					wait(1)
					v_u_212["Button2Up"](v_u_212, Vector2.new(0, 0), workspace["CurrentCamera"]["CFrame"])
				end)
			end)
		end)
		warn("[Project Stark] Project : RUSHER - Auto Player Loaded!")
		warn("Keys: D, F, J, K, S, G, H, L, E, I")
	end
end
return v1["script.lua"](...)
