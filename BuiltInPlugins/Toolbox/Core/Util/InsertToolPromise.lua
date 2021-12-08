local Plugin = script.Parent.Parent.Parent
local FFlagToolboxEnableScriptConfirmation = game:GetFastFlag("ToolboxEnableScriptConfirmation")

local InsertToolPromise = {}
InsertToolPromise.__index = InsertToolPromise

InsertToolPromise.INSERT_TO_WORKSPACE = 0
InsertToolPromise.INSERT_TO_STARTER_PACK = 1
InsertToolPromise.INSERT_CANCELLED = 2

function InsertToolPromise.new(onPromptCallback, onScriptWarningCallback)
	local self = {
		_onPromptCallback = onPromptCallback,
		_onScriptWarningCallback = onScriptWarningCallback,
		_bindable = Instance.new("BindableEvent"),
		_waiting = false,
	}
	setmetatable(self, InsertToolPromise)
	return self
end

function InsertToolPromise:isWaiting()
	return self._waiting
end

function InsertToolPromise:destroy()
	self:cancel()
	self._bindable:Destroy()
end

function InsertToolPromise:insertToWorkspace()
	self._bindable:Fire(InsertToolPromise.INSERT_TO_WORKSPACE)
end

function InsertToolPromise:insertToStarterPack()
	self._bindable:Fire(InsertToolPromise.INSERT_TO_STARTER_PACK)
end

function InsertToolPromise:cancel()
	self._bindable:Fire(InsertToolPromise.INSERT_CANCELLED)
end

function InsertToolPromise:dismissWarningPrompt()
	self._bindable:Fire()
end

function InsertToolPromise:promptScriptWarningAndWait(message)
	if not FFlagToolboxEnableScriptConfirmation then return end

	self._waiting = true
	if self._onScriptWarningCallback(message) then
		self._bindable.Event:Wait()
	end
	self._waiting = false
end

function InsertToolPromise:promptAndWait()
	if self._waiting then
		return InsertToolPromise.INSERT_CANCELLED
	end

	self._waiting = true
	self._onPromptCallback()
	local result = self._bindable.Event:Wait()
	self._waiting = false
	return result
end

return InsertToolPromise
