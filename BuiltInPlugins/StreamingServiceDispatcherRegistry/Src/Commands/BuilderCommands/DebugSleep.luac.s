PROTO_0:
  GETUPVAL R2 0
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["debugSleep: FFlagConvAIAddDraftModeForSceneCreate is not enabled!"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  JUMPIFNOT R0 [+16]
  GETTABLEKS R1 R0 K3 ["arguments"]
  JUMPIFNOT R1 [+13]
  GETTABLEKS R2 R0 K3 ["arguments"]
  GETTABLEKS R1 R2 K4 ["time"]
  JUMPIFNOT R1 [+8]
  GETIMPORT R1 K7 [task.wait]
  GETTABLEKS R3 R0 K3 ["arguments"]
  GETTABLEKS R2 R3 K4 ["time"]
  CALL R1 1 0
  RETURN R0 0
  GETIMPORT R1 K7 [task.wait]
  LOADN R2 1
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ConvAIAddDraftModeForSceneCreate2"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  DUPCLOSURE R1 K4 [PROTO_0]
  CAPTURE VAL R0
  RETURN R1 1
