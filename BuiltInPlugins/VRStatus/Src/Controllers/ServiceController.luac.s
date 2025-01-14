PROTO_0:
  DUPTABLE R2 K1 [{"_services"}]
  DUPTABLE R3 K4 [{"VRService", "UserGameSettings"}]
  JUMPIFNOT R0 [+5]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["new"]
  CALL R4 0 1
  JUMP [+6]
  GETIMPORT R4 K7 [game]
  LOADK R6 K2 ["VRService"]
  NAMECALL R4 R4 K8 ["GetService"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["VRService"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["new"]
  CALL R4 0 1
  JUMP [+7]
  GETIMPORT R4 K10 [UserSettings]
  CALL R4 0 1
  LOADK R6 K3 ["UserGameSettings"]
  NAMECALL R4 R4 K8 ["GetService"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["UserGameSettings"]
  SETTABLEKS R3 R2 K0 ["_services"]
  GETUPVAL R3 2
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K12 [setmetatable]
  CALL R1 2 1
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["new"]
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R0 K0 ["_services"]
  GETTABLE R2 R3 R1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VRStatus"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K8 ["ContextServices"]
  GETTABLEKS R2 R3 K9 ["ContextItem"]
  LOADK R5 K10 ["ServiceController"]
  NAMECALL R3 R2 K11 ["extend"]
  CALL R3 2 1
  GETTABLEKS R5 R0 K12 ["Src"]
  GETTABLEKS R4 R5 K13 ["Mocks"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K14 ["MockUserSettingService"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R4 K15 ["MockVRService"]
  CALL R6 1 1
  DUPCLOSURE R7 K16 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R3
  SETTABLEKS R7 R3 K17 ["new"]
  DUPCLOSURE R7 K18 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R7 R3 K19 ["mock"]
  DUPCLOSURE R7 K20 [PROTO_2]
  SETTABLEKS R7 R3 K21 ["getService"]
  RETURN R3 1
