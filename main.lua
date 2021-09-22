local Loader = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Top = Instance.new("Frame")
local Hub = Instance.new("TextLabel")
local Exit = Instance.new("TextButton")
local gamename = Instance.new("TextLabel")
local LoadButton = Instance.new("TextButton")
local tpframe = Instance.new("ScrollingFrame")
local Placeholder = Instance.new("Frame")
local Gamename = Instance.new("TextLabel")
local Tpbutton = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local Vip = _G.Vip
--Properties:
Loader.Name = "Loader"
Loader.Parent = game.CoreGui
Loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Loader
Main.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.361647367, 0, 0.362997681, 0)
Main.Size = UDim2.new(0, 430, 0, 233)

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.new(0.247059, 0.247059, 0.247059)
Top.BorderSizePixel = 0
Top.Size = UDim2.new(0, 430, 0, 37)

Hub.Name = "Death Hub"
Hub.Parent = Top
Hub.BackgroundColor3 = Color3.new(20, 20, 20)
Hub.BackgroundTransparency = 1
Hub.Size = UDim2.new(0, 197, 0, 37)
Hub.Font = Enum.Font.SourceSansLight
Hub.Text = "Death Hub"
Hub.TextColor3 = Color3.new(0.658824, 0.658824, 0.658824)
Hub.TextScaled = true
Hub.TextSize = 14
Hub.TextWrapped = true
Hub.TextXAlignment = Enum.TextXAlignment.Left

Exit.Name = "Exit"
Exit.Parent = Top
Exit.BackgroundColor3 = Color3.new(1, 1, 1)
Exit.BackgroundTransparency = 1
Exit.Position = UDim2.new(0.879069746, 0, 0, 0)
Exit.Size = UDim2.new(0, 52, 0, 37)
Exit.Font = Enum.Font.SourceSansLight
Exit.Text = "X"
Exit.TextColor3 = Color3.new(1, 1, 1)
Exit.TextScaled = true
Exit.TextSize = 14
Exit.TextWrapped = true

gamename.Name = "gamename"
gamename.Parent = Main
gamename.BackgroundColor3 = Color3.new(1, 1, 1)
gamename.BackgroundTransparency = 1
gamename.Position = UDim2.new(0.267441869, 0, 0.270386249, 0)
gamename.Size = UDim2.new(0, 200, 0, 50)
gamename.Font = Enum.Font.Code
gamename.TextColor3 = Color3.new(1, 1, 1)
gamename.TextScaled = true
gamename.TextSize = 14
gamename.TextWrapped = true

LoadButton.Name = "LoadButton"
LoadButton.Parent = Main
LoadButton.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
LoadButton.BorderSizePixel = 0
LoadButton.Position = UDim2.new(0.267441869, 0, 0.630901277, 0)
LoadButton.Size = UDim2.new(0, 200, 0, 50)
LoadButton.Font = Enum.Font.SourceSans
LoadButton.Text = "Load Script"
LoadButton.TextColor3 = Color3.new(1, 1, 1)
LoadButton.TextScaled = true
LoadButton.TextSize = 14
LoadButton.TextWrapped = true

tpframe.Name = "tpframe"
tpframe.Parent = Main
tpframe.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
tpframe.BorderSizePixel = 0
tpframe.Position = UDim2.new(0, 0, 0.158798277, 0)
tpframe.Size = UDim2.new(0, 430, 0, 195)
tpframe.Visible = false
tpframe.ZIndex = 2
tpframe.CanvasSize = UDim2.new(0, 0, 6, 0)
tpframe.ScrollBarThickness = 6

Placeholder.Name = "Placeholder"
Placeholder.Parent = tpframe
Placeholder.BackgroundColor3 = Color3.new(1, 1, 1)
Placeholder.BackgroundTransparency = 2
Placeholder.Size = UDim2.new(0, 430, 0, 65)
Placeholder.Visible = false
Placeholder.ZIndex = 2

Gamename.Name = "Gamename"
Gamename.Parent = Placeholder
Gamename.BackgroundColor3 = Color3.new(1, 1, 1)
Gamename.BackgroundTransparency = 1
Gamename.Size = UDim2.new(0, 197, 0, 32)
Gamename.ZIndex = 2
Gamename.Font = Enum.Font.SourceSansLight
Gamename.TextColor3 = Color3.new(1, 1, 1)
Gamename.TextScaled = true
Gamename.TextSize = 14
Gamename.TextWrapped = true
Gamename.TextXAlignment = Enum.TextXAlignment.Left

Tpbutton.Name = "Tpbutton"
Tpbutton.Parent = Placeholder
Tpbutton.BackgroundColor3 = Color3.new(0.309804, 0.309804, 0.309804)
Tpbutton.Position = UDim2.new(0.374418616, 0, 0.538461566, 0)
Tpbutton.Size = UDim2.new(0, 108, 0, 32)
Tpbutton.ZIndex = 2
Tpbutton.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
Tpbutton.Font = Enum.Font.SourceSansLight
Tpbutton.Text = "Teleport"
Tpbutton.TextColor3 = Color3.new(0.203922, 0.203922, 0.203922)
Tpbutton.TextScaled = true
Tpbutton.TextSize = 14
Tpbutton.TextWrapped = true

UIListLayout.Parent = tpframe
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0.0199999996, 0)
-- Scripts:
function SCRIPT_MLQL80_FAKESCRIPT() 
	local script = Instance.new('LocalScript')
	script.Parent = DeatHub
	script.Parent.MouseEnter:Connect(function()
		game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(.3), {TextColor3 = Color3.fromRGB(255,255,255)}):Play()
	end)
	script.Parent.MouseLeave:Connect(function()
		game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(.3), {TextColor3 = Color3.fromRGB(168, 168, 168)}):Play()
	end)

end
coroutine.resume(coroutine.create(SCRIPT_MLQL80_FAKESCRIPT))
function SCRIPT_FTVT85_FAKESCRIPT() -- Exit.Exit and Color 
	local script = Instance.new('LocalScript')
	script.Parent = Exit
	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.Parent.Parent:Destroy()
	end)
	script.Parent.MouseEnter:Connect(function()
		game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(.3), {TextColor3 = Color3.fromRGB(255,0,0)}):Play()
	end)
	script.Parent.MouseLeave:Connect(function()
		game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(.3), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
	end)

end
coroutine.resume(coroutine.create(SCRIPT_FTVT85_FAKESCRIPT))
function SCRIPT_LLHU67_FAKESCRIPT() -- Main.Main Script 
	local script = Instance.new('LocalScript')
	script.Parent = Main
	function dragify(Main)
	dragToggle = nil
	dragSpeed = .20 
	dragInput = nil
	dragStart = nil
	dragPos = nil
	
	function updateInput(input)
	Delta = input.Position - dragStart
	Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	game:GetService("TweenService"):Create(Main, TweenInfo.new(.25), {Position = Position}):Play()
	end
	
	Main.InputBegan:Connect(function(input)
	if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
	dragToggle = true
	dragStart = input.Position
	startPos = Main.Position
	input.Changed:Connect(function()
	if (input.UserInputState == Enum.UserInputState.End) then
	dragToggle = false
	end
	end)
	end
	end)
	
	Main.InputChanged:Connect(function(input)
	if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
	dragInput = input
	end
	end)
	
	game:GetService("UserInputService").InputChanged:Connect(function(input)
	if (input == dragInput and dragToggle) then
	updateInput(input)
	end
	end)
	end
	dragify((script.Parent))

end
coroutine.resume(coroutine.create(SCRIPT_LLHU67_FAKESCRIPT))
function SCRIPT_PSOO79_FAKESCRIPT() -- gamename.Gamename 
	local script = Instance.new('LocalScript')
	script.Parent = gamename
	
	
	local gamename = game.Name
	local gameid = tostring(game.PlaceId)
	
	
	script.Parent.Text = gamename .. "|" .. gameid

end
coroutine.resume(coroutine.create(SCRIPT_PSOO79_FAKESCRIPT))
function SCRIPT_RCCT68_FAKESCRIPT() -- gamename.Color 
	local script = Instance.new('LocalScript')
	script.Parent = gamename
	script.Parent.MouseEnter:Connect(function()
		game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(.3), {TextColor3 = Color3.fromRGB(255,255,255)}):Play()
	end)
	script.Parent.MouseLeave:Connect(function()
		game:GetService("TweenService"):Create(script.Parent, TweenInfo.new(.3), {TextColor3 = Color3.fromRGB(168, 168, 168)}):Play()
	end)

end
coroutine.resume(coroutine.create(SCRIPT_RCCT68_FAKESCRIPT))
function SCRIPT_VJWK69_FAKESCRIPT() -- LoadButton.Loader 
	local script = Instance.new('LocalScript')
	script.Parent = LoadButton
	local gamelist = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://raw.githubusercontent.com/DriftLeaks/Death-Hub/main/gamelist.json"))
	local supported
	local lit
	local tpid
	function checkgame()
			if gamelist[tostring(game.PlaceId)] then
				supported = true
				lit = gamelist[tostring(game.PlaceId)]
				return lit ~= nil
			end
	end
	if checkgame() then
        if Vip == true then
            script.Parent.Parent.gamename.Text = lit.gname.." - Vip"
            script.Parent.MouseButton1Down:Connect(function()
                loadstring(game:HttpGet(string.format("https://raw.githubusercontent.com/DriftLeaks/Death-Hub/main/Scripts/%s", lit.scriptname)))()
                script.Parent.Parent.Parent:Destroy()
            end)
        else
            script.Parent.Parent.gamename.Text = lit.gname
            script.Parent.MouseButton1Down:Connect(function()
                loadstring(game:HttpGet(string.format("https://raw.githubusercontent.com/DriftLeaks/Death-Hub/main/Scripts/%s", lit.scriptname)))()
                script.Parent.Parent.Parent:Destroy()
            end)
        end
    else
		script.Parent.Parent.gamename.Text = "Not supported"
		script.Parent.Text = "List games"
		script.Parent.MouseButton1Down:Connect(function()
			script.Parent.Parent.tpframe.Visible = true
			for i,v in pairs(gamelist) do
			local bin = script.Parent.Parent.tpframe.Placeholder:Clone()
			bin.Parent = script.Parent.Parent.tpframe
			bin.Visible = true
			bin.Name = v.gname
			bin.Gamename.Text = v.gname
			bin.Tpbutton.MouseButton1Down:Connect(function()
				game:GetService("TeleportService"):Teleport(tostring(i), game.Players.LocalPlayer)
			end)
			end
		end)
	end
    end
coroutine.resume(coroutine.create(SCRIPT_VJWK69_FAKESCRIPT))
