PROTO_0:
  GETIMPORT R3 K1 [ipairs]
  MOVE R4 R0
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETUPVAL R8 0
  MOVE R9 R7
  MOVE R10 R1
  MOVE R11 R2
  CALL R8 3 0
  LOADK R10 K2 ["Model"]
  NAMECALL R8 R7 K3 ["IsA"]
  CALL R8 2 1
  JUMPIFNOT R8 [+20]
  NAMECALL R8 R7 K4 ["GetDescendants"]
  CALL R8 1 1
  GETIMPORT R9 K1 [ipairs]
  MOVE R10 R8
  CALL R9 1 3
  FORGPREP_INEXT R9
  LOADK R16 K5 ["BasePart"]
  NAMECALL R14 R13 K3 ["IsA"]
  CALL R14 2 1
  JUMPIFNOT R14 [+5]
  SETTABLEKS R1 R13 K6 ["Material"]
  ORK R14 R2 K7 [""]
  SETTABLEKS R14 R13 K8 ["MaterialVariant"]
  FORGLOOP R9 2 [inext] [-11]
  FORGLOOP R3 2 [inext] [-31]
  RETURN R0 0

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
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["ApplyToBasePart"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
