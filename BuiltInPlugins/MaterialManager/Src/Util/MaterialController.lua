local Plugin = script.Parent.Parent.Parent
local _Types = require(Plugin.Src.Types)
local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextItem = Framework.ContextServices.ContextItem
local Provider = Framework.ContextServices.Provider

local FrameworkUtil = Framework.Util
local Signal = FrameworkUtil.Signal

local Flags = Plugin.Src.Flags
local getFFlagMaterialServiceStringOverride = require(Flags.getFFlagMaterialServiceStringOverride)

local Util = Plugin.Src.Util
local getMaterialPath = require(Util.getMaterialPath)
local getMaterialType = require(Util.getMaterialType)

export type Category = {
	Builtin : boolean,
	Categories : _Types.Map<string, Category>,
	CategoryNames : _Types.Array<string>,
	Materials : _Types.Array<_Types.Material>,
}

local function recurseMaterials(category : Category, materialList : _Types.Array<_Types.Material>)
	for _, material in ipairs(category.Materials) do
		table.insert(materialList, material)
	end

	for _, categoryName in ipairs(category.CategoryNames) do
		recurseMaterials(category.Categories[categoryName], materialList)
	end
end

local MaterialController = ContextItem:extend("MaterialController")

function MaterialController.new(initialMaterialVariants : _Types.Array<MaterialVariant>, materialServiceWrapper : any)
	local self = setmetatable({
		_categoryChangedSignal = Signal.new(),
		_materialAddedSignal = Signal.new(),
		_materialRemovedSignal = Signal.new(),
		_materialChangedSignal = Signal.new(),
		_materialChangedListeners = {},

		_rootCategory = {
			Categories = {},
			CategoryNames = {},
			Materials = {},
		},
		_materialPaths = {},
		_materialWrappers = {},
		_materialServiceWrapper = materialServiceWrapper,
	}, MaterialController)

	self._materialServiceAdded = self._materialServiceWrapper:asInstance().DescendantAdded:Connect(function(instance)
		if instance:IsA("MaterialVariant") then
			self:addMaterial(instance, getMaterialPath(instance))
		end
	end)

	self._materialServiceRemoved = self._materialServiceWrapper:asInstance().DescendantRemoving:Connect(function(instance)
		if instance:IsA("MaterialVariant") then
			self:removeMaterial(instance)
		end
	end)

	for _, materialVariant in ipairs(initialMaterialVariants) do
		self:addMaterial(materialVariant, getMaterialPath(materialVariant))
	end

	for _, descendant in ipairs(self._materialServiceWrapper:asInstance():GetDescendants()) do
		if descendant:IsA("MaterialVariant") then
			self:addMaterial(descendant, getMaterialPath(descendant))
		end
	end

	return self
end

function MaterialController:createProvider(root)
	return Roact.createElement(Provider, {
		ContextItem = self,
	}, {root})
end

function MaterialController:destroy()
	self._materialServiceAdded:Disconnect()
	self._materialServiceRemoved:Disconnect()

	for materialIndex, materialListeners in ipairs(self._materialChangedListeners) do
		self._materialChangedListeners[materialIndex]:Disconnect()
		self._materialChangedListeners[materialIndex] = nil
	end
end

function MaterialController:getMaterialWrapper(material : MaterialVariant) : _Types.Material
	return {
		IsBuiltin = not material:IsDescendantOf(self._materialServiceWrapper:asInstance()),
		MaterialPath = getMaterialPath(material),
		MaterialType = getMaterialType(material.BaseMaterial),
		MaterialVariant = material,
	}
end

function MaterialController:getRootCategory() : Category
	return self._rootCategory
end

function MaterialController:addCategory(path : _Types.Path, builtin : boolean) : Category?
	return self:findCategory(path, builtin, true)
end

function MaterialController:findCategory(path : _Types.Path, builtin : boolean?, add : boolean?) : Category?
	assert(#path > 0 or not add, "Can't add root category")

	local category : Category = self._rootCategory
	local changed = false
	for _, directory in ipairs(path) do
		if category.Categories[directory] then
			category = category.Categories[directory]
		elseif add then
			changed = true

			category.Categories[directory] = {
				Builtin = builtin,
				Categories = {},
				CategoryNames = {},
				Materials = {},
			}
			table.insert(category.CategoryNames, directory)
			table.sort(category.CategoryNames)

			category = category.Categories[directory]
		else
			return nil
		end
	end

	if changed then
		self._categoryChangedSignal:Fire(path)
	end

	return category
end

function MaterialController:removeCategory(path : _Types.Path)
	-- TODO

	assert(false, "MaterialController does not currently support removing categories")
end

function MaterialController:moveCategory(source : _Types.Path, target : _Types.Path)
	-- TODO

	assert(false, "MaterialController does not currently support moving categories")
end

function MaterialController:getCategoriesChangedSignal() : RBXScriptSignal
	return self._categoryChangedSignal
end

function MaterialController:addMaterial(material : MaterialVariant)
	local path = getMaterialPath(material)
	local materialWrapper = self:getMaterialWrapper(material)
	local category = self:addCategory(path, materialWrapper.IsBuiltin)
	assert(category, "Category to which a Material is added should exist, or be created")
	table.insert(category.Materials, materialWrapper)

	self._materialPaths[material] = path
	self._materialWrappers[material] = materialWrapper
	-- If the way to categorize is changed, make it happen here
	assert(not self._materialChangedListeners[material], "Already connected to material changed")

	self._materialChangedListeners[material] = material.Changed:Connect(function(property)
		if property == "ColorMap" or property == "MetalnessMap" or property == "NormalMap" or property == "RoughnessMap" then
			self._materialChangedSignal:Fire(material)
		elseif property == "BaseMaterial" then
			self:moveMaterial(material)
			self._materialChangedSignal:Fire(material)
		elseif property == "Name" then
			self._materialChangedSignal:Fire(material)		
		end
	end)

	self._materialAddedSignal:Fire(path)
end

function MaterialController:removeMaterial(material : MaterialVariant)
	local path = self._materialPaths[material]
	assert(path, "Cannot remove material that does not exist")
	local category = self:findCategory(path)
	assert(category, "Cannot remove material from category that does not exist")

	for index, materialInfo in ipairs(category.Materials) do
		if materialInfo.MaterialVariant == material then
			table.remove(category.Materials, index)
			break
		end
	end

	self._materialPaths[material] = nil
	self._materialWrappers[material] = nil

	self._materialChangedListeners[material]:Disconnect()
	self._materialChangedListeners[material] = nil

	self._materialRemovedSignal:Fire(path)
end

function MaterialController:moveMaterial(material : MaterialVariant)
	assert(self._materialPaths[material], "Tried to move material that wasn't registered.")

	self:removeMaterial(material)
	self:addMaterial(material)
end

function MaterialController:getMaterial(material : MaterialVariant)
	return self._materialWrappers[material]
end

function MaterialController:getMaterials(path : _Types.Path) : _Types.Array<_Types.Material>
	local category = self:findCategory(path)
	assert(category, "Tried to get materials for path which does not exist")

	local materials = {}
	recurseMaterials(category, materials)

	return materials
end

function MaterialController:getMaterialOverride(material : Enum.Material) : string
	assert(getFFlagMaterialServiceStringOverride(), "Enable FFlagMaterialServiceStringOverride in order to use this functionality.")

	return self._materialServiceWrapper:asMaterialService():GetMaterialOverride(material)
end

function MaterialController:setMaterialOverride(material : Enum.Material, materialVariant : string?)
	assert(getFFlagMaterialServiceStringOverride(), "Enable FFlagMaterialServiceStringOverride in order to use this functionality.")

	self._materialServiceWrapper:asMaterialService():SetMaterialOverride(material, materialVariant or "")
end

function MaterialController:getPartOverride(material : Enum.Material) : MaterialVariant
	assert(not getFFlagMaterialServiceStringOverride(), "getPartOverride is deprecated, please use getMaterialOverride.")

	return self._materialServiceWrapper:asMaterialService():GetOverridePartMaterial(material)
end

function MaterialController:getTerrainOverride(material : Enum.Material) : MaterialVariant
	assert(not getFFlagMaterialServiceStringOverride(), "getTerrainOverride is deprecated, please use getMaterialOverride.")

	return self._materialServiceWrapper:asMaterialService():GetOverrideTerrainMaterial(material)
end

function MaterialController:setPartOverride(material : Enum.Material, materialVariant : MaterialVariant?)
	assert(not getFFlagMaterialServiceStringOverride(), "setPartOverride is deprecated, please use setMaterialOverride.")

	if materialVariant then
		self._materialServiceWrapper:asMaterialService():SetOverridePartMaterial(materialVariant)
	else
		self._materialServiceWrapper:asMaterialService():ClearOverridePartMaterial(material)
	end
end

function MaterialController:setTerrainOverride(material : Enum.Material, materialVariant : MaterialVariant?)
	assert(not getFFlagMaterialServiceStringOverride(), "setTerrainOverride is deprecated, please use setMaterialOverride.")

	if materialVariant then
		self._materialServiceWrapper:asMaterialService():SetOverrideTerrainMaterial(materialVariant)
	else
		self._materialServiceWrapper:asMaterialService():ClearOverrideTerrainMaterial(material)
	end
end

function MaterialController:getMaterialAddedSignal() : RBXScriptSignal
	return self._materialAddedSignal
end

function MaterialController:getMaterialRemovedSignal() : RBXScriptSignal
	return self._materialRemovedSignal
end

function MaterialController:getMaterialChangedSignal() : RBXScriptSignal
	return self._materialChangedSignal
end

return MaterialController
