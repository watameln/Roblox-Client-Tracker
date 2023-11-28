local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local FaceAnimatorService = game:GetService("FaceAnimatorService")
local Players = game:GetService("Players")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

local React = require(CorePackages.Packages.React)
local Sounds = require(CorePackages.Workspace.Packages.SoundManager).Sounds
local SoundGroups = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups
local SoundManager = require(CorePackages.Workspace.Packages.SoundManager).SoundManager

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local dependencyArray = dependencies.Hooks.dependencyArray
local useDispatch = dependencies.Hooks.useDispatch

local CanMakeCallWithModal = require(ContactList.Hooks.CanMakeCallWithModal)
local useAnalytics = require(ContactList.Analytics.useAnalytics)
local EventNamesEnum = require(ContactList.Analytics.EventNamesEnum)
local Pages = require(ContactList.Enums.Pages)
type PagesType = Pages.PagesType

local localPlayer = Players.LocalPlayer :: Player

local GetFFlagSoundManagerRefactor = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSoundManagerRefactor
local GetFFlagSeparateVoiceEnabledErrors =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagSeparateVoiceEnabledErrors

return function(
	tag,
	userId,
	combinedName,
	onStartCallProcessed,
	analyticsInfo: { searchQueryString: string | nil, itemListIndex: number, isSuggestedUser: boolean, page: PagesType }
)
	local dispatch = useDispatch()
	local analytics = useAnalytics()

	local validateToMakeCall
	if not GetFFlagSeparateVoiceEnabledErrors() then
		validateToMakeCall = React.useCallback(function()
			local canMakeCall, action = CanMakeCallWithModal()
			if not canMakeCall then
				dispatch(action)
			end

			return canMakeCall
		end, {})
	end

	return React.useCallback(function()
		if not GetFFlagSeparateVoiceEnabledErrors() and not validateToMakeCall() then
			analytics.fireEvent(EventNamesEnum.PhoneBookCallFriendFailed, {
				eventTimestampMs = os.time() * 1000,
				calleeUserId = tonumber(userId),
				callerUserId = localPlayer.UserId,
				errorMsg = "Place or user is not voice enabled.",
				page = tostring(analyticsInfo.page),
			})
			return
		end

		if GetFFlagSoundManagerRefactor() then
			SoundManager:PlaySound(Sounds.Select.Name, { Volume = 0.5 }, SoundGroups.Iris)
		else
			SoundManager:PlaySound_old(Sounds.Select.Name, { Volume = 0.5, SoundGroup = SoundGroups.Iris })
		end

		local isMuted = if VoiceChatServiceManager.localMuted ~= nil then VoiceChatServiceManager.localMuted else true
		local isCamEnabled = if FaceAnimatorService:IsStarted()
			then FaceAnimatorService.VideoAnimationEnabled
			else false

		analytics.fireEvent(EventNamesEnum.PhoneBookCallFriendClicked, {
			eventTimestampMs = os.time() * 1000,
			friendUserId = tonumber(userId),
			searchQueryString = analyticsInfo.searchQueryString,
			itemListIndex = analyticsInfo.itemListIndex,
			isSuggestedUser = analyticsInfo.isSuggestedUser,
			page = tostring(analyticsInfo.page),
		})
		coroutine.wrap(function()
			local invokeIrisInviteRemoteEvent =
				RobloxReplicatedStorage:WaitForChild("ContactListInvokeIrisInvite", math.huge) :: RemoteEvent
			invokeIrisInviteRemoteEvent:FireServer(tag, tonumber(userId), combinedName, isMuted, isCamEnabled)
		end)()

		onStartCallProcessed()
	end, dependencyArray(tag, userId, combinedName, validateToMakeCall, onStartCallProcessed, analyticsInfo))
end
