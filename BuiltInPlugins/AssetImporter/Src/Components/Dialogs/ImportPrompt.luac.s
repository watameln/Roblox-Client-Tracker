PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["OnPromptClosed"]
  JUMPIFNOT R2 [+8]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["OnPromptClosed"]
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["promptClosed"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["showImportPrompt"]
  GETTABLEKS R2 R0 K2 ["promptClosed"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_4:
  DUPTABLE R1 K1 [{"showImportPrompt"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["showImportPrompt"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Thunks"]
  GETTABLEKS R4 R5 K10 ["ShowImportPrompt"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K11 ["PureComponent"]
  LOADK R6 K12 ["ImportPrompt"]
  NAMECALL R4 R4 K13 ["extend"]
  CALL R4 2 1
  DUPCLOSURE R5 K14 [PROTO_1]
  SETTABLEKS R5 R4 K15 ["init"]
  DUPCLOSURE R5 K16 [PROTO_2]
  SETTABLEKS R5 R4 K17 ["render"]
  DUPCLOSURE R5 K18 [PROTO_4]
  CAPTURE VAL R3
  GETTABLEKS R6 R2 K19 ["connect"]
  LOADNIL R7
  MOVE R8 R5
  CALL R6 2 1
  MOVE R7 R4
  CALL R6 1 -1
  RETURN R6 -1
