local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Rhodium = require(CorePackages.Rhodium)
local VirtualInput = Rhodium.VirtualInput
local act = require(Modules.act)

local InGameMenu = Modules.InGameMenu
local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
local SetInputType = require(InGameMenu.Actions.SetInputType)

local InviteFriendsPage = require(InGameMenu.Components.InviteFriendsPage)

local Flags = InGameMenu.Flags
local GetFFlagInGameMenuControllerDevelopmentOnly = require(Flags.GetFFlagInGameMenuControllerDevelopmentOnly)
local GetFFlagIGMRefactorInviteFriendsGamepadSupport = require(Flags.GetFFlagIGMRefactorInviteFriendsGamepadSupport)

local Constants = require(InGameMenu.Resources.Constants)
local TestConstants = require(script.Parent.TestConstants)

return function()
	describe("In-Game Menu Invite Friends page focus management", function()
		describe("Invite Friends integration tests", function()
			beforeEach(function(c)
				GuiService.SelectedCoreObject = nil
				Players.LocalPlayer.PlayerGui:ClearAllChildren()
				local path, store, cleanup, gamepad = c.mountIGM() -- add arguments to this in init file if needed
				c.path = path
				c.store = store
				c.cleanup = cleanup
				c.gamepadInput = function(input)
					act(function()
						gamepad:hitButton(input)
						VirtualInput.waitForInputEventsProcessed()
					end)
					act(function()
						wait()
					end)
				end

				-- Send an input to update currently used input device
				act(function()
					gamepad:hitButton(Enum.KeyCode.DPadDown)
					VirtualInput.waitForInputEventsProcessed()
					wait()
				end)

				act(function()
					c.store:dispatch(SetMenuOpen(true))
					c.store:flush()
					wait()
				end)
				act(function()
					c.store:dispatch(SetCurrentPage("InviteFriends"))
					c.store:flush()
					wait()
				end)
			end)

			afterEach(function(c)
				c.cleanup()
			end)

			it("should switch between the page and SideNavigation", function(c)
				if GetFFlagInGameMenuControllerDevelopmentOnly() then
					local store = c.store

					act(function()
						wait(TestConstants.PageAnimationDuration) -- Wait for the page to finish animating in
					end)

					expect(store:getState().currentZone).to.equal(1)

					c.gamepadInput(Enum.KeyCode.DPadLeft)
					expect(store:getState().currentZone).to.equal(0)

					c.gamepadInput(Enum.KeyCode.DPadRight)
					expect(store:getState().currentZone).to.equal(1)
				end
			end)

			it("Should bumper switch", function(c)
				if GetFFlagInGameMenuControllerDevelopmentOnly() then
					local store = c.store

					c.gamepadInput(Enum.KeyCode.ButtonL1)
					expect(store:getState().currentZone).to.equal(0)
					c.gamepadInput(Enum.KeyCode.ButtonR1)
					expect(store:getState().currentZone).to.equal(1)
				end
			end)
		end)

		if GetFFlagIGMRefactorInviteFriendsGamepadSupport() then
			describe("Invite Friends page unit tests", function()
				local finishedLoadingEvent = Instance.new("BindableEvent")
				local mockPlayersService = {
					LocalPlayer = {
						UserId = 261,
					},
					GetFriendsAsync = function(localuserID)
						return assert(finishedLoadingEvent.Event:Wait())
					end,
				}

				beforeEach(function(c)
					GuiService.SelectedCoreObject = nil
					Players.LocalPlayer.PlayerGui:ClearAllChildren()

					local path, store, cleanup, gamepad = c.mountIGM({
						key = "InviteFriends",
						component = InviteFriendsPage,
						props = {
							pageTitle = "InviteFriends",
							PlayersService = mockPlayersService,
						},
					})

					c.path, c.store, c.cleanup = path, store, cleanup

					c.gamepadInput = function(input)
						act(function()
							gamepad:hitButton(input)
							VirtualInput.waitForInputEventsProcessed()
						end)
						act(wait)
					end

					c.storeUpdate = function(action)
						act(function()
							c.store:dispatch(action)
							c.store:flush()
						end)
						act(wait)
					end

					c.storeUpdate(SetInputType(Constants.InputType.Gamepad))
					c.storeUpdate(SetMenuOpen(true))
					c.storeUpdate(SetCurrentPage("InviteFriends"))
				end)

				afterEach(function(c)
					c.cleanup()
				end)

				it("should focus the back button when friends are loading", function()
					expect(tostring(GuiService.SelectedCoreObject)).to.equal("BackButton")
				end)

				it("should focus the add frieds button when you have no friends", function(c)
					expect(tostring(GuiService.SelectedCoreObject)).to.equal("BackButton")

					finishedLoadingEvent:Fire({
						IsFinished = true,
						GetCurrentPage = function()
							return {}
						end,
					})
					act(wait)
					expect(tostring(GuiService.SelectedCoreObject)).to.equal("MakeFriendsButton")

					c.gamepadInput(Enum.KeyCode.ButtonA)
					expect(c.store:getState().menuPage).to.equal("Players")
				end)

				it("should focus the retry button when loading friends has failed", function(c)
					expect(tostring(GuiService.SelectedCoreObject)).to.equal("BackButton")

					finishedLoadingEvent:Fire(nil) -- Should fail loading when we pass nil
					act(wait)
					expect(tostring(GuiService.SelectedCoreObject)).to.equal("RetryButton")

					c.gamepadInput(Enum.KeyCode.ButtonA)
					expect(tostring(GuiService.SelectedCoreObject)).to.equal("BackButton")

					finishedLoadingEvent:Fire({
						IsFinished = true,
						GetCurrentPage = function()
							return {
								{
									Id = 2231221,
									IsOnline = true,
									Username = "TheGamer101",
									DisplayName = "TestDisplayName",
								},
							}
						end,
					})
					act(wait)
					expect(tostring(GuiService.SelectedCoreObject)).to.equal("friend_1")
				end)

				it("should focus the first friend when loading friends succeeds", function()
					expect(tostring(GuiService.SelectedCoreObject)).to.equal("BackButton")

					finishedLoadingEvent:Fire({
						IsFinished = true,
						GetCurrentPage = function()
							return {
								{
									Id = 2231221,
									IsOnline = true,
									Username = "TheGamer101",
									DisplayName = "TestDisplayName",
								},
							}
						end,
					})
					act(wait)
					expect(tostring(GuiService.SelectedCoreObject)).to.equal("friend_1")
				end)

				it("should focus the topmost search result and clear the search text", function(c)
					expect(tostring(GuiService.SelectedCoreObject)).to.equal("BackButton")

					finishedLoadingEvent:Fire({
						IsFinished = true,
						GetCurrentPage = function()
							return {
								{
									Id = 123,
									IsOnline = true,
									Username = "AAAAA",
									DisplayName = "AAAAA",
								},
								{
									Id = 456,
									IsOnline = true,
									Username = "BBBBB",
									DisplayName = "BBBBB",
								},
								{
									Id = 789,
									IsOnline = true,
									Username = "CCCCC",
									DisplayName = "CCCCC",
								},
							}
						end,
					})
					act(wait)
					expect(tostring(GuiService.SelectedCoreObject)).to.equal("friend_1")
					expect(GuiService.SelectedCoreObject.DisplayNameLabel.Text).to.equal("AAAAA")

					-- Focus the search bar and enter a search query
					c.gamepadInput(Enum.KeyCode.DPadUp)
					act(function()
						local searchBox = GuiService.SelectedCoreObject
						searchBox:CaptureFocus()
						VirtualInput.Text.sendText("CCCCC")
						VirtualInput.waitForInputEventsProcessed()
						searchBox:ReleaseFocus()
					end)
					act(wait)

					c.gamepadInput(Enum.KeyCode.DPadDown)
					expect(tostring(GuiService.SelectedCoreObject)).to.equal("friend_3")
					expect(GuiService.SelectedCoreObject.DisplayNameLabel.Text).to.equal("CCCCC")

					-- Click the clear button
					c.gamepadInput(Enum.KeyCode.DPadUp)
					c.gamepadInput(Enum.KeyCode.DPadRight)
					c.gamepadInput(Enum.KeyCode.ButtonA)

					c.gamepadInput(Enum.KeyCode.DPadDown)
					expect(tostring(GuiService.SelectedCoreObject)).to.equal("friend_1")
					expect(GuiService.SelectedCoreObject.DisplayNameLabel.Text).to.equal("AAAAA")
				end)
			end)
		end
	end)
end