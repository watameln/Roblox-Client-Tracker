--[[
	AssetTypeSelection displays a dropdown menu for the user to select which type of asset they are uploading.
	Will store the result and forward to a new screen.

	Necessary Props:
		UDim2 Size - size of window
		callback onClose - called when the user presses the "cancel" button
]]

local FFlagToolboxRemoveWithThemes = game:GetFastFlag("ToolboxRemoveWithThemes")
local FFlagToolboxAssetConfigAddPublishBackButton = game:GetFastFlag("ToolboxAssetConfigAddPublishBackButton")

local Plugin = script.Parent.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)
local Framework = require(Libs.Framework)

local Util = Plugin.Core.Util
local ContextHelper = require(Util.ContextHelper)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local AssetConfigUtil = require(Util.AssetConfigUtil)
local getAllowedAssetTypeEnums = require(Util.getAllowedAssetTypeEnums)

local Components = Plugin.Core.Components
local NavButton = require(Components.NavButton)
local AssetThumbnailPreview = require(Components.AssetConfiguration.AssetThumbnailPreview)
local DefaultThumbnailPreview = require(Components.AssetConfiguration.DefaultThumbnailPreview)

local AssetTypeSelector = require(Components.AssetConfiguration.AssetTypeSelector)

local FFlagUseDefaultThumbnailForAnimation = game:GetFastFlag("UseDefaultThumbnailForAnimation")
local Actions = Plugin.Core.Actions
local SetCurrentScreen = require(Actions.SetCurrentScreen)
local SetUploadAssetType = require(Actions.SetUploadAssetType)

local Thunks = Plugin.Core.Thunks
local GoToNextScreen = require(Thunks.AssetConfiguration.GoToNextScreen)

local PREVIEW_PADDING = 48
local PREVIEW_SIZE = 150
local PREVIEW_TITLE_PADDING = 12
local PREVIEW_TITLE_HEIGHT = 24
local SELECTOR_Y_POS = 310
local SELECTOR_WIDTH = 400
local SELECTOR_HEIGHT = 40
local FOOTER_HEIGHT = 62
local FOOTER_PADDING = 24
local BUTTON_WIDTH = 120
local BUTTON_HEIGHT = 32

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local AssetTypeSelection = Roact.PureComponent:extend("AssetTypeSelection")

function AssetTypeSelection:didMount()
	if self:canSkip() then
		if FFlagToolboxAssetConfigAddPublishBackButton then
			self.props.goToNextScreen()
		else
			self.props.onNext(self.props.screenFlowType)
		end
	end
end

function AssetTypeSelection:getSelectorItems(localizedContent)
	local items = {
		{ name = "Game development assets", selectable = false },
		{ name = "Model", selectable = true, type = Enum.AssetType.Model },
	}

	table.insert(items, { name = "Animation", selectable = true, type = Enum.AssetType.Animation })

	-- only catalog item creators can upload hats

	local allowedAssetTypes = getAllowedAssetTypeEnums(self.props.allowedAssetTypesForRelease)

	if #allowedAssetTypes > 0 then
		local dividerName = ""
		if localizedContent then
			dividerName = localizedContent.Category.CreationsCatalogSectionDivider
		end
		items[#items + 1] = { name = dividerName, selectable = false }
		for _, assetTypeEnum in pairs(allowedAssetTypes) do
			local assetTypeName = ""
			if localizedContent then
				assetTypeName = localizedContent.AssetConfig.PublishAsset.AssetTextDisplay[assetTypeEnum]
			end
			items[#items + 1] = {
				name = assetTypeName,
				selectable = true,
				type = assetTypeEnum,
			}
		end
	end

	return items
end

function AssetTypeSelection:canSkip()
	if AssetConfigUtil.isBuyableMarketplaceAsset(self.props.assetTypeEnum) then
		return true
	else
		local amtSelectable = 0
		for _, item in pairs(self:getSelectorItems()) do
			if item.selectable then
				amtSelectable = amtSelectable + 1
			end
		end
		return amtSelectable == 2
	end
end

function AssetTypeSelection:render()
	if FFlagToolboxRemoveWithThemes then
		return withLocalization(function(localization, localizedContent)
			return self:renderContent(nil, localization, localizedContent)
		end)
	else
		return withTheme(function(theme)
			return withLocalization(function(localization, localizedContent)
				return self:renderContent(theme, localization, localizedContent)
			end)
		end)
	end
end

function AssetTypeSelection:renderContent(theme, localization, localizedContent)
	local props = self.props
	if FFlagToolboxRemoveWithThemes then
		theme = props.Stylizer
	end
	local shouldShowDefaultThumbnailForAnimation = FFlagUseDefaultThumbnailForAnimation and self.props.assetTypeEnum == Enum.AssetType.Animation

	return Roact.createElement("Frame", {
		BackgroundColor3 = theme.typeSelection.background,
		BackgroundTransparency = 0,
		BorderSizePixel = 0,
		Size = props.Size,
	}, {
		AssetThumbnailPreview = not shouldShowDefaultThumbnailForAnimation and Roact.createElement(AssetThumbnailPreview, {
			Size = UDim2.new(
				0, PREVIEW_SIZE,
				0, PREVIEW_SIZE + PREVIEW_TITLE_PADDING + PREVIEW_TITLE_HEIGHT
			),
			Position = UDim2.new(0.5, -PREVIEW_SIZE/2, 0, PREVIEW_PADDING),
			titleHeight = PREVIEW_TITLE_HEIGHT,
			titlePadding = PREVIEW_TITLE_PADDING,
		}),
		DefaultThumbnailPreview = shouldShowDefaultThumbnailForAnimation and Roact.createElement(DefaultThumbnailPreview, {
			Size = UDim2.new(
				0, PREVIEW_SIZE,
				0, PREVIEW_SIZE + PREVIEW_TITLE_PADDING + PREVIEW_TITLE_HEIGHT
			),
			Position = UDim2.new(0.5, -PREVIEW_SIZE/2, 0, PREVIEW_PADDING),
		}),
		AssetTypeSelector = Roact.createElement(AssetTypeSelector, {
			Position = UDim2.new(0.5, -SELECTOR_WIDTH/2, 0, SELECTOR_Y_POS),
			height = SELECTOR_HEIGHT,
			width = SELECTOR_WIDTH,
			assetTypeEnum = self.props.assetTypeEnum,
			onAssetTypeSelected = self.props.onAssetTypeSelected,
			items = self:getSelectorItems(localizedContent),
		}),

		Footer = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, FOOTER_HEIGHT),
			Position = UDim2.new(0, 0, 1, -FOOTER_HEIGHT),
			BackgroundColor3 = FFlagToolboxRemoveWithThemes and theme.typeSelection.configFooter.background or theme.typeSelection.footer.background,
			BorderColor3 = FFlagToolboxRemoveWithThemes and theme.typeSelection.configFooter.border or  theme.typeSelection.footer.border,
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, FOOTER_PADDING),
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),

			UIPadding = Roact.createElement("UIPadding", {
				PaddingRight = UDim.new(0, FOOTER_PADDING),
			}),

			CancelButton = Roact.createElement(NavButton, {
				Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
				LayoutOrder = 0,
				titleText = "Cancel",
				onClick = props.onClose,
			}),

			NextButton = Roact.createElement(NavButton, {
				Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
				LayoutOrder = 1,
				titleText = "Next",
				isPrimary = true,
				onClick = function()
					if FFlagToolboxAssetConfigAddPublishBackButton then
						self.props.goToNextScreen()
					else
						self.props.onNext(self.props.screenFlowType)
					end
				end,
			}),
		}),
	})
end

local function mapStateToProps(state, props)
	state = state or {}

	return {
		instances = state.instances,
		currentScreen = state.currentScreen,
		screenFlowType = state.screenFlowType,
		allowedAssetTypesForRelease = state.allowedAssetTypesForRelease,
		assetTypeEnum = state.assetTypeEnum,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		-- TODO: Move this function into the thunk
		onNext = function(flowType)
			if FFlagToolboxAssetConfigAddPublishBackButton then
				-- TODO: remove function when flag is enabled
				return
			end
			if flowType == AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW then
				dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.ASSET_VALIDATION))
			else
				dispatch(SetCurrentScreen(AssetConfigConstants.SCREENS.CONFIGURE_ASSET))
			end
		end,
		goToNextScreen = function()
			dispatch(GoToNextScreen())
		end,
		onAssetTypeSelected = function(assetType)
			dispatch(SetUploadAssetType(assetType))
		end,
	}
end

if FFlagToolboxRemoveWithThemes then
	AssetTypeSelection = withContext({
		Stylizer = ContextServices.Stylizer,
	})(AssetTypeSelection)
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetTypeSelection)