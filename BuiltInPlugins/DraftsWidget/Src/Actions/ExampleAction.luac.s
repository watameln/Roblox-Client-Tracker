PROTO_0:
  JUMPIFNOT R0 [+22]
  FASTCALL1 TYPE R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["string"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETIMPORT R3 K4 [string.format]
  LOADK R4 K5 ["Expected aString to be a string, received %s"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K7 [tostring]
  CALL R5 1 1
  CALL R3 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R1 K9 [assert]
  CALL R1 -1 0
  DUPTABLE R1 K11 [{"message"}]
  SETTABLEKS R0 R1 K10 ["message"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Action"]
  CALL R0 1 1
  MOVE R1 R0
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K6 ["Name"]
  DUPCLOSURE R3 K7 [PROTO_0]
  CALL R1 2 -1
  RETURN R1 -1
