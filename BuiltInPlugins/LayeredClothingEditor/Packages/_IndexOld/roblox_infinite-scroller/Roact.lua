--[[
	Package link auto-generated by manage_libraries and Rotriever
]]
local FFlagLayeredClothingEditorDeduplicatePackages = game:GetFastFlag("LayeredClothingEditorDeduplicatePackages")
if FFlagLayeredClothingEditorDeduplicatePackages then
	local PackageIndex = script.Parent.Parent.Parent._Index
	local Package = require(PackageIndex["Roact"]["Roact"])
	return Package
else
	local PackageIndex = script.Parent.Parent.Parent._IndexOld
	return require(PackageIndex["Roact"]["Roact"])
end
