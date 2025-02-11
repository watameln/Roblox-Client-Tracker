PROTO_0:
  MOVE R2 R1
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R1 R2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  DUPTABLE R3 K5 [{"studioSid", "clientId", "placeId"}]
  GETUPVAL R4 1
  NAMECALL R4 R4 K6 ["GetSessionId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K2 ["studioSid"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K7 ["GetClientId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["clientId"]
  GETIMPORT R5 K9 [game]
  GETTABLEKS R4 R5 K10 ["PlaceId"]
  SETTABLEKS R4 R3 K4 ["placeId"]
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K11 ["LogAnalytics"]
  CALL R3 0 1
  JUMPIFNOT R3 [+18]
  GETIMPORT R3 K13 [print]
  LOADK R4 K14 ["%s SendEvent eventName=%s args=%s"]
  LOADK R6 K15 ["RobloxClassic"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R8 R0
  GETIMPORT R7 K17 [tostring]
  CALL R7 1 1
  GETUPVAL R8 3
  MOVE R10 R2
  NAMECALL R8 R8 K18 ["JSONEncode"]
  CALL R8 2 -1
  NAMECALL R4 R4 K19 ["format"]
  CALL R4 -1 -1
  CALL R3 -1 0
  GETUPVAL R3 1
  LOADK R5 K20 ["studio"]
  LOADK R6 K15 ["RobloxClassic"]
  MOVE R7 R0
  MOVE R8 R2
  NAMECALL R3 R3 K21 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

PROTO_1:
  ORK R1 R1 K0 [1]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["LogAnalytics"]
  CALL R2 0 1
  JUMPIFNOT R2 [+18]
  GETIMPORT R2 K3 [print]
  LOADK R3 K4 ["%s ReportCounter counterName=%s count=%s"]
  LOADK R5 K5 ["RobloxClassic"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K7 [tostring]
  CALL R6 1 1
  FASTCALL1 TOSTRING R1 [+3]
  MOVE R8 R1
  GETIMPORT R7 K7 [tostring]
  CALL R7 1 1
  NAMECALL R3 R3 K8 ["format"]
  CALL R3 4 -1
  CALL R2 -1 0
  GETUPVAL R2 1
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K9 ["ReportCounter"]
  CALL R2 3 0
  RETURN R0 0

PROTO_2:
  MOVE R3 R1
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  MOVE R1 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["LogAnalytics"]
  CALL R3 0 1
  JUMPIFNOT R3 [+23]
  GETIMPORT R3 K2 [print]
  LOADK R4 K3 ["%s SendEvent eventName=%s args=%s throttlingPercent=%s"]
  LOADK R6 K4 ["RobloxClassic"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R8 R0
  GETIMPORT R7 K6 [tostring]
  CALL R7 1 1
  GETUPVAL R8 1
  MOVE R10 R1
  NAMECALL R8 R8 K7 ["JSONEncode"]
  CALL R8 2 1
  FASTCALL1 TOSTRING R2 [+3]
  MOVE R10 R2
  GETIMPORT R9 K6 [tostring]
  CALL R9 1 1
  NAMECALL R4 R4 K8 ["format"]
  CALL R4 5 -1
  CALL R3 -1 0
  GETUPVAL R3 2
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  NAMECALL R3 R3 K9 ["ReportInfluxSeries"]
  CALL R3 4 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  LOADK R3 K0 ["RobloxClassicPluginFlipped"]
  MOVE R4 R1
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NEWCLOSURE R2 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  NEWCLOSURE R3 P2
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  DUPTABLE R4 K1 [{"classicPluginFlipped"}]
  NEWCLOSURE R5 P3
  CAPTURE VAL R1
  SETTABLEKS R5 R4 K0 ["classicPluginFlipped"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["DebugFlags"]
  CALL R2 1 1
  GETIMPORT R3 K11 [game]
  LOADK R5 K12 ["HttpService"]
  NAMECALL R3 R3 K13 ["GetService"]
  CALL R3 2 1
  DUPCLOSURE R4 K14 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R4 1
