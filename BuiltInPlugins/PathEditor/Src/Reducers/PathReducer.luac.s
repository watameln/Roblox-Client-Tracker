PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K2 [{"ChangeHistoryServiceRecording"}]
  GETTABLEKS R6 R1 K3 ["Recording"]
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R1 K3 ["Recording"]
  JUMP [+3]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["None"]
  SETTABLEKS R5 R4 K1 ["ChangeHistoryServiceRecording"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K2 [{"AddPointSubMode"}]
  GETTABLEKS R5 R1 K3 ["SubMode"]
  SETTABLEKS R5 R4 K1 ["AddPointSubMode"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K2 [{"IsDraggingPoint"}]
  GETTABLEKS R5 R1 K3 ["Dragging"]
  SETTABLEKS R5 R4 K1 ["IsDraggingPoint"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"IsDraggingPoint", "ToolbarHovered"}]
  GETTABLEKS R6 R1 K4 ["Hovered"]
  JUMPIFNOT R6 [+2]
  LOADB R5 0
  JUMP [+1]
  LOADNIL R5
  SETTABLEKS R5 R4 K1 ["IsDraggingPoint"]
  GETTABLEKS R5 R1 K4 ["Hovered"]
  SETTABLEKS R5 R4 K2 ["ToolbarHovered"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["Path2DToolMode"]
  JUMPIFNOTEQKS R2 K1 ["DoneEditing"] [+3]
  LOADK R1 K2 ["Move"]
  JUMP [+1]
  LOADK R1 K1 ["DoneEditing"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K4 [{"Path2DToolMode"}]
  SETTABLEKS R1 R4 K0 ["Path2DToolMode"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["join"]
  MOVE R2 R0
  DUPTABLE R3 K3 [{"SelectedTangentSide", "Path2DToolMode"}]
  LOADNIL R4
  SETTABLEKS R4 R3 K1 ["SelectedTangentSide"]
  LOADK R4 K4 ["Move"]
  SETTABLEKS R4 R3 K2 ["Path2DToolMode"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_6:
  GETTABLEKS R3 R0 K0 ["ControlPoints"]
  LENGTH R2 R3
  LOADN R3 2
  JUMPIFNOTLT R2 R3 [+3]
  LOADK R1 K1 ["Append"]
  JUMP [+1]
  LOADK R1 K2 ["Unselected"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K8 [{"Path2DToolMode", "AddPointSubMode", "SelectedControlPointIndex", "SelectedTangentSide"}]
  LOADK R5 K9 ["AddPoint"]
  SETTABLEKS R5 R4 K4 ["Path2DToolMode"]
  SETTABLEKS R1 R4 K5 ["AddPointSubMode"]
  LOADN R5 0
  SETTABLEKS R5 R4 K6 ["SelectedControlPointIndex"]
  LOADNIL R5
  SETTABLEKS R5 R4 K7 ["SelectedTangentSide"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["join"]
  MOVE R2 R0
  DUPTABLE R3 K3 [{"Path2DToolMode", "SelectedTangentSide"}]
  LOADK R4 K4 ["AddTangent"]
  SETTABLEKS R4 R3 K1 ["Path2DToolMode"]
  LOADNIL R4
  SETTABLEKS R4 R3 K2 ["SelectedTangentSide"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_8:
  GETTABLEKS R2 R1 K0 ["PropChanged"]
  GETTABLEKS R3 R0 K1 ["SelectedObject"]
  JUMPIFNOTEQKNIL R3 [+2]
  RETURN R0 1
  NAMECALL R4 R3 K2 ["GetControlPoints"]
  CALL R4 1 1
  LOADNIL R5
  NAMECALL R7 R3 K2 ["GetControlPoints"]
  CALL R7 1 1
  LENGTH R6 R7
  GETTABLEKS R8 R0 K3 ["ControlPointStates"]
  LENGTH R7 R8
  JUMPIFEQ R6 R7 [+5]
  GETUPVAL R6 0
  MOVE R7 R4
  CALL R6 1 1
  MOVE R5 R6
  GETUPVAL R6 1
  GETTABLEKS R7 R3 K4 ["Parent"]
  CALL R6 1 1
  GETTABLEKS R8 R3 K4 ["Parent"]
  GETTABLEKS R7 R8 K5 ["AbsoluteSize"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["join"]
  MOVE R9 R0
  DUPTABLE R10 K11 [{"Refreshed", "ControlPoints", "ControlPointStates", "ParentAbsPos", "ParentAbsSize"}]
  GETIMPORT R11 K13 [tick]
  CALL R11 0 1
  SETTABLEKS R11 R10 K7 ["Refreshed"]
  SETTABLEKS R4 R10 K8 ["ControlPoints"]
  SETTABLEKS R5 R10 K3 ["ControlPointStates"]
  SETTABLEKS R6 R10 K9 ["ParentAbsPos"]
  SETTABLEKS R7 R10 K10 ["ParentAbsSize"]
  CALL R8 2 -1
  RETURN R8 -1

PROTO_9:
  GETTABLEKS R2 R1 K0 ["object"]
  GETTABLEKS R3 R0 K1 ["SelectedObject"]
  JUMPIFNOTEQ R2 R3 [+2]
  RETURN R0 1
  GETTABLEKS R2 R1 K0 ["object"]
  JUMPIFNOTEQKNIL R2 [+2]
  RETURN R0 1
  NAMECALL R3 R2 K2 ["GetControlPoints"]
  CALL R3 1 1
  LOADK R6 K3 ["ScreenGui"]
  NAMECALL R4 R2 K4 ["FindFirstAncestorOfClass"]
  CALL R4 2 1
  GETUPVAL R5 0
  GETTABLEKS R6 R2 K5 ["Parent"]
  CALL R5 1 1
  GETTABLEKS R7 R2 K5 ["Parent"]
  GETTABLEKS R6 R7 K6 ["AbsoluteSize"]
  LENGTH R8 R3
  LOADN R9 1
  JUMPIFNOTLT R9 R8 [+3]
  LOADK R7 K7 ["DoneEditing"]
  JUMP [+1]
  LOADK R7 K8 ["AddPoint"]
  LENGTH R9 R3
  LOADN R10 1
  JUMPIFNOTLT R10 R9 [+3]
  LOADK R8 K9 ["Unselected"]
  JUMP [+1]
  LOADK R8 K10 ["Append"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K11 ["join"]
  MOVE R10 R0
  DUPTABLE R11 K21 [{"SelectedObject", "SelectedParentScreenGui", "ControlPoints", "ControlPointStates", "SelectedControlPointIndex", "SelectedTangentSide", "ParentAbsPos", "ParentAbsSize", "Path2DToolMode", "AddPointSubMode"}]
  SETTABLEKS R2 R11 K1 ["SelectedObject"]
  SETTABLEKS R4 R11 K12 ["SelectedParentScreenGui"]
  SETTABLEKS R3 R11 K13 ["ControlPoints"]
  GETUPVAL R12 2
  MOVE R13 R3
  CALL R12 1 1
  SETTABLEKS R12 R11 K14 ["ControlPointStates"]
  LOADN R12 0
  SETTABLEKS R12 R11 K15 ["SelectedControlPointIndex"]
  LOADNIL R12
  SETTABLEKS R12 R11 K16 ["SelectedTangentSide"]
  SETTABLEKS R5 R11 K17 ["ParentAbsPos"]
  SETTABLEKS R6 R11 K18 ["ParentAbsSize"]
  SETTABLEKS R7 R11 K19 ["Path2DToolMode"]
  SETTABLEKS R8 R11 K20 ["AddPointSubMode"]
  CALL R9 2 -1
  RETURN R9 -1

PROTO_10:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K8 [{"SelectedObject", "ControlPoints", "ControlPointStates", "SelectedControlPointIndex", "SelectedTangentSide", "LockSelectedControlPoint", "Path2DToolMode"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K9 ["None"]
  SETTABLEKS R5 R4 K1 ["SelectedObject"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K2 ["ControlPoints"]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K3 ["ControlPointStates"]
  LOADN R5 0
  SETTABLEKS R5 R4 K4 ["SelectedControlPointIndex"]
  LOADNIL R5
  SETTABLEKS R5 R4 K5 ["SelectedTangentSide"]
  LOADB R5 0
  SETTABLEKS R5 R4 K6 ["LockSelectedControlPoint"]
  LOADK R5 K10 ["DoneEditing"]
  SETTABLEKS R5 R4 K7 ["Path2DToolMode"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_11:
  GETTABLEKS R2 R0 K0 ["DeselectedControlPointIndex"]
  GETTABLEKS R3 R1 K1 ["Index"]
  JUMPIFNOTEQ R2 R3 [+2]
  LOADN R2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["join"]
  MOVE R4 R0
  DUPTABLE R5 K5 [{"SelectedTangentSide", "SelectedControlPointIndex", "DeselectedControlPointIndex"}]
  LOADNIL R6
  SETTABLEKS R6 R5 K3 ["SelectedTangentSide"]
  GETTABLEKS R6 R1 K1 ["Index"]
  SETTABLEKS R6 R5 K4 ["SelectedControlPointIndex"]
  SETTABLEKS R2 R5 K0 ["DeselectedControlPointIndex"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_12:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K2 [{"SelectedTangentSide"}]
  GETTABLEKS R6 R1 K3 ["Side"]
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R1 K3 ["Side"]
  JUMP [+3]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["None"]
  SETTABLEKS R5 R4 K1 ["SelectedTangentSide"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_13:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"SelectedControlPointIndex", "DeselectedControlPointIndex"}]
  LOADN R5 0
  SETTABLEKS R5 R4 K1 ["SelectedControlPointIndex"]
  GETTABLEKS R5 R0 K1 ["SelectedControlPointIndex"]
  SETTABLEKS R5 R4 K2 ["DeselectedControlPointIndex"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_14:
  GETTABLEKS R2 R0 K0 ["SelectedControlPointIndex"]
  GETTABLEKS R3 R0 K1 ["ControlPoints"]
  GETTABLEKS R4 R0 K0 ["SelectedControlPointIndex"]
  LOADN R5 0
  JUMPIFLE R4 R5 [+8]
  GETTABLEKS R4 R0 K0 ["SelectedControlPointIndex"]
  GETTABLEKS R6 R0 K1 ["ControlPoints"]
  LENGTH R5 R6
  JUMPIFNOTLT R5 R4 [+4]
  LOADB R4 0
  SETTABLEKS R4 R1 K2 ["Locked"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K6 [{"LockSelectedControlPoint", "LockedPoint"}]
  GETTABLEKS R7 R1 K2 ["Locked"]
  SETTABLEKS R7 R6 K4 ["LockSelectedControlPoint"]
  GETTABLEKS R8 R1 K2 ["Locked"]
  JUMPIFNOT R8 [+2]
  GETTABLE R7 R3 R2
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K5 ["LockedPoint"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_15:
  GETTABLEKS R2 R1 K0 ["Index"]
  GETIMPORT R3 K3 [table.clone]
  GETTABLEKS R4 R0 K4 ["ControlPointStates"]
  CALL R3 1 1
  GETIMPORT R4 K3 [table.clone]
  GETTABLE R5 R3 R2
  CALL R4 1 1
  SETTABLE R4 R3 R2
  GETTABLE R4 R3 R2
  GETTABLE R7 R3 R2
  GETTABLEKS R6 R7 K5 ["Mirrored"]
  NOT R5 R6
  SETTABLEKS R5 R4 K5 ["Mirrored"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K7 [{"ControlPointStates"}]
  SETTABLEKS R3 R6 K4 ["ControlPointStates"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_16:
  GETTABLEKS R2 R1 K0 ["Index"]
  GETIMPORT R3 K3 [table.clone]
  GETTABLEKS R4 R0 K4 ["ControlPointStates"]
  CALL R3 1 1
  GETIMPORT R4 K3 [table.clone]
  GETTABLE R5 R3 R2
  CALL R4 1 1
  SETTABLE R4 R3 R2
  GETTABLE R4 R3 R2
  GETTABLE R7 R3 R2
  GETTABLEKS R6 R7 K5 ["Sharp"]
  NOT R5 R6
  SETTABLEKS R5 R4 K5 ["Sharp"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K7 [{"ControlPointStates"}]
  SETTABLEKS R3 R6 K4 ["ControlPointStates"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_17:
  GETTABLEKS R2 R1 K0 ["Index"]
  GETIMPORT R3 K3 [table.clone]
  GETTABLEKS R4 R0 K4 ["ControlPointStates"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K5 ["State"]
  SETTABLE R4 R3 R2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["join"]
  MOVE R5 R0
  DUPTABLE R6 K7 [{"ControlPointStates"}]
  SETTABLEKS R3 R6 K4 ["ControlPointStates"]
  CALL R4 2 -1
  RETURN R4 -1

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
  GETTABLEKS R3 R4 K8 ["Rodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K10 ["Resources"]
  GETTABLEKS R5 R6 K11 ["Constants"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K12 ["Actions"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R7 R5 K13 ["ChangeControlPointState"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R5 K14 ["ClearPathSelection"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R5 K15 ["DeselectControlPoint"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R5 K16 ["LockSelectedControlPoint"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R5 K17 ["PathChanged"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R5 K18 ["SelectControlPoint"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R5 K19 ["SelectPath"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R5 K20 ["SelectTangentSide"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R5 K21 ["SetAddPointSubMode"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R5 K22 ["SetIsDraggingPoint"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R5 K23 ["SetRecording"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R5 K24 ["ToggleAddPointTool"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R5 K25 ["ToggleAddTangentTool"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R5 K26 ["ToggleDone"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R5 K27 ["ToggleMirrored"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R22 R5 K28 ["ToggleMoveTool"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R23 R5 K29 ["ToggleSharp"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R24 R5 K30 ["ToolbarHovered"]
  CALL R23 1 1
  GETTABLEKS R25 R0 K5 ["Src"]
  GETTABLEKS R24 R25 K31 ["Util"]
  GETIMPORT R25 K4 [require]
  GETTABLEKS R26 R24 K32 ["getControlPointStates"]
  CALL R25 1 1
  GETIMPORT R26 K4 [require]
  GETTABLEKS R27 R24 K33 ["getAbsolutePosition"]
  CALL R26 1 1
  GETTABLEKS R27 R2 K34 ["createReducer"]
  DUPTABLE R28 K51 [{"AddPointSubMode", "ChangeHistoryServiceRecording", "ControlPoints", "ControlPointStates", "DeselectedControlPointIndex", "IsDraggingPoint", "LockedPoint", "LockSelectedControlPoint", "ParentAbsPos", "ParentAbsSize", "Path2DToolMode", "Refreshed", "ScalePositionMode", "SelectedControlPointIndex", "SelectedObject", "SelectedParentScreenGui", "SelectedTangentSide", "ToolbarHovered"}]
  LOADK R29 K52 ["Unselected"]
  SETTABLEKS R29 R28 K35 ["AddPointSubMode"]
  LOADNIL R29
  SETTABLEKS R29 R28 K36 ["ChangeHistoryServiceRecording"]
  NEWTABLE R29 0 0
  SETTABLEKS R29 R28 K37 ["ControlPoints"]
  NEWTABLE R29 0 0
  SETTABLEKS R29 R28 K38 ["ControlPointStates"]
  LOADN R29 0
  SETTABLEKS R29 R28 K39 ["DeselectedControlPointIndex"]
  LOADB R29 0
  SETTABLEKS R29 R28 K40 ["IsDraggingPoint"]
  LOADNIL R29
  SETTABLEKS R29 R28 K41 ["LockedPoint"]
  LOADB R29 0
  SETTABLEKS R29 R28 K16 ["LockSelectedControlPoint"]
  GETIMPORT R29 K55 [Vector2.zero]
  SETTABLEKS R29 R28 K42 ["ParentAbsPos"]
  GETIMPORT R29 K55 [Vector2.zero]
  SETTABLEKS R29 R28 K43 ["ParentAbsSize"]
  LOADK R29 K56 ["DoneEditing"]
  SETTABLEKS R29 R28 K44 ["Path2DToolMode"]
  LOADN R29 0
  SETTABLEKS R29 R28 K45 ["Refreshed"]
  LOADB R29 1
  SETTABLEKS R29 R28 K46 ["ScalePositionMode"]
  LOADN R29 0
  SETTABLEKS R29 R28 K47 ["SelectedControlPointIndex"]
  LOADNIL R29
  SETTABLEKS R29 R28 K48 ["SelectedObject"]
  LOADNIL R29
  SETTABLEKS R29 R28 K49 ["SelectedParentScreenGui"]
  LOADNIL R29
  SETTABLEKS R29 R28 K50 ["SelectedTangentSide"]
  LOADB R29 0
  SETTABLEKS R29 R28 K30 ["ToolbarHovered"]
  NEWTABLE R29 32 0
  GETTABLEKS R30 R16 K57 ["name"]
  DUPCLOSURE R31 K58 [PROTO_0]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R14 K57 ["name"]
  DUPCLOSURE R31 K59 [PROTO_1]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R15 K57 ["name"]
  DUPCLOSURE R31 K60 [PROTO_2]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R23 K57 ["name"]
  DUPCLOSURE R31 K61 [PROTO_3]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R19 K57 ["name"]
  DUPCLOSURE R31 K62 [PROTO_4]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R21 K57 ["name"]
  DUPCLOSURE R31 K63 [PROTO_5]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R17 K57 ["name"]
  DUPCLOSURE R31 K64 [PROTO_6]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R18 K57 ["name"]
  DUPCLOSURE R31 K65 [PROTO_7]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R10 K57 ["name"]
  DUPCLOSURE R31 K66 [PROTO_8]
  CAPTURE VAL R25
  CAPTURE VAL R26
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R12 K57 ["name"]
  DUPCLOSURE R31 K67 [PROTO_9]
  CAPTURE VAL R26
  CAPTURE VAL R3
  CAPTURE VAL R25
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R7 K57 ["name"]
  DUPCLOSURE R31 K68 [PROTO_10]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R11 K57 ["name"]
  DUPCLOSURE R31 K69 [PROTO_11]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R13 K57 ["name"]
  DUPCLOSURE R31 K70 [PROTO_12]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R8 K57 ["name"]
  DUPCLOSURE R31 K71 [PROTO_13]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R9 K57 ["name"]
  DUPCLOSURE R31 K72 [PROTO_14]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R20 K57 ["name"]
  DUPCLOSURE R31 K73 [PROTO_15]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R22 K57 ["name"]
  DUPCLOSURE R31 K74 [PROTO_16]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  GETTABLEKS R30 R6 K57 ["name"]
  DUPCLOSURE R31 K75 [PROTO_17]
  CAPTURE VAL R3
  SETTABLE R31 R29 R30
  CALL R27 2 1
  RETURN R27 1
