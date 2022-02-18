return function(plugin, pluginLoaderContext)
	if not plugin then
		return
	end

	local FFlagImprovePluginSpeed_TerrainTools = game:GetFastFlag("ImprovePluginSpeed_TerrainTools")

	local Plugin = script.Parent.Parent

	if not FFlagImprovePluginSpeed_TerrainTools then
		-- Move to loader.server.lua
		local DebugFlags = require(Plugin.Src.Util.DebugFlags)
		if DebugFlags.RunningUnderCLI() then
			return
		end

		-- Fast flags
		require(script.Parent.defineLuaFlags)
	end

	game:DefineFastFlag("TerrainToolsRoactInspector", false)

	local FFlagTerrainToolsImportUploadAssets = game:GetFastFlag("TerrainToolsImportUploadAssets")
	local FFlagTerrainToolsRoactInspector = game:GetFastFlag("TerrainToolsRoactInspector")

	-- Libraries
	local Framework = require(Plugin.Packages.Framework)
	local Roact = require(Plugin.Packages.Roact)
	local Rodux = require(Plugin.Packages.Rodux)
	local UILibraryCompat = Plugin.Src.UILibraryCompat

	-- Context
	local ContextServices = Framework.ContextServices
	local Analytics = ContextServices.Analytics
	local Mouse = ContextServices.Mouse
	local Store = ContextServices.Store

	local ContextItems = require(Plugin.Src.ContextItems)

	local createAnalyticsHandlers = require(Plugin.Src.Util.createAnalyticsHandlers)

	local Http = Framework.Http

	-- Rodux Store
	local MainReducer = require(Plugin.Src.Reducers.MainReducer)

	-- Theme
	local PluginTheme = require(Plugin.Src.Resources.PluginTheme)
	local makeTheme = require(Plugin.Src.Resources.makeTheme)

	-- Localization
	local DevelopmentReferenceTable = Plugin.Src.Resources.DevelopmentReferenceTable
	local TranslationReferenceTable = Plugin.Src.Resources.TranslationReferenceTable
	local Localization = require(UILibraryCompat.Localization)

	-- Terrain Context Items
	local PluginActionsController = require(Plugin.Src.Util.PluginActionsController)
	local PluginActivationController = require(Plugin.Src.Util.PluginActivationController)
	local TerrainImporter = require(Plugin.Src.TerrainInterfaces.TerrainImporterInstance)
	local TerrainGeneration = require(Plugin.Src.TerrainInterfaces.TerrainGenerationInstance)
	local TerrainSeaLevel = require(Plugin.Src.TerrainInterfaces.TerrainSeaLevel)

	local ImageUploader = require(Plugin.Src.Util.ImageUploader)
	local ImageLoader = require(Plugin.Src.Util.ImageLoader)

	-- Top Level Component
	local TerrainTools = require(Plugin.Src.Components.TerrainTools)

	-- Plugin Specific Globals
	local PLUGIN_NAME = "TerrainToolsV2"

	local function createTerrainContextItems()
		local pluginItem = ContextServices.Plugin.new(plugin)
		local mouse = Mouse.new(plugin:getMouse())

		local store = Store.new(Rodux.Store.new(MainReducer, nil, {}))

		local theme = ContextItems.UILibraryTheme.new(PluginTheme.new())
		local localization = Localization.new({
			pluginName = PLUGIN_NAME,
			stringResourceTable = DevelopmentReferenceTable,
			translationResourceTable = TranslationReferenceTable,
		})
		local localizationItem = ContextItems.UILibraryLocalization.new(localization)

		local pluginActions = {
			EditPlane = {
				allowBinding = false,
				defaultShortcut = "ctrl+shift+space",
				id = "EditPlane",
				statusTip = localization:getText("EditPlaneAction", "StatusTip"),
				text = localization:getText("EditPlaneAction", "Text"),
			}
		}
	
		local pluginActionsController = PluginActionsController.new(plugin, pluginActions)

		local networking
		local imageUploader
		if FFlagTerrainToolsImportUploadAssets then
			networking = Http.Networking.new({
				isInternal = true,
			})

			imageUploader = ImageUploader.new(networking)
		end

		local analytics = Analytics.new(createAnalyticsHandlers)

		local terrainInstance = require(Plugin.Src.Util.getTerrain)()
		local terrainItem = ContextItems.Terrain.new(terrainInstance)
		local pluginActivationController = PluginActivationController.new(plugin)

		local terrainImporter = TerrainImporter.new({
			localization = localization,
			analytics = analytics,
			imageUploader = imageUploader,
		})

		local terrainGeneration = TerrainGeneration.new({
			terrain = terrainInstance,
			localization = localization,
			analytics = analytics,
		})

		local seaLevel = TerrainSeaLevel.new({
			terrain = terrainInstance,
			localization = localization,
		})

		local devFrameworkThemeItem = makeTheme()

		local imageLoader = ImageLoader.new()

		local calloutController = ContextItems.CalloutController.new()
		do
			local definitionId = "TerrainToolsColormapCallout"

			local title = localization:getText("ColormapCallout", "Title")
			local description = localization:getText("ColormapCallout", "Description")
			local learnMoreUrl = "https://developer.roblox.com/en-us/articles/importing-terrain-data"

			calloutController:defineCallout(definitionId, title, description, learnMoreUrl)
		end

		return {
			plugin = pluginItem,
			mouse = mouse,
			store = store,
			theme = theme,
			devFrameworkThemeItem = devFrameworkThemeItem,
			localization = localizationItem,
			analytics = analytics,
			networking = networking,
			imageUploader = imageUploader,
			imageLoader = imageLoader,
			terrain = terrainItem,
			pluginActivationController = pluginActivationController,
			pluginActionsController = pluginActionsController,
			terrainImporter = terrainImporter,
			terrainGeneration = terrainGeneration,
			seaLevel = seaLevel,
			calloutController = calloutController,
		}
	end

	local function cleanupTerrainContextItems(contextItems)
		for _, item in pairs(contextItems) do
			pcall(function()
				item:destroy()
			end)
		end
	end

	local function main()
		local contextItems = createTerrainContextItems()

		if FFlagImprovePluginSpeed_TerrainTools then
			contextItems.pluginLoaderContext = pluginLoaderContext
		end

		local roactHandle = Roact.mount(Roact.createElement(TerrainTools, contextItems))

		local inspector
		if FFlagTerrainToolsRoactInspector then
			-- StudioService isn't always available, so ignore if an error is thrown trying to access
			local ok, hasInternalPermission = pcall(function()
				return game:GetService("StudioService"):HasInternalPermission()
			end)

			if ok and hasInternalPermission then
				local inspector = Framework.DeveloperTools.forPlugin("Terrain Editor", plugin)
				inspector:addRoactTree("Roact tree", roactHandle, Roact)
			end
		end

		plugin.Unloading:Connect(function()
			if roactHandle then
				Roact.unmount(roactHandle)
				roactHandle = nil
			end

			if FFlagTerrainToolsRoactInspector and inspector then
				inspector:destroy()
				inspector = nil
			end

			cleanupTerrainContextItems(contextItems)
		end)
	end

	main()
end