local ButtonRoot = script.Parent
local AppRoot = ButtonRoot.Parent
local UIBloxRoot = AppRoot.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)

local validateButtonProps = require(ButtonRoot.validateButtonProps)
local GenericButton = require(UIBloxRoot.Core.Button.GenericButton)
local ControlState = require(UIBloxRoot.Core.Control.Enum.ControlState)

local AlertButton = Roact.PureComponent:extend("AlertButton")

local IMAGE = "buttons/buttonStroke"

local BUTTON_STATE_COLOR = {
	[ControlState.Default] = "Alert",
}

local CONTENT_STATE_COLOR = {
	[ControlState.Default] = "Alert",
}

AlertButton.defaultProps = {
	isDisabled = false,
	isLoading = false,
}

function AlertButton:render()
	assert(validateButtonProps(self.props))
	return Roact.createElement(GenericButton, {
		Size = self.props.size,
		AnchorPoint = self.props.anchorPoint,
		Position = self.props.position,
		LayoutOrder = self.props.layoutOrder,
		icon = self.props.icon,
		text = self.props.text,
		isDisabled = self.props.isDisabled,
		isLoading = self.props.isLoading,
		onActivated = self.props.onActivated,
		onStateChanged = self.props.onStateChanged,
		userInteractionEnabled = self.props.userInteractionEnabled,
		buttonImage = IMAGE,
		buttonStateColorMap = BUTTON_STATE_COLOR,
		contentStateColorMap = CONTENT_STATE_COLOR,
	})
end

return AlertButton