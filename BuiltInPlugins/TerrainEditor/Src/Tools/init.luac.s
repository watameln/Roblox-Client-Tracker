MAIN:
  PREPVARARGS 0
  NEWTABLE R0 0 13
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["RegionImport"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K5 ["RegionGenerate"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K6 ["Clear"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K7 ["RegionSelect"]
  CALL R4 1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K8 ["RegionTransform"]
  CALL R5 1 1
  GETIMPORT R6 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K9 ["RegionFill"]
  CALL R6 1 1
  GETIMPORT R7 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K10 ["RegionSeaLevel"]
  CALL R7 1 1
  GETIMPORT R8 K1 [require]
  GETIMPORT R10 K3 [script]
  GETTABLEKS R9 R10 K11 ["BrushDraw"]
  CALL R8 1 1
  GETIMPORT R9 K1 [require]
  GETIMPORT R11 K3 [script]
  GETTABLEKS R10 R11 K12 ["BrushSculpt"]
  CALL R9 1 1
  GETIMPORT R10 K1 [require]
  GETIMPORT R12 K3 [script]
  GETTABLEKS R11 R12 K13 ["BrushSmooth"]
  CALL R10 1 1
  GETIMPORT R11 K1 [require]
  GETIMPORT R13 K3 [script]
  GETTABLEKS R12 R13 K14 ["BrushPaint"]
  CALL R11 1 1
  GETIMPORT R12 K1 [require]
  GETIMPORT R14 K3 [script]
  GETTABLEKS R13 R14 K15 ["BrushFlatten"]
  CALL R12 1 1
  GETIMPORT R13 K1 [require]
  GETIMPORT R15 K3 [script]
  GETTABLEKS R14 R15 K16 ["Empty"]
  CALL R13 1 -1
  SETLIST R0 R1 -1 [1]
  RETURN R0 1
