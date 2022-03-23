return function()
	local InGameMenu = script.Parent.Parent
	local NavigateBack = require(InGameMenu.Actions.NavigateBack)
	local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
	local rootReducer = require(InGameMenu.reducer)
	local Pages = require(InGameMenu.Components.Pages)
	local Constants = require(InGameMenu.Resources.Constants)
	local Flags = InGameMenu.Flags
	local GetFFlagInGameMenuControllerDevelopmentOnly = require(Flags.GetFFlagInGameMenuControllerDevelopmentOnly)

	-- local Constants = require(InGameMenu.Resources.Constants)

	describeSKIP("navigationReducer", function()
		it("should go to parent page when one is available and B is pressed", function()
			local oldState = rootReducer(nil, {})
			oldState = rootReducer(oldState, SetCurrentPage(Pages.pagesByKey["Players"].key))

			local newState = rootReducer(oldState, NavigateBack())
			if GetFFlagInGameMenuControllerDevelopmentOnly() then
				expect(oldState).to.never.equal(newState)
				expect(newState.menuPage).to.equal(Constants.MainPagePageKey)
			else
				expect(oldState).to.equal(newState)
			end
		end)
	end)
end