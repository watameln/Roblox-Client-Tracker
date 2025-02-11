return function()
	local ScriptContext = game:GetService("ScriptContext")
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Store = require(CorePackages.Rodux).Store
	local DataProvider = require(script.Parent.Parent.DataProvider)

	local ProfilerFunctionViewEntry = require(script.Parent.ProfilerFunctionViewEntry)

	local TEST_DATA = ScriptContext:DeserializeScriptProfilerString(require(script.Parent.TestData))

	-- CLI-94090 remove when roblox-cli 602 is retired from testing
	if not TEST_DATA.Version then
		return
	end

	it("should create and destroy without errors", function()
		local store = Store.new(function()
			return {
				MainView = {
					currTabIndex = 0,
				},
			}
		end)

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			DataProvider = Roact.createElement(DataProvider, {}, {
				ProfilerFunctionViewEntry = Roact.createElement(ProfilerFunctionViewEntry, {
					layoutOrder = 0,
					data = TEST_DATA,
					functionId = 1,
					nodeName = "TestFunc",
					average = 1,
					percentageRatio = nil,
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
