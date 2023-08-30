--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local LocalizationService = game:GetService("LocalizationService")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local React = require(CorePackages.Packages.React)
local Sounds = require(CorePackages.Workspace.Packages.SoundManager).Sounds
local SoundGroups = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups
local SoundManager = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
local GetFFlagCorescriptsSoundManagerEnabled =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagCorescriptsSoundManagerEnabled

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local SocialLibraries = dependencies.SocialLibraries
local UIBlox = dependencies.UIBlox
local getStandardSizeAvatarHeadShotRbxthumb = dependencies.getStandardSizeAvatarHeadShotRbxthumb
local FFlagLuaAppUnifyCodeToGenerateRbxThumb = dependencies.FFlagLuaAppUnifyCodeToGenerateRbxThumb

local useSelector = dependencies.Hooks.useSelector

local ControlState = UIBlox.Core.Control.Enum.ControlState
local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Interactable = UIBlox.Core.Control.Interactable
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local useStyle = UIBlox.Core.Style.useStyle

local CallState = require(ContactList.Enums.CallState)

-- TODO: Remove once RDC is finished
local ContactListHelper = require(ContactList.Components.ContactListHelper)

local rng = Random.new()

local PADDING_IN_BETWEEN = 12
local PROFILE_SIZE = 68
local DETAIL_CONTEXT_HEIGHT = 24
local PADDING = Vector2.new(24, 12)
local BUTTON_SIZE = 28

export type Participant = {
	userId: number,
	displayName: string,
	userName: string,
}

export type Props = {
	caller: {
		callId: string,
		callerId: number,
		participants: { Participant },
		status: string,
		startUtc: number,
		endUtc: number,
		universeId: number,
		placeId: number,
	},
	localUserId: number,
	showDivider: boolean,
	dismissCallback: () -> (),
	layoutOrder: number?,
}

local function isMissedCall(caller, localUserId)
	return caller.callerId ~= localUserId and CallState.fromRawValue(caller.status) ~= CallState.Finished
end

local function getCallStatusText(caller, localUserId)
	if isMissedCall(caller, localUserId) then
		return "Missed"
	elseif caller.callerId == localUserId then
		return "Outgoing"
	else
		return "Incoming"
	end
end

-- TODO (joshualee) update icons to match design
local function getCallContextImage(caller, localUserId)
	-- TODO: Replace with UIBLOX icon
	if isMissedCall(caller, localUserId) then
		return "rbxassetid://14439512369"
	elseif caller.callerId == localUserId then
		return "rbxassetid://14439517793"
	else
		return "rbxassetid://14439507750"
	end
end

local function getAbsoluteDiffDays(currentTimestamp, recordTimestamp, localeId)
	local currentYear = tonumber(currentTimestamp:FormatLocalTime("YYYY", localeId)) :: number -- 	1970, 1971, …, 2029, 2030
	local recordYear = tonumber(recordTimestamp:FormatLocalTime("YYYY", localeId)) :: number -- 	1970, 1971, …, 2029, 2030
	local currentDayOfYear = tonumber(currentTimestamp:FormatLocalTime("DDD", localeId)) :: number -- 1, 2, …, 364, 365
	local recordDayOfYear = tonumber(recordTimestamp:FormatLocalTime("DDD", localeId)) :: number -- 1, 2, …, 364, 365

	local diffDays = 0

	-- add days for each year between current year and record year considering leap years
	for year = recordYear, currentYear - 1 do
		local daysInYear = 365
		if year % 4 == 0 and (year % 100 ~= 0 or year % 400 == 0) then
			daysInYear = 366
		end
		diffDays = diffDays + daysInYear
	end

	diffDays = diffDays + currentDayOfYear - recordDayOfYear
	return diffDays
end

local function getTimestampText(endUtc)
	local currentTimestamp = DateTime.now()
	local recordTimestamp = DateTime.fromUnixTimestampMillis(endUtc)
	local localeId = LocalizationService.RobloxLocaleId

	local diffDays = getAbsoluteDiffDays(currentTimestamp, recordTimestamp, localeId)

	if diffDays == 0 then -- same day
		return recordTimestamp:FormatLocalTime("LT", localeId)
	elseif diffDays == 1 then -- yesterday
		return "Yesterday"
	elseif diffDays < 7 then -- within a week
		return recordTimestamp:FormatLocalTime("dddd", localeId)
	else -- more than a week
		return recordTimestamp:FormatLocalTime("L", localeId)
	end
end

local function CallHistoryItem(props: Props)
	local caller = props.caller
	local localUserId = props.localUserId

	-- Will update this to support more participants in a follow up.
	assert(#caller.participants == 2, "Expect a local user and single other participant in call.")

	-- get the participant that is not the local user
	local participant = caller.participants[1]
	if caller.participants[1].userId == localUserId then
		participant = caller.participants[2]
	end

	local style = useStyle()
	local theme = style.Theme
	local font = style.Font

	local itemBackgroundTheme, setItemBackgroundTheme = React.useState("BackgroundDefault")
	local onItemStateChanged = React.useCallback(function(oldState, newState)
		if newState == ControlState.Pressed then
			setItemBackgroundTheme("BackgroundOnPress")
		elseif newState == ControlState.Hover then
			setItemBackgroundTheme("BackgroundOnHover")
		else
			setItemBackgroundTheme("BackgroundDefault")
		end
	end, {})

	local selectTag = React.useCallback(function(state: any)
		return state.Navigation.currentTag
	end, {})
	local tag = useSelector(selectTag)

	local startCall = React.useCallback(function()
		local IsUserInDevModeRemoteFunction = ReplicatedStorage:WaitForChild("Shared")
			:WaitForChild("IsUserInDevModeRemoteFunction") :: RemoteFunction
		local isLocalUserDevMode = IsUserInDevModeRemoteFunction:InvokeServer(localUserId)
		if isLocalUserDevMode == IsUserInDevModeRemoteFunction:InvokeServer(participant.userId) then
			if isLocalUserDevMode then
				coroutine.wrap(function()
					local invokeIrisInviteRemoteEvent =
						RobloxReplicatedStorage:WaitForChild("ContactListInvokeIrisInvite", math.huge) :: RemoteEvent
					invokeIrisInviteRemoteEvent:FireServer(tag, tonumber(participant.userId))
				end)()
			else
				local CallRequestedEvent =
					ReplicatedStorage:WaitForChild("Shared"):WaitForChild("CallRequestedEvent") :: RemoteEvent
				CallRequestedEvent:FireServer(participant.userId)
			end
		else
			local SharedRS = ReplicatedStorage:WaitForChild("Shared")
			local ShowGenericDialogBindableEvent =
				SharedRS:WaitForChild("ShowGenericDialogBindableEvent") :: BindableEvent
			ShowGenericDialogBindableEvent:Fire(
				"Error",
				"Cannot call another user that isn't in the same mode as you. Toggle your dev mode and try again.",
				true
			)
		end

		props.dismissCallback()
	end, {})

	local onHovered = React.useCallback(function(_: any, inputObject: InputObject?)
		if
			inputObject
			and inputObject.UserInputType == Enum.UserInputType.MouseMovement
			and GetFFlagCorescriptsSoundManagerEnabled()
		then
			SoundManager:PlaySound(Sounds.Hover.Name, {
				Volume = 0.5 + rng:NextNumber(-0.25, 0.25),
				PlaybackSpeed = 1 + rng:NextNumber(-0.5, 0.5),
				SoundGroup = SoundGroups.Iris,
			})
		end
	end, {})

	local image
	if FFlagLuaAppUnifyCodeToGenerateRbxThumb then
		image = getStandardSizeAvatarHeadShotRbxthumb(tostring(participant.userId))
	else
		image = SocialLibraries.User.getUserAvatarImage(participant.userId)
	end

	local isMissedCall = isMissedCall(caller, localUserId)

	return React.createElement(Interactable, {
		Position = UDim2.fromOffset(0, 0),
		Size = UDim2.new(1, 0, 0, PROFILE_SIZE + PADDING.Y * 2),
		BackgroundColor3 = theme[itemBackgroundTheme].Color,
		BackgroundTransparency = theme[itemBackgroundTheme].Transparency,
		BorderSizePixel = 0,
		LayoutOrder = props.layoutOrder,
		onStateChanged = onItemStateChanged,
		AutoButtonColor = false,
		[React.Event.Activated] = startCall,
		[React.Event.InputBegan] = onHovered,
	}, {
		UIPadding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, PADDING.X),
			PaddingTop = UDim.new(0, PADDING.Y),
		}),

		ProfileImage = React.createElement(ImageSetLabel, {
			Size = UDim2.fromOffset(PROFILE_SIZE, PROFILE_SIZE),
			Image = image,
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = UDim.new(1, 0),
			}),
		}),

		Content = React.createElement("Frame", {
			Position = UDim2.new(0, PADDING_IN_BETWEEN + PROFILE_SIZE, 0, 0),
			Size = UDim2.new(1, -(PADDING_IN_BETWEEN + PROFILE_SIZE + BUTTON_SIZE + PADDING.X), 1, -PADDING.Y),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		}, {
			NameContent = React.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 1,
			}, {
				UIListLayout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					Padding = UDim.new(0, 4),
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),

				DisplayName = React.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 0, 20),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Font = font.Header2.Font,
					LayoutOrder = 1,
					Text = participant.displayName,
					TextColor3 = if isMissedCall then theme.Alert.Color else theme.TextEmphasis.Color,
					TextSize = font.BaseSize * font.Header2.RelativeSize,
					TextTransparency = if isMissedCall
						then theme.Alert.Transparency
						else theme.TextEmphasis.Transparency,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),

				Username = React.createElement("TextLabel", {
					Size = UDim2.new(1, 0, 0, 14),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Font = font.CaptionBody.Font,
					LayoutOrder = 2,
					Text = "@" .. ContactListHelper.getUsername(participant.userId, participant.userName),
					TextColor3 = theme.TextDefault.Color,
					TextSize = font.BaseSize * font.CaptionBody.RelativeSize,
					TextTransparency = theme.TextDefault.Transparency,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
			}),

			Details = React.createElement("Frame", {
				Position = UDim2.new(0, 0, 1, -DETAIL_CONTEXT_HEIGHT),
				Size = UDim2.new(1, 0, 0, DETAIL_CONTEXT_HEIGHT),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 2,
			}, {
				UIListLayout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, 4),
				}),

				CallContextImage = React.createElement(ImageSetLabel, {
					Size = UDim2.fromOffset(DETAIL_CONTEXT_HEIGHT, DETAIL_CONTEXT_HEIGHT),
					BackgroundTransparency = 1,
					ImageColor3 = theme.TextDefault.Color,
					ImageTransparency = theme.TextDefault.Transparency,
					Image = getCallContextImage(caller, localUserId),
				}),

				DetailsText = React.createElement("TextLabel", {
					Size = UDim2.fromOffset(0, 14),
					AutomaticSize = Enum.AutomaticSize.X,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Font = font.CaptionBody.Font,
					Text = getCallStatusText(caller, localUserId) .. " • " .. getTimestampText(caller.endUtc),
					TextColor3 = theme.TextDefault.Color,
					TextSize = font.BaseSize * font.CaptionBody.RelativeSize,
					TextTransparency = theme.TextDefault.Transparency,
					TextTruncate = Enum.TextTruncate.AtEnd,
					TextYAlignment = Enum.TextYAlignment.Center,
				}),
			}),
		}),

		CallButton = if game:GetEngineFeature("EnableSocialServiceIrisInvite")
			then React.createElement(IconButton, {
				size = UDim2.fromOffset(BUTTON_SIZE, BUTTON_SIZE),
				iconSize = IconSize.Medium,
				position = UDim2.new(1, -PADDING.X, 0.5, -PADDING.Y / 2),
				anchorPoint = Vector2.new(1, 0.5),
				iconColor3 = theme.ContextualPrimaryDefault.Color,
				iconTransparency = theme.ContextualPrimaryDefault.Transparency,
				icon = "rbxassetid://14532752184", -- TODO: Replace with UIBLOX icon
				onActivated = startCall,
			})
			else nil,

		Divider = props.showDivider and React.createElement("Frame", {
			Position = UDim2.new(0, 0, 1, -1),
			Size = UDim2.new(1, 0, 0, 1),
			BackgroundColor3 = theme.Divider.Color,
			BackgroundTransparency = theme.Divider.Transparency,
			BorderSizePixel = 0,
		}) or nil,
	})
end

return CallHistoryItem
