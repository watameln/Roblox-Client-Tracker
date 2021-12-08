--[[
	Footer for the Search Options drawer.
	Contains the Cancel and Apply buttons.

	Props:
		int LayoutOrder = The order this appears in the Search Options UIListLayout.
			This component should appear at the end, so it should have the highest LayoutOrder.

		function onButtonClicked(string Button) = A callback when the user clicks a button.
]]
local FFlagToolboxRemoveWithThemes = game:GetFastFlag("ToolboxRemoveWithThemes")

local MIN_BUTTON_WIDTH = 55
local BUTTON_TEXT_PADDING = 20

local Plugin = script.Parent.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)
local Framework = require(Libs.Framework)

local Constants = require(Plugin.Core.Util.Constants)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local RoundButton = require(Plugin.Core.Components.RoundButton)

local SearchOptionsFooter = Roact.PureComponent:extend("SearchOptionsFooter")

function SearchOptionsFooter:init()
	self.onButtonClicked = function(button, index)
		if self.props.onButtonClicked then
			self.props.onButtonClicked(button, index)
		end
	end
end

function SearchOptionsFooter:render()
	if FFlagToolboxRemoveWithThemes then
		return withLocalization(function(_, localizedContent)
			return self:renderContent(nil, localizedContent)
		end)
	else
		return withTheme(function(theme)
			return withLocalization(function(_, localizedContent)
				return self:renderContent(theme, localizedContent)
			end)
		end)
	end
end

function SearchOptionsFooter:renderContent(theme, localizedContent)
	if FFlagToolboxRemoveWithThemes then
		theme = self.props.Stylizer
	end

	local applyText = localizedContent.SearchOptions.Apply
	local cancelText = localizedContent.SearchOptions.Cancel
	local applyWidth = Constants.getTextSize(applyText).X + BUTTON_TEXT_PADDING
	local cancelWidth = Constants.getTextSize(cancelText).X + BUTTON_TEXT_PADDING

	local cancelTheme = theme.searchOptions.cancelButton
	local applyTheme = theme.searchOptions.applyButton

	return Roact.createElement("Frame", {
		LayoutOrder = self.props.LayoutOrder,
		Size = UDim2.new(1, 0, 0, Constants.FOOTER_BUTTON_HEIGHT),
		BackgroundTransparency = 1,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, 10),
		}),

		CancelButton = Roact.createElement(RoundButton, {
			LayoutOrder = 1,
			Size = UDim2.new(0, math.max(MIN_BUTTON_WIDTH, cancelWidth), 1, 0),
			BackgroundColor3 = cancelTheme.backgroundColor,
			BorderColor3 = cancelTheme.borderColor,

			[Roact.Event.Activated] = function()
				self.onButtonClicked("Cancel")
			end,
		}, {
			TextLabel = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_MEDIUM,
				Text = cancelText,
				TextColor3 = cancelTheme.textColor,
			}),
		}),

		ApplyButton = Roact.createElement(RoundButton, {
			LayoutOrder = 2,
			Size = UDim2.new(0, math.max(MIN_BUTTON_WIDTH, applyWidth), 1, 0),
			BackgroundColor3 = applyTheme.backgroundColor,
			BorderColor3 = applyTheme.borderColor,

			[Roact.Event.Activated] = function()
				self.onButtonClicked("Apply")
			end,
		}, {
			TextLabel = Roact.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Font = Constants.FONT,
				TextSize = Constants.FONT_SIZE_MEDIUM,
				Text = applyText,
				TextColor3 = applyTheme.textColor,
			}),
		}),
	})
end

if FFlagToolboxRemoveWithThemes then
	SearchOptionsFooter = withContext({
		Stylizer = ContextServices.Stylizer,
	})(SearchOptionsFooter)
end

return SearchOptionsFooter
