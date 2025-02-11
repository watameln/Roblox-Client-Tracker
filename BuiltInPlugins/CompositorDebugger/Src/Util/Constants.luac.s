MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CDHistoryLength"]
  LOADN R3 88
  NAMECALL R0 R0 K3 ["DefineFastInt"]
  CALL R0 3 1
  DUPTABLE R1 K10 [{"HISTORY_FRAMES", "LAYER_TABS", "FOLDERS", "EVENTS", "LAYERVIEW_ACTIONS", "SETTINGS"}]
  SETTABLEKS R0 R1 K4 ["HISTORY_FRAMES"]
  DUPTABLE R2 K15 [{"LayerData", "Visualization", "History", "RawData"}]
  LOADK R3 K11 ["LayerData"]
  SETTABLEKS R3 R2 K11 ["LayerData"]
  LOADK R3 K12 ["Visualization"]
  SETTABLEKS R3 R2 K12 ["Visualization"]
  LOADK R3 K13 ["History"]
  SETTABLEKS R3 R2 K13 ["History"]
  LOADK R3 K14 ["RawData"]
  SETTABLEKS R3 R2 K14 ["RawData"]
  SETTABLEKS R2 R1 K5 ["LAYER_TABS"]
  DUPTABLE R2 K20 [{"CompositorDebugger", "Server", "Client", "AdornmentHandles"}]
  LOADK R3 K21 ["__RobloxCompositorDebugger"]
  SETTABLEKS R3 R2 K16 ["CompositorDebugger"]
  LOADK R3 K17 ["Server"]
  SETTABLEKS R3 R2 K17 ["Server"]
  LOADK R3 K18 ["Client"]
  SETTABLEKS R3 R2 K18 ["Client"]
  LOADK R3 K19 ["AdornmentHandles"]
  SETTABLEKS R3 R2 K19 ["AdornmentHandles"]
  SETTABLEKS R2 R1 K6 ["FOLDERS"]
  DUPTABLE R2 K25 [{"DebugData", "PropertyOverrides", "LayerAdornments"}]
  LOADK R3 K22 ["DebugData"]
  SETTABLEKS R3 R2 K22 ["DebugData"]
  LOADK R3 K23 ["PropertyOverrides"]
  SETTABLEKS R3 R2 K23 ["PropertyOverrides"]
  LOADK R3 K24 ["LayerAdornments"]
  SETTABLEKS R3 R2 K24 ["LayerAdornments"]
  SETTABLEKS R2 R1 K7 ["EVENTS"]
  DUPTABLE R2 K28 [{"Clear", "History", "NoOp"}]
  LOADK R3 K26 ["Clear"]
  SETTABLEKS R3 R2 K26 ["Clear"]
  LOADK R3 K13 ["History"]
  SETTABLEKS R3 R2 K13 ["History"]
  LOADK R3 K27 ["NoOp"]
  SETTABLEKS R3 R2 K27 ["NoOp"]
  SETTABLEKS R2 R1 K8 ["LAYERVIEW_ACTIONS"]
  DUPTABLE R2 K31 [{"LayerFilters", "ActiveLayersFilter"}]
  LOADK R3 K32 ["CD_LayerFilters"]
  SETTABLEKS R3 R2 K29 ["LayerFilters"]
  LOADK R3 K33 ["CD_ActiveLayersFilter"]
  SETTABLEKS R3 R2 K30 ["ActiveLayersFilter"]
  SETTABLEKS R2 R1 K9 ["SETTINGS"]
  RETURN R1 1
