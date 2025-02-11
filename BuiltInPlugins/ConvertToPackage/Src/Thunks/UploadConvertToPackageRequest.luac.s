PROTO_0:
  GETUPVAL R2 0
  GETUPVAL R4 1
  MOVE R5 R0
  CALL R4 1 -1
  NAMECALL R2 R2 K0 ["dispatch"]
  CALL R2 -1 0
  GETUPVAL R2 2
  JUMPIFNOT R2 [+16]
  NEWTABLE R2 4 0
  GETUPVAL R3 3
  SETTABLEKS R3 R2 K1 ["url"]
  JUMPIFNOT R0 [+2]
  LOADN R3 200
  JUMP [+1]
  LOADN R3 255
  SETTABLEKS R3 R2 K2 ["responseCode"]
  SETTABLEKS R1 R2 K3 ["responseBody"]
  GETUPVAL R3 4
  MOVE R4 R2
  CALL R3 1 0
  JUMPIFNOT R1 [+8]
  GETUPVAL R2 0
  GETUPVAL R4 5
  MOVE R5 R1
  LOADK R6 K4 ["uploadRequest"]
  CALL R4 2 -1
  NAMECALL R2 R2 K0 ["dispatch"]
  CALL R2 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  NAMECALL R2 R2 K0 ["Disconnect"]
  CALL R2 1 0
  GETUPVAL R2 1
  MOVE R3 R0
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["SCREENS"]
  GETTABLEKS R4 R5 K1 ["UPLOADING_ASSET"]
  CALL R3 1 -1
  NAMECALL R1 R0 K2 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K3 ["constructPostUploadAssetUrl"]
  GETUPVAL R2 3
  LOADK R3 K4 ["Model"]
  GETUPVAL R5 4
  ORK R4 R5 K5 [""]
  GETUPVAL R6 5
  ORK R5 R6 K5 [""]
  GETUPVAL R6 6
  GETUPVAL R7 7
  GETUPVAL R8 8
  GETUPVAL R9 9
  CALL R1 8 1
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE VAL R1
  CAPTURE UPVAL U12
  CAPTURE UPVAL U13
  LOADNIL R3
  GETUPVAL R5 14
  GETTABLEKS R4 R5 K6 ["OnConvertToPackageResult"]
  NEWCLOSURE R6 P1
  CAPTURE REF R3
  CAPTURE VAL R2
  NAMECALL R4 R4 K7 ["Connect"]
  CALL R4 2 1
  MOVE R3 R4
  GETUPVAL R4 14
  MOVE R6 R1
  GETUPVAL R7 15
  GETUPVAL R8 16
  NAMECALL R4 R4 K8 ["ConvertToPackageUpload"]
  CALL R4 4 0
  CLOSEUPVALS R3
  RETURN R0 0

PROTO_3:
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE VAL R7
  CAPTURE VAL R8
  RETURN R9 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["Constants"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K8 ["Actions"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R2 K9 ["NetworkError"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R2 K10 ["SetCurrentScreen"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R6 R2 K11 ["UploadResult"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K5 ["Src"]
  GETTABLEKS R8 R9 K6 ["Util"]
  GETTABLEKS R7 R8 K12 ["Urls"]
  CALL R6 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R0 K13 ["Packages"]
  GETTABLEKS R10 R11 K14 ["Framework"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K6 ["Util"]
  GETTABLEKS R7 R8 K15 ["sendResultToKibana"]
  GETIMPORT R8 K17 [game]
  LOADK R10 K18 ["NewPackageAnalyticsWithRefactor2"]
  NAMECALL R8 R8 K19 ["GetFastFlag"]
  CALL R8 2 1
  GETIMPORT R10 K17 [game]
  LOADK R12 K21 ["PackageUIService"]
  NAMECALL R10 R10 K22 ["GetService"]
  CALL R10 2 1
  ORK R9 R10 K20 []
  DUPCLOSURE R10 K23 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R9
  RETURN R10 1
