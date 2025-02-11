PROTO_0:
  DUPTABLE R1 K1 [{"enabled"}]
  GETTABLEKS R3 R0 K0 ["enabled"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["enabled"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_0]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  SETTABLEKS R0 R3 K0 ["enabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["PluginLoaderContext"]
  GETTABLEKS R0 R1 K2 ["mainButtonClickedSignal"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["toggleEnabled"]
  NAMECALL R0 R0 K4 ["Connect"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_7:
  DUPTABLE R4 K1 [{"enabled"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K0 ["enabled"]
  NAMECALL R2 R0 K2 ["setState"]
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K3 ["toggleEnabled"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K4 ["onClose"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K5 ["onRestore"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["onWidgetEnabledChanged"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K7 ["onDockWidgetCreated"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["Store"]
  GETTABLEKS R2 R3 K9 ["new"]
  GETUPVAL R3 1
  LOADNIL R4
  NEWTABLE R5 0 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K10 ["thunkMiddleware"]
  SETLIST R5 R6 1 [1]
  LOADNIL R6
  CALL R2 4 1
  SETTABLEKS R2 R0 K11 ["store"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K12 ["Localization"]
  GETTABLEKS R2 R3 K9 ["new"]
  DUPTABLE R3 K16 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K13 ["stringResourceTable"]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K14 ["translationResourceTable"]
  LOADK R4 K17 ["SimulationStep"]
  SETTABLEKS R4 R3 K15 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K18 ["localization"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K19 ["Analytics"]
  GETTABLEKS R2 R3 K9 ["new"]
  DUPCLOSURE R3 K20 [PROTO_6]
  NEWTABLE R4 0 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K21 ["analytics"]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K9 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K22 ["DEPRECATED_stylizer"]
  GETUPVAL R2 6
  GETTABLEKS R3 R1 K23 ["Plugin"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K24 ["design"]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["PluginLoaderContext"]
  GETTABLEKS R1 R2 K2 ["mainButton"]
  GETTABLEKS R4 R0 K3 ["state"]
  GETTABLEKS R3 R4 K4 ["enabled"]
  NAMECALL R1 R1 K5 ["SetActive"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["provide"]
  NEWTABLE R6 0 6
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["new"]
  MOVE R8 R3
  CALL R7 1 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K5 ["new"]
  GETTABLEKS R9 R0 K6 ["store"]
  CALL R8 1 1
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K5 ["new"]
  NAMECALL R10 R3 K7 ["getMouse"]
  CALL R10 1 -1
  CALL R9 -1 1
  GETTABLEKS R10 R0 K8 ["DEPRECATED_stylizer"]
  GETTABLEKS R11 R0 K9 ["localization"]
  GETTABLEKS R12 R0 K10 ["analytics"]
  SETLIST R6 R7 6 [1]
  DUPTABLE R7 K12 [{"MainWidget"}]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K13 ["createElement"]
  GETUPVAL R9 5
  NEWTABLE R10 16 0
  LOADK R11 K14 ["SimulationStep"]
  SETTABLEKS R11 R10 K15 ["Id"]
  SETTABLEKS R4 R10 K16 ["Enabled"]
  GETTABLEKS R11 R0 K9 ["localization"]
  LOADK R13 K2 ["Plugin"]
  LOADK R14 K17 ["Name"]
  NAMECALL R11 R11 K18 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K19 ["Title"]
  GETIMPORT R11 K23 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R11 R10 K21 ["ZIndexBehavior"]
  GETIMPORT R11 K26 [Enum.InitialDockState.Bottom]
  SETTABLEKS R11 R10 K24 ["InitialDockState"]
  GETIMPORT R11 K28 [Vector2.new]
  LOADN R12 128
  LOADN R13 224
  CALL R11 2 1
  SETTABLEKS R11 R10 K29 ["Size"]
  GETIMPORT R11 K28 [Vector2.new]
  LOADN R12 250
  LOADN R13 200
  CALL R11 2 1
  SETTABLEKS R11 R10 K30 ["MinSize"]
  GETTABLEKS R11 R0 K31 ["onClose"]
  SETTABLEKS R11 R10 K32 ["OnClose"]
  LOADB R11 1
  SETTABLEKS R11 R10 K33 ["ShouldRestore"]
  GETTABLEKS R11 R0 K34 ["onRestore"]
  SETTABLEKS R11 R10 K35 ["OnWidgetRestored"]
  GETTABLEKS R12 R1 K36 ["PluginLoaderContext"]
  GETTABLEKS R11 R12 K37 ["mainDockWidget"]
  SETTABLEKS R11 R10 K38 ["Widget"]
  GETTABLEKS R11 R0 K39 ["onDockWidgetCreated"]
  SETTABLEKS R11 R10 K40 ["OnWidgetCreated"]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K41 ["Change"]
  GETTABLEKS R11 R12 K16 ["Enabled"]
  GETTABLEKS R12 R0 K42 ["onWidgetEnabledChanged"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K45 [{"Wrapper", "StyleLink"}]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K13 ["createElement"]
  GETUPVAL R13 7
  NEWTABLE R14 1 0
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K46 ["Tag"]
  LOADK R16 K47 ["X-Fill X-Column"]
  SETTABLE R16 R14 R15
  DUPTABLE R15 K50 [{"ExampleComponent", "ExampleRoduxComponent"}]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K13 ["createElement"]
  GETUPVAL R17 8
  CALL R16 1 1
  SETTABLEKS R16 R15 K48 ["ExampleComponent"]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K13 ["createElement"]
  GETUPVAL R17 9
  CALL R16 1 1
  SETTABLEKS R16 R15 K49 ["ExampleRoduxComponent"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K43 ["Wrapper"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K13 ["createElement"]
  LOADK R13 K44 ["StyleLink"]
  DUPTABLE R14 K52 [{"StyleSheet"}]
  GETTABLEKS R15 R0 K53 ["design"]
  SETTABLEKS R15 R14 K51 ["StyleSheet"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K44 ["StyleLink"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K11 ["MainWidget"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["SimulationStep"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["ReactRoblox"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Rodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K11 ["UI"]
  GETTABLEKS R6 R5 K12 ["DockWidget"]
  GETTABLEKS R7 R5 K13 ["Pane"]
  GETTABLEKS R8 R4 K14 ["ContextServices"]
  GETTABLEKS R9 R8 K15 ["Plugin"]
  GETTABLEKS R10 R8 K16 ["Mouse"]
  GETTABLEKS R11 R8 K17 ["Store"]
  GETTABLEKS R14 R4 K18 ["Style"]
  GETTABLEKS R13 R14 K19 ["Themes"]
  GETTABLEKS R12 R13 K20 ["StudioTheme"]
  GETTABLEKS R14 R4 K21 ["Styling"]
  GETTABLEKS R13 R14 K22 ["registerPluginStyles"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R17 R0 K23 ["Src"]
  GETTABLEKS R16 R17 K24 ["Reducers"]
  GETTABLEKS R15 R16 K25 ["MainReducer"]
  CALL R14 1 1
  GETTABLEKS R18 R0 K23 ["Src"]
  GETTABLEKS R17 R18 K26 ["Resources"]
  GETTABLEKS R16 R17 K27 ["Localization"]
  GETTABLEKS R15 R16 K28 ["SourceStrings"]
  GETTABLEKS R19 R0 K23 ["Src"]
  GETTABLEKS R18 R19 K26 ["Resources"]
  GETTABLEKS R17 R18 K27 ["Localization"]
  GETTABLEKS R16 R17 K29 ["LocalizedStrings"]
  GETTABLEKS R18 R0 K23 ["Src"]
  GETTABLEKS R17 R18 K30 ["Components"]
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R17 K31 ["ExampleComponent"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R17 K32 ["ExampleRoduxComponent"]
  CALL R19 1 1
  GETTABLEKS R20 R1 K33 ["PureComponent"]
  LOADK R22 K34 ["MainPlugin"]
  NAMECALL R20 R20 K35 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K36 [PROTO_7]
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R8
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R12
  CAPTURE VAL R13
  SETTABLEKS R21 R20 K37 ["init"]
  DUPCLOSURE R21 K38 [PROTO_8]
  SETTABLEKS R21 R20 K39 ["didUpdate"]
  DUPCLOSURE R21 K40 [PROTO_9]
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R18
  CAPTURE VAL R19
  SETTABLEKS R21 R20 K41 ["render"]
  RETURN R20 1
