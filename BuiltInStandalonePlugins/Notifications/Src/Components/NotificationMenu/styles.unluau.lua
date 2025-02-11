-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework).Styling.createStyleRule
local var2 = require(var0.Src.Components.NotificationMenu.constants)
local var19 = {}
var19.BackgroundColor3 = "$BackgroundPaper"
local var24 = {}
var24.CornerRadius = UDim.new(0, 4)
local var3 = var1("::UICorner", var24)
local var32 = {}
var32.BackgroundColor3 = "$SecondaryMain"
local var37 = {}
var37.CornerRadius = UDim.new(0, 4)
local var5 = var1("::UICorner", var37)
local var45 = {}
var45.FillDirection = Enum.FillDirection.Vertical
var45.HorizontalAlignment = Enum.HorizontalAlignment.Left
var45.SortOrder = Enum.SortOrder.LayoutOrder
var45.VerticalAlignment = Enum.VerticalAlignment.Top
local var6 = var1("::UIListLayout", var45)
local var53 = {}
var53.BorderSizePixel = 0
var53.Font = var2.TEXT_FONT
var53.TextSize = var2.TEXT_SIZE
var53.TextTruncate = Enum.TextTruncate.AtEnd
var53.TextWrapped = true
var53.TextXAlignment = Enum.TextXAlignment.Left
var53.TextYAlignment = Enum.TextYAlignment.Center
var53.TextColor3 = "$TextPrimary"
var53.BackgroundColor3 = "$SecondaryMain"
local var66 = {}
var66.CornerRadius = UDim.new(0, 4)
local var8 = var1("::UICorner", var66)
local var74 = {}
var74.MaxSize = Vector2.new(∞, 48)
local var10 = var1("::UISizeConstraint", var74)
local var82 = {}
var82.PaddingLeft = UDim.new(0, var2.LEFT_RIGHT_BUTTON_PADDING)
var82.PaddingRight = UDim.new(0, var2.LEFT_RIGHT_BUTTON_PADDING)
var82.PaddingTop = UDim.new(0, 4)
var82.PaddingBottom = UDim.new(0, 4)
local var12 = var1("::UIPadding", var82)
local var102 = {}
var102.BackgroundColor3 = "$ActionHover"
local var13 = var1(":hover", var102)
local var107 = {}
var107.BackgroundColor3 = "$ActionActivated"
local var14 = var1(":pressed", var107)
local var15 = var1(">> .Component-NotificationMenuOptionButton", var53, {})
local var16 = var1(">> .Component-NotificationMenuInner", var32, {})
return var1(".Component-NotificationMenu", var19, {})
