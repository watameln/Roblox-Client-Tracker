PROTO_0:
  PREPVARARGS 0
  DUPTABLE R0 K1 [{"impl"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["new"]
  GETVARARGS R2 -1
  CALL R1 -1 1
  SETTABLEKS R1 R0 K0 ["impl"]
  GETUPVAL R3 1
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K4 [setmetatable]
  CALL R1 2 0
  RETURN R0 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["impl"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R1 K5 ["Packages"]
  GETTABLEKS R4 R5 K6 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K7 ["ContextServices"]
  GETTABLEKS R3 R2 K8 ["ContextItem"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K9 ["Controllers"]
  GETTABLEKS R5 R6 K10 ["WorldRootPhysicsController"]
  CALL R4 1 1
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K11 ["Name"]
  NAMECALL R5 R3 K12 ["extend"]
  CALL R5 2 1
  DUPCLOSURE R6 K13 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R5
  SETTABLEKS R6 R5 K14 ["new"]
  DUPCLOSURE R6 K15 [PROTO_1]
  SETTABLEKS R6 R5 K16 ["get"]
  RETURN R5 1
