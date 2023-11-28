PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  LOADK R2 K1 ["R15Migrator"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["connection"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["connection"]
  LOADK R2 K1 ["Open"]
  NAMECALL R0 R0 K2 ["Fire"]
  CALL R0 2 0
  GETUPVAL R0 1
  CALL R0 0 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["OnClose"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["new"]
  CALL R4 0 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["provide"]
  NEWTABLE R6 0 3
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["new"]
  GETIMPORT R8 K6 [plugin]
  CALL R7 1 1
  GETUPVAL R8 3
  CALL R8 0 1
  MOVE R9 R3
  SETLIST R6 R7 3 [1]
  NEWTABLE R7 0 1
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 5
  DUPTABLE R10 K9 [{"OnClose", "OnOpen"}]
  SETTABLEKS R2 R10 K1 ["OnClose"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  SETTABLEKS R11 R10 K8 ["OnOpen"]
  CALL R8 2 -1
  SETLIST R7 R8 -1 [1]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Resources"]
  GETTABLEKS R4 R5 K10 ["MakeTheme"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K11 ["UI"]
  GETTABLEKS R5 R4 K12 ["Pane"]
  GETTABLEKS R6 R4 K13 ["Image"]
  GETTABLEKS R7 R4 K14 ["TextLabel"]
  GETTABLEKS R9 R2 K15 ["Util"]
  GETTABLEKS R8 R9 K16 ["LayoutOrderIterator"]
  GETTABLEKS R10 R2 K15 ["Util"]
  GETTABLEKS R9 R10 K17 ["CrossPluginCommunication"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R14 R0 K8 ["Src"]
  GETTABLEKS R13 R14 K18 ["Components"]
  GETTABLEKS R12 R13 K19 ["PublishBlocked"]
  GETTABLEKS R11 R12 K20 ["PublishBlockedDialog"]
  CALL R10 1 1
  GETTABLEKS R11 R1 K21 ["PureComponent"]
  LOADK R13 K22 ["PublishBlockedPlugin"]
  NAMECALL R11 R11 K23 ["extend"]
  CALL R11 2 1
  GETTABLEKS R12 R2 K24 ["ContextServices"]
  GETTABLEKS R13 R12 K25 ["Plugin"]
  DUPCLOSURE R14 K26 [PROTO_0]
  CAPTURE VAL R9
  SETTABLEKS R14 R11 K27 ["init"]
  DUPCLOSURE R14 K28 [PROTO_2]
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R10
  SETTABLEKS R14 R11 K29 ["render"]
  RETURN R11 1
