PROTO_0:
  GETTABLEKS R2 R0 K0 ["ShouldImport"]
  JUMPIFNOT R2 [+2]
  LOADN R1 1
  JUMP [+1]
  LOADN R1 0
  GETIMPORT R2 K2 [pairs]
  NAMECALL R3 R0 K3 ["GetDescendants"]
  CALL R3 1 -1
  CALL R2 -1 3
  FORGPREP_NEXT R2
  GETTABLEKS R7 R6 K0 ["ShouldImport"]
  JUMPIFNOT R7 [+1]
  ADDK R1 R1 K4 [1]
  FORGLOOP R2 2 [-5]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
