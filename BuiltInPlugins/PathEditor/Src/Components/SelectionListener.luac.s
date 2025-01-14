PROTO_0:
  JUMPIFNOT R1 [+24]
  LOADB R3 0
  SETTABLEKS R3 R1 K0 ["Enabled"]
  GETTABLEKS R4 R0 K1 ["Actions"]
  FASTCALL2 TABLE_INSERT R4 R1 [+4]
  MOVE R5 R1
  GETIMPORT R3 K4 [table.insert]
  CALL R3 2 0
  GETTABLEKS R4 R0 K5 ["Connections"]
  GETTABLEKS R5 R1 K6 ["Triggered"]
  MOVE R7 R2
  NAMECALL R5 R5 K7 ["Connect"]
  CALL R5 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K4 [table.insert]
  CALL R3 -1 0
  RETURN R1 1
  LOADNIL R3
  RETURN R3 1

PROTO_1:
  JUMPIFNOT R1 [+10]
  GETIMPORT R2 K1 [ipairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_INEXT R2
  LOADB R7 1
  SETTABLEKS R7 R6 K2 ["Enabled"]
  FORGLOOP R2 2 [inext] [-4]
  RETURN R0 0

PROTO_2:
  JUMPIFNOT R1 [+10]
  GETIMPORT R2 K1 [ipairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_INEXT R2
  LOADB R7 0
  SETTABLEKS R7 R6 K2 ["Enabled"]
  FORGLOOP R2 2 [inext] [-4]
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Path2DToolMode"]
  JUMPIFNOTEQKS R0 K2 ["AddTangent"] [+32]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K3 ["SelectedControlPointIndex"]
  JUMPIFEQKN R0 K4 [0] [+31]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K5 ["SelectedTangentSide"]
  JUMPIFEQKNIL R0 [+24]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K6 ["dispatchClearControlPointTangent"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["SelectedControlPointIndex"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K5 ["SelectedTangentSide"]
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K7 ["dispatchRemoveControlPoint"]
  CALL R0 0 0
  RETURN R0 0

PROTO_4:
  JUMPIFEQKS R0 K0 ["AbsolutePosition"] [+3]
  JUMPIFNOTEQKS R0 K1 ["AbsoluteSize"] [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["dispatchPathChanged"]
  LOADK R2 K3 ["Position"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Get"]
  CALL R0 1 1
  LENGTH R1 R0
  JUMPIFNOTEQKN R1 K1 [0] [+10]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["dispatchSelectPathCleared"]
  CALL R1 0 0
  GETUPVAL R1 2
  NAMECALL R1 R1 K3 ["disableActions"]
  CALL R1 1 0
  RETURN R0 0
  LENGTH R1 R0
  JUMPIFNOTEQKN R1 K4 [1] [+103]
  GETIMPORT R1 K6 [pairs]
  MOVE R2 R0
  CALL R1 1 3
  FORGPREP_NEXT R1
  LOADK R8 K7 ["Path2D"]
  NAMECALL R6 R5 K8 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+49]
  GETTABLEKS R6 R5 K9 ["Parent"]
  JUMPIFEQKNIL R6 [+46]
  GETTABLEKS R6 R5 K9 ["Parent"]
  LOADK R8 K10 ["GuiBase2d"]
  NAMECALL R6 R6 K8 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+38]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K11 ["dispatchSelectPath"]
  MOVE R7 R5
  CALL R6 1 0
  GETUPVAL R6 2
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K12 ["UniversalActions"]
  NAMECALL R6 R6 K13 ["enableActions"]
  CALL R6 2 0
  GETUPVAL R6 2
  DUPTABLE R8 K16 [{"selectedObjectChangedConn", "selectedObjectParentChangedConn"}]
  GETTABLEKS R9 R5 K17 ["Changed"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K18 ["dispatchPathChanged"]
  NAMECALL R9 R9 K19 ["Connect"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K14 ["selectedObjectChangedConn"]
  GETTABLEKS R10 R5 K9 ["Parent"]
  GETTABLEKS R9 R10 K17 ["Changed"]
  GETUPVAL R11 3
  NAMECALL R9 R9 K19 ["Connect"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["selectedObjectParentChangedConn"]
  NAMECALL R6 R6 K20 ["setState"]
  CALL R6 2 0
  JUMP [+41]
  GETUPVAL R6 2
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K12 ["UniversalActions"]
  NAMECALL R6 R6 K3 ["disableActions"]
  CALL R6 2 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K2 ["dispatchSelectPathCleared"]
  CALL R6 0 0
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K21 ["state"]
  GETTABLEKS R6 R7 K14 ["selectedObjectChangedConn"]
  JUMPIFEQKNIL R6 [+9]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K21 ["state"]
  GETTABLEKS R6 R7 K14 ["selectedObjectChangedConn"]
  NAMECALL R6 R6 K22 ["Disconnect"]
  CALL R6 1 0
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K21 ["state"]
  GETTABLEKS R6 R7 K15 ["selectedObjectParentChangedConn"]
  JUMPIFEQKNIL R6 [+9]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K21 ["state"]
  GETTABLEKS R6 R7 K15 ["selectedObjectParentChangedConn"]
  NAMECALL R6 R6 K22 ["Disconnect"]
  CALL R6 1 0
  FORGLOOP R1 2 [-96]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K1 ["delete"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["SelectionChanged"]
  NEWCLOSURE R5 P2
  CAPTURE UPVAL U0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R2
  NAMECALL R3 R3 K3 ["Connect"]
  CALL R3 2 1
  DUPTABLE R6 K5 [{"selectionChangedConn"}]
  SETTABLEKS R3 R6 K4 ["selectionChangedConn"]
  NAMECALL R4 R0 K6 ["setState"]
  CALL R4 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["PluginActions"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K2 ["Connections"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K3 ["Actions"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K4 ["EditingActions"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R0 K5 ["UniversalActions"]
  GETTABLEKS R3 R0 K4 ["EditingActions"]
  LOADK R8 K6 ["DoneEditing"]
  NAMECALL R6 R1 K7 ["get"]
  CALL R6 2 1
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K8 ["dispatchToggleDone"]
  NAMECALL R4 R0 K9 ["addAction"]
  CALL R4 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K12 [table.insert]
  CALL R2 -1 0
  GETTABLEKS R3 R0 K5 ["UniversalActions"]
  LOADK R8 K13 ["MoveTool"]
  NAMECALL R6 R1 K7 ["get"]
  CALL R6 2 1
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K14 ["dispatchToggleMoveTool"]
  NAMECALL R4 R0 K9 ["addAction"]
  CALL R4 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K12 [table.insert]
  CALL R2 -1 0
  GETTABLEKS R3 R0 K5 ["UniversalActions"]
  LOADK R8 K15 ["AddPointMode"]
  NAMECALL R6 R1 K7 ["get"]
  CALL R6 2 1
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K16 ["dispatchToggleAddPointTool"]
  NAMECALL R4 R0 K9 ["addAction"]
  CALL R4 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K12 [table.insert]
  CALL R2 -1 0
  GETTABLEKS R3 R0 K5 ["UniversalActions"]
  LOADK R8 K17 ["AddTangentMode"]
  NAMECALL R6 R1 K7 ["get"]
  CALL R6 2 1
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K18 ["dispatchToggleAddTangentTool"]
  NAMECALL R4 R0 K9 ["addAction"]
  CALL R4 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K12 [table.insert]
  CALL R2 -1 0
  GETTABLEKS R3 R0 K4 ["EditingActions"]
  LOADK R8 K19 ["DeletePoint"]
  NAMECALL R6 R1 K7 ["get"]
  CALL R6 2 1
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K20 ["dispatchRemoveControlPoint"]
  NAMECALL R4 R0 K9 ["addAction"]
  CALL R4 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K12 [table.insert]
  CALL R2 -1 0
  GETTABLEKS R3 R0 K4 ["EditingActions"]
  LOADK R8 K21 ["DeletePoint2"]
  NAMECALL R6 R1 K7 ["get"]
  CALL R6 2 1
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K20 ["dispatchRemoveControlPoint"]
  NAMECALL R4 R0 K9 ["addAction"]
  CALL R4 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R2 K12 [table.insert]
  CALL R2 -1 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["selectionChangedConn"]
  JUMPIFEQKNIL R1 [+8]
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["selectionChangedConn"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K3 ["selectedObjectChangedConn"]
  JUMPIFEQKNIL R1 [+8]
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K3 ["selectedObjectChangedConn"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K4 ["selectedObjectParentChangedConn"]
  JUMPIFEQKNIL R1 [+8]
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K4 ["selectedObjectParentChangedConn"]
  NAMECALL R1 R1 K2 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K5 ["Connections"]
  JUMPIFNOT R1 [+15]
  GETIMPORT R1 K7 [ipairs]
  GETTABLEKS R2 R0 K5 ["Connections"]
  CALL R1 1 3
  FORGPREP_INEXT R1
  NAMECALL R6 R5 K2 ["Disconnect"]
  CALL R6 1 0
  FORGLOOP R1 2 [inext] [-4]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K5 ["Connections"]
  GETTABLEKS R1 R0 K8 ["Actions"]
  JUMPIFNOT R1 [+11]
  GETIMPORT R1 K7 [ipairs]
  GETTABLEKS R2 R0 K8 ["Actions"]
  CALL R1 1 3
  FORGPREP_INEXT R1
  LOADB R6 0
  SETTABLEKS R6 R5 K9 ["Enabled"]
  FORGLOOP R1 2 [inext] [-4]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["lastToolingMode"]
  GETTABLEKS R3 R1 K2 ["Path2DToolMode"]
  JUMPIFEQ R2 R3 [+20]
  GETTABLEKS R2 R1 K2 ["Path2DToolMode"]
  SETTABLEKS R2 R0 K1 ["lastToolingMode"]
  GETTABLEKS R2 R0 K1 ["lastToolingMode"]
  JUMPIFNOTEQKS R2 K3 ["DoneEditing"] [+7]
  GETTABLEKS R4 R0 K4 ["EditingActions"]
  NAMECALL R2 R0 K5 ["disableActions"]
  CALL R2 2 0
  JUMP [+5]
  GETTABLEKS R4 R0 K4 ["EditingActions"]
  NAMECALL R2 R0 K6 ["enableActions"]
  CALL R2 2 0
  LOADNIL R2
  RETURN R2 1

PROTO_10:
  DUPTABLE R2 K4 [{"SelectedObject", "SelectedControlPointIndex", "SelectedTangentSide", "Path2DToolMode"}]
  GETTABLEKS R4 R0 K5 ["PathReducer"]
  GETTABLEKS R3 R4 K0 ["SelectedObject"]
  SETTABLEKS R3 R2 K0 ["SelectedObject"]
  GETTABLEKS R4 R0 K5 ["PathReducer"]
  GETTABLEKS R3 R4 K1 ["SelectedControlPointIndex"]
  SETTABLEKS R3 R2 K1 ["SelectedControlPointIndex"]
  GETTABLEKS R4 R0 K5 ["PathReducer"]
  GETTABLEKS R3 R4 K2 ["SelectedTangentSide"]
  SETTABLEKS R3 R2 K2 ["SelectedTangentSide"]
  GETTABLEKS R4 R0 K5 ["PathReducer"]
  GETTABLEKS R3 R4 K3 ["Path2DToolMode"]
  SETTABLEKS R3 R2 K3 ["Path2DToolMode"]
  RETURN R2 1

PROTO_11:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_19:
  DUPTABLE R1 K8 [{"dispatchToggleDone", "dispatchToggleAddPointTool", "dispatchToggleMoveTool", "dispatchToggleAddTangentTool", "dispatchPathChanged", "dispatchSelectPath", "dispatchSelectPathCleared", "dispatchRemoveControlPoint"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchToggleDone"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["dispatchToggleAddPointTool"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["dispatchToggleMoveTool"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["dispatchToggleAddTangentTool"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K4 ["dispatchPathChanged"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R1 K5 ["dispatchSelectPath"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R2 R1 K6 ["dispatchSelectPathCleared"]
  NEWCLOSURE R2 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  SETTABLEKS R2 R1 K7 ["dispatchRemoveControlPoint"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
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
  GETTABLEKS R4 R5 K9 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Packages"]
  GETTABLEKS R5 R6 K10 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K12 [game]
  LOADK R7 K13 ["Selection"]
  NAMECALL R5 R5 K14 ["GetService"]
  CALL R5 2 1
  GETTABLEKS R6 R4 K15 ["ContextServices"]
  GETTABLEKS R7 R6 K16 ["withContext"]
  GETTABLEKS R9 R0 K5 ["Src"]
  GETTABLEKS R8 R9 K17 ["Actions"]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R8 K18 ["SelectPath"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R8 K19 ["ClearPathSelection"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R8 K20 ["PathChanged"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R8 K21 ["ToggleAddPointTool"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R8 K22 ["ToggleMoveTool"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R8 K23 ["ToggleAddTangentTool"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R8 K24 ["ToggleDone"]
  CALL R15 1 1
  GETTABLEKS R17 R0 K5 ["Src"]
  GETTABLEKS R16 R17 K25 ["Thunks"]
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R16 K26 ["RemoveControlPoint"]
  CALL R17 1 1
  GETTABLEKS R18 R2 K27 ["PureComponent"]
  LOADK R20 K28 ["SelectionListener"]
  NAMECALL R18 R18 K29 ["extend"]
  CALL R18 2 1
  DUPCLOSURE R19 K30 [PROTO_0]
  SETTABLEKS R19 R18 K31 ["addAction"]
  DUPCLOSURE R19 K32 [PROTO_1]
  SETTABLEKS R19 R18 K33 ["enableActions"]
  DUPCLOSURE R19 K34 [PROTO_2]
  SETTABLEKS R19 R18 K35 ["disableActions"]
  DUPCLOSURE R19 K36 [PROTO_6]
  CAPTURE VAL R5
  SETTABLEKS R19 R18 K37 ["init"]
  DUPCLOSURE R19 K38 [PROTO_7]
  SETTABLEKS R19 R18 K39 ["didMount"]
  DUPCLOSURE R19 K40 [PROTO_8]
  SETTABLEKS R19 R18 K41 ["willUnmount"]
  DUPCLOSURE R19 K42 [PROTO_9]
  SETTABLEKS R19 R18 K43 ["render"]
  MOVE R19 R7
  DUPTABLE R20 K46 [{"PluginActions", "Mouse"}]
  GETTABLEKS R21 R6 K44 ["PluginActions"]
  SETTABLEKS R21 R20 K44 ["PluginActions"]
  GETTABLEKS R21 R6 K45 ["Mouse"]
  SETTABLEKS R21 R20 K45 ["Mouse"]
  CALL R19 1 1
  MOVE R20 R18
  CALL R19 1 1
  MOVE R18 R19
  GETTABLEKS R19 R3 K47 ["connect"]
  DUPCLOSURE R20 K48 [PROTO_10]
  DUPCLOSURE R21 K49 [PROTO_19]
  CAPTURE VAL R15
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R17
  CALL R19 2 1
  MOVE R20 R18
  CALL R19 1 -1
  RETURN R19 -1
