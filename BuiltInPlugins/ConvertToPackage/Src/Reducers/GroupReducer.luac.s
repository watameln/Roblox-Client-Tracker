PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"groupsArray"}]
  GETTABLEKS R5 R1 K2 ["groupsArray"]
  SETTABLEKS R5 R4 K2 ["groupsArray"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  MOVE R3 R0
  DUPTABLE R4 K3 [{"assetGroupData"}]
  GETTABLEKS R5 R1 K2 ["assetGroupData"]
  SETTABLEKS R5 R4 K2 ["assetGroupData"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Rodux"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Actions"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K10 ["SetMyGroups"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R4 K11 ["SetAssetGroupData"]
  CALL R6 1 1
  DUPTABLE R7 K14 [{"assetGroupData", "groupsArray"}]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K12 ["assetGroupData"]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K13 ["groupsArray"]
  GETTABLEKS R8 R3 K15 ["createReducer"]
  MOVE R9 R7
  NEWTABLE R10 2 0
  GETTABLEKS R11 R5 K16 ["name"]
  DUPCLOSURE R12 K17 [PROTO_0]
  CAPTURE VAL R2
  SETTABLE R12 R10 R11
  GETTABLEKS R11 R6 K16 ["name"]
  DUPCLOSURE R12 K18 [PROTO_1]
  CAPTURE VAL R2
  SETTABLE R12 R10 R11
  CALL R8 2 -1
  RETURN R8 -1
