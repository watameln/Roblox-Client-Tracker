local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)

local Types = require(root.util.Types)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local function validateMisMatchUV(
	innerCageMeshInfo: Types.MeshInfo,
	outerCageMeshInfo: Types.MeshInfo
): (boolean, { string }?)
	local success, result
	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		success, result = pcall(function()
			return UGCValidationService:ValidateEditableMeshMisMatchUV(
				innerCageMeshInfo.editableMesh,
				outerCageMeshInfo.editableMesh
			)
		end)
	else
		success, result = pcall(function()
			return UGCValidationService:ValidateMisMatchUV(innerCageMeshInfo.contentId, outerCageMeshInfo.contentId)
		end)
	end

	if not success then
		Analytics.reportFailure(Analytics.ErrorType.validateMisMatchUV_FailedToExecute)
		return false, { "Failed to execute validateMisMatchUV check" }
	end

	if not result then
		Analytics.reportFailure(Analytics.ErrorType.validateMisMatchUV_UVMismatch)
		return false,
			{
				"Inner and Outer cage UV mismatched. Original cage template should be used and no modification to the UV map.",
			}
	end

	return true
end

local function DEPRECATED_validateMisMatchUV(innerCageMeshId: string, outerCageMeshId: string): (boolean, { string }?)
	local success, result = pcall(function()
		return UGCValidationService:ValidateMisMatchUV(innerCageMeshId, outerCageMeshId)
	end)

	if not success then
		Analytics.reportFailure(Analytics.ErrorType.validateMisMatchUV_FailedToExecute)
		return false, { "Failed to execute validateMisMatchUV check" }
	end

	if not result then
		Analytics.reportFailure(Analytics.ErrorType.validateMisMatchUV_UVMismatch)
		return false,
			{
				"Inner and Outer cage UV mismatched. Original cage template should be used and no modification to the UV map.",
			}
	end

	return true
end

return if getFFlagUseUGCValidationContext() then validateMisMatchUV else DEPRECATED_validateMisMatchUV :: never
