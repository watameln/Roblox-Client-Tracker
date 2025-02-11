PROTO_0:
  DUPTABLE R3 K1 [{"_region"}]
  DUPTABLE R4 K3 [{"Region"}]
  DUPTABLE R5 K6 [{"transform", "size"}]
  SETTABLEKS R0 R5 K4 ["transform"]
  SETTABLEKS R1 R5 K5 ["size"]
  SETTABLEKS R5 R4 K2 ["Region"]
  SETTABLEKS R4 R3 K0 ["_region"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K8 [setmetatable]
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K9 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K10 ["SelectionChanged"]
  RETURN R2 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["_region"]
  DUPTABLE R3 K3 [{"size", "transform"}]
  GETTABLEKS R4 R1 K4 ["Size"]
  SETTABLEKS R4 R3 K1 ["size"]
  GETTABLEKS R4 R1 K5 ["Transform"]
  SETTABLEKS R4 R3 K2 ["transform"]
  SETTABLEKS R3 R2 K6 ["Region"]
  RETURN R0 0

PROTO_2:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["SetRegion"]
  CALL R2 2 0
  GETTABLEKS R2 R0 K1 ["SelectionChanged"]
  NAMECALL R2 R2 K2 ["Fire"]
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  RETURN R0 0

PROTO_4:
  NEWTABLE R1 0 1
  GETTABLEKS R2 R0 K0 ["_region"]
  SETLIST R1 R2 1 [1]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Packages"]
  GETTABLEKS R1 R2 K5 ["DraggerFramework"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R4 R1 K8 ["Utility"]
  GETTABLEKS R3 R4 K9 ["Signal"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R5 R0 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Types"]
  CALL R3 1 1
  NEWTABLE R4 8 0
  SETTABLEKS R4 R4 K12 ["__index"]
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETTABLEKS R5 R4 K14 ["new"]
  DUPCLOSURE R5 K15 [PROTO_1]
  SETTABLEKS R5 R4 K16 ["SetRegion"]
  DUPCLOSURE R5 K17 [PROTO_2]
  SETTABLEKS R5 R4 K18 ["SetRegionSignal"]
  DUPCLOSURE R5 K19 [PROTO_3]
  SETTABLEKS R5 R4 K20 ["Set"]
  DUPCLOSURE R5 K21 [PROTO_4]
  SETTABLEKS R5 R4 K22 ["Get"]
  RETURN R4 1
