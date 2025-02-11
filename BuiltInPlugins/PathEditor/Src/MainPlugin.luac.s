PROTO_0:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_1:
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K0 ["state"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Store"]
  GETTABLEKS R2 R3 K2 ["new"]
  GETUPVAL R3 1
  LOADNIL R4
  NEWTABLE R5 0 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K3 ["thunkMiddleware"]
  SETLIST R5 R6 1 [1]
  LOADNIL R6
  CALL R2 4 1
  SETTABLEKS R2 R0 K4 ["store"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K5 ["Localization"]
  GETTABLEKS R2 R3 K2 ["new"]
  DUPTABLE R3 K9 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K6 ["stringResourceTable"]
  GETUPVAL R4 4
  SETTABLEKS R4 R3 K7 ["translationResourceTable"]
  LOADK R4 K10 ["PathEditor"]
  SETTABLEKS R4 R3 K8 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K11 ["localization"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K12 ["Analytics"]
  GETTABLEKS R2 R3 K2 ["new"]
  DUPCLOSURE R3 K13 [PROTO_0]
  NEWTABLE R4 0 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K14 ["analytics"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K15 ["PluginActions"]
  GETTABLEKS R2 R3 K2 ["new"]
  GETTABLEKS R3 R1 K16 ["Plugin"]
  GETUPVAL R4 5
  GETTABLEKS R5 R1 K17 ["plugin"]
  GETTABLEKS R6 R0 K11 ["localization"]
  CALL R4 2 -1
  CALL R2 -1 1
  SETTABLEKS R2 R0 K18 ["actions"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Plugin"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["provide"]
  NEWTABLE R4 0 7
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["new"]
  MOVE R6 R2
  CALL R5 1 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["new"]
  GETTABLEKS R7 R0 K4 ["store"]
  CALL R6 1 1
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K3 ["new"]
  NAMECALL R8 R2 K5 ["getMouse"]
  CALL R8 1 -1
  CALL R7 -1 1
  GETUPVAL R8 4
  CALL R8 0 1
  GETTABLEKS R9 R0 K6 ["localization"]
  GETTABLEKS R10 R0 K7 ["analytics"]
  GETTABLEKS R11 R0 K8 ["actions"]
  SETLIST R4 R5 7 [1]
  DUPTABLE R5 K11 [{"Portal", "SelectionListener"}]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K12 ["createPortal"]
  DUPTABLE R7 K14 [{"PathEditFolder"}]
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K15 ["createElement"]
  LOADK R9 K16 ["Folder"]
  DUPTABLE R10 K18 [{"Name"}]
  LOADK R11 K13 ["PathEditFolder"]
  SETTABLEKS R11 R10 K17 ["Name"]
  DUPTABLE R11 K24 [{"ControlPointEditGui", "PathToolbar", "MoveBaseGui", "VisualizationGui", "AddPointComponent"}]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K15 ["createElement"]
  GETUPVAL R13 7
  CALL R12 1 1
  SETTABLEKS R12 R11 K19 ["ControlPointEditGui"]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K15 ["createElement"]
  GETUPVAL R13 8
  CALL R12 1 1
  SETTABLEKS R12 R11 K20 ["PathToolbar"]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K15 ["createElement"]
  GETUPVAL R13 9
  CALL R12 1 1
  SETTABLEKS R12 R11 K21 ["MoveBaseGui"]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K15 ["createElement"]
  GETUPVAL R13 10
  CALL R12 1 1
  SETTABLEKS R12 R11 K22 ["VisualizationGui"]
  GETUPVAL R13 6
  GETTABLEKS R12 R13 K15 ["createElement"]
  GETUPVAL R13 11
  CALL R12 1 1
  SETTABLEKS R12 R11 K23 ["AddPointComponent"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K13 ["PathEditFolder"]
  GETUPVAL R8 12
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["Portal"]
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K15 ["createElement"]
  GETUPVAL R7 13
  CALL R6 1 1
  SETTABLEKS R6 R5 K10 ["SelectionListener"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["ReactRoblox"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Rodux"]
  CALL R4 1 1
  GETIMPORT R5 K12 [game]
  LOADK R7 K13 ["CoreGui"]
  NAMECALL R5 R5 K14 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K7 ["Packages"]
  GETTABLEKS R7 R8 K15 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K16 ["ContextServices"]
  GETTABLEKS R8 R7 K17 ["Plugin"]
  GETTABLEKS R9 R7 K18 ["Mouse"]
  GETTABLEKS R10 R7 K19 ["Store"]
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K5 ["Src"]
  GETTABLEKS R13 R14 K20 ["Reducers"]
  GETTABLEKS R12 R13 K21 ["MainReducer"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K5 ["Src"]
  GETTABLEKS R14 R15 K22 ["Resources"]
  GETTABLEKS R13 R14 K23 ["MakeTheme"]
  CALL R12 1 1
  GETTABLEKS R16 R0 K5 ["Src"]
  GETTABLEKS R15 R16 K22 ["Resources"]
  GETTABLEKS R14 R15 K24 ["Localization"]
  GETTABLEKS R13 R14 K25 ["SourceStrings"]
  GETTABLEKS R17 R0 K5 ["Src"]
  GETTABLEKS R16 R17 K22 ["Resources"]
  GETTABLEKS R15 R16 K24 ["Localization"]
  GETTABLEKS R14 R15 K26 ["LocalizedStrings"]
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K5 ["Src"]
  GETTABLEKS R17 R18 K27 ["Util"]
  GETTABLEKS R16 R17 K28 ["MakePluginActions"]
  CALL R15 1 1
  GETTABLEKS R17 R0 K5 ["Src"]
  GETTABLEKS R16 R17 K29 ["Components"]
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R16 K30 ["ControlPointEditGui"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R16 K31 ["SelectionListener"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R16 K32 ["PathToolbar"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R16 K33 ["MoveBaseGui"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R22 R16 K34 ["VisualizationGui"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R23 R16 K35 ["AddPointComponent"]
  CALL R22 1 1
  GETTABLEKS R23 R2 K36 ["PureComponent"]
  LOADK R25 K37 ["MainPlugin"]
  NAMECALL R23 R23 K38 ["extend"]
  CALL R23 2 1
  DUPCLOSURE R24 K39 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R15
  SETTABLEKS R24 R23 K40 ["init"]
  DUPCLOSURE R24 K41 [PROTO_2]
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R17
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R5
  CAPTURE VAL R18
  SETTABLEKS R24 R23 K42 ["render"]
  RETURN R23 1
