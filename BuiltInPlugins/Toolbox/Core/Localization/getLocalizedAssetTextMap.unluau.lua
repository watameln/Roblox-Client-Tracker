-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("Toolbox").Core.Flags.getFFlagToolboxAddNewUGCAssetTypes)
return function(arg1)
   Enum.AssetType.Model = arg1:getText("General", "AssetTypeModel")
   Enum.AssetType.Decal = arg1:getText("General", "AssetTypeDecal")
   Enum.AssetType.Mesh = arg1:getText("General", "AssetTypeMesh")
   Enum.AssetType.Audio = arg1:getText("General", "AssetTypeAudio")
   Enum.AssetType.Hat = arg1:getText("General", "AssetTypeHat")
   Enum.AssetType.TShirt = arg1:getText("General", "AssetTypeTeeShirt")
   Enum.AssetType.Shirt = arg1:getText("General", "AssetTypeShirt")
   Enum.AssetType.Pants = arg1:getText("General", "AssetTypePants")
   Enum.AssetType.Plugin = arg1:getText("General", "AssetTypePlugin")
   Enum.AssetType.HairAccessory = arg1:getText("General", "AssetTypeHairAccessory")
   Enum.AssetType.FaceAccessory = arg1:getText("General", "AssetTypeFaceAccessory")
   Enum.AssetType.NeckAccessory = arg1:getText("General", "AssetTypeNeckAccessory")
   Enum.AssetType.ShoulderAccessory = arg1:getText("General", "AssetTypeShoulderAccessory")
   Enum.AssetType.FrontAccessory = arg1:getText("General", "AssetTypeFrontAccessory")
   Enum.AssetType.BackAccessory = arg1:getText("General", "AssetTypeBackAccessory")
   Enum.AssetType.WaistAccessory = arg1:getText("General", "AssetTypeWaistAccessory")
   Enum.AssetType.TShirtAccessory = arg1:getText("General", "AssetTypeTShirtAccessory")
   Enum.AssetType.ShirtAccessory = arg1:getText("General", "AssetTypeShirtAccessory")
   Enum.AssetType.PantsAccessory = arg1:getText("General", "AssetTypePantsAccessory")
   Enum.AssetType.JacketAccessory = arg1:getText("General", "AssetTypeJacketAccessory")
   Enum.AssetType.SweaterAccessory = arg1:getText("General", "AssetTypeSweaterAccessory")
   Enum.AssetType.ShortsAccessory = arg1:getText("General", "AssetTypeShortsAccessory")
   Enum.AssetType.LeftShoeAccessory = arg1:getText("General", "AssetTypeLeftShoeAccessory")
   Enum.AssetType.RightShoeAccessory = arg1:getText("General", "AssetTypeRightShoeAccessory")
   Enum.AssetType.DressSkirtAccessory = arg1:getText("General", "AssetTypeDressSkirtAccessory")
   if var0() then
      Enum.AssetType.Torso = arg1:getText("General", "AssetTypeTorso")
      Enum.AssetType.RightArm = arg1:getText("General", "AssetTypeRightArm")
      Enum.AssetType.LeftArm = arg1:getText("General", "AssetTypeLeftArm")
      Enum.AssetType.LeftLeg = arg1:getText("General", "AssetTypeLeftLeg")
      Enum.AssetType.RightLeg = arg1:getText("General", "AssetTypeRightLeg")
      Enum.AssetType.DynamicHead = arg1:getText("General", "AssetTypeDynamicHead")
      Enum.AssetType.EyebrowAccessory = arg1:getText("General", "AssetTypeEyebrowAccessory")
      Enum.AssetType.EyelashAccessory = arg1:getText("General", "AssetTypeEyelashAccessory")
   end
   return {}
end
