PROTO_0:
  GETUPVAL R4 0
  LOADB R5 1
  CALL R4 1 -1
  NAMECALL R2 R0 K0 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R4 1
  MOVE R5 R1
  CALL R4 1 -1
  NAMECALL R2 R0 K0 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R4 2
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K1 ["Screens"]
  GETTABLEKS R5 R6 K2 ["Error"]
  CALL R4 1 -1
  NAMECALL R2 R0 K0 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["DynamicHeadExportTool"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Constants"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K8 ["Actions"]
  GETTABLEKS R3 R4 K9 ["SetEnabled"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K8 ["Actions"]
  GETTABLEKS R4 R5 K10 ["SetErrorText"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K8 ["Actions"]
  GETTABLEKS R5 R6 K11 ["SetScreen"]
  CALL R4 1 1
  DUPCLOSURE R5 K12 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R1
  RETURN R5 1
