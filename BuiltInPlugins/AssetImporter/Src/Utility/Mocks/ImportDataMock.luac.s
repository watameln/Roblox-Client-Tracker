PROTO_0:
  NEWTABLE R3 16 0
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R3 R4 [+3]
  GETIMPORT R2 K1 [setmetatable]
  CALL R2 2 1
  SETTABLEKS R0 R2 K2 ["Id"]
  LOADK R3 K3 ["ImportMock"]
  SETTABLEKS R3 R2 K4 ["ImportName"]
  LOADB R3 1
  SETTABLEKS R3 R2 K5 ["ShouldImport"]
  LOADK R3 K6 ["BaseImportData"]
  SETTABLEKS R3 R2 K7 ["ClassName"]
  LOADNIL R3
  SETTABLEKS R3 R2 K8 ["Parent"]
  GETIMPORT R3 K10 [pairs]
  MOVE R4 R1
  CALL R3 1 3
  FORGPREP_NEXT R3
  SETTABLE R7 R2 R6
  FORGLOOP R3 2 [-2]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K11 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R2 K12 ["_propertyChangedSignal"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K13 ["_errors"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K14 ["_warnings"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K15 ["_childLookup"]
  RETURN R2 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["_propertyChangedSignal"]
  RETURN R1 1

PROTO_2:
  SETTABLEKS R1 R0 K0 ["ClassName"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R5 R0 K0 ["_errors"]
  GETUPVAL R6 0
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  CALL R6 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K3 [table.insert]
  CALL R4 -1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R5 R0 K0 ["_warnings"]
  GETUPVAL R6 0
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  CALL R6 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K3 [table.insert]
  CALL R4 -1 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K2 [{"Errors", "Warnings"}]
  GETTABLEKS R2 R0 K3 ["_errors"]
  SETTABLEKS R2 R1 K0 ["Errors"]
  GETTABLEKS R2 R0 K4 ["_warnings"]
  SETTABLEKS R2 R1 K1 ["Warnings"]
  RETURN R1 1

PROTO_6:
  NEWTABLE R1 0 0
  RETURN R1 1

PROTO_7:
  JUMPIFEQKS R1 K0 ["BaseImportData"] [+7]
  GETTABLEKS R2 R0 K1 ["ClassName"]
  JUMPIFEQ R1 R2 [+3]
  JUMPIFNOTEQKS R1 K2 ["Instance"] [+3]
  LOADB R2 1
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_8:
  GETTABLEKS R2 R0 K0 ["_childLookup"]
  LOADB R3 1
  SETTABLE R3 R2 R1
  RETURN R0 0

PROTO_9:
  GETTABLEKS R2 R0 K0 ["_childLookup"]
  LOADNIL R3
  SETTABLE R3 R2 R1
  RETURN R0 0

PROTO_10:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  GETTABLEKS R3 R0 K2 ["_childLookup"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  FASTCALL2 TABLE_INSERT R1 R5 [+5]
  MOVE R8 R1
  MOVE R9 R5
  GETIMPORT R7 K5 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-8]
  RETURN R1 1

PROTO_11:
  GETTABLEKS R2 R0 K0 ["Parent"]
  JUMPIFEQKNIL R2 [+7]
  GETTABLEKS R2 R0 K0 ["Parent"]
  MOVE R4 R0
  NAMECALL R2 R2 K1 ["_removeChild"]
  CALL R2 2 0
  SETTABLEKS R1 R0 K0 ["Parent"]
  JUMPIFEQKNIL R1 [+5]
  MOVE R4 R0
  NAMECALL R2 R1 K2 ["_addChild"]
  CALL R2 2 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["_propertyChangedSignal"]
  NAMECALL R1 R1 K1 ["Destroy"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["Parent"]
  JUMPIFEQKNIL R1 [+7]
  GETTABLEKS R1 R0 K2 ["Parent"]
  MOVE R3 R0
  NAMECALL R1 R1 K3 ["_removeChild"]
  CALL R1 2 0
  GETIMPORT R1 K5 [pairs]
  GETTABLEKS R2 R0 K6 ["_childLookup"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  LOADNIL R8
  NAMECALL R6 R4 K7 ["SetParent"]
  CALL R6 2 0
  FORGLOOP R1 2 [-5]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K6 ["_childLookup"]
  LOADNIL R1
  SETTABLEKS R1 R0 K2 ["Parent"]
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
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K7 ["Utility"]
  GETTABLEKS R4 R5 K8 ["Mocks"]
  GETTABLEKS R3 R4 K9 ["EventMock"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K7 ["Utility"]
  GETTABLEKS R5 R6 K8 ["Mocks"]
  GETTABLEKS R4 R5 K10 ["MakeMockStatus_DEPRECATED"]
  CALL R3 1 1
  NEWTABLE R4 16 0
  SETTABLEKS R4 R4 K11 ["__index"]
  DUPCLOSURE R5 K12 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R2
  SETTABLEKS R5 R4 K13 ["new"]
  DUPCLOSURE R5 K14 [PROTO_1]
  SETTABLEKS R5 R4 K15 ["GetPropertyChangedSignal"]
  DUPCLOSURE R5 K16 [PROTO_2]
  SETTABLEKS R5 R4 K17 ["SetClassName"]
  DUPCLOSURE R5 K18 [PROTO_3]
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K19 ["AddMockError"]
  DUPCLOSURE R5 K20 [PROTO_4]
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K21 ["AddMockWarning"]
  DUPCLOSURE R5 K22 [PROTO_5]
  SETTABLEKS R5 R4 K23 ["GetStatuses_DEPRECATED"]
  DUPCLOSURE R5 K24 [PROTO_6]
  SETTABLEKS R5 R4 K25 ["GetStatuses"]
  DUPCLOSURE R5 K26 [PROTO_7]
  SETTABLEKS R5 R4 K27 ["IsA"]
  DUPCLOSURE R5 K28 [PROTO_8]
  SETTABLEKS R5 R4 K29 ["_addChild"]
  DUPCLOSURE R5 K30 [PROTO_9]
  SETTABLEKS R5 R4 K31 ["_removeChild"]
  DUPCLOSURE R5 K32 [PROTO_10]
  SETTABLEKS R5 R4 K33 ["GetChildren"]
  DUPCLOSURE R5 K34 [PROTO_11]
  SETTABLEKS R5 R4 K35 ["SetParent"]
  DUPCLOSURE R5 K36 [PROTO_12]
  SETTABLEKS R5 R4 K37 ["Destroy"]
  RETURN R4 1
