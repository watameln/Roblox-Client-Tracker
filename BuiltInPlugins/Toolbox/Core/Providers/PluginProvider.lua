local Plugin = script.Parent.Parent.Parent

local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Libs
if FFlagToolboxDeduplicatePackages then
	Libs = Plugin.Packages
else
	Libs = Plugin.Libs
end
local Roact = require(Libs.Roact)

local Keys = require(Plugin.Core.Util.Keys)

local PluginProvider = Roact.PureComponent:extend("PluginProvider")

function PluginProvider:init(props)
	self._context[Keys.plugin] = props.plugin
	self._context[Keys.pluginGui] = props.pluginGui
end

function PluginProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

return PluginProvider
