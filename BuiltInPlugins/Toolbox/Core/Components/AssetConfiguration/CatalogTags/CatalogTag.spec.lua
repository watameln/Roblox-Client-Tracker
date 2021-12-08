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
	local AssetConfigTheme = require(Plugin.Core.Util.AssetConfigTheme)

	local CatalogTag = require(Plugin.Core.Components.AssetConfiguration.CatalogTags.CatalogTag)

	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockWrapper, {
			theme = AssetConfigTheme.createDummyThemeManager(),
		}, {
			CatalogTag = Roact.createElement(CatalogTag, {
				Position = UDim2.new(),
				Size = UDim2.new(),
				Text = "",
				textSize = Vector2.new(),
				onClose = function() end,
			}),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
