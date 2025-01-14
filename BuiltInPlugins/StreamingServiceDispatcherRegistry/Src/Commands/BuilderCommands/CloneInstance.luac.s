PROTO_0:
  GETUPVAL R2 0
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Feature is not turned on - CloneInstance command"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K3 ["requestId"]
  GETTABLEKS R2 R0 K4 ["arguments"]
  GETTABLEKS R3 R2 K5 ["direct_instance"]
  MOVE R4 R3
  JUMPIF R4 [+7]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["get"]
  GETTABLEKS R5 R2 K7 ["sourceInstanceId"]
  MOVE R6 R1
  CALL R4 2 1
  JUMPIF R4 [+1]
  RETURN R0 0
  JUMPIF R3 [+5]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K8 ["StartRecordingActions"]
  MOVE R6 R1
  CALL R5 1 0
  NAMECALL R5 R4 K9 ["Clone"]
  CALL R5 1 1
  JUMPIF R5 [+7]
  JUMPIF R3 [+5]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K10 ["EndRecordingActions"]
  MOVE R7 R1
  CALL R6 1 0
  RETURN R0 0
  GETTABLEKS R6 R2 K11 ["newInstanceId"]
  JUMPIFNOT R6 [+7]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K12 ["set"]
  GETTABLEKS R7 R2 K11 ["newInstanceId"]
  MOVE R8 R5
  CALL R6 2 0
  SETTABLEKS R5 R2 K5 ["direct_instance"]
  GETUPVAL R6 2
  JUMPIFNOT R6 [+8]
  GETUPVAL R6 3
  MOVE R8 R1
  LOADK R9 K13 ["SetProperty"]
  MOVE R10 R0
  NAMECALL R6 R6 K14 ["ExecuteCommandAsync"]
  CALL R6 4 0
  JUMP [+7]
  GETUPVAL R6 3
  MOVE R8 R1
  LOADK R9 K15 ["SetPropertyInstant"]
  MOVE R10 R0
  NAMECALL R6 R6 K16 ["InvokeCommand"]
  CALL R6 4 0
  GETUPVAL R6 4
  JUMPIFNOT R6 [+9]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K17 ["getRequestParent"]
  MOVE R7 R5
  MOVE R8 R1
  CALL R6 2 1
  SETTABLEKS R6 R5 K18 ["Parent"]
  JUMP [+13]
  GETTABLEKS R6 R5 K18 ["Parent"]
  JUMPIF R6 [+10]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K19 ["GetRequestFolder"]
  MOVE R7 R1
  CALL R6 1 1
  JUMPIF R6 [+2]
  GETIMPORT R6 K21 [workspace]
  SETTABLEKS R6 R5 K18 ["Parent"]
  JUMPIF R3 [+5]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K10 ["EndRecordingActions"]
  MOVE R7 R1
  CALL R6 1 0
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K22 ["modifyChatWithInstanceLink"]
  MOVE R7 R1
  MOVE R8 R5
  LOADK R9 K23 ["copied"]
  GETTABLEKS R10 R2 K24 ["chatGroup"]
  JUMPIF R10 [+2]
  GETTABLEKS R10 R2 K11 ["newInstanceId"]
  CALL R6 4 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StreamingService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R5 R1 K9 ["Src"]
  GETTABLEKS R4 R5 K10 ["Utils"]
  GETTABLEKS R3 R4 K10 ["Utils"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Src"]
  GETTABLEKS R4 R5 K11 ["Types"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETIMPORT R7 K5 [script]
  GETTABLEKS R6 R7 K6 ["Parent"]
  GETTABLEKS R5 R6 K12 ["BuilderNameMap"]
  CALL R4 1 1
  GETIMPORT R5 K1 [game]
  LOADK R7 K13 ["BuildCommandExpansionPT1"]
  NAMECALL R5 R5 K14 ["GetFastFlag"]
  CALL R5 2 1
  GETIMPORT R6 K1 [game]
  LOADK R8 K15 ["ConvAIAddDraftModeForSceneCreate2"]
  NAMECALL R6 R6 K14 ["GetFastFlag"]
  CALL R6 2 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K16 ["ConvAIExecuteCommandAsync"]
  NAMECALL R7 R7 K14 ["GetFastFlag"]
  CALL R7 2 1
  DUPCLOSURE R8 K17 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R6
  CAPTURE VAL R2
  RETURN R8 1
