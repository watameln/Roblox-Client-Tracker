PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  LOADK R4 K0 [""]
  NAMECALL R2 R2 K1 ["GetDocumentationUrl"]
  CALL R2 2 -1
  NAMECALL R0 R0 K2 ["OpenBrowserWindow"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Name"]
  GETTABLEKS R3 R1 K2 ["ColumnIndex"]
  GETTABLEKS R4 R1 K3 ["Width"]
  GETTABLEKS R5 R1 K4 ["Style"]
  GETTABLEKS R6 R1 K5 ["Localization"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["createElement"]
  GETUPVAL R8 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K7 ["assign"]
  DUPTABLE R10 K12 [{"BorderColor3", "BorderSizePixel", "Padding", "Style", "Size"}]
  GETTABLEKS R11 R5 K13 ["Border"]
  SETTABLEKS R11 R10 K8 ["BorderColor3"]
  LOADN R11 1
  SETTABLEKS R11 R10 K9 ["BorderSizePixel"]
  GETTABLEKS R11 R5 K14 ["HeaderCellPadding"]
  SETTABLEKS R11 R10 K10 ["Padding"]
  LOADK R11 K15 ["SubtleBox"]
  SETTABLEKS R11 R10 K4 ["Style"]
  GETIMPORT R11 K18 [UDim2.new]
  GETTABLEKS R12 R4 K19 ["Scale"]
  GETTABLEKS R13 R4 K20 ["Offset"]
  LOADN R14 1
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K11 ["Size"]
  GETTABLEKS R11 R1 K21 ["WrapperProps"]
  CALL R9 2 1
  DUPTABLE R10 K23 [{"Text"}]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K24 ["STATUS_COLUMN_INDEX"]
  JUMPIFEQ R3 R12 [+73]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K33 [{"Size", "Text", "AutomaticSize", "BackgroundTransparency", "HorizontalAlignment", "VerticalAlignment", "TextXAlignment", "TextYAlignment", "TextProps", "LinkMap"}]
  GETIMPORT R14 K35 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K11 ["Size"]
  SETTABLEKS R2 R13 K22 ["Text"]
  GETIMPORT R14 K38 [Enum.AutomaticSize.XY]
  SETTABLEKS R14 R13 K25 ["AutomaticSize"]
  LOADN R14 1
  SETTABLEKS R14 R13 K26 ["BackgroundTransparency"]
  GETIMPORT R14 K40 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R14 R13 K27 ["HorizontalAlignment"]
  GETIMPORT R14 K42 [Enum.VerticalAlignment.Center]
  SETTABLEKS R14 R13 K28 ["VerticalAlignment"]
  GETIMPORT R14 K43 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K29 ["TextXAlignment"]
  GETIMPORT R14 K44 [Enum.TextYAlignment.Center]
  SETTABLEKS R14 R13 K30 ["TextYAlignment"]
  DUPTABLE R14 K48 [{"TextSize", "Font", "TextWrapped"}]
  GETTABLEKS R15 R5 K45 ["TextSize"]
  SETTABLEKS R15 R14 K45 ["TextSize"]
  GETTABLEKS R15 R5 K46 ["Font"]
  SETTABLEKS R15 R14 K46 ["Font"]
  LOADB R15 0
  SETTABLEKS R15 R14 K47 ["TextWrapped"]
  SETTABLEKS R14 R13 K31 ["TextProps"]
  NEWTABLE R14 1 0
  DUPTABLE R15 K51 [{"LinkText", "LinkCallback"}]
  LOADK R18 K52 ["Summary"]
  GETUPVAL R19 5
  NAMECALL R16 R6 K53 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K49 ["LinkText"]
  DUPCLOSURE R16 K54 [PROTO_0]
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  SETTABLEKS R16 R15 K50 ["LinkCallback"]
  SETTABLEKS R15 R14 K55 ["[link1]"]
  SETTABLEKS R14 R13 K32 ["LinkMap"]
  CALL R11 2 1
  JUMP [+23]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["createElement"]
  GETUPVAL R12 8
  DUPTABLE R13 K57 [{"Text", "Size", "TextXAlignment", "TextTruncate"}]
  SETTABLEKS R2 R13 K22 ["Text"]
  GETIMPORT R14 K35 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K11 ["Size"]
  GETIMPORT R14 K43 [Enum.TextXAlignment.Left]
  SETTABLEKS R14 R13 K29 ["TextXAlignment"]
  GETIMPORT R14 K59 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R14 R13 K56 ["TextTruncate"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K22 ["Text"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["PureComponent"]
  MOVE R4 R0
  LOADK R5 K1 ["HeaderCellComponent"]
  CONCAT R3 R4 R5
  NAMECALL R1 R1 K2 ["extend"]
  CALL R1 2 1
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  SETTABLEKS R2 R1 K3 ["render"]
  GETUPVAL R3 8
  GETTABLEKS R2 R3 K4 ["withContext"]
  DUPTABLE R3 K6 [{"Localization"}]
  GETUPVAL R5 8
  GETTABLEKS R4 R5 K5 ["Localization"]
  SETTABLEKS R4 R3 K5 ["Localization"]
  CALL R2 1 1
  MOVE R3 R1
  CALL R2 1 1
  MOVE R1 R2
  RETURN R1 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["copy"]
  GETTABLEKS R2 R0 K1 ["expanded"]
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R5 1
  GETTABLE R4 R1 R5
  NOT R3 R4
  SETTABLE R3 R1 R2
  DUPTABLE R2 K2 [{"expanded"}]
  SETTABLEKS R1 R2 K1 ["expanded"]
  RETURN R2 1

PROTO_4:
  GETUPVAL R0 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R0 R0 K0 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  RETURN R1 1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["setSelectedTab"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["setSortSelection"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_8:
  DUPTABLE R1 K1 [{"expanded"}]
  NEWTABLE R2 4 0
  LOADB R3 1
  SETTABLEKS R3 R2 K2 ["Convert"]
  LOADB R3 1
  SETTABLEKS R3 R2 K3 ["Test"]
  LOADB R3 1
  SETTABLEKS R3 R2 K4 ["Publish"]
  SETTABLEKS R2 R1 K0 ["expanded"]
  SETTABLEKS R1 R0 K5 ["state"]
  NEWTABLE R1 4 0
  GETUPVAL R2 0
  DUPTABLE R3 K9 [{"keys", "values", "index"}]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K6 ["keys"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K7 ["values"]
  LOADN R4 1
  SETTABLEKS R4 R3 K8 ["index"]
  SETTABLE R3 R1 R2
  GETUPVAL R2 1
  DUPTABLE R3 K9 [{"keys", "values", "index"}]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K6 ["keys"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K7 ["values"]
  LOADN R4 2
  SETTABLEKS R4 R3 K8 ["index"]
  SETTABLE R3 R1 R2
  GETUPVAL R2 2
  DUPTABLE R3 K9 [{"keys", "values", "index"}]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K6 ["keys"]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K7 ["values"]
  LOADN R4 3
  SETTABLEKS R4 R3 K8 ["index"]
  SETTABLE R3 R1 R2
  SETTABLEKS R1 R0 K10 ["items"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K11 ["buttons"]
  GETTABLEKS R4 R0 K12 ["props"]
  GETTABLEKS R3 R4 K13 ["characters"]
  GETTABLEKS R5 R0 K12 ["props"]
  GETTABLEKS R4 R5 K14 ["charactersConverted"]
  NAMECALL R1 R0 K15 ["updateCharacters"]
  CALL R1 3 0
  GETTABLEKS R4 R0 K12 ["props"]
  GETTABLEKS R3 R4 K16 ["animations"]
  NAMECALL R1 R0 K17 ["updateAnimations"]
  CALL R1 2 0
  GETTABLEKS R4 R0 K12 ["props"]
  GETTABLEKS R3 R4 K18 ["scripts"]
  NAMECALL R1 R0 K19 ["updateScripts"]
  CALL R1 2 0
  NEWTABLE R3 4 0
  GETUPVAL R4 1
  LOADB R5 1
  SETTABLE R5 R3 R4
  GETUPVAL R4 2
  LOADB R5 1
  SETTABLE R5 R3 R4
  GETUPVAL R4 0
  LOADB R5 1
  SETTABLE R5 R3 R4
  GETTABLEKS R5 R0 K12 ["props"]
  GETTABLEKS R4 R5 K20 ["sortSelection"]
  NAMECALL R1 R0 K21 ["sortConversionEntries"]
  CALL R1 3 0
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K22 ["onExpandedChanged"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K23 ["setSelectedTab"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K24 ["setSortSelection"]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["characterMetadataLoadedVersion"]
  JUMPIFNOTEQKN R1 K2 [0] [+10]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K3 ["loadCharacterMetadata"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K4 ["Analytics"]
  CALL R1 1 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R3 R0 K0 ["text"]
  GETTABLEKS R4 R1 K0 ["text"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_11:
  GETTABLEKS R3 R0 K0 ["complete"]
  NOT R2 R3
  JUMPIFNOT R2 [+2]
  GETTABLEKS R2 R1 K0 ["complete"]
  RETURN R2 1

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["Alphabetical"]
  JUMPIFNOTEQ R1 R2 [+7]
  GETIMPORT R1 K3 [table.sort]
  MOVE R2 R0
  DUPCLOSURE R3 K4 [PROTO_10]
  CALL R1 2 0
  RETURN R0 0
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K5 ["Status"]
  JUMPIFNOTEQ R1 R2 [+6]
  GETIMPORT R1 K3 [table.sort]
  MOVE R2 R0
  DUPCLOSURE R3 K6 [PROTO_11]
  CALL R1 2 0
  RETURN R0 0

PROTO_13:
  NEWCLOSURE R3 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  MOVE R4 R1
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  MOVE R9 R3
  GETTABLEKS R12 R0 K0 ["items"]
  GETTABLE R11 R12 R7
  GETTABLEKS R10 R11 K1 ["values"]
  CALL R9 1 0
  FORGLOOP R4 1 [-8]
  RETURN R0 0

PROTO_14:
  LOADN R2 0
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  DUPTABLE R8 K2 [{"text", "complete"}]
  GETTABLEKS R9 R7 K3 ["fullName"]
  SETTABLEKS R9 R8 K0 ["text"]
  SETTABLEKS R1 R8 K1 ["complete"]
  GETUPVAL R10 0
  GETTABLE R9 R10 R6
  JUMPIF R9 [+10]
  GETUPVAL R9 0
  SETTABLE R8 R9 R6
  GETUPVAL R10 1
  FASTCALL2 TABLE_INSERT R10 R8 [+4]
  MOVE R11 R8
  GETIMPORT R9 K6 [table.insert]
  CALL R9 2 0
  JUMP [+7]
  GETUPVAL R10 0
  GETTABLE R9 R10 R6
  JUMPIFNOT R9 [+4]
  GETUPVAL R10 0
  GETTABLE R9 R10 R6
  SETTABLEKS R1 R9 K1 ["complete"]
  ADDK R2 R2 K7 [1]
  FORGLOOP R3 2 [-29]
  RETURN R2 1

PROTO_15:
  GETTABLEKS R5 R0 K0 ["items"]
  GETUPVAL R6 0
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K1 ["keys"]
  GETTABLEKS R6 R0 K0 ["items"]
  GETUPVAL R7 0
  GETTABLE R5 R6 R7
  GETTABLEKS R4 R5 K2 ["values"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R3
  CAPTURE VAL R4
  MOVE R6 R5
  MOVE R7 R1
  LOADB R8 0
  CALL R6 2 1
  MOVE R7 R5
  MOVE R8 R2
  LOADB R9 1
  CALL R7 2 1
  GETTABLEKS R9 R0 K0 ["items"]
  GETUPVAL R10 0
  GETTABLE R8 R9 R10
  ADD R9 R6 R7
  SETTABLEKS R9 R8 K3 ["total"]
  GETTABLEKS R9 R0 K0 ["items"]
  GETUPVAL R10 0
  GETTABLE R8 R9 R10
  SETTABLEKS R7 R8 K4 ["complete"]
  RETURN R0 0

PROTO_16:
  GETTABLEKS R4 R0 K0 ["items"]
  GETUPVAL R5 0
  GETTABLE R3 R4 R5
  GETTABLEKS R2 R3 K1 ["keys"]
  GETTABLEKS R5 R0 K0 ["items"]
  GETUPVAL R6 0
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K2 ["values"]
  LOADN R4 0
  LOADN R5 0
  MOVE R6 R1
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  DUPTABLE R11 K5 [{"text", "complete"}]
  GETTABLEKS R12 R10 K6 ["name"]
  SETTABLEKS R12 R11 K3 ["text"]
  GETIMPORT R13 K8 [next]
  GETTABLEKS R14 R10 K9 ["refs"]
  CALL R13 1 1
  NOT R12 R13
  SETTABLEKS R12 R11 K4 ["complete"]
  GETTABLE R12 R2 R9
  JUMPIF R12 [+8]
  SETTABLE R11 R2 R9
  FASTCALL2 TABLE_INSERT R3 R11 [+5]
  MOVE R13 R3
  MOVE R14 R11
  GETIMPORT R12 K12 [table.insert]
  CALL R12 2 0
  ADDK R4 R4 K13 [1]
  GETIMPORT R12 K8 [next]
  GETTABLEKS R13 R10 K9 ["refs"]
  CALL R12 1 1
  JUMPIF R12 [+1]
  ADDK R5 R5 K13 [1]
  FORGLOOP R6 2 [-32]
  GETTABLEKS R7 R0 K0 ["items"]
  GETUPVAL R8 0
  GETTABLE R6 R7 R8
  SETTABLEKS R4 R6 K14 ["total"]
  GETTABLEKS R7 R0 K0 ["items"]
  GETUPVAL R8 0
  GETTABLE R6 R7 R8
  SETTABLEKS R5 R6 K4 ["complete"]
  RETURN R0 0

PROTO_17:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["ScriptConversionContext"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R4 R0 K2 ["items"]
  GETUPVAL R5 0
  GETTABLE R3 R4 R5
  GETTABLEKS R2 R3 K3 ["keys"]
  GETTABLEKS R5 R0 K2 ["items"]
  GETUPVAL R6 0
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K4 ["values"]
  LOADN R4 0
  LOADN R5 0
  MOVE R6 R1
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETTABLE R11 R2 R9
  JUMPIF R11 [+25]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K1 ["ScriptConversionContext"]
  MOVE R13 R9
  NAMECALL R11 R11 K5 ["getScriptInstanceFromGUID"]
  CALL R11 2 1
  JUMPIFNOT R11 [+4]
  NAMECALL R12 R11 K6 ["GetFullName"]
  CALL R12 1 1
  JUMPIF R12 [+1]
  LOADK R12 K7 ["Unknown"]
  DUPTABLE R13 K9 [{"text"}]
  SETTABLEKS R12 R13 K8 ["text"]
  SETTABLE R13 R2 R9
  FASTCALL2 TABLE_INSERT R3 R13 [+5]
  MOVE R15 R3
  MOVE R16 R13
  GETIMPORT R14 K12 [table.insert]
  CALL R14 2 0
  GETTABLE R11 R2 R9
  GETTABLEKS R14 R10 K13 ["_list"]
  LENGTH R13 R14
  JUMPIFEQKN R13 K14 [0] [+2]
  LOADB R12 0 +1
  LOADB R12 1
  SETTABLEKS R12 R11 K15 ["complete"]
  GETTABLE R12 R2 R9
  GETTABLEKS R11 R12 K15 ["complete"]
  JUMPIFNOT R11 [+1]
  ADDK R5 R5 K16 [1]
  ADDK R4 R4 K16 [1]
  FORGLOOP R6 2 [-44]
  GETTABLEKS R7 R0 K2 ["items"]
  GETUPVAL R8 0
  GETTABLE R6 R7 R8
  SETTABLEKS R4 R6 K17 ["total"]
  GETTABLEKS R7 R0 K2 ["items"]
  GETUPVAL R8 0
  GETTABLE R6 R7 R8
  SETTABLEKS R5 R6 K15 ["complete"]
  RETURN R0 0

PROTO_18:
  GETTABLEKS R2 R0 K0 ["props"]
  NEWTABLE R3 0 0
  GETTABLEKS R4 R2 K1 ["sortSelection"]
  GETTABLEKS R5 R1 K1 ["sortSelection"]
  JUMPIFEQ R4 R5 [+13]
  NEWTABLE R4 4 0
  GETUPVAL R5 0
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETUPVAL R5 1
  LOADB R6 1
  SETTABLE R6 R4 R5
  GETUPVAL R5 2
  LOADB R6 1
  SETTABLE R6 R4 R5
  MOVE R3 R4
  GETTABLEKS R4 R2 K2 ["animations"]
  GETTABLEKS R5 R1 K2 ["animations"]
  JUMPIFEQ R4 R5 [+9]
  GETUPVAL R4 0
  LOADB R5 1
  SETTABLE R5 R3 R4
  GETTABLEKS R6 R1 K2 ["animations"]
  NAMECALL R4 R0 K3 ["updateAnimations"]
  CALL R4 2 0
  GETTABLEKS R4 R2 K4 ["scripts"]
  GETTABLEKS R5 R1 K4 ["scripts"]
  JUMPIFEQ R4 R5 [+9]
  GETUPVAL R4 1
  LOADB R5 1
  SETTABLE R5 R3 R4
  GETTABLEKS R6 R1 K4 ["scripts"]
  NAMECALL R4 R0 K5 ["updateScripts"]
  CALL R4 2 0
  GETTABLEKS R4 R2 K6 ["characters"]
  GETTABLEKS R5 R1 K6 ["characters"]
  JUMPIFNOTEQ R4 R5 [+7]
  GETTABLEKS R4 R2 K7 ["charactersConverted"]
  GETTABLEKS R5 R1 K7 ["charactersConverted"]
  JUMPIFEQ R4 R5 [+11]
  GETUPVAL R4 2
  LOADB R5 1
  SETTABLE R5 R3 R4
  GETTABLEKS R6 R1 K6 ["characters"]
  GETTABLEKS R7 R1 K7 ["charactersConverted"]
  NAMECALL R4 R0 K8 ["updateCharacters"]
  CALL R4 3 0
  MOVE R6 R3
  GETTABLEKS R7 R1 K1 ["sortSelection"]
  NAMECALL R4 R0 K9 ["sortConversionEntries"]
  CALL R4 3 0
  RETURN R0 0

PROTO_19:
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R6 R5 K1 ["Stylizer"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K10 [{"Size", "OnClick", "BackgroundColor", "BorderColor3", "BorderSizePixel", "LayoutOrder", "Padding"}]
  GETIMPORT R10 K13 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  LOADN R14 28
  CALL R10 4 1
  SETTABLEKS R10 R9 K3 ["Size"]
  SETTABLEKS R1 R9 K4 ["OnClick"]
  GETTABLEKS R10 R6 K14 ["HeaderColor"]
  SETTABLEKS R10 R9 K5 ["BackgroundColor"]
  GETTABLEKS R10 R6 K15 ["DividerColor"]
  SETTABLEKS R10 R9 K6 ["BorderColor3"]
  LOADN R10 1
  SETTABLEKS R10 R9 K7 ["BorderSizePixel"]
  LOADN R10 1
  SETTABLEKS R10 R9 K8 ["LayoutOrder"]
  DUPTABLE R10 K18 [{"Left", "Right"}]
  LOADN R11 8
  SETTABLEKS R11 R10 K16 ["Left"]
  LOADN R11 8
  SETTABLEKS R11 R10 K17 ["Right"]
  SETTABLEKS R10 R9 K9 ["Padding"]
  DUPTABLE R10 K22 [{"Arrow", "Text", "Icon"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K27 [{"Style", "StyleModifier", "AnchorPoint", "Position"}]
  GETTABLEKS R14 R6 K19 ["Arrow"]
  SETTABLEKS R14 R13 K23 ["Style"]
  JUMPIFNOT R3 [+4]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K28 ["Selected"]
  JUMPIF R14 [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K24 ["StyleModifier"]
  GETIMPORT R14 K30 [Vector2.new]
  LOADN R15 0
  LOADK R16 K31 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K25 ["AnchorPoint"]
  GETIMPORT R14 K33 [UDim2.fromScale]
  LOADN R15 0
  LOADK R16 K31 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K26 ["Position"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K19 ["Arrow"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K35 [{"Text", "AutomaticSize", "AnchorPoint", "Position"}]
  SETTABLEKS R2 R13 K20 ["Text"]
  GETIMPORT R14 K38 [Enum.AutomaticSize.XY]
  SETTABLEKS R14 R13 K34 ["AutomaticSize"]
  GETIMPORT R14 K30 [Vector2.new]
  LOADN R15 0
  LOADK R16 K31 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K25 ["AnchorPoint"]
  GETIMPORT R14 K13 [UDim2.new]
  LOADN R15 0
  LOADN R16 24
  LOADK R17 K31 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K26 ["Position"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K20 ["Text"]
  JUMPIFNOT R4 [+39]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K2 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K41 [{"Size", "AnchorPoint", "Position", "BackgroundTransparency", "Image"}]
  GETIMPORT R14 K13 [UDim2.new]
  LOADN R15 0
  LOADN R16 16
  LOADN R17 0
  LOADN R18 16
  CALL R14 4 1
  SETTABLEKS R14 R13 K3 ["Size"]
  GETIMPORT R14 K30 [Vector2.new]
  LOADN R15 0
  LOADK R16 K31 [0.5]
  CALL R14 2 1
  SETTABLEKS R14 R13 K25 ["AnchorPoint"]
  GETIMPORT R14 K13 [UDim2.new]
  LOADN R15 1
  LOADN R16 240
  LOADK R17 K31 [0.5]
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K26 ["Position"]
  LOADN R14 1
  SETTABLEKS R14 R13 K39 ["BackgroundTransparency"]
  GETTABLEKS R14 R6 K42 ["CompleteIcon"]
  SETTABLEKS R14 R13 K40 ["Image"]
  CALL R11 2 1
  JUMP [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K21 ["Icon"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_20:
  JUMPIFNOTEQKS R0 K0 ["R6_R15"] [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["addAdapters"]
  GETUPVAL R2 1
  CALL R1 1 0
  RETURN R0 0
  JUMPIFNOTEQKS R0 K2 ["R15"] [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["removeAdapters"]
  GETUPVAL R2 1
  CALL R1 1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R0 0
  GETUPVAL R2 1
  LOADK R4 K0 [""]
  NAMECALL R2 R2 K1 ["GetDocumentationUrl"]
  CALL R2 2 -1
  NAMECALL R0 R0 K2 ["OpenBrowserWindow"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_22:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Analytics"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K12 [{"Size", "SelectedKey", "CurrentSelectedKey", "AutomaticSize", "TextXAlignment", "TextWrapped", "OnClick", "Buttons"}]
  GETIMPORT R7 K15 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K4 ["Size"]
  GETTABLEKS R8 R1 K16 ["adpated"]
  JUMPIFNOT R8 [+2]
  LOADK R7 K17 ["R6_R15"]
  JUMP [+1]
  LOADK R7 K18 ["R15"]
  SETTABLEKS R7 R6 K5 ["SelectedKey"]
  GETTABLEKS R8 R1 K19 ["adaptedWithScripts"]
  JUMPIFNOT R8 [+2]
  LOADK R7 K17 ["R6_R15"]
  JUMP [+1]
  LOADK R7 K18 ["R15"]
  SETTABLEKS R7 R6 K6 ["CurrentSelectedKey"]
  GETIMPORT R7 K22 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K7 ["AutomaticSize"]
  GETIMPORT R7 K24 [Enum.TextXAlignment.Left]
  SETTABLEKS R7 R6 K8 ["TextXAlignment"]
  LOADB R7 1
  SETTABLEKS R7 R6 K9 ["TextWrapped"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R1
  CAPTURE VAL R2
  SETTABLEKS R7 R6 K10 ["OnClick"]
  NEWTABLE R7 0 2
  DUPTABLE R8 K29 [{"Key", "Text", "Description", "LinkProps"}]
  LOADK R9 K17 ["R6_R15"]
  SETTABLEKS R9 R8 K25 ["Key"]
  LOADK R9 K30 ["R6 & R15"]
  SETTABLEKS R9 R8 K26 ["Text"]
  LOADK R11 K31 ["Summary"]
  LOADK R12 K32 ["R6R15ModeDesc"]
  NAMECALL R9 R3 K33 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K27 ["Description"]
  DUPTABLE R9 K34 [{"Text", "OnClick"}]
  LOADK R12 K35 ["AdapterPane"]
  LOADK R13 K36 ["LearnMore"]
  NAMECALL R10 R3 K33 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K26 ["Text"]
  DUPCLOSURE R10 K37 [PROTO_21]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R10 R9 K10 ["OnClick"]
  SETTABLEKS R9 R8 K28 ["LinkProps"]
  DUPTABLE R9 K38 [{"Key", "Text", "Description"}]
  LOADK R10 K18 ["R15"]
  SETTABLEKS R10 R9 K25 ["Key"]
  LOADK R10 K18 ["R15"]
  SETTABLEKS R10 R9 K26 ["Text"]
  LOADK R12 K31 ["Summary"]
  LOADK R13 K39 ["R15ModeDesc"]
  NAMECALL R10 R3 K33 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K27 ["Description"]
  SETLIST R7 R8 2 [1]
  SETTABLEKS R7 R6 K11 ["Buttons"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_23:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["setSortSelection"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_24:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K6 [{"LayoutOrder", "Size"}]
  LOADN R7 255
  SETTABLEKS R7 R6 K4 ["LayoutOrder"]
  GETIMPORT R7 K9 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  GETTABLEKS R12 R2 K10 ["SortBy"]
  GETTABLEKS R11 R12 K11 ["Height"]
  CALL R7 4 1
  SETTABLEKS R7 R6 K5 ["Size"]
  DUPTABLE R7 K13 [{"FilterContainer"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K18 [{"Size", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
  GETIMPORT R11 K9 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  GETTABLEKS R16 R2 K10 ["SortBy"]
  GETTABLEKS R15 R16 K11 ["Height"]
  CALL R11 4 1
  SETTABLEKS R11 R10 K5 ["Size"]
  GETIMPORT R11 K22 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K14 ["Layout"]
  GETIMPORT R11 K24 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R11 R10 K15 ["HorizontalAlignment"]
  GETIMPORT R11 K26 [Enum.VerticalAlignment.Center]
  SETTABLEKS R11 R10 K16 ["VerticalAlignment"]
  GETTABLEKS R12 R2 K10 ["SortBy"]
  GETTABLEKS R11 R12 K17 ["Spacing"]
  SETTABLEKS R11 R10 K17 ["Spacing"]
  DUPTABLE R11 K29 [{"FilterLabel", "Filter"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K32 [{"Text", "AutomaticSize", "LayoutOrder"}]
  LOADK R17 K33 ["Summary"]
  LOADK R18 K34 ["Sortby"]
  NAMECALL R15 R3 K35 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K30 ["Text"]
  GETIMPORT R15 K37 [Enum.AutomaticSize.XY]
  SETTABLEKS R15 R14 K31 ["AutomaticSize"]
  LOADN R15 1
  SETTABLEKS R15 R14 K4 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K27 ["FilterLabel"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K42 [{"PlaceholderText", "SelectedIndex", "Items", "Size", "LayoutOrder", "OnItemActivated"}]
  LOADK R17 K33 ["Summary"]
  LOADK R18 K34 ["Sortby"]
  NAMECALL R15 R3 K35 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K38 ["PlaceholderText"]
  GETTABLEKS R15 R1 K43 ["sortSelection"]
  SETTABLEKS R15 R14 K39 ["SelectedIndex"]
  GETUPVAL R16 4
  GETTABLEKS R15 R16 K44 ["getOrderedSortData"]
  MOVE R16 R3
  CALL R15 1 1
  SETTABLEKS R15 R14 K40 ["Items"]
  GETIMPORT R15 K46 [UDim2.fromOffset]
  GETTABLEKS R17 R2 K10 ["SortBy"]
  GETTABLEKS R16 R17 K47 ["Width"]
  GETTABLEKS R18 R2 K10 ["SortBy"]
  GETTABLEKS R17 R18 K11 ["Height"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K5 ["Size"]
  LOADN R15 2
  SETTABLEKS R15 R14 K4 ["LayoutOrder"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R0
  SETTABLEKS R15 R14 K41 ["OnItemActivated"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K28 ["Filter"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K12 ["FilterContainer"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_25:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setSelectedTab"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["getIndividualTabData"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["tabTarget"]
  GETUPVAL R3 3
  CALL R1 2 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_26:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  NEWTABLE R3 1 0
  NAMECALL R4 R0 K2 ["getSorter"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["sorting"]
  GETTABLEKS R4 R0 K4 ["items"]
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K5 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K11 [{"LayoutOrder", "Rows", "Title", "HeaderCellComponent", "OnClick"}]
  GETTABLEKS R12 R8 K12 ["index"]
  SETTABLEKS R12 R11 K6 ["LayoutOrder"]
  GETTABLEKS R12 R8 K13 ["values"]
  SETTABLEKS R12 R11 K7 ["Rows"]
  LOADK R14 K14 ["Summary"]
  LOADK R15 K15 ["ConvertHeader"]
  DUPTABLE R16 K18 [{"currentAmount", "total"}]
  GETTABLEKS R18 R8 K19 ["complete"]
  FASTCALL1 TOSTRING R18 [+2]
  GETIMPORT R17 K21 [tostring]
  CALL R17 1 1
  SETTABLEKS R17 R16 K16 ["currentAmount"]
  GETTABLEKS R18 R8 K17 ["total"]
  FASTCALL1 TOSTRING R18 [+2]
  GETIMPORT R17 K21 [tostring]
  CALL R17 1 1
  SETTABLEKS R17 R16 K17 ["total"]
  NAMECALL R12 R2 K22 ["getText"]
  CALL R12 4 1
  SETTABLEKS R12 R11 K8 ["Title"]
  GETTABLEKS R12 R7 K23 ["headerCellComponent"]
  SETTABLEKS R12 R11 K9 ["HeaderCellComponent"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R7
  CAPTURE VAL R2
  SETTABLEKS R12 R11 K10 ["OnClick"]
  CALL R9 2 1
  SETTABLE R9 R3 R7
  FORGLOOP R4 2 [-51]
  RETURN R3 1

PROTO_27:
  DUPTABLE R2 K6 [{"Layout", "LayoutOrder", "Expanded", "OnExpandedChanged", "HeaderOverride", "Text"}]
  GETIMPORT R3 K10 [Enum.FillDirection.Vertical]
  SETTABLEKS R3 R2 K0 ["Layout"]
  GETUPVAL R3 0
  NAMECALL R3 R3 K11 ["getNextOrder"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K1 ["LayoutOrder"]
  GETUPVAL R4 1
  GETTABLE R3 R4 R0
  SETTABLEKS R3 R2 K2 ["Expanded"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K12 ["onExpandedChanged"]
  MOVE R4 R0
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["OnExpandedChanged"]
  GETUPVAL R3 2
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K12 ["onExpandedChanged"]
  MOVE R6 R0
  CALL R5 1 1
  MOVE R6 R0
  GETUPVAL R8 1
  GETTABLE R7 R8 R0
  MOVE R8 R1
  NAMECALL R3 R3 K13 ["renderHeader"]
  CALL R3 5 1
  SETTABLEKS R3 R2 K4 ["HeaderOverride"]
  SETTABLEKS R0 R2 K5 ["Text"]
  RETURN R2 1

PROTO_28:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R0 K2 ["state"]
  GETTABLEKS R4 R3 K3 ["expanded"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["new"]
  CALL R5 0 1
  NEWCLOSURE R6 P0
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R0
  LOADB R7 1
  GETIMPORT R8 K6 [pairs]
  GETTABLEKS R9 R0 K7 ["items"]
  CALL R8 1 3
  FORGPREP_NEXT R8
  GETTABLEKS R13 R12 K8 ["complete"]
  GETTABLEKS R14 R12 K9 ["total"]
  JUMPIFEQ R13 R14 [+3]
  LOADB R7 0
  JUMP [+2]
  FORGLOOP R8 2 [-9]
  GETTABLEKS R9 R1 K10 ["adaptedWithScripts"]
  NOT R8 R9
  GETTABLEKS R10 R1 K11 ["avatarType"]
  GETIMPORT R11 K15 [Enum.GameAvatarType.R6]
  JUMPIFNOTEQ R10 R11 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  MOVE R10 R7
  JUMPIFNOT R10 [+3]
  MOVE R10 R8
  JUMPIFNOT R10 [+1]
  MOVE R10 R9
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K16 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K21 [{"Size", "Padding", "AutomaticCanvasSize", "Layout"}]
  GETIMPORT R14 K23 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K17 ["Size"]
  LOADN R14 0
  SETTABLEKS R14 R13 K18 ["Padding"]
  GETIMPORT R14 K26 [Enum.AutomaticSize.Y]
  SETTABLEKS R14 R13 K19 ["AutomaticCanvasSize"]
  GETIMPORT R14 K29 [Enum.FillDirection.Vertical]
  SETTABLEKS R14 R13 K20 ["Layout"]
  NEWTABLE R14 4 0
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K16 ["createElement"]
  GETUPVAL R16 3
  MOVE R17 R6
  LOADK R18 K30 ["Convert"]
  MOVE R19 R7
  CALL R17 2 1
  NAMECALL R18 R0 K31 ["getConversionItems"]
  CALL R18 1 -1
  CALL R15 -1 1
  SETTABLEKS R15 R14 K30 ["Convert"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K16 ["createElement"]
  GETUPVAL R16 3
  MOVE R17 R6
  LOADK R18 K32 ["Test"]
  CALL R17 1 1
  DUPTABLE R18 K34 [{"Content"}]
  NAMECALL R19 R0 K35 ["getRadioButtons"]
  CALL R19 1 1
  SETTABLEKS R19 R18 K33 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K32 ["Test"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K16 ["createElement"]
  GETUPVAL R16 3
  MOVE R17 R6
  LOADK R18 K36 ["Publish"]
  MOVE R19 R10
  CALL R17 2 1
  DUPTABLE R18 K34 [{"Content"}]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K16 ["createElement"]
  GETUPVAL R20 4
  DUPTABLE R21 K39 [{"Title", "Rows"}]
  LOADK R24 K40 ["Summary"]
  LOADK R25 K41 ["Checklist"]
  NAMECALL R22 R2 K42 ["getText"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K37 ["Title"]
  NEWTABLE R22 0 3
  DUPTABLE R23 K44 [{"text", "complete"}]
  LOADK R26 K40 ["Summary"]
  LOADK R27 K45 ["AllAssetsConverted"]
  NAMECALL R24 R2 K42 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K43 ["text"]
  SETTABLEKS R7 R23 K8 ["complete"]
  DUPTABLE R24 K44 [{"text", "complete"}]
  LOADK R27 K40 ["Summary"]
  LOADK R28 K46 ["R15ModeOn"]
  NAMECALL R25 R2 K42 ["getText"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K43 ["text"]
  SETTABLEKS R8 R24 K8 ["complete"]
  DUPTABLE R25 K44 [{"text", "complete"}]
  LOADK R28 K40 ["Summary"]
  LOADK R29 K47 ["GameSettingsAvatarType"]
  NAMECALL R26 R2 K42 ["getText"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K43 ["text"]
  SETTABLEKS R9 R25 K8 ["complete"]
  SETLIST R22 R23 3 [1]
  SETTABLEKS R22 R21 K38 ["Rows"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K33 ["Content"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K36 ["Publish"]
  CALL R11 3 -1
  RETURN R11 -1

PROTO_29:
  DUPTABLE R1 K9 [{"animations", "characters", "charactersConverted", "characterMetadataLoadedVersion", "scripts", "adaptedWithScripts", "avatarType", "selectedTab", "sortSelection"}]
  GETTABLEKS R3 R0 K10 ["AnimationConversion"]
  GETTABLEKS R2 R3 K0 ["animations"]
  SETTABLEKS R2 R1 K0 ["animations"]
  GETTABLEKS R3 R0 K11 ["CharacterConversion"]
  GETTABLEKS R2 R3 K1 ["characters"]
  SETTABLEKS R2 R1 K1 ["characters"]
  GETTABLEKS R3 R0 K11 ["CharacterConversion"]
  GETTABLEKS R2 R3 K12 ["convertedCharacters"]
  SETTABLEKS R2 R1 K2 ["charactersConverted"]
  GETTABLEKS R3 R0 K11 ["CharacterConversion"]
  GETTABLEKS R2 R3 K3 ["characterMetadataLoadedVersion"]
  SETTABLEKS R2 R1 K3 ["characterMetadataLoadedVersion"]
  GETTABLEKS R3 R0 K13 ["ScriptConversion"]
  GETTABLEKS R2 R3 K14 ["diagnostics"]
  SETTABLEKS R2 R1 K4 ["scripts"]
  GETTABLEKS R3 R0 K15 ["Adapter"]
  GETTABLEKS R2 R3 K5 ["adaptedWithScripts"]
  SETTABLEKS R2 R1 K5 ["adaptedWithScripts"]
  GETTABLEKS R2 R0 K16 ["AvatarType"]
  SETTABLEKS R2 R1 K6 ["avatarType"]
  GETTABLEKS R3 R0 K17 ["PanelSelection"]
  GETTABLEKS R2 R3 K7 ["selectedTab"]
  SETTABLEKS R2 R1 K7 ["selectedTab"]
  GETTABLEKS R3 R0 K18 ["DataDisplay"]
  GETTABLEKS R2 R3 K8 ["sortSelection"]
  SETTABLEKS R2 R1 K8 ["sortSelection"]
  RETURN R1 1

PROTO_30:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_31:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_32:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_33:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_34:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_35:
  DUPTABLE R1 K5 [{"loadCharacterMetadata", "addAdapters", "removeAdapters", "setSelectedTab", "setSortSelection"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["loadCharacterMetadata"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["addAdapters"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["removeAdapters"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K3 ["setSelectedTab"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K4 ["setSortSelection"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpRbxApiService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["GuiService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K6 [script]
  LOADK R4 K7 ["R15Migrator"]
  NAMECALL R2 R2 K8 ["FindFirstAncestor"]
  CALL R2 2 1
  GETIMPORT R3 K10 [require]
  GETTABLEKS R5 R2 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R2 K11 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Roact"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K14 ["ContextServices"]
  GETIMPORT R6 K10 [require]
  GETTABLEKS R8 R2 K11 ["Packages"]
  GETTABLEKS R7 R8 K15 ["RoactRodux"]
  CALL R6 1 1
  GETIMPORT R7 K10 [require]
  GETTABLEKS R9 R2 K11 ["Packages"]
  GETTABLEKS R8 R9 K16 ["Dash"]
  CALL R7 1 1
  GETIMPORT R8 K10 [require]
  GETTABLEKS R11 R2 K17 ["Src"]
  GETTABLEKS R10 R11 K18 ["Contexts"]
  GETTABLEKS R9 R10 K19 ["ScriptConversionContext"]
  CALL R8 1 1
  GETTABLEKS R9 R3 K20 ["UI"]
  GETTABLEKS R10 R9 K21 ["ExpandablePane"]
  GETTABLEKS R11 R9 K22 ["ScrollingFrame"]
  GETTABLEKS R12 R9 K23 ["Pane"]
  GETTABLEKS R13 R9 K24 ["TextLabel"]
  GETTABLEKS R14 R9 K25 ["RadioButtonList"]
  GETTABLEKS R15 R9 K26 ["Image"]
  GETTABLEKS R16 R9 K27 ["TextWithLinks"]
  GETTABLEKS R17 R9 K28 ["SelectInput"]
  GETTABLEKS R18 R3 K29 ["Util"]
  GETTABLEKS R19 R18 K30 ["LayoutOrderIterator"]
  GETTABLEKS R20 R18 K31 ["StyleModifier"]
  GETTABLEKS R22 R2 K17 ["Src"]
  GETTABLEKS R21 R22 K29 ["Util"]
  GETIMPORT R22 K10 [require]
  GETTABLEKS R23 R21 K32 ["TabsData"]
  CALL R22 1 1
  GETIMPORT R23 K10 [require]
  GETTABLEKS R24 R21 K33 ["SortData"]
  CALL R23 1 1
  GETIMPORT R24 K10 [require]
  GETIMPORT R27 K6 [script]
  GETTABLEKS R26 R27 K34 ["Parent"]
  GETTABLEKS R25 R26 K35 ["StatusTable"]
  CALL R24 1 1
  GETTABLEKS R26 R2 K17 ["Src"]
  GETTABLEKS R25 R26 K36 ["Thunks"]
  GETIMPORT R26 K10 [require]
  GETTABLEKS R27 R25 K37 ["LoadCharacterMetadata"]
  CALL R26 1 1
  GETIMPORT R27 K10 [require]
  GETTABLEKS R28 R25 K38 ["AddAdapters"]
  CALL R27 1 1
  GETIMPORT R28 K10 [require]
  GETTABLEKS R29 R25 K39 ["RemoveAdapters"]
  CALL R28 1 1
  GETTABLEKS R30 R2 K17 ["Src"]
  GETTABLEKS R29 R30 K40 ["Actions"]
  GETIMPORT R30 K10 [require]
  GETTABLEKS R31 R29 K41 ["SetSelectedTab"]
  CALL R30 1 1
  GETIMPORT R31 K10 [require]
  GETTABLEKS R32 R29 K42 ["SetSortSelection"]
  CALL R31 1 1
  GETIMPORT R33 K10 [require]
  GETTABLEKS R36 R2 K17 ["Src"]
  GETTABLEKS R35 R36 K43 ["Resources"]
  GETTABLEKS R34 R35 K44 ["Constants"]
  CALL R33 1 1
  GETTABLEKS R32 R33 K45 ["StatusTableData"]
  GETTABLEKS R33 R4 K46 ["PureComponent"]
  LOADK R35 K47 ["SummaryPane"]
  NAMECALL R33 R33 K48 ["extend"]
  CALL R33 2 1
  DUPCLOSURE R34 K49 [PROTO_2]
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R7
  CAPTURE VAL R32
  CAPTURE VAL R16
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R13
  CAPTURE VAL R5
  SETGLOBAL R34 K50 ["getHeaderCellComponent"]
  DUPTABLE R34 K53 [{"tabTarget", "headerCellComponent"}]
  GETTABLEKS R35 R22 K54 ["CharacterConversion"]
  SETTABLEKS R35 R34 K51 ["tabTarget"]
  GETGLOBAL R35 K50 ["getHeaderCellComponent"]
  LOADK R36 K55 ["Characters"]
  CALL R35 1 1
  SETTABLEKS R35 R34 K52 ["headerCellComponent"]
  DUPTABLE R35 K53 [{"tabTarget", "headerCellComponent"}]
  GETTABLEKS R36 R22 K56 ["AnimationConversion"]
  SETTABLEKS R36 R35 K51 ["tabTarget"]
  GETGLOBAL R36 K50 ["getHeaderCellComponent"]
  LOADK R37 K57 ["Animation"]
  CALL R36 1 1
  SETTABLEKS R36 R35 K52 ["headerCellComponent"]
  DUPTABLE R36 K53 [{"tabTarget", "headerCellComponent"}]
  GETTABLEKS R37 R22 K58 ["ScriptConversion"]
  SETTABLEKS R37 R36 K51 ["tabTarget"]
  GETGLOBAL R37 K50 ["getHeaderCellComponent"]
  LOADK R38 K59 ["Scripts"]
  CALL R37 1 1
  SETTABLEKS R37 R36 K52 ["headerCellComponent"]
  DUPCLOSURE R37 K60 [PROTO_8]
  CAPTURE VAL R34
  CAPTURE VAL R35
  CAPTURE VAL R36
  CAPTURE VAL R7
  SETTABLEKS R37 R33 K61 ["init"]
  DUPCLOSURE R37 K62 [PROTO_9]
  SETTABLEKS R37 R33 K63 ["didMount"]
  DUPCLOSURE R37 K64 [PROTO_13]
  CAPTURE VAL R23
  SETTABLEKS R37 R33 K65 ["sortConversionEntries"]
  DUPCLOSURE R37 K66 [PROTO_15]
  CAPTURE VAL R34
  SETTABLEKS R37 R33 K67 ["updateCharacters"]
  DUPCLOSURE R37 K68 [PROTO_16]
  CAPTURE VAL R35
  SETTABLEKS R37 R33 K69 ["updateAnimations"]
  DUPCLOSURE R37 K70 [PROTO_17]
  CAPTURE VAL R36
  SETTABLEKS R37 R33 K71 ["updateScripts"]
  DUPCLOSURE R37 K72 [PROTO_18]
  CAPTURE VAL R35
  CAPTURE VAL R36
  CAPTURE VAL R34
  SETTABLEKS R37 R33 K73 ["willUpdate"]
  DUPCLOSURE R37 K74 [PROTO_19]
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R20
  CAPTURE VAL R13
  SETTABLEKS R37 R33 K75 ["renderHeader"]
  DUPCLOSURE R37 K76 [PROTO_22]
  CAPTURE VAL R4
  CAPTURE VAL R14
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R37 R33 K77 ["getRadioButtons"]
  DUPCLOSURE R37 K78 [PROTO_24]
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R17
  CAPTURE VAL R23
  SETTABLEKS R37 R33 K79 ["getSorter"]
  DUPCLOSURE R37 K80 [PROTO_26]
  CAPTURE VAL R4
  CAPTURE VAL R24
  CAPTURE VAL R22
  SETTABLEKS R37 R33 K81 ["getConversionItems"]
  DUPCLOSURE R37 K82 [PROTO_28]
  CAPTURE VAL R19
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R24
  SETTABLEKS R37 R33 K83 ["render"]
  DUPCLOSURE R37 K84 [PROTO_29]
  DUPCLOSURE R38 K85 [PROTO_35]
  CAPTURE VAL R26
  CAPTURE VAL R27
  CAPTURE VAL R28
  CAPTURE VAL R30
  CAPTURE VAL R31
  GETTABLEKS R39 R5 K86 ["withContext"]
  DUPTABLE R40 K90 [{"Stylizer", "Localization", "ScriptConversionContext", "Analytics"}]
  GETTABLEKS R41 R5 K87 ["Stylizer"]
  SETTABLEKS R41 R40 K87 ["Stylizer"]
  GETTABLEKS R41 R5 K88 ["Localization"]
  SETTABLEKS R41 R40 K88 ["Localization"]
  SETTABLEKS R8 R40 K19 ["ScriptConversionContext"]
  GETTABLEKS R41 R5 K89 ["Analytics"]
  SETTABLEKS R41 R40 K89 ["Analytics"]
  CALL R39 1 1
  MOVE R40 R33
  CALL R39 1 1
  MOVE R33 R39
  GETTABLEKS R39 R6 K91 ["connect"]
  MOVE R40 R37
  MOVE R41 R38
  CALL R39 2 1
  MOVE R40 R33
  CALL R39 1 -1
  RETURN R39 -1
