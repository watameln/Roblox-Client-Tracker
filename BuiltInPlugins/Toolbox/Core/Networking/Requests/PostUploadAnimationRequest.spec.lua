return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")

	local Libs
	if FFlagToolboxDeduplicatePackages then
		Libs = Plugin.Packages
	else
		Libs = Plugin.Libs
	end

	local FFlagStudioSerializeInstancesOffUIThread = game:GetFastFlag("StudioSerializeInstancesOffUIThread2")

	local Rodux = require(Libs.Rodux)
	local Framework = require(Libs.Framework)

	local NetworkInterfaceMock = require(Plugin.Core.Networking.NetworkInterfaceMock)
	local PostUploadAnimationRequest = require(Plugin.Core.Networking.Requests.PostUploadAnimationRequest)
	local AssetConfigReducer = require(Plugin.Core.Reducers.AssetConfigReducer)

	local CoreTestUtils = require(Plugin.TestUtils.CoreTestUtils)
	local Promise = Framework.Util.Promise

	it("should successfully upload an animation", function()
		if not FFlagStudioSerializeInstancesOffUIThread then
			return
		end

		local networkInterfaceMock = NetworkInterfaceMock.new()

		local middleware = CoreTestUtils.createThunkMiddleware()

		local store = Rodux.Store.new(AssetConfigReducer, nil, middleware)

		-- Page 1
		local stubCalled = false
		networkInterfaceMock.postUploadAnimation = function(self, assetId, name, description, groupId, data)
			stubCalled = true

			expect(assetId).to.equal(0)
			expect(name).to.equal("Test!")
			assert(string.len(data) > 0)

			return Promise.resolve("123")
		end

		local animation = Instance.new("Animation")
		animation.Parent = game.Workspace

		local publishInfo = {
			networkInterface = networkInterfaceMock,
			assetId = 0,
			name = "Test!",
			groupId = nil,
			instance = { animation },
		}

		store:dispatch(PostUploadAnimationRequest(publishInfo)):await()

		expect(stubCalled).to.equal(true)
		expect(store:getState().uploadSucceeded).to.equal(true)
		expect(store:getState().assetId).to.equal("123")

		animation:Destroy()
	end)
end