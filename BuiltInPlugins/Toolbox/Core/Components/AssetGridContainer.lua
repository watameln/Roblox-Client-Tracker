--[[
	A container that sets up full assets functionality. It sets up asset insertion, AssetPreview, and messageBoxes.

	Required Props:
		callback tryOpenAssetConfig: invoke assetConfig page with an assetId.

	Optional Props:
		int LayoutOrder
		UDim2 Position
		UDim2 Size
]]
local HttpService = game:GetService("HttpService")

local FFlagToolboxWithContext = game:GetFastFlag("ToolboxWithContext")
local FFlagToolboxFixDuplicateToolGuis = game:GetFastFlag("ToolboxFixDuplicateToolGuis")

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextGetter = require(Util.ContextGetter)
local Images = require(Util.Images)
local AssetAnalyticsContextItem = require(Util.Analytics.AssetAnalyticsContextItem)
local InsertToolPromise = require(Util.InsertToolPromise)
local InsertAsset = require(Util.InsertAsset)
local getStartupAssetId = require(Util.getStartupAssetId)

local Category = require(Plugin.Core.Types.Category)

local getNetwork = ContextGetter.getNetwork

local AssetPreviewWrapper = require(Plugin.Core.Components.Asset.Preview.AssetPreviewWrapper)
local MessageBox = require(Plugin.Core.Components.MessageBox.MessageBox)

local PostInsertAssetRequest = require(Plugin.Core.Networking.Requests.PostInsertAssetRequest)

local AssetGrid = require(Plugin.Core.Components.AssetGrid)

local GetAssetPreviewDataForStartup = require(Plugin.Core.Thunks.GetAssetPreviewDataForStartup)
local SetMostRecentAssetInsertTime = require(Plugin.Core.Actions.SetMostRecentAssetInsertTime)

local Framework = require(Libs.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local AssetGridContainer = Roact.PureComponent:extend("AssetGridContainer")

AssetGridContainer.defaultProps = {
	Size = UDim2.new(1, 0, 1, 0),
}

function AssetGridContainer:init(props)
	self.ref = Roact.createRef()

	self.state = {
		isShowingToolMessageBox = false,
		absoluteSize = Vector2.new(Constants.TOOLBOX_MIN_WIDTH, 0),
		absolutePosition = Vector2.new(),
	}

	--[[
		We need to track when the user last triggered an insertion, because inserting
		an asset can take several seconds depending on the asset's loading speed. This
		means throttling inserts via "onAssetInserted" does not work as intended
		because a user can queue up several inserts of an asset which is not loaded yet,
		and "onAssetInserted" does not fire and update the last inserted time until
		the asset in question has finished loading.
	]]
	self.lastInsertAttemptTime = 0

	self.canInsertAsset = function()
		return (tick() - self.lastInsertAttemptTime > Constants.TIME_BETWEEN_ASSET_INSERTION)
			and not self.insertToolPromise:isWaiting()
	end

	self.onMessageBoxClosed = function()
		self:setState({
			isShowingToolMessageBox = false,
		})

		self.insertToolPromise:insertToWorkspace()
	end

	self.onMessageBoxButtonClicked = function(index, action)
		self:setState({
			isShowingToolMessageBox = false,
		})

		if action == "yes" then
			self.insertToolPromise:insertToStarterPack()
		elseif action == "no" then
			self.insertToolPromise:insertToWorkspace()
		end
	end

	self.onInsertToolPrompt = function()
		self:setState({
			isShowingToolMessageBox = true,
		})
	end

	self.insertToolPromise = InsertToolPromise.new(self.onInsertToolPrompt)

	self.tryInsert = function(assetData, assetWasDragged, insertionMethod)
		self.lastInsertAttemptTime = tick()

		local asset = assetData.Asset
		local assetId = asset.Id
		local assetName = asset.Name
		local assetTypeId = asset.TypeId

		local currentProps = self.props
		local categoryName = currentProps.categoryName
		local searchTerm = currentProps.searchTerm or ""
		local assetIndex = currentProps.assetIndex

		local currentCategoryName = categoryName

		local plugin = self.props.Plugin:get()
		InsertAsset.tryInsert({
				plugin = plugin,
				assetId = assetId,
				assetName = assetName,
				assetTypeId = assetTypeId,
				onSuccess = function(assetId, insertedInstance)
					self.props.postInsertAssetRequest(getNetwork(self), assetId)
					self.props.setMostRecentAssetInsertTime()
					insertionMethod = insertionMethod or (assetWasDragged and "DragInsert" or "ClickInsert")
					self.props.AssetAnalytics:get():logInsert(assetData, insertionMethod, insertedInstance)
				end,
				currentCategoryName = currentCategoryName,
				categoryName = categoryName,
				searchTerm = searchTerm,
				assetIndex = assetIndex,
			},
			self.insertToolPromise,
			assetWasDragged
		)
	end

	self.updateBoundaryVariables = function()
		local ref = self.ref.current
		if not ref then
			return
		end
		if self.state.absolutePosition ~= ref.AbsolutePosition
			or self.state.absoluteSize ~= ref.AbsoluteSize then
			self:setState({
				absoluteSize = ref.AbsoluteSize,
				absolutePosition = ref.AbsolutePosition,
			})
		end
	end
end

function AssetGridContainer:didMount()
	local assetIdStr = getStartupAssetId()
	local assetId = tonumber(assetIdStr)

	self.updateBoundaryVariables()

	if assetId then
		local props = self.props
		props.getAssetPreviewDataForStartup(assetId, self.tryInsert, props.Localization, props.API:get())
	end
end

function AssetGridContainer:willUnmount()
	self.insertToolPromise:destroy()
end

function AssetGridContainer:render()
	local props = self.props
	local state = self.state

	local automaticSize = props.AutomaticSize
	local layoutOrder = props.LayoutOrder
	local isPreviewing = props.isPreviewing
	local position = props.Position
	local size = props.Size
	local tryOpenAssetConfig = props.tryOpenAssetConfig

	local isShowingToolMessageBox = state.isShowingToolMessageBox

	return Roact.createElement("Frame", {
		AutomaticSize = automaticSize,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		Position = position,
		Size = size,
		[Roact.Ref] = self.ref,
		[Roact.Change.AbsolutePosition] = self.updateBoundaryVariables,
		[Roact.Change.AbsoluteSize] = self.updateBoundaryVariables,
	}, {
		ToolMessageBox = isShowingToolMessageBox and Roact.createElement(MessageBox, {
			Name = FFlagToolboxFixDuplicateToolGuis and string.format("ToolboxToolMessageBox-%s", HttpService:GenerateGUID()) or "ToolboxToolMessageBox",

			Title = "Insert Tool",
			Text = "Put this tool into the starter pack?",
			Icon = Images.INFO_ICON,

			onClose = self.onMessageBoxClosed,
			onButtonClicked = self.onMessageBoxButtonClicked,

			buttons = {
				{
					Text = "Yes",
					action = "yes",
				}, {
					Text = "No",
					action = "no",
				}
			}
		}),

		AssetPreview = isPreviewing and Roact.createElement(AssetPreviewWrapper, {
			tryInsert = self.tryInsert,
			tryOpenAssetConfig = tryOpenAssetConfig,
		}),

		InfiniteScrollingFrame = Roact.createElement(AssetGrid, {
			canInsertAsset = self.canInsertAsset,
			parentAbsolutePosition = state.absolutePosition,
			parentSize = state.absoluteSize,
			tryInsert = self.tryInsert,
		}),

		-- TODO: Swimlanes here
	})
end

AssetGridContainer = withContext({
	API = ContextServices.API,
	AssetAnalytics = AssetAnalyticsContextItem,
	Localization = ContextServices.Localization,
	Plugin = ContextServices.Plugin,
})(AssetGridContainer)

local function mapStateToProps(state, props)
	state = state or {}
	local assets = state.assets or {}
	local pageInfo = state.pageInfo or {}
	local categoryName = pageInfo.categoryName or Category.DEFAULT.name

	return {
		categoryName = categoryName,
		isPreviewing = assets.isPreviewing or false,
		searchTerm = pageInfo.searchTerm or "",
	}
end

local function mapDispatchToProps(dispatch)
	return {
		getAssetPreviewDataForStartup = function(assetId, tryInsert, localization, api)
			dispatch(GetAssetPreviewDataForStartup(assetId, tryInsert, localization, api))
		end,
		postInsertAssetRequest = function(networkInterface, assetId)
			dispatch(PostInsertAssetRequest(networkInterface, assetId))
		end,
		setMostRecentAssetInsertTime = function()
			dispatch(SetMostRecentAssetInsertTime())
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(AssetGridContainer)