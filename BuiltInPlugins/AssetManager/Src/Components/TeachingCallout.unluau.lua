-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = var1.PureComponent:extend("TeachingCallout")
function var2.init(arg1)
   arg1.targetRef = var1.createRef()
end

function var2.didMount(arg1)
   arg1._isMounted = true
   spawn(function(arg1)
      arg1.targetRef = var1.createRef()
   end)
end

function var2.willUnmount(arg1)
   arg1._isMounted = false
   if arg1._attachedDefinitionId then
      arg1.props.CalloutController:detachCalloutsByDefinitionId(arg1._attachedDefinitionId)
   end
end

local function fun42(arg1)
   local var0 = arg1.props.Offset or Vector2.new(0, 0)
   local var1708 = {}
   var1708.BackgroundTransparency = 1
   var1708.Position = UDim2.new(0, var0.X, 0, var0.Y)
   var1708.Size = UDim2.new(1, 0, 1, 0)
   var1.Ref = arg1.targetRef
   return var1.createElement("Frame", var1708)
end

function var2.render(arg1)
   local var0 = arg1.props.Offset or Vector2.new(0, 0)
   local var1708 = {}
   var1708.BackgroundTransparency = 1
   var1708.Position = UDim2.new(0, var0.X, 0, var0.Y)
   var1708.Size = UDim2.new(1, 0, 1, 0)
   var1.Ref = arg1.targetRef
   return var1.createElement("Frame", var1708)
end

fun42 = require(var0.Packages.Framework).ContextServices.withContext
local var1726 = {}
var1726.CalloutController = require(var0.Src.Util.CalloutController)
var2 = fun42(var1726)(var2)
return var2
