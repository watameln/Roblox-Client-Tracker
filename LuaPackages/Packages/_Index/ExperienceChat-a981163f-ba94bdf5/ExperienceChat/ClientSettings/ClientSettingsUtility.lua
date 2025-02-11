--!strict
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local UIBlox = require(Packages.UIBlox)
local Colors = UIBlox.App.Style.Colors

local Config = require(ExperienceChat.Config)
local DEFAULT_BACKGROUND_COLOR = Config.ChatWindowBackgroundColor3

local ClientSettingsUtility = {}

export type ChatSettings = { [string]: any }

function ClientSettingsUtility.getBackgroundColor(chatSettings: ChatSettings, clientSettings)
	if chatSettings.BackgroundColor3 == DEFAULT_BACKGROUND_COLOR then
		return Colors.Flint:Lerp(chatSettings.BackgroundColor3, clientSettings.preferredTransparency)
	else
		return chatSettings.BackgroundColor3
	end
end

function ClientSettingsUtility.getBackgroundTransparency(chatSettings: ChatSettings, clientSettings)
	return chatSettings.BackgroundTransparency * clientSettings.preferredTransparency
end

return ClientSettingsUtility
