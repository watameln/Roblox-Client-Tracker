--!nonstrict
-- LoadingScreen3D.lua --
-- Written by Kip Turner, copyright ROBLOX 2016 --

local GUI_DISTANCE_FROM_CAMERA = 6
local VERTICAL_SCREEN_PERCENT = 1/3
local HORIZONTAL_SCREEN_PERCENT = 1/3
local SECONDS_TO_FADE = 2.5
local ROTATIONS_PER_SECOND = 0.5
local TEXT_SCROLL_SPEED = 25

local CoreGui = game:GetService('CoreGui')
local CorePackages = game:GetService('CorePackages')
local RunService = game:GetService('RunService')
local MarketPlaceService = game:GetService('MarketplaceService')
local UserInputService = game:GetService('UserInputService')
local ReplicatedFirst = game:GetService('ReplicatedFirst')
local GuiService = game:GetService('GuiService')

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Util = require(RobloxGui.Modules.Settings.Utility)
local SplashScreenManager = require(CorePackages.Workspace.Packages.SplashScreenManager).SplashScreenManager
local FFlagLoadingRemoveRemoteCallErrorPrint = game:DefineFastFlag("LoadingRemoveRemoteCallErrorPrint", false)
local GetFFlagHideExperienceLoadingJudder =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagHideExperienceLoadingJudder

local function FadeElements(element, newValue, duration)
	duration = duration or 0.5
	if element == nil then return end
	if element:IsA('ImageLabel') or element:IsA('ImageButton') then
		Util:TweenProperty(element, 'ImageTransparency', element.ImageTransparency, newValue, duration, Util:GetEaseInOutQuad())
	end
	if element:IsA('GuiObject') then
		Util:TweenProperty(element, 'BackgroundTransparency', element.BackgroundTransparency, newValue, duration, Util:GetEaseInOutQuad())
	end
	if element:IsA('TextLabel') or element:IsA('TextBox') or element:IsA('TextButton') then
		Util:TweenProperty(element, 'TextTransparency', element.TextTransparency, newValue, duration, Util:GetEaseInOutQuad())
	end
	for _, child in pairs(element:GetChildren()) do
		FadeElements(child, newValue, duration)
	end
end


local GameInfoProvider = {}
do
	local LoadingFinishedSignal = Instance.new('BindableEvent')
	GameInfoProvider.Finished = false
	GameInfoProvider.GameAssetInfo = nil
	GameInfoProvider.LoadingFinishedEvent = LoadingFinishedSignal.Event

	function GameInfoProvider:GetGameName()
		if self.GameAssetInfo ~= nil then
			return self.GameAssetInfo.Name
		else
			return ''
		end
	end

	function GameInfoProvider:GetCreatorName()
		if self.GameAssetInfo ~= nil then
			return self.GameAssetInfo.Creator.Name
		else
			return ''
		end
	end

	function GameInfoProvider:IsReady()
		return self.Finished
	end

	function GameInfoProvider:LoadAssetsAsync()
		spawn(function()
			while game.PlaceId <= 0 do
				wait()
			end

			-- load game asset info
			local success, result = pcall(function()
				self.GameAssetInfo = MarketPlaceService:GetProductInfo(game.PlaceId)
			end)
			if not FFlagLoadingRemoveRemoteCallErrorPrint then
				if not success then
					print("LoadingScript->GameInfoProvider:LoadAssets:", result)
				end
			end
			self.Finished = true
			LoadingFinishedSignal:Fire()
		end)
	end
end



local LoadingScreen = {}
local loadingContainer = nil
local surfaceGuiAdorn = nil
local loadingSurfaceGui = nil

if GetFFlagHideExperienceLoadingJudder() then
	loadingContainer = Util:Create'Frame'
	{
		Name = 'VRLoadingScreenContainer';
		Size = UDim2.new(1,0,1,0);
		BackgroundTransparency = 1;
		BackgroundColor3 = Color3.new(0,0,0);
	}
else
	surfaceGuiAdorn = Util:Create'Part'
	{
		Name = "LoadingGui";
		Transparency = 1;
		CanCollide = false;
		Anchored = true;
		Archivable = false;
		FormFactor = Enum.FormFactor.Custom;
		RobloxLocked = true;
		Parent = RobloxGui;
	}

	loadingSurfaceGui = Util:Create'SurfaceGui'
	{
		Name = "LoadingSurfaceGui";
		Adornee = surfaceGuiAdorn;
		ToolPunchThroughDistance = 1000;
		CanvasSize = Vector2.new(500, 500);
		Archivable = false;
		Parent = CoreGui;
	}
end

local backgroundImage = Util:Create'ImageLabel'
{
	Name = 'LoadingBackground';
	Position = if GetFFlagHideExperienceLoadingJudder() then UDim2.new(0.25,0,0.25,0) else nil;
	Size = if GetFFlagHideExperienceLoadingJudder() then UDim2.new(0.5,0,0.5,0) else UDim2.new(1,0,1,0);
	Image = 'rbxasset://textures/ui/LoadingScreen/BackgroundLight.png';
	ScaleType = Enum.ScaleType.Slice;
	SliceCenter = Rect.new(70,70,110,110);
	BackgroundTransparency = 1;
	Parent = if GetFFlagHideExperienceLoadingJudder() then loadingContainer else loadingSurfaceGui;
	ImageColor3 = if GetFFlagHideExperienceLoadingJudder() then Color3.new(0,0,0) else nil;
}

local spinnerRotation = 0
local spinnerImage = Util:Create'ImageLabel'
{
	Name = 'Spinner';
	Size = UDim2.new(0.25,0,0.25,0);
	Position = UDim2.new(0.5 - (0.25/2), 0, 0.45 - (0.25/2), 0);
	Image = 'rbxasset://textures/ui/LoadingScreen/LoadingSpinner.png';
	BackgroundTransparency = 1;
	Parent = backgroundImage;
}


local loadingText = Util:Create'TextLabel'
{
	Name = 'LoadingText';
	Text = 'Loading...';
	BackgroundTransparency = 1;
	Font = Enum.Font.SourceSans;
	FontSize = Enum.FontSize.Size60;
	Position = UDim2.new(0.5,0,0.2,0);
	Parent = backgroundImage;
	TextColor3 = if GetFFlagHideExperienceLoadingJudder() then Color3.new(77/255, 163/255, 224/255) else nil;
}

local gameNameText = Util:Create'TextLabel'
{
	Name = 'GameNameText';
	Text = '';
	BackgroundTransparency = 1;
	Font = Enum.Font.SourceSans;
	FontSize = Enum.FontSize.Size60;
	Size = UDim2.new(0.9, 0, 0.1, 0);
	Position = UDim2.new(0.05,0,0.65,0);
	ClipsDescendants = true;
	Parent = backgroundImage;
	TextColor3 = if GetFFlagHideExperienceLoadingJudder() then Color3.new(15/255, 237/255, 255/255) else nil;
}


local creatorTextContainer = Util:Create'Frame'
{
	Name = 'CreatorTextContainer';
	Size = UDim2.new(0.9, 0, 0.1, 0);
	Position = UDim2.new(0.05,0,0.77,0);
	BackgroundTransparency = 1;
	ClipsDescendants = true;
	Parent = backgroundImage;
}

local creatorTextPosition = 0
local creatorText = Util:Create'TextLabel'
{
	Name = 'CreatorText';
	Text = '';
	BackgroundTransparency = 1;
	Font = Enum.Font.SourceSans;
	FontSize = Enum.FontSize.Size42;
	Size = UDim2.new(1, 0, 1, 0);
	Parent = creatorTextContainer;
	TextColor3 = if GetFFlagHideExperienceLoadingJudder() then Color3.new(15/255, 237/255, 255/255) else nil;
}


local function ScreenDimsAtDepth(depth)
	local camera = workspace.CurrentCamera
	if camera then
		local aspectRatio = camera.ViewportSize.x / camera.ViewportSize.y
		local studHeight = 2 * depth * math.tan(math.rad(camera.FieldOfView/2))
		local studWidth = studHeight * aspectRatio

		return Vector2.new(studWidth, studHeight)
	end
	return Vector2.new(0,0)
end

local CleanedUp = false
local freeze = true
delay(2.5, function()
	freeze = false
end)
local function UpdateLayout(delta)
	if not GetFFlagHideExperienceLoadingJudder() then
		local screenDims = ScreenDimsAtDepth(GUI_DISTANCE_FROM_CAMERA)

		surfaceGuiAdorn.Size = Vector3.new(screenDims.x * HORIZONTAL_SCREEN_PERCENT, screenDims.y * VERTICAL_SCREEN_PERCENT, 1)
		local camera = workspace.CurrentCamera
		if camera then
			surfaceGuiAdorn.Parent = camera
		end
	end

	if creatorText.TextBounds.X < creatorTextContainer.AbsoluteSize.X then
		creatorText.Position = UDim2.new(0, 0, 0, 0)
		creatorText.Size = UDim2.new(1, 0, 1, 0)
	elseif delta ~= nil then
		creatorText.Size = UDim2.new(0, creatorText.TextBounds.X, 1, 0)
		if not freeze then
			local newX = (creatorTextPosition - delta * TEXT_SCROLL_SPEED)
			if newX + creatorText.AbsoluteSize.X < creatorTextContainer.AbsoluteSize.X then
				freeze = true
				spawn(function()
					Util:TweenProperty(creatorText, 'TextTransparency', creatorText.TextTransparency, 1, 1, Util:GetEaseInOutQuad())
					wait(1.5)
					if CleanedUp then return end
					creatorTextPosition = 0
					Util:TweenProperty(creatorText, 'TextTransparency', creatorText.TextTransparency, 0, 1, Util:GetEaseInOutQuad())
					wait(1.5)
					freeze = false
				end)
			else
				creatorTextPosition = newX
			end
		end
		creatorText.Position = UDim2.new(0, creatorTextPosition, 0, 0)
	end

	if not gameNameText.TextFits then
		gameNameText.Size = UDim2.new(0.9, 0, 0.3, 0)
		gameNameText.Position = UDim2.new(0.05,0,0.5,0)
		gameNameText.TextScaled = true
		gameNameText.TextWrapped = true

		spinnerImage.Position = UDim2.new(0.5 - (0.25/2), 0, 0.225, 0)
		loadingText.Position = UDim2.new(0.5,0,0.15,0)
	end

end

local CameraChangedConn = nil
local WorkspaceChangedConn = nil

local function CleanUp()
	if CleanedUp then return end
	CleanedUp = true

	if GetFFlagHideExperienceLoadingJudder() then
		FadeElements(loadingContainer, 1, SECONDS_TO_FADE)
	else
		FadeElements(loadingSurfaceGui, 1, SECONDS_TO_FADE)
	end
	wait(SECONDS_TO_FADE)

	RunService:UnbindFromRenderStep("LoadingGui3D")
	if GetFFlagHideExperienceLoadingJudder() then
		loadingContainer.Parent = nil
	else
		surfaceGuiAdorn.Parent = nil
	end
	if CameraChangedConn then
		CameraChangedConn:disconnect()
		CameraChangedConn = nil
	end
	if WorkspaceChangedConn then
		WorkspaceChangedConn:disconnect()
		WorkspaceChangedConn = nil
	end
end

local function OnGameInfoLoaded()
	local creatorName = GameInfoProvider:GetCreatorName()
	if creatorName and creatorName ~= '' then
		creatorName = string.format("By %s", tostring(creatorName))
	end
	gameNameText.Text = GameInfoProvider:GetGameName()
	creatorText.Text = creatorName
end

local OnReplicatingFinishedAsync = nil
if not GetFFlagHideExperienceLoadingJudder() then
	OnReplicatingFinishedAsync = function()
		local function OnGameLoaded()
			CleanUp()
		end

		if game:IsLoaded() then
			OnGameLoaded()
		else
			game.Loaded:Wait()
			OnGameLoaded()
		end
	end
end

local function OnDefaultLoadingGuiRemoved()
	CleanUp()
end

local UpdateSurfaceGuiPosition = nil
if not GetFFlagHideExperienceLoadingJudder() then
	UpdateSurfaceGuiPosition = function()
		local camera = workspace.CurrentCamera
		if camera then
			local cameraCFrame = camera.CFrame
			local cameraLook = cameraCFrame.lookVector

			surfaceGuiAdorn.CFrame = (cameraCFrame * CFrame.Angles(0,math.pi,0)) + cameraLook * GUI_DISTANCE_FROM_CAMERA
		end
	end
end

do
	local lastUpdate = tick()
	RunService:BindToRenderStep("LoadingGui3D", Enum.RenderPriority.Last.Value, function()
		local now = tick()
		local delta = now - lastUpdate

		if not GetFFlagHideExperienceLoadingJudder() then
			UpdateSurfaceGuiPosition()
		end
		UpdateLayout(delta)

		local rotation = delta * ROTATIONS_PER_SECOND * 360
		spinnerRotation = spinnerRotation + rotation
		spinnerImage.Rotation = spinnerRotation

		lastUpdate = now
	end)
	if not GetFFlagHideExperienceLoadingJudder() then
		UpdateSurfaceGuiPosition()
	end
	UpdateLayout()

	local connectCameraEvent = nil
	if not GetFFlagHideExperienceLoadingJudder() then
		connectCameraEvent = function()
			if workspace.CurrentCamera then
				if CameraChangedConn then
					CameraChangedConn:disconnect()
				end
				CameraChangedConn = workspace.CurrentCamera:GetPropertyChangedSignal("CFrame"):Connect(function()
					UpdateSurfaceGuiPosition()
				end)
			end
		end
	end
	if not GetFFlagHideExperienceLoadingJudder() then
		WorkspaceChangedConn = workspace.Changed:Connect(function(prop)
			if prop == 'CurrentCamera' then
				connectCameraEvent()
			end
		end)

		connectCameraEvent()
	end
end

GameInfoProvider:LoadAssetsAsync()
if GameInfoProvider:IsReady() then
	OnGameInfoLoaded()
end
GameInfoProvider.LoadingFinishedEvent:Connect(OnGameInfoLoaded)

if not GetFFlagHideExperienceLoadingJudder() then
	if ReplicatedFirst:IsFinishedReplicating() then
		spawn(OnReplicatingFinishedAsync)
	else
		ReplicatedFirst.FinishedReplicating:connect(OnReplicatingFinishedAsync)
	end
end

if ReplicatedFirst:IsDefaultLoadingGuiRemoved() then
	OnDefaultLoadingGuiRemoved()
else
	ReplicatedFirst.RemoveDefaultLoadingGuiSignal:connect(OnDefaultLoadingGuiRemoved)
end

GuiService.ErrorMessageChanged:connect(function()
	-- TODO
end)

GuiService.UiMessageChanged:connect(function(type, newMessage)
	-- TODO
end)

if GetFFlagHideExperienceLoadingJudder() then
	SplashScreenManager.addStatusChangeListener(function(isFPSAtTarget)
		if isFPSAtTarget then
			CleanUp()
		end
	end)
end

if GetFFlagHideExperienceLoadingJudder() then
	return loadingContainer
else
	return LoadingScreen
end
