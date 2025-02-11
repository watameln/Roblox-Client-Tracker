-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var0.Core.Util.Constants)
local var4 = require(var1.Framework).ContextServices
local var5 = require(var0.Core.Components.DropdownMenu)
local var6 = var2.PureComponent:extend("AssetTypeSelector")
function var6.init(arg1, arg2)
   function arg1.onItemClicked(arg1)
      local var1031 = {}
      var1031.dropDownIndex = arg1
      arg1:setState(var1031)
      if arg1.props.assetTypeEnum ~= Enum.AssetType.Plugin then
         if arg1.props.assetTypeEnum == "setState" then
            if arg1.props.onAssetTypeSelected then
               arg1.props.onAssetTypeSelected(arg1.props.assetTypeEnum)
               if arg1.props.onAssetTypeSelected then
                  local var0 = arg1.props.items[arg1]
                  if var0 then
                     if var0.type then
                        arg1.props.onAssetTypeSelected(var0.type)
                     end
                  end
               end
            end
         end
      end
      if arg1.props.onAssetTypeSelected then
         arg1.props.onAssetTypeSelected(arg1.props.assetTypeEnum)
         if arg1.props.onAssetTypeSelected then
            local var0 = arg1.props.items[arg1]
            if var0 then
               if var0.type then
                  arg1.props.onAssetTypeSelected(var0.type)
               end
            end
         end
      end
   end
   
   arg1.onItemClicked(arg1:getFirstSelectableIndex())
end

function var6.getFirstSelectableIndex(arg1)
   local var0 = 1
   local var1 = arg1.props.items
   local var2 = 1
   if arg1.props.items[var0].selectable then
      return var0
   end
end

local function fun13(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var1103 = {}
   var1103.BackgroundTransparency = 1
   var1103.Size = UDim2.new(0, var0.width, 0, var0.height)
   var1103.Position = var0.Position
   var1103.Active = true
   local var1113 = {}
   local var1117 = {}
   var1117.BackgroundTransparency = 1
   var1117.Position = UDim2.new(0, 0, 0, 65508)
   var1117.Size = UDim2.new(1, 0, 0, 24)
   var1117.TextColor3 = var1.typeSelection.selector.title
   var1117.TextSize = 16
   var1117.Font = var3.FONT
   var1117.Text = "Choose asset type"
   var1117.TextXAlignment = Enum.TextXAlignment.Left
   var1113.Title = var2.createElement("TextLabel", var1117)
   local var1143 = {}
   var1143.Position = UDim2.new(0.5, var0.width / 2, 0, 0)
   var1143.Size = UDim2.new(1, 0, 1, 0)
   var1143.selectedDropDownIndex = arg1.state.dropDownIndex
   var1143.visibleDropDOwnCount = 5
   var1143.items = arg1.props.items
   var1143.rowHeight = 24
   var1143.fontSize = 20
   var1143.onItemClicked = arg1.onItemClicked
   var1113.Dropdown = var2.createElement(var5, var1143)
   local var1169 = {}
   var1169.BackgroundTransparency = 1
   var1169.Position = UDim2.new(0, 0, 1, 0)
   var1169.Size = UDim2.new(1, 0, 0, 18)
   var1169.TextColor3 = var1.typeSelection.selector.description
   var1169.TextSize = 12
   var1169.Font = var3.FONT
   var1169.Text = "Once published, this model can be shared in Marketplace"
   var1169.TextXAlignment = Enum.TextXAlignment.Left
   var1113.Description = var2.createElement("TextLabel", var1169)
   return var2.createElement("Frame", var1103, var1113)
end

function var6.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var1103 = {}
   var1103.BackgroundTransparency = 1
   var1103.Size = UDim2.new(0, var0.width, 0, var0.height)
   var1103.Position = var0.Position
   var1103.Active = true
   local var1113 = {}
   local var1117 = {}
   var1117.BackgroundTransparency = 1
   var1117.Position = UDim2.new(0, 0, 0, 65508)
   var1117.Size = UDim2.new(1, 0, 0, 24)
   var1117.TextColor3 = var1.typeSelection.selector.title
   var1117.TextSize = 16
   var1117.Font = var3.FONT
   var1117.Text = "Choose asset type"
   var1117.TextXAlignment = Enum.TextXAlignment.Left
   var1113.Title = var2.createElement("TextLabel", var1117)
   local var1143 = {}
   var1143.Position = UDim2.new(0.5, var0.width / 2, 0, 0)
   var1143.Size = UDim2.new(1, 0, 1, 0)
   var1143.selectedDropDownIndex = arg1.state.dropDownIndex
   var1143.visibleDropDOwnCount = 5
   var1143.items = arg1.props.items
   var1143.rowHeight = 24
   var1143.fontSize = 20
   var1143.onItemClicked = arg1.onItemClicked
   var1113.Dropdown = var2.createElement(var5, var1143)
   local var1169 = {}
   var1169.BackgroundTransparency = 1
   var1169.Position = UDim2.new(0, 0, 1, 0)
   var1169.Size = UDim2.new(1, 0, 0, 18)
   var1169.TextColor3 = var1.typeSelection.selector.description
   var1169.TextSize = 12
   var1169.Font = var3.FONT
   var1169.Text = "Once published, this model can be shared in Marketplace"
   var1169.TextXAlignment = Enum.TextXAlignment.Left
   var1113.Description = var2.createElement("TextLabel", var1169)
   return var2.createElement("Frame", var1103, var1113)
end

fun13 = var4.withContext
local var1193 = {}
var1193.Stylizer = var4.Stylizer
var6 = fun13(var1193)(var6)
return var6
