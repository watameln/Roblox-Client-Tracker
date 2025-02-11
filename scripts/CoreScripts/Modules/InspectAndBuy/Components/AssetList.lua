--!nonstrict
local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local InspectAndBuyFolder = script.Parent.Parent
local Roact = require(CorePackages.Roact)
local Cryo = require(CorePackages.Cryo)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local AssetCard = require(InspectAndBuyFolder.Components.AssetCard)
local InspectAndBuyContext = require(InspectAndBuyFolder.Components.InspectAndBuyContext)
local ShimmerPanel = UIBlox.App.Loading.ShimmerPanel

local AssetList = Roact.PureComponent:extend("AssetList")

local CARD_PADDING = 10
local FRAME_PADDING = 15
local ASSET_CARD_RATIO = 0.68
local NUM_SHIMMER_PANELS = 30

function AssetList:calculateCanvasSize(numCardsPerRow, numAssetCards, cardSizeY)
	local rbx = self.gridFrameRef.current
	local view = self.props.view
	local viewMapping
	viewMapping = self.props.views[view]


	if rbx then
		local positionDifference = viewMapping.TopSizeY + FRAME_PADDING
		local canvasSize = math.ceil(numAssetCards / numCardsPerRow) * (cardSizeY + CARD_PADDING)
			+ positionDifference
		rbx.Parent.CanvasSize = UDim2.new(1, 0, 0, canvasSize)
	end
end

function AssetList:init()
	local view = self.props.view
	local viewMapping
	viewMapping = self.props.views[view]

	self.gridFrameRef = Roact.createRef()

	self.state = {
		assetCardSizeX = viewMapping.AssetCardMaxSizeX,
		assetCardSizeY = viewMapping.AssetCardMaxSizeY,
	}
end

function AssetList:render()
	local view = self.props.view
	local viewMapping
	viewMapping = self.props.views[view]

	local assets = self.props.assets
	local numCardsPerRow = viewMapping.MaxAssetCardsPerRow
	local assetCardSizeX = self.state.assetCardSizeX
	local assetCardSizeY = self.state.assetCardSizeY
	local assetCards = {}
	local numAssets = 0

	assetCards["UIGridLayout"] = Roact.createElement("UIGridLayout", {
		CellPadding = UDim2.new(0, CARD_PADDING, 0, CARD_PADDING),
		CellSize = UDim2.new(0, assetCardSizeX, 0, assetCardSizeY),
		SortOrder = Enum.SortOrder.LayoutOrder,
		HorizontalAlignment = Enum.HorizontalAlignment.Left,
		VerticalAlignment = Enum.VerticalAlignment.Top,
		FillDirectionMaxCells = numCardsPerRow,
	})

	for _, assetInfo in pairs(assets) do
		numAssets = numAssets + 1
		assetCards[assetInfo.assetId] = Roact.createElement(AssetCard, {
			assetInfo = assetInfo,
			assetCardSizeX = assetCardSizeX,
		})
	end

	if numAssets == 0 then
		-- show shimmer panels if we're still waiting for the assets table to be filled
		for i = 1, NUM_SHIMMER_PANELS do
			assetCards[i] = Roact.createElement(ShimmerPanel, {
				Size = UDim2.new(1, 0, 0, assetCardSizeX),
			})
		end
	end

	self:calculateCanvasSize(numCardsPerRow, numAssets, assetCardSizeY)

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, -(2 * viewMapping.BorderPaddingSize), 1, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		LayoutOrder = 3,
		[Roact.Ref] = self.gridFrameRef,
		[Roact.Change.AbsoluteSize] = function(rbx)
			spawn(function()
				self:resize()
			end)
		end,
		}, assetCards)
end

function AssetList:didMount()
	self:resize()
	self.mounted = true
end

function AssetList:didUpdate(prevProps)
	if self.props.view ~= prevProps.view then
		self:resize()
	end

	if self.mounted and self.props.gamepadEnabled and not self.props.detailsInformation.viewingDetails
		and self.props.visible then
		GuiService.SelectedCoreObject = self.gridFrameRef.current:FindFirstChildWhichIsA("GuiObject")
	end
end

function AssetList:willUnmount()
	self.mounted = false
end

function AssetList:resize()
	local rbx = self.gridFrameRef.current
	local view = self.props.view
	local viewMapping
	viewMapping = self.props.views[view]

	if rbx then
		local numCardsPerRow = viewMapping.MaxAssetCardsPerRow

		local width = math.floor((rbx.AbsoluteSize.X - CARD_PADDING *
			(numCardsPerRow - 1)) / numCardsPerRow)
		local assetCardSizeX = math.min(width, viewMapping.AssetCardMaxSizeX)
		local assetCardSizeY = math.min(width / ASSET_CARD_RATIO, viewMapping.AssetCardMaxSizeY)

		if self.state.assetCardSizeX ~= assetCardSizeX or self.state.assetCardSizeY ~= assetCardSizeY then
			self:setState({
				assetCardSizeX = assetCardSizeX,
				assetCardSizeY = assetCardSizeY,
			})
		end
	end
end

local function AssetListWrapper(props)
	return Roact.createElement(InspectAndBuyContext.Consumer, {
		render = function(views)
			local combinedProps = Cryo.Dictionary.join(props, { views = views })
			return Roact.createElement(AssetList, combinedProps)
		end
	})
end

return RoactRodux.UNSTABLE_connect2(
	function(state, props)
		return {
			view = state.view,
			visible = state.visible,
			assets = state.assets,
			detailsInformation = state.detailsInformation,
			gamepadEnabled = state.gamepadEnabled,
		}
	end
)(AssetListWrapper)
