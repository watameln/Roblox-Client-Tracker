-- This installer allows us to run UGC validation on assets in game servers.
local AssetService = game:GetService("AssetService")
local CorePackages = game:GetService("CorePackages")
local UGCValidationService = game:GetService("UGCValidationService")
local UGCValidation = require(CorePackages.UGCValidation)
local FFlagMoveUGCValidationFunction = game:DefineFastFlag("MoveUGCValidationFunctionFeature", false) and game:GetEngineFeature("MoveUGCValidationFromAssetService")
local EngineFeatureUGCValidateEditableMeshAndImage = game:GetEngineFeature("EngineUGCValidateEditableMeshAndImage")
local EngineUGCValidationCallbackResultStrings = game:GetEngineFeature("EngineUGCValidationCallbackResultStrings")

local function UGCValidationFunction(args)
    local objectInstances = args["instances"]
    local assetTypeEnum = args["assetType"]
    local isServer = args["isServer"]
    local fullBodyData = args["fullBodyData"]
    local allowUnreviewedAssets = args["allowUnreviewedAssets"]
    local restrictedUserIds = args["restrictedUserIds"]
    local token = args["token"]
    local universeId = args["universeId"]

    local bypassFlags = {
        skipSnapshot = true,
    }

    local success, reasons

    if FFlagMoveUGCValidationFunction then
        if fullBodyData then
            success, reasons = UGCValidation.validateFullBody(fullBodyData, isServer, EngineFeatureUGCValidateEditableMeshAndImage --[[allowEditableInstances]])
        else
            success, reasons = UGCValidation.validate(objectInstances, assetTypeEnum, isServer, allowUnreviewedAssets, restrictedUserIds, token, universeId, EngineFeatureUGCValidateEditableMeshAndImage --[[allowEditableInstances]], bypassFlags)
        end
    else
        success, reasons = UGCValidation.validate(objectInstances, assetTypeEnum, isServer, allowUnreviewedAssets, restrictedUserIds, token)
    end

    if not success then
        if EngineUGCValidationCallbackResultStrings then
            return false, reasons
        else
            local failureReasonStr = ""
            if reasons then
                failureReasonStr = table.concat(reasons, "\n")
            end
            return false, failureReasonStr :: any
        end
    end

    if EngineUGCValidationCallbackResultStrings then
        return true, { "Success" }
    else
        return true, "Success" :: any
    end
end

local function Install()
    -- Exposes the Lua-side UGC validation scripts to the game-engine code
    -- so that we can trigger UGC validation of any asset from RCC game servers.
    if FFlagMoveUGCValidationFunction then
        UGCValidationService:RegisterUGCValidationFunction(UGCValidationFunction)
    else
        AssetService:RegisterUGCValidationFunction(UGCValidationFunction)
    end
end

return Install
