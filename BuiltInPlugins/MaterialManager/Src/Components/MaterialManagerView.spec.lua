return function()
	local Plugin = script.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local mockContext = require(Plugin.Src.Util.mockContext)

	local MaterialManagerView = require(script.Parent.MaterialManagerView)

	local function createTestElement(props: MaterialManagerView.Props?)
		props = props or {
            OpenPrompt = function() end
        }

		return mockContext({
			MaterialManagerView = Roact.createElement(MaterialManagerView, props)
		})
	end

	it("should create and destroy without errors", function()
		local element = createTestElement()
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render correctly", function()
		local container = Instance.new("Folder")
		local element = createTestElement({
			OpenPrompt = function() end
		})
		local instance = Roact.mount(element, container)

		local main = container:FindFirstChildOfClass("Frame")
		expect(main).to.be.ok()
		Roact.unmount(instance)
	end)
end