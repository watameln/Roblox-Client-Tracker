PROTO_0:
  GETTABLEKS R1 R0 K0 ["X"]
  GETTABLEKS R2 R0 K1 ["Y"]
  GETTABLEKS R3 R0 K2 ["Z"]
  ADD R9 R1 R2
  ADD R8 R9 R3
  ADDK R7 R8 K3 [7]
  GETUPVAL R8 0
  ADD R6 R7 R8
  GETUPVAL R9 0
  SUB R8 R9 R1
  LOADN R10 7
  ADD R9 R10 R3
  MUL R7 R8 R9
  ADD R5 R6 R7
  LOADN R8 7
  SUB R7 R8 R2
  GETUPVAL R9 0
  ADD R8 R9 R3
  MUL R6 R7 R8
  ADD R4 R5 R6
  GETUPVAL R6 1
  GETUPVAL R11 1
  LENGTH R10 R11
  MOD R9 R4 R10
  FASTCALL1 MATH_FLOOR R9 [+2]
  GETIMPORT R8 K7 [math.floor]
  CALL R8 1 1
  ADDK R7 R8 K4 [1]
  GETTABLE R5 R6 R7
  RETURN R5 1

PROTO_1:
  LOADNIL R1
  GETIMPORT R2 K2 [math.randomseed]
  LOADK R3 K3 [6180339]
  CALL R2 1 0
  NEWTABLE R1 0 0
  LOADN R4 1
  LOADN R2 231
  LOADN R3 1
  FORNPREP R2
  MOVE R6 R1
  GETIMPORT R7 K5 [math.random]
  CALL R7 0 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R5 K8 [table.insert]
  CALL R5 -1 0
  FORNLOOP R2
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE REF R1
  CLOSEUPVALS R1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_1]
  RETURN R0 1
