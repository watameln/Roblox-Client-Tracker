-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Types.Category)
local var2 = require(var0.Core.Util.Constants)
local var3 = {}
function var3.getAssetSize(arg1)
   local var0 = nil
   local var641 = var1
   var641 = arg1
   if var641.shouldShowPrices(var641) then
      var0 = UDim2.new(0, var2.ASSET_WIDTH_NO_PADDING, 0, var2.ASSET_HEIGHT + var2.PRICE_HEIGHT)
      return var0
   end
   var0 = UDim2.new(0, var2.ASSET_WIDTH_NO_PADDING, 0, var2.ASSET_HEIGHT)
   return var0
end

return var3
