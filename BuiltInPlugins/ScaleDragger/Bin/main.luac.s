PROTO_0:
  JUMPIFNOT R0 [+5]
  GETTABLEKS R1 R0 K0 ["basisObject"]
  JUMPIFNOT R1 [+2]
  LOADB R1 1
  RETURN R1 1
  LOADB R1 0
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+5]
  GETIMPORT R0 K1 [warn]
  LOADK R1 K2 ["Plugin handle already exists"]
  CALL R0 1 0
  RETURN R0 0
  LOADB R0 1
  SETUPVAL R0 1
  GETUPVAL R0 2
  LOADB R2 1
  NAMECALL R0 R0 K3 ["Activate"]
  CALL R0 2 0
  GETUPVAL R0 3
  CALL R0 0 1
  JUMPIF R0 [+6]
  GETUPVAL R0 4
  LOADB R2 1
  NAMECALL R0 R0 K4 ["SetActive"]
  CALL R0 2 0
  JUMP [+7]
  GETUPVAL R1 5
  GETTABLEKS R0 R1 K5 ["mainButton"]
  LOADB R2 1
  NAMECALL R0 R0 K4 ["SetActive"]
  CALL R0 2 0
  LOADNIL R0
  GETUPVAL R1 6
  CALL R1 0 1
  JUMPIFNOT R1 [+1]
  DUPCLOSURE R0 K6 [PROTO_0]
  GETUPVAL R2 7
  GETTABLEKS R1 R2 K7 ["mount"]
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K8 ["createElement"]
  GETUPVAL R3 8
  DUPTABLE R4 K13 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
  GETUPVAL R5 2
  NAMECALL R5 R5 K14 ["GetMouse"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K9 ["Mouse"]
  GETUPVAL R5 9
  SETTABLEKS R5 R4 K10 ["DraggerContext"]
  GETUPVAL R5 10
  SETTABLEKS R5 R4 K11 ["DraggerSchema"]
  DUPTABLE R5 K21 [{"AnalyticsName", "AllowDragSelect", "AllowFreeformDrag", "ShowLocalSpaceIndicator", "ShowPivotIndicator", "HandlesList"}]
  LOADK R6 K22 ["Scale"]
  SETTABLEKS R6 R5 K15 ["AnalyticsName"]
  LOADB R6 1
  SETTABLEKS R6 R5 K16 ["AllowDragSelect"]
  LOADB R6 1
  SETTABLEKS R6 R5 K17 ["AllowFreeformDrag"]
  LOADB R6 1
  SETTABLEKS R6 R5 K18 ["ShowLocalSpaceIndicator"]
  LOADB R6 1
  SETTABLEKS R6 R5 K19 ["ShowPivotIndicator"]
  NEWTABLE R6 0 1
  GETUPVAL R8 11
  GETTABLEKS R7 R8 K23 ["new"]
  GETUPVAL R8 9
  DUPTABLE R9 K27 [{"ShowBoundingBox", "Summonable", "IsEnabledFunction"}]
  LOADB R10 1
  SETTABLEKS R10 R9 K24 ["ShowBoundingBox"]
  LOADB R10 1
  SETTABLEKS R10 R9 K25 ["Summonable"]
  GETUPVAL R11 6
  CALL R11 0 1
  JUMPIFNOT R11 [+2]
  MOVE R10 R0
  JUMPIF R10 [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K26 ["IsEnabledFunction"]
  GETUPVAL R12 10
  GETTABLEKS R11 R12 K28 ["ExtrudeHandlesImplementation"]
  GETTABLEKS R10 R11 K23 ["new"]
  GETUPVAL R11 9
  CALL R10 1 -1
  CALL R7 -1 -1
  SETLIST R6 R7 -1 [1]
  SETTABLEKS R6 R5 K20 ["HandlesList"]
  SETTABLEKS R5 R4 K12 ["DraggerSettings"]
  CALL R2 2 -1
  CALL R1 -1 1
  SETUPVAL R1 0
  RETURN R0 0

PROTO_2:
  LOADB R0 0
  SETUPVAL R0 0
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIF R0 [+6]
  GETUPVAL R0 2
  LOADB R2 0
  NAMECALL R0 R0 K0 ["SetActive"]
  CALL R0 2 0
  JUMP [+7]
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K1 ["mainButton"]
  LOADB R2 0
  NAMECALL R0 R0 K0 ["SetActive"]
  CALL R0 2 0
  GETUPVAL R0 4
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 5
  GETTABLEKS R0 R1 K2 ["unmount"]
  GETUPVAL R1 4
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 4
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+27]
  LOADB R0 0
  SETUPVAL R0 0
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIF R0 [+6]
  GETUPVAL R0 2
  LOADB R2 0
  NAMECALL R0 R0 K0 ["SetActive"]
  CALL R0 2 0
  JUMP [+7]
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K1 ["mainButton"]
  LOADB R2 0
  NAMECALL R0 R0 K0 ["SetActive"]
  CALL R0 2 0
  GETUPVAL R0 4
  JUMPIFNOT R0 [+7]
  GETUPVAL R1 5
  GETTABLEKS R0 R1 K2 ["unmount"]
  GETUPVAL R1 4
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 4
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+28]
  LOADB R0 0
  SETUPVAL R0 0
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIF R0 [+6]
  GETUPVAL R0 2
  LOADB R2 0
  NAMECALL R0 R0 K0 ["SetActive"]
  CALL R0 2 0
  JUMP [+7]
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K1 ["mainButton"]
  LOADB R2 0
  NAMECALL R0 R0 K0 ["SetActive"]
  CALL R0 2 0
  GETUPVAL R0 4
  JUMPIFNOT R0 [+10]
  GETUPVAL R1 5
  GETTABLEKS R0 R1 K2 ["unmount"]
  GETUPVAL R1 4
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 4
  RETURN R0 0
  GETUPVAL R0 6
  CALL R0 0 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+28]
  LOADB R0 0
  SETUPVAL R0 0
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIF R0 [+6]
  GETUPVAL R0 2
  LOADB R2 0
  NAMECALL R0 R0 K0 ["SetActive"]
  CALL R0 2 0
  JUMP [+7]
  GETUPVAL R1 3
  GETTABLEKS R0 R1 K1 ["mainButton"]
  LOADB R2 0
  NAMECALL R0 R0 K0 ["SetActive"]
  CALL R0 2 0
  GETUPVAL R0 4
  JUMPIFNOT R0 [+10]
  GETUPVAL R1 5
  GETTABLEKS R0 R1 K2 ["unmount"]
  GETUPVAL R1 4
  CALL R0 1 0
  LOADNIL R0
  SETUPVAL R0 4
  RETURN R0 0
  GETUPVAL R0 6
  CALL R0 0 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  LOADK R1 K0 ["ScaleDragger"]
  SETTABLEKS R1 R0 K1 ["Name"]
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIF R0 [+13]
  GETUPVAL R0 0
  LOADK R2 K2 ["Home"]
  NAMECALL R0 R0 K3 ["CreateToolbar"]
  CALL R0 2 1
  LOADK R3 K4 ["Scale"]
  LOADK R4 K5 ["Scale an Object"]
  LOADK R5 K6 [""]
  LOADK R6 K4 ["Scale"]
  NAMECALL R1 R0 K7 ["CreateButton"]
  CALL R1 5 1
  SETUPVAL R1 2
  GETUPVAL R1 4
  GETTABLEKS R0 R1 K8 ["new"]
  GETUPVAL R1 0
  GETIMPORT R2 K10 [game]
  GETIMPORT R3 K12 [settings]
  CALL R3 0 1
  GETUPVAL R6 5
  GETTABLEKS R5 R6 K13 ["Selection"]
  GETTABLEKS R4 R5 K8 ["new"]
  CALL R4 0 -1
  CALL R0 -1 1
  SETUPVAL R0 3
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K14 ["Deactivation"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U6
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  NAMECALL R0 R0 K15 ["Connect"]
  CALL R0 2 0
  GETUPVAL R0 1
  CALL R0 0 1
  JUMPIF R0 [+15]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K16 ["Click"]
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U6
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  NAMECALL R0 R0 K15 ["Connect"]
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R1 7
  GETTABLEKS R0 R1 K17 ["mainButtonClickedSignal"]
  NEWCLOSURE R2 P2
  CAPTURE UPVAL U6
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  NAMECALL R0 R0 K15 ["Connect"]
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R4 R2 K3 ["Packages"]
  GETTABLEKS R3 R4 K4 ["DraggerFramework"]
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R2 K3 ["Packages"]
  GETTABLEKS R5 R6 K7 ["Roact"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R3 K8 ["Implementation"]
  GETTABLEKS R6 R7 K9 ["DraggerContext_PluginImpl"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R3 K10 ["DraggerTools"]
  GETTABLEKS R7 R8 K11 ["DraggerToolComponent"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R3 K12 ["Flags"]
  GETTABLEKS R8 R9 K13 ["getFFlagDraggerHandlesIsEnabledFunction"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R3 K14 ["Handles"]
  GETTABLEKS R9 R10 K15 ["ExtrudeHandles"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R3 K12 ["Flags"]
  GETTABLEKS R10 R11 K16 ["getFFlagImprovePluginSpeedScaleDragger"]
  CALL R9 1 1
  GETTABLEKS R11 R2 K3 ["Packages"]
  GETTABLEKS R10 R11 K17 ["DraggerSchemaCore"]
  GETIMPORT R11 K6 [require]
  GETTABLEKS R12 R10 K18 ["DraggerSchema"]
  CALL R11 1 1
  LOADNIL R12
  LOADB R13 0
  LOADNIL R14
  LOADNIL R15
  NEWCLOSURE R16 P0
  CAPTURE REF R14
  CAPTURE REF R13
  CAPTURE VAL R0
  CAPTURE VAL R9
  CAPTURE REF R15
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE REF R12
  CAPTURE VAL R11
  CAPTURE VAL R8
  NEWCLOSURE R17 P1
  CAPTURE REF R13
  CAPTURE VAL R9
  CAPTURE REF R15
  CAPTURE VAL R1
  CAPTURE REF R14
  CAPTURE VAL R4
  NEWCLOSURE R18 P2
  CAPTURE VAL R0
  CAPTURE VAL R9
  CAPTURE REF R15
  CAPTURE REF R12
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE REF R13
  CAPTURE VAL R1
  CAPTURE REF R14
  CAPTURE VAL R4
  CAPTURE VAL R16
  MOVE R19 R18
  CALL R19 0 0
  CLOSEUPVALS R12
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_7]
  RETURN R0 1
