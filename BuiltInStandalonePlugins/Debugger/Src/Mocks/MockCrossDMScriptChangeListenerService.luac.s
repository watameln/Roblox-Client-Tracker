PROTO_0:
  NEWTABLE R0 4 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["GuidNameChanged"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K2 ["GuidLineContentsChanged"]
  GETUPVAL R3 1
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K4 [setmetatable]
  CALL R1 2 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K5 ["watchingScripts"]
  RETURN R0 1

PROTO_1:
  GETTABLEKS R4 R0 K0 ["watchingScripts"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["Dictionary"]
  GETTABLEKS R5 R6 K2 ["join"]
  GETTABLEKS R7 R0 K0 ["watchingScripts"]
  GETTABLE R6 R7 R1
  JUMPIF R6 [+2]
  NEWTABLE R6 0 0
  NEWTABLE R7 1 0
  LOADB R8 1
  SETTABLE R8 R7 R3
  CALL R5 2 1
  SETTABLE R5 R4 R1
  RETURN R0 0

PROTO_2:
  GETTABLEKS R4 R0 K0 ["watchingScripts"]
  GETTABLE R3 R4 R1
  JUMPIFNOT R3 [+4]
  GETTABLEKS R5 R0 K0 ["watchingScripts"]
  GETTABLE R4 R5 R1
  GETTABLE R3 R4 R2
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["Signal"]
  NEWTABLE R4 4 0
  SETTABLEKS R4 R4 K10 ["__index"]
  DUPCLOSURE R5 K11 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R4
  SETTABLEKS R5 R4 K12 ["new"]
  DUPCLOSURE R5 K13 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R5 R4 K14 ["StartWatchingScriptLine"]
  DUPCLOSURE R5 K15 [PROTO_2]
  SETTABLEKS R5 R4 K16 ["IsWatchingScriptLine"]
  RETURN R4 1
