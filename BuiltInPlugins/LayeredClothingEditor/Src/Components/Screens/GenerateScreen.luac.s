PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["Localization"]
  GETUPVAL R2 0
  LOADB R3 1
  SETTABLEKS R3 R2 K2 ["generateClicked"]
  GETTABLEKS R2 R0 K3 ["SetControlsPanelBlockerMessage"]
  LOADK R5 K4 ["Generate"]
  LOADK R6 K5 ["Wait"]
  NAMECALL R3 R1 K6 ["getText"]
  CALL R3 3 -1
  CALL R2 -1 0
  GETTABLEKS R2 R0 K7 ["SetControlsPanelBlockerActivity"]
  LOADB R3 1
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["state"]
  GETTABLEKS R2 R0 K2 ["Localization"]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+70]
  GETTABLEKS R3 R0 K3 ["EditingItemContext"]
  NAMECALL R3 R3 K4 ["getItem"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K5 ["generateKey"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K6 ["isMeshPartWithSurfaceAppearance"]
  MOVE R6 R3
  CALL R5 1 1
  JUMPIFNOT R5 [+52]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K7 ["GENERATE_LEGACY_KEY"]
  JUMPIFNOTEQ R4 R6 [+48]
  GETUPVAL R6 4
  GETTABLEKS R7 R0 K8 ["Plugin"]
  MOVE R8 R2
  GETUPVAL R9 5
  DUPTABLE R10 K14 [{"Text", "OnConfirm", "Title", "ConfirmText", "Link"}]
  LOADK R13 K15 ["Generate"]
  LOADK R14 K16 ["LegacyConversionDialog"]
  NAMECALL R11 R2 K17 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K9 ["Text"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K18 ["startGeneration"]
  SETTABLEKS R11 R10 K10 ["OnConfirm"]
  LOADK R13 K19 ["Dialog"]
  LOADK R14 K20 ["DefaultTitle"]
  NAMECALL R11 R2 K17 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K11 ["Title"]
  LOADK R13 K19 ["Dialog"]
  LOADK R14 K21 ["Continue"]
  NAMECALL R11 R2 K17 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K12 ["ConfirmText"]
  DUPTABLE R11 K23 [{"Text", "Url"}]
  LOADK R14 K15 ["Generate"]
  LOADK R15 K24 ["LearnMoreLegacy"]
  NAMECALL R12 R2 K17 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K9 ["Text"]
  GETUPVAL R12 6
  SETTABLEKS R12 R11 K22 ["Url"]
  SETTABLEKS R11 R10 K13 ["Link"]
  CALL R6 4 0
  RETURN R0 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K18 ["startGeneration"]
  CALL R6 0 0
  RETURN R0 0
  GETUPVAL R3 0
  LOADB R4 1
  SETTABLEKS R4 R3 K25 ["generateClicked"]
  GETTABLEKS R3 R0 K26 ["SetControlsPanelBlockerMessage"]
  LOADK R6 K15 ["Generate"]
  LOADK R7 K27 ["Wait"]
  NAMECALL R4 R2 K17 ["getText"]
  CALL R4 3 -1
  CALL R3 -1 0
  GETTABLEKS R3 R0 K28 ["SetControlsPanelBlockerActivity"]
  LOADB R4 1
  CALL R3 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["setupDropdownMenu"]
  CALL R2 0 0
  RETURN R0 0
  GETUPVAL R2 1
  DUPTABLE R4 K3 [{"generateText", "generateKey"}]
  SETTABLEKS R0 R4 K1 ["generateText"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K4 ["itemKeys"]
  GETTABLE R5 R6 R1
  SETTABLEKS R5 R4 K2 ["generateKey"]
  NAMECALL R2 R2 K5 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["EditingItemContext"]
  NAMECALL R1 R1 K2 ["getItem"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K3 ["Localization"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["hasAnyCage"]
  MOVE R4 R1
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["isLegacyAccessory"]
  MOVE R5 R1
  CALL R4 1 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["state"]
  GETTABLEKS R5 R6 K7 ["generateKey"]
  NEWTABLE R6 0 0
  LOADNIL R7
  JUMPIFNOT R3 [+4]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K8 ["GENERATE_MESH_PART_KEY"]
  JUMP [+42]
  JUMPIFNOT R4 [+4]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K9 ["GENERATE_LEGACY_KEY"]
  JUMP [+37]
  JUMPIFNOT R5 [+5]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K9 ["GENERATE_LEGACY_KEY"]
  JUMPIFNOTEQ R5 R8 [+17]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K8 ["GENERATE_MESH_PART_KEY"]
  MOVE R9 R6
  LOADK R12 K10 ["Flow"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K9 ["GENERATE_LEGACY_KEY"]
  NAMECALL R10 R2 K11 ["getText"]
  CALL R10 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R8 K14 [table.insert]
  CALL R8 -1 0
  JUMP [+15]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K9 ["GENERATE_LEGACY_KEY"]
  MOVE R9 R6
  LOADK R12 K10 ["Flow"]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K8 ["GENERATE_MESH_PART_KEY"]
  NAMECALL R10 R2 K11 ["getText"]
  CALL R10 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R8 K14 [table.insert]
  CALL R8 -1 0
  GETUPVAL R8 0
  DUPTABLE R10 K17 [{"items", "generateText", "generateKey"}]
  SETTABLEKS R6 R10 K15 ["items"]
  LOADK R13 K10 ["Flow"]
  MOVE R14 R7
  NAMECALL R11 R2 K11 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K16 ["generateText"]
  SETTABLEKS R7 R10 K7 ["generateKey"]
  NAMECALL R8 R8 K18 ["setState"]
  CALL R8 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+13]
  DUPTABLE R1 K3 [{"items", "generateText", "generateKey"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["items"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["generateText"]
  LOADNIL R2
  SETTABLEKS R2 R1 K2 ["generateKey"]
  SETTABLEKS R1 R0 K4 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["startGeneration"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  SETTABLEKS R1 R0 K6 ["onGenerateClicked"]
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+5]
  NEWCLOSURE R1 P2
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onSelectGenerateDropdownItem"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  SETTABLEKS R1 R0 K8 ["setupDropdownMenu"]
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+4]
  GETTABLEKS R1 R0 K0 ["setupDropdownMenu"]
  CALL R1 0 0
  RETURN R0 0
  GETUPVAL R1 1
  CALL R1 0 1
  JUMPIFNOT R1 [+100]
  GETTABLEKS R1 R0 K1 ["props"]
  GETTABLEKS R2 R1 K2 ["EditingItemContext"]
  NAMECALL R2 R2 K3 ["getItem"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K4 ["Localization"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["hasAnyCage"]
  MOVE R5 R2
  CALL R4 1 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K6 ["isLegacyAccessory"]
  MOVE R6 R2
  CALL R5 1 1
  NEWTABLE R6 0 0
  SETTABLEKS R6 R0 K7 ["itemKeys"]
  JUMPIFNOT R4 [+11]
  GETTABLEKS R7 R0 K7 ["itemKeys"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K8 ["GENERATE_MESH_PART_KEY"]
  FASTCALL2 TABLE_INSERT R7 R8 [+3]
  GETIMPORT R6 K11 [table.insert]
  CALL R6 2 0
  JUMP [+32]
  JUMPIFNOT R5 [+11]
  GETTABLEKS R7 R0 K7 ["itemKeys"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K12 ["GENERATE_LEGACY_KEY"]
  FASTCALL2 TABLE_INSERT R7 R8 [+3]
  GETIMPORT R6 K11 [table.insert]
  CALL R6 2 0
  JUMP [+20]
  GETTABLEKS R7 R0 K7 ["itemKeys"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K8 ["GENERATE_MESH_PART_KEY"]
  FASTCALL2 TABLE_INSERT R7 R8 [+3]
  GETIMPORT R6 K11 [table.insert]
  CALL R6 2 0
  GETTABLEKS R7 R0 K7 ["itemKeys"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K12 ["GENERATE_LEGACY_KEY"]
  FASTCALL2 TABLE_INSERT R7 R8 [+3]
  GETIMPORT R6 K11 [table.insert]
  CALL R6 2 0
  NEWTABLE R6 0 0
  GETTABLEKS R7 R0 K7 ["itemKeys"]
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  MOVE R13 R6
  LOADK R16 K13 ["Flow"]
  MOVE R17 R11
  NAMECALL R14 R3 K14 ["getText"]
  CALL R14 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R12 K11 [table.insert]
  CALL R12 -1 0
  FORGLOOP R7 2 [-11]
  DUPTABLE R9 K18 [{"items", "generateText", "generateKey"}]
  SETTABLEKS R6 R9 K15 ["items"]
  GETTABLEN R10 R6 1
  SETTABLEKS R10 R9 K16 ["generateText"]
  GETTABLEKS R11 R0 K7 ["itemKeys"]
  GETTABLEN R10 R11 1
  SETTABLEKS R10 R9 K17 ["generateKey"]
  NAMECALL R7 R0 K19 ["setState"]
  CALL R7 2 0
  RETURN R0 0

PROTO_6:
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R2 K2 ["items"]
  GETTABLEKS R4 R2 K3 ["generateText"]
  GETTABLEKS R5 R1 K4 ["InBounds"]
  GETTABLEKS R6 R1 K5 ["GoToPrevious"]
  GETTABLEKS R7 R1 K6 ["Localization"]
  GETTABLEKS R8 R1 K7 ["Stylizer"]
  LOADNIL R9
  GETUPVAL R10 0
  CALL R10 0 1
  JUMPIFNOT R10 [+10]
  JUMPIF R5 [+7]
  LOADK R12 K8 ["Generate"]
  LOADK R13 K9 ["InvalidBoundsUGC"]
  NAMECALL R10 R7 K10 ["getText"]
  CALL R10 3 1
  MOVE R9 R10
  JUMP [+11]
  LOADNIL R9
  JUMP [+9]
  JUMPIF R5 [+7]
  LOADK R12 K8 ["Generate"]
  LOADK R13 K11 ["InvalidBounds"]
  NAMECALL R10 R7 K10 ["getText"]
  CALL R10 3 1
  MOVE R9 R10
  JUMP [+1]
  LOADNIL R9
  GETUPVAL R10 1
  CALL R10 0 1
  JUMPIFNOT R10 [+7]
  JUMPIFNOT R5 [+6]
  LOADK R12 K8 ["Generate"]
  LOADK R13 K12 ["Tooltip"]
  NAMECALL R10 R7 K10 ["getText"]
  CALL R10 3 1
  MOVE R9 R10
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K13 ["new"]
  CALL R10 0 1
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K14 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K20 [{"Size", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
  GETIMPORT R14 K22 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K15 ["Size"]
  GETIMPORT R14 K26 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K16 ["Layout"]
  GETIMPORT R14 K28 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R14 R13 K17 ["HorizontalAlignment"]
  GETIMPORT R14 K29 [Enum.VerticalAlignment.Center]
  SETTABLEKS R14 R13 K18 ["VerticalAlignment"]
  LOADN R14 10
  SETTABLEKS R14 R13 K19 ["Spacing"]
  DUPTABLE R14 K33 [{"BackButton", "GenerateDropdownButton", "NextButton"}]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K14 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K38 [{"Text", "Style", "Size", "OnClick", "LayoutOrder"}]
  LOADK R20 K39 ["Flow"]
  LOADK R21 K40 ["Back"]
  NAMECALL R18 R7 K10 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K34 ["Text"]
  LOADK R18 K41 ["Round"]
  SETTABLEKS R18 R17 K35 ["Style"]
  GETIMPORT R18 K22 [UDim2.new]
  LOADN R19 0
  GETTABLEKS R20 R8 K42 ["BackButtonWidth"]
  LOADN R21 0
  GETUPVAL R23 0
  CALL R23 0 1
  JUMPIFNOT R23 [+3]
  GETTABLEKS R22 R8 K43 ["GenerateDropdownButtonHeight"]
  JUMP [+2]
  GETTABLEKS R22 R8 K44 ["ButtonHeight"]
  CALL R18 4 1
  SETTABLEKS R18 R17 K15 ["Size"]
  SETTABLEKS R6 R17 K36 ["OnClick"]
  NAMECALL R18 R10 K45 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K37 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K30 ["BackButton"]
  GETUPVAL R16 0
  CALL R16 0 1
  JUMPIFNOT R16 [+57]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K14 ["createElement"]
  GETUPVAL R16 6
  DUPTABLE R17 K57 [{"AutomaticSize", "Height", "ButtonWidth", "ArrowWidth", "LayoutOrder", "TooltipText", "ButtonIcon", "IconSize", "ButtonText", "Items", "ItemHeight", "OnSelectItem", "OnClick"}]
  GETIMPORT R18 K59 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K46 ["AutomaticSize"]
  GETTABLEKS R18 R8 K43 ["GenerateDropdownButtonHeight"]
  SETTABLEKS R18 R17 K47 ["Height"]
  GETTABLEKS R18 R8 K60 ["GenerateDropdownButtonWidth"]
  SETTABLEKS R18 R17 K48 ["ButtonWidth"]
  GETTABLEKS R18 R8 K49 ["ArrowWidth"]
  SETTABLEKS R18 R17 K49 ["ArrowWidth"]
  NAMECALL R18 R10 K45 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K37 ["LayoutOrder"]
  SETTABLEKS R9 R17 K50 ["TooltipText"]
  JUMPIF R5 [+3]
  GETTABLEKS R18 R8 K61 ["WarningIcon"]
  JUMP [+1]
  LOADNIL R18
  SETTABLEKS R18 R17 K51 ["ButtonIcon"]
  GETTABLEKS R18 R8 K52 ["IconSize"]
  SETTABLEKS R18 R17 K52 ["IconSize"]
  SETTABLEKS R4 R17 K53 ["ButtonText"]
  SETTABLEKS R3 R17 K54 ["Items"]
  GETTABLEKS R18 R8 K62 ["DropdownItemHeight"]
  SETTABLEKS R18 R17 K55 ["ItemHeight"]
  GETTABLEKS R18 R0 K63 ["onSelectGenerateDropdownItem"]
  SETTABLEKS R18 R17 K56 ["OnSelectItem"]
  GETTABLEKS R18 R0 K64 ["onGenerateClicked"]
  SETTABLEKS R18 R17 K36 ["OnClick"]
  CALL R15 2 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K31 ["GenerateDropdownButton"]
  GETUPVAL R16 0
  CALL R16 0 1
  JUMPIF R16 [+45]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K14 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K66 [{"Text", "Style", "StyleModifier", "Size", "OnClick", "Tooltip"}]
  LOADK R20 K39 ["Flow"]
  LOADK R21 K8 ["Generate"]
  NAMECALL R18 R7 K10 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K34 ["Text"]
  LOADK R18 K67 ["RoundPrimary"]
  SETTABLEKS R18 R17 K35 ["Style"]
  JUMPIF R5 [+4]
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K68 ["Disabled"]
  JUMP [+1]
  LOADNIL R18
  SETTABLEKS R18 R17 K65 ["StyleModifier"]
  GETIMPORT R18 K22 [UDim2.new]
  LOADN R19 0
  GETTABLEKS R20 R8 K69 ["GenerateButtonWidth"]
  LOADN R21 0
  GETTABLEKS R22 R8 K44 ["ButtonHeight"]
  CALL R18 4 1
  SETTABLEKS R18 R17 K15 ["Size"]
  JUMPIFNOT R5 [+3]
  GETTABLEKS R18 R0 K64 ["onGenerateClicked"]
  JUMP [+1]
  DUPCLOSURE R18 K70 [PROTO_6]
  SETTABLEKS R18 R17 K36 ["OnClick"]
  SETTABLEKS R9 R17 K12 ["Tooltip"]
  CALL R15 2 1
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K32 ["NextButton"]
  CALL R11 3 -1
  RETURN R11 -1

PROTO_8:
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["EditingItemContext"]
  NAMECALL R0 R0 K2 ["getItem"]
  CALL R0 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["EditingItemContext"]
  NAMECALL R1 R1 K3 ["getSourceItemWithUniqueDeformerNames"]
  CALL R1 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K4 ["Analytics"]
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+27]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K5 ["FinishEditing"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K6 ["LuaMeshEditingModuleContext"]
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K7 ["state"]
  GETTABLEKS R9 R10 K8 ["generateKey"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K9 ["GENERATE_LEGACY_KEY"]
  JUMPIFEQ R9 R10 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  CALL R3 5 0
  JUMP [+14]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K5 ["FinishEditing"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K6 ["LuaMeshEditingModuleContext"]
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R3 4 0
  LOADK R5 K10 ["SessionEnded"]
  NAMECALL R3 R2 K11 ["getHandler"]
  CALL R3 2 1
  CALL R3 0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K12 ["SetControlsPanelBlockerActivity"]
  LOADB R4 0
  CALL R3 1 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["EditingItemContext"]
  NAMECALL R3 R3 K13 ["clear"]
  CALL R3 1 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K14 ["GoToNext"]
  CALL R3 0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K15 ["ReleaseEditor"]
  CALL R3 0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["EditingItemContext"]
  LOADNIL R5
  NAMECALL R3 R3 K16 ["setSourceItem"]
  CALL R3 2 0
  GETUPVAL R3 0
  LOADB R4 0
  SETTABLEKS R4 R3 K17 ["generateClicked"]
  GETUPVAL R3 3
  CALL R3 0 1
  JUMPIFNOT R3 [+34]
  GETUPVAL R3 4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K18 ["Plugin"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K19 ["Localization"]
  GETUPVAL R6 5
  DUPTABLE R7 K22 [{"Text", "OnClose"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["props"]
  GETTABLEKS R8 R9 K19 ["Localization"]
  LOADK R10 K23 ["Generate"]
  LOADK R11 K24 ["Success"]
  DUPTABLE R12 K26 [{"name"}]
  GETTABLEKS R13 R1 K27 ["Name"]
  SETTABLEKS R13 R12 K25 ["name"]
  NAMECALL R8 R8 K28 ["getText"]
  CALL R8 4 1
  SETTABLEKS R8 R7 K20 ["Text"]
  DUPCLOSURE R8 K29 [PROTO_8]
  SETTABLEKS R8 R7 K21 ["OnClose"]
  CALL R3 4 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["IsControlsPanelBlockerActive"]
  GETTABLEKS R3 R1 K1 ["IsControlsPanelBlockerActive"]
  JUMPIFEQ R2 R3 [+20]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["IsControlsPanelBlockerActive"]
  JUMPIFNOT R2 [+14]
  GETTABLEKS R2 R0 K2 ["generateClicked"]
  JUMPIFNOT R2 [+11]
  GETIMPORT R2 K5 [task.delay]
  LOADN R3 0
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R2 2 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R2 R0 K0 ["controlsPanelBlocker"]
  GETTABLEKS R3 R0 K1 ["selectItem"]
  DUPTABLE R4 K4 [{"IsControlsPanelBlockerActive", "InBounds"}]
  GETTABLEKS R5 R2 K5 ["isActive"]
  SETTABLEKS R5 R4 K2 ["IsControlsPanelBlockerActive"]
  GETTABLEKS R5 R3 K6 ["inBounds"]
  SETTABLEKS R5 R4 K3 ["InBounds"]
  RETURN R4 1

PROTO_12:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R5 0
  GETUPVAL R6 1
  MOVE R7 R0
  MOVE R8 R1
  MOVE R9 R2
  MOVE R10 R3
  MOVE R11 R4
  CALL R6 5 -1
  CALL R5 -1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R4 0
  GETUPVAL R5 1
  MOVE R6 R0
  MOVE R7 R1
  MOVE R8 R2
  MOVE R9 R3
  CALL R5 4 -1
  CALL R4 -1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_17:
  DUPTABLE R1 K4 [{"SetControlsPanelBlockerActivity", "SetControlsPanelBlockerMessage", "FinishEditing", "ReleaseEditor"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetControlsPanelBlockerActivity"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["SetControlsPanelBlockerMessage"]
  GETUPVAL R3 2
  CALL R3 0 1
  JUMPIFNOT R3 [+4]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  JUMP [+3]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  SETTABLEKS R2 R1 K2 ["FinishEditing"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  SETTABLEKS R2 R1 K3 ["ReleaseEditor"]
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
  GETTABLEKS R4 R5 K8 ["AvatarToolsShared"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["Components"]
  GETTABLEKS R5 R4 K10 ["InputBlocker"]
  GETTABLEKS R6 R4 K11 ["FlowScreenLayout"]
  GETTABLEKS R7 R4 K12 ["ButtonWithDropdown"]
  GETTABLEKS R8 R4 K13 ["ConfirmDialog"]
  GETTABLEKS R9 R4 K14 ["ConfirmCancelDialog"]
  GETTABLEKS R12 R3 K15 ["Util"]
  GETTABLEKS R11 R12 K16 ["AccessoryAndBodyToolShared"]
  GETTABLEKS R10 R11 K17 ["ItemCharacteristics"]
  GETIMPORT R11 K4 [require]
  GETTABLEKS R13 R0 K5 ["Packages"]
  GETTABLEKS R12 R13 K18 ["Framework"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K19 ["ContextServices"]
  GETTABLEKS R13 R12 K20 ["withContext"]
  GETTABLEKS R14 R11 K21 ["UI"]
  GETTABLEKS R15 R14 K22 ["Button"]
  GETTABLEKS R16 R14 K23 ["Pane"]
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K24 ["Src"]
  GETTABLEKS R19 R20 K15 ["Util"]
  GETTABLEKS R18 R19 K25 ["ShowDialog"]
  CALL R17 1 1
  GETTABLEKS R19 R3 K26 ["Contexts"]
  GETTABLEKS R18 R19 K27 ["EditingItemContext"]
  GETTABLEKS R20 R3 K26 ["Contexts"]
  GETTABLEKS R19 R20 K28 ["LuaMeshEditingModuleContext"]
  GETIMPORT R20 K4 [require]
  GETTABLEKS R23 R0 K24 ["Src"]
  GETTABLEKS R22 R23 K29 ["Actions"]
  GETTABLEKS R21 R22 K30 ["SetControlsPanelBlockerActivity"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R24 R0 K24 ["Src"]
  GETTABLEKS R23 R24 K29 ["Actions"]
  GETTABLEKS R22 R23 K31 ["SetControlsPanelBlockerMessage"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R25 R0 K24 ["Src"]
  GETTABLEKS R24 R25 K32 ["Thunks"]
  GETTABLEKS R23 R24 K33 ["ReleaseEditor"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R26 R0 K24 ["Src"]
  GETTABLEKS R25 R26 K32 ["Thunks"]
  GETTABLEKS R24 R25 K34 ["FinishEditing"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R27 R0 K24 ["Src"]
  GETTABLEKS R26 R27 K15 ["Util"]
  GETTABLEKS R25 R26 K35 ["Constants"]
  CALL R24 1 1
  GETIMPORT R25 K4 [require]
  GETTABLEKS R28 R0 K24 ["Src"]
  GETTABLEKS R27 R28 K15 ["Util"]
  GETTABLEKS R26 R27 K25 ["ShowDialog"]
  CALL R25 1 1
  GETTABLEKS R26 R1 K36 ["PureComponent"]
  LOADK R28 K37 ["GenerateScreen"]
  NAMECALL R26 R26 K38 ["extend"]
  CALL R26 2 1
  GETTABLEKS R27 R11 K15 ["Util"]
  GETTABLEKS R28 R27 K39 ["Typecheck"]
  GETTABLEKS R29 R27 K40 ["StyleModifier"]
  GETTABLEKS R30 R27 K41 ["LayoutOrderIterator"]
  GETTABLEKS R31 R28 K42 ["wrap"]
  MOVE R32 R26
  GETIMPORT R33 K1 [script]
  CALL R31 2 0
  GETTABLEKS R32 R3 K43 ["Flags"]
  GETTABLEKS R31 R32 K44 ["GetFFlagInstanceSelectionTooltips"]
  GETTABLEKS R33 R3 K43 ["Flags"]
  GETTABLEKS R32 R33 K45 ["GetFFlagAFTEnableGenerateDropdownButton"]
  GETTABLEKS R34 R3 K43 ["Flags"]
  GETTABLEKS R33 R34 K46 ["GetFFlagAFTLegacyConversionWarning"]
  GETTABLEKS R35 R3 K43 ["Flags"]
  GETTABLEKS R34 R35 K47 ["GetFFlagFixAFTDropdownOptions"]
  GETTABLEKS R36 R3 K43 ["Flags"]
  GETTABLEKS R35 R36 K48 ["GetFFlagAFTConfirmGenerate"]
  GETIMPORT R36 K50 [game]
  LOADK R38 K51 ["GenerateLegacyHelpLink"]
  LOADK R39 K52 ["https://create.roblox.com/docs/art/avatar"]
  NAMECALL R36 R36 K53 ["DefineFastString"]
  CALL R36 3 1
  DUPCLOSURE R37 K54 [PROTO_4]
  CAPTURE VAL R32
  CAPTURE VAL R33
  CAPTURE VAL R10
  CAPTURE VAL R24
  CAPTURE VAL R25
  CAPTURE VAL R9
  CAPTURE VAL R36
  CAPTURE VAL R34
  SETTABLEKS R37 R26 K55 ["init"]
  DUPCLOSURE R37 K56 [PROTO_5]
  CAPTURE VAL R34
  CAPTURE VAL R32
  CAPTURE VAL R10
  CAPTURE VAL R24
  SETTABLEKS R37 R26 K57 ["didMount"]
  DUPCLOSURE R37 K58 [PROTO_7]
  CAPTURE VAL R32
  CAPTURE VAL R31
  CAPTURE VAL R30
  CAPTURE VAL R1
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R7
  CAPTURE VAL R29
  SETTABLEKS R37 R26 K59 ["render"]
  DUPCLOSURE R37 K60 [PROTO_10]
  CAPTURE VAL R32
  CAPTURE VAL R24
  CAPTURE VAL R35
  CAPTURE VAL R25
  CAPTURE VAL R8
  SETTABLEKS R37 R26 K61 ["didUpdate"]
  MOVE R37 R13
  DUPTABLE R38 K66 [{"Plugin", "Analytics", "Stylizer", "Localization", "EditingItemContext", "LuaMeshEditingModuleContext"}]
  MOVE R40 R33
  CALL R40 0 1
  JUMPIFNOT R40 [+3]
  GETTABLEKS R39 R12 K62 ["Plugin"]
  JUMP [+1]
  LOADNIL R39
  SETTABLEKS R39 R38 K62 ["Plugin"]
  GETTABLEKS R39 R12 K63 ["Analytics"]
  SETTABLEKS R39 R38 K63 ["Analytics"]
  GETTABLEKS R39 R12 K64 ["Stylizer"]
  SETTABLEKS R39 R38 K64 ["Stylizer"]
  GETTABLEKS R39 R12 K65 ["Localization"]
  SETTABLEKS R39 R38 K65 ["Localization"]
  SETTABLEKS R18 R38 K27 ["EditingItemContext"]
  SETTABLEKS R19 R38 K28 ["LuaMeshEditingModuleContext"]
  CALL R37 1 1
  MOVE R38 R26
  CALL R37 1 1
  MOVE R26 R37
  DUPCLOSURE R37 K67 [PROTO_11]
  DUPCLOSURE R38 K68 [PROTO_17]
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R32
  CAPTURE VAL R23
  CAPTURE VAL R22
  GETTABLEKS R39 R2 K69 ["connect"]
  MOVE R40 R37
  MOVE R41 R38
  CALL R39 2 1
  MOVE R40 R26
  CALL R39 1 -1
  RETURN R39 -1
