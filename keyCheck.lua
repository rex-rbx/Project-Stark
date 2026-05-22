local v1 = {}
local _ = require
v1["script.lua"] = function()
	local v2 = game:GetService("Players").LocalPlayer:FindFirstChild("Project Stark Key Check")
	local function v5(p_u_3)
		pcall(function()
			-- upvalues: (ref) p_u_3
			local v4 = game:GetService("HttpService");
			(syn and syn.request or request)({
				["Url"] = "http://127.0.0.1:6463/rpc?v=1",
				["Method"] = "POST",
				["Headers"] = {
					["Content-Type"] = "application/json",
					["Origin"] = "https://discord.com"
				},
				["Body"] = v4:JSONEncode({
					["cmd"] = "INVITE_BROWSER",
					["args"] = {
						["code"] = p_u_3
					},
					["nonce"] = v4:GenerateGUID(false)
				})
			})
		end)
	end
	if not v2 or v2.Value ~= true then
		pcall(function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Urbanstormm/Project-Stark/main/Main.lua"))()
		end)
		v5("vgYZApyrZC")
	end
	return v2
end
return v1["script.lua"](...)
