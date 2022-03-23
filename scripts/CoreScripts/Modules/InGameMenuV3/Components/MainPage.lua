--!nocheck

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local RunService = game:GetService("RunService")
local GameSettings = settings():FindFirstChild("Game Options") or error("Game Options does not exist", 0)
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local VRService = game:GetService("VRService")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local VideoProtocol = require(CorePackages.UniversalApp.Video.VideoProtocol)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t

local withStyle = UIBlox.Core.Style.withStyle
local ContextualMenu = UIBlox.App.Menu.ContextualMenu
local MenuDirection = UIBlox.App.Menu.MenuDirection
local KeyLabel = UIBlox.App.Menu.KeyLabel

local InGameMenu = script.Parent.Parent

local withLocalization = require(InGameMenu.Localization.withLocalization)

local SetRespawning = require(InGameMenu.Actions.SetRespawning)
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local SetMainPageMoreMenuOpen = require(InGameMenu.Actions.SetMainPageMoreMenuOpen)
local Assets = require(InGameMenu.Resources.Assets)
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local VoiceIndicator = require(RobloxGui.Modules.VoiceChat.Components.VoiceIndicator)

local Constants = require(InGameMenu.Resources.Constants)
local Direction = require(InGameMenu.Enums.Direction)

local KeyLabel_DEPRECATED = require(script.Parent.KeyLabel)
local PageNavigation = require(script.Parent.PageNavigation)
local GameIconHeader = require(script.Parent.GameIconHeader)
local ZonePortal = require(script.Parent.ZonePortal)

local ApiFetchGameIsFavorite = require(InGameMenu.Thunks.ApiFetchGameIsFavorite)
local SetGameFavorite = require(InGameMenu.Actions.SetGameFavorite)
local GamePostFavorite = require(InGameMenu.Thunks.GamePostFavorite)

local HttpRbxApiService = game:GetService("HttpRbxApiService")
local Network = InGameMenu.Network
local httpRequest = require(Network.httpRequest)
local networkImpl = httpRequest(HttpRbxApiService)

local MORE_MENU_NAME = "MainPageMoreMenu"
local CLOSE_MORE_MENU_ACTION = "CloseMoreMenuAction"
local LEFT_STICK_TOGGLES_MORE_MENU_ACTION = "LeftStickTogglesMoreMenuAction"

local Flags = InGameMenu.Flags
local FFlagRecordRecording = require(Flags.FFlagRecordRecording)
local FFlagTakeAScreenshotOfThis = game:DefineFastFlag("TakeAScreenshotOfThis", false)
local FFlagShowContextMenuWhenButtonsArePresent = game:DefineFastFlag("ShowContextMenuWhenButtonsArePresent", false)
local GetFFlagInGameMenuControllerDevelopmentOnly = require(Flags.GetFFlagInGameMenuControllerDevelopmentOnly)
local GetFFlagUseIGMControllerBar = require(Flags.GetFFlagUseIGMControllerBar)
local GetFFlagRemoveMoreMenuFromReducer = require(Flags.GetFFlagRemoveMoreMenuFromReducer)
local GetFFlagIGMGamepadSelectionHistory = require(Flags.GetFFlagIGMGamepadSelectionHistory)
local GetFFlagSideNavControllerBar = require(Flags.GetFFlagSideNavControllerBar)
local Images = UIBlox.App.ImageSet.Images
local FocusHandler = require(script.Parent.Connection.FocusHandler)
local IGMMainPageControllerBar = require(script.Parent.IGMMainPageControllerBar)

local GetFFlagEnableVoiceChatNewPlayersList = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatNewPlayersList)
local GetFFlagEnableVoiceChatMuteButton = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceChatMuteButton)
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

local FFlagEnableNewVrSystem = require(RobloxGui.Modules.Flags.FFlagEnableNewVrSystem)

local MAIN_PAGE_WIDTH = 400
local RECORD_UPDATE_STEP = 0.2
local BOTTOM_MENU_ICON_SIZE = 44

local RESPAWN_KEY_CODE_LABEL = {
	[Constants.InputType.MouseAndKeyboard] = Enum.KeyCode.R,
	[Constants.InputType.Gamepad] = Enum.KeyCode.ButtonY,
}

local SCREEN_RECORD_KEY_CODE_LABEL = {
	[Constants.InputType.MouseAndKeyboard] = Enum.KeyCode.F12,
}

local LEAVE_GAME_KEY_CODE_LABEL = {
	[Constants.InputType.MouseAndKeyboard] = Enum.KeyCode.L,
	[Constants.InputType.Gamepad] = Enum.KeyCode.ButtonX,
}

local MainPage = Roact.PureComponent:extend("MainPage")

local function areCapturesAllowed()
	if FFlagEnableNewVrSystem and VRService.VREnabled then
		return false -- screenshots aren't functional in VR
	end

	if not FFlagTakeAScreenshotOfThis then
		return true
	end
	local RobloxGui = CoreGui:WaitForChild("RobloxGui")
	local PolicyService = require(RobloxGui.Modules.Common:WaitForChild("PolicyService"))
	return not PolicyService:IsSubjectToChinaPolicies()
end

function MainPage:renderButtonModels(style, localized)
	local buttons = {}
	local inputType = self.props.inputType

	-- Favorite Button
	-- Follow Button
	-- Report Button

	if areCapturesAllowed() then

		-- Screenshot Button
		if FFlagTakeAScreenshotOfThis then
			table.insert(buttons, {
				icon = Images["icons/controls/screenshot"],
				text = localized.screenCapture,
				onActivated = function()
					if GetFFlagInGameMenuControllerDevelopmentOnly() and not GetFFlagRemoveMoreMenuFromReducer() then
						self.props.setMainPageMoreMenuOpen(false)
					else
						self:setState({
							modalOpen = false,
						})
					end
					self.props.closeMenu()
					for _ = 1, 2 do -- wait for top-bar to update
						RunService.RenderStepped:Wait()
					end
					CoreGui:TakeScreenshot()
				end,
			})
		end

		local favoriteChecked = (self.props.isFavorited ~= nil) and self.props.isFavorited or false

		table.insert(buttons, {
			icon = Images["icons/controls/screenshot"],
			text = favoriteChecked and "Unfavorite" or "Favorite",
			onActivated = function()
				self.props.setFavorite(not favoriteChecked)
				self.props.postFavorite(networkImpl, not favoriteChecked)
			end,
		})

		-- Record Button
		if GameSettings.VideoCaptureEnabled and FFlagRecordRecording then
			local recordingText = localized.recordVideo
			local colorOverride = nil
			local keyCodeLabel = nil -- TOOD: Can inline when GetFFlagInGameMenuControllerDevelopmentOnly is removed
			if GetFFlagInGameMenuControllerDevelopmentOnly() then
				keyCodeLabel = SCREEN_RECORD_KEY_CODE_LABEL[inputType]
			else
				keyCodeLabel = Enum.KeyCode.F12
			end
			if self.props.recording then
				local d = os.date("*t", self.state.recordingDuration)
				local formattedTime = ("%d:%02d"):format(d.min, d.sec)
				recordingText = localized.recording:gsub("{DURATION}", formattedTime)
				colorOverride = style.Theme.Alert.Color
			end
			table.insert(buttons, {
				icon = Images["icons/controls/screenrecord"],
				text = recordingText,
				onActivated = function()
					CoreGui:ToggleRecording()
					if GetFFlagInGameMenuControllerDevelopmentOnly() and not GetFFlagRemoveMoreMenuFromReducer() then
						self.props.setMainPageMoreMenuOpen(false)
					else
						self:setState({
							modalOpen = false,
						})
					end
				end,
				keyCodeLabel = keyCodeLabel,
				iconColorOverride = colorOverride,
				textColorOverride = colorOverride,
			})
		end

	end

	-- Respawn Button
	if self.props.respawnButtonVisible then
		local keyCodeLabel = nil -- TOOD: Can inline when GetFFlagInGameMenuControllerDevelopmentOnly is removed
		if GetFFlagInGameMenuControllerDevelopmentOnly() then
			keyCodeLabel = RESPAWN_KEY_CODE_LABEL[inputType]
		else
			keyCodeLabel = Enum.KeyCode.R
		end
		table.insert(buttons, {
			icon = Assets.Images.RespawnIcon,
			text = localized.respawnCharacter,
			onActivated = function()
				if
					GetFFlagInGameMenuControllerDevelopmentOnly() and not GetFFlagRemoveMoreMenuFromReducer() then
					self.props.setMainPageMoreMenuOpen(false)
				else
					self:setState({
						modalOpen = false,
					})
				end

				self.props.startRespawning()
			end,
			keyCodeLabel = keyCodeLabel,
		})
	end

	return buttons
end

MainPage.validateProps = t.strictInterface({
	open = t.boolean,
	isMainPageMoreMenuOpen = t.optional(t.boolean), -- remove when RemoveMoreMenuFromReducer flag is removed
	respawnButtonVisible = t.boolean,
	startLeavingGame = t.callback,
	startRespawning = t.callback,
	setMainPageMoreMenuOpen = GetFFlagInGameMenuControllerDevelopmentOnly() and t.optional(t.callback) or nil,
	closeMenu = t.callback,
	recording = t.boolean,
	screenSize = t.Vector2,
	canCaptureFocus = t.optional(t.boolean),
	inputType = t.optional(t.string),
	setFirstItemRef = t.optional(t.callback),
	voiceEnabled = t.optional(t.boolean),
	currentZone = GetFFlagIGMGamepadSelectionHistory() and t.optional(t.number) or nil,
	isMainPageInForeground = GetFFlagSideNavControllerBar() and t.optional(t.boolean) or nil,
})

function MainPage:init()
	if GetFFlagInGameMenuControllerDevelopmentOnly() then
		self.moreMenuFrameRef = nil
		self.moreMenuFirstItemFrameRef = nil
		self.moreMenuButtonRef = Roact.createRef()
		self.mainPageFirstButtonRef = Roact.createRef()

		self.setMoreMenuRef = function(ref)
			self.moreMenuFrameRef = ref
		end

		self.setMoreMenuFirstItemRef = function(ref)
			self.moreMenuFirstItemFrameRef = ref
		end
	end

	-- We return 0 here if our response is nil or if our response doesn't have the key we need
	self.getRecordingDuration = function()
		local response = VideoProtocol.default:getRecordingDuration()
		return response and response.recordingDuration or 0
	end

	self.fetchGameIsFavorite = function()
		return self.props.fetchGameIsFavorite(networkImpl)
	end

	local modalOpen
	if
		not GetFFlagInGameMenuControllerDevelopmentOnly()
		or (GetFFlagInGameMenuControllerDevelopmentOnly() and GetFFlagRemoveMoreMenuFromReducer())
	then
		modalOpen = false
	end

	self.state = {
		modalOpen = modalOpen,
		recordingDuration = 0,
	}
end

if GetFFlagInGameMenuControllerDevelopmentOnly() and GetFFlagRemoveMoreMenuFromReducer() then
	function MainPage.getDerivedStateFromProps(nextProps)
		if GetFFlagSideNavControllerBar() then
			if not nextProps.isMainPageInForeground then
				return {
					modalOpen = false,
				}
			end
		else
			if not nextProps.canCaptureFocus then
				return {
					modalOpen = false,
				}
			end
		end
		return nil
	end
end

function MainPage:renderMainPageFocusHandler()
	local canCaptureFocus = self.canGamepadCaptureFocus(self.props)

	local shouldForgetPreviousSelection = nil -- can be inlined when flag is removed
	if GetFFlagIGMGamepadSelectionHistory() then
		local isMainPageMoreMenuOpen
		if GetFFlagRemoveMoreMenuFromReducer() then
			isMainPageMoreMenuOpen = self.state.modalOpen
		else
			isMainPageMoreMenuOpen = self.props.isMainPageMoreMenuOpen
		end
		canCaptureFocus = self.canGamepadCaptureFocus(self.props) and not isMainPageMoreMenuOpen

		shouldForgetPreviousSelection = not self.props.open or self.props.currentZone == 0
	end

	return Roact.createElement(FocusHandler, {
		isFocused = canCaptureFocus,
		shouldForgetPreviousSelection = shouldForgetPreviousSelection,
		didFocus = GetFFlagIGMGamepadSelectionHistory() and function(previousSelection)
			if not GetFFlagSideNavControllerBar() then
				ContextActionService:BindCoreAction(LEFT_STICK_TOGGLES_MORE_MENU_ACTION, function(actionName, inputState)
					if inputState == Enum.UserInputState.End then
						if GetFFlagRemoveMoreMenuFromReducer() then
							self:setState({
								modalOpen = true
							})
						else
							self.props.setMainPageMoreMenuOpen(true)
						end
						return Enum.ContextActionResult.Sink
					end
					return Enum.ContextActionResult.Pass
				end, false, Enum.KeyCode.ButtonL3)
			end

			GuiService.SelectedCoreObject = previousSelection or self.mainPageFirstButtonRef:getValue()

		end or function()
			ContextActionService:BindCoreAction(LEFT_STICK_TOGGLES_MORE_MENU_ACTION, function(actionName, inputState)
				if inputState == Enum.UserInputState.End then
					if GetFFlagRemoveMoreMenuFromReducer() then
						self:setState({
							modalOpen = not self.state.modalOpen
						})
					else
						self.props.setMainPageMoreMenuOpen(not self.props.isMainPageMoreMenuOpen)
					end
					return Enum.ContextActionResult.Sink
				end
				return Enum.ContextActionResult.Pass
			end, false, Enum.KeyCode.ButtonL3)
		end,

		didBlur = function()
			if not GetFFlagSideNavControllerBar() then
				ContextActionService:UnbindCoreAction(LEFT_STICK_TOGGLES_MORE_MENU_ACTION)
			end
		end,
	})
end

function MainPage:renderMoreMenuFocusHandler()
	local canCaptureFocus = nil
	if GetFFlagSideNavControllerBar() then
		canCaptureFocus = self.props.isMainPageInForeground and self.props.inputType == Constants.InputType.Gamepad
	else
		canCaptureFocus = self.canGamepadCaptureFocus(self.props)
	end

	local isMainPageMoreMenuOpen
	if GetFFlagRemoveMoreMenuFromReducer() then
		isMainPageMoreMenuOpen = self.state.modalOpen
	else
		isMainPageMoreMenuOpen = self.props.isMainPageMoreMenuOpen
	end

	return Roact.createElement(FocusHandler, {
		isFocused = canCaptureFocus and isMainPageMoreMenuOpen,
		didFocus = function()
			local closeMoreMenuActionCallback = function(actionName, inputState)
				if inputState == Enum.UserInputState.End then
					if GetFFlagRemoveMoreMenuFromReducer() then
						self:setState({
							modalOpen = false
						})
					else
						self.props.setMainPageMoreMenuOpen(false)
					end
					return Enum.ContextActionResult.Sink
				end
				return Enum.ContextActionResult.Pass
			end

			if GetFFlagIGMGamepadSelectionHistory() then
				ContextActionService:BindCoreAction(
					CLOSE_MORE_MENU_ACTION,
					closeMoreMenuActionCallback,
					false,
					Enum.KeyCode.ButtonB, Enum.KeyCode.ButtonL3)
			else
				ContextActionService:BindCoreAction(
					CLOSE_MORE_MENU_ACTION,
					closeMoreMenuActionCallback,
					false,
					Enum.KeyCode.ButtonB)
			end


			if self.moreMenuFrameRef ~= nil then
				GuiService:RemoveSelectionGroup(MORE_MENU_NAME)
			end
			GuiService:AddSelectionParent(MORE_MENU_NAME, self.moreMenuFrameRef)

			GuiService.SelectedCoreObject = self.moreMenuFirstItemFrameRef
		end,

		didBlur = function()
			ContextActionService:UnbindCoreAction(CLOSE_MORE_MENU_ACTION)
		end,
	})
end

function MainPage:render()
	if GetFFlagInGameMenuControllerDevelopmentOnly() then
		local canCaptureFocus = nil
		if GetFFlagSideNavControllerBar() then
			canCaptureFocus = self.props.isMainPageInForeground and self.props.inputType == Constants.InputType.Gamepad
		else
			canCaptureFocus = self.canGamepadCaptureFocus(self.props)
		end

		return withStyle(function(style)
			return withLocalization({
				leaveGame = "CoreScripts.InGameMenu.LeaveGame",
				respawnCharacter = "CoreScripts.InGameMenu.RespawnCharacter",
				recordVideo = "CoreScripts.InGameMenu.Record.StartRecording",
				recording = "CoreScripts.InGameMenu.Record.Duration",
				screenCapture = "CoreScripts.InGameMenu.Controls.Screenshot",
			})(function(localized)
				local moreButton = Roact.createElement(UIBlox.App.Button.SecondaryButton, {
					size = UDim2.fromOffset(BOTTOM_MENU_ICON_SIZE, BOTTOM_MENU_ICON_SIZE),

					onActivated = function()
						if GetFFlagRemoveMoreMenuFromReducer() then
							self:setState({
								modalOpen = true
							})
						else
							self.props.setMainPageMoreMenuOpen(true)
						end
					end,
					icon = Assets.Images.MoreActions,
					[Roact.Ref] = self.moreMenuButtonRef,
				})

				local buttonModels = self:renderButtonModels(style, localized)
				local showContextMenu = self.props.respawnButtonVisible

				if FFlagShowContextMenuWhenButtonsArePresent then
					showContextMenu = #buttonModels > 0
				end

				local inputType = self.props.inputType
				local leaveGameKeyCode = LEAVE_GAME_KEY_CODE_LABEL[inputType]

				local leaveGameSizeOffset = showContextMenu and -(BOTTOM_MENU_ICON_SIZE + 12) or 0

				local isMainPageMoreMenuOpen
				if GetFFlagRemoveMoreMenuFromReducer() then
					isMainPageMoreMenuOpen = self.state.modalOpen
				else
					isMainPageMoreMenuOpen = self.props.isMainPageMoreMenuOpen
				end

				local ControllerBar = Roact.createElement(IGMMainPageControllerBar, {
					canCaptureFocus = canCaptureFocus,
					isMainPageMoreMenuOpen = isMainPageMoreMenuOpen,
				})

				if GetFFlagEnableVoiceChatMuteButton() then
					local voiceChatMuteButton = nil
					if self.props.voiceEnabled then
						voiceChatMuteButton = Roact.createElement(VoiceIndicator, {
							size = UDim2.fromOffset(BOTTOM_MENU_ICON_SIZE, BOTTOM_MENU_ICON_SIZE),
							userId = tostring(Players.LocalPlayer.UserId),
							iconStyle = "MicLight",
							onClicked = function()
								VoiceChatServiceManager:ToggleMic()
							end,
						})
						leaveGameSizeOffset = leaveGameSizeOffset - (BOTTOM_MENU_ICON_SIZE + 12)
					end

					return Roact.createElement("TextButton", {
						Size = UDim2.new(0, MAIN_PAGE_WIDTH, 1, 0),
						BackgroundColor3 = style.Theme.BackgroundDefault.Color,
						BackgroundTransparency = style.Theme.BackgroundDefault.Transparency,
						BorderSizePixel = 0,
						Visible = self.props.open,
						Text = "",
						AutoButtonColor = false,
						Selectable = false,
					}, {
						MoreMenuFocusHandler = self:renderMoreMenuFocusHandler(),
						MainPageFocusHandler = GetFFlagUseIGMControllerBar() and not (VRService.VREnabled and FFlagEnableNewVrSystem) and self:renderMainPageFocusHandler() or nil,
						ControllerBar = ControllerBar,
						ZonePortal = Roact.createElement(ZonePortal, {
							targetZone = 0,
							direction = Direction.Left,
						}),
						GameIconHeader = Roact.createElement(GameIconHeader),
						PageNavigation = Roact.createElement(PageNavigation, {
							Position = UDim2.new(0, Constants.Zone.ContentOffset, 0, 148),
							mainPageFirstButtonRef = self.mainPageFirstButtonRef,
						}),

						ContextualMenu = Roact.createElement(ContextualMenu, {
							buttonProps = buttonModels,
							setFrameRef = self.setMoreMenuRef,
							setFirstItemRef = self.setMoreMenuFirstItemRef,

							open = isMainPageMoreMenuOpen,
							menuDirection = MenuDirection.Up,
							openPositionY = UDim.new(1, -84),

							closeBackgroundVisible = true,
							screenSize = self.props.screenSize,

							onDismiss = function()
								if GetFFlagRemoveMoreMenuFromReducer() then
									self:setState({
										modalOpen = false
									})
								else
									self.props.setMainPageMoreMenuOpen(false)
								end
							end,
						}),
						BottomButtons = Roact.createElement("Frame", {
							Size = UDim2.new(1, 0, 0, 84),
							Position = UDim2.new(0, 0, 1, 0),
							AnchorPoint = Vector2.new(0, 1),
							BackgroundTransparency = 1,
						}, {
							Layout = Roact.createElement("UIListLayout", {
								FillDirection = Enum.FillDirection.Horizontal,
								HorizontalAlignment = Enum.HorizontalAlignment.Center,
								Padding = UDim.new(0, 12),
								SortOrder = Enum.SortOrder.LayoutOrder,
								VerticalAlignment = Enum.VerticalAlignment.Center,
							}),
							Padding = Roact.createElement("UIPadding", {
								PaddingTop = UDim.new(0, 24),
								PaddingBottom = UDim.new(0, 24),
								PaddingLeft = UDim.new(0, 24),
								PaddingRight = UDim.new(0, 24),
							}),
							LeaveGame = Roact.createElement("Frame", {
								BackgroundTransparency = 1,
								Size = UDim2.new(1, leaveGameSizeOffset, 0, BOTTOM_MENU_ICON_SIZE),
								Position = UDim2.fromScale(1, 0),
								AnchorPoint = Vector2.new(1, 0),
								LayoutOrder = 1,
							}, {
								Button = Roact.createElement(UIBlox.App.Button.PrimarySystemButton, {
									size = UDim2.fromScale(1, 1),
									onActivated = self.props.startLeavingGame,
									text = localized.leaveGame,
								}),
								KeyLabel = leaveGameKeyCode and Roact.createElement(KeyLabel, {
									keyCode = leaveGameKeyCode,
									iconThemeKey = "UIDefault",
									textThemeKey = "SystemPrimaryContent",
									AnchorPoint = Vector2.new(1, 0.5),
									Position = UDim2.new(1, -16, 0.5, 0),
									LayoutOrder = 2,
									ZIndex = 2,
								}) or nil,
							}),
							VoiceChatMuteButton = voiceChatMuteButton,
							MoreButton = showContextMenu and moreButton,
						})
					})
				else
					return Roact.createElement("TextButton", {
						Size = UDim2.new(0, MAIN_PAGE_WIDTH, 1, 0),
						BackgroundColor3 = style.Theme.BackgroundDefault.Color,
						BackgroundTransparency = style.Theme.BackgroundDefault.Transparency,
						BorderSizePixel = 0,
						Visible = self.props.open,
						Text = "",
						AutoButtonColor = false,
						Selectable = false,
					}, {
						MoreMenuFocusHandler = self:renderMoreMenuFocusHandler(),
						MainPageFocusHandler = GetFFlagUseIGMControllerBar() and not (VRService.VREnabled and FFlagEnableNewVrSystem) and self:renderMainPageFocusHandler() or nil,
						ControllerBar = ControllerBar,
						ZonePortal = Roact.createElement(ZonePortal, {
							targetZone = 0,
							direction = Direction.Left,
						}),
						GameIconHeader = Roact.createElement(GameIconHeader),
						PageNavigation = Roact.createElement(PageNavigation, {
							Position = UDim2.new(0, Constants.Zone.ContentOffset, 0, 148),
							mainPageFirstButtonRef = self.mainPageFirstButtonRef,
						}),

						ContextualMenu = Roact.createElement(ContextualMenu, {
							buttonProps = buttonModels,
							setFrameRef = self.setMoreMenuRef,
							setFirstItemRef = self.setMoreMenuFirstItemRef,

							open = isMainPageMoreMenuOpen,
							menuDirection = MenuDirection.Up,
							openPositionY = UDim.new(1, -84),

							closeBackgroundVisible = true,
							screenSize = self.props.screenSize,

							onDismiss = function()
								if GetFFlagRemoveMoreMenuFromReducer() then
									self:setState({
										modalOpen = false
									})
								else
									self.props.setMainPageMoreMenuOpen(false)
								end
							end,
						}),
						BottomButtons = Roact.createElement("Frame", {
								Size = UDim2.new(1, 0, 0, 84),
								Position = UDim2.new(0, 0, 1, 0),
								AnchorPoint = Vector2.new(0, 1),
								BackgroundTransparency = 1,
							}, {
							Padding = Roact.createElement("UIPadding", {
								PaddingTop = UDim.new(0, 24),
								PaddingBottom = UDim.new(0, 24),
								PaddingLeft = UDim.new(0, 24),
								PaddingRight = UDim.new(0, 24),
							}),
							LeaveGame = Roact.createElement("Frame", {
								BackgroundTransparency = 1,
								Size = UDim2.new(1, leaveGameSizeOffset, 0, BOTTOM_MENU_ICON_SIZE),
								Position = UDim2.fromScale(1, 0),
								AnchorPoint = Vector2.new(1, 0),
							}, {
								Button = Roact.createElement(UIBlox.App.Button.PrimarySystemButton, {
									size = UDim2.fromScale(1, 1),
									onActivated = self.props.startLeavingGame,
									text = localized.leaveGame,
								}),
								KeyLabel = leaveGameKeyCode and Roact.createElement(KeyLabel, {
									keyCode = leaveGameKeyCode,
									iconThemeKey = "UIDefault",
									textThemeKey = "SystemPrimaryContent",
									AnchorPoint = Vector2.new(1, 0.5),
									Position = UDim2.new(1, -16, 0.5, 0),
									LayoutOrder = 2,
									ZIndex = 2,
								}) or nil,
							}),
							MoreButton = showContextMenu and moreButton,
						}),
					})
				end
			end)
		end)

	else
		return withStyle(function(style)
			return withLocalization({
				leaveGame = "CoreScripts.InGameMenu.LeaveGame",
				respawnCharacter = "CoreScripts.InGameMenu.RespawnCharacter",
				recordVideo = "CoreScripts.InGameMenu.Record.StartRecording",
				recording = "CoreScripts.InGameMenu.Record.Duration",
				screenCapture = "CoreScripts.InGameMenu.Controls.Screenshot",
			})(function(localized)
				local moreButton = Roact.createElement(UIBlox.App.Button.SecondaryButton, {
					size = UDim2.fromOffset(BOTTOM_MENU_ICON_SIZE, BOTTOM_MENU_ICON_SIZE),
					onActivated = function()
						self:setState({
							modalOpen = true,
						})
					end,
					icon = Assets.Images.MoreActions,
				})

				local buttonModels = self:renderButtonModels(style, localized)
				local showContextMenu = self.props.respawnButtonVisible

				if FFlagShowContextMenuWhenButtonsArePresent then
					showContextMenu = #buttonModels > 0
				end

				local leaveGameSizeOffset = showContextMenu and -(BOTTOM_MENU_ICON_SIZE + 12) or 0

				if GetFFlagEnableVoiceChatMuteButton() then

					local voiceChatMuteButton = nil
					if self.props.voiceEnabled then
						voiceChatMuteButton = Roact.createElement(VoiceIndicator, {
							size = UDim2.fromOffset(BOTTOM_MENU_ICON_SIZE, BOTTOM_MENU_ICON_SIZE),
							userId = tostring(Players.LocalPlayer.UserId),
							onClicked = function()
								VoiceChatServiceManager:ToggleMic()
							end,
							iconStyle = "MicLight",
						})
						leaveGameSizeOffset = leaveGameSizeOffset - (BOTTOM_MENU_ICON_SIZE + 12)
					end

					return Roact.createElement("TextButton", {
						Size = UDim2.new(0, MAIN_PAGE_WIDTH, 1, 0),
						BackgroundColor3 = style.Theme.BackgroundDefault.Color,
						BackgroundTransparency = style.Theme.BackgroundDefault.Transparency,
						BorderSizePixel = 0,
						Visible = self.props.open,
						Text = "",
						AutoButtonColor = false,
					}, {
						GameIconHeader = Roact.createElement(GameIconHeader),
						PageNavigation = Roact.createElement(PageNavigation, {
							Position = UDim2.new(0, 0, 0, 148),
						}),

						ContextualMenu = Roact.createElement(ContextualMenu, {
							buttonProps = buttonModels,

							open = self.state.modalOpen,
							menuDirection = MenuDirection.Up,
							openPositionY = UDim.new(1, -84),

							closeBackgroundVisible = true,
							screenSize = self.props.screenSize,

							onDismiss = function()
								self:setState({
									modalOpen = false,
								})
							end,
						}),

						BottomButtons = Roact.createElement("Frame", {
							Size = UDim2.new(1, 0, 0, 84),
							Position = UDim2.new(0, 0, 1, 0),
							AnchorPoint = Vector2.new(0, 1),
							BackgroundTransparency = 1,
						}, {
							Layout = Roact.createElement("UIListLayout", {
								FillDirection = Enum.FillDirection.Horizontal,
								HorizontalAlignment = Enum.HorizontalAlignment.Center,
								Padding = UDim.new(0, 12),
								SortOrder = Enum.SortOrder.LayoutOrder,
								VerticalAlignment = Enum.VerticalAlignment.Center,
							}),
							Padding = Roact.createElement("UIPadding", {
								PaddingTop = UDim.new(0, 24),
								PaddingBottom = UDim.new(0, 24),
								PaddingLeft = UDim.new(0, 24),
								PaddingRight = UDim.new(0, 24),
							}),
							LeaveGame = Roact.createElement("Frame", {
								BackgroundTransparency = 1,
								Size = UDim2.new(1, leaveGameSizeOffset, 0, BOTTOM_MENU_ICON_SIZE),
								Position = UDim2.fromScale(1, 0),
								AnchorPoint = Vector2.new(1, 0),
								LayoutOrder = 1,
							}, {
								Button = Roact.createElement(UIBlox.App.Button.PrimarySystemButton, {
									size = UDim2.fromScale(1, 1),
									onActivated = self.props.startLeavingGame,
									text = localized.leaveGame,
								}),
								KeyLabel = Roact.createElement(KeyLabel_DEPRECATED, {
									input = Enum.KeyCode.L,
									borderThemeKey = "UIDefault",
									textThemeKey = "SystemPrimaryContent",
									AnchorPoint = Vector2.new(1, 0.5),
									Position = UDim2.new(1, -16, 0.5, 0),
									ZIndex = 2,
								})
							}),
							VoiceChatMuteButton = voiceChatMuteButton,
							MoreButton = showContextMenu and moreButton,
						}),
					})
				else
					return Roact.createElement("TextButton", {
						Size = UDim2.new(0, MAIN_PAGE_WIDTH, 1, 0),
						BackgroundColor3 = style.Theme.BackgroundDefault.Color,
						BackgroundTransparency = style.Theme.BackgroundDefault.Transparency,
						BorderSizePixel = 0,
						Visible = self.props.open,
						Text = "",
						AutoButtonColor = false,
					}, {
						GameIconHeader = Roact.createElement(GameIconHeader),
						PageNavigation = Roact.createElement(PageNavigation, {
							Position = UDim2.new(0, 0, 0, 148),
						}),

						ContextualMenu = Roact.createElement(ContextualMenu, {
							buttonProps = buttonModels,

							open = self.state.modalOpen,
							menuDirection = MenuDirection.Up,
							openPositionY = UDim.new(1, -84),

							closeBackgroundVisible = true,
							screenSize = self.props.screenSize,

							onDismiss = function()
								self:setState({
									modalOpen = false,
								})
							end,
						}),

						BottomButtons = Roact.createElement("Frame", {
								Size = UDim2.new(1, 0, 0, 84),
								Position = UDim2.new(0, 0, 1, 0),
								AnchorPoint = Vector2.new(0, 1),
								BackgroundTransparency = 1,
							}, {
							Padding = Roact.createElement("UIPadding", {
								PaddingTop = UDim.new(0, 24),
								PaddingBottom = UDim.new(0, 24),
								PaddingLeft = UDim.new(0, 24),
								PaddingRight = UDim.new(0, 24),
							}),
							LeaveGame = Roact.createElement("Frame", {
								BackgroundTransparency = 1,
								Size = UDim2.new(1, leaveGameSizeOffset, 0, BOTTOM_MENU_ICON_SIZE),
								Position = UDim2.fromScale(1, 0),
								AnchorPoint = Vector2.new(1, 0),
							}, {
								Button = Roact.createElement(UIBlox.App.Button.PrimarySystemButton, {
									size = UDim2.fromScale(1, 1),
									onActivated = self.props.startLeavingGame,
									text = localized.leaveGame,
								}),
								KeyLabel = Roact.createElement(KeyLabel_DEPRECATED, {
									input = Enum.KeyCode.L,
									borderThemeKey = "UIDefault",
									textThemeKey = "SystemPrimaryContent",
									AnchorPoint = Vector2.new(1, 0.5),
									Position = UDim2.new(1, -16, 0.5, 0),
									ZIndex = 2,
								})
							}),
							MoreButton = showContextMenu and moreButton,
						}),
					})
				end
			end)
		end)
	end
end

function MainPage:didMount()
	self.fetchGameIsFavorite()
end

function MainPage:willUnmount()
	self.recording = false
	GuiService:RemoveSelectionGroup(MORE_MENU_NAME)

	if GetFFlagSideNavControllerBar() then
		ContextActionService:UnbindCoreAction(LEFT_STICK_TOGGLES_MORE_MENU_ACTION)
	end
end

if GetFFlagInGameMenuControllerDevelopmentOnly() then
	function MainPage.canGamepadCaptureFocus(props)
		return props.canCaptureFocus
			and props.inputType == Constants.InputType.Gamepad
	end
end

function MainPage:didUpdate(prevProps, prevState)
	if GetFFlagInGameMenuControllerDevelopmentOnly() then
		local isMainPageMoreMenuOpen
		if GetFFlagRemoveMoreMenuFromReducer() then
			isMainPageMoreMenuOpen = self.state.modalOpen
		else
			isMainPageMoreMenuOpen = self.props.isMainPageMoreMenuOpen
		end

		local prevIsMainPageMoreMenuOpen
		if GetFFlagRemoveMoreMenuFromReducer() then
			prevIsMainPageMoreMenuOpen = prevState.modalOpen
		else
			prevIsMainPageMoreMenuOpen = prevProps.isMainPageMoreMenuOpen
		end

		if not GetFFlagIGMGamepadSelectionHistory() then
			if self.canGamepadCaptureFocus(self.props) and not isMainPageMoreMenuOpen then
				if prevIsMainPageMoreMenuOpen then
					GuiService.SelectedCoreObject = self.moreMenuButtonRef:getValue()
				elseif not self.canGamepadCaptureFocus(prevProps) then
					GuiService.SelectedCoreObject = self.mainPageFirstButtonRef:getValue()
				end
			end
		end

		if GetFFlagSideNavControllerBar() then
			local function gamepadCanToggleMoreMenu(props, isMoreMenuOpen)
				return props.isMainPageInForeground
					and props.inputType == Constants.InputType.Gamepad
					and not isMoreMenuOpen
			end

			if gamepadCanToggleMoreMenu(self.props, isMainPageMoreMenuOpen) and not gamepadCanToggleMoreMenu(prevProps, prevIsMainPageMoreMenuOpen) then
				ContextActionService:BindCoreAction(LEFT_STICK_TOGGLES_MORE_MENU_ACTION, function(actionName, inputState)
					if inputState == Enum.UserInputState.End then
						if GetFFlagRemoveMoreMenuFromReducer() then
							self:setState({
								modalOpen = true
							})
						else
							self.props.setMainPageMoreMenuOpen(true)
						end
						return Enum.ContextActionResult.Sink
					end
					return Enum.ContextActionResult.Pass
				end, false, Enum.KeyCode.ButtonL3)
			elseif not gamepadCanToggleMoreMenu(self.props, isMainPageMoreMenuOpen) and gamepadCanToggleMoreMenu(prevProps, prevIsMainPageMoreMenuOpen) then
				ContextActionService:UnbindCoreAction(LEFT_STICK_TOGGLES_MORE_MENU_ACTION)
			end
		end
	end

	if not GetFFlagInGameMenuControllerDevelopmentOnly() then
		if prevProps.open and not self.props.open then
			self:setState({
				modalOpen = false,
			})
		end
	end

	if FFlagRecordRecording then
		if self.props.recording then
			if not prevProps.recording then
				self.recording = true
				-- TODO: Switch to os.clock() when it becomes available
				local startTime = tick() - self.getRecordingDuration()
				local function loop()
					if self.recording then
						delay(RECORD_UPDATE_STEP, loop)
					end
					self:setState({
						recordingDuration = tick() - startTime
					})
				end
				self:setState({
					recordingDuration = 0
				})
				delay(RECORD_UPDATE_STEP, loop)
			end
		else
			self.recording = false
		end
	end

	if VRService.VREnabled and FFlagEnableNewVrSystem then
		UserInputService.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.ForceHide
	end
end

return RoactRodux.UNSTABLE_connect2(function(state, props)
	local canCaptureFocus = nil -- Can inline when GetFFlagInGameMenuControllerDevelopmentOnly is removed
	if GetFFlagInGameMenuControllerDevelopmentOnly() then
		canCaptureFocus = state.menuPage == Constants.MainPagePageKey
			and state.isMenuOpen
			and not state.respawn.dialogOpen
			and state.currentZone == 1
	end

	local isMainPageInForeground = nil
	if GetFFlagSideNavControllerBar() then
		isMainPageInForeground = state.isMenuOpen and not state.respawn.dialogOpen and state.menuPage == Constants.MainPagePageKey
	end
	local voiceEnabled = nil
	if GetFFlagEnableVoiceChatNewPlayersList() then
		voiceEnabled = state.voiceState.voiceEnabled
	end

	local inputType = nil -- Can inline when GetFFlagInGameMenuControllerDevelopmentOnly is removed
	if GetFFlagInGameMenuControllerDevelopmentOnly() then
		inputType = state.displayOptions.inputType
	end

	local isMainPageMoreMenuOpen = nil -- Can inline when flags are removed
	if GetFFlagInGameMenuControllerDevelopmentOnly() and not GetFFlagRemoveMoreMenuFromReducer() then
		isMainPageMoreMenuOpen = state.isMainPageMoreMenuOpen
	end

	local currentZone = nil -- can inline when flag is removed
	if GetFFlagIGMGamepadSelectionHistory() then
		currentZone = state.currentZone
	end

	return {
		open = state.isMenuOpen,
		isMainPageMoreMenuOpen = isMainPageMoreMenuOpen,
		respawnButtonVisible = state.respawn.enabled,
		recording = state.recording,
		screenSize = state.screenSize,
		voiceEnabled = voiceEnabled,
		canCaptureFocus = canCaptureFocus,
		currentZone = currentZone,
		inputType = inputType,
		isMainPageInForeground = isMainPageInForeground,
		isFavorited = state.gameInfo.isFavorited,
	}
end, function(dispatch)
	-- 65241
	local universeId = game.GameId

	return {
		fetchGameIsFavorite = function(networking)
			return universeId > 0 and dispatch(ApiFetchGameIsFavorite(networking, tostring(universeId)))
		end,
		postFavorite = function(networking, isFavorite)
			return dispatch(GamePostFavorite(networking, tostring(universeId), isFavorite))
		end,
		setFavorite = function(isFavorite)
			return dispatch(SetGameFavorite(tostring(universeId), isFavorite))
		end,
		startLeavingGame = function()
			dispatch(SetCurrentPage(Constants.LeaveGamePromptPageKey))
		end,
		startRespawning = function()
			dispatch(SetRespawning(true))
		end,
		closeMenu = function()
			dispatch(CloseMenu)
		end,
		setMainPageMoreMenuOpen =
			GetFFlagInGameMenuControllerDevelopmentOnly()
			and not GetFFlagRemoveMoreMenuFromReducer()
			and function(isMainPageMoreMenuOpen)
				dispatch(SetMainPageMoreMenuOpen(isMainPageMoreMenuOpen))
			end or nil,
	}
end)(MainPage)