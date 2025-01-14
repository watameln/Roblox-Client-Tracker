PROTO_0:
  GETIMPORT R0 K2 [Color3.new]
  GETIMPORT R1 K5 [math.random]
  CALL R1 0 1
  GETIMPORT R2 K5 [math.random]
  CALL R2 0 1
  GETIMPORT R3 K5 [math.random]
  CALL R3 0 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_1:
  NEWTABLE R0 0 0
  DUPTABLE R3 K1 [{"__index"}]
  DUPCLOSURE R4 K2 [PROTO_0]
  SETTABLEKS R4 R3 K0 ["__index"]
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K4 [setmetatable]
  CALL R1 2 0
  RETURN R0 1

PROTO_2:
  LOADNIL R0
  RETURN R0 1

PROTO_3:
  NEWTABLE R0 0 0
  DUPTABLE R3 K1 [{"__index"}]
  DUPCLOSURE R4 K2 [PROTO_2]
  SETTABLEKS R4 R3 K0 ["__index"]
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K4 [setmetatable]
  CALL R1 2 0
  RETURN R0 1

PROTO_4:
  GETIMPORT R0 K1 [pcall]
  GETUPVAL R1 0
  CALL R0 1 2
  JUMPIFNOT R0 [+4]
  LOADNIL R2
  SETUPVAL R2 1
  LOADB R2 1
  RETURN R2 1
  SETUPVAL R1 1
  LOADB R2 0
  RETURN R2 1

PROTO_5:
  GETIMPORT R0 K1 [error]
  GETIMPORT R1 K4 [string.format]
  LOADK R2 K5 ["pollAssertionUntil failed after %ds:
%s"]
  GETUPVAL R4 0
  ORK R3 R4 K6 [1]
  GETUPVAL R5 1
  FASTCALL1 TOSTRING R5 [+2]
  GETIMPORT R4 K8 [tostring]
  CALL R4 1 1
  CALL R1 3 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_6:
  LOADNIL R2
  GETUPVAL R3 0
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE REF R2
  MOVE R5 R1
  CALL R3 2 1
  NEWCLOSURE R5 P1
  CAPTURE VAL R1
  CAPTURE REF R2
  NAMECALL R3 R3 K0 ["catch"]
  CALL R3 2 1
  NAMECALL R3 R3 K1 ["await"]
  CALL R3 1 -1
  CLOSEUPVALS R2
  RETURN R3 -1

PROTO_7:
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETTABLE R0 R1 R2
  RETURN R0 1

PROTO_8:
  NEWTABLE R3 0 0
  NAMECALL R4 R0 K0 ["GetDescendants"]
  CALL R4 1 3
  FORGPREP R4
  GETIMPORT R9 K2 [pcall]
  NEWCLOSURE R10 P0
  CAPTURE VAL R8
  CAPTURE VAL R1
  CALL R9 1 2
  JUMPIFNOT R9 [+9]
  JUMPIFNOTEQ R2 R10 [+8]
  FASTCALL2 TABLE_INSERT R3 R8 [+5]
  MOVE R12 R3
  MOVE R13 R8
  GETIMPORT R11 K5 [table.insert]
  CALL R11 2 0
  FORGLOOP R4 2 [-17]
  RETURN R3 1

PROTO_9:
  GETUPVAL R2 0
  MOVE R3 R0
  LOADK R4 K0 ["Text"]
  MOVE R5 R1
  CALL R2 3 1
  RETURN R2 1

PROTO_10:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["getAllByText"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  GETTABLEN R2 R3 1
  RETURN R2 1

PROTO_11:
  GETUPVAL R2 0
  MOVE R3 R0
  LOADK R4 K0 ["PlaceholderText"]
  MOVE R5 R1
  CALL R2 3 1
  RETURN R2 1

PROTO_12:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["getAllByPlaceholderText"]
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  GETTABLEN R2 R3 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["pollUntil"]
  NEWTABLE R4 8 0
  DUPCLOSURE R5 K10 [PROTO_1]
  SETTABLEKS R5 R4 K11 ["createMockStudioStyleGuideColor"]
  DUPCLOSURE R5 K12 [PROTO_3]
  SETTABLEKS R5 R4 K13 ["createMockStudioStyleGuideModifier"]
  DUPCLOSURE R5 K14 [PROTO_6]
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K15 ["pollAssertionUntil"]
  DUPCLOSURE R5 K16 [PROTO_8]
  DUPCLOSURE R6 K17 [PROTO_9]
  CAPTURE VAL R5
  SETTABLEKS R6 R4 K18 ["getAllByText"]
  DUPCLOSURE R6 K19 [PROTO_10]
  CAPTURE VAL R4
  SETTABLEKS R6 R4 K20 ["getByText"]
  DUPCLOSURE R6 K21 [PROTO_11]
  CAPTURE VAL R5
  SETTABLEKS R6 R4 K22 ["getAllByPlaceholderText"]
  DUPCLOSURE R6 K23 [PROTO_12]
  CAPTURE VAL R4
  SETTABLEKS R6 R4 K24 ["getByPlaceholderText"]
  RETURN R4 1
