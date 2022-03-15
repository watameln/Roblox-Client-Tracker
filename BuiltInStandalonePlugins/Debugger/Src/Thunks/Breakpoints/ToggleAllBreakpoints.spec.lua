local Plugin = script.Parent.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Reducers = Plugin.Src.Reducers
local MainReducer = require(Reducers.MainReducer)
local MainMiddleware = require(Plugin.Src.Middleware.MainMiddleware)

local Util = Plugin.Src.Util

local BreakpointManagerListener = require(Util.BreakpointManagerListener.BreakpointManagerListener)
local DebugConnectionListener = require(Util.DebugConnectionListener.DebugConnectionListener)

local Mocks = Plugin.Src.Mocks

local MockBreakpointManager = require(Mocks.MockBreakpointManager)
local MockDebuggerConnection =require(Mocks.MockDebuggerConnection)
local MockDebuggerConnectionManager = require(Mocks.MockDebuggerConnectionManager)
local MockMetaBreakpoint = require(Mocks.MetaBreakpoint)
local MockCrossDMScriptChangeListenerService = require(Mocks.MockCrossDMScriptChangeListenerService)
local MockDebuggerUIService = require(Mocks.MockDebuggerUIService)

local ToggleAllBreakpoints = require(script.Parent.ToggleAllBreakpoints)

local function fakeDebuggerConnect(store)
	local mainConnectionManager = MockDebuggerConnectionManager.new()

	local _mainListener = DebugConnectionListener.new(store, mainConnectionManager, MockDebuggerUIService.new(), MockCrossDMScriptChangeListenerService.new())
	local currentMockConnection = MockDebuggerConnection.new(1)
	mainConnectionManager.ConnectionStarted:Fire(currentMockConnection)
end

local function createMockMetaBreakpoint(id, scriptString, breakpointManager)
	local mockMetaBreakpoint = MockMetaBreakpoint.new({
		Script = scriptString,
		Line = 123,
		Condition = "conditionString",
		Id = id,
		LogMessage = "testLogMessage",
		Enabled = true,
		Valid = true,
		ContinueExecution = true,
		IsLogpoint = true,
	})
	mockMetaBreakpoint:SetMockBreakpointManager(breakpointManager)
	return mockMetaBreakpoint
end

return function()
	it("should set all BP to same state", function()
		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		fakeDebuggerConnect(store)

		local mockBreakpointManager = MockBreakpointManager.new()
		local mockCrossDMScriptChangeListenerService = MockCrossDMScriptChangeListenerService.new()
		local _mainBreakpointListener = BreakpointManagerListener.new(store, mockBreakpointManager, mockCrossDMScriptChangeListenerService)

		-- add breakpoints to the store
		local metaBreakpoint1 = createMockMetaBreakpoint(1,"scriptString1", mockBreakpointManager)
		local metaBreakpoint2 = createMockMetaBreakpoint(2,"scriptString2", mockBreakpointManager)
		mockBreakpointManager.MetaBreakpointAdded:Fire(metaBreakpoint1)
		mockBreakpointManager.MetaBreakpointAdded:Fire(metaBreakpoint2)

		-- before toggling all breakpoints, all should be enabled
		local state = store:getState()
		for id, info in pairs(state.Breakpoint.MetaBreakpoints) do
			expect(info.isEnabled).to.equal(true)
		end

		store:dispatch(ToggleAllBreakpoints(mockBreakpointManager, false))

		state = store:getState()
		-- after toggling all breakpoints, all should be disabled
		for id, info in pairs(state.Breakpoint.MetaBreakpoints) do
			expect(info.isEnabled).to.equal(false)
		end
	end)
end
