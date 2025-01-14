PROTO_0:
  GETUPVAL R0 0
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R2 K2 [task.spawn]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  FASTCALL1 TONUMBER R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [tonumber]
  CALL R2 1 1
  LOADN R3 1
  JUMPIFEQKNIL R2 [+2]
  MOVE R3 R2
  NEWTABLE R4 0 0
  LOADN R7 1
  LOADN R5 12
  LOADN R6 1
  FORNPREP R5
  ADD R8 R7 R3
  GETUPVAL R10 0
  GETUPVAL R14 0
  LENGTH R13 R14
  MOD R12 R8 R13
  ADDK R11 R12 K2 [1]
  GETTABLE R9 R10 R11
  MOVE R10 R8
  CALL R9 1 1
  FASTCALL2 TABLE_INSERT R4 R9 [+5]
  MOVE R11 R4
  MOVE R12 R9
  GETIMPORT R10 K5 [table.insert]
  CALL R10 2 0
  FORNLOOP R5
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["new"]
  DUPCLOSURE R6 K7 [PROTO_1]
  CALL R5 1 1
  NAMECALL R6 R5 K8 ["await"]
  CALL R6 1 0
  DUPTABLE R6 K11 [{"responseBody", "responseCode"}]
  DUPTABLE R7 K14 [{"creatorStreamNotifications", "nextCursor"}]
  SETTABLEKS R4 R7 K12 ["creatorStreamNotifications"]
  ADDK R9 R3 K15 [12]
  FASTCALL1 TOSTRING R9 [+2]
  GETIMPORT R8 K17 [tostring]
  CALL R8 1 1
  SETTABLEKS R8 R7 K13 ["nextCursor"]
  SETTABLEKS R7 R6 K9 ["responseBody"]
  LOADN R7 200
  SETTABLEKS R7 R6 K10 ["responseCode"]
  RETURN R6 1

PROTO_3:
  DUPTABLE R1 K2 [{"responseBody", "responseCode"}]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["responseBody"]
  LOADN R2 200
  SETTABLEKS R2 R1 K1 ["responseCode"]
  RETURN R1 1

PROTO_4:
  DUPTABLE R0 K2 [{"responseBody", "responseCode"}]
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["responseBody"]
  LOADN R1 200
  SETTABLEKS R1 R0 K1 ["responseCode"]
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["Promise"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Clients"]
  GETTABLEKS R4 R5 K11 ["MockedNotifications"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R2
  DUPCLOSURE R5 K13 [PROTO_3]
  DUPCLOSURE R6 K14 [PROTO_4]
  DUPTABLE R7 K18 [{"getNotifications", "markNotificationRead", "markAllNotificationsRead"}]
  SETTABLEKS R4 R7 K15 ["getNotifications"]
  SETTABLEKS R5 R7 K16 ["markNotificationRead"]
  SETTABLEKS R6 R7 K17 ["markAllNotificationsRead"]
  RETURN R7 1
