-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Src.Types)
local var2 = require(var0.Src.Util.createUnimplemented)
local var3 = {}
local var18 = {}
var3.equippedItems = var18
var18 = var2
local var20 = var18("addEquippedItem")
var3.addEquippedItem = var20
var20 = var2
local var22 = var20("removeEquippedItem")
var3.removeEquippedItem = var22
var22 = var2
local var24 = var22("removeAllEquippedItems")
var3.removeAllEquippedItems = var24
var24 = var2
local var26 = var24("moveEquippedItemsToIndex")
var3.moveEquippedItemsToIndex = var26
var26 = var2
var3.DEPRECATED_swapEquippedItemsByIndex = var26("DEPRECATED_swapEquippedItemsByIndex")
local var29 = {}
var29.accessories = {}
var29.animation = nil
var29.clothing = {}
var29.emotion = nil
local var34 = {}
var29.patches = var34
var3.avatarAssets = var29
var34 = var3
return require(var0.Packages.React).createContext(var34)
