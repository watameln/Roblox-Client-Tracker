PROTO_0:
  GETUPVAL R2 0
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Feature is not turned on - RemoveInstance command"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K3 ["requestId"]
  GETTABLEKS R2 R0 K4 ["arguments"]
  GETTABLEKS R3 R2 K5 ["direct_instance"]
  MOVE R4 R3
  JUMPIF R4 [+7]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["get"]
  GETTABLEKS R5 R2 K7 ["instanceId"]
  MOVE R6 R1
  CALL R4 2 1
  JUMPIF R4 [+1]
  RETURN R0 0
  GETTABLEKS R5 R4 K8 ["Parent"]
  JUMPIFNOT R5 [+15]
  JUMPIF R3 [+5]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["StartRecordingActions"]
  MOVE R6 R1
  CALL R5 1 0
  LOADNIL R5
  SETTABLEKS R5 R4 K8 ["Parent"]
  JUMPIF R3 [+5]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K10 ["EndRecordingActions"]
  MOVE R6 R1
  CALL R5 1 0
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
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K7 ["BuilderNameMap"]
  CALL R2 1 1
  GETIMPORT R3 K9 [game]
  LOADK R5 K10 ["BuildCommandExpansionPT1"]
  NAMECALL R3 R3 K11 ["GetFastFlag"]
  CALL R3 2 1
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R4 1
