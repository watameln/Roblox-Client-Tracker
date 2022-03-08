--[[
	The Table component displays a grid of data in rows and columns.
	Data is passed in rows, with options for scrolling and sorting.

	Required Props:
		array[any] Rows: The rows of data the table should display
		array[any] Columns: The columns of the table.

	Optional Props:
		UDim2 Size: The size of the table
		callback GetRowKey: Return a key for an item, unique among siblings - GetRowKey(item: Item) => string (default uses a row's index)
		boolean Scroll: Whether to use a scrolling frame (default = false)
		number SelectedRow: The index of the currently selected row.
		any Footer: A Roact fragment or element to be displayed in the footer.
		boolean ShowFooter: Whether to display the footer. (default = true if the Footer prop is non-nil)
		boolean ShowHeader: Whether to display the header. (defalt = true)
		number SortIndex: The index of the current column that is being sorted.
		Enum.SortDirection SortOrder: The order that the column is being sorted in.
		callback OnHoverRow: An optional callback called when a row is hovered over. (rowIndex: number) -> ()
		callback OnMouseLeave: An optional callback called when the mouse leaves the table bounds. () -> ()
		callback OnRightClickRow: An optional callback when a row is right-clicked. (rowIndex: number) -> ()
		callback OnSelectRow: An optional callback called when a row is selected. (rowIndex: number) -> ()
		callback OnDoubleClick: An optional callback called when an item is double clicked
		callback OnSizeChange: An optional callback called when the component size changes.
		callback OnSortChange: An optional callback called when the user sorts a column.
		callback OnColumnSizesChange: An optional callback which allows columns to be resizable.
		callback RowComponent: An optional component to render each row.
		boolean UseScale: Whether to convert column widths to scales during resizing.
		boolean ClampSize: Whether to clamp column resizes to the width of the table.
		any CellComponent: An optional component passed to the row component which renders individual cells.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		Theme Theme: A Theme ContextItem, which is provided via withContext.
		table CellProps: A table of props which are passed from the table's props to the CellComponent.
		boolean FullSpan: Whether the root level should ignore column settings and use the first column key to populate entire width
		array[any] HighlightedRows: An optional list of rows to highlight.
		number ScrollFocusIndex: An optional row index for the infinite scroller to focus upon rendering.
]]
local FFlagDevFrameworkSplitPane = game:GetFastFlag("DevFrameworkSplitPane")
local FFlagDevFrameworkTableColumnResize = game:GetFastFlag("DevFrameworkTableColumnResize")
local FFlagDevFrameworkInfiniteScrollerIndex = game:GetFastFlag("DevFrameworkInfiniteScrollerIndex")
local FFlagDevFrameworkDoubleClick = game:GetFastFlag("DevFrameworkDoubleClick")

local hasTableColumnResizeFFlags = FFlagDevFrameworkSplitPane and FFlagDevFrameworkTableColumnResize

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local Typecheck = require(Framework.Util).Typecheck
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext

local TableRow = require(Framework.UI.TableRow)

local Dash = require(Framework.packages.Dash)
local map = Dash.map
local collect = Dash.collect
local reduce = Dash.reduce
local some = Dash.some

local Pane = require(Framework.UI.Pane)
local InfiniteScrollingFrame = require(Framework.UI.InfiniteScrollingFrame)
local ScrollingFrame = require(Framework.UI.ScrollingFrame)
local SplitPane = require(Framework.UI.SplitPane)
local TableHeaderCell = require(script.TableHeaderCell)

local Util = require(Framework.Util)
local THEME_REFACTOR = Util.RefactorFlags.THEME_REFACTOR

local Table = Roact.PureComponent:extend("Table")
Typecheck.wrap(Table, script)

type Column = {
	Name: string,
	Key: string?,
	Width: UDim?,
	MinWidth: number?,
}

local DEFAULT_COLUMN_MIN_WIDTH = UDim.new(0, 50)

function Table:init()
	assert(THEME_REFACTOR, "Table not supported in Theme1, please upgrade your plugin to Theme2")
	self:calculateRowIndices(self.props.Rows)
	self.onHoverRow = function(rowProps)
		if self.props.OnHoverRow then
			self.props.OnHoverRow(rowProps.Row, rowProps.RowIndex)
		end
	end
	self.onHoverRowEnd = function(rowProps)
		if self.props.OnHoverRowEnd then
			self.props.OnHoverRowEnd(rowProps.Row, rowProps.RowIndex)
		end
	end

	self.onSelectRow = function(rowProps)
		if self.props.OnSelectRow then
			self.props.OnSelectRow(rowProps.Row, rowProps.RowIndex)
		end
	end
	
	self.onDoubleClick = function(rowProps)
		if self.props.OnDoubleClick then
			self.props.OnDoubleClick(rowProps.Row, rowProps.RowIndex)
		end
	end

	self.onRightClickRow = function(rowProps)
		if self.props.OnRightClickRow then
			self.props.OnRightClickRow(rowProps)
		end
	end
	self:_flushRenderRow()
	self.getDefaultRowKey = function(row)
		return "Row " .. (self.rowToIndex[row] or tostring(row))
	end
	self.onSizeChange = function(rbx)
		local props = self.props
		local style = props.Stylizer
		local footerHeight = props.Footer and style.FooterHeight or 0
		-- Adjustment so as not to cut off the last row
		local listPadding = 5
		local listHeight = rbx.AbsoluteSize.Y - (style.HeaderHeight + footerHeight) - listPadding
		self.props.OnSizeChange(listHeight)
	end
end

function Table:_flushRenderRow()
	self.onRenderRow = function(row)
		-- Infinite scroller doesn't track row indices, so store this in Table
		local rowIndex = self.rowToIndex[row]
		local props = self.props
		local RowComponent = self.props.RowComponent or TableRow
		local isHighlightedRow = false
		if props.HighlightedRows then
			for _, currRow in ipairs(props.HighlightedRows) do
				if Util.deepEqual(currRow, row.item) then
					isHighlightedRow = true
				end
			end
		end

		return Roact.createElement(RowComponent, {
			CellProps = self.props.CellProps,
			CellComponent = self.props.CellComponent,
			Columns = self.props.Columns,
			Rows = self.props.Rows,
			Row = row,
			RowIndex = rowIndex,
			Selected = rowIndex == props.SelectedRow,
			OnHover = self.props.OnHoverRow and self.onHoverRow,
			OnHoverEnd = self.props.OnHoverRowEnd and self.onHoverRowEnd,
			OnPress = self.props.OnSelectRow and self.onSelectRow,
			OnDoubleClick = (FFlagDevFrameworkDoubleClick and self.props.OnDoubleClick and self.onDoubleClick) or nil,
			OnRightClick = self.onRightClickRow,
			FullSpan = props.FullSpan,
			HighlightRow = isHighlightedRow,
		})
	end
end

function Table:willUpdate(nextProps)
	local props = self.props
	if props.Rows ~= nextProps.Rows then
		self:calculateRowIndices(nextProps.Rows)
	end
	if hasTableColumnResizeFFlags and props.Columns ~= nextProps.Columns then
		local changedColumnCount = #props.Columns ~= #nextProps.Columns
		local changedColumnWidth = some(props.Columns, function(column, index: number)
			local nextColumn = nextProps.Columns[index]
			return nextColumn.Width ~= column.Width
		end)
		if changedColumnCount or changedColumnWidth then
			self:_flushRenderRow()
		end
	end
end

function Table:calculateRowIndices(rows)
	self.rowToIndex = collect(rows, function(index, row)
		return row, index
	end)
end

function Table:renderResizableHeadings()
	
	local props = self.props
	local style = props.Stylizer
	local sizes = map(props.Columns, function(column: Column)
		return column.Width or UDim.new(1 / #props.Columns, 0)
	end)
	local minSizes = map(props.Columns, function(column: Column)
		return column.MinWidth or DEFAULT_COLUMN_MIN_WIDTH
	end)
	return Roact.createElement(SplitPane, {
		UseScale = props.UseScale,
		ClampSize = props.ClampSize,
		Sizes = sizes,
		MinSizes = minSizes,
		OnSizesChange = props.OnColumnSizesChange,
	}, map(props.Columns, function(column: Column, index: number)
		local order = props.SortIndex == index and props.SortOrder or nil
		return Roact.createElement(TableHeaderCell, {
			Name = column.Name,
			Order = order,
			Width = UDim.new(1, 0),
			ColumnIndex = index,
			Style = style,
			OnPress = self.props.OnSortChange and function()
				-- Swap to ascending or use descending
				local nextOrder = if order == Enum.SortDirection.Descending then Enum.SortDirection.Ascending else Enum.SortDirection.Descending
				self.props.OnSortChange(index, nextOrder)
			end or nil
		})
	end))
end

function Table:renderFixedHeadings()
	local props = self.props
	local style = props.Stylizer
	return map(props.Columns, function(column: Column, index: number)
		local width = column.Width or UDim.new(1 / #props.Columns, 0)
		local order = props.SortIndex == index and props.SortOrder or nil
		return Roact.createElement(TableHeaderCell, {
			Name = column.Name,
			Order = order,
			Width = width,
			ColumnIndex = index,
			Style = style,
			OnPress = self.props.OnSortChange and function()
				-- Swap to ascending or use descending
				local nextOrder = order == Enum.SortDirection.Descending and Enum.SortDirection.Ascending or Enum.SortDirection.Descending
				self.props.OnSortChange(index, nextOrder)
			end or nil
		})
	end)
end

function Table:renderHeadings()
	local props = self.props
	if hasTableColumnResizeFFlags and props.OnColumnSizesChange then
		return self:renderResizableHeadings()
	else
		return self:renderFixedHeadings()
	end
end

function Table:renderScroll()
	local props = self.props
	local style = props.Stylizer
	local getItemKey = props.GetRowKey or self.getDefaultRowKey
	return Roact.createElement(InfiniteScrollingFrame, {
		AnchorLocation = UDim.new(1, 0),
		ItemIdentifier = getItemKey,
		EstimatedItemSize = style.RowHeight,
		Items = props.Rows,
		RenderItem = self.onRenderRow,
		ScrollFocusIndex = (FFlagDevFrameworkInfiniteScrollerIndex and props.ScrollFocusIndex) or nil,
	})
end

function Table:renderRows()
	local props = self.props
	local rows = map(props.Rows, function(row: any, index: number)
		return Roact.createElement(Pane, {
			LayoutOrder = index,
			AutomaticSize = Enum.AutomaticSize.XY,
		}, {
			Row = self.onRenderRow(row)
		})
	end)
	return Roact.createFragment(rows)
end

function Table:render()
	local props = self.props
	local style = props.Stylizer
	local headings = self:renderHeadings()
	local showFooter = props.ShowFooter
	local showHeader = props.ShowHeader
	if showHeader == nil then
		showHeader = true
	end
	if showFooter == nil then
		showFooter = props.Footer ~= nil
	end
	local headerHeight = showHeader and style.HeaderHeight or 0
	local footerHeight = showFooter and style.FooterHeight or 0
	local child = props.Scroll and self:renderScroll() or self:renderRows()

	local header = showHeader and Roact.createElement(Pane, {
		Layout = Enum.FillDirection.Horizontal,
		LayoutOrder = 1,
		Size = UDim2.new(1, 0, 0, headerHeight),
		Padding = props.Scroll and style.ScrollHeaderPadding or nil,
		Style = "SubtleBox",
		BorderColor3 = style.Border,
		BorderSizePixel = 1,
	}, headings)

	local useVariableWidth = hasTableColumnResizeFFlags and props.OnColumnSizesChange and not props.UseScale and not props.ClampSize
	local width = 0

	local size = UDim2.new(1, 0, 1, -(headerHeight + footerHeight))
	if useVariableWidth then
		width = reduce(props.Columns, function(value: number, column: Column)
			local columnWidth = if column.Width then column.Width.Offset else 0
			return value + columnWidth
		end, 0)
		if width > 0 then
			size = UDim2.new(0, width, 1, -(headerHeight + footerHeight))
		end
	end

	local list = Roact.createElement(Pane, {
		VerticalAlignment = Enum.VerticalAlignment.Top,
		HorizontalAlignment = hasTableColumnResizeFFlags and Enum.HorizontalAlignment.Left or nil,
		Layout = Enum.FillDirection.Vertical,
		Padding = 2,
		LayoutOrder = 2,
		Size = size,
		[Roact.Event.MouseLeave] = props.OnMouseLeave,
	}, {
		Child = child
	})

	local top
	if useVariableWidth then
		top = Roact.createElement(ScrollingFrame, {
			CanvasSize = UDim2.fromOffset(width, 0),
			ScrollingDirection = Enum.ScrollingDirection.X,
		}, {
			Child = Roact.createElement(Pane, {
				Layout = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
			}, {
				Header = header,
				List = list,
			}),
		})
	else
		top = Roact.createFragment({
			Header = header,
			List = list,
		})
	end

	return Roact.createElement(Pane, {
		Size = props.Size,
		Layout = Enum.FillDirection.Vertical,
		Style = "BorderBox",
		Padding = 1,
		[Roact.Change.AbsoluteSize] = props.OnSizeChange and self.onSizeChange or nil,
	}, {
		Top = top,
		Footer = showFooter and Roact.createElement(Pane, {
			LayoutOrder = 3,
			Style = "SubtleBox",
			BorderColor3 = style.Border,
			BorderSizePixel = 1,
			Size = UDim2.new(1, 0, 0, footerHeight),
		}, {
			Content = props.Footer,
		}),
	})
end

Table = withContext({
	Stylizer = THEME_REFACTOR and ContextServices.Stylizer or nil,
})(Table)

return Table