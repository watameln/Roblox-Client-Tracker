-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = Vector2.new(400, 217)
local var1 = Vector2.new(120, 32)
local var2 = script.Parent.Parent.Parent
local var3 = require(var2.Packages.Roact)
local var4 = require(var2.Packages.Cryo)
local var5 = require(var2.Src.Constants.PluginInstalledStatus)
local var6 = require(var2.Packages.Framework)
local var7 = var6.ContextServices
local var8 = var7.Localization
local var9 = var6.UI.StyledDialog
local var10 = var3.PureComponent:extend("InstallationDialog")
function var10.init(arg1)
   local var0 = {}
   var0.hasDataLoaded = false
   arg1.state = var0
end

function var10.didUpdate(arg1)
   if arg1.props.info.installStatus == "state" then
      local var0 = false
   end
   if arg1.state.hasDataLoaded == "props" then
      local var0 = false
   end
   if true then
      if true then
         spawn(function(arg1)
            local var0 = {}
            var0.hasDataLoaded = false
            arg1.state = var0
         end)
      end
   end
end

local function fun4(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props
   var1 = arg1.state.hasDataLoaded
   if var1 then
      local var137 = {}
      var137.Title = var0:getText("DialogTitle", "InstallPlugin")
      local var143 = {}
      var143.Key = true
      var143.Text = var0:getText("Dialog", "Ok")
      var143.Style = "RoundPrimary"
      var137.Buttons = {}
      var137.Resizable = false
      var137.MinContentSize = Vector2.new(400, 120)
      var137.OnButtonPressed = var1.OnButtonClicked
      var137.OnClose = arg1.props.OnClose
      local var1 = var3.createElement(var9, var137, arg1.props[var3.Children])
   end
   return var1
end

function var10.render(arg1)
   local var0 = arg1.props.Localization
   local var1 = arg1.props
   var1 = arg1.state.hasDataLoaded
   if var1 then
      local var137 = {}
      var137.Title = var0:getText("DialogTitle", "InstallPlugin")
      local var143 = {}
      var143.Key = true
      var143.Text = var0:getText("Dialog", "Ok")
      var143.Style = "RoundPrimary"
      var137.Buttons = {}
      var137.Resizable = false
      var137.MinContentSize = Vector2.new(400, 120)
      var137.OnButtonPressed = var1.OnButtonClicked
      var137.OnClose = arg1.props.OnClose
      local var1 = var3.createElement(var9, var137, arg1.props[var3.Children])
   end
   return var1
end

fun4 = var7.withContext
local var160 = {}
var160.Localization = var7.Localization
var10 = fun4(var160)(var10)
return require(var2.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.info = arg1.PluginInfo.plugins[arg2.pluginId]
   return var0
end)(var10)
