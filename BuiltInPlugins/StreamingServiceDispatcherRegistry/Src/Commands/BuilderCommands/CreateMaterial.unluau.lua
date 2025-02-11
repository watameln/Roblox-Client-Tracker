-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("MaterialGenerationService")
local var1 = game:GetService("MaterialService")
local var2 = game:GetService("ChatbotUIService")
local var3 = script.Parent.Parent.Parent.Parent
local var4 = require(var3.Packages.Promise)
local var5 = require(var3.Packages.Dash)
local var6 = require(var3.Src.Utils.Utils)
local var7 = require(var3.Src.Types)
local var8 = require(var3.Src.Localization.Localization)
local var9 = game:GetFastFlag("MaterialGenErrorTextFiltered")
local var10 = require(script.Parent.BuilderNameMap)
local function var11(arg1)
   local var0 = var5.collectSet(var1:GetDescendants(), function(arg1, arg2)
      if arg2:IsA("MaterialVariant") then
         return arg2.Name
      end
      return nil
   end)
   if not var0[arg1] then
      return arg1
   end
   local var1 = 1
   local var2 = arg1
   local var3 = var2 ... var1
   while var0[var3] do
      local var0 = var1 + 1
   end
   var3 = arg1
   var2 = var1
   return var3 ... var2
end

local function fun0(arg1, arg2)
   if type(arg1) == "string" then
      local var0 = false
   end
   assert(true, "Bad materialDescription")
   if type(arg2) == "number" then
      local var0 = false
   end
   assert(true, "Bad amount")
   return var4.try(function(arg1, arg2)
      if arg2:IsA("MaterialVariant") then
         return arg2.Name
      end
      return nil
   end)
end

local function fun1(arg1)
   if type(arg1) == "table" then
      local var0 = false
   end
   assert(true, "Bad materials")
   return var4.try(function(arg1, arg2)
      if arg2:IsA("MaterialVariant") then
         return arg2.Name
      end
      return nil
   end)
end

local function fun2(arg1, arg2)
   local var0 = arg1:FindFirstChild(arg2)
   if var0 then
      return var0
   end
   local var1 = Instance.new("Folder")
   var1.Name = arg2
   var1.Parent = arg1
   return var1
end

local function fun3(arg1)
   return string.format("studio://apply_material_variant/%s", arg1)
end

local function fun4(arg1)
   return string.format("![](image://instance/%s) %s", arg1.ClassName, arg1.Name)
end

local function var12(arg1, arg2, arg3, arg4, arg5)
   local var277 = {}
   var277.baseMaterial = tostring(arg3)
   var277.description = tostring(arg2)
   local var286 = tostring(arg5)
   var277.materialPattern = var286
   var286 = var8:getText("CreateMaterial", "Description", var277)
   var6.streamText(arg1.requestId, string.format("\n%s\n", var286))
   if type(arg2) == "string" then
      local var0 = false
   end
   assert(true, "Bad materialDescription")
   assert(true, "Bad amount")
   local var307 = 4
   return var4.try(function(arg1, arg2)
      if arg2:IsA("MaterialVariant") then
         return arg2.Name
      end
      return nil
   end):andThen(function(arg1)
      local var0 = var5.collectSet(var1:GetDescendants(), function(arg1, arg2)
         if arg2:IsA("MaterialVariant") then
            return arg2.Name
         end
         return nil
      end)
      if not var0[arg1] then
         return arg1
      end
      local var1 = 1
      local var2 = arg1
      local var3 = var2 ... var1
      while var0[var3] do
         local var0 = var1 + 1
      end
      var3 = arg1
      var2 = var1
      return var3 ... var2
   end)
end

local function fun5(arg1, arg2, arg3, arg4, arg5)
   return var12(arg1, arg2, arg3, arg4, arg5)
end

return function(arg1)
   local var0 = arg1.arguments
   local var356 = type(var0.materialDescription)
   if var356 == "string" then
      local var0 = false
   end
   assert(true, "Bad request.materialDescription")
   var0.materialId = var0.materialId or var0.instanceId
   var10.StartRecordingActions(arg1.requestId)
   local var1 = var0.materialDescription
   local var2 = var0.materialPattern
   if not var12(arg1, var1, var0.baseMaterial, var0.materialId, var2):await() then
      local var0 = var8:getText("CreateMaterial", "FailedToCreateMaterialImprovedError", {})
      if var9 then
         if string.find(tostring(var1), "text is fully filtered") then
            var0 = var8:getText("CreateMaterial", "FailedToCreateMaterialTextFilteredError", {})
         end
      end
      var6.streamText(arg1.requestId, string.format("\n%s\n", var0))
      var10.EndRecordingActions(arg1.requestId)
   end
   if var0.materialId then
      var2 = var1
      var10.set(var0.materialId, var2)
   end
   var10.EndRecordingActions(arg1.requestId)
end
