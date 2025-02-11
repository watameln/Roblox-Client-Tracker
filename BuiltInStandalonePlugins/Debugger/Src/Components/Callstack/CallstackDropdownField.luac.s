PROTO_0:
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  JUMPIFNOTEQ R6 R1 [+3]
  LOADB R7 1
  RETURN R7 1
  FORGLOOP R2 2 [-5]
  LOADB R2 0
  RETURN R2 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["onColumnFilterChange"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["Analytics"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["CallstackColumnsEdited"]
  GETUPVAL R4 2
  MOVE R5 R0
  CALL R4 1 -1
  NAMECALL R1 R1 K4 ["report"]
  CALL R1 -1 0
  RETURN R0 0

PROTO_2:
  NEWTABLE R1 0 5
  LOADK R2 K0 ["AllColumns"]
  SETTABLEN R2 R1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["Frame"]
  SETTABLEN R2 R1 2
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Source"]
  SETTABLEN R2 R1 3
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["Function"]
  SETTABLEN R2 R1 4
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["Line"]
  SETTABLEN R2 R1 5
  SETTABLEKS R1 R0 K5 ["keyColumns"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K6 ["clickCallback"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K12 [{"KeyTexts", "ClickCallback", "KeyStates", "Localization", "Style", "Widget", "DropdownWidth", "HamburgerMenu", "ShouldShowDropdownIcon"}]
  GETTABLEKS R7 R0 K13 ["keyColumns"]
  SETTABLEKS R7 R6 K4 ["KeyTexts"]
  GETTABLEKS R7 R0 K14 ["clickCallback"]
  SETTABLEKS R7 R6 K5 ["ClickCallback"]
  GETTABLEKS R7 R1 K15 ["ColumnStates"]
  SETTABLEKS R7 R6 K6 ["KeyStates"]
  SETTABLEKS R3 R6 K2 ["Localization"]
  SETTABLEKS R2 R6 K7 ["Style"]
  LOADK R7 K16 ["Callstack"]
  SETTABLEKS R7 R6 K8 ["Widget"]
  LOADN R7 200
  SETTABLEKS R7 R6 K9 ["DropdownWidth"]
  LOADB R7 1
  SETTABLEKS R7 R6 K10 ["HamburgerMenu"]
  LOADB R7 0
  SETTABLEKS R7 R6 K11 ["ShouldShowDropdownIcon"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_4:
  GETTABLEKS R3 R0 K0 ["Callstack"]
  GETTABLEKS R2 R3 K1 ["listOfEnabledColumns"]
  NEWTABLE R3 0 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["Frame"]
  GETIMPORT R6 K4 [pairs]
  MOVE R7 R2
  CALL R6 1 3
  FORGPREP_NEXT R6
  JUMPIFNOTEQ R10 R5 [+3]
  LOADB R4 1
  JUMP [+3]
  FORGLOOP R6 2 [-5]
  LOADB R4 0
  SETTABLEN R4 R3 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["Source"]
  GETIMPORT R6 K4 [pairs]
  MOVE R7 R2
  CALL R6 1 3
  FORGPREP_NEXT R6
  JUMPIFNOTEQ R10 R5 [+3]
  LOADB R4 1
  JUMP [+3]
  FORGLOOP R6 2 [-5]
  LOADB R4 0
  SETTABLEN R4 R3 3
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["Function"]
  GETIMPORT R6 K4 [pairs]
  MOVE R7 R2
  CALL R6 1 3
  FORGPREP_NEXT R6
  JUMPIFNOTEQ R10 R5 [+3]
  LOADB R4 1
  JUMP [+3]
  FORGLOOP R6 2 [-5]
  LOADB R4 0
  SETTABLEN R4 R3 4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["Line"]
  GETIMPORT R6 K4 [pairs]
  MOVE R7 R2
  CALL R6 1 3
  FORGPREP_NEXT R6
  JUMPIFNOTEQ R10 R5 [+3]
  LOADB R4 1
  JUMP [+3]
  FORGLOOP R6 2 [-5]
  LOADB R4 0
  SETTABLEN R4 R3 5
  DUPTABLE R4 K9 [{"ColumnStates"}]
  SETTABLEKS R3 R4 K8 ["ColumnStates"]
  RETURN R4 1

PROTO_5:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_6:
  DUPTABLE R1 K1 [{"onColumnFilterChange"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["onColumnFilterChange"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETTABLEKS R6 R4 K11 ["Localization"]
  GETTABLEKS R7 R4 K12 ["Analytics"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K13 ["Src"]
  GETTABLEKS R10 R11 K14 ["Resources"]
  GETTABLEKS R9 R10 K15 ["AnalyticsEventNames"]
  CALL R8 1 1
  GETTABLEKS R10 R3 K16 ["Style"]
  GETTABLEKS R9 R10 K17 ["Stylizer"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R14 R0 K13 ["Src"]
  GETTABLEKS R13 R14 K18 ["Components"]
  GETTABLEKS R12 R13 K19 ["Common"]
  GETTABLEKS R11 R12 K20 ["DropdownField"]
  CALL R10 1 1
  GETTABLEKS R12 R0 K13 ["Src"]
  GETTABLEKS R11 R12 K21 ["Actions"]
  GETIMPORT R12 K4 [require]
  GETTABLEKS R14 R11 K22 ["Callstack"]
  GETTABLEKS R13 R14 K23 ["ColumnFilterChange"]
  CALL R12 1 1
  GETTABLEKS R14 R0 K13 ["Src"]
  GETTABLEKS R13 R14 K24 ["Models"]
  GETIMPORT R14 K4 [require]
  GETTABLEKS R16 R13 K22 ["Callstack"]
  GETTABLEKS R15 R16 K25 ["ColumnEnum"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K13 ["Src"]
  GETTABLEKS R17 R18 K26 ["Util"]
  GETTABLEKS R16 R17 K27 ["flatListToString"]
  CALL R15 1 1
  GETTABLEKS R16 R1 K28 ["PureComponent"]
  LOADK R18 K29 ["CallstackDropdownField"]
  NAMECALL R16 R16 K30 ["extend"]
  CALL R16 2 1
  DUPCLOSURE R17 K31 [PROTO_0]
  DUPCLOSURE R18 K32 [PROTO_2]
  CAPTURE VAL R14
  CAPTURE VAL R8
  CAPTURE VAL R15
  SETTABLEKS R18 R16 K33 ["init"]
  DUPCLOSURE R18 K34 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R10
  SETTABLEKS R18 R16 K35 ["render"]
  MOVE R18 R5
  DUPTABLE R19 K36 [{"Analytics", "Localization", "Stylizer"}]
  SETTABLEKS R7 R19 K12 ["Analytics"]
  SETTABLEKS R6 R19 K11 ["Localization"]
  SETTABLEKS R9 R19 K17 ["Stylizer"]
  CALL R18 1 1
  MOVE R19 R16
  CALL R18 1 1
  MOVE R16 R18
  GETTABLEKS R18 R2 K37 ["connect"]
  DUPCLOSURE R19 K38 [PROTO_4]
  CAPTURE VAL R14
  DUPCLOSURE R20 K39 [PROTO_6]
  CAPTURE VAL R12
  CALL R18 2 1
  MOVE R19 R16
  CALL R18 1 1
  MOVE R16 R18
  RETURN R16 1
