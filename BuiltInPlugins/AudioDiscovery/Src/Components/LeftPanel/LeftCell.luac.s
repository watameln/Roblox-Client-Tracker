PROTO_0:
  GETTABLEKS R3 R0 K0 ["Instance"]
  GETTABLEKS R2 R3 K1 ["ClassName"]
  JUMPIFNOTEQKS R2 K2 ["Sound"] [+4]
  GETTABLEKS R1 R0 K0 ["Instance"]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R4 R1 K1 ["CellProps"]
  GETTABLEKS R3 R4 K2 ["Locations"]
  GETTABLEKS R5 R1 K3 ["Row"]
  GETTABLEKS R4 R5 K4 ["Id"]
  GETTABLE R2 R3 R4
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  GETTABLEKS R3 R1 K5 ["ColumnIndex"]
  LOADN R4 1
  JUMPIFNOTLT R4 R3 [+69]
  GETTABLEKS R3 R1 K6 ["Value"]
  GETTABLEKS R5 R1 K6 ["Value"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K8 [typeof]
  CALL R4 1 1
  JUMPIFNOTEQKS R4 K9 ["number"] [+25]
  FASTCALL1 TOSTRING R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K11 [tostring]
  CALL R4 1 1
  MOVE R3 R4
  JUMPIFNOT R2 [+5]
  GETUPVAL R4 0
  MOVE R5 R2
  DUPCLOSURE R6 K12 [PROTO_0]
  CALL R4 2 1
  JUMP [+1]
  LOADNIL R4
  JUMPIFNOT R4 [+7]
  GETTABLEKS R6 R4 K13 ["TimeLength"]
  FASTCALL1 TOSTRING R6 [+2]
  GETIMPORT R5 K11 [tostring]
  CALL R5 1 1
  MOVE R3 R5
  MOVE R5 R3
  LOADK R6 K14 ["s"]
  CONCAT R3 R5 R6
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K15 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K22 [{"TextColor", "TextTruncate", "Size", "TextXAlignment", "LayoutOrder", "Text"}]
  GETTABLEKS R8 R1 K23 ["Style"]
  GETTABLEKS R7 R8 K21 ["Text"]
  SETTABLEKS R7 R6 K16 ["TextColor"]
  GETIMPORT R7 K26 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R7 R6 K17 ["TextTruncate"]
  GETIMPORT R7 K29 [UDim2.fromScale]
  LOADN R8 1
  LOADN R9 1
  CALL R7 2 1
  SETTABLEKS R7 R6 K18 ["Size"]
  GETIMPORT R7 K31 [Enum.TextXAlignment.Left]
  SETTABLEKS R7 R6 K19 ["TextXAlignment"]
  GETTABLEKS R7 R1 K5 ["ColumnIndex"]
  SETTABLEKS R7 R6 K20 ["LayoutOrder"]
  SETTABLEKS R3 R6 K21 ["Text"]
  CALL R4 2 -1
  RETURN R4 -1
  GETTABLEKS R3 R1 K6 ["Value"]
  JUMPIFNOTEQKS R3 K32 [""] [+2]
  RETURN R0 0
  JUMPIFNOTEQKS R3 K33 ["error"] [+5]
  LENGTH R4 R2
  JUMPIFNOTEQKN R4 K34 [0] [+2]
  LOADK R3 K35 ["done"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K15 ["createElement"]
  GETUPVAL R5 3
  DUPTABLE R6 K37 [{"Size", "Image"}]
  GETIMPORT R7 K39 [UDim2.fromOffset]
  LOADN R8 24
  LOADN R9 24
  CALL R7 2 1
  SETTABLEKS R7 R6 K18 ["Size"]
  LOADK R7 K40 ["rbxasset://textures/AudioDiscovery/%s.png"]
  MOVE R9 R3
  NAMECALL R7 R7 K41 ["format"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K36 ["Image"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Style"]
  GETTABLEKS R6 R1 K4 ["RowIndex"]
  MODK R5 R6 K3 [2]
  JUMPIFNOTEQKN R5 K5 [1] [+4]
  GETTABLEKS R4 R3 K6 ["BackgroundOdd"]
  JUMP [+2]
  GETTABLEKS R4 R3 K7 ["BackgroundEven"]
  GETTABLEKS R5 R1 K8 ["Width"]
  JUMPIF R5 [+9]
  GETIMPORT R5 K11 [UDim.new]
  LOADN R7 1
  GETTABLEKS R9 R1 K12 ["Columns"]
  LENGTH R8 R9
  DIV R6 R7 R8
  LOADN R7 0
  CALL R5 2 1
  GETTABLEKS R7 R1 K13 ["Value"]
  JUMPIFNOT R7 [+7]
  GETTABLEKS R7 R1 K13 ["Value"]
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K15 [tostring]
  CALL R6 1 1
  JUMP [+1]
  LOADNIL R6
  GETTABLEKS R9 R1 K16 ["CellProps"]
  GETTABLEKS R8 R9 K17 ["Locations"]
  GETTABLEKS R10 R1 K18 ["Row"]
  GETTABLEKS R9 R10 K19 ["Id"]
  GETTABLE R7 R8 R9
  JUMPIF R7 [+2]
  NEWTABLE R7 0 0
  GETTABLEKS R8 R1 K20 ["ColumnIndex"]
  JUMPIFNOTEQKN R8 K5 [1] [+69]
  LENGTH R8 R7
  JUMPIFNOTEQKN R8 K21 [0] [+8]
  LOADK R10 K22 ["Reason"]
  LOADK R11 K23 ["Done"]
  NAMECALL R8 R2 K24 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  JUMP [+75]
  GETTABLEKS R8 R1 K13 ["Value"]
  JUMPIFNOTEQKS R8 K25 ["ok"] [+48]
  GETTABLEKS R9 R1 K18 ["Row"]
  GETTABLEKS R8 R9 K26 ["Creator"]
  JUMPIFNOTEQKS R8 K27 ["Roblox"] [+8]
  LOADK R10 K22 ["Reason"]
  LOADK R11 K27 ["Roblox"]
  NAMECALL R8 R2 K24 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  JUMP [+58]
  GETTABLEKS R9 R1 K18 ["Row"]
  GETTABLEKS R8 R9 K26 ["Creator"]
  JUMPIFNOTEQKS R8 K28 ["Monstercat"] [+8]
  LOADK R10 K22 ["Reason"]
  LOADK R11 K28 ["Monstercat"]
  NAMECALL R8 R2 K24 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  JUMP [+45]
  GETTABLEKS R9 R1 K18 ["Row"]
  GETTABLEKS R8 R9 K29 ["Time"]
  GETUPVAL R9 0
  JUMPIFNOTLT R8 R9 [+8]
  LOADK R10 K22 ["Reason"]
  LOADK R11 K30 ["Effect"]
  NAMECALL R8 R2 K24 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  JUMP [+31]
  LOADK R10 K22 ["Reason"]
  LOADK R11 K31 ["OK"]
  NAMECALL R8 R2 K24 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  JUMP [+24]
  LOADK R10 K22 ["Reason"]
  LOADK R11 K32 ["Error"]
  NAMECALL R8 R2 K24 ["getText"]
  CALL R8 3 1
  MOVE R6 R8
  JUMP [+17]
  GETTABLEKS R8 R1 K20 ["ColumnIndex"]
  JUMPIFNOTEQKN R8 K33 [5] [+14]
  LOADK R8 K34 ["%s %s"]
  GETTABLEKS R11 R1 K18 ["Row"]
  GETTABLEKS R10 R11 K35 ["CreatorType"]
  GETTABLEKS R12 R1 K18 ["Row"]
  GETTABLEKS R11 R12 K36 ["CreatorId"]
  NAMECALL R8 R8 K37 ["format"]
  CALL R8 3 1
  MOVE R6 R8
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K38 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K45 [{"LayoutOrder", "Padding", "Style", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size"}]
  GETTABLEKS R11 R1 K20 ["ColumnIndex"]
  SETTABLEKS R11 R10 K39 ["LayoutOrder"]
  DUPTABLE R11 K50 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R12 1
  SETTABLEKS R12 R11 K46 ["Top"]
  LOADN R12 1
  SETTABLEKS R12 R11 K47 ["Bottom"]
  LOADN R12 5
  SETTABLEKS R12 R11 K48 ["Left"]
  LOADN R12 5
  SETTABLEKS R12 R11 K49 ["Right"]
  SETTABLEKS R11 R10 K40 ["Padding"]
  LOADK R11 K51 ["Box"]
  SETTABLEKS R11 R10 K2 ["Style"]
  SETTABLEKS R4 R10 K41 ["BackgroundColor3"]
  LOADN R11 1
  SETTABLEKS R11 R10 K42 ["BorderSizePixel"]
  GETTABLEKS R11 R3 K52 ["Border"]
  SETTABLEKS R11 R10 K43 ["BorderColor3"]
  GETIMPORT R11 K54 [UDim2.new]
  GETTABLEKS R12 R5 K55 ["Scale"]
  GETTABLEKS R13 R5 K56 ["Offset"]
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K44 ["Size"]
  DUPTABLE R11 K59 [{"Child", "Tooltip"}]
  NAMECALL R12 R0 K60 ["getContent"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K57 ["Child"]
  MOVE R12 R6
  JUMPIFNOT R12 [+18]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K38 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K64 [{"MaxWidth", "Text", "TextXAlignment"}]
  GETTABLEKS R16 R3 K58 ["Tooltip"]
  GETTABLEKS R15 R16 K61 ["MaxWidth"]
  SETTABLEKS R15 R14 K61 ["MaxWidth"]
  SETTABLEKS R6 R14 K62 ["Text"]
  GETIMPORT R15 K66 [Enum.TextXAlignment.Left]
  SETTABLEKS R15 R14 K63 ["TextXAlignment"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K58 ["Tooltip"]
  CALL R8 3 -1
  RETURN R8 -1

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
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["Dash"]
  GETTABLEKS R4 R3 K9 ["mapOne"]
  GETTABLEKS R5 R2 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["Pane"]
  GETTABLEKS R7 R5 K12 ["Tooltip"]
  GETTABLEKS R8 R2 K13 ["ContextServices"]
  GETTABLEKS R9 R8 K14 ["withContext"]
  GETTABLEKS R10 R8 K15 ["Localization"]
  GETTABLEKS R11 R5 K16 ["Image"]
  GETTABLEKS R12 R5 K17 ["TextLabel"]
  GETIMPORT R13 K19 [game]
  LOADK R15 K20 ["SoundEffectMaxDuration"]
  NAMECALL R13 R13 K21 ["GetFastInt"]
  CALL R13 2 1
  GETTABLEKS R14 R1 K22 ["PureComponent"]
  LOADK R16 K23 ["LeftCell"]
  NAMECALL R14 R14 K24 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K25 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R11
  SETTABLEKS R15 R14 K26 ["getContent"]
  DUPCLOSURE R15 K27 [PROTO_2]
  CAPTURE VAL R13
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R15 R14 K28 ["render"]
  MOVE R15 R9
  DUPTABLE R16 K29 [{"Localization"}]
  SETTABLEKS R10 R16 K15 ["Localization"]
  CALL R15 1 1
  MOVE R16 R14
  CALL R15 1 -1
  RETURN R15 -1
