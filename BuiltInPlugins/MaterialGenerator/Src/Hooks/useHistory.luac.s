PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R5 2
  FASTCALL2 ASSERT R4 R5 [+3]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R5 2
  FASTCALL2 ASSERT R4 R5 [+3]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETTABLE R3 R1 R0
  JUMPIFNOT R3 [+4]
  GETTABLE R4 R1 R0
  LENGTH R3 R4
  JUMPIFNOTEQKN R3 K3 [0] [+2]
  RETURN R0 0
  GETTABLE R3 R2 R0
  JUMPIF R3 [+3]
  NEWTABLE R3 0 0
  SETTABLE R3 R2 R0
  GETTABLE R4 R1 R0
  LENGTH R3 R4
  GETTABLE R5 R1 R0
  GETTABLE R4 R5 R3
  GETTABLE R6 R2 R0
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K0 ["current"]
  FASTCALL2 TABLE_INSERT R6 R7 [+3]
  GETIMPORT R5 K6 [table.insert]
  CALL R5 2 0
  GETIMPORT R5 K8 [table.remove]
  GETTABLE R6 R1 R0
  MOVE R7 R3
  CALL R5 2 0
  GETUPVAL R5 3
  SETTABLEKS R4 R5 K0 ["current"]
  GETUPVAL R5 4
  MOVE R6 R4
  CALL R5 1 0
  GETUPVAL R5 0
  SETTABLEKS R1 R5 K0 ["current"]
  GETUPVAL R5 1
  SETTABLEKS R2 R5 K0 ["current"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFNOTEQKNIL R1 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R5 2
  FASTCALL2 ASSERT R4 R5 [+3]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R5 2
  FASTCALL2 ASSERT R4 R5 [+3]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETTABLE R3 R2 R0
  JUMPIFNOT R3 [+4]
  GETTABLE R4 R2 R0
  LENGTH R3 R4
  JUMPIFNOTEQKN R3 K3 [0] [+2]
  RETURN R0 0
  GETTABLE R4 R2 R0
  LENGTH R3 R4
  GETTABLE R5 R2 R0
  GETTABLE R4 R5 R3
  GETTABLE R6 R1 R0
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K0 ["current"]
  FASTCALL2 TABLE_INSERT R6 R7 [+3]
  GETIMPORT R5 K6 [table.insert]
  CALL R5 2 0
  GETIMPORT R5 K8 [table.remove]
  GETTABLE R6 R2 R0
  MOVE R7 R3
  CALL R5 2 0
  GETUPVAL R5 3
  SETTABLEKS R4 R5 K0 ["current"]
  GETUPVAL R5 4
  MOVE R6 R4
  CALL R5 1 0
  GETUPVAL R5 0
  SETTABLEKS R1 R5 K0 ["current"]
  GETUPVAL R5 1
  SETTABLEKS R2 R5 K0 ["current"]
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 1
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnUndo"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  NAMECALL R0 R0 K1 ["Connect"]
  CALL R0 2 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["OnRedo"]
  NEWCLOSURE R3 P1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  NAMECALL R1 R1 K1 ["Connect"]
  CALL R1 2 1
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE VAL R1
  RETURN R2 1

PROTO_4:
  GETUPVAL R0 0
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["current"]
  GETUPVAL R0 1
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["current"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R5 1
  FASTCALL2 ASSERT R4 R5 [+3]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETTABLE R3 R2 R0
  JUMPIF R3 [+3]
  NEWTABLE R3 0 0
  SETTABLE R3 R2 R0
  GETUPVAL R3 2
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K0 ["current"]
  GETUPVAL R3 3
  MOVE R5 R0
  NAMECALL R3 R3 K3 ["SetWaypoint"]
  CALL R3 2 0
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K0 ["current"]
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R5 1
  FASTCALL2 ASSERT R4 R5 [+3]
  GETIMPORT R3 K2 [assert]
  CALL R3 2 0
  GETTABLE R4 R2 R0
  GETIMPORT R5 K6 [table.clone]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K0 ["current"]
  CALL R5 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R3 K8 [table.insert]
  CALL R3 -1 0
  GETUPVAL R3 4
  SETTABLEKS R1 R3 K0 ["current"]
  GETUPVAL R3 0
  SETTABLEKS R2 R3 K0 ["current"]
  RETURN R0 0

PROTO_6:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useRef"]
  MOVE R4 R0
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["useRef"]
  NEWTABLE R5 0 0
  CALL R4 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["useRef"]
  NEWTABLE R6 0 0
  CALL R5 1 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["useEffect"]
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE UPVAL U2
  CAPTURE VAL R3
  CAPTURE VAL R1
  MOVE R8 R2
  CALL R6 2 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["useEffect"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R4
  CAPTURE VAL R5
  MOVE R8 R2
  CALL R6 2 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["useCallback"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R4
  CAPTURE UPVAL U2
  CAPTURE VAL R5
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  MOVE R8 R2
  CALL R6 2 1
  RETURN R6 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ChangeHistoryService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["MaterialGenerator"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["ReactUtils"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K13 ["LUAU_ANALYZE_ERROR"]
  DUPCLOSURE R5 K14 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE VAL R4
  RETURN R5 1
