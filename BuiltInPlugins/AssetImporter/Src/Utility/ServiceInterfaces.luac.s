PROTO_0:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["PickFileWithPrompt"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  LOADK R0 K0 ["File/Picked/From/Prompt"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Utility"]
  GETTABLEKS R2 R3 K7 ["DebugFlags"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["RunningUnderCLI"]
  CALL R2 0 1
  JUMPIF R2 [+3]
  GETTABLEKS R2 R1 K9 ["RunTests"]
  CALL R2 0 1
  NEWTABLE R3 1 0
  JUMPIF R2 [+11]
  GETIMPORT R4 K11 [game]
  LOADK R6 K12 ["AssetImportService"]
  NAMECALL R4 R4 K13 ["GetService"]
  CALL R4 2 1
  DUPCLOSURE R5 K14 [PROTO_0]
  CAPTURE VAL R4
  SETTABLEKS R5 R3 K15 ["PickFileWithPrompt"]
  RETURN R3 1
  DUPCLOSURE R4 K16 [PROTO_1]
  SETTABLEKS R4 R3 K15 ["PickFileWithPrompt"]
  RETURN R3 1
