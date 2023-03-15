--!nonstrict
--[[
	BottomBar quick access menu
	Roblox VR 2022, @MetaVars
]]--

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")
local VRService = game:GetService("VRService")

local Otter = require(CorePackages.Otter)
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local SystemBar = UIBlox.App.Navigation.SystemBar
local Placement = UIBlox.App.Navigation.Enum.Placement
local Panel3D = UIBlox.Core.VR.Panel3D
local VRConstants = UIBlox.Core.VR.Constants

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VRHub = require(RobloxGui.Modules.VR.VRHub)
local VRUtil = require(RobloxGui.Modules.VR.VRUtil)

local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection

-- accessors
local InGameMenuConstants = require(RobloxGui.Modules.InGameMenuConstants)
local GameSettings = UserSettings().GameSettings
local InGameMenu = require(RobloxGui.Modules.InGameMenuInit)
local ChatSelector = require(RobloxGui.Modules.ChatSelector)

local VRBottomBar = Roact.PureComponent:extend("TopBarApp")
local VRBarSeparator = require(script.Parent.VRBarSeparator)

local EmotesMenuMaster = require(RobloxGui.Modules.EmotesMenu.EmotesMenuMaster)
local BackpackScript = require(RobloxGui.Modules.BackpackScript)
local PlayerListMaster = require(RobloxGui.Modules.PlayerList.PlayerListManager)
local StarterPlayer = game:GetService("StarterPlayer")

local SafetyBubbleEnabled = require(RobloxGui.Modules.Flags.FFlagSafetyBubbleEnabled)

local EngineFeatureEnableVRBottomBarWorksBehindObjects = game:GetEngineFeature("EnableVRBottomBarWorksBehindObjects")
local GetFFlagUIBloxVRApplyHeadScale =
	require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxVRApplyHeadScale

local FFlagFixPurchasePromptInVR = game:GetEngineFeature("FixPurchasePromptInVR")
local GetFFlagBottomBarButtonBehaviorFixVR = require(RobloxGui.Modules.Flags.GetFFlagBottomBarButtonBehaviorFixVR)
local GetFFlagBottomBarInitialStateFixVR = require(RobloxGui.Modules.Flags.GetFFlagBottomBarInitialStateFixVR)
local GetFFlagBottomBarSortOrderFixVR = require(RobloxGui.Modules.Flags.GetFFlagBottomBarSortOrderFixVR)
local FFlagUserVRPlaySeatedStanding = require(RobloxGui.Modules.Flags.FFlagUserVRPlaySeatedStanding)
local GetFFlagBottomBarImproveInVR = require(RobloxGui.Modules.Flags.GetFFlagBottomBarImproveInVR)

-- This can be useful in cases where a flag configuration issue causes requiring a CoreScript to fail
local function safeRequire(moduleScript)
	local success, ret = pcall(require, moduleScript)
	if success then
		return ret
	else
		warn("Failure to Start CoreScript module " .. moduleScript.Name .. ".\n" .. ret)
	end
end

local LOOKAWAY_Y_THRESHOLD = -0.2

local SpringOptions = {
	Default = {
		dampingRatio = 1,
		frequency = 4.5,
	},
	Slower = {
		dampingRatio = 1,
		frequency = 0.66,
	},
}

-- each individual icon can either be definied as a table entry with icon and onActivate, or as a item component
local MainMenu =
{
	iconOn = "rbxasset://textures/ui/MenuBar/icon_menu.png",
	iconOff = "rbxasset://textures/ui/MenuBar/icon_menu.png",
	onActivated = function()
		VRHub:SetShowTopBar(true)
		if not InGameMenu.getOpen() then
			InGameMenu.openInGameMenu(InGameMenuConstants.MainPagePageKey)
		else
			InGameMenu.closeInGameMenu()
		end
	end,
}

local ToggleGui =
{
	iconOn = "rbxasset://textures/ui/MenuBar/icon_maximize.png",
	iconOff = "rbxasset://textures/ui/MenuBar/icon_minimize.png",
	onActivated = function()
		if not VRHub.ShowTopBar then
			VRHub:SetShowTopBar(false)
			VRHub:SetShowTopBar(true)
		else
			VRHub:SetShowTopBar(false)
			InGameMenu.closeInGameMenu()
		end
	end,
}

local BackpackIcon =
{
	iconOn = "rbxasset://textures/ui/MenuBar/icon__backpack.png",
	iconOff = "rbxasset://textures/ui/MenuBar/icon__backpack.png",
	onActivated = function()
		if GetFFlagBottomBarButtonBehaviorFixVR() then
			if not VRHub.ShowTopBar then
				-- Expand UI and open backpack
				VRHub:SetShowTopBar(true)
				if not BackpackScript.IsOpen then
					BackpackScript.OpenClose()
				end
			else
				BackpackScript.OpenClose()
			end
		else
			BackpackScript.OpenClose()
		end
	end,
}

local PlayerList =
{
	iconOn = "rbxasset://textures/ui/MenuBar/icon_leaderboard.png",
	iconOff = "rbxasset://textures/ui/MenuBar/icon_leaderboard.png",
	onActivated = function()
		if GetFFlagBottomBarButtonBehaviorFixVR() then
			if not VRHub.ShowTopBar then
				-- Expand UI and show playerList
				VRHub:SetShowTopBar(true)
				if not PlayerListMaster:GetSetVisible() then
					PlayerListMaster:SetVisibility(true)
				end
			else
				PlayerListMaster:SetVisibility(not PlayerListMaster:GetSetVisible())
			end
		else
			PlayerListMaster:SetVisibility(not PlayerListMaster:GetSetVisible())
		end
	end,
}

local Emotes =
{
	iconOn = "rbxasset://textures/ui/MenuBar/icon_emote.png",
	iconOff = "rbxasset://textures/ui/MenuBar/icon_emote.png",
	onActivated = function()
		if GetFFlagBottomBarButtonBehaviorFixVR() then
			if not VRHub.ShowTopBar then
				-- Expand UI and show emotesMenu
				VRHub:SetShowTopBar(true)
				if not EmotesMenuMaster:isOpen() then
					EmotesMenuMaster:open()
				end
			else
				if EmotesMenuMaster:isOpen() then
					EmotesMenuMaster:close()
				else
					EmotesMenuMaster:open()
				end
			end
		else
			VRHub:SetShowTopBar(true)
			if EmotesMenuMaster:isOpen() then
				EmotesMenuMaster:close()
			else
				EmotesMenuMaster:open()
			end
		end
	end,
}

local Chat =
{
	iconOn = "rbxasset://textures/ui/MenuBar/icon_chat.png",
	iconOff = "rbxasset://textures/ui/MenuBar/icon_chat.png",
	onActivated = function()
		if GetFFlagBottomBarButtonBehaviorFixVR() then
			if not VRHub.ShowTopBar then
				-- Expand UI and show chat
				VRHub:SetShowTopBar(true)
				if not ChatSelector:GetVisibility() then
					ChatSelector:ToggleVisibility()
					GameSettings.ChatVisible = ChatSelector:GetVisibility()
				end
			else
				ChatSelector:ToggleVisibility()
				GameSettings.ChatVisible = ChatSelector:GetVisibility()
			end
		else
			VRHub:SetShowTopBar(true)
			ChatSelector:ToggleVisibility()
			GameSettings.ChatVisible = ChatSelector:GetVisibility()
		end
	end,
}

local Seated
local Standing
if FFlagUserVRPlaySeatedStanding then
	local changeVRPlayMode = function()
		if GameSettings.VRPlayMode == Enum.VRPlayMode.Seated then
			GameSettings.VRPlayMode = Enum.VRPlayMode.Standing
		else
			GameSettings.VRPlayMode = Enum.VRPlayMode.Seated
		end
	end

	Standing =
	{
		iconOn = "rbxasset://textures/ui/MenuBar/icon_standing.png",
		iconOff = "rbxasset://textures/ui/MenuBar/icon_standing.png",
		onActivated = changeVRPlayMode,
	}

	Seated =
	{
		iconOn = "rbxasset://textures/ui/MenuBar/icon_seated.png",
		iconOff = "rbxasset://textures/ui/MenuBar/icon_seated.png",
		onActivated = changeVRPlayMode,
	}
end

local SafetyOn = 
{
	iconOn = "rbxasset://textures/ui/MenuBar/icon_safety_on.png",
	iconOff = "rbxasset://textures/ui/MenuBar/icon_safety_on.png",
	onActivated = function()
		VRHub:ToggleSafetyBubble()
	end,
}

local SafetyOff = 
{
	iconOn = "rbxasset://textures/ui/MenuBar/icon_safety_off.png",
	iconOff = "rbxasset://textures/ui/MenuBar/icon_safety_off.png",
	onActivated = function()
		VRHub:ToggleSafetyBubble()
	end,
}

local LeaveGame = 
{
	iconOn = "rbxasset://textures/ui/MenuBar/icon_leave.png",
	iconOff = "rbxasset://textures/ui/MenuBar/icon_leave.png",
	onActivated = function()
		VRHub:SetShowTopBar(true)
		if InGameMenu then
			if FFlagFixPurchasePromptInVR then
				-- Should open root menu to trigger InGameMenu open event before open GameLeave page
				if not InGameMenu.getOpen() then
					InGameMenu.openInGameMenu(InGameMenuConstants.MainPagePageKey)
				end
				InGameMenu.openGameLeavePage()
			else
				if InGameMenu.getOpen then
					InGameMenu.openGameLeavePage()
				end
			end
		end
	end,
}

local SeparatorIcon =
{
	iconComponent = VRBarSeparator,
	itemSize = UDim2.new(0, 28, 0, 44),
}

-- default bar init
function VRBottomBar:init()
	self:setState({
		vrMenuOpen = true,
		lookAway = false, -- whether player looks away from VRBottomBar
		userGui = GetFFlagBottomBarImproveInVR() and VRService.VREnabled and safeRequire(RobloxGui.Modules.VR.UserGui) or Roact.None
	})
	
	self.backpackHasItems = false
	self.emotesLoaded = false

	if GetFFlagBottomBarInitialStateFixVR() then
		self:setState({
			itemList = { MainMenu, SeparatorIcon, ToggleGui, SeparatorIcon, LeaveGame }
		})

		self.onShowTopBarChanged = function()
			self:setState({
				vrMenuOpen = VRHub.ShowTopBar,
			})
		end
		
		self.updateItemListState = function()
			local activeItems = self:updateItems()
			self:setState({
				itemList = activeItems
			})
		end

		self.onBackpackItemAdded = function()
			if not self.backpackHasItems then
				self.backpackHasItems = true
				self.updateItemListState()
			end
		end

		self.onBackpackEmpty = function()
			if self.backpackHasItems then
				self.backpackHasItems = false
				self.updateItemListState()
			end
		end

		self.onEmotesLoaded = function(emotesLoaded)
			if emotesLoaded ~= self.emotesLoaded then
				self.emotesLoaded = emotesLoaded
				self.updateItemListState()
			end
		end

		if GetFFlagBottomBarImproveInVR() then
			self.onVREnabledChanged = function()
				self:setState({
	 				userGui = VRService.VREnabled and safeRequire(RobloxGui.Modules.VR.UserGui) or Roact.None
				})
			end
		end

		self.onRenderStepped = function()
			local currentCamera = workspace.CurrentCamera :: Camera
			local cameraCF = currentCamera.CFrame
			local userHeadCameraCF
			if GetFFlagUIBloxVRApplyHeadScale() then
				userHeadCameraCF = VRUtil.GetUserCFrameWorldSpace(Enum.UserCFrame.Head)
			else
				userHeadCameraCF = cameraCF * VRService:GetUserCFrame(Enum.UserCFrame.Head)
			end
			local lookAway = userHeadCameraCF.LookVector.Y > LOOKAWAY_Y_THRESHOLD
			if self.state.lookAway ~= lookAway then
				self:setState({
					lookAway = lookAway,
				})
			end
		end

		self.fadeTransparency, self.setFadeTransparency = Roact.createBinding(0)
		self.fadeTransparencyMotor = Otter.createSingleMotor(self.fadeTransparency:getValue())
		self.fadeTransparencyMotor:onStep(self.setFadeTransparency)
		self.fadeTransparencyMotor:setGoal(Otter.spring(0, SpringOptions.Default))
	else
		if SafetyBubbleEnabled then	
			self:setState({
				itemList = {MainMenu, SeparatorIcon, ToggleGui, Emotes, Chat, PlayerList, SeparatorIcon, SafetyOn, LeaveGame}
			})
		else
			self:setState({
				itemList = {MainMenu, SeparatorIcon, ToggleGui, Emotes, Chat, PlayerList, SeparatorIcon, LeaveGame}
			})
		end
	end
end

function VRBottomBar:didMount()
	if GetFFlagBottomBarInitialStateFixVR() then
		self.emotesLoaded = EmotesMenuMaster:isEmotesLoaded()
		self.backpackHasItems = BackpackScript.IsInventoryEmpty()
		self.updateItemListState()
	else
		VRHub.ShowTopBarChanged.Event:Connect(function()
			self:setState({
				vrMenuOpen = VRHub.ShowTopBar,
			})
		end)
		
		VRHub.SafetyBubbleToggled.Event:Connect(function()
			local activeItems = self:updateItems()
			self:setState({
				itemList = activeItems
			})
		end)
		
		BackpackScript.BackpackItemAdded.Event:Connect(function()
			self.backpackHasItems = true
			local activeItems = self:updateItems()
			self:setState({
				itemList = activeItems
			})
		end)
		
		BackpackScript.BackpackEmpty.Event:Connect(function()
			self.backpackHasItems = false
			local activeItems = self:updateItems()
			self:setState({
				itemList = activeItems
			})
		end)
		
		EmotesMenuMaster.EmotesLoaded.Event:Connect(function(emotesLoaded)
			if emotesLoaded ~= self.emotesLoaded then
				self.emotesLoaded = emotesLoaded
				local activeItems = self:updateItems()
				self:setState({
					itemList = activeItems
				})
			end
		end)
	end
end

-- the bottombar itemlist automatically tracks feature updates and scales on demand
function VRBottomBar:updateItems()
	local backpackEnabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Backpack)
	local emotesEnabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu)
	local chatEnabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Chat)
	local playerListEnabled = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.PlayerList)
	
	local enabledItems = { MainMenu, SeparatorIcon, ToggleGui }
	if emotesEnabled and not (StarterPlayer.UserEmotesEnabled and self.emotesLoaded == false) then
		table.insert(enabledItems, Emotes)
	end
	if backpackEnabled and self.backpackHasItems then
		table.insert(enabledItems, BackpackIcon)
	end
	if chatEnabled then
		table.insert(enabledItems, Chat)
	end
	if playerListEnabled then
		table.insert(enabledItems, PlayerList)
	end

	if FFlagUserVRPlaySeatedStanding then
		if GameSettings.VRPlayMode == Enum.VRPlayMode.Seated then
			table.insert(enabledItems, Seated)
		else
			table.insert(enabledItems, Standing)
		end
	end

	table.insert(enabledItems, SeparatorIcon)

	if SafetyBubbleEnabled then
		if VRHub.SafetyBubble and VRHub.SafetyBubble.enabled then
			table.insert(enabledItems, SafetyOn)
		else
			table.insert(enabledItems, SafetyOff)
		end
	end

	table.insert(enabledItems, LeaveGame)

	return enabledItems
end

-- VRBottomBar implements two UIBlox components
function VRBottomBar:render()

	if GetFFlagBottomBarInitialStateFixVR() then
		local systemBar = Roact.createElement(SystemBar, {
			itemList = self.state.itemList,
			selection = self.state.vrMenuOpen and 1 or 3,
			placement = Placement.Bottom,
			hidden = false,
			onSafeAreaChanged = function() end,
			size = UDim2.new(1, 0, 1, 0),
			position = UDim2.new(),
			layoutOrder = 1,
			roundCorners = true,
			buttonStroke = true,
			bgTransparency = 0,
			sortOrder = if GetFFlagBottomBarSortOrderFixVR() then Enum.SortOrder.LayoutOrder else nil,
		})

		return Roact.createElement(Panel3D,  {
			alignedPanel = if GetFFlagBottomBarImproveInVR() and self.state.userGui then self.state.userGui:getPanel() else nil,
			panelName = "BottomBar",
			partSize = if GetFFlagUIBloxVRApplyHeadScale()
				then Vector2.new((#self.state.itemList - 1) * 0.15, 0.15)
				else Vector2.new((#self.state.itemList - 1) * 0.15 * (workspace.CurrentCamera :: Camera).HeadScale, 0.15 * (workspace.CurrentCamera :: Camera).HeadScale),
			virtualScreenSize = Vector2.new((#self.state.itemList - 1) * 50, 50),
			offset = if GetFFlagUIBloxVRApplyHeadScale()
				then self.state.vrMenuOpen and CFrame.new(0, -1.5, 0) or CFrame.new(0, -2, 0)
				else self.state.vrMenuOpen and CFrame.new(0, -1.5 * (workspace.CurrentCamera :: Camera).HeadScale, 0) or CFrame.new(0, -2 * (workspace.CurrentCamera :: Camera).HeadScale, 0),
			lerp = true,
			tilt = 0,
			anchoring = VRConstants.AnchoringTypes.Head,
			faceCamera = true,
			alwaysOnTop = EngineFeatureEnableVRBottomBarWorksBehindObjects and true or nil,
			parent = EngineFeatureEnableVRBottomBarWorksBehindObjects and GuiService.CoreGuiFolder or nil,
		}, {
			CanvasGroup = GetFFlagBottomBarImproveInVR() and Roact.createElement("CanvasGroup", {
				BackgroundTransparency =  1,
				BorderSizePixel = 0,
				GroupTransparency = self.fadeTransparency,
				Size = UDim2.new(1, 0, 1, 0),
			}, {
				SystemBar = systemBar,
			}),
			SystemBar = not GetFFlagBottomBarImproveInVR() and systemBar,

			ShowTopBarChanged = Roact.createElement(ExternalEventConnection, {
				event = VRHub.ShowTopBarChanged.Event,
				callback = self.onShowTopBarChanged,
			}),
			CoreGuiChanged = Roact.createElement(ExternalEventConnection, {
				event = StarterGui.CoreGuiChangedSignal,
				callback = self.updateItemListState,
			}),
			VRPlayModeChanged = FFlagUserVRPlaySeatedStanding and Roact.createElement(ExternalEventConnection, {
				event = GameSettings:GetPropertyChangedSignal("VRPlayMode"),
				callback = self.updateItemListState,
			}),
			SafetyBubbleToggled = Roact.createElement(ExternalEventConnection, {
				event = VRHub.SafetyBubbleToggled.Event,
				callback = self.updateItemListState,
			}),
			BackpackItemAdded = Roact.createElement(ExternalEventConnection, {
				event = BackpackScript.BackpackItemAdded.Event,
				callback = self.onBackpackItemAdded,
			}),
			BackpackEmpty = Roact.createElement(ExternalEventConnection, {
				event = BackpackScript.BackpackEmpty.Event,
				callback = self.onBackpackEmpty,
			}),
			EmotesLoaded = Roact.createElement(ExternalEventConnection, {
				event = EmotesMenuMaster.EmotesLoaded.Event,
				callback = self.onEmotesLoaded,
			}),
			RenderStepped = GetFFlagBottomBarImproveInVR() and Roact.createElement(ExternalEventConnection, {
				event = RunService.RenderStepped,
				callback = self.onRenderStepped,
			}),
			VREnabled = GetFFlagBottomBarImproveInVR() and Roact.createElement(ExternalEventConnection, {
				event = VRService:GetPropertyChangedSignal("VREnabled"),
				callback = self.onVREnabledChanged,
			}),
		})
	else
		return Roact.createElement(Panel3D,  {
			panelName = "BottomBar",
			partSize = if GetFFlagUIBloxVRApplyHeadScale()
				then Vector2.new((#self.state.itemList - 1) * 0.15, 0.15)
				else Vector2.new((#self.state.itemList - 1) * 0.15 * (workspace.CurrentCamera :: Camera).HeadScale, 0.15 * (workspace.CurrentCamera :: Camera).HeadScale),
			virtualScreenSize = Vector2.new((#self.state.itemList - 1) * 50, 50),
			offset = if GetFFlagUIBloxVRApplyHeadScale()
				then self.state.vrMenuOpen and CFrame.new(0, -1.5, 0) or CFrame.new(0, -2, 0)
				else self.state.vrMenuOpen and CFrame.new(0, -1.5 * (workspace.CurrentCamera :: Camera).HeadScale, 0) or CFrame.new(0, -2 * (workspace.CurrentCamera :: Camera).HeadScale, 0),
			lerp = true,
			tilt = 0,
			anchoring = VRConstants.AnchoringTypes.Head,
			faceCamera = true,
			alwaysOnTop = EngineFeatureEnableVRBottomBarWorksBehindObjects and true or nil,
			parent = EngineFeatureEnableVRBottomBarWorksBehindObjects and GuiService.CoreGuiFolder or nil,
		}, {
			Roact.createElement(SystemBar, {
				itemList = self.state.itemList,
				selection = self.state.vrMenuOpen and 1 or 3,
				placement = Placement.Bottom,
				hidden = false,
				onSafeAreaChanged = function() end,
				size = UDim2.new(1, 0, 1, 0),
				position = UDim2.new(),
				layoutOrder = 1,
				roundCorners = true,
				buttonStroke = true,
				bgTransparency = 0,

				StarterGui.CoreGuiChangedSignal:connect(function(coreGuiType, enabled)
					local activeItems = self:updateItems()
					self:setState({
						itemList = activeItems
					})
				end),
			}),
		})
	end
end

function VRBottomBar:didUpdate(_, prevState)
	if GetFFlagBottomBarImproveInVR() then
		if prevState.lookAway ~= self.state.lookAway or prevState.vrMenuOpen ~= self.state.vrMenuOpen then
			local fadeOut = not self.state.vrMenuOpen and self.state.lookAway
			if fadeOut then
				self.fadeTransparencyMotor:setGoal(Otter.spring(1, SpringOptions.Slower))
			else
				self.fadeTransparencyMotor:setGoal(Otter.spring(0, SpringOptions.Default))
			end
		end
	end
end

function VRBottomBar:willUnmount()
	self.fadeTransparencyMotor:stop()
end

return RoactRodux.UNSTABLE_connect2(nil, nil)(VRBottomBar)
