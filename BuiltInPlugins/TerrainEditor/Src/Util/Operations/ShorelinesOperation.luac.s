PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["State"]
  FASTCALL2K ASSERT R2 K1 [+4]
  LOADK R3 K1 ["Tried to update the state without it existing."]
  GETIMPORT R1 K3 [assert]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["State"]
  SETTABLEKS R0 R1 K4 ["Percent"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ShorelineUpgraderService"]
  NAMECALL R2 R2 K1 ["Start"]
  CALL R2 1 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["ShorelineUpgraderService"]
  GETTABLEKS R2 R3 K2 ["Status"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R2 R2 K3 ["Connect"]
  CALL R2 2 0
  DUPTABLE R2 K5 [{"Percent"}]
  LOADN R3 0
  SETTABLEKS R3 R2 K4 ["Percent"]
  SETTABLEKS R2 R0 K6 ["State"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R0 K0 ["State"]
  FASTCALL2K ASSERT R3 K1 [+4]
  LOADK R4 K1 ["Tried to step without starting first."]
  GETIMPORT R2 K3 [assert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K0 ["State"]
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["Terrain"]
  JUMPIFNOT R4 [+6]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["Terrain"]
  NAMECALL R4 R4 K5 ["CanShorelinesBeUpgraded"]
  CALL R4 1 1
  CALL R3 1 0
  GETTABLEKS R4 R2 K6 ["Percent"]
  LOADN R5 1
  JUMPIFLT R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETTABLEKS R4 R2 K6 ["Percent"]
  RETURN R3 2

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ShorelineUpgraderService"]
  NAMECALL R0 R0 K1 ["Cancel"]
  CALL R0 1 0
  GETUPVAL R0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["Terrain"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["Terrain"]
  NAMECALL R1 R1 K3 ["CanShorelinesBeUpgraded"]
  CALL R1 1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ChangeHistoryService"]
  LOADK R2 K1 ["Upgrade Shorelines"]
  NAMECALL R0 R0 K2 ["SetWaypoint"]
  CALL R0 2 0
  GETUPVAL R0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["Terrain"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["Terrain"]
  NAMECALL R1 R1 K4 ["CanShorelinesBeUpgraded"]
  CALL R1 1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  NEWCLOSURE R5 P1
  CAPTURE VAL R3
  CAPTURE VAL R2
  NEWCLOSURE R6 P2
  CAPTURE VAL R2
  CAPTURE VAL R3
  NEWCLOSURE R7 P3
  CAPTURE VAL R2
  CAPTURE VAL R3
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["new"]
  DUPTABLE R9 K8 [{"AllowCancel", "Description", "Name", "OnCancel", "OnFinish", "OnStart", "OnStep"}]
  LOADB R10 1
  SETTABLEKS R10 R9 K1 ["AllowCancel"]
  SETTABLEKS R1 R9 K2 ["Description"]
  SETTABLEKS R0 R9 K3 ["Name"]
  SETTABLEKS R6 R9 K4 ["OnCancel"]
  SETTABLEKS R7 R9 K5 ["OnFinish"]
  SETTABLEKS R4 R9 K6 ["OnStart"]
  SETTABLEKS R5 R9 K7 ["OnStep"]
  CALL R8 1 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["Operations"]
  GETTABLEKS R2 R3 K9 ["BaseOperation"]
  CALL R1 1 1
  DUPCLOSURE R2 K10 [PROTO_5]
  CAPTURE VAL R1
  RETURN R2 1
