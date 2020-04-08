local Plugin = script.Parent.Parent.Parent

local Players = game:GetService("Players")

local GetRootTreeViewInstance = require(Plugin.Src.Thunks.GetRootTreeViewInstance)

local SetAssetPreviewData = require(Plugin.Src.Actions.SetAssetPreviewData)
local SetAssetOwnerName = require(Plugin.Src.Actions.SetAssetOwnerName)

return function(apiImpl, assetIds)
    return function(store)
        apiImpl.Develop.V1.Assets.assets(assetIds):makeRequest()
        :andThen(function(response)
            local body = response.responseBody
            if not body or #body.data == 0 then
                return
            end

            local assetPreviewData = {}
            for _, assetData in ipairs(body.data) do
                local assetId = assetData.id
                local userId = assetData.creator.targetId
                assetPreviewData[assetId] = {
                    Asset = {
                        Id = assetData.id,
                        Type = assetData.type,
                        TypeId = assetData.typeId,
                        Name = assetData.name,
                        Description = assetData.description,
                        AssetGenres = assetData.genres,
                        Created = assetData.created,
                        Updated = assetData.updated,
                    },
                    Creator = {
                        Type = assetData.creator.type,
                        TypeId = assetData.creator.typeId,
                        TargetId = assetData.creator.targetId,
                    },
                }
                spawn(function()
                    local username = Players:GetNameFromUserIdAsync(userId)
                    if username then
                        store:dispatch(SetAssetOwnerName(assetId, username))
                    end
                end)

                store:dispatch(GetRootTreeViewInstance(assetId, assetData.typeId))
            end

            store:dispatch(SetAssetPreviewData(assetPreviewData))
            return response
        end, function()
            error("Failed to load data for Asset Preview")
        end)
    end
end