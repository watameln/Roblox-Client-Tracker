--[[
	Package link auto-generated by manage_libraries and Rotriever
]]

local FFlagGameSettingsDeduplicatePackages = game:GetFastFlag("GameSettingsDeduplicatePackages")
if FFlagGameSettingsDeduplicatePackages then
	local PackageIndex = script.Parent.Parent.Parent._Index
	local Package = require(PackageIndex["RoactRodux"]["RoactRodux"])
	return Package
else
	local PackageIndex = script.Parent.Parent.Parent._IndexOld
	return require(PackageIndex["RoactRodux"]["lib"])
end
