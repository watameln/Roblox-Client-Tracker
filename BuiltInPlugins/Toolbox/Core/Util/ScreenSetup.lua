local Plugin = script.Parent.Parent.Parent
local Util = Plugin.Core.Util
local convertArrayToTable = require(Util.convertArrayToTable)
local AssetConfigConstants = require(Util.AssetConfigConstants)

local ScreenSetup = {}

local FFlagEnablePurchasePluginFromLua2 = settings():GetFFlag("EnablePurchasePluginFromLua2")

ScreenSetup.keys = convertArrayToTable({
	"SHOW_SALES_TAB",
	"SHOW_VERSIONS_TAB",
	"SHOW_OWNERSHIP",
	"SHOW_GENRE",
	"SHOW_COPY",
	"SHOW_COMMENT",
	"SHOW_ASSET_TYPE",
	"SHOW_OVERRIDE_BUTTON",
	"SHOW_SALE", -- For marketplace asset, we put sales along with creator
	"SHOW_PRICE",
	"SHOW_PERMISSIONS", -- For Packages if and only if the current user is the Package Owner.
})

local AssetCategory = {
	Marketplace = {},
	Catalog = {}
}

local keys = ScreenSetup.keys
-- Sorted alphabetically
local params = {
	[AssetConfigConstants.FLOW_TYPE.EDIT_FLOW] = {
		[AssetCategory.Marketplace] = {
			[keys.SHOW_COMMENT] = true,
			[keys.SHOW_COPY] = true,
			[keys.SHOW_GENRE] = true,
			[keys.SHOW_OWNERSHIP] = true,
			[keys.SHOW_PRICE] = false,
			[keys.SHOW_SALE] = false,
			[keys.SHOW_VERSIONS_TAB] = true,
		},
		[AssetCategory.Catalog] = {
			[keys.SHOW_ASSET_TYPE] = true,
			[keys.SHOW_SALES_TAB] = true,
		},
	},

	[AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW] = {
		[AssetCategory.Marketplace] = {
			[keys.SHOW_COMMENT] = true,
			[keys.SHOW_COPY] = true,
			[keys.SHOW_GENRE] = true,
			[keys.SHOW_OVERRIDE_BUTTON] = true,
			[keys.SHOW_OWNERSHIP] = true,
			[keys.SHOW_PRICE] = false,
			[keys.SHOW_SALE] = false,
			[keys.SHOW_VERSIONS_TAB] = false,
		},
		[AssetCategory.Catalog] = {
			[keys.SHOW_ASSET_TYPE] = true,
		},
	}
}

-- Some assets need to override the default setting for publishing and editing asset. In this case, plugin need to
-- override those.
-- We will first check if we have defined override behavior in this table. If it's defined here, we will be using those value first.
-- everything else falls into default behavoir.
local assetTypeOverride = {
	[Enum.AssetType.Plugin] = {
		[AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW] = {
			[keys.SHOW_ASSET_TYPE] = true,
			[keys.SHOW_COMMENT] = false,
			[keys.SHOW_GENRE] = false,
			[keys.SHOW_PRICE] = true,
			[keys.SHOW_SALE] = true,
		}
	}
}

function ScreenSetup.queryParam(flowType, assetTypeEnum, paramKey)
	local assetCategoryType = AssetConfigConstants.isCatalogAsset(assetTypeEnum) and AssetCategory.Catalog or AssetCategory.Marketplace
	local defaultValue = params[flowType][assetCategoryType][paramKey] or false

	if not FFlagEnablePurchasePluginFromLua2 then return defaultValue end
	if not assetTypeOverride[assetTypeEnum] then return defaultValue end
	if not assetTypeOverride[assetTypeEnum][AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW] then return defaultValue end
	if assetTypeOverride[assetTypeEnum][AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW][paramKey] == nil then return defaultValue end

	return assetTypeOverride[assetTypeEnum][AssetConfigConstants.FLOW_TYPE.UPLOAD_FLOW][paramKey]
end

return ScreenSetup