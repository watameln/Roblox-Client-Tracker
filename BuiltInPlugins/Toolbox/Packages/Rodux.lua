--[[
	Package link auto-generated by manage_libraries and Rotriever
]]
local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
if not FFlagToolboxDeduplicatePackages then
	error("Using wrong version of Rodux in Toolbox when FFlagToolboxDeduplicatePackages is False. Should use Libs.Rodux")
end
local PackageIndex = script.Parent._Index
local Package = require(PackageIndex["roblox_rodux"]["rodux"])
return Package