PROTO_0:
  NAMECALL R1 R0 K0 ["canSkip"]
  CALL R1 1 1
  JUMPIFNOT R1 [+5]
  GETTABLEKS R2 R0 K1 ["props"]
  GETTABLEKS R1 R2 K2 ["goToNextScreen"]
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  NEWTABLE R1 0 2
  DUPTABLE R2 K2 [{"name", "selectable"}]
  LOADK R3 K3 ["Game development assets"]
  SETTABLEKS R3 R2 K0 ["name"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["selectable"]
  DUPTABLE R3 K5 [{"name", "selectable", "type"}]
  LOADK R4 K6 ["Model"]
  SETTABLEKS R4 R3 K0 ["name"]
  LOADB R4 1
  SETTABLEKS R4 R3 K1 ["selectable"]
  GETIMPORT R4 K9 [Enum.AssetType.Model]
  SETTABLEKS R4 R3 K4 ["type"]
  SETLIST R1 R2 2 [1]
  DUPTABLE R4 K5 [{"name", "selectable", "type"}]
  LOADK R5 K10 ["Animation"]
  SETTABLEKS R5 R4 K0 ["name"]
  LOADB R5 1
  SETTABLEKS R5 R4 K1 ["selectable"]
  GETIMPORT R5 K11 [Enum.AssetType.Animation]
  SETTABLEKS R5 R4 K4 ["type"]
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K14 [table.insert]
  CALL R2 2 0
  GETUPVAL R2 0
  GETTABLEKS R4 R0 K15 ["props"]
  GETTABLEKS R3 R4 K16 ["allowedAssetTypesForRelease"]
  CALL R2 1 1
  LENGTH R3 R2
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+46]
  GETTABLEKS R5 R0 K15 ["props"]
  GETTABLEKS R4 R5 K18 ["Localization"]
  LOADK R6 K19 ["General"]
  LOADK R7 K20 ["CategoryCreationsCatalogSectionDivider"]
  NAMECALL R4 R4 K21 ["getText"]
  CALL R4 3 1
  ORK R3 R4 K17 [""]
  LENGTH R5 R1
  ADDK R4 R5 K22 [1]
  DUPTABLE R5 K2 [{"name", "selectable"}]
  SETTABLEKS R3 R5 K0 ["name"]
  LOADB R6 0
  SETTABLEKS R6 R5 K1 ["selectable"]
  SETTABLE R5 R1 R4
  GETIMPORT R4 K24 [pairs]
  MOVE R5 R2
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETUPVAL R11 1
  GETTABLEKS R13 R0 K15 ["props"]
  GETTABLEKS R12 R13 K18 ["Localization"]
  CALL R11 1 1
  GETTABLE R10 R11 R8
  ORK R9 R10 K17 [""]
  LENGTH R11 R1
  ADDK R10 R11 K22 [1]
  DUPTABLE R11 K5 [{"name", "selectable", "type"}]
  SETTABLEKS R9 R11 K0 ["name"]
  LOADB R12 1
  SETTABLEKS R12 R11 K1 ["selectable"]
  SETTABLEKS R8 R11 K4 ["type"]
  SETTABLE R11 R1 R10
  FORGLOOP R4 2 [-20]
  RETURN R1 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["isBuyableMarketplaceAsset"]
  GETTABLEKS R3 R0 K1 ["props"]
  GETTABLEKS R2 R3 K2 ["assetTypeEnum"]
  CALL R1 1 1
  JUMPIFNOT R1 [+2]
  LOADB R1 1
  RETURN R1 1
  LOADN R1 0
  GETIMPORT R2 K4 [pairs]
  NAMECALL R3 R0 K5 ["getSelectorItems"]
  CALL R3 1 -1
  CALL R2 -1 3
  FORGPREP_NEXT R2
  GETTABLEKS R7 R6 K6 ["selectable"]
  JUMPIFNOT R7 [+1]
  ADDK R1 R1 K7 [1]
  FORGLOOP R2 2 [-5]
  JUMPIFEQKN R1 K8 [2] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_3:
  GETUPVAL R2 0
  LOADNIL R4
  MOVE R5 R0
  MOVE R6 R1
  NAMECALL R2 R2 K0 ["renderContent"]
  CALL R2 4 -1
  RETURN R2 -1

PROTO_4:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["goToNextScreen"]
  CALL R0 0 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETUPVAL R3 0
  JUMPIFNOT R3 [+10]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K2 ["assetTypeEnum"]
  GETIMPORT R5 K6 [Enum.AssetType.Animation]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K7 ["createElement"]
  LOADK R5 K8 ["Frame"]
  DUPTABLE R6 K13 [{"BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Size"}]
  GETTABLEKS R8 R2 K14 ["typeSelection"]
  GETTABLEKS R7 R8 K15 ["background"]
  SETTABLEKS R7 R6 K9 ["BackgroundColor3"]
  LOADN R7 0
  SETTABLEKS R7 R6 K10 ["BackgroundTransparency"]
  LOADN R7 0
  SETTABLEKS R7 R6 K11 ["BorderSizePixel"]
  GETTABLEKS R7 R1 K12 ["Size"]
  SETTABLEKS R7 R6 K12 ["Size"]
  DUPTABLE R7 K20 [{"AssetThumbnailPreview", "DefaultThumbnailPreview", "AssetTypeSelector", "Footer"}]
  NOT R8 R3
  JUMPIFNOT R8 [+30]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K24 [{"Size", "Position", "titleHeight", "titlePadding"}]
  GETIMPORT R11 K27 [UDim2.new]
  LOADN R12 0
  LOADN R13 150
  LOADN R14 0
  LOADN R15 186
  CALL R11 4 1
  SETTABLEKS R11 R10 K12 ["Size"]
  GETIMPORT R11 K27 [UDim2.new]
  LOADK R12 K28 [0.5]
  LOADN R13 181
  LOADN R14 0
  LOADN R15 48
  CALL R11 4 1
  SETTABLEKS R11 R10 K21 ["Position"]
  LOADN R11 24
  SETTABLEKS R11 R10 K22 ["titleHeight"]
  LOADN R11 12
  SETTABLEKS R11 R10 K23 ["titlePadding"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K16 ["AssetThumbnailPreview"]
  MOVE R8 R3
  JUMPIFNOT R8 [+24]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K29 [{"Size", "Position"}]
  GETIMPORT R11 K27 [UDim2.new]
  LOADN R12 0
  LOADN R13 150
  LOADN R14 0
  LOADN R15 186
  CALL R11 4 1
  SETTABLEKS R11 R10 K12 ["Size"]
  GETIMPORT R11 K27 [UDim2.new]
  LOADK R12 K28 [0.5]
  LOADN R13 181
  LOADN R14 0
  LOADN R15 48
  CALL R11 4 1
  SETTABLEKS R11 R10 K21 ["Position"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K17 ["DefaultThumbnailPreview"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K34 [{"Position", "height", "width", "assetTypeEnum", "onAssetTypeSelected", "items"}]
  GETIMPORT R11 K27 [UDim2.new]
  LOADK R12 K28 [0.5]
  LOADN R13 56
  LOADN R14 0
  LOADN R15 54
  CALL R11 4 1
  SETTABLEKS R11 R10 K21 ["Position"]
  LOADN R11 40
  SETTABLEKS R11 R10 K30 ["height"]
  LOADN R11 144
  SETTABLEKS R11 R10 K31 ["width"]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K2 ["assetTypeEnum"]
  SETTABLEKS R11 R10 K2 ["assetTypeEnum"]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K32 ["onAssetTypeSelected"]
  SETTABLEKS R11 R10 K32 ["onAssetTypeSelected"]
  NAMECALL R11 R0 K35 ["getSelectorItems"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K33 ["items"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K18 ["AssetTypeSelector"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["createElement"]
  LOADK R9 K8 ["Frame"]
  DUPTABLE R10 K37 [{"Size", "Position", "BackgroundColor3", "BorderColor3"}]
  GETIMPORT R11 K27 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  LOADN R15 62
  CALL R11 4 1
  SETTABLEKS R11 R10 K12 ["Size"]
  GETIMPORT R11 K27 [UDim2.new]
  LOADN R12 0
  LOADN R13 0
  LOADN R14 1
  LOADN R15 194
  CALL R11 4 1
  SETTABLEKS R11 R10 K21 ["Position"]
  GETTABLEKS R13 R2 K14 ["typeSelection"]
  GETTABLEKS R12 R13 K38 ["configFooter"]
  GETTABLEKS R11 R12 K15 ["background"]
  SETTABLEKS R11 R10 K9 ["BackgroundColor3"]
  GETTABLEKS R13 R2 K14 ["typeSelection"]
  GETTABLEKS R12 R13 K38 ["configFooter"]
  GETTABLEKS R11 R12 K39 ["border"]
  SETTABLEKS R11 R10 K36 ["BorderColor3"]
  DUPTABLE R11 K44 [{"UIListLayout", "UIPadding", "CancelButton", "NextButton"}]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["createElement"]
  LOADK R13 K40 ["UIListLayout"]
  DUPTABLE R14 K49 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R15 K51 [UDim.new]
  LOADN R16 0
  LOADN R17 24
  CALL R15 2 1
  SETTABLEKS R15 R14 K45 ["Padding"]
  GETIMPORT R15 K53 [Enum.FillDirection.Horizontal]
  SETTABLEKS R15 R14 K46 ["FillDirection"]
  GETIMPORT R15 K55 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R15 R14 K47 ["HorizontalAlignment"]
  GETIMPORT R15 K57 [Enum.VerticalAlignment.Center]
  SETTABLEKS R15 R14 K48 ["VerticalAlignment"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K40 ["UIListLayout"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["createElement"]
  LOADK R13 K41 ["UIPadding"]
  DUPTABLE R14 K59 [{"PaddingRight"}]
  GETIMPORT R15 K51 [UDim.new]
  LOADN R16 0
  LOADN R17 24
  CALL R15 2 1
  SETTABLEKS R15 R14 K58 ["PaddingRight"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K41 ["UIPadding"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K63 [{"Size", "LayoutOrder", "titleText", "onClick"}]
  GETIMPORT R15 K27 [UDim2.new]
  LOADN R16 0
  LOADN R17 120
  LOADN R18 0
  LOADN R19 32
  CALL R15 4 1
  SETTABLEKS R15 R14 K12 ["Size"]
  LOADN R15 0
  SETTABLEKS R15 R14 K60 ["LayoutOrder"]
  LOADK R15 K64 ["Cancel"]
  SETTABLEKS R15 R14 K61 ["titleText"]
  GETTABLEKS R15 R1 K65 ["onClose"]
  SETTABLEKS R15 R14 K62 ["onClick"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K42 ["CancelButton"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K7 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K67 [{"Size", "LayoutOrder", "titleText", "isPrimary", "onClick"}]
  GETIMPORT R15 K27 [UDim2.new]
  LOADN R16 0
  LOADN R17 120
  LOADN R18 0
  LOADN R19 32
  CALL R15 4 1
  SETTABLEKS R15 R14 K12 ["Size"]
  LOADN R15 1
  SETTABLEKS R15 R14 K60 ["LayoutOrder"]
  LOADK R15 K68 ["Next"]
  SETTABLEKS R15 R14 K61 ["titleText"]
  LOADB R15 1
  SETTABLEKS R15 R14 K66 ["isPrimary"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R0
  SETTABLEKS R15 R14 K62 ["onClick"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K43 ["NextButton"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K19 ["Footer"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_7:
  MOVE R2 R0
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R0 R2
  DUPTABLE R2 K5 [{"instances", "currentScreen", "screenFlowType", "allowedAssetTypesForRelease", "assetTypeEnum"}]
  GETTABLEKS R3 R0 K0 ["instances"]
  SETTABLEKS R3 R2 K0 ["instances"]
  GETTABLEKS R3 R0 K1 ["currentScreen"]
  SETTABLEKS R3 R2 K1 ["currentScreen"]
  GETTABLEKS R3 R0 K2 ["screenFlowType"]
  SETTABLEKS R3 R2 K2 ["screenFlowType"]
  GETTABLEKS R3 R0 K3 ["allowedAssetTypesForRelease"]
  SETTABLEKS R3 R2 K3 ["allowedAssetTypesForRelease"]
  GETTABLEKS R3 R0 K4 ["assetTypeEnum"]
  SETTABLEKS R3 R2 K4 ["assetTypeEnum"]
  RETURN R2 1

PROTO_8:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_10:
  DUPTABLE R1 K2 [{"goToNextScreen", "onAssetTypeSelected"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["goToNextScreen"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["onAssetTypeSelected"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R5 R1 K8 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K9 ["Core"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K11 ["ContextHelper"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R5 K12 ["AssetConfigConstants"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R5 K13 ["AssetConfigUtil"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R5 K14 ["getAllowedAssetTypeEnums"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K9 ["Core"]
  GETTABLEKS R12 R13 K15 ["Localization"]
  GETTABLEKS R11 R12 K16 ["getLocalizedAssetTextMap"]
  CALL R10 1 1
  GETTABLEKS R12 R0 K9 ["Core"]
  GETTABLEKS R11 R12 K17 ["Components"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R13 R11 K18 ["NavButton"]
  CALL R12 1 1
  GETIMPORT R13 K5 [require]
  GETTABLEKS R15 R11 K19 ["AssetConfiguration"]
  GETTABLEKS R14 R15 K20 ["AssetThumbnailPreview"]
  CALL R13 1 1
  GETIMPORT R14 K5 [require]
  GETTABLEKS R16 R11 K19 ["AssetConfiguration"]
  GETTABLEKS R15 R16 K21 ["DefaultThumbnailPreview"]
  CALL R14 1 1
  GETIMPORT R15 K5 [require]
  GETTABLEKS R17 R11 K19 ["AssetConfiguration"]
  GETTABLEKS R16 R17 K22 ["AssetTypeSelector"]
  CALL R15 1 1
  GETIMPORT R16 K24 [game]
  LOADK R18 K25 ["UseDefaultThumbnailForAnimation"]
  NAMECALL R16 R16 K26 ["GetFastFlag"]
  CALL R16 2 1
  GETTABLEKS R18 R0 K9 ["Core"]
  GETTABLEKS R17 R18 K27 ["Actions"]
  GETIMPORT R18 K5 [require]
  GETTABLEKS R19 R17 K28 ["SetCurrentScreen"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R20 R17 K29 ["SetUploadAssetType"]
  CALL R19 1 1
  GETTABLEKS R21 R0 K9 ["Core"]
  GETTABLEKS R20 R21 K30 ["Thunks"]
  GETIMPORT R21 K5 [require]
  GETTABLEKS R23 R20 K19 ["AssetConfiguration"]
  GETTABLEKS R22 R23 K31 ["GoToNextScreen"]
  CALL R21 1 1
  GETTABLEKS R22 R6 K32 ["withLocalization"]
  GETTABLEKS R23 R4 K33 ["ContextServices"]
  GETTABLEKS R24 R23 K34 ["withContext"]
  GETIMPORT R25 K5 [require]
  GETTABLEKS R29 R0 K9 ["Core"]
  GETTABLEKS R28 R29 K10 ["Util"]
  GETTABLEKS R27 R28 K35 ["SharedFlags"]
  GETTABLEKS R26 R27 K36 ["getFFlagToolboxCleanupLegacyContext"]
  CALL R25 1 1
  GETTABLEKS R26 R2 K37 ["PureComponent"]
  LOADK R28 K38 ["AssetTypeSelection"]
  NAMECALL R26 R26 K39 ["extend"]
  CALL R26 2 1
  DUPCLOSURE R27 K40 [PROTO_0]
  SETTABLEKS R27 R26 K41 ["didMount"]
  DUPCLOSURE R27 K42 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R27 R26 K43 ["getSelectorItems"]
  DUPCLOSURE R27 K44 [PROTO_2]
  CAPTURE VAL R8
  SETTABLEKS R27 R26 K45 ["canSkip"]
  MOVE R27 R25
  CALL R27 0 1
  JUMPIF R27 [+4]
  DUPCLOSURE R27 K46 [PROTO_4]
  CAPTURE VAL R22
  SETTABLEKS R27 R26 K47 ["render"]
  MOVE R28 R25
  CALL R28 0 1
  JUMPIFNOT R28 [+2]
  LOADK R27 K47 ["render"]
  JUMP [+1]
  LOADK R27 K48 ["renderContent"]
  DUPCLOSURE R28 K49 [PROTO_6]
  CAPTURE VAL R16
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R12
  SETTABLE R28 R26 R27
  DUPCLOSURE R27 K50 [PROTO_7]
  DUPCLOSURE R28 K51 [PROTO_10]
  CAPTURE VAL R21
  CAPTURE VAL R19
  MOVE R29 R24
  DUPTABLE R30 K53 [{"Stylizer", "Localization"}]
  GETTABLEKS R31 R23 K52 ["Stylizer"]
  SETTABLEKS R31 R30 K52 ["Stylizer"]
  GETTABLEKS R31 R23 K15 ["Localization"]
  SETTABLEKS R31 R30 K15 ["Localization"]
  CALL R29 1 1
  MOVE R30 R26
  CALL R29 1 1
  MOVE R26 R29
  GETTABLEKS R29 R3 K54 ["connect"]
  MOVE R30 R27
  MOVE R31 R28
  CALL R29 2 1
  MOVE R30 R26
  CALL R29 1 -1
  RETURN R29 -1
