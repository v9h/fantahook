local r = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest
local VersionID = '1.1'
local NotifyPos = {
    ['Pos_1'] = UDim2.new(1, 0, 0.8, 0),
    ['Pos_2'] = UDim2.new(0.858, 0, 0.8, 0),
    ['Pos_3'] = UDim2.new(0.858, 0, 0.6, 0),
    ['Pos_4'] = UDim2.new(1, 0, 0.6, 0)
}
local RandomMessages = {
    'FantaHook v'..VersionID..' Loaded.'
}
local CancelledColors = {
    'Dirt Brown',
    'Reddish brown',
    'Brown',
    'CGA brown',
    'Dark orange'
}
function PickMessage(Storage, PickedMessage)
    PickedMessage = Storage[math.random(1, #Storage)]
    return PickedMessage
end

function Notify(Message, Duration)
    local ScreenGui = Instance.new("ScreenGui");local Main = Instance.new("ImageLabel");local Title = Instance.new("TextLabel");local Message_Label = Instance.new("TextLabel")
    ScreenGui.Parent = game.CoreGui;Main.Name = "Main";Main.Parent = ScreenGui;Main.BackgroundColor3 = Color3.new(1, 1, 1);Main.BackgroundTransparency = 1;Main.BorderSizePixel = 0;Main.Position = NotifyPos['Pos_1'];Main.Size = UDim2.new(0, 217, 0, 75);Main.Image = "rbxassetid://";Main.ImageTransparency = 0.30000001192093;Title.Name = "Title";Title.Parent = Main;Title.BackgroundColor3 = Color3.new(0.164706, 0.317647, 0);Title.BorderSizePixel = 0;Title.Position = UDim2.new(0, 0, -0.25333333, 0);Title.Size = UDim2.new(0, 217, 0, 19);Title.Font = Enum.Font.SourceSans;Title.Text = "Notification";Title.TextColor3 = Color3.new(1, 0.917647, 0);Title.TextScaled = true;Title.TextSize = 14;Title.TextWrapped = true;Message_Label.Name = "Message_Label";Message_Label.Parent = Main;Message_Label.BackgroundColor3 = Color3.new(1, 1, 1);Message_Label.BackgroundTransparency = 1;Message_Label.BorderSizePixel = 0;Message_Label.Size = UDim2.new(0, 217, 0, 75);Message_Label.Font = Enum.Font.SourceSans;Message_Label.TextColor3 = Color3.new(1, 1, 0);Message_Label.TextScaled = true;Message_Label.TextSize = 14;Message_Label.TextStrokeTransparency = 0;Message_Label.TextWrapped = true
    Message_Label.Text = Message
    FART = Instance.new("Sound", Main)
    FART.SoundId = "rbxassetid://"
    FART.Volume = 10
    FART:Play()
    Main:TweenPosition(NotifyPos['Pos_2'], "Out", "Quint", 0.35, true)
    wait(Duration)
    Main:TweenPosition(NotifyPos['Pos_3'], "Out", "Quint", 0.35, true)
    wait(0.5)
    Main:TweenPosition(NotifyPos['Pos_4'], "Out", "Quint", 0.35, true)
    wait(0.5)
    ScreenGui:Destroy()
end
Notify(PickMessage(RandomMessages, PickedMessage), 3)
--legit aimbot gay

local UIS = game:GetService('UserInputService')
local RS = game:GetService('RunService')
local Players = game:GetService('Players')
local StarterGui = game:GetService('StarterGui')
local Player = Players.LocalPlayer
local Studio = RS:IsStudio()
local PlayerGui = RS:IsStudio() and Player:WaitForChild('PlayerGui') or game.CoreGui
local Mouse = Player:GetMouse()
local old_icon = Mouse.Icon
local Camera = workspace.CurrentCamera
targetpart = 'Head' -- Don't change this.
-- It can be changed with the targetpart_change hotkey ingame.
local target
local target_old
local alert = false
local lockedon = false
local settingkey = false
local upvals = nil
local val = 1
local windows = {}
local function hb() RS.Heartbeat:wait() end

local version = 69
local Spawn = nil or game.PlaceId == 292439477 and workspace:WaitForChild('Lobby',2):WaitForChild('Spawn1',2)
local spawned = false

script.Name = 'FantaHook'
Mouse.TargetFilter = Camera

-- hotkey
toggle_aim = Enum.UserInputType.MouseButton2
toggle_aimbot = Enum.KeyCode.LeftAlt
toggle_gui = Enum.KeyCode.F6
ffatoggle = Enum.KeyCode.Home
targetpart_change = Enum.KeyCode.BackSlash
sethotkey = Enum.KeyCode.RightControl
-- aim fov
fov_increase = Enum.KeyCode.KeypadPlus
fov_decrease = Enum.KeyCode.KeypadMinus
-- aim sens (how smooth your crosshair will move)
sens_increase = Enum.KeyCode.RightBracket
sens_decrease = Enum.KeyCode.LeftBracket

-- parts
parts = {
	'Head';
	'HumanoidRootPart'
}

fonts = {
	Enum.Font.SourceSansBold,
	Enum.Font.Cartoon,
	Enum.Font.Arcade,
	Enum.Font.SciFi,
	Enum.Font.Fantasy,
	Enum.Font.Code,
	Enum.Font.Highway,
	Enum.Font.Bodoni
}



currentfont = 1
ffa = true
hidden = true
performancemode = false
-- aim
fov = 4
sens = .85
drop = .55
aim_toggled = false
bottompos = true
aim_priority = 2
-- [2] FOV or [1] Distance
aimingcolor = Color3.fromRGB(0,165,255)
aimbot_toggled = true
aim_line = true
locksoundid = 0
mouseiconid =  0

-- trigger
trigger_toggled = false
trigger_delay = 1/20

-- esp
esp_toggled = true
esp_bones = false
esp_chams = true
esp_tracers = true
-- item_esp (coming soon)
linesize = 1
showdists = true
textsize = 14
textoffset = 20
visiblecolor = Color3.fromRGB(38,255,99)
hiddencolor = Color3.fromRGB(255,37,40)
headboxsize = 4
headboxaimsize = 6
headboxshape = 'diamond'
-- rectangle or diamond

-- box esp
bounding_box = true
-- box_pointsize = 0 [UNUSED]
box_line_size = 1
-- box_line_size_visible = 2 [UNUSED]

local GUI = Instance.new('ScreenGui',PlayerGui)
GUI.Name = 'Brazil Legit Aimbot '..version
GUI.ResetOnSpawn = false

local Status = Instance.new('TextLabel',GUI)
Status.Name = 'Status'
Status.BackgroundTransparency = 1
Status.Size = UDim2.new(0,500,0,50)
Status.Position = UDim2.new(.5,-250,.85,0)
Status.TextSize = 24
Status.Font = Enum.Font.SourceSansBold
Status.TextColor3 = Color3.new(1,1,1)
Status.TextStrokeColor3 = Color3.new(0,0,0)
Status.TextStrokeTransparency = .6
Status.Text = ''
Status.ZIndex = 50

local Credits = Status:Clone()
Credits.Name = 'Credits'
Credits.Parent = GUI
Credits.Position = UDim2.new(.5,-250,.85,-20)
Credits.TextSize = 13
Credits.Text = 'Fantahook legitaim by chain'

local FovGui = Instance.new('ImageLabel',GUI)
FovGui.Name = 'FovGui'
FovGui.Image = 'rbxassetid://324848180'
FovGui.Size = UDim2.new(0,(Camera.ViewportSize.X/(90/fov))*2,0,(Camera.ViewportSize.X/(90/fov))*2)
FovGui.Position = UDim2.new(0.5,-FovGui.AbsoluteSize.X/2,0.5,-FovGui.AbsoluteSize.Y/2)
FovGui.BackgroundTransparency = 1
FovGui.ImageTransparency = .9
FovGui.ImageColor3 = Color3.new(1,0,0)

local Indicator = Instance.new('TextLabel',GUI)
Indicator.Name = 'Indicator'
Indicator.Font = Enum.Font.SourceSans
Indicator.TextSize = 14
Indicator.TextXAlignment = Enum.TextXAlignment.Center
Indicator.TextYAlignment = Enum.TextYAlignment.Center
Indicator.TextStrokeTransparency = .75
Indicator.Text = aim_priority>1 and 'FOV: '..fov or 'Distance'

local SensAdjust = Instance.new('TextBox',GUI)
SensAdjust.Name = 'SensAdjust'
SensAdjust.Font = Enum.Font.SourceSans
SensAdjust.BackgroundTransparency = .75
SensAdjust.BackgroundColor3 = Color3.new(0,0,0)
SensAdjust.BorderColor3 = Color3.new(1,1,1)
SensAdjust.Size = UDim2.new(0,50,0,20)
SensAdjust.TextStrokeTransparency = .6
SensAdjust.TextColor3 = Color3.new(1,1,1)
SensAdjust.TextSize = 14
SensAdjust.PlaceholderText = 'Sens'
SensAdjust.Text = tonumber(sens)
SensAdjust.Position = Credits.Position + UDim2.new(0,250,0,75)

local SensLabel = Instance.new('TextLabel',SensAdjust)
SensLabel.Name = 'SensLabel'
SensLabel.Font = Enum.Font.SourceSans
SensLabel.Size = UDim2.new(1,0,1,0)
SensLabel.BackgroundTransparency = 1
SensLabel.TextSize = 14
SensLabel.TextColor3 = Color3.new(1,1,1)
SensLabel.TextStrokeColor3 = Color3.new(0,0,0)
SensLabel.TextStrokeTransparency = .6
SensLabel.Text = 'Sens:'
SensLabel.Position = UDim2.new(-1,0,0,0)
SensLabel.TextXAlignment = Enum.TextXAlignment.Left

local FovAdjust = SensAdjust:Clone()
FovAdjust.Parent = GUI
FovAdjust.PlaceholderText = 'FOV'
FovAdjust.Name = 'FovAdjust'
FovAdjust.Text = tonumber(fov)
FovAdjust.Position = SensAdjust.Position + UDim2.new(0,0,0,20)
FovAdjust.SensLabel.Name = 'FovLabel'
FovAdjust.FovLabel.Text = 'Fov:'

local DropAdjust = SensAdjust:Clone()
DropAdjust.Parent = GUI
DropAdjust.PlaceholderText = 'Drop'
DropAdjust.Name = 'DropAdjust'
DropAdjust.Text = tonumber(drop)
DropAdjust.Position = SensAdjust.Position + UDim2.new(0,0,0,40)
DropAdjust.SensLabel.Name = 'DropLabel'
DropAdjust.DropLabel.Text = 'Drop:'

local n = 0

SensAdjust.InputEnded:Connect(function() if SensAdjust.Text~='' then sens = tonumber(SensAdjust.Text)>0 and tonumber(SensAdjust.Text) or sens end end)
FovAdjust.InputEnded:Connect(function() if FovAdjust.Text~='' then fov = tonumber(FovAdjust.Text)>0 and tonumber(FovAdjust.Text) or fov
FovGui:TweenSize(UDim2.new(0,(Camera.ViewportSize.X/(90/fov))*2,0,(Camera.ViewportSize.X/(90/fov))*2),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,.1,true) end end)
DropAdjust.InputEnded:Connect(function() if DropAdjust.Text~='' then drop = tonumber(DropAdjust.Text)>=0 and tonumber(DropAdjust.Text) or drop end end)

local function distfromspawn(x)
	if Spawn then
		return x:DistanceFromCharacter(Spawn.Position)
	else
		return 201
	end
end

local function setText(text)
	spawn(function()
	textSet = true
	Status.Text = text
	Status.TextColor3 = Color3.new(1,1,1)
	wait(#text/4)
	textSet = false
	end)
end

local function playsound(id)
	local sound = Instance.new('Sound',Camera)
	sound.SoundId = 'rbxassetid://'..id
	sound.Volume = 3
	sound:Play()
	game:GetService('Debris'):AddItem(sound,5)
end

playsound(1168009121)
Mouse.Icon = 'rbxassetid://'

local function Notification(...)
	playsound(140910211)
	StarterGui:SetCore('SendNotification',...)
end

local function DrawLine(Folder,P1,P2,Thickness,Color,LineTransparency,BorderThickness,BorderColor)
	-- Declare variables
	local Point1,Point2 = P1.Position,P2.Position
	if Point1 and Point2 then
	local X,Y = Camera.ViewportSize.X, Camera.ViewportSize.Y
	local X1,X2 = (X * Point1.X.Scale + Point1.X.Offset + P1.Size.X.Offset/2), (X * Point2.X.Scale + Point2.X.Offset + P2.Size.X.Offset/2)
	local Y1,Y2 = (Y * Point1.Y.Scale + Point1.Y.Offset + P1.Size.Y.Offset/2), (Y * Point2.Y.Scale + Point2.Y.Offset + P2.Size.Y.Offset/2)
	local MidX,MidY = (X1+X2)/2, (Y1+Y2)/2
	-- Set defaults to prevent errors
	Thickness = Thickness or 1
	Color = Color or Color3.new(1,1,1)
	LineTransparency =  LineTransparency or 0
	BorderThickness = BorderThickness or 0
	BorderColor = BorderColor or Color3.new(0,0,0)
	-- Draw the line
	local Line = Folder:FindFirstChild(P1.Name..'-'..P2.Name) or Instance.new('Frame',Folder)
	Line.Visible = false
	Line.BackgroundTransparency = LineTransparency
	Line.BorderSizePixel = BorderThickness
	Line.BorderColor3 = BorderColor
	Line.Size = UDim2.new(0,(Vector2.new(X1,Y1) - Vector2.new(X2,Y2)).magnitude-1,0,Thickness)
	Line.Position = UDim2.new(0,MidX-Line.AbsoluteSize.X/2,0,MidY-Line.AbsoluteSize.Y)
	Line.BackgroundColor3 = Color
	Line.Rotation = math.deg(math.atan2((Y2-Y1),(X2-X1)))
	Line.Name = P1.Name..'-'..P2.Name
	Line.Visible = true
	return Line
	else
		return nil
	end
end

local function GetNearest(Mode)
	local lowest,nearest,gui = math.huge,nil,nil
	if Mode==1 then
	for _,plr in next,Players:GetPlayers() do 
		if plr.Name~=Player.Name and plr.Character~=nil and plr.Character:FindFirstChild(targetpart) then
			local dist = Player:DistanceFromCharacter(plr.Character[targetpart].Position)
			local ray = Ray.new(Player.Character.Head.Position,(plr.Character[targetpart].Position-Player.Character.Head.Position).unit*5000)
			local part,point = workspace:FindPartOnRayWithIgnoreList(ray,{Camera,Player.Character,unpack(windows)})
			local Z = Camera:WorldToScreenPoint(plr.Character[targetpart].Position).Z
			if part and part:IsDescendantOf(plr.Character) and Z>0 and dist < lowest and (ffa or plr.TeamColor~=Player.TeamColor) then lowest = dist nearest = plr.Character end
		end
	end
	elseif Mode==2 then
		for _,plr in next,Players:GetPlayers() do
			if plr.Name~=Player.Name and plr.Character~=nil and plr.Character:FindFirstChild(targetpart) then
				local pos = Camera:WorldToScreenPoint(plr.Character[targetpart].Position)
				local ray = Ray.new(Player.Character[targetpart].Position,(plr.Character[targetpart].Position-Player.Character[targetpart].Position).unit*2048)
				local part,point = workspace:FindPartOnRayWithIgnoreList(ray,{Camera,Player.Character,unpack(windows)})
				local dist = (Vector2.new(Mouse.X,Mouse.Y)-Vector2.new(pos.X,pos.Y)).magnitude
				if part and part:IsDescendantOf(plr.Character) and pos.Z>0 and dist <= Camera.ViewportSize.X/(90/fov) and dist < lowest and (ffa or plr.TeamColor~=Player.TeamColor) then lowest = dist nearest = plr.Character end
			end
		end
	end
	return nearest
end
	

UIS.InputBegan:Connect(function(Input)
	if Input.KeyCode == toggle_aim or Input.UserInputType == toggle_aim then
		aim_toggled = true
		warn('',aim_toggled and '' or '')
		alert = true
		while aim_toggled and aimbot_toggled do
			target = GetNearest(aim_priority)
			if target then
				local dist = Player:DistanceFromCharacter(target[targetpart].Position)
				local headpos = Camera:WorldToScreenPoint(target[targetpart].Position+Vector3.new(0,dist/(100/drop),0))
				local moveto = Vector2.new((headpos.X-Mouse.X)*sens,(headpos.Y-Mouse.Y)*sens)
				aimpos = GUI:FindFirstChild('AimPos') or Instance.new('Frame',GUI)
				if not GUI:FindFirstChild('AimPos') then
				aimpos.Name = 'AimPos'
				aimpos.BorderSizePixel = 1
				aimpos.BorderColor3 = Color3.new(0,0,0)
				aimpos.BackgroundTransparency = 0
				aimpos.BackgroundColor3 = Color3.new(1,1,1)
				aimpos.Rotation = 45
				aimpos.ZIndex = 4
				aimpos.Size = UDim2.new(0,3,0,3)
				end
				aimpos.Position = UDim2.new(0,headpos.X-aimpos.AbsoluteSize.X/2,0,headpos.Y-aimpos.AbsoluteSize.Y/2)
				aimpos.Visible = true
				mousemoverel(moveto.X,moveto.Y)
				if alert or target~=target_old then
					playsound(locksoundid)
					print('')
					lockedon = true
					alert = false
				end
			end
			RS.Heartbeat:wait()
			target_old = target
			if aimpos then
				aimpos.Visible = false
			end
		end
		lockedon = false
	elseif Input.KeyCode == toggle_trigger then
		trigger_toggled = not trigger_toggled
		setText('Toggled TriggerBot '..(trigger_toggled and 'On' or 'Off'))
		Notification({Title='TriggerBot';Text='TriggerBot was toggled '..(trigger_toggled and 'On' or 'Off');Duration=2;})
		warn('trigger toggled',trigger_toggled and 'on' or 'off')
		local Box = Instance.new('SelectionBox',PlayerGui)
		Box.Color3 = Color3.new(1,0,0)
		Box.LineThickness = .05
		Box.Adornee = nil
		if trigger_delay>0 then wait(trigger_delay) end
		while trigger_toggled do
		local Target = Mouse.Target
		local plr = Players:FindFirstChild(Target.Parent.Name)
		if Target and Target.Parent and plr~=nil and plr~=Player and ffa or plr~=nil and plr.TeamColor~=Player.TeamColor then
			Box.Adornee = Mouse.Target
			mouse1press()
			wait()
			mouse1release()
		end
		RS.Heartbeat:wait()
		end
		Box:Destroy()
	elseif Input.KeyCode == toggle_esp then
		esp_toggled = not esp_toggled
		Notification({Title='ESP';Text='ESP was toggled '..(esp_toggled and 'On' or 'Off');Duration=2;})
		setText('Toggled ESP '..(esp_toggled and 'On' or 'Off'))
	elseif Input.KeyCode == toggle_aimbot then
		aimbot_toggled = not aimbot_toggled	
		Notification({Title='AimBot';Text='AimBot was toggled '..(aimbot_toggled and 'On' or 'Off');Duration=2;})
		setText('Toggled AimBot '..(aimbot_toggled and 'On' or 'Off'))
	elseif Input.KeyCode == fov_increase then
		fov = fov + .5
		FovAdjust.Text = tonumber(fov)
		if FovGui.Visible then
			FovGui:TweenSize(UDim2.new(0,(Camera.ViewportSize.X/(90/fov))*2,0,(Camera.ViewportSize.X/(90/fov))*2),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,.1,true)
		end
		setText('Aim FOV: '..fov)
	elseif Input.KeyCode == fov_decrease and fov>0 then
		fov = fov - .5
		FovAdjust.Text = tonumber(fov)
		if FovGui.Visible then
			FovGui:TweenSize(UDim2.new(0,(Camera.ViewportSize.X/(90/fov))*2,0,(Camera.ViewportSize.X/(90/fov))*2),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,.1,true)
		end
		setText('Aim FOV: '..fov)
	elseif Input.KeyCode == sens_increase then
		sens = sens + .05
		SensAdjust.Text = tonumber(sens)
		setText('Sens: '..sens)
	elseif Input.KeyCode == sens_decrease then
		sens = sens - .05
		SensAdjust.Text = tonumber(sens)
		setText('Sens: '..sens)
	elseif Input.KeyCode == targetpart_change then
		val = val+1
		targetpart = val<=#parts and parts[val] or parts[1]
		if parts[1]==targetpart then val = 1 end
		Notification({Title='Target Part';Text='Target part set to '..targetpart;Duration=2;})
		setText('Target Part: '..targetpart)
	elseif Input.KeyCode == ffatoggle then
		ffa = not ffa
		Notification({Title='FFA Mode';Text='FFA Mode is '..(ffa and 'Enabled' or 'Disabled');Duration=2;})
		setText('FFA Mode: '..(ffa and 'Enabled' or 'Disabled'))
	elseif Input.KeyCode == priority_toggle then
		aim_priority = aim_priority+1>2 and 0 or 1
		aim_priority = aim_priority+1
		FovGui.Visible = aim_priority>1
		Notification({Title='Aim Priority';Text='Aim Priority: '..(aim_priority==1 and 'Distance' or 'FOV');Duration=2;})
		setText('Aim Priority: '..(aim_priority==1 and 'Distance' or 'FOV'))
	elseif Input.KeyCode == toggle_bones then
		esp_bones = not esp_bones
		if not esp_bones then
		for _,v in next,ESP:GetDescendants() do
			if v:IsA('Frame') and v.Name:match('-') then
				v:Destroy()
			end
		end
		end
		Notification({Title='ESP';Text='ESP Bones: '..(esp_bones and 'Enabled' or 'Disabled');Duration=2;})
		setText('Toggled ESP Bones '..(esp_bones and 'Enabled' or 'Disabled'))
	elseif Input.KeyCode == toggle_gui then
		hidden = not hidden
		for _,gui in next,GUI:GetDescendants() do
			if gui:IsA('GuiObject') and not hidden and not gui.Visible then
				gui.Visible = true
				Mouse.Icon = 'rbxassetid://'..mouseiconid
			elseif gui:IsA('GuiObject') and gui.Visible then
				gui.Visible = false
				esp_toggled = false
				Mouse.Icon = old_icon
			end
			end
		elseif Input.KeyCode == toggle_bottompos then
			bottompos = not bottompos
			if bottompos then
				Bottom.Position = UDim2.new(.5,0,1,1)
			end
		elseif Input.KeyCode == toggle_performance then
			performancemode = not performancemode
			setText('Performance Mode '..(performancemode and 'Enabled' or 'Disabled'))
		elseif Input.KeyCode == toggle_chams then
			esp_chams = not esp_chams
			setText('Chams '..(esp_chams and 'Enabled' or 'Disabled'))
			Notification({Title='ESP';Text='Chams: '..(esp_chams and 'Enabled' or 'Disabled');Duration=2;})
		elseif Input.KeyCode == toggle_tracers then
			esp_tracers = not esp_tracers
			setText('Tracers '..(esp_chams and 'Enabled' or 'Disabled'))
			Notification({Title='ESP';Text='Tracers: '..(esp_tracers and 'Enabled' or 'Disabled');Duration=2;})
		elseif Input.KeyCode == toggle_boxes then
			bounding_box = not bounding_box
			setText('Bounding Boxes '..(bounding_box and 'Enabled' or 'Disabled'))
			Notification({Title='ESP';Text='Bounding Boxes: '..(bounding_box and 'Enabled' or 'Disabled');Duration=2;})
		elseif Input.KeyCode == toggle_font then
				currentfont = (currentfont+1)>#fonts and 1 or currentfont+1
				for _,v in next,GUI:GetDescendants() do
					if v.Name~='KeysList' then
					if v:IsA('TextLabel') or v:IsA('TextButton') then
						v.Font = fonts[currentfont]
					end
					end
				end
		end
end)

UIS.InputEnded:Connect(function(Input)
	if Input.KeyCode == toggle_aim or Input.UserInputType == toggle_aim then
		aim_toggled = false
	end
end)

local function checkifspawned(x)
	spawned = false
	while not spawned and game.PlaceId==292439477 do
		spawned = distfromspawn(x)>200 and true or false
		wait(1/5)
	end
	spawned = true
end

checkifspawned(Player)
Player.CharacterAdded:Connect(function(c)
	checkifspawned(Player)
	
	for _,v in next,ESP:GetDescendants() do
		if v:IsA('Frame') and v.Name:match('-') then
			v:Destroy()
		end
	end
end)

Notification({Title='FantaHook Legit '..VersionID;Text='Legit Aim loaded successfully.';Icon='';Duration=10;})
wait(3)
Notification({Title='By';Text='fanta#0210';Duration=4;Icon=''})
RS.RenderStepped:Connect(function()
	if cursor then
		FovGui.Position = cursor.Position-UDim2.new(0,FovGui.AbsoluteSize.X/2,0,FovGui.AbsoluteSize.Y/2)
		Indicator.Position = cursor.Position+UDim2.new(0,0,0,40)
	end
end)

Mouse.Button1Down:Connect(function()
	spawn(function()
		if FovGui.Visible then
			FovGui:TweenSize(UDim2.new(0,Camera.ViewportSize.X/(90/fov)*2.35,0,Camera.ViewportSize.X/(90/fov)*2.35),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,.1,true)
			wait(.1)
			FovGui:TweenSize(UDim2.new(0,Camera.ViewportSize.X/(90/fov)*2,0,Camera.ViewportSize.X/(90/fov)*2),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,.1,true)
		end
	end)
end)

while true do
	Indicator.Text = (aim_priority>1 and 'FOV: '..fov or 'Distance') ..'\nSens: '..sens..(aim_toggled and '\nAiming' or '')
	if not bottompos then Bottom.Position = cursor.Position end
	if esp_toggled then
	for _,v in next,ESP:children() do
		if v~=Bottom and not Players:FindFirstChild(v.Name) then
			v:Destroy()
		end
	end
	for _,v in next,Players:GetPlayers() do
		local Char = v.Character
		if Char and spawned and v~=Player and Char:FindFirstChild(targetpart) and distfromspawn(v)>100 then
			if ffa or v.TeamColor~=Player.TeamColor then
			local X = Camera:GetPartsObscuringTarget({Camera.CFrame.p,Char[targetpart].CFrame.p},{v.Character,Char,Camera,unpack(windows)})
			local Dist = Player:DistanceFromCharacter(Char:FindFirstChild(targetpart).Position)
			local Color = hiddencolor
			local Folder = ESP:FindFirstChild(v.Name) or Instance.new('Folder',ESP)
			Folder.Name = v.Name
			-- ESP
			local Head = Folder:FindFirstChild('Head') or Instance.new('Frame',Folder)
			if not Folder:FindFirstChild('Head') then
			Head.Name = 'Head'
			Head.BorderSizePixel = 1
			Head.BorderColor3 = Color3.new(0,0,0)
			Head.BackgroundTransparency = 0
			end
			Head.BackgroundColor3 = #X>0 and hiddencolor or #X==0 and visiblecolor
			Head.Rotation = headboxshape=='' and 45 or 0
			Head.ZIndex = 3
			local HP = Folder:FindFirstChild('HP') or Instance.new('TextLabel',Folder)
			if not Folder:FindFirstChild('HP') then
			HP.Name = 'HP'
			HP.TextTransparency = Head.BackgroundTransparency-.4
			HP.Font = fonts[currentfont]
			HP.TextStrokeTransparency = .6
			HP.BackgroundTransparency = 1
			HP.TextSize = 14
			end
			HP.Text = showdists and Char.Name..'\n'..math.floor(Dist+.5) or Char.Name
			if aim_toggled and target==Char then
				Head.Size = UDim2.new(0,headboxaimsize,0,headboxaimsize)
				Head.BackgroundColor3 = aimingcolor
				HP.Text = showdists and '['..Char.Name..']'..'\n'..math.floor(Dist+.5) or '['..Char.Name..']'
				HP.TextSize = 16
			else
				Head.Size = UDim2.new(0,headboxsize,0,headboxsize)
			end
			HP.TextColor3 = Head.BackgroundColor3
			local toScreen = Camera:WorldToScreenPoint(Char[targetpart].CFrame.p)
			if #X==0 then Color = visiblecolor end
			Head.Position = UDim2.new(0,toScreen.X-Head.Size.X.Offset/2,0,toScreen.Y-Head.Size.Y.Offset/2)
			HP.Position = Head.Position-UDim2.new(0,0,0,textoffset)
			if esp_tracers then
			local Line = DrawLine(Folder,ESP.Bottom,Head,linesize,Head.BackgroundColor3,.75,1,Color3.new(0,0,0))
				Line.Visible = Head.Visible
			else
				local imtired = Folder:FindFirstChild(ESP.Bottom.Name..'-'..Head.Name)
				if imtired then
					imtired:Destroy()
				end
			end
			if toScreen.Z<=0 then Head.Visible = false else Head.Visible = true end
			HP.Visible = Head.Visible
			if Char:FindFirstChild('Humanoid') then
			local Neck = Folder:FindFirstChild('Neck') or Instance.new('Frame',Folder)
			Neck.Name = 'Neck'
			Neck.ZIndex = 2
			if Char['HumanoidRootPart']~=nil then
			local Pos = (Char.HumanoidRootPart.CFrame*CFrame.new(0,.8,0)).p
			local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
			Neck.Position = UDim2.new(0,X,0,Y)
			Neck.BorderSizePixel = 0
			if Z<=0 then Neck.Visible = false else Neck.Visible = true end
			else
				Neck.Visible = false
			end
			--
			local Pelvis = Folder:FindFirstChild('Pelvis') or Instance.new('Frame',Folder)
			Pelvis.Name = 'Pelvis'
			Pelvis.ZIndex = 2
			Pelvis.BorderSizePixel = 0
			if Char['HumanoidRootPart']~=nil then
			local Pos = (Char.HumanoidRootPart.CFrame*CFrame.new(0,-1,0)).p
			local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
			Pelvis.Position = UDim2.new(0,X,0,Y)
			if Z<=0 then Pelvis.Visible = false else Pelvis.Visible = true end
			else
				Pelvis.Visible = false
			end
			--
			local RightFoot = Folder:FindFirstChild('Right Foot') or Instance.new('Frame',Folder)
			RightFoot.Name = 'Right Foot'
			RightFoot.ZIndex = 2
			RightFoot.BorderSizePixel = 0
			if Char['RightUpperLeg']~=nil then
			local Pos = (Char['RightUpperLeg'].CFrame*CFrame.new(0,-1,0)).p
			local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
			RightFoot.Position = UDim2.new(0,X,0,Y)
			if Z<=0 then RightFoot.Visible = false else RightFoot.Visible = true end
			else
				RightFoot.Visible = false
			end
			--
			local LeftFoot = Folder:FindFirstChild('Left Foot') or Instance.new('Frame',Folder)
			LeftFoot.Name = 'Left Foot'
			if Char['LeftUpperLeg']~=nil then
			local Pos = (Char['LeftUpperLeg'].CFrame*CFrame.new(0,-1,0)).p
			local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
			LeftFoot.Position = UDim2.new(0,X,0,Y)
			LeftFoot.BorderSizePixel = 0
			if Z<=0 then LeftFoot.Visible = false else LeftFoot.Visible = true end
			else
				LeftFoot.Visible = false
			end
			--
			local RightHand = Folder:FindFirstChild('Right Hand') or Instance.new('Frame',Folder)
			RightHand.Name = 'Right Hand'
			RightHand.ZIndex = 2
			RightHand.BorderSizePixel = 0
			if Char['RightUpperArm']~=nil then
			local Pos = (Char['RightUpperArm'].CFrame*CFrame.new(0,-1,0)).p
			local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
			RightHand.Position = UDim2.new(0,X,0,Y)
			if Z<=0 then RightHand.Visible = false else RightHand.Visible = true end
			else
				RightHand.Visible = false
			end
			--
			local LeftHand = Folder:FindFirstChild('Left Hand') or Instance.new('Frame',Folder)
			LeftHand.Name = 'Left Hand'
			LeftHand.ZIndex = 2
			LeftHand.BorderSizePixel = 0
			if Char['LeftUpperArm']~=nil then
			local Pos = (Char['LeftUpperArm'].CFrame*CFrame.new(0,-1,0)).p
			local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
			LeftHand.Position = UDim2.new(0,X,0,Y)
			if Z<=0 then LeftHand.Visible = false else LeftHand.Visible = true end
			else
				LeftHand.Visible = false
			end
			-- draw joints
					end
				end
			else
				for _,v in next,Folder:GetDescendants() do
					if v.Name:match('Cham') then
						v:Destroy()
					end
                end
            end
					end
				end
		
				end
		
			
			if lockedon and target and aim_line and ESP:FindFirstChild(target.Name) then
				DrawLine(ESP,cursor,ESP:FindFirstChild(target.Name).Head,1,Head.BackgroundColor3,.5)
			end
			
	if performancemode then
		wait(1/(workspace:GetRealPhysicsFPS()*.75))
	else
		RS.Stepped:wait()
	end