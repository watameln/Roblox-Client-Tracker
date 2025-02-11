PROTO_0:
  DUPTABLE R2 K2 [{"_dragging", "_draggerContext"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["_dragging"]
  SETTABLEKS R0 R2 K1 ["_draggerContext"]
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K4 [setmetatable]
  CALL R1 2 1
  RETURN R1 1

PROTO_1:
  GETTABLEKS R3 R0 K0 ["_dragging"]
  JUMPIF R3 [+17]
  NAMECALL R3 R2 K1 ["getBoundingBox"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K2 ["_originalPivot"]
  NAMECALL R3 R2 K3 ["getPrimaryObject"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K4 ["_pivotOwner"]
  SETTABLEKS R1 R0 K5 ["_draggerToolModel"]
  NAMECALL R3 R1 K6 ["getSchema"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K7 ["_schema"]
  RETURN R0 0

PROTO_2:
  LOADB R1 0
  RETURN R1 1

PROTO_3:
  GETTABLEKS R3 R0 K0 ["_draggerContext"]
  GETTABLEKS R6 R0 K1 ["_originalPivot"]
  GETTABLEKS R5 R6 K2 ["Position"]
  NAMECALL R3 R3 K3 ["worldToViewportPoint"]
  CALL R3 2 2
  JUMPIFNOT R4 [+24]
  GETTABLEKS R5 R0 K0 ["_draggerContext"]
  NAMECALL R5 R5 K4 ["getMouseLocation"]
  CALL R5 1 1
  GETIMPORT R6 K7 [Vector2.new]
  GETTABLEKS R7 R3 K8 ["X"]
  GETTABLEKS R8 R3 K9 ["Y"]
  CALL R6 2 1
  SUB R8 R6 R5
  GETTABLEKS R7 R8 K10 ["Magnitude"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K11 ["HitTestRadius"]
  JUMPIFNOTLT R7 R8 [+5]
  LOADK R8 K12 ["Pivot"]
  LOADN R9 0
  LOADB R10 1
  RETURN R8 3
  LOADNIL R5
  RETURN R5 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_draggerContext"]
  NAMECALL R1 R1 K1 ["shouldShowActiveInstanceHighlight"]
  CALL R1 1 1
  JUMPIFNOT R1 [+15]
  GETTABLEKS R1 R0 K2 ["_draggerToolModel"]
  NAMECALL R1 R1 K3 ["getSelectionWrapper"]
  CALL R1 1 1
  NAMECALL R1 R1 K4 ["getActiveSelectable"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K5 ["_pivotOwner"]
  JUMPIFEQ R3 R1 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1
  LOADB R1 0
  RETURN R1 1

PROTO_5:
  GETTABLEKS R2 R0 K0 ["_pivotOwner"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K6 [{"DraggerContext", "Hovered", "Pivot", "IsActive"}]
  GETTABLEKS R5 R0 K7 ["_draggerContext"]
  SETTABLEKS R5 R4 K2 ["DraggerContext"]
  SETTABLEKS R1 R4 K3 ["Hovered"]
  GETTABLEKS R5 R0 K8 ["_originalPivot"]
  SETTABLEKS R5 R4 K4 ["Pivot"]
  NAMECALL R5 R0 K9 ["_selectedIsActive"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K5 ["IsActive"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  NEWTABLE R2 2 0
  GETTABLEKS R3 R0 K0 ["_freeformDrag"]
  JUMPIFNOT R3 [+8]
  GETTABLEKS R3 R0 K0 ["_freeformDrag"]
  NAMECALL R3 R3 K1 ["render"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K2 ["DragUI"]
  JUMP [+14]
  JUMPIFNOT R1 [+7]
  LOADB R5 1
  NAMECALL R3 R0 K3 ["_renderPivotAdorn"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K4 ["PivotAdorn"]
  JUMP [+6]
  LOADB R5 0
  NAMECALL R3 R0 K3 ["_renderPivotAdorn"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K4 ["PivotAdorn"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["createFragment"]
  MOVE R4 R2
  CALL R3 1 -1
  RETURN R3 -1

PROTO_7:
  GETTABLEKS R3 R0 K0 ["_pivotOwner"]
  JUMPIFNOT R3 [+24]
  DUPTABLE R3 K3 [{"ClickedSelectable", "HandleId"}]
  GETTABLEKS R4 R0 K0 ["_pivotOwner"]
  SETTABLEKS R4 R3 K1 ["ClickedSelectable"]
  LOADK R4 K4 ["Pivot"]
  SETTABLEKS R4 R3 K2 ["HandleId"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["new"]
  GETTABLEKS R5 R0 K6 ["_draggerContext"]
  GETTABLEKS R6 R0 K7 ["_draggerToolModel"]
  MOVE R7 R3
  CALL R4 3 1
  SETTABLEKS R4 R0 K8 ["_freeformDrag"]
  GETTABLEKS R4 R0 K8 ["_freeformDrag"]
  NAMECALL R4 R4 K9 ["update"]
  CALL R4 1 0
  RETURN R0 0

PROTO_8:
  LOADB R1 1
  GETIMPORT R2 K3 [Enum.KeyCode.LeftAlt]
  JUMPIFEQ R0 R2 [+7]
  GETIMPORT R2 K5 [Enum.KeyCode.RightAlt]
  JUMPIFEQ R0 R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_9:
  GETTABLEKS R2 R0 K0 ["_freeformDrag"]
  JUMPIFNOT R2 [+55]
  GETIMPORT R2 K4 [Enum.KeyCode.R]
  JUMPIFNOTEQ R1 R2 [+15]
  GETTABLEKS R2 R0 K0 ["_freeformDrag"]
  LOADN R5 0
  LOADN R6 1
  LOADN R7 0
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K7 [Vector3.new]
  CALL R4 3 1
  NAMECALL R2 R2 K8 ["rotate"]
  CALL R2 2 0
  LOADB R2 1
  RETURN R2 1
  GETIMPORT R2 K10 [Enum.KeyCode.T]
  JUMPIFNOTEQ R1 R2 [+15]
  GETTABLEKS R2 R0 K0 ["_freeformDrag"]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K7 [Vector3.new]
  CALL R4 3 1
  NAMECALL R2 R2 K8 ["rotate"]
  CALL R2 2 0
  LOADB R2 1
  RETURN R2 1
  LOADB R2 1
  GETIMPORT R3 K12 [Enum.KeyCode.LeftAlt]
  JUMPIFEQ R1 R3 [+7]
  GETIMPORT R3 K14 [Enum.KeyCode.RightAlt]
  JUMPIFEQ R1 R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  JUMPIFNOT R2 [+7]
  GETTABLEKS R2 R0 K0 ["_freeformDrag"]
  NAMECALL R2 R2 K15 ["update"]
  CALL R2 1 0
  LOADB R2 1
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_10:
  GETTABLEKS R2 R0 K0 ["_freeformDrag"]
  JUMPIFNOT R2 [+7]
  GETTABLEKS R2 R0 K0 ["_freeformDrag"]
  NAMECALL R2 R2 K1 ["update"]
  CALL R2 1 0
  LOADB R2 1
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_11:
  GETTABLEKS R2 R0 K0 ["_freeformDrag"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R0 K0 ["_freeformDrag"]
  NAMECALL R2 R2 K1 ["update"]
  CALL R2 1 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R2 R0 K0 ["_freeformDrag"]
  JUMPIFNOT R2 [+16]
  GETTABLEKS R2 R0 K0 ["_freeformDrag"]
  NAMECALL R2 R2 K1 ["destroy"]
  CALL R2 1 0
  LOADNIL R2
  SETTABLEKS R2 R0 K0 ["_freeformDrag"]
  GETTABLEKS R3 R0 K2 ["_schema"]
  GETTABLEKS R2 R3 K3 ["addUndoWaypoint"]
  GETTABLEKS R3 R0 K4 ["_draggerContext"]
  LOADK R4 K5 ["Modify Pivot"]
  CALL R2 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K7 ["FreeformDragger"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Components"]
  GETTABLEKS R4 R5 K10 ["PivotRing"]
  CALL R3 1 1
  NEWTABLE R4 16 0
  SETTABLEKS R4 R4 K11 ["__index"]
  DUPCLOSURE R5 K12 [PROTO_0]
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K13 ["new"]
  DUPCLOSURE R5 K14 [PROTO_1]
  SETTABLEKS R5 R4 K15 ["update"]
  DUPCLOSURE R5 K16 [PROTO_2]
  SETTABLEKS R5 R4 K17 ["shouldBiasTowardsObjects"]
  DUPCLOSURE R5 K18 [PROTO_3]
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K19 ["hitTest"]
  DUPCLOSURE R5 K20 [PROTO_4]
  SETTABLEKS R5 R4 K21 ["_selectedIsActive"]
  DUPCLOSURE R5 K22 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K23 ["_renderPivotAdorn"]
  DUPCLOSURE R5 K24 [PROTO_6]
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K25 ["render"]
  DUPCLOSURE R5 K26 [PROTO_7]
  CAPTURE VAL R2
  SETTABLEKS R5 R4 K27 ["mouseDown"]
  DUPCLOSURE R5 K28 [PROTO_8]
  DUPCLOSURE R6 K29 [PROTO_9]
  SETTABLEKS R6 R4 K30 ["keyDown"]
  DUPCLOSURE R6 K31 [PROTO_10]
  SETTABLEKS R6 R4 K32 ["keyUp"]
  DUPCLOSURE R6 K33 [PROTO_11]
  SETTABLEKS R6 R4 K34 ["mouseDrag"]
  DUPCLOSURE R6 K35 [PROTO_12]
  SETTABLEKS R6 R4 K36 ["mouseUp"]
  RETURN R4 1
