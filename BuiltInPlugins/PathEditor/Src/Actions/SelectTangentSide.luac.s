PROTO_0:
  DUPTABLE R1 K1 [{"Side"}]
  SETTABLEKS R0 R1 K0 ["Side"]
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
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["Util"]
  GETTABLEKS R4 R3 K10 ["Action"]
  MOVE R5 R4
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K11 ["Name"]
  DUPCLOSURE R7 K12 [PROTO_0]
  CALL R5 2 -1
  RETURN R5 -1
