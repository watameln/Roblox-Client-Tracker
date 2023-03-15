local UserInputService = game:GetService("UserInputService")
local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
local Packages = ProfileQRCode.Parent
local React = require(Packages.React)
local ProfileQRCodePage = require(ProfileQRCode.Components.ProfileQRCodePage)
local UIBlox = require(Packages.UIBlox)
local ModalWindow = UIBlox.App.Dialog.Modal.ModalWindow
local useScreenSize = require(script.Parent.useScreenSize)
local ProfileQRCodeAnalytics = require(ProfileQRCode.Analytics)
local useLocalUserId = require(ProfileQRCode.Utils.useLocalUserId)
local AnalyticsService = require(ProfileQRCode.Analytics.AnalyticsService)
local getFFlagAddFriendsQRCodeAnalytics = require(Packages.SharedFlags).getFFlagAddFriendsQRCodeAnalytics

export type Props = {
	analyticsService: any?,
	onClose: () -> (),
	source: string?,
	robloxEventReceiver: any?,
}

local ProfileQRCodeEntryPoint = function(props: Props)
	return React.createElement(ProfileQRCodeAnalytics.Context.Provider, {
		value = {
			fireEvent = ProfileQRCodeAnalytics.setupFireEvent({
				analytics = if props.analyticsService then props.analyticsService else AnalyticsService,
				infoForAllEvents = {
					uid = useLocalUserId(),
					source = if getFFlagAddFriendsQRCodeAnalytics() then props.source else nil,
				},
			}),
		},
	}, {
		Window = React.createElement(ModalWindow, {
			isFullHeight = true,
			screenSize = useScreenSize(),
			distanceFromTop = UserInputService.StatusBarSize.Y,
		}, {
			View = React.createElement(ProfileQRCodePage, props),
		}),
	})
end

return ProfileQRCodeEntryPoint
