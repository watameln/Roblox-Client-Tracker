PROTO_0:
  DUPTABLE R2 K1 [{"_draggerContext"}]
  SETTABLEKS R0 R2 K0 ["_draggerContext"]
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K3 [setmetatable]
  CALL R1 2 1
  RETURN R1 1

PROTO_1:
  GETTABLEKS R4 R0 K0 ["_draggerContext"]
  GETTABLEKS R3 R4 K1 ["selectedPoints"]
  LENGTH R2 R3
  JUMPIFEQKN R2 K2 [0] [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["_draggerContext"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_3:
  GETIMPORT R1 K1 [warn]
  LOADK R2 K2 ["prtodo: Local mode"]
  CALL R1 1 0
  GETIMPORT R1 K5 [CFrame.new]
  CALL R1 0 1
  FASTCALL VECTOR [+2]
  GETIMPORT R2 K7 [Vector3.new]
  CALL R2 0 1
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K7 [Vector3.new]
  CALL R3 0 1
  RETURN R1 3

PROTO_4:
  GETIMPORT R3 K2 [table.find]
  GETTABLEKS R4 R0 K3 ["_selection"]
  MOVE R5 R1
  CALL R3 2 1
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_5:
  LOADB R1 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Components"]
  GETTABLEKS R4 R5 K8 ["EditingTools"]
  GETTABLEKS R3 R4 K9 ["BodyPointsTool"]
  GETTABLEKS R2 R3 K10 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K7 ["Components"]
  GETTABLEKS R5 R6 K8 ["EditingTools"]
  GETTABLEKS R4 R5 K9 ["BodyPointsTool"]
  GETTABLEKS R3 R4 K11 ["getBoundingBox"]
  CALL R2 1 1
  NEWTABLE R3 8 0
  SETTABLEKS R3 R3 K12 ["__index"]
  DUPCLOSURE R4 K13 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K14 ["new"]
  DUPCLOSURE R4 K15 [PROTO_1]
  SETTABLEKS R4 R3 K16 ["isEmpty"]
  DUPCLOSURE R4 K17 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K11 ["getBoundingBox"]
  DUPCLOSURE R4 K18 [PROTO_3]
  SETTABLEKS R4 R3 K19 ["getLocalBoundingBox"]
  DUPCLOSURE R4 K20 [PROTO_4]
  SETTABLEKS R4 R3 K21 ["doesContainItem"]
  DUPCLOSURE R4 K22 [PROTO_5]
  SETTABLEKS R4 R3 K23 ["isDynamic"]
  RETURN R3 1
