PROTO_0:
  JUMPIFEQKNIL R0 [+4]
  GETUPVAL R1 0
  LOADB R2 1
  SETTABLE R2 R1 R0
  GETUPVAL R1 1
  GETUPVAL R2 0
  LOADB R3 0
  CALL R1 2 1
  JUMPIF R1 [+18]
  GETUPVAL R1 2
  GETUPVAL R3 3
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K0 ["SCREENS"]
  GETTABLEKS R4 R5 K1 ["UPLOADING_ASSET"]
  CALL R3 1 -1
  NAMECALL R1 R1 K2 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 2
  GETUPVAL R3 5
  GETUPVAL R4 6
  CALL R3 1 -1
  NAMECALL R1 R1 K2 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["sales"]
  GETUPVAL R0 1
  GETUPVAL R1 0
  LOADB R2 0
  CALL R0 2 1
  JUMPIF R0 [+18]
  GETUPVAL R0 2
  GETUPVAL R2 3
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K1 ["SCREENS"]
  GETTABLEKS R3 R4 K2 ["UPLOADING_ASSET"]
  CALL R2 1 -1
  NAMECALL R0 R0 K3 ["dispatch"]
  CALL R0 -1 0
  GETUPVAL R0 2
  GETUPVAL R2 5
  GETUPVAL R3 6
  CALL R2 1 -1
  NAMECALL R0 R0 K3 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["shouldDebugWarnings"]
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  GETIMPORT R1 K2 [warn]
  LOADK R2 K3 ["Unable to update the price: "]
  MOVE R3 R0
  CALL R1 2 0
  GETUPVAL R1 1
  LOADB R2 1
  SETTABLEKS R2 R1 K4 ["sales"]
  GETUPVAL R1 2
  GETUPVAL R2 1
  LOADB R3 0
  CALL R1 2 1
  JUMPIF R1 [+18]
  GETUPVAL R1 3
  GETUPVAL R3 4
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K5 ["SCREENS"]
  GETTABLEKS R4 R5 K6 ["UPLOADING_ASSET"]
  CALL R3 1 -1
  NAMECALL R1 R1 K7 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 3
  GETUPVAL R3 6
  GETUPVAL R4 7
  CALL R3 1 -1
  NAMECALL R1 R1 K7 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["thumbnail"]
  GETUPVAL R0 1
  GETUPVAL R1 0
  LOADB R2 0
  CALL R0 2 1
  JUMPIF R0 [+18]
  GETUPVAL R0 2
  GETUPVAL R2 3
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K1 ["SCREENS"]
  GETTABLEKS R3 R4 K2 ["UPLOADING_ASSET"]
  CALL R2 1 -1
  NAMECALL R0 R0 K3 ["dispatch"]
  CALL R0 -1 0
  GETUPVAL R0 2
  GETUPVAL R2 5
  GETUPVAL R3 6
  CALL R2 1 -1
  NAMECALL R0 R0 K3 ["dispatch"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_4:
  JUMPIFEQKNIL R0 [+4]
  GETTABLEKS R1 R0 K0 ["OverallSuccess"]
  SETUPVAL R1 0
  GETUPVAL R1 1
  LOADB R2 1
  SETTABLEKS R2 R1 K1 ["assetMedia"]
  GETUPVAL R1 2
  GETUPVAL R2 1
  LOADB R3 0
  CALL R1 2 1
  JUMPIF R1 [+18]
  GETUPVAL R1 3
  GETUPVAL R3 4
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K2 ["SCREENS"]
  GETTABLEKS R4 R5 K3 ["UPLOADING_ASSET"]
  CALL R3 1 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  GETUPVAL R1 3
  GETUPVAL R3 6
  GETUPVAL R4 0
  CALL R3 1 -1
  NAMECALL R1 R1 K4 ["dispatch"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_5:
  LOADB R1 1
  DUPTABLE R2 K3 [{"sales", "thumbnail", "assetMedia"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["sales"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["thumbnail"]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["assetMedia"]
  NAMECALL R4 R0 K4 ["getState"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K5 ["allowedAssetTypesForRelease"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE REF R1
  NEWCLOSURE R5 P1
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE REF R1
  NEWCLOSURE R6 P2
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE REF R1
  NEWCLOSURE R7 P3
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE REF R1
  NEWCLOSURE R8 P4
  CAPTURE REF R1
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  JUMPIFNOT R3 [+171]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K6 ["assetTypeEnum"]
  GETTABLEKS R10 R11 K7 ["Name"]
  GETTABLE R9 R3 R10
  JUMPIFNOT R9 [+120]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K8 ["saleStatus"]
  JUMPIFNOT R10 [+184]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K8 ["saleStatus"]
  GETUPVAL R12 6
  GETTABLEKS R11 R12 K9 ["isOnSale"]
  MOVE R12 R10
  CALL R11 1 1
  JUMPIFNOT R11 [+25]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K10 ["price"]
  JUMPIFNOT R11 [+21]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K10 ["price"]
  FASTCALL1 TONUMBER R12 [+2]
  GETIMPORT R11 K12 [tonumber]
  CALL R11 1 1
  LOADN R12 0
  JUMPIFNOTLE R11 R12 [+7]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K13 ["ASSET_STATUS"]
  GETTABLEKS R10 R11 K14 ["Free"]
  JUMP [+5]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K13 ["ASSET_STATUS"]
  GETTABLEKS R10 R11 K15 ["OnSale"]
  GETUPVAL R11 7
  CALL R11 0 1
  JUMPIFNOT R11 [+60]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K16 ["fromPrice"]
  JUMPIFNOT R11 [+34]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K16 ["fromPrice"]
  LOADN R12 0
  JUMPIFNOTLT R12 R11 [+29]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K13 ["ASSET_STATUS"]
  GETTABLEKS R11 R12 K15 ["OnSale"]
  JUMPIFNOTEQ R10 R11 [+22]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K17 ["networkInterface"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K18 ["assetId"]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K10 ["price"]
  NAMECALL R11 R11 K19 ["updateSales"]
  CALL R11 3 1
  MOVE R13 R5
  NAMECALL R11 R11 K20 ["andThen"]
  CALL R11 2 1
  MOVE R13 R6
  NAMECALL R11 R11 K21 ["catch"]
  CALL R11 2 0
  JUMP [+109]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K17 ["networkInterface"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K18 ["assetId"]
  MOVE R14 R10
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K10 ["price"]
  NAMECALL R11 R11 K22 ["configureSales"]
  CALL R11 4 1
  MOVE R13 R5
  NAMECALL R11 R11 K20 ["andThen"]
  CALL R11 2 1
  MOVE R13 R6
  NAMECALL R11 R11 K21 ["catch"]
  CALL R11 2 0
  JUMP [+87]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K17 ["networkInterface"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K18 ["assetId"]
  MOVE R14 R10
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K10 ["price"]
  NAMECALL R11 R11 K22 ["configureSales"]
  CALL R11 4 1
  MOVE R13 R5
  MOVE R14 R5
  NAMECALL R11 R11 K20 ["andThen"]
  CALL R11 3 0
  JUMP [+68]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K8 ["saleStatus"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K13 ["ASSET_STATUS"]
  GETTABLEKS R12 R13 K23 ["OffSale"]
  JUMPIFNOTEQ R10 R12 [+7]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K13 ["ASSET_STATUS"]
  GETTABLEKS R11 R12 K23 ["OffSale"]
  JUMPIF R11 [+5]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K13 ["ASSET_STATUS"]
  GETTABLEKS R11 R12 K14 ["Free"]
  MOVE R10 R11
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K17 ["networkInterface"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K18 ["assetId"]
  MOVE R14 R10
  LOADN R15 0
  NAMECALL R11 R11 K22 ["configureSales"]
  CALL R11 4 1
  MOVE R13 R5
  GETUPVAL R15 7
  CALL R15 0 1
  JUMPIFNOT R15 [+2]
  MOVE R14 R6
  JUMP [+1]
  MOVE R14 R5
  NAMECALL R11 R11 K20 ["andThen"]
  CALL R11 3 0
  JUMP [+24]
  LOADB R9 1
  SETTABLEKS R9 R2 K0 ["sales"]
  GETUPVAL R9 0
  MOVE R10 R2
  LOADB R11 0
  CALL R9 2 1
  JUMPIF R9 [+16]
  GETUPVAL R11 1
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K24 ["SCREENS"]
  GETTABLEKS R12 R13 K25 ["UPLOADING_ASSET"]
  CALL R11 1 -1
  NAMECALL R9 R0 K26 ["dispatch"]
  CALL R9 -1 0
  GETUPVAL R11 3
  MOVE R12 R1
  CALL R11 1 -1
  NAMECALL R9 R0 K26 ["dispatch"]
  CALL R9 -1 0
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K27 ["iconFile"]
  JUMPIFNOT R9 [+18]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K17 ["networkInterface"]
  GETUPVAL R12 5
  GETTABLEKS R11 R12 K18 ["assetId"]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K27 ["iconFile"]
  NAMECALL R9 R9 K28 ["uploadAssetThumbnail"]
  CALL R9 3 1
  MOVE R11 R7
  MOVE R12 R7
  NAMECALL R9 R9 K20 ["andThen"]
  CALL R9 3 0
  JUMP [+24]
  LOADB R9 1
  SETTABLEKS R9 R2 K1 ["thumbnail"]
  GETUPVAL R9 0
  MOVE R10 R2
  LOADB R11 0
  CALL R9 2 1
  JUMPIF R9 [+16]
  GETUPVAL R11 1
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K24 ["SCREENS"]
  GETTABLEKS R12 R13 K25 ["UPLOADING_ASSET"]
  CALL R11 1 -1
  NAMECALL R9 R0 K26 ["dispatch"]
  CALL R9 -1 0
  GETUPVAL R11 3
  MOVE R12 R1
  CALL R11 1 -1
  NAMECALL R9 R0 K26 ["dispatch"]
  CALL R9 -1 0
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K29 ["assetMediaUpdateData"]
  JUMPIFNOT R9 [+22]
  GETUPVAL R11 8
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K17 ["networkInterface"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K18 ["assetId"]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K29 ["assetMediaUpdateData"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K6 ["assetTypeEnum"]
  CALL R11 4 -1
  NAMECALL R9 R0 K26 ["dispatch"]
  CALL R9 -1 1
  MOVE R11 R8
  NAMECALL R9 R9 K20 ["andThen"]
  CALL R9 2 0
  JUMP [+24]
  LOADB R9 1
  SETTABLEKS R9 R2 K2 ["assetMedia"]
  GETUPVAL R9 0
  MOVE R10 R2
  LOADB R11 0
  CALL R9 2 1
  JUMPIF R9 [+16]
  GETUPVAL R11 1
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K24 ["SCREENS"]
  GETTABLEKS R12 R13 K25 ["UPLOADING_ASSET"]
  CALL R11 1 -1
  NAMECALL R9 R0 K26 ["dispatch"]
  CALL R9 -1 0
  GETUPVAL R11 3
  MOVE R12 R1
  CALL R11 1 -1
  NAMECALL R9 R0 K26 ["dispatch"]
  CALL R9 -1 0
  GETUPVAL R9 0
  MOVE R10 R2
  LOADB R11 0
  CALL R9 2 1
  JUMPIF R9 [+16]
  GETUPVAL R11 1
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K24 ["SCREENS"]
  GETTABLEKS R12 R13 K25 ["UPLOADING_ASSET"]
  CALL R11 1 -1
  NAMECALL R9 R0 K26 ["dispatch"]
  CALL R9 -1 0
  GETUPVAL R11 3
  MOVE R12 R1
  CALL R11 1 -1
  NAMECALL R9 R0 K26 ["dispatch"]
  CALL R9 -1 0
  CLOSEUPVALS R1
  RETURN R0 0

PROTO_6:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R2 R0 K3 ["Core"]
  GETTABLEKS R1 R2 K4 ["Util"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R5 R0 K3 ["Core"]
  GETTABLEKS R4 R5 K4 ["Util"]
  GETTABLEKS R3 R4 K7 ["DebugFlags"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["AssetConfigConstants"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["AssetConfigUtil"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K3 ["Core"]
  GETTABLEKS R5 R6 K10 ["Actions"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R5 K11 ["SetCurrentScreen"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R5 K12 ["UploadResult"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R12 R0 K3 ["Core"]
  GETTABLEKS R11 R12 K13 ["Networking"]
  GETTABLEKS R10 R11 K14 ["Requests"]
  GETTABLEKS R9 R10 K15 ["UpdateAssetMediaDataRequest"]
  CALL R8 1 1
  GETTABLEKS R9 R0 K16 ["Packages"]
  GETIMPORT R10 K6 [require]
  GETTABLEKS R11 R9 K17 ["Framework"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R12 R9 K18 ["Dash"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K19 ["includes"]
  GETIMPORT R13 K6 [require]
  GETTABLEKS R17 R0 K3 ["Core"]
  GETTABLEKS R16 R17 K4 ["Util"]
  GETTABLEKS R15 R16 K20 ["SharedFlags"]
  GETTABLEKS R14 R15 K21 ["getFFlagToolboxFixPluginPriceEditing"]
  CALL R13 1 1
  DUPCLOSURE R14 K22 [PROTO_6]
  CAPTURE VAL R12
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R13
  CAPTURE VAL R8
  RETURN R14 1
