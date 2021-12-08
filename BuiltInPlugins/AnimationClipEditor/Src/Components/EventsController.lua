--[[
	A controller than handles display and manipulation of events.
	Accepts input from the Events track and events within it, and
	connects these events to thunks and drag logic.

	Props:
		int StartTick = beginning tick of timeline range
		int EndTick = end tick of timeline range
		int TrackPadding = amount of total padding
		Vector2 AbsolutePosition = The absolute position of the track.
		Vector2 AbsoluteSize = The absolute size of the track.
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local Framework = require(Plugin.Packages.Framework)
local DragTarget = Framework.UI.DragListener
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local KeyboardListener = Framework.UI.KeyboardListener

local Constants = require(Plugin.Src.Util.Constants)
local TrackUtils = require(Plugin.Src.Util.TrackUtils)
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local Input = require(Plugin.Src.Util.Input)
local DoubleClickDetector = require(Plugin.Src.Util.DoubleClickDetector)

local DragContext = require(Plugin.Src.Util.DragContext)

local EventTrack = require(Plugin.Src.Components.EventTrack)
local SelectionBox = require(Plugin.Src.Components.SelectionBox)
local EventActions = require(Plugin.Src.Components.EventActions)

local AddWaypoint = require(Plugin.Src.Thunks.History.AddWaypoint)
local SetEvents = require(Plugin.Src.Thunks.Events.SetEvents)
local SelectEvent = require(Plugin.Src.Thunks.Events.SelectEvent)
local DeselectEvent = require(Plugin.Src.Thunks.Events.DeselectEvent)
local DeleteSelectedEvents = require(Plugin.Src.Thunks.Events.DeleteSelectedEvents)
local MoveSelectedEvents = require(Plugin.Src.Thunks.Events.MoveSelectedEvents)
local SetRightClickContextInfo = require(Plugin.Src.Actions.SetRightClickContextInfo)
local SetEventEditingTick = require(Plugin.Src.Actions.SetEventEditingTick)

local SetSelectedEvents = require(Plugin.Src.Actions.SetSelectedEvents)
local SetSelectedKeyframes = require(Plugin.Src.Actions.SetSelectedKeyframes)
local SetIsPlaying = require(Plugin.Src.Actions.SetIsPlaying)
local SetPlayState = require(Plugin.Src.Actions.SetPlayState)
local Pause = require(Plugin.Src.Actions.Pause)

local EditEventsDialog = require(Plugin.Src.Components.EditEventsDialog.EditEventsDialog)

local FFlagAnimEditorFixBackspaceOnMac = require(Plugin.LuaFlags.GetFFlagAnimEditorFixBackspaceOnMac)
local GetFFlagMoarMediaControls = require(Plugin.LuaFlags.GetFFlagMoarMediaControls)

local EventsController = Roact.PureComponent:extend("EventsController")

function EventsController:init()
	self.state = {
		dragging = false,
		draggingSelection = nil,
		dragTick = nil,

		showContextMenu = false,
		eventEditingTick = nil,
		hasDragWaypoint = false,	-- True if a waypoint has already been created for
									-- the current drag operation (move)
	}

	self.selectDragStart, self.updateSelectDragStart = Roact.createBinding(nil)
	self.selectDragEnd, self.updateSelectDragEnd = Roact.createBinding(nil)

	self.DragContext = nil

	self.isMultiSelecting = false
	self.mouseDownOnEvent = false
	self.mouseDownInTimeline = false
	self.doubleClickDetector = DoubleClickDetector.new()

	self.addDragWaypoint = function()
		if not self.state.hasDragWaypoint then
			self.props.AddWaypoint()
			self:setState({
				hasDragWaypoint = true
			})
		end
	end

	self.getTickFromPosition = function(position, snapToFrame)
		local tick = TrackUtils.getKeyframeFromPosition(
			position,
			self.props.StartTick,
			self.props.EndTick,
			self.props.AbsolutePosition.X + (self.props.TrackPadding / 2),
			self.props.AbsoluteSize.X - self.props.TrackPadding
		)

		if snapToFrame and self.props.SnapMode ~= Constants.SNAP_MODES.None then
			tick = KeyframeUtils.getNearestFrame(tick, self.props.FrameRate)
		end

		return tick
	end

	self.onEventDragStarted = function(tick)
		local selectedEvents = self.props.SelectedEvents
		local animationData = self.props.AnimationData
		self.DragContext = DragContext.newEvents(animationData, selectedEvents, tick)
		self:setState({
			dragging = true,
			dragTick = tick,
			hasDragWaypoint = false,
		})
	end

	self.onEventDragMoved = function(input)
		local tick = self.getTickFromPosition(input.Position, true)
		if self.state.dragTick ~= tick and self.DragContext then
			self.addDragWaypoint()
			self.DragContext:moveEvents(tick)
			self.props.MoveSelectedEvents(self.DragContext.pivotTick, self.DragContext.newTick, self.DragContext)
			self:setState({
				dragTick = tick,
			})
		end
	end

	self.onEventDragEnded = function()
		self:setState({
			dragging = false,
			dragTick = Roact.None,
			hasDragWaypoint = false,
		})
		self.DragContext = nil
	end

	self.onSelectDragStarted = function(input)
		if not self.state.showContextMenu then
			self.updateSelectDragStart(Vector2.new(input.Position.X, Constants.TRACK_HEIGHT))
			self.updateSelectDragEnd(Vector2.new(input.Position.X, Constants.TRACK_HEIGHT))
			self:setState({
				draggingSelection = true,
			})
		end
	end

	self.onSelectDragMoved = function(input)
		self.props.DeselectAllEvents()
		local position = input.Position
		local dragStart = self.selectDragStart:getValue()
		local minPos = Vector2.new(math.min(position.X, dragStart.X), 0)
		local maxPos = Vector2.new(math.max(position.X, dragStart.X), 0)
		-- Determine padding for selection
		local startTick = self.props.StartTick
		local endTick = self.props.EndTick

		local trackWidth = self.props.AbsoluteSize.X - self.props.TrackPadding
		local timelineScale = trackWidth / (endTick - startTick)
		local selectionPadding = Vector2.new(timelineScale / 2, 0)
		-- Find extents of selection
		local minTick = self.getTickFromPosition(minPos + selectionPadding, false)
		local maxTick = self.getTickFromPosition(maxPos - selectionPadding, false)

		for _, tick in ipairs(self.props.AnimationData.Events.Keyframes) do
			if tick >= minTick and tick <= maxTick then
				self.props.SelectEvent(tick, true)
			end
		end
		self.updateSelectDragEnd(Vector2.new(position.X, Constants.TRACK_HEIGHT * 2))
	end

	self.onSelectDragEnded = function()
		self:setState({
			draggingSelection = Roact.None,
		})
		self.updateSelectDragStart(nil)
		self.updateSelectDragEnd(nil)
	end

	self.showMenu = function()
		if GetFFlagMoarMediaControls() then
			self.props.Pause()
		else
			self.props.SetIsPlaying(false)
		end
		self:setState({
			showContextMenu = true,
		})
	end

	self.hideMenu = function()
		self:setState({
			showContextMenu = false,
		})
	end

	self.setEventEditingTick = function(tick)
		self:setState({
			eventEditingTick = tick or Roact.None,
		})
	end

	self.setEventsHandler = function(newEvents)
		if self.props.Analytics then
			return self.props.SetEvents(newEvents, self.props.Analytics)
		end
	end
end

function EventsController:handleTimelineInputBegan(input, keysHeld)
	if input.UserInputType == Enum.UserInputType.Keyboard then
		if Input.isMultiSelectKey(input.KeyCode) then
			-- Start multi selecting on ctrl hold
			self.isMultiSelecting = true
		elseif FFlagAnimEditorFixBackspaceOnMac() and Input.isDeleteKey(input.KeyCode) then
			self.props.DeleteSelectedEvents()
		end
	elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
		self.props.DeselectAllEvents()
		self.mouseDownInTimeline = true
		self.onSelectDragStarted(input)
	end
end

function EventsController:handleTimelineInputEnded(input, keysHeld)
	if input.UserInputType == Enum.UserInputType.Keyboard then
		if Input.isMultiSelectKey(input.KeyCode) then
			self.isMultiSelecting = false
		end
	elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
		local tick = self.getTickFromPosition(input.Position, true)
		self.props.SetRightClickContextInfo({
			Tick = tick,
		})
		self.props.SelectEvent(tick, false)
		self.showMenu()
	elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
		local tick = self.getTickFromPosition(input.Position, true)
		if self.doubleClickDetector:isDoubleClick() then
			self.props.DeselectAllEvents()
			self.props.SelectEvent(tick, false)
			self.props.SetEventEditingTick(tick)
		end
	end
end

function EventsController:handleEventRightClick(tick)
	self.props.SelectEvent(tick, false)
	self.props.SetRightClickContextInfo({
		OnEvent = true,
		Tick = tick,
	})
	self.showMenu()
end

function EventsController:handleEventInputBegan(tick, selected, input)
	-- Select event if not selected
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		self.mouseDownOnEvent = true

		if selected then
			-- Deselect event if it is clicked again when multi-selecting
			if self.isMultiSelecting then
				self.props.DeselectEvent(tick)
			end
		else
			self.props.SelectEvent(tick, self.isMultiSelecting)
		end
	end
end

function EventsController:handleEventInputEnded(tick, selected, input)
	-- Start dragging if the mouse drags outside the event
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		if selected and self.mouseDownOnEvent then
			self.onEventDragStarted(tick)
			self.mouseDownOnEvent = false
		end
	end
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		self.mouseDownOnEvent = false

		-- Double click to edit an event
		if selected and self.doubleClickDetector:isDoubleClick() then
			self.props.DeselectAllEvents()
			self.props.SelectEvent(tick, false)
			self.props.SetEventEditingTick(tick)
		end
	end
end

--[[
	This sucks, but we have to do it! Rodux won't let us yield
	when RoactRodux gets a changed event from the store updating.
	Unfortunately, creating a PluginGui is a YieldFunction, so
	we have to defer the update to a later time so that Rodux has
	time to update before the yield occurs.
]]
function EventsController:didUpdate()
	local nextProps = self.props
	local prevState = self.state

	if nextProps.EventEditingTick ~= prevState.eventEditingTick then
		if nextProps.EventEditingTick ~= nil then
			-- Have to wait because we are creating a PluginGui dialog
			spawn(function()
				self.setEventEditingTick(nextProps.EventEditingTick)
			end)
		else
			-- Don't have to wait if we are deleting the dialog
			self.setEventEditingTick(nextProps.EventEditingTick)
		end
	end
end

function EventsController:render()
	local props = self.props
	local state = self.state
	local active = props.Active
	local absolutePosition = props.AbsolutePosition
	local absoluteSize = props.AbsoluteSize
	local animationData = props.AnimationData
	local startTick = props.StartTick
	local endTick = props.EndTick
	local dragging = state.dragging
	local draggingSelection = state.draggingSelection
	local showContextMenu = state.showContextMenu
	local editingTick = state.eventEditingTick

	return Roact.createElement("Frame", {
		LayoutOrder = 0,
		Size = UDim2.new(1, 0, 0, Constants.TRACK_HEIGHT),
		BackgroundTransparency = 1,

		[Roact.Event.InputBegan] = function(_, input)
			if input.UserInputType ~= Enum.UserInputType.Keyboard then
				self:handleTimelineInputBegan(input)
			end
		end,

		[Roact.Event.InputEnded] = function(_, input)
			if input.UserInputType ~= Enum.UserInputType.Keyboard then
				self:handleTimelineInputEnded(input)
			end
		end,
	}, {
		Track = Roact.createElement(EventTrack, {
			Events = animationData.Events,
			SelectedEvents = props.SelectedEvents,
			EditingTick = editingTick,
			Size = UDim2.new(1, 0, 0, Constants.TRACK_HEIGHT),
			Width = absoluteSize.X - self.props.TrackPadding,
			StartTick = startTick,
			EndTick = endTick,
			ShowBackground = true,
			ZIndex = 1,

			OnEventRightClick = function(tick)
				self:handleEventRightClick(tick)
			end,

			OnEventInputBegan = function(tick, selected, input)
				self:handleEventInputBegan(tick, selected, input)
			end,

			OnEventInputEnded = function(tick, selected, input)
				self:handleEventInputEnded(tick, selected, input)
			end,
		}),

		KeyboardListener = Roact.createElement(KeyboardListener, {
			OnKeyPressed = function(input, keysHeld)
				self:handleTimelineInputBegan(input, keysHeld)
			end,
			OnKeyReleased = function(input)
				self:handleTimelineInputEnded(input)
			end,
		}),

		DragTarget = dragging and Roact.createElement(DragTarget, {
			OnDragMoved = self.onEventDragMoved,
			OnDragEnded = self.onEventDragEnded,
		}),

		MultiSelectBox = draggingSelection and Roact.createElement(SelectionBox, {
			OnDragMoved = self.onSelectDragMoved,
			OnDragEnded = self.onSelectDragEnded,
			SelectionStart = self.selectDragStart,
			SelectionEnd = self.selectDragEnd,
			SourceExtents = Rect.new(absolutePosition, absolutePosition + absoluteSize)
		}),

		EventActions = active and animationData and Roact.createElement(EventActions, {
			ShowMenu = showContextMenu,
			OnMenuOpened = self.hideMenu,
			OnEditEvents = props.SetEventEditingTick,
		}),

		EditEventsDialog = animationData and editingTick and Roact.createElement(EditEventsDialog, {
			Events = animationData.Events,
			Tick = editingTick,
			OnSaved = self.setEventsHandler,
			OnClose = props.SetEventEditingTick,
		}),
	})
end

local function mapStateToProps(state, props)
	return {
		Active = state.Status.Active,
		SelectedEvents = state.Status.SelectedEvents,
		EventEditingTick = state.Status.EventEditingTick,
		FrameRate = state.Status.FrameRate,
		SnapMode = state.Status.SnapMode,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		AddWaypoint = function()
			dispatch(AddWaypoint())
		end,

		SetEvents = function(newEvents, analytics)
			dispatch(AddWaypoint())
			dispatch(SetEvents(newEvents, analytics))
		end,

		SelectEvent = function(tick, multiSelect)
			dispatch(SetSelectedKeyframes({}))
			dispatch(SelectEvent(tick, multiSelect))
		end,

		DeselectEvent = function(tick)
			dispatch(DeselectEvent(tick))
		end,

		DeleteSelectedEvents = function()
			dispatch(AddWaypoint())
			dispatch(DeleteSelectedEvents())
			dispatch(SetRightClickContextInfo({}))
		end,

		MoveSelectedEvents = function(pivot, newTick, dragContext)
			dispatch(MoveSelectedEvents(pivot, newTick, dragContext))
		end,

		DeselectAllEvents = function()
			dispatch(SetSelectedKeyframes({}))
			dispatch(SetSelectedEvents({}))
		end,

		SetRightClickContextInfo = function(info)
			dispatch(SetRightClickContextInfo(info))
		end,

		SetEventEditingTick = function(tick)
			dispatch(SetEventEditingTick(tick))
		end or nil,

		-- Deprecated if GetFFlagMoarMediaControls() is ON
		SetIsPlaying = function(isPlaying)
			dispatch(SetIsPlaying(isPlaying))
		end,

		Pause = function()
			dispatch(Pause())
		end,
	}
end


EventsController = withContext({
	Analytics = ContextServices.Analytics,
})(EventsController)



EventsController = RoactRodux.connect(mapStateToProps,
	mapDispatchToProps)(EventsController)

return EventsController
