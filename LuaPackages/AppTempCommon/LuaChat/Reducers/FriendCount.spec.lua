return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local FriendCount = require(CorePackages.AppTempCommon.LuaChat.Reducers.FriendCount)
	local SetFriendCount = require(CorePackages.AppTempCommon.LuaApp.Actions.SetFriendCount)

	it("should be zero by default", function()
		local state = FriendCount(nil, {})

		expect(state).toBe(0)
	end)

	it("should respond to SetFriendCount", function()
		local state = FriendCount(nil, {})
		state = FriendCount(state, SetFriendCount(520))

		expect(state).toBe(520)
	end)
end
