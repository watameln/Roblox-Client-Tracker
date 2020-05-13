return function()	
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Roact)

	local Theme = require(Plugin.Src.Util.Theme)
	local ThemeProvider = require(Plugin.Src.Providers.ThemeProvider)

	local TableWithMenu = require(Plugin.Src.Components.TableWithMenu)

	local theme = Theme.newDummyTheme()

	it("should create and destroy without errors", function()
		local element = Roact.createElement(ThemeProvider, {
			theme = theme,
		}, {
			table = Roact.createElement(TableWithMenu),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end