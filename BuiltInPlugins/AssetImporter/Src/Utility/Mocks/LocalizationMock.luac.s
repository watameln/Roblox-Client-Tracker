PROTO_0:
  NEWTABLE R2 1 0
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K1 [setmetatable]
  CALL R1 2 1
  SETTABLEKS R0 R1 K2 ["lambda"]
  RETURN R1 1

PROTO_1:
  GETTABLEKS R4 R0 K0 ["lambda"]
  MOVE R5 R1
  MOVE R6 R2
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1

PROTO_2:
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["lambda"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["new"]
  DUPCLOSURE R1 K3 [PROTO_1]
  SETTABLEKS R1 R0 K4 ["getText"]
  DUPCLOSURE R1 K5 [PROTO_2]
  SETTABLEKS R1 R0 K6 ["Destroy"]
  RETURN R0 1
