PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["UpdateModel"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 0
  GETUPVAL R0 3
  SUBK R0 R0 K1 [1]
  SETUPVAL R0 3
  GETUPVAL R0 3
  JUMPIFNOTEQKN R0 K2 [0] [+5]
  GETUPVAL R0 4
  NAMECALL R0 R0 K3 ["Fire"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R1 K1 [print]
  LOADK R4 K2 ["InsertComponents"]
  LOADK R5 K3 ["AddingNPCs"]
  NAMECALL R2 R0 K4 ["getText"]
  CALL R2 3 -1
  CALL R1 -1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["GetNpcs"]
  CALL R1 0 1
  GETIMPORT R2 K8 [Instance.new]
  LOADK R3 K9 ["BindableEvent"]
  CALL R2 1 1
  LOADN R3 0
  ADDK R3 R3 K10 [1]
  MOVE R4 R1
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETIMPORT R9 K13 [task.delay]
  LOADN R10 0
  NEWCLOSURE R11 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R8
  CAPTURE VAL R0
  CAPTURE REF R3
  CAPTURE VAL R2
  CALL R9 2 0
  FORGLOOP R4 2 [-11]
  GETTABLEKS R4 R2 K14 ["Event"]
  NAMECALL R4 R4 K15 ["Wait"]
  CALL R4 1 0
  CLOSEUPVALS R3
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Src"]
  GETTABLEKS R1 R2 K4 ["Modules"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["NpcManager"]
  CALL R2 1 1
  DUPCLOSURE R3 K8 [PROTO_1]
  CAPTURE VAL R2
  RETURN R3 1
