PROTO_0:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["VoxelResolution"]
  MUL R3 R1 R4
  DIV R2 R0 R3
  GETTABLEKS R7 R2 K1 ["X"]
  FASTCALL1 MATH_ROUND R7 [+2]
  GETIMPORT R6 K4 [math.round]
  CALL R6 1 1
  GETTABLEKS R8 R2 K5 ["Y"]
  FASTCALL1 MATH_ROUND R8 [+2]
  GETIMPORT R7 K4 [math.round]
  CALL R7 1 1
  GETTABLEKS R9 R2 K6 ["Z"]
  FASTCALL1 MATH_ROUND R9 [+2]
  GETIMPORT R8 K4 [math.round]
  CALL R8 1 1
  FASTCALL VECTOR [+2]
  GETIMPORT R5 K9 [Vector3.new]
  CALL R5 3 1
  MUL R4 R5 R1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["VoxelResolution"]
  MUL R3 R4 R5
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Resources"]
  GETTABLEKS R2 R3 K8 ["Constants"]
  CALL R1 1 1
  DUPCLOSURE R2 K9 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
