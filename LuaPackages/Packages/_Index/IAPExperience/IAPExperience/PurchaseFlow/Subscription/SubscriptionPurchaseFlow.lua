local HttpService = game:GetService("HttpService")

local SubscriptionPurchase = script.Parent
local PurchaseFlowRoot = SubscriptionPurchase.Parent
local IAPExperienceRoot = PurchaseFlowRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)

local UIBlox = require(Packages.UIBlox)
local PartialPageModal = UIBlox.App.Dialog.Modal.PartialPageModal

local SubscriptionPurchaseFlowState = require(SubscriptionPurchase.SubscriptionPurchaseFlowState)

local Animator = require(IAPExperienceRoot.Generic.Animator)
local PurchaseErrorPrompt = require(IAPExperienceRoot.Generic.PurchaseErrorPrompt)

local SubscriptionPurchasePrompt =require(IAPExperienceRoot.Subscription.SubscriptionPurchasePrompt)

local getEnableSubscriptionPurchaseInstrumentation =
	require(IAPExperienceRoot.Flags.getEnableSubscriptionPurchaseInstrumentation)
local formatSubscriptionPurchaseEventData = require(IAPExperienceRoot.Utility.formatSubscriptionPurchaseEventData)

local SubscriptionPurchaseFlow = Roact.Component:extend(script.Name)

local GenericRoot = IAPExperienceRoot.Generic
local PurchaseFlowType = require(GenericRoot.PurchaseFlowType)

type Props = {
	screenSize: Vector2,

	purchaseState: any?,
	errorType: any?,

	subscriptionId: string,
	name: string,
	subscriptionProviderId: string,
	subscriptionProviderName: string,
	priceTier: number,
	displayPrice: string,
	period: string,
	disclaimerText: string,
	description: string,
	itemIcon: any,

	acceptControllerIcon: { [string]: any? },
	isTestingMode: boolean,

	purchaseSubscription: () -> any,
	cancelPurchase: () -> any,
	flowComplete: () -> any,

	onAnalyticEvent: (string, table) -> any?,
	eventPrefix: string?,
}

type State = {
	analyticId: string,
}

function SubscriptionPurchaseFlow:init()
	self.state = {
		analyticId = HttpService:GenerateGUID(false),
	}
end

function SubscriptionPurchaseFlow:didUpdate(prevProps: Props, prevState: State)
	local props: Props = self.props

	if prevProps.purchaseState ~= props.purchaseState then
		if getEnableSubscriptionPurchaseInstrumentation() then
			self:reportPurchaseEvent("ViewShown")
		end
	end
end

function SubscriptionPurchaseFlow:reportUserInput(inputType: string)
	if not getEnableSubscriptionPurchaseInstrumentation() then
		return
	end

	self:reportPurchaseEvent("UserInput", inputType)
end

function SubscriptionPurchaseFlow:reportPurchaseEvent(eventType: string, inputType: string?)
	if not getEnableSubscriptionPurchaseInstrumentation() then
		return
	end

	local props: Props = self.props
	local state: State = self.state

	if not self.props.onAnalyticEvent then
		return
	end

	local eventData = formatSubscriptionPurchaseEventData(
		self.state.analyticId,
		eventType,
		SubscriptionPurchaseFlowState.toRawValue(props.purchaseState),
		inputType,

		props.subscriptionProviderId,
		props.subscriptionId,
		props.name,
		props.description,
		props.period,
		props.priceTier,
		props.displayPrice
	)
	props.onAnalyticEvent("SubscriptionPurchase", eventData)
end

function SubscriptionPurchaseFlow:render()
	local props: Props = self.props
	local purchaseState = props.purchaseState

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		SubscriptionPurchasePromptAnimator = Roact.createElement(Animator, {
			shouldShow = purchaseState == SubscriptionPurchaseFlowState.PurchaseModal,
			shouldAnimate = true,
			animateDown = PartialPageModal:getMiddleContentWidth(props.screenSize.X) == 492,
			renderChildren = function()
				return Roact.createElement(SubscriptionPurchasePrompt, {
					name = props.name,
					subscriptionProviderName = props.subscriptionProviderName,
					displayPrice = props.displayPrice,
					period = props.period,
					disclaimerText = props.disclaimerText,
					description = props.description,
					itemIcon = props.itemIcon,

					isTestingMode = props.isTestingMode,
					screenSize = props.screenSize,

					purchaseSubscriptionActivated = function()
						self:reportUserInput("Subscribe")
						props.purchaseSubscription()
						if props.isTestingMode then
							props.flowComplete()
						end
					end,
					cancelPurchaseActivated = function()
						self:reportUserInput("Cancel")
						props.cancelPurchase()
					end,
				})
			end,
		}),
		PurchaseErrorPromptAnimator = Roact.createElement(Animator, {
			shouldShow = purchaseState == SubscriptionPurchaseFlowState.Error,
			shouldAnimate = true,
			renderChildren = function()
				return Roact.createElement(PurchaseErrorPrompt, {
					screenSize = props.screenSize,

					errorType = props.errorType,

					flowType = PurchaseFlowType.Subscription,

					doneControllerIcon = props.acceptControllerIcon,

					doneActivated = function()
						self:reportUserInput("Done")
						props.flowComplete()
					end,
				})
			end,
		}),
	})
end

return SubscriptionPurchaseFlow
