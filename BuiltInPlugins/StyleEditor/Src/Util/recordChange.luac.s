PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["DoChange"]
  CALL R0 0 1
  JUMPIF R0 [+2]
  GETIMPORT R0 K4 [Enum.FinishRecordingOperation.Cancel]
  RETURN R0 1

PROTO_1:
  GETUPVAL R3 0
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Expecting a valid ChangeHistoryService service"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  JUMPIFNOT R0 [+6]
  GETTABLEKS R1 R0 K3 ["Name"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K4 ["DoChange"]
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K3 ["Name"]
  GETTABLEKS R4 R0 K5 ["DisplayName"]
  NAMECALL R1 R1 K6 ["TryBeginRecording"]
  CALL R1 3 1
  GETIMPORT R2 K8 [pcall]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CALL R2 1 2
  JUMPIFNOT R1 [+11]
  JUMPIFNOT R2 [+2]
  MOVE R4 R3
  JUMP [+2]
  GETIMPORT R4 K12 [Enum.FinishRecordingOperation.Cancel]
  GETUPVAL R5 0
  MOVE R7 R1
  MOVE R8 R4
  NAMECALL R5 R5 K13 ["FinishRecording"]
  CALL R5 3 0
  JUMPIF R2 [+4]
  GETIMPORT R4 K15 [error]
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_2]
  RETURN R0 1
