PROTO_0:
  LOADK R3 K0 ["AvatarUnification"]
  RETURN R3 1

PROTO_1:
  LOADK R3 K0 ["RobloxClassicButton"]
  RETURN R3 1

PROTO_2:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Description"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_3:
  MOVE R3 R0
  MOVE R4 R1
  MOVE R5 R2
  LOADK R6 K0 ["Plugin"]
  LOADK R7 K1 ["Name"]
  CALL R3 4 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ImprovePluginSpeed_RobloxClassic"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETIMPORT R2 K5 [script]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETTABLEKS R0 R1 K6 ["Parent"]
  GETIMPORT R1 K8 [require]
  GETTABLEKS R4 R0 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Util"]
  GETTABLEKS R2 R3 K11 ["DebugFlags"]
  CALL R1 1 1
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R0 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Util"]
  GETTABLEKS R3 R4 K12 ["shouldPluginRun"]
  CALL R2 1 1
  MOVE R3 R2
  CALL R3 0 1
  JUMPIF R3 [+1]
  RETURN R0 0
  GETTABLEKS R3 R1 K13 ["RunTests"]
  CALL R3 0 1
  JUMPIF R3 [+4]
  GETTABLEKS R3 R1 K14 ["RunningUnderCLI"]
  CALL R3 0 1
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K15 ["Resources"]
  GETTABLEKS R4 R5 K16 ["Localization"]
  GETTABLEKS R3 R4 K17 ["SourceStrings"]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K15 ["Resources"]
  GETTABLEKS R5 R6 K16 ["Localization"]
  GETTABLEKS R4 R5 K18 ["LocalizedStrings"]
  GETIMPORT R5 K8 [require]
  GETTABLEKS R7 R0 K19 ["PluginLoader"]
  GETTABLEKS R6 R7 K20 ["PluginLoaderBuilder"]
  CALL R5 1 1
  DUPTABLE R6 K30 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
  GETIMPORT R7 K31 [plugin]
  SETTABLEKS R7 R6 K21 ["plugin"]
  LOADK R7 K32 ["RobloxClassic"]
  SETTABLEKS R7 R6 K22 ["pluginName"]
  SETTABLEKS R4 R6 K23 ["translationResourceTable"]
  SETTABLEKS R3 R6 K24 ["fallbackResourceTable"]
  LOADNIL R7
  SETTABLEKS R7 R6 K25 ["overrideLocaleId"]
  LOADNIL R7
  SETTABLEKS R7 R6 K26 ["localizationNamespace"]
  DUPCLOSURE R7 K33 [PROTO_0]
  SETTABLEKS R7 R6 K27 ["getToolbarName"]
  DUPTABLE R7 K38 [{"getName", "getDescription", "icon", "text"}]
  DUPCLOSURE R8 K39 [PROTO_1]
  SETTABLEKS R8 R7 K34 ["getName"]
  DUPCLOSURE R8 K40 [PROTO_2]
  SETTABLEKS R8 R7 K35 ["getDescription"]
  LOADK R8 K41 ["rbxasset://textures/AnimationEditor/rigbuilder_blue.png"]
  SETTABLEKS R8 R7 K36 ["icon"]
  LOADNIL R8
  SETTABLEKS R8 R7 K37 ["text"]
  SETTABLEKS R7 R6 K28 ["buttonInfo"]
  DUPTABLE R7 K47 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "name", "zIndexBehavior"}]
  LOADK R8 K32 ["RobloxClassic"]
  SETTABLEKS R8 R7 K42 ["id"]
  GETIMPORT R8 K50 [DockWidgetPluginGuiInfo.new]
  GETIMPORT R9 K54 [Enum.InitialDockState.Bottom]
  LOADB R10 0
  LOADB R11 1
  LOADN R12 128
  LOADN R13 224
  LOADN R14 250
  LOADN R15 200
  CALL R8 7 1
  SETTABLEKS R8 R7 K43 ["dockWidgetPluginGuiInfo"]
  DUPCLOSURE R8 K55 [PROTO_3]
  SETTABLEKS R8 R7 K44 ["getDockTitle"]
  LOADK R8 K32 ["RobloxClassic"]
  SETTABLEKS R8 R7 K45 ["name"]
  GETIMPORT R8 K58 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R8 R7 K46 ["zIndexBehavior"]
  SETTABLEKS R7 R6 K29 ["dockWidgetInfo"]
  GETTABLEKS R7 R5 K59 ["build"]
  MOVE R8 R6
  CALL R7 1 1
  GETTABLEKS R8 R7 K60 ["pluginLoader"]
  NAMECALL R8 R8 K61 ["waitForUserInteraction"]
  CALL R8 1 1
  JUMPIF R8 [+1]
  RETURN R0 0
  GETIMPORT R9 K8 [require]
  GETIMPORT R12 K5 [script]
  GETTABLEKS R11 R12 K6 ["Parent"]
  GETTABLEKS R10 R11 K62 ["main"]
  CALL R9 1 1
  MOVE R10 R9
  GETIMPORT R11 K31 [plugin]
  MOVE R12 R7
  CALL R10 2 0
  RETURN R0 0
