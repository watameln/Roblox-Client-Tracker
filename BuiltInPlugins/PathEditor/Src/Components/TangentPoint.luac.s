PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["dispatchSelectControlPoint"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["index"]
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["dispatchSelectTangentSide"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["side"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["dispatchClearControlPointTangent"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["index"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["side"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["dispatchAddWaypoint"]
  CALL R0 0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["dispatchSelectControlPoint"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["index"]
  CALL R0 1 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K3 ["dispatchLockSelectedControlPoint"]
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETUPVAL R4 1
  NAMECALL R2 R2 K0 ["IsKeyDown"]
  CALL R2 2 1
  SUB R3 R1 R0
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K1 ["position"]
  ADD R4 R5 R3
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["dispatchSetControlPointTangent"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["index"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K4 ["side"]
  MOVE R8 R4
  LOADB R9 0
  MOVE R10 R2
  CALL R5 5 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["dispatchLockSelectedControlPoint"]
  LOADB R3 0
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  LOADK R2 K1 ["Tangent"]
  GETTABLEKS R3 R1 K2 ["isPhantom"]
  JUMPIFNOT R3 [+1]
  LOADK R2 K3 ["PhantomTangent"]
  GETTABLEKS R3 R1 K4 ["isSelected"]
  JUMPIFNOT R3 [+8]
  GETTABLEKS R4 R1 K5 ["SelectedTangentSide"]
  GETTABLEKS R5 R1 K6 ["side"]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K18 [{"ZIndex", "AbsolutePosition", "FollowCursorOnDrag", "Style", "IsSelected", "OnSelected", "OnDoubleClicked", "OnDragStart", "OnDragMoved", "OnDragEnd"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K8 ["ZIndex"]
  GETTABLEKS R7 R1 K19 ["absolutePosition"]
  SETTABLEKS R7 R6 K9 ["AbsolutePosition"]
  LOADB R7 0
  SETTABLEKS R7 R6 K10 ["FollowCursorOnDrag"]
  SETTABLEKS R2 R6 K11 ["Style"]
  SETTABLEKS R3 R6 K12 ["IsSelected"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K13 ["OnSelected"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K14 ["OnDoubleClicked"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K15 ["OnDragStart"]
  NEWCLOSURE R7 P3
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K16 ["OnDragMoved"]
  NEWCLOSURE R7 P4
  CAPTURE VAL R1
  SETTABLEKS R7 R6 K17 ["OnDragEnd"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_6:
  DUPTABLE R2 K2 [{"LockSelectedControlPoint", "SelectedTangentSide"}]
  GETTABLEKS R4 R0 K3 ["PathReducer"]
  GETTABLEKS R3 R4 K0 ["LockSelectedControlPoint"]
  SETTABLEKS R3 R2 K0 ["LockSelectedControlPoint"]
  GETTABLEKS R4 R0 K3 ["PathReducer"]
  GETTABLEKS R3 R4 K1 ["SelectedTangentSide"]
  SETTABLEKS R3 R2 K1 ["SelectedTangentSide"]
  RETURN R2 1

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R5 0
  GETUPVAL R6 1
  MOVE R7 R0
  MOVE R8 R1
  MOVE R9 R2
  MOVE R10 R3
  MOVE R11 R4
  CALL R6 5 -1
  CALL R5 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  DUPTABLE R1 K6 [{"dispatchAddWaypoint", "dispatchClearControlPointTangent", "dispatchSelectControlPoint", "dispatchSelectTangentSide", "dispatchSetControlPointTangent", "dispatchLockSelectedControlPoint"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchAddWaypoint"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["dispatchClearControlPointTangent"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["dispatchSelectControlPoint"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["dispatchSelectTangentSide"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K4 ["dispatchSetControlPointTangent"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R2 R1 K5 ["dispatchLockSelectedControlPoint"]
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
  LOADK R7 K13 ["UserInputService"]
  NAMECALL R5 R5 K14 ["GetService"]
  CALL R5 2 1
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K15 ["Actions"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R6 K16 ["LockSelectedControlPoint"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R6 K17 ["SelectTangentSide"]
  CALL R8 1 1
  GETTABLEKS R10 R0 K5 ["Src"]
  GETTABLEKS R9 R10 K18 ["Thunks"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R9 K19 ["AddWaypoint"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R9 K20 ["SelectControlPoint"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R9 K21 ["ClearControlPointTangent"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R9 K22 ["SetControlPointTangent"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K5 ["Src"]
  GETTABLEKS R16 R17 K23 ["Resources"]
  GETTABLEKS R15 R16 K24 ["Constants"]
  CALL R14 1 1
  GETTABLEKS R16 R0 K5 ["Src"]
  GETTABLEKS R15 R16 K25 ["Components"]
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R15 K26 ["DraggablePoint"]
  CALL R16 1 1
  GETIMPORT R17 K30 [Enum.KeyCode.LeftShift]
  GETIMPORT R18 K32 [Enum.KeyCode.LeftControl]
  GETTABLEKS R19 R2 K33 ["Component"]
  LOADK R21 K34 ["TangentPoint"]
  NAMECALL R19 R19 K35 ["extend"]
  CALL R19 2 1
  DUPCLOSURE R20 K36 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R16
  CAPTURE VAL R5
  CAPTURE VAL R17
  SETTABLEKS R20 R19 K37 ["render"]
  GETTABLEKS R20 R3 K38 ["connect"]
  DUPCLOSURE R21 K39 [PROTO_6]
  DUPCLOSURE R22 K40 [PROTO_13]
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R13
  CAPTURE VAL R7
  CALL R20 2 1
  MOVE R21 R19
  CALL R20 1 -1
  RETURN R20 -1
