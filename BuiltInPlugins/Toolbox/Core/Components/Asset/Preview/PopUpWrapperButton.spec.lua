return function()
	local Plugin = script.Parent.Parent.Parent.Parent.Parent

	local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
	local Libs
	if FFlagToolboxDeduplicatePackages then
		Libs = Plugin.Packages
	else
		Libs = Plugin.Libs
	end
	local Roact = require(Libs.Roact)

	local MockWrapper = require(Plugin.Core.Util.MockWrapper)

	local PopUpWrapperButton = require(Plugin.Core.Components.Asset.Preview.PopUpWrapperButton)

	local function createTestAsset(container, name)
		local element = Roact.createElement(MockWrapper, {}, {
			PopUpWrapperButton = Roact.createElement(PopUpWrapperButton, {}, {
				position = UDim2.new(1, 0, 1, 0),
			})
		})

		return Roact.mount(element, container or nil, name or "")
	end

	it("should create and destroy without errors", function()
		local instance = createTestAsset()
		Roact.unmount(instance)
	end)
end