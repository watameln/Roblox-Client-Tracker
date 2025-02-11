local Root = script.Parent.Parent

local CoreGui = game:GetService("CoreGui")
local LocalizationService = game:GetService("LocalizationService")
local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact
local Rodux = PurchasePromptDeps.Rodux
local RoactRodux = PurchasePromptDeps.RoactRodux
local UIBlox = PurchasePromptDeps.UIBlox
local StyleProvider = UIBlox.Style.Provider
local IAPExperience = require(CorePackages.IAPExperience)
local LocaleProvider =  IAPExperience.Locale.LocaleProvider

local Reducer = require(Root.Reducers.Reducer)
local ABTest = require(Root.Services.ABTest)
local Network = require(Root.Services.Network)
local Analytics = require(Root.Services.Analytics)
local PlatformInterface = require(Root.Services.PlatformInterface)
local ExternalSettings = require(Root.Services.ExternalSettings)
local Thunk = require(Root.Thunk)

local EventConnections = require(script.Parent.Connection.EventConnections)
local LayoutValuesProvider = require(script.Parent.Connection.LayoutValuesProvider)
local provideRobloxLocale = require(script.Parent.Connection.provideRobloxLocale)
local PurchasePromptPolicy = require(Root.Components.Connection.PurchasePromptPolicy)

local ProductPurchaseContainer = require(script.Parent.ProductPurchase.ProductPurchaseContainer)
local RobuxUpsellContainer = require(script.Parent.RobuxUpsell.RobuxUpsellContainer)
local PremiumUpsellContainer = require(script.Parent.PremiumUpsell.PremiumUpsellContainer)
local SubscriptionPurchaseContainer = require(script.Parent.SubscriptionPurchase.SubscriptionPurchaseContainer)

local GetFFlagEnableStyleProviderCleanUp =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableStyleProviderCleanUp
local DarkTheme = if GetFFlagEnableStyleProviderCleanUp()
	then nil
	else require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local Gotham = if GetFFlagEnableStyleProviderCleanUp()
	then nil
	else require(CorePackages.Workspace.Packages.Style).Fonts.Gotham
local renderWithCoreScriptsStyleProvider =
	require(script.Parent.Parent.Parent.Common.renderWithCoreScriptsStyleProvider)

local PurchasePromptApp = Roact.Component:extend("PurchasePromptApp")

function PurchasePromptApp:init()
	local initialState = {}

	local abTest = ABTest.new()
	local network = Network.new()
	local analytics = Analytics.new()
	local platformInterface = PlatformInterface.new()
	local externalSettings = ExternalSettings.new()

	self.state = {
		store = Rodux.Store.new(Reducer, initialState, {
			Thunk.middleware({
				[ABTest] = abTest,
				[Network] = network,
				[Analytics] = analytics,
				[PlatformInterface] = platformInterface,
				[ExternalSettings] = externalSettings,
			}),
		}),
		isTenFootInterface = externalSettings.isTenFootInterface(),
	}
end

function PurchasePromptApp:renderWithStyle(children)
	if GetFFlagEnableStyleProviderCleanUp() then
		return renderWithCoreScriptsStyleProvider(children)
	else
		return Roact.createElement(StyleProvider, {
			style = {
				Theme = DarkTheme,
				Font = Gotham,
			},
		}, children)
	end
end

function PurchasePromptApp:render()
	return provideRobloxLocale(function()
		return Roact.createElement(RoactRodux.StoreProvider, {
			store = self.state.store,
		}, {
			StyleProvider = self:renderWithStyle({
				LayoutValuesProvider = Roact.createElement(LayoutValuesProvider, {
					isTenFootInterface = self.state.isTenFootInterface,
				}, {
					PolicyProvider = Roact.createElement(PurchasePromptPolicy.Provider, {
						policy = { PurchasePromptPolicy.Mapper },
					}, {
						PurchasePrompt = Roact.createElement("ScreenGui", {
							AutoLocalize = false,
							IgnoreGuiInset = true,
						}, {
							LocaleProvider = Roact.createElement(LocaleProvider, {
								locale = LocalizationService.RobloxLocaleId,
							}, {
								ProductPurchaseContainer = Roact.createElement(ProductPurchaseContainer),
								RobuxUpsellContainer = Roact.createElement(RobuxUpsellContainer),
								PremiumUpsellContainer = Roact.createElement(PremiumUpsellContainer),
								SubscriptionPurchaseContainer = Roact.createElement(SubscriptionPurchaseContainer),
							}),
							EventConnections = Roact.createElement(EventConnections),
						}),
					}),
				}),
			}),
		})
	end)
end

return PurchasePromptApp
