PROTO_0:
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["tangentPoints"]
  RETURN R0 0

PROTO_1:
  GETTABLEKS R3 R0 K0 ["props"]
  JUMPIFEQKS R1 K1 ["Left"] [+10]
  JUMPIFEQKS R1 K2 ["Right"] [+8]
  GETIMPORT R4 K4 [error]
  LOADK R6 K5 ["invalid tangent side: "]
  MOVE R7 R1
  CONCAT R5 R6 R7
  CALL R4 1 0
  RETURN R0 0
  GETTABLEKS R4 R3 K6 ["showTangents"]
  JUMPIF R4 [+5]
  GETTABLEKS R4 R3 K7 ["showTangentsPhantom"]
  JUMPIF R4 [+2]
  LOADNIL R4
  RETURN R4 1
  GETTABLEKS R4 R3 K7 ["showTangentsPhantom"]
  GETUPVAL R5 0
  MOVE R6 R1
  CALL R5 1 1
  GETUPVAL R6 1
  GETTABLEKS R8 R3 K8 ["point"]
  GETTABLE R7 R8 R5
  GETTABLEKS R9 R3 K9 ["SelectedObject"]
  GETTABLEKS R8 R9 K10 ["Parent"]
  CALL R6 2 1
  GETIMPORT R7 K13 [Vector2.zero]
  JUMPIFNOTEQ R6 R7 [+3]
  LOADNIL R7
  RETURN R7 1
  GETTABLEKS R8 R3 K14 ["ControlPoints"]
  LENGTH R7 R8
  MOVE R9 R5
  LOADK R10 K15 ["Point"]
  CONCAT R8 R9 R10
  MOVE R10 R5
  LOADK R11 K16 ["Line"]
  CONCAT R9 R10 R11
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K17 ["createElement"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K18 ["Fragment"]
  NEWTABLE R12 0 0
  NEWTABLE R13 2 0
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K17 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K25 [{"index", "absolutePosition", "position", "side", "isPhantom", "Disabled"}]
  GETTABLEKS R17 R3 K19 ["index"]
  SETTABLEKS R17 R16 K19 ["index"]
  ADD R17 R2 R6
  SETTABLEKS R17 R16 K20 ["absolutePosition"]
  SETTABLEKS R6 R16 K21 ["position"]
  SETTABLEKS R1 R16 K22 ["side"]
  SETTABLEKS R4 R16 K23 ["isPhantom"]
  GETTABLEKS R17 R3 K24 ["Disabled"]
  SETTABLEKS R17 R16 K24 ["Disabled"]
  CALL R14 2 1
  SETTABLE R14 R13 R8
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K17 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K29 [{"ZIndex", "Style", "Position", "ControlPoints"}]
  LOADN R17 255
  SETTABLEKS R17 R16 K26 ["ZIndex"]
  JUMPIFNOT R4 [+2]
  LOADK R17 K30 ["PhantomTangent"]
  JUMP [+1]
  LOADK R17 K31 ["Tangent"]
  SETTABLEKS R17 R16 K27 ["Style"]
  GETIMPORT R17 K34 [UDim2.fromOffset]
  GETTABLEKS R18 R2 K35 ["X"]
  GETTABLEKS R19 R2 K36 ["Y"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K28 ["Position"]
  NEWTABLE R17 0 2
  GETUPVAL R18 5
  GETIMPORT R19 K38 [UDim2.new]
  CALL R19 0 1
  GETIMPORT R20 K38 [UDim2.new]
  CALL R20 0 1
  GETIMPORT R21 K38 [UDim2.new]
  CALL R21 0 -1
  CALL R18 -1 1
  GETUPVAL R19 5
  GETIMPORT R20 K34 [UDim2.fromOffset]
  GETTABLEKS R21 R6 K35 ["X"]
  GETTABLEKS R22 R6 K36 ["Y"]
  CALL R20 2 1
  GETIMPORT R21 K38 [UDim2.new]
  CALL R21 0 1
  GETIMPORT R22 K38 [UDim2.new]
  CALL R22 0 -1
  CALL R19 -1 -1
  SETLIST R17 R18 -1 [1]
  SETTABLEKS R17 R16 K14 ["ControlPoints"]
  CALL R14 2 1
  SETTABLE R14 R13 R9
  CALL R10 3 -1
  RETURN R10 -1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["dispatchRecordChangeHistory"]
  LOADK R1 K1 ["Move Control Point"]
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["dispatchLockSelectedControlPoint"]
  LOADB R1 1
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["Path2DToolMode"]
  JUMPIFNOTEQKS R0 K4 ["AddTangent"] [+67]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K5 ["ControlPoints"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K6 ["index"]
  LENGTH R3 R0
  JUMPIFNOTEQ R2 R3 [+3]
  LOADK R1 K7 ["Left"]
  JUMP [+1]
  LOADK R1 K8 ["Right"]
  JUMPIFNOTEQKS R1 K8 ["Right"] [+3]
  LOADK R2 K7 ["Left"]
  JUMP [+1]
  LOADK R2 K8 ["Right"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["index"]
  GETTABLE R3 R0 R4
  GETUPVAL R4 1
  MOVE R5 R1
  CALL R4 1 1
  GETUPVAL R5 1
  MOVE R6 R2
  CALL R5 1 1
  GETTABLE R7 R3 R4
  JUMPIFEQKNIL R7 [+3]
  GETTABLE R6 R3 R4
  JUMP [+3]
  GETIMPORT R6 K11 [UDim2.new]
  CALL R6 0 1
  GETTABLE R8 R3 R5
  JUMPIFEQKNIL R8 [+3]
  GETTABLE R7 R3 R5
  JUMP [+3]
  GETIMPORT R7 K11 [UDim2.new]
  CALL R7 0 1
  GETIMPORT R8 K11 [UDim2.new]
  CALL R8 0 1
  JUMPIFNOTEQ R6 R8 [+7]
  GETIMPORT R8 K11 [UDim2.new]
  CALL R8 0 1
  JUMPIFNOTEQ R7 R8 [+2]
  MOVE R1 R2
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K12 ["dispatchSelectControlPoint"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K6 ["index"]
  CALL R8 1 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K13 ["dispatchSelectTangentSide"]
  MOVE R9 R1
  CALL R8 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["dispatchOnControlPointDoubleClicked"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["index"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["dispatchSelectControlPoint"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["index"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["dispatchSelectControlPoint"]
  LOADN R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["dispatchOnControlPointDragged"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["index"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R2 3 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["dispatchLockSelectedControlPoint"]
  LOADB R3 0
  CALL R2 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["dispatchRecordChangeHistory"]
  CALL R2 0 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["dispatchSelectControlPoint"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["index"]
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["dispatchOpenContextMenu"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["PluginContext"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["Localization"]
  CALL R0 2 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETUPVAL R3 0
  GETTABLEKS R5 R1 K2 ["point"]
  GETTABLEKS R4 R5 K3 ["Position"]
  GETUPVAL R5 1
  GETTABLEKS R6 R1 K4 ["SelectedObject"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K5 ["ParentAbsSize"]
  CALL R3 3 1
  LOADK R4 K6 ["ControlPoint"]
  GETTABLEKS R5 R1 K7 ["Path2DToolMode"]
  JUMPIFNOTEQKS R5 K8 ["AddPoint"] [+17]
  GETTABLEKS R5 R1 K9 ["AddPointSubMode"]
  JUMPIFNOTEQKS R5 K10 ["Unselected"] [+13]
  GETTABLEKS R5 R1 K11 ["index"]
  JUMPIFEQKN R5 K12 [1] [+9]
  GETTABLEKS R5 R1 K11 ["index"]
  GETTABLEKS R7 R1 K13 ["ControlPoints"]
  LENGTH R6 R7
  JUMPIFEQ R5 R6 [+2]
  LOADK R4 K14 ["PhantomControlPoint"]
  GETTABLEKS R6 R1 K15 ["LockSelectedControlPoint"]
  JUMPIFNOT R6 [+2]
  LOADN R5 1
  JUMP [+9]
  GETTABLEKS R6 R1 K16 ["DeselectedControlPointIndex"]
  GETTABLEKS R7 R1 K11 ["index"]
  JUMPIFNOTEQ R6 R7 [+3]
  LOADN R5 255
  JUMP [+1]
  LOADN R5 0
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K17 ["createElement"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K18 ["Fragment"]
  NEWTABLE R9 0 0
  DUPTABLE R10 K22 [{"Point", "LeftTangent", "RightTangent"}]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K17 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K36 [{"ZIndex", "AbsolutePosition", "Style", "IsSelected", "FollowCursorOnDrag", "Disabled", "OnDoubleClicked", "OnSelected", "OnDeselected", "OnDragStart", "OnDragMoved", "OnDragEnd", "OnRightClicked"}]
  SETTABLEKS R5 R13 K23 ["ZIndex"]
  SETTABLEKS R3 R13 K24 ["AbsolutePosition"]
  SETTABLEKS R4 R13 K25 ["Style"]
  GETTABLEKS R14 R1 K37 ["isSelected"]
  SETTABLEKS R14 R13 K26 ["IsSelected"]
  LOADB R14 0
  SETTABLEKS R14 R13 K27 ["FollowCursorOnDrag"]
  GETTABLEKS R14 R1 K28 ["Disabled"]
  SETTABLEKS R14 R13 K28 ["Disabled"]
  NEWCLOSURE R14 P1
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K29 ["OnDoubleClicked"]
  NEWCLOSURE R14 P2
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K30 ["OnSelected"]
  NEWCLOSURE R14 P3
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K31 ["OnDeselected"]
  SETTABLEKS R6 R13 K32 ["OnDragStart"]
  NEWCLOSURE R14 P4
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K33 ["OnDragMoved"]
  NEWCLOSURE R14 P5
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K34 ["OnDragEnd"]
  NEWCLOSURE R14 P6
  CAPTURE VAL R1
  SETTABLEKS R14 R13 K35 ["OnRightClicked"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K19 ["Point"]
  LOADK R13 K38 ["Left"]
  MOVE R14 R3
  NAMECALL R11 R0 K39 ["renderTangent"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K20 ["LeftTangent"]
  LOADK R13 K40 ["Right"]
  MOVE R14 R3
  NAMECALL R11 R0 K39 ["renderTangent"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K21 ["RightTangent"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_10:
  DUPTABLE R2 K8 [{"Path2DToolMode", "AddPointSubMode", "ControlPoints", "SelectedObject", "ParentAbsPos", "ParentAbsSize", "LockSelectedControlPoint", "DeselectedControlPointIndex"}]
  GETTABLEKS R4 R0 K9 ["PathReducer"]
  GETTABLEKS R3 R4 K0 ["Path2DToolMode"]
  SETTABLEKS R3 R2 K0 ["Path2DToolMode"]
  GETTABLEKS R4 R0 K9 ["PathReducer"]
  GETTABLEKS R3 R4 K1 ["AddPointSubMode"]
  SETTABLEKS R3 R2 K1 ["AddPointSubMode"]
  GETTABLEKS R4 R0 K9 ["PathReducer"]
  GETTABLEKS R3 R4 K2 ["ControlPoints"]
  SETTABLEKS R3 R2 K2 ["ControlPoints"]
  GETTABLEKS R4 R0 K9 ["PathReducer"]
  GETTABLEKS R3 R4 K3 ["SelectedObject"]
  SETTABLEKS R3 R2 K3 ["SelectedObject"]
  GETTABLEKS R4 R0 K9 ["PathReducer"]
  GETTABLEKS R3 R4 K4 ["ParentAbsPos"]
  SETTABLEKS R3 R2 K4 ["ParentAbsPos"]
  GETTABLEKS R4 R0 K9 ["PathReducer"]
  GETTABLEKS R3 R4 K5 ["ParentAbsSize"]
  SETTABLEKS R3 R2 K5 ["ParentAbsSize"]
  GETTABLEKS R4 R0 K9 ["PathReducer"]
  GETTABLEKS R3 R4 K6 ["LockSelectedControlPoint"]
  SETTABLEKS R3 R2 K6 ["LockSelectedControlPoint"]
  GETTABLEKS R4 R0 K9 ["PathReducer"]
  GETTABLEKS R3 R4 K7 ["DeselectedControlPointIndex"]
  SETTABLEKS R3 R2 K7 ["DeselectedControlPointIndex"]
  RETURN R2 1

PROTO_11:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  GETUPVAL R1 0
  GETUPVAL R2 2
  LOADNIL R3
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_20:
  DUPTABLE R1 K9 [{"dispatchOnControlPointDragged", "dispatchOnControlPointDoubleClicked", "dispatchRemoveControlPoint", "dispatchSelectControlPoint", "dispatchDeselectControlPoint", "dispatchSelectTangentSide", "dispatchLockSelectedControlPoint", "dispatchOpenContextMenu", "dispatchRecordChangeHistory"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchOnControlPointDragged"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["dispatchOnControlPointDoubleClicked"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["dispatchRemoveControlPoint"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K3 ["dispatchSelectControlPoint"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R1 K4 ["dispatchDeselectControlPoint"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K5 ["dispatchSelectTangentSide"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R2 R1 K6 ["dispatchLockSelectedControlPoint"]
  NEWCLOSURE R2 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  SETTABLEKS R2 R1 K7 ["dispatchOpenContextMenu"]
  NEWCLOSURE R2 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  SETTABLEKS R2 R1 K8 ["dispatchRecordChangeHistory"]
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
  GETTABLEKS R5 R4 K11 ["ContextServices"]
  GETTABLEKS R6 R5 K12 ["withContext"]
  GETTABLEKS R7 R5 K13 ["Plugin"]
  GETTABLEKS R8 R5 K14 ["Localization"]
  GETTABLEKS R10 R0 K5 ["Src"]
  GETTABLEKS R9 R10 K15 ["Actions"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R9 K16 ["DeselectControlPoint"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R9 K17 ["LockSelectedControlPoint"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R9 K18 ["SelectTangentSide"]
  CALL R12 1 1
  GETTABLEKS R14 R0 K5 ["Src"]
  GETTABLEKS R13 R14 K19 ["Thunks"]
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R13 K20 ["OnControlPointDoubleClicked"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R13 K21 ["OnControlPointDragged"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R13 K22 ["OpenContextMenu"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R13 K23 ["RecordChangeHistory"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R13 K24 ["RemoveControlPoint"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R13 K25 ["SelectControlPoint"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R13 K26 ["SetControlPointTangent"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R24 R0 K5 ["Src"]
  GETTABLEKS R23 R24 K27 ["Resources"]
  GETTABLEKS R22 R23 K28 ["Constants"]
  CALL R21 1 1
  GETTABLEKS R23 R0 K5 ["Src"]
  GETTABLEKS R22 R23 K29 ["Util"]
  GETIMPORT R23 K4 [require]
  GETTABLEKS R24 R22 K30 ["makeNewPath2DControlPoint"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R25 R22 K31 ["getTangentNameForSide"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R26 R22 K32 ["getAbsPosFromUDim2"]
  CALL R25 1 1
  GETIMPORT R26 K4 [require]
  GETTABLEKS R27 R22 K33 ["getAbsolutePosition"]
  CALL R26 1 1
  GETIMPORT R27 K4 [require]
  GETTABLEKS R28 R22 K34 ["getVector2FromUDim2Scale"]
  CALL R27 1 1
  GETTABLEKS R29 R0 K5 ["Src"]
  GETTABLEKS R28 R29 K35 ["Components"]
  GETIMPORT R29 K4 [require]
  GETTABLEKS R30 R28 K36 ["DraggablePoint"]
  CALL R29 1 1
  GETIMPORT R30 K4 [require]
  GETTABLEKS R31 R28 K37 ["Line"]
  CALL R30 1 1
  GETIMPORT R31 K4 [require]
  GETTABLEKS R32 R28 K38 ["TangentPoint"]
  CALL R31 1 1
  GETTABLEKS R32 R2 K39 ["Component"]
  LOADK R34 K40 ["ControlPoint"]
  NAMECALL R32 R32 K41 ["extend"]
  CALL R32 2 1
  DUPCLOSURE R33 K42 [PROTO_0]
  SETTABLEKS R33 R32 K43 ["init"]
  DUPCLOSURE R33 K44 [PROTO_1]
  CAPTURE VAL R24
  CAPTURE VAL R27
  CAPTURE VAL R2
  CAPTURE VAL R31
  CAPTURE VAL R30
  CAPTURE VAL R23
  SETTABLEKS R33 R32 K45 ["renderTangent"]
  DUPCLOSURE R33 K46 [PROTO_9]
  CAPTURE VAL R25
  CAPTURE VAL R26
  CAPTURE VAL R24
  CAPTURE VAL R2
  CAPTURE VAL R29
  SETTABLEKS R33 R32 K47 ["render"]
  MOVE R33 R6
  DUPTABLE R34 K49 [{"PluginContext", "Localization"}]
  SETTABLEKS R7 R34 K48 ["PluginContext"]
  SETTABLEKS R8 R34 K14 ["Localization"]
  CALL R33 1 1
  MOVE R34 R32
  CALL R33 1 1
  MOVE R32 R33
  GETTABLEKS R33 R3 K50 ["connect"]
  DUPCLOSURE R34 K51 [PROTO_10]
  DUPCLOSURE R35 K52 [PROTO_20]
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R16
  CAPTURE VAL R17
  CALL R33 2 1
  MOVE R34 R32
  CALL R33 1 -1
  RETURN R33 -1
