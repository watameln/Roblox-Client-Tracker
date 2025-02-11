PROTO_0:
  GETTABLEKS R2 R0 K0 ["responseBody"]
  GETTABLEKS R1 R2 K1 ["nextPageCursor"]
  SETUPVAL R1 0
  GETTABLEKS R4 R0 K0 ["responseBody"]
  GETTABLEKS R1 R4 K2 ["data"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETTABLEKS R6 R5 K3 ["id"]
  JUMPIFNOT R6 [+17]
  GETUPVAL R6 1
  GETTABLEKS R7 R5 K3 ["id"]
  DUPTABLE R8 K5 [{"searchResultSource"}]
  GETTABLEKS R9 R5 K4 ["searchResultSource"]
  SETTABLEKS R9 R8 K4 ["searchResultSource"]
  SETTABLE R8 R6 R7
  GETUPVAL R7 2
  GETTABLEKS R8 R5 K3 ["id"]
  FASTCALL2 TABLE_INSERT R7 R8 [+3]
  GETIMPORT R6 K8 [table.insert]
  CALL R6 2 0
  FORGLOOP R1 2 [-21]
  GETUPVAL R1 3
  GETUPVAL R3 2
  NAMECALL R1 R1 K9 ["getItemDetailsAssetIds"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETTABLEKS R4 R0 K0 ["responseBody"]
  GETTABLEKS R1 R4 K1 ["data"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["fromItemDetailsRequest"]
  MOVE R7 R5
  CALL R6 1 1
  GETTABLEKS R7 R5 K3 ["Asset"]
  JUMPIFNOT R7 [+17]
  GETTABLEKS R8 R5 K3 ["Asset"]
  GETTABLEKS R7 R8 K4 ["id"]
  JUMPIFNOT R7 [+12]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K5 ["AddContextToItemDetails"]
  MOVE R8 R6
  GETUPVAL R10 1
  GETTABLEKS R12 R5 K3 ["Asset"]
  GETTABLEKS R11 R12 K4 ["id"]
  GETTABLE R9 R10 R11
  CALL R7 2 1
  MOVE R6 R7
  GETTABLEKS R7 R6 K3 ["Asset"]
  JUMPIFNOT R7 [+6]
  GETUPVAL R7 2
  GETTABLEKS R9 R6 K3 ["Asset"]
  GETTABLEKS R8 R9 K6 ["Id"]
  SETTABLE R6 R7 R8
  FORGLOOP R1 2 [-35]
  DUPTABLE R1 K10 [{"assetIds", "assetMap", "nextPageCursor"}]
  GETUPVAL R2 3
  SETTABLEKS R2 R1 K7 ["assetIds"]
  GETUPVAL R2 2
  SETTABLEKS R2 R1 K8 ["assetMap"]
  GETUPVAL R2 4
  SETTABLEKS R2 R1 K9 ["nextPageCursor"]
  RETURN R1 1

PROTO_2:
  NEWTABLE R4 0 0
  NEWTABLE R5 0 0
  NEWTABLE R6 0 0
  LOADNIL R7
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["Dictionary"]
  GETTABLEKS R10 R11 K1 ["join"]
  DUPTABLE R11 K5 [{"categoryName", "sectionName", "ownerId"}]
  SETTABLEKS R1 R11 K2 ["categoryName"]
  SETTABLEKS R2 R11 K3 ["sectionName"]
  GETUPVAL R12 1
  CALL R12 0 1
  SETTABLEKS R12 R11 K4 ["ownerId"]
  JUMPIFNOT R3 [+15]
  DUPTABLE R12 K9 [{"limit", "includeOnlyVerifiedCreators", "cursor"}]
  GETTABLEKS R13 R3 K10 ["pageSize"]
  SETTABLEKS R13 R12 K6 ["limit"]
  GETTABLEKS R14 R3 K11 ["includeUnverifiedCreators"]
  NOT R13 R14
  SETTABLEKS R13 R12 K7 ["includeOnlyVerifiedCreators"]
  GETTABLEKS R13 R3 K12 ["nextPageCursor"]
  SETTABLEKS R13 R12 K8 ["cursor"]
  JUMP [+2]
  NEWTABLE R12 0 0
  CALL R10 2 -1
  NAMECALL R8 R0 K13 ["getToolboxItems"]
  CALL R8 -1 1
  NEWCLOSURE R10 P0
  CAPTURE REF R7
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R0
  NAMECALL R8 R8 K14 ["andThen"]
  CALL R8 2 1
  NEWCLOSURE R10 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE REF R7
  NAMECALL R8 R8 K14 ["andThen"]
  CALL R8 2 -1
  CLOSEUPVALS R7
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["LuauPolyfill"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Core"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["getUserId"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Core"]
  GETTABLEKS R6 R7 K12 ["Models"]
  GETTABLEKS R5 R6 K13 ["AssetInfo"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Core"]
  GETTABLEKS R7 R8 K14 ["Types"]
  GETTABLEKS R6 R7 K15 ["AudioTypes"]
  CALL R5 1 1
  DUPCLOSURE R6 K16 [PROTO_2]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R6 1
