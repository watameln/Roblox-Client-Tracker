PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Title"]
  GETTABLEKS R5 R1 K4 ["LayoutOrder"]
  ORK R4 R5 K3 [1]
  GETTABLEKS R5 R1 K5 ["Boxes"]
  GETTABLEKS R7 R1 K6 ["Enabled"]
  JUMPIFNOTEQKNIL R7 [+3]
  LOADB R6 1
  JUMP [+2]
  GETTABLEKS R6 R1 K6 ["Enabled"]
  GETTABLEKS R7 R1 K7 ["EntryClicked"]
  GETTABLEKS R8 R1 K8 ["ErrorMessage"]
  FASTCALL1 TYPE R5 [+3]
  MOVE R12 R5
  GETIMPORT R11 K10 [type]
  CALL R11 1 1
  JUMPIFEQKS R11 K11 ["table"] [+2]
  LOADB R10 0 +1
  LOADB R10 1
  FASTCALL2K ASSERT R10 K12 [+4]
  LOADK R11 K12 ["CheckBoxSet.Boxes must be a table"]
  GETIMPORT R9 K14 [assert]
  CALL R9 2 0
  DUPTABLE R9 K16 [{"Layout"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K17 ["createElement"]
  LOADK R11 K18 ["UIListLayout"]
  DUPTABLE R12 K21 [{"Padding", "SortOrder"}]
  GETIMPORT R13 K24 [UDim.new]
  LOADN R14 0
  LOADN R15 8
  CALL R13 2 1
  SETTABLEKS R13 R12 K19 ["Padding"]
  GETIMPORT R13 K26 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R13 R12 K20 ["SortOrder"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K15 ["Layout"]
  LOADNIL R10
  MOVE R11 R9
  GETTABLEKS R12 R1 K27 ["UseGridLayout"]
  JUMPIFNOT R12 [+46]
  NEWTABLE R12 0 1
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K17 ["createElement"]
  LOADK R14 K28 ["UIGridLayout"]
  NEWTABLE R15 4 0
  GETIMPORT R16 K30 [UDim2.new]
  LOADN R17 0
  GETTABLEKS R19 R2 K31 ["SCREEN_CHOOSE_GAME"]
  GETTABLEKS R18 R19 K32 ["ICON_SIZE"]
  LOADN R19 0
  LOADN R20 25
  CALL R16 4 1
  SETTABLEKS R16 R15 K33 ["CellSize"]
  GETIMPORT R16 K30 [UDim2.new]
  LOADN R17 0
  GETTABLEKS R19 R2 K31 ["SCREEN_CHOOSE_GAME"]
  GETTABLEKS R18 R19 K34 ["CELL_PADDING_X"]
  LOADN R19 0
  LOADN R20 2
  CALL R16 4 1
  SETTABLEKS R16 R15 K35 ["CellPadding"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K36 ["Ref"]
  GETTABLEKS R17 R0 K37 ["layoutRef"]
  SETTABLE R17 R15 R16
  LOADN R16 2
  SETTABLEKS R16 R15 K38 ["FillDirectionMaxCells"]
  CALL R13 2 -1
  SETLIST R12 R13 -1 [1]
  MOVE R10 R12
  MOVE R11 R10
  GETIMPORT R12 K40 [ipairs]
  MOVE R13 R5
  CALL R12 1 3
  FORGPREP_INEXT R12
  MOVE R18 R11
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K17 ["createElement"]
  GETUPVAL R20 1
  DUPTABLE R21 K46 [{"Checked", "Disabled", "Key", "LayoutOrder", "OnClick", "Text"}]
  LOADB R22 0
  GETTABLEKS R23 R16 K47 ["Selected"]
  JUMPIFEQKNIL R23 [+3]
  GETTABLEKS R22 R16 K47 ["Selected"]
  SETTABLEKS R22 R21 K41 ["Checked"]
  NOT R22 R6
  SETTABLEKS R22 R21 K42 ["Disabled"]
  GETTABLEKS R22 R16 K48 ["Id"]
  SETTABLEKS R22 R21 K43 ["Key"]
  SETTABLEKS R15 R21 K4 ["LayoutOrder"]
  NEWCLOSURE R22 P0
  CAPTURE VAL R7
  CAPTURE VAL R16
  SETTABLEKS R22 R21 K44 ["OnClick"]
  GETTABLEKS R22 R16 K2 ["Title"]
  SETTABLEKS R22 R21 K45 ["Text"]
  DUPTABLE R22 K50 [{"Link"}]
  GETTABLEKS R23 R16 K51 ["LinkTextFrame"]
  SETTABLEKS R23 R22 K49 ["Link"]
  CALL R19 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R17 K53 [table.insert]
  CALL R17 -1 0
  FORGLOOP R12 2 [inext] [-44]
  GETTABLEKS R12 R1 K27 ["UseGridLayout"]
  JUMPIFNOT R12 [+14]
  GETIMPORT R12 K40 [ipairs]
  MOVE R13 R10
  CALL R12 1 3
  FORGPREP_INEXT R12
  FASTCALL2 TABLE_INSERT R9 R16 [+5]
  MOVE R18 R9
  MOVE R19 R16
  GETIMPORT R17 K53 [table.insert]
  CALL R17 2 0
  FORGLOOP R12 2 [inext] [-8]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K54 ["Children"]
  GETTABLE R12 R1 R13
  JUMPIFNOT R12 [+12]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K55 ["Dictionary"]
  GETTABLEKS R12 R13 K56 ["join"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K54 ["Children"]
  GETTABLE R13 R1 R14
  MOVE R14 R9
  CALL R12 2 1
  MOVE R9 R12
  JUMPIFNOT R8 [+49]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K17 ["createElement"]
  LOADK R13 K57 ["TextLabel"]
  DUPTABLE R14 K65 [{"LayoutOrder", "Size", "BackgroundTransparency", "Text", "TextSize", "TextXAlignment", "TextYAlignment", "Font", "TextColor3"}]
  LENGTH R16 R5
  ADDK R15 R16 K3 [1]
  SETTABLEKS R15 R14 K4 ["LayoutOrder"]
  GETIMPORT R15 K30 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 20
  CALL R15 4 1
  SETTABLEKS R15 R14 K58 ["Size"]
  LOADN R15 1
  SETTABLEKS R15 R14 K59 ["BackgroundTransparency"]
  SETTABLEKS R8 R14 K45 ["Text"]
  LOADN R15 16
  SETTABLEKS R15 R14 K60 ["TextSize"]
  GETIMPORT R15 K67 [Enum.TextXAlignment.Left]
  SETTABLEKS R15 R14 K61 ["TextXAlignment"]
  GETIMPORT R15 K69 [Enum.TextYAlignment.Center]
  SETTABLEKS R15 R14 K62 ["TextYAlignment"]
  GETTABLEKS R16 R2 K70 ["checkboxset"]
  GETTABLEKS R15 R16 K71 ["font"]
  SETTABLEKS R15 R14 K63 ["Font"]
  GETTABLEKS R16 R2 K70 ["checkboxset"]
  GETTABLEKS R15 R16 K72 ["error"]
  SETTABLEKS R15 R14 K64 ["TextColor3"]
  CALL R12 2 1
  SETTABLEKS R12 R9 K73 ["Error"]
  LENGTH R13 R5
  MULK R12 R13 K74 [28]
  GETTABLEKS R13 R1 K75 ["MaxHeight"]
  JUMPIFNOT R13 [+3]
  GETTABLEKS R13 R1 K75 ["MaxHeight"]
  ADD R12 R12 R13
  GETTABLEKS R13 R1 K76 ["AbsoluteMaxHeight"]
  JUMPIFNOT R13 [+2]
  GETTABLEKS R12 R1 K76 ["AbsoluteMaxHeight"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K17 ["createElement"]
  GETUPVAL R14 3
  DUPTABLE R15 K77 [{"LayoutOrder", "Title"}]
  SETTABLEKS R4 R15 K4 ["LayoutOrder"]
  SETTABLEKS R3 R15 K2 ["Title"]
  MOVE R16 R9
  CALL R13 3 -1
  RETURN R13 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETTABLEKS R6 R3 K11 ["UI"]
  GETTABLEKS R7 R6 K12 ["TitledFrame"]
  GETTABLEKS R8 R6 K13 ["Checkbox"]
  GETTABLEKS R9 R1 K14 ["PureComponent"]
  LOADK R11 K15 ["CheckBoxSet"]
  NAMECALL R9 R9 K16 ["extend"]
  CALL R9 2 1
  DUPCLOSURE R10 K17 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R7
  SETTABLEKS R10 R9 K18 ["render"]
  MOVE R10 R5
  DUPTABLE R11 K20 [{"Stylizer"}]
  GETTABLEKS R12 R4 K19 ["Stylizer"]
  SETTABLEKS R12 R11 K19 ["Stylizer"]
  CALL R10 1 1
  MOVE R11 R9
  CALL R10 1 1
  MOVE R9 R10
  RETURN R9 1
