local CorePackages = game:GetService("CorePackages")

local InGameMenu = script.Parent.Parent

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local UIBlox = InGameMenuDependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images
local GameIconButton = require(InGameMenu.Components.SideNavigation.GameIconButton)

local Constants = require(InGameMenu.Resources.Constants)

local navigationBar = {
	{
		page = Constants.LeaveToAppPromptPageKey,
		iconOn = Images["icons/menu/home_on"],
		iconOff = Images["icons/menu/home_off"]
	},
	{
		page = "Players",
		iconOn = Images["icons/menu/friends"],
		iconOff = Images["icons/menu/friends"]
	},
	{
		page = Constants.MainPagePageKey,
		iconComponent = GameIconButton,
	},
	{
		page = "GameSettings",
		iconOn = Images["icons/common/settings"],
		iconOff = Images["icons/common/settings"]
	}
}

-- For root pages, the parentPage should be nil
local pages = {
	{
		key = Constants.InitalPageKey,
		navigationDepth = 1,
		component = script.InitalPage,
		parentPage = nil,
	},
	{
		key = Constants.MainPagePageKey,
		navigationDepth = 1,
		component = script.Parent.MainPage,
		parentPage = nil,
	},
	{
		key = "Players",
		title = "CoreScripts.InGameMenu.PageTitle.Players",
		icon = Images["icons/controls/players"],
		component = script.PlayersPage,
		navigationDepth = 1,
		parentPage = nil,
	},
	{
		key = "InviteFriends",
		title = "CoreScripts.InGameMenu.PageTitle.InviteFriends",
		icon = Images["icons/actions/friends/friendInvite"],
		component = script.Parent.InviteFriendsPage,
		navigationDepth = 2,
		parentPage = Constants.MainPagePageKey,
	},
	{
		key = "GameSettings",
		title = "CoreScripts.InGameMenu.PageTitle.GameSettings",
		icon = Images["icons/common/settings"],
		component = script.Parent.GameSettingsPage.BasicPage,
		navigationDepth = 1,
		parentPage = nil,
	},
	{
		key = "Report",
		title = "CoreScripts.InGameMenu.PageTitle.Report",
		icon = Images["icons/actions/feedback"],
		component = script.Parent.ReportPage,
		navigationDepth = 2,
		parentPage = Constants.MainPagePageKey,
	},
	{
		key = "Controls",
		title = "CoreScripts.InGameMenu.PageTitle.Controls",
		icon = Images["icons/controls/controls"],
		component = script.Parent.ControlsPage,
		isModal = true,
		navigationDepth = 2,
		parentPage = Constants.MainPagePageKey,
	},
	{
		key = "AdvancedGameSettings",
		title = "CoreScripts.InGameMenu.PageTitle.GameSettings",
		icon = Images["icons/menu/settings_large"],
		component = script.Parent.GameSettingsPage.AdvancedPage,
		isSecondaryPage = true,
		navigationDepth = 2,
		parentPage = "GameSettings",
	},
	{
		key = Constants.LeaveToAppPromptPageKey,
		navigationDepth = 1,
		component = script.Dialog.LeaveToAppPrompt,
		parentPage = nil,
	},
	{
		key = Constants.LeaveGamePromptPageKey,
		navigationDepth = 1,
		component = script.Dialog.LeaveGamePrompt,
		parentPage = nil,
	},
}

local pagesByKey = {}
local navigationBarByPageKey = {}

for index, navigationBarItem in ipairs(navigationBar) do
	navigationBarItem.index = index
	navigationBarByPageKey[navigationBarItem.page] = navigationBarItem
end

for index, page in ipairs(pages) do
	page.index = index
	page.navigationBar = navigationBarByPageKey[page.key];
	assert(pagesByKey[page.key] == nil, ("page key %s is duplicated"):format(page.key))
	pagesByKey[page.key] = page
end

local function getBaseNavigationBarItemForPage(pageKey)
	if (pageKey ~= nil and pagesByKey[pageKey].navigationBar == nil and pagesByKey[pageKey].parentPage ~= nil) then
		pagesByKey[pageKey].navigationBar = getBaseNavigationBarItemForPage(pagesByKey[pageKey].parentPage);
	end
	return pagesByKey[pageKey].navigationBar;
end

local function navigationBarSelectedIndexForPage(pageKey)
	local navigationBarSelectedIndex = 1;
	local page  = pagesByKey[pageKey];
	if (page and page.navigationBar ~= nil) then
		navigationBarSelectedIndex = page.navigationBar.index
	end
	return navigationBarSelectedIndex;
end

for index, page in ipairs(pages) do
	getBaseNavigationBarItemForPage(page.key)
end

return {
	pagesByIndex = pages,
	pagesByKey = pagesByKey,
	navigationBarByIndex = navigationBar,
	navigationBarByPageKey = navigationBarByPageKey,
	navigationBarSelectedIndexForPage = navigationBarSelectedIndexForPage
}