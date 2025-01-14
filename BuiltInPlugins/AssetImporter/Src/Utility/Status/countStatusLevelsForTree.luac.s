PROTO_0:
  LOADN R2 0
  LOADN R3 0
  NAMECALL R4 R0 K0 ["GetChildren"]
  CALL R4 1 3
  FORGPREP R4
  GETUPVAL R9 0
  MOVE R10 R8
  MOVE R11 R1
  CALL R9 2 0
  GETTABLE R9 R1 R8
  GETTABLEKS R11 R9 K1 ["errors"]
  GETTABLEKS R12 R9 K2 ["descErrors"]
  ADD R10 R11 R12
  ADD R2 R2 R10
  GETTABLEKS R11 R9 K3 ["warnings"]
  GETTABLEKS R12 R9 K4 ["descWarnings"]
  ADD R10 R11 R12
  ADD R3 R3 R10
  FORGLOOP R4 2 [-18]
  NAMECALL R4 R0 K5 ["GetStatuses"]
  CALL R4 1 1
  GETUPVAL R5 1
  MOVE R6 R4
  CALL R5 1 1
  DUPTABLE R6 K6 [{"errors", "warnings", "descErrors", "descWarnings"}]
  GETTABLEKS R7 R5 K1 ["errors"]
  SETTABLEKS R7 R6 K1 ["errors"]
  GETTABLEKS R7 R5 K3 ["warnings"]
  SETTABLEKS R7 R6 K3 ["warnings"]
  SETTABLEKS R2 R6 K2 ["descErrors"]
  SETTABLEKS R3 R6 K4 ["descWarnings"]
  SETTABLE R6 R1 R0
  RETURN R0 0

PROTO_1:
  DUPCLOSURE R2 K0 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  MOVE R3 R2
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K7 ["Utility"]
  GETTABLEKS R4 R5 K8 ["Status"]
  GETTABLEKS R3 R4 K9 ["getStatusLevelCounts"]
  CALL R2 1 1
  DUPCLOSURE R3 K10 [PROTO_1]
  CAPTURE VAL R2
  RETURN R3 1
