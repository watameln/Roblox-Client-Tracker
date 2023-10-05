--!strict
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local UserInputService = game:GetService("UserInputService")

local Cryo = require(CorePackages.Packages.Cryo)
local React = require(CorePackages.Packages.React)
local Roact = require(CorePackages.Roact)

local ExternalEventConnection = require(CorePackages.Workspace.Packages.RoactUtils).ExternalEventConnection
local RetrievalStatus = require(CorePackages.Workspace.Packages.Http).Enum.RetrievalStatus
local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local UIBlox = dependencies.UIBlox
local dependencyArray = dependencies.Hooks.dependencyArray
local useDispatch = dependencies.Hooks.useDispatch

local FindFriendsFromUserId = dependencies.NetworkingFriends.FindFriendsFromUserId

local useStyle = UIBlox.Core.Style.useStyle
local LoadingSpinner = UIBlox.App.Loading.LoadingSpinner

local FriendListItem = require(ContactList.Components.FriendList.FriendListItem)
local NoItemView = require(ContactList.Components.common.NoItemView)
local Constants = require(ContactList.Components.common.Constants)

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer :: Player
local localUserId: number = localPlayer and localPlayer.UserId or 0

export type Props = {
	dismissCallback: () -> (),
	isSmallScreen: boolean,
	scrollingEnabled: boolean,
	searchText: string,
}

local function FriendListContainer(props: Props)
	local dispatch = useDispatch()
	local style = useStyle()
	local theme = style.Theme

	-- Using refs instead of state since state might not be updated in time.
	-- These are set to loading and fetching to prepare for the initial fetch.
	local isLoading = React.useRef(true)
	local scrollingFrameRef = React.useRef(nil)
	local initialPositionY = React.useRef(0)
	local status, setStatus = React.useState(RetrievalStatus.Fetching)
	local overscrolling, setOverscrolling = React.useState(false)
	local friends, setFriends = React.useState({})
	local nextPageCursor, setNextPageCursor = React.useState(nil)

	local getFriends = React.useCallback(function(cursor)
		if localUserId then
			isLoading.current = true
			setStatus(RetrievalStatus.Fetching)
			dispatch(FindFriendsFromUserId.API(localUserId, { userSort = "CombinedName", cursor = nil, limit = 50 })):andThen(
				function(result)
					-- TODO (joshli): Need to validate that this fetch is for
					-- the relevant cursor.
					for _, friend in ipairs(result.responseBody.PageItems) do
						table.insert(friends, friend)
					end

					setFriends(friends)
					setNextPageCursor(result.responseBody.NextPage)
					setStatus(RetrievalStatus.Done)
				end,
				function()
					setStatus(RetrievalStatus.Failed)
				end
			)
		end
	end, dependencyArray(friends))

	-- We do not depend on getFriends since it can cause an infinite bug.
	-- Perhaps a better solution would be to use Rodux for updates to friends.
	React.useEffect(function()
		getFriends("")
	end, {})

	-- local trimmedSearchText = React.useMemo(function()
	-- 	return string.gsub(props.searchText, "%s+", "")
	-- end, { props.searchText })

	React.useEffect(function()
		if status ~= RetrievalStatus.Fetching then
			isLoading.current = false
		end
	end, { status })

	local noFriendsText = React.useMemo(function()
		local message
		if props.searchText ~= "" then
			message = "No friends found"
		elseif status == RetrievalStatus.Failed then
			message = "Something went wrong! Please try again."
		else
			message = "Oh no you have no friends."
		end

		return React.createElement(NoItemView, {
			isImageEnabled = status ~= RetrievalStatus.Failed or props.searchText ~= "",
			imageName = if props.searchText == ""
				then "icons/graphic/findfriends_xlarge"
				else "icons/status/oof_xlarge",
			isFailedButtonEnabled = status == RetrievalStatus.Failed and props.searchText == "",
			onFailedButtonActivated = function()
				getFriends(nextPageCursor)
			end,
			isCallButtonEnabled = false,
			onCallButtonActivated = function() end,
			messageText = message,
		})
	end, dependencyArray(props.searchText, getFriends, nextPageCursor, status))

	local touchStarted = React.useCallback(function(touch: InputObject)
		initialPositionY.current = touch.Position.Y
	end, {})

	local touchMoved = React.useCallback(function(touch: InputObject)
		local delta = touch.Position.Y - initialPositionY.current :: number

		if
			delta > Constants.TOUCH_SLOP
			and scrollingFrameRef.current
			and scrollingFrameRef.current.CanvasPosition.Y == 0
		then
			-- Check if user is scrolling up at the top. If so, we will
			-- disable this scroller so that inputs will power the outer
			-- scroller.
			setOverscrolling(true)
		end
	end, {})

	local friendIds = Cryo.List.map(friends, function(friend)
		return tostring(friend.id)
	end)

	local namesFetch = UserProfiles.Hooks.useUserProfilesFetch({
		userIds = friendIds,
		query = UserProfiles.Queries.userProfilesCombinedNameAndUsernameByUserIds,
	})

	local touchEnded = React.useCallback(function()
		setOverscrolling(false)
	end, {})

	local children: any = React.useMemo(function()
		local entries: any = {}
		entries["UIListLayout"] = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		})

		for i, friend in ipairs(friends) do
			local combinedName = ""
			local userName = ""
			if namesFetch.data then
				combinedName = UserProfiles.Selectors.getCombinedNameFromId(namesFetch.data, friend.id)
				userName = UserProfiles.Selectors.getUsernameFromId(namesFetch.data, friend.id)
				userName = UserProfiles.Formatters.formatUsername(userName)
			end

			entries[i] = React.createElement(FriendListItem, {
				userId = friend.id,
				combinedName = combinedName,
				userName = userName,
				dismissCallback = props.dismissCallback,
				layoutOrder = i,
				showDivider = i ~= #friends,
			})
		end

		if nextPageCursor ~= nil then
			-- This renders an extra component like refresh button or a loading
			-- indicator. We do not want either when there is no next page.
			local index = #entries + 1
			if status == RetrievalStatus.Failed then
				entries[index] = noFriendsText
			else
				entries[index] = React.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, Constants.ITEM_HEIGHT),
					BackgroundTransparency = 1,
					LayoutOrder = index,
				}, {
					LoadingSpinner = React.createElement(LoadingSpinner, {
						size = UDim2.fromOffset(48, 48),
						position = UDim2.fromScale(0.5, 0.5),
						anchorPoint = Vector2.new(0.5, 0.5),
					}),
				})
			end
		end

		return entries
	end, dependencyArray(friends, nextPageCursor, noFriendsText, status, namesFetch.data))

	local onFetchNextPage = React.useCallback(function(f)
		if
			not isLoading.current
			and status ~= RetrievalStatus.Failed
			and nextPageCursor ~= nil
			and f.CanvasPosition.Y >= f.AbsoluteCanvasSize.Y :: number - f.AbsoluteSize.Y :: number - 50
		then
			getFriends(nextPageCursor)
		end
	end, dependencyArray(getFriends, nextPageCursor, status))

	React.useEffect(function()
		-- This is used to handle the case where the number of records is less
		-- than the height of the list. That means the list will never be
		-- scrollable to fetch more items. This does not check if there is a
		-- next page or if we are in a failure state. We'll check that in onFetchNextPage.
		local totalHeight = (#children - 1) * Constants.ITEM_HEIGHT

		if scrollingFrameRef.current and totalHeight <= scrollingFrameRef.current.AbsoluteSize.Y then
			onFetchNextPage(scrollingFrameRef.current)
		end
	end, dependencyArray(children, onFetchNextPage))

	return if #friends == 0 and status == RetrievalStatus.Fetching
		then React.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, Constants.ITEM_HEIGHT),
			BackgroundTransparency = 1,
		}, {
			LoadingSpinner = React.createElement(LoadingSpinner, {
				size = UDim2.fromOffset(48, 48),
				position = UDim2.fromScale(0.5, 0.5),
				anchorPoint = Vector2.new(0.5, 0.5),
			}),
		})
		elseif #friends == 0 then noFriendsText
		else Roact.createFragment({
			React.createElement("ScrollingFrame", {
				Size = UDim2.fromScale(1, 1),
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = theme.BackgroundDefault.Color,
				BackgroundTransparency = theme.BackgroundDefault.Transparency,
				BorderSizePixel = 0,
				CanvasSize = UDim2.new(),
				ElasticBehavior = Enum.ElasticBehavior.Never,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ScrollingEnabled = not overscrolling and props.scrollingEnabled,
				ScrollBarImageColor3 = theme.UIEmphasis.Color,
				ScrollBarImageTransparency = theme.UIEmphasis.Transparency,
				ScrollBarThickness = 4,
				ref = scrollingFrameRef,
				[React.Change.CanvasPosition] = onFetchNextPage,
			}, children),

			TouchStartedUserInputConnection = props.isSmallScreen
				and props.scrollingEnabled
				and React.createElement(ExternalEventConnection, {
					event = UserInputService.TouchStarted,
					callback = touchStarted,
				}),

			TouchMovedUserInputConnection = props.isSmallScreen
				and props.scrollingEnabled
				and React.createElement(ExternalEventConnection, {
					event = UserInputService.TouchMoved,
					callback = touchMoved,
				}),

			TouchEndedUserInputConnection = props.isSmallScreen
				and props.scrollingEnabled
				and React.createElement(ExternalEventConnection, {
					event = UserInputService.TouchEnded,
					callback = touchEnded,
				}),
		})
end

return FriendListContainer
