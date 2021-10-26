--[[
	Mounts and unmounts the Roact tree.
	Runs on DataModel load.
]]

if not plugin then
	return
end

-- TODO DEVTOOLS-4481: The DevFramework Flags util has a bug triggers the assert for missing
-- flags in NoOpt/Debug. When that is fixed this template should be updated to use it.
require(script.Parent.defineFlags)

local FFlagEnable9SliceEditor = game:GetFastFlag("Enable9SliceEditor")
local FFlagDevFrameworkAddEnumerateToUtil = game:GetFastFlag("DevFrameworkAddEnumerateToUtil")

local ok, hasInternalPermission = pcall(function()
	return game:GetService("StudioService"):HasInternalPermission()
end)

if not ok or not hasInternalPermission then
	return
end

if not (FFlagEnable9SliceEditor and FFlagDevFrameworkAddEnumerateToUtil) then
	return
end

local main = script.Parent.Parent
local DebugFlags = require(main.Src.Util.DebugFlags)
if DebugFlags.RunningUnderCLI() then
	return
end

local commonInit = require(script.Parent.commonInit)
commonInit()

local Roact = require(main.Packages.Roact)
local Framework = require(main.Packages.Framework)

local MainPlugin = require(main.Src.MainPlugin)

-- Allows connecton to the Developer Inspector for internal engineers
local inspector
local handle

if hasInternalPermission then
	inspector = Framework.DeveloperTools.forPlugin(main.Name, plugin)
end

local function init()
	plugin.Name = main.Name

	local mainPlugin = Roact.createElement(MainPlugin, {
		Plugin = plugin,
	})

	handle = Roact.mount(mainPlugin)

	if inspector then
		inspector:addRoactTree("Roact tree", handle)
	end
end

plugin.Unloading:Connect(function()
	if inspector then
		inspector:destroy()
	end

	if handle then
		Roact.unmount(handle)
		handle = nil
	end
end)

init()
