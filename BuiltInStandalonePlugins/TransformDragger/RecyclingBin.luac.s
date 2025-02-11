PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETTABLE R0 R1 R2
  GETUPVAL R1 2
  JUMPIFNOTEQ R0 R1 [+9]
  GETUPVAL R0 0
  GETUPVAL R1 1
  LOADNIL R2
  SETTABLE R2 R0 R1
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Destroy"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R1 K0 ["ClassName"]
  GETUPVAL R4 0
  GETTABLE R3 R4 R2
  JUMPIF R3 [+4]
  NEWTABLE R3 0 0
  GETUPVAL R4 0
  SETTABLE R3 R4 R2
  GETUPVAL R4 1
  LOADB R6 0
  NAMECALL R4 R4 K1 ["GenerateGUID"]
  CALL R4 2 1
  SETTABLE R4 R3 R1
  GETIMPORT R5 K3 [delay]
  LOADN R6 5
  NEWCLOSURE R7 P0
  CAPTURE REF R3
  CAPTURE VAL R1
  CAPTURE VAL R4
  CALL R5 2 0
  LOADNIL R5
  SETTABLEKS R5 R1 K4 ["Parent"]
  CLOSEUPVALS R3
  RETURN R0 0

PROTO_2:
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R1
  CALL R2 1 3
  FORGPREP_NEXT R2
  MOVE R9 R6
  NAMECALL R7 R0 K2 ["Recycle"]
  CALL R7 2 0
  FORGLOOP R2 2 [-5]
  RETURN R0 0

PROTO_3:
  LOADNIL R3
  GETUPVAL R5 0
  GETTABLE R4 R5 R1
  JUMPIFNOT R4 [+8]
  GETIMPORT R5 K1 [next]
  MOVE R6 R4
  CALL R5 1 1
  MOVE R3 R5
  JUMPIFNOT R3 [+2]
  LOADNIL R5
  SETTABLE R5 R4 R3
  JUMPIF R3 [+5]
  GETIMPORT R4 K4 [Instance.new]
  MOVE R5 R1
  CALL R4 1 1
  MOVE R3 R4
  JUMPIFNOT R2 [+2]
  SETTABLEKS R2 R3 K5 ["Parent"]
  RETURN R3 1

PROTO_4:
  NEWTABLE R4 0 0
  LOADN R5 0
  GETIMPORT R6 K1 [pairs]
  NAMECALL R7 R3 K2 ["GetChildren"]
  CALL R7 1 -1
  CALL R6 -1 3
  FORGPREP_NEXT R6
  MOVE R13 R1
  NAMECALL R11 R10 K3 ["IsA"]
  CALL R11 2 1
  JUMPIFNOT R11 [+9]
  ADDK R5 R5 K4 [1]
  JUMPIFNOTLT R2 R5 [+6]
  MOVE R13 R10
  NAMECALL R11 R0 K5 ["Recycle"]
  CALL R11 2 0
  JUMP [+1]
  SETTABLE R10 R4 R5
  FORGLOOP R6 2 [-15]
  JUMPIFNOTLT R5 R2 [+9]
  ADDK R5 R5 K4 [1]
  MOVE R8 R1
  MOVE R9 R3
  NAMECALL R6 R0 K6 ["Pull"]
  CALL R6 3 1
  SETTABLE R6 R4 R5
  JUMPBACK [-10]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [game]
  LOADK R4 K2 ["HttpService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  DUPCLOSURE R3 K4 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R3 R0 K5 ["Recycle"]
  DUPCLOSURE R3 K6 [PROTO_2]
  SETTABLEKS R3 R0 K7 ["RecycleObjects"]
  DUPCLOSURE R3 K8 [PROTO_3]
  CAPTURE VAL R1
  SETTABLEKS R3 R0 K9 ["Pull"]
  DUPCLOSURE R3 K10 [PROTO_4]
  SETTABLEKS R3 R0 K11 ["Allocate"]
  RETURN R0 1
