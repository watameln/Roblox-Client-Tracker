--[[
	Package link auto-generated by manage_libraries and Rotriever
]]
local FFlagDeveloperStorybookDeduplicatePackages = game:GetFastFlag("DeveloperStorybookDeduplicatePackages")
if FFlagDeveloperStorybookDeduplicatePackages then
	local PackageIndex = script.Parent.Parent.Parent._Index
	local Package = require(PackageIndex["roblox_infinite-scroller"]["infinite-scroller"])
	return Package
else
	local PackageIndex = script.Parent.Parent.Parent._IndexOld
	return require(PackageIndex["roblox_infinite-scroller"]["infinite-scroller"])
end

