PROTO_0:
  DUPTABLE R4 K4 [{"model", "initDist", "insertContextOffset", "workspacePreview"}]
  LOADNIL R5
  SETTABLEKS R5 R4 K0 ["model"]
  LOADN R5 0
  SETTABLEKS R5 R4 K1 ["initDist"]
  FASTCALL VECTOR [+2]
  GETIMPORT R5 K7 [Vector3.new]
  CALL R5 0 1
  SETTABLEKS R5 R4 K2 ["insertContextOffset"]
  LOADNIL R5
  SETTABLEKS R5 R4 K3 ["workspacePreview"]
  GETUPVAL R5 0
  MOVE R6 R0
  CALL R5 1 1
  SETTABLEKS R5 R4 K0 ["model"]
  GETTABLEKS R6 R4 K0 ["model"]
  NAMECALL R6 R6 K8 ["GetExtentsSize"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K9 ["Magnitude"]
  SETTABLEKS R5 R4 K1 ["initDist"]
  JUMPIFNOT R3 [+13]
  GETTABLEKS R5 R1 K10 ["InsertInWorkspace"]
  JUMPIFNOT R5 [+10]
  JUMPIFNOT R2 [+9]
  GETUPVAL R5 1
  MOVE R6 R1
  GETTABLEKS R7 R4 K0 ["model"]
  CALL R5 2 2
  SETTABLEKS R5 R4 K3 ["workspacePreview"]
  SETTABLEKS R6 R4 K2 ["insertContextOffset"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Utility"]
  GETTABLEKS R2 R3 K7 ["getInsertContext"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K6 ["Utility"]
  GETTABLEKS R3 R4 K8 ["getAssetRenderModel"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R3 1
