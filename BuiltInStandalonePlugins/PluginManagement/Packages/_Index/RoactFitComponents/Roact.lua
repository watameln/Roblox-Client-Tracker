--[[
    Package link auto-generated by manage_libraries and Rotriever
]]
local FFlagPluginManagementDeduplicatePackages = game:GetFastFlag("PluginManagementDeduplicatePackages")
if FFlagPluginManagementDeduplicatePackages then
    local PackageIndex = script.Parent.Parent.Parent._Index
    local Package = require(PackageIndex["Roact"]["Roact"])
    return Package
else
    local PackageIndex = script.Parent.Parent.Parent._Old

    if game:GetFastFlag("PluginManagementUseRoactv14") then
        return require(PackageIndex["roblox_roact"]["roact"])
    end

    return require(PackageIndex["Roact-e3b370a8-986c1d58"].Packages["Roact"])
end
