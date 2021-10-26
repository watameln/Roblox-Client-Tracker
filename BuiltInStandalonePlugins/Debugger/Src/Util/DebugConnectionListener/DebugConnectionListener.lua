local Src = script.Parent.Parent.Parent
local Actions = Src.Actions
local AddThreadId = require(Actions.Callstack.AddThreadId)
local SetCurrentThread = require(Actions.Callstack.SetCurrentThread)
local Resumed = require(Actions.Common.Resumed)
local BreakpointHitAction = require(Actions.Common.BreakpointHit)
local SetFocusedDebuggerConnection = require(Actions.Common.SetFocusedDebuggerConnection)
local RequestCallstackThunk = require(Src.Thunks.Callstack.RequestCallstackThunk)

local Models = Src.Models
local DebuggerStateToken = require(Models.DebuggerStateToken)

local DebugConnectionListener = {}
DebugConnectionListener.__index = DebugConnectionListener

function DebugConnectionListener:onExecutionPaused(connection, pausedState, debuggerPauseReason)
	self.store:dispatch(SetFocusedDebuggerConnection(connection.Id))
	local state = self.store:getState()
	local common = state.Common
	local dst = common.debuggerConnectionIdToDST[common.currentDebuggerConnectionId] or 
		DebuggerStateToken.fromData({debuggerConnectionId = connection.Id})
	self.store:dispatch(BreakpointHitAction(dst, pausedState.ThreadId))
	local threadState = connection:GetThreadById(pausedState.ThreadId)
	self.store:dispatch(AddThreadId(pausedState.ThreadId, threadState.ThreadName, dst))
	self.store:dispatch(RequestCallstackThunk(threadState, connection, dst))
	self.store:dispatch(SetCurrentThread(pausedState.ThreadId))
end

function DebugConnectionListener:onExecutionResumed(connection, pausedState)
	local state = self.store:getState()
	local common = state.Common
	local dst = common.debuggerConnectionIdToDST[common.currentDebuggerConnectionId]
	self.store:dispatch(Resumed(dst, pausedState.ThreadId))
end

function DebugConnectionListener:connectEvents(debuggerConnectionId, connection)
	self.store:dispatch(SetFocusedDebuggerConnection(connection.Id))
	local connectionEvents = {}
	connectionEvents["paused"] = connection.Paused:Connect(function(pausedState, debuggerPauseReason) 
		self:onExecutionPaused(connection, pausedState, debuggerPauseReason)
	end)
	connectionEvents["resumed"] = connection.Resumed:Connect(function(pausedState) 
		self:onExecutionResumed(connection, pausedState)
	end)
	
	self.connectionEventConnections[debuggerConnectionId] = connectionEvents
end

function DebugConnectionListener:onConnectionStarted(debuggerConnection)
	assert(debuggerConnection and debuggerConnection.Id~=0)
	self.debuggerConnections[debuggerConnection.Id] = debuggerConnection
	self:connectEvents(debuggerConnection.Id, debuggerConnection)
end

function DebugConnectionListener:onConnectionEnded(debuggerConnection, reason)
	assert(debuggerConnection and debuggerConnection.Id~=0)
	for _,eventConnection in pairs(self.connectionEventConnections[debuggerConnection.Id]) do
		eventConnection:Disconnect()
	end
	self.connectionEventConnections[debuggerConnection.Id] = nil
	self.debuggerConnections[debuggerConnection.Id] = nil
end

function DebugConnectionListener:onFocusChanged(instance)
end

local function setUpConnections(debugConnectionListener, debuggerConnectionManager)
	local DebuggerConnectionManager = debuggerConnectionManager or game:GetService("DebuggerConnectionManager")
	debugConnectionListener._connectionStartedConnection = DebuggerConnectionManager.ConnectionStarted:Connect(function(debuggerConnection) debugConnectionListener:onConnectionStarted(debuggerConnection) end)
	debugConnectionListener._connectionEndedConnection = DebuggerConnectionManager.ConnectionEnded:Connect(function(debuggerConnection, reason) debugConnectionListener:onConnectionEnded(debuggerConnection, reason) end)
	debugConnectionListener._focusChangedConnection = DebuggerConnectionManager.FocusChanged:Connect(function(instance) debugConnectionListener:onFocusChanged(instance) end)
end

function DebugConnectionListener.new(store, debuggerConnectionManager)
	local self = {store = store}
	self.debuggerConnections = {}
	self.connectionEventConnections = {}
	setUpConnections(self, debuggerConnectionManager)
	setmetatable(self, DebugConnectionListener)
	return self
end

function DebugConnectionListener:destroy()
	if self._connectionStartedConnection then
		self._connectionStartedConnection:Disconnect()
		self._connectionStartedConnection = nil
	end
	
	if self._connectionEndedConnection then
		self._connectionEndedConnection:Disconnect()
		self._connectionEndedConnection = nil
	end
	
	if self._focusChangedConnection then
		self._focusChangedConnection:Disconnect()
		self._focusChangedConnection = nil
	end

	for id, connection in pairs(self.debuggerConnections) do
		self:onConnectionEnded(connection, 0)
	end
end

return DebugConnectionListener
