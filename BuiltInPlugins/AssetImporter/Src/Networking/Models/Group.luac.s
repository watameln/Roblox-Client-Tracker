PROTO_0:
  DUPTABLE R0 K2 [{"groupId", "name"}]
  LOADK R1 K3 [13370420]
  SETTABLEKS R1 R0 K0 ["groupId"]
  LOADK R1 K4 ["RobloxLovers"]
  SETTABLEKS R1 R0 K1 ["name"]
  RETURN R0 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["id"]
  FASTCALL1 TYPE R2 [+2]
  GETIMPORT R1 K2 [type]
  CALL R1 1 1
  JUMPIFEQKS R1 K3 ["number"] [+4]
  LOADB R1 0
  LOADK R2 K4 ["Group.fromJsonData expects id to be a number"]
  RETURN R1 2
  GETTABLEKS R2 R0 K5 ["name"]
  FASTCALL1 TYPE R2 [+2]
  GETIMPORT R1 K2 [type]
  CALL R1 1 1
  JUMPIFEQKS R1 K6 ["string"] [+4]
  LOADB R1 0
  LOADK R2 K7 ["Group.fromJsonData expects name to be a string"]
  RETURN R1 2
  LOADB R1 1
  DUPTABLE R2 K9 [{"name", "groupId"}]
  GETTABLEKS R3 R0 K5 ["name"]
  SETTABLEKS R3 R2 K5 ["name"]
  GETTABLEKS R3 R0 K0 ["id"]
  SETTABLEKS R3 R2 K8 ["groupId"]
  RETURN R1 2

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Src"]
  GETTABLEKS R3 R4 K8 ["Types"]
  CALL R2 1 1
  NEWTABLE R3 2 0
  DUPCLOSURE R4 K9 [PROTO_0]
  SETTABLEKS R4 R3 K10 ["mock"]
  DUPCLOSURE R4 K11 [PROTO_1]
  SETTABLEKS R4 R3 K12 ["fromJsonData"]
  RETURN R3 1
