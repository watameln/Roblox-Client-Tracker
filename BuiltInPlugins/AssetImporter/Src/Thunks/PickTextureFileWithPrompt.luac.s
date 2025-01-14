PROTO_0:
  LOADNIL R1
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+6]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["PickFileWithPrompt"]
  CALL R2 0 1
  MOVE R1 R2
  JUMP [+5]
  GETUPVAL R2 2
  NAMECALL R2 R2 K0 ["PickFileWithPrompt"]
  CALL R2 1 1
  MOVE R1 R2
  NAMECALL R2 R0 K1 ["getState"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K2 ["assetImportSession"]
  JUMPIFNOT R1 [+51]
  JUMPIFEQKS R1 K3 [""] [+50]
  GETUPVAL R4 3
  GETUPVAL R5 4
  SETTABLE R1 R4 R5
  GETUPVAL R4 5
  GETTABLEKS R5 R2 K4 ["importTree"]
  CALL R4 1 1
  GETUPVAL R7 6
  MOVE R8 R4
  CALL R7 1 -1
  NAMECALL R5 R0 K5 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R7 7
  NEWTABLE R8 1 0
  GETUPVAL R9 3
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K6 ["ShouldImport"]
  SETTABLE R10 R8 R9
  CALL R7 1 -1
  NAMECALL R5 R0 K5 ["dispatch"]
  CALL R5 -1 0
  GETUPVAL R5 8
  CALL R5 0 1
  JUMPIFNOT R5 [+10]
  GETUPVAL R7 9
  GETUPVAL R8 3
  NAMECALL R8 R8 K7 ["GetPreview"]
  CALL R8 1 -1
  CALL R7 -1 -1
  NAMECALL R5 R0 K5 ["dispatch"]
  CALL R5 -1 0
  RETURN R0 0
  GETUPVAL R7 9
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K8 ["Id"]
  NAMECALL R8 R3 K9 ["GetInstance"]
  CALL R8 2 -1
  CALL R7 -1 -1
  NAMECALL R5 R0 K5 ["dispatch"]
  CALL R5 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Utility"]
  GETTABLEKS R2 R3 K7 ["GetErrorChecked"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K8 ["Actions"]
  GETTABLEKS R3 R4 K9 ["SetErrorNodeChecked"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K5 ["Src"]
  GETTABLEKS R5 R6 K8 ["Actions"]
  GETTABLEKS R4 R5 K10 ["SetTreeChecked"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K11 ["Thunks"]
  GETTABLEKS R5 R6 K12 ["UpdatePreviewInstance"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K5 ["Src"]
  GETTABLEKS R7 R8 K6 ["Utility"]
  GETTABLEKS R6 R7 K13 ["UseServiceInterfaces"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K5 ["Src"]
  GETTABLEKS R8 R9 K14 ["Flags"]
  GETTABLEKS R7 R8 K15 ["getFFlagCinPreviewInstances"]
  CALL R6 1 1
  LOADNIL R7
  LOADNIL R8
  MOVE R9 R5
  CALL R9 0 1
  JUMPIFNOT R9 [+11]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K5 ["Src"]
  GETTABLEKS R11 R12 K6 ["Utility"]
  GETTABLEKS R10 R11 K16 ["ServiceInterfaces"]
  CALL R9 1 1
  MOVE R7 R9
  JUMP [+7]
  GETIMPORT R9 K18 [game]
  LOADK R11 K19 ["AssetImportService"]
  NAMECALL R9 R9 K20 ["GetService"]
  CALL R9 2 1
  MOVE R8 R9
  NEWCLOSURE R9 P0
  CAPTURE VAL R5
  CAPTURE REF R7
  CAPTURE REF R8
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R4
  CLOSEUPVALS R7
  RETURN R9 1
