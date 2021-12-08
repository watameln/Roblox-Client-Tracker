local Plugin = script.Parent.Parent.Parent
local Packages = Plugin.Packages
local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Roact
local Cryo
if FFlagToolboxDeduplicatePackages then
	Roact = require(Packages.Roact)
	Cryo = require(Packages.Cryo)
else
	Roact = require(Plugin.Libs.Roact)
	Cryo = require(Plugin.Libs.Cryo)
end

local function createFitToContent(containerComponent, layoutComponent, layoutProps)
	local name = ("FitComponent(%s, %s)"):format(containerComponent, layoutComponent)
	local FitComponent = Roact.Component:extend(name)

	local borderSize = layoutProps.BorderSize or 0
	layoutProps = Cryo.Dictionary.join(layoutProps, {
		BorderSize = Cryo.None,
	})

	function FitComponent:init()
		self.layoutRef = Roact.createRef()
		self.containerRef = Roact.createRef()

		self.layoutProps = Cryo.Dictionary.join(layoutProps, {
			[Roact.Ref] = self.layoutRef,
			[Roact.Change.AbsoluteContentSize] = function()
				if self.layoutRef.current ~= nil and self.containerRef.current ~= nil then
					self:resizeContainer()
				end
			end,
		})
	end

	function FitComponent:render()
		assert(self.props.Size == nil, "Size must not be specified!")

		local children = Cryo.Dictionary.join({
			["Layout"] = Roact.createElement(layoutComponent, self.layoutProps),
			["Padding"] = borderSize > 0 and Roact.createElement("UIPadding", {
				PaddingTop = UDim.new(0, borderSize),
				PaddingBottom = UDim.new(0, borderSize),
				PaddingLeft = UDim.new(0, borderSize),
				PaddingRight = UDim.new(0, borderSize),
			}),
		}, self.props[Roact.Children])

		local props = Cryo.Dictionary.join(self.props, {
			[Roact.Children] = children,
			[Roact.Ref] = self.containerRef,
		})

		return Roact.createElement(containerComponent, props)
	end

	function FitComponent:didMount()
		self:resizeContainer()
	end

	function FitComponent:resizeContainer()
		local layoutSize = self.layoutRef.current.AbsoluteContentSize
		self.containerRef.current.Size = UDim2.new(1, 0, 0, layoutSize.Y + (borderSize * 2))
	end

	return FitComponent
end

return createFitToContent