PROTO_0:
  GETTABLE R3 R1 R0
  JUMPIF R3 [+1]
  GETUPVAL R3 0
  GETTABLE R4 R2 R0
  JUMPIF R4 [+1]
  GETUPVAL R4 0
  DUPTABLE R5 K4 [{"errors", "warnings", "descErrors", "descWarnings"}]
  GETTABLEKS R7 R4 K0 ["errors"]
  GETTABLEKS R8 R3 K0 ["errors"]
  ADD R6 R7 R8
  SETTABLEKS R6 R5 K0 ["errors"]
  GETTABLEKS R7 R4 K1 ["warnings"]
  GETTABLEKS R8 R3 K1 ["warnings"]
  ADD R6 R7 R8
  SETTABLEKS R6 R5 K1 ["warnings"]
  GETTABLEKS R7 R4 K2 ["descErrors"]
  GETTABLEKS R8 R3 K2 ["descErrors"]
  ADD R6 R7 R8
  SETTABLEKS R6 R5 K2 ["descErrors"]
  GETTABLEKS R7 R4 K3 ["descWarnings"]
  GETTABLEKS R8 R3 K3 ["descWarnings"]
  ADD R6 R7 R8
  SETTABLEKS R6 R5 K3 ["descWarnings"]
  RETURN R5 1

PROTO_1:
  GETUPVAL R3 0
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 1
  SETTABLE R3 R1 R0
  NAMECALL R3 R0 K0 ["GetDescendants"]
  CALL R3 1 3
  FORGPREP R3
  GETUPVAL R8 0
  MOVE R9 R7
  MOVE R10 R1
  MOVE R11 R2
  CALL R8 3 1
  SETTABLE R8 R1 R7
  FORGLOOP R3 2 [-7]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"errors", "warnings", "descErrors", "descWarnings"}]
  LOADN R1 0
  SETTABLEKS R1 R0 K0 ["errors"]
  LOADN R1 0
  SETTABLEKS R1 R0 K1 ["warnings"]
  LOADN R1 0
  SETTABLEKS R1 R0 K2 ["descErrors"]
  LOADN R1 0
  SETTABLEKS R1 R0 K3 ["descWarnings"]
  DUPCLOSURE R1 K5 [PROTO_0]
  CAPTURE VAL R0
  DUPCLOSURE R2 K6 [PROTO_1]
  CAPTURE VAL R1
  RETURN R2 1
