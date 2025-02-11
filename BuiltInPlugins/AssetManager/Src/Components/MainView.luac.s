PROTO_0:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["getIconForCurrentTheme"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["IconEnums"]
  GETTABLEKS R5 R6 K2 ["BlankFolder"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K3 ["Height"]
  DUPTABLE R6 K9 [{"text", "icon", "Screen", "children", "Parent"}]
  LOADK R9 K10 ["Folders"]
  GETTABLEKS R10 R0 K11 ["Path"]
  NAMECALL R7 R2 K12 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K4 ["text"]
  DUPTABLE R7 K16 [{"Image", "Size", "ImageColor3"}]
  SETTABLEKS R4 R7 K13 ["Image"]
  GETIMPORT R8 K19 [UDim2.new]
  LOADN R9 0
  MOVE R10 R5
  LOADN R11 0
  MOVE R12 R5
  CALL R8 4 1
  SETTABLEKS R8 R7 K14 ["Size"]
  GETTABLEKS R8 R3 K20 ["ColorIcon"]
  SETTABLEKS R8 R7 K15 ["ImageColor3"]
  SETTABLEKS R7 R6 K5 ["icon"]
  GETTABLEKS R7 R0 K11 ["Path"]
  SETTABLEKS R7 R6 K6 ["Screen"]
  NEWTABLE R7 0 0
  SETTABLEKS R7 R6 K7 ["children"]
  SETTABLEKS R1 R6 K8 ["Parent"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R7 R1 K7 ["children"]
  GETTABLEKS R8 R0 K21 ["LayoutOrder"]
  SETTABLE R6 R7 R8
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showOverlay"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["showOverlay"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showOverlay"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showOverlay"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K2 [{"showAssetPreview", "assetPreview"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showAssetPreview"]
  LOADNIL R3
  SETTABLEKS R3 R2 K1 ["assetPreview"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  JUMPIF R1 [+1]
  RETURN R0 0
  FASTCALL1 TYPE R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K1 [type]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["table"] [+27]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K7 [{"AssetPreviewData", "OnAssetPreviewClose", "AssetData"}]
  SETTABLEKS R1 R4 K4 ["AssetPreviewData"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K8 ["closeAssetPreview"]
  SETTABLEKS R5 R4 K5 ["OnAssetPreviewClose"]
  SETTABLEKS R0 R4 K6 ["AssetData"]
  CALL R2 2 1
  GETUPVAL R3 2
  DUPTABLE R5 K11 [{"showAssetPreview", "assetPreview"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K9 ["showAssetPreview"]
  SETTABLEKS R2 R5 K10 ["assetPreview"]
  NAMECALL R3 R3 K12 ["setState"]
  CALL R3 2 0
  RETURN R0 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K13 ["props"]
  GETTABLEKS R2 R3 K14 ["Localization"]
  LOADK R5 K15 ["MainView"]
  LOADK R6 K16 ["AssetPreviewError"]
  NAMECALL R3 R2 K17 ["getText"]
  CALL R3 3 1
  GETIMPORT R4 K19 [warn]
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["API"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K3 ["dispatchLoadAllAliases"]
  MOVE R3 R2
  MOVE R4 R1
  GETIMPORT R5 K7 [Enum.AssetType.Lua]
  CALL R3 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R1 R0 K1 ["API"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K3 ["dispatchLoadAllAliases"]
  MOVE R3 R2
  MOVE R4 R1
  GETIMPORT R5 K7 [Enum.AssetType.Lua]
  LOADB R6 1
  CALL R3 3 0
  RETURN R0 0

PROTO_7:
  DUPTABLE R1 K4 [{"currentScreen", "showAssetPreview", "showOverlay", "fileExplorerData"}]
  LOADK R2 K5 [""]
  SETTABLEKS R2 R1 K0 ["currentScreen"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["showAssetPreview"]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["showOverlay"]
  DUPTABLE R2 K9 [{"text", "Screen", "children"}]
  LOADK R3 K10 ["Game 1"]
  SETTABLEKS R3 R2 K6 ["text"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K11 ["MAIN"]
  GETTABLEKS R3 R4 K12 ["Path"]
  SETTABLEKS R3 R2 K7 ["Screen"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K8 ["children"]
  SETTABLEKS R2 R1 K3 ["fileExplorerData"]
  SETTABLEKS R1 R0 K13 ["state"]
  LOADNIL R1
  SETTABLEKS R1 R0 K14 ["gamePublishedConnection"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K15 ["openOverlay"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K16 ["closeOverlay"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K17 ["closeAssetPreview"]
  NEWCLOSURE R1 P3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K18 ["openAssetPreview"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K19 ["getScripts"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K20 ["hasScripts"]
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["dispatchGetUniverseConfiguration"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K2 ["API"]
  NAMECALL R1 R1 K3 ["get"]
  CALL R1 1 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["hasScripts"]
  CALL R1 0 0
  GETIMPORT R2 K2 [game]
  GETTABLEKS R1 R2 K3 ["GameId"]
  JUMPIFEQKN R1 K4 [0] [+13]
  GETTABLEKS R2 R0 K5 ["props"]
  GETTABLEKS R1 R2 K6 ["dispatchGetUniverseConfiguration"]
  GETTABLEKS R3 R0 K5 ["props"]
  GETTABLEKS R2 R3 K7 ["API"]
  NAMECALL R2 R2 K8 ["get"]
  CALL R2 1 -1
  CALL R1 -1 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K9 ["GamePublishFinished"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K10 ["connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K11 ["gamePublishedConnection"]
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["gamePublishedConnection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["gamePublishedConnection"]
  NAMECALL R1 R1 K1 ["disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["HasLinkedScripts"]
  GETUPVAL R4 0
  JUMPIFNOTEQ R4 R3 [+50]
  GETIMPORT R4 K4 [pairs]
  GETUPVAL R5 1
  CALL R4 1 3
  FORGPREP_NEXT R4
  GETTABLEKS R9 R8 K5 ["Path"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K6 ["MAIN"]
  GETTABLEKS R10 R11 K5 ["Path"]
  JUMPIFEQ R9 R10 [+32]
  GETTABLEKS R9 R8 K5 ["Path"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["SCRIPTS"]
  GETTABLEKS R10 R11 K5 ["Path"]
  JUMPIFNOTEQ R9 R10 [+2]
  JUMPIF R3 [+9]
  GETTABLEKS R9 R8 K5 ["Path"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K7 ["SCRIPTS"]
  GETTABLEKS R10 R11 K5 ["Path"]
  JUMPIFEQ R9 R10 [+13]
  GETUPVAL R9 2
  MOVE R10 R8
  GETTABLEKS R12 R0 K8 ["state"]
  GETTABLEKS R11 R12 K9 ["fileExplorerData"]
  MOVE R12 R2
  GETTABLEKS R14 R1 K10 ["Stylizer"]
  GETTABLEKS R13 R14 K11 ["TreeViewItem"]
  CALL R9 4 0
  FORGLOOP R4 2 [-41]
  JUMPIFNOT R3 [+1]
  SETUPVAL R3 0
  GETTABLEKS R4 R1 K12 ["API"]
  NAMECALL R4 R4 K13 ["get"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K14 ["CurrentScreen"]
  GETTABLEKS R7 R0 K8 ["state"]
  GETTABLEKS R6 R7 K15 ["currentScreen"]
  JUMPIFEQ R5 R6 [+12]
  GETTABLEKS R6 R1 K16 ["dispatchOnScreenChange"]
  MOVE R7 R4
  MOVE R8 R5
  CALL R6 2 0
  DUPTABLE R8 K17 [{"currentScreen"}]
  SETTABLEKS R5 R8 K15 ["currentScreen"]
  NAMECALL R6 R0 K18 ["setState"]
  CALL R6 2 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  LOADB R2 0
  LOADB R3 0
  GETIMPORT R4 K3 [Enum.StudioCloseMode.None]
  NAMECALL R0 R0 K4 ["ShowSaveOrPublishPlaceToRoblox"]
  CALL R0 4 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["UniverseName"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["new"]
  CALL R5 0 1
  GETTABLEKS R7 R0 K5 ["state"]
  GETTABLEKS R6 R7 K6 ["fileExplorerData"]
  SETTABLEKS R4 R6 K7 ["text"]
  JUMPIFEQKS R4 K8 [""] [+5]
  GETUPVAL R6 1
  JUMPIF R6 [+2]
  LOADB R6 1
  SETUPVAL R6 1
  GETIMPORT R8 K10 [game]
  GETTABLEKS R7 R8 K11 ["GameId"]
  JUMPIFNOTEQKN R7 K12 [0] [+2]
  LOADB R6 0 +1
  LOADB R6 1
  LOADK R9 K13 ["MainView"]
  LOADK R10 K14 ["SaveText"]
  NAMECALL R7 R3 K15 ["getText"]
  CALL R7 3 1
  GETUPVAL R8 2
  MOVE R9 R7
  GETTABLEKS R10 R2 K16 ["FontSizeLarge"]
  GETTABLEKS R11 R2 K17 ["Font"]
  GETIMPORT R12 K19 [Vector2.new]
  GETTABLEKS R15 R2 K13 ["MainView"]
  GETTABLEKS R14 R15 K20 ["PublishText"]
  GETTABLEKS R13 R14 K21 ["Width"]
  LOADK R14 K22 [∞]
  CALL R12 2 -1
  CALL R8 -1 1
  LOADK R11 K13 ["MainView"]
  LOADK R12 K23 ["ButtonText"]
  NAMECALL R9 R3 K15 ["getText"]
  CALL R9 3 1
  LOADK R12 K13 ["MainView"]
  LOADK R13 K24 ["SaveToRobloxButtonText"]
  NAMECALL R10 R3 K15 ["getText"]
  CALL R10 3 1
  MOVE R9 R10
  GETUPVAL R10 2
  MOVE R11 R9
  GETTABLEKS R12 R2 K16 ["FontSizeLarge"]
  GETTABLEKS R13 R2 K17 ["Font"]
  CALL R10 3 1
  GETTABLEKS R11 R1 K25 ["RecentViewToggled"]
  GETTABLEKS R12 R1 K26 ["RecentAssets"]
  GETIMPORT R14 K28 [next]
  MOVE R15 R12
  CALL R14 1 1
  JUMPIFNOTEQKNIL R14 [+2]
  LOADB R13 0 +1
  LOADB R13 1
  GETTABLEKS R17 R2 K29 ["TopBar"]
  GETTABLEKS R16 R17 K30 ["Height"]
  GETTABLEKS R18 R2 K31 ["NavBar"]
  GETTABLEKS R17 R18 K30 ["Height"]
  ADD R15 R16 R17
  JUMPIFNOT R13 [+7]
  GETTABLEKS R18 R2 K32 ["RecentView"]
  GETTABLEKS R17 R18 K33 ["Bar"]
  GETTABLEKS R16 R17 K30 ["Height"]
  JUMPIF R16 [+1]
  LOADN R16 0
  ADD R14 R15 R16
  GETTABLEKS R17 R2 K29 ["TopBar"]
  GETTABLEKS R16 R17 K30 ["Height"]
  GETTABLEKS R18 R2 K31 ["NavBar"]
  GETTABLEKS R17 R18 K30 ["Height"]
  ADD R15 R16 R17
  GETTABLEKS R18 R0 K5 ["state"]
  GETTABLEKS R17 R18 K34 ["showOverlay"]
  NOT R16 R17
  JUMPIFNOT R16 [+5]
  GETTABLEKS R18 R0 K5 ["state"]
  GETTABLEKS R17 R18 K35 ["showAssetPreview"]
  NOT R16 R17
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K36 ["createElement"]
  LOADK R18 K37 ["Frame"]
  DUPTABLE R19 K42 [{"Size", "Position", "BackgroundTransparency", "BackgroundColor3"}]
  GETIMPORT R20 K44 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K38 ["Size"]
  GETIMPORT R20 K44 [UDim2.new]
  LOADN R21 0
  LOADN R22 0
  LOADN R23 0
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K39 ["Position"]
  LOADN R20 0
  SETTABLEKS R20 R19 K40 ["BackgroundTransparency"]
  GETTABLEKS R20 R2 K45 ["BackgroundColor"]
  SETTABLEKS R20 R19 K41 ["BackgroundColor3"]
  DUPTABLE R20 K54 [{"UseText", "PublishButton", "MainViewLayout", "ExplorerOverlay", "AssetPreview", "TopBar", "NavBar", "AssetGridView", "RecentsAssetGridView", "RecentlyImportedView"}]
  NOT R21 R6
  JUMPIFNOT R21 [+67]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K36 ["createElement"]
  LOADK R22 K55 ["TextLabel"]
  DUPTABLE R23 K63 [{"Size", "Position", "AnchorPoint", "LayoutOrder", "BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "TextXAlignment", "TextWrapped"}]
  GETIMPORT R24 K44 [UDim2.new]
  LOADN R25 0
  GETTABLEKS R26 R8 K64 ["X"]
  LOADN R27 0
  GETTABLEKS R28 R8 K65 ["Y"]
  CALL R24 4 1
  SETTABLEKS R24 R23 K38 ["Size"]
  GETIMPORT R24 K44 [UDim2.new]
  LOADK R25 K66 [0.5]
  LOADN R26 0
  LOADN R27 0
  GETTABLEKS R30 R2 K13 ["MainView"]
  GETTABLEKS R29 R30 K20 ["PublishText"]
  GETTABLEKS R28 R29 K67 ["Offset"]
  CALL R24 4 1
  SETTABLEKS R24 R23 K39 ["Position"]
  GETIMPORT R24 K19 [Vector2.new]
  LOADK R25 K66 [0.5]
  LOADK R26 K66 [0.5]
  CALL R24 2 1
  SETTABLEKS R24 R23 K56 ["AnchorPoint"]
  NAMECALL R24 R5 K68 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K57 ["LayoutOrder"]
  LOADN R24 1
  SETTABLEKS R24 R23 K40 ["BackgroundTransparency"]
  GETTABLEKS R24 R2 K17 ["Font"]
  SETTABLEKS R24 R23 K17 ["Font"]
  SETTABLEKS R7 R23 K58 ["Text"]
  GETTABLEKS R24 R2 K69 ["TextColor"]
  SETTABLEKS R24 R23 K59 ["TextColor3"]
  GETTABLEKS R24 R2 K16 ["FontSizeLarge"]
  SETTABLEKS R24 R23 K60 ["TextSize"]
  GETIMPORT R24 K72 [Enum.TextXAlignment.Center]
  SETTABLEKS R24 R23 K61 ["TextXAlignment"]
  LOADB R24 1
  SETTABLEKS R24 R23 K62 ["TextWrapped"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K46 ["UseText"]
  NOT R21 R6
  JUMPIFNOT R21 [+79]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K36 ["createElement"]
  GETUPVAL R22 4
  DUPTABLE R23 K75 [{"Style", "Text", "Size", "Position", "AnchorPoint", "LayoutOrder", "OnClick"}]
  LOADK R24 K76 ["RoundPrimary"]
  SETTABLEKS R24 R23 K73 ["Style"]
  SETTABLEKS R9 R23 K58 ["Text"]
  GETIMPORT R24 K44 [UDim2.new]
  LOADN R25 0
  GETTABLEKS R27 R10 K64 ["X"]
  GETTABLEKS R30 R2 K13 ["MainView"]
  GETTABLEKS R29 R30 K47 ["PublishButton"]
  GETTABLEKS R28 R29 K77 ["PaddingX"]
  ADD R26 R27 R28
  LOADN R27 0
  GETTABLEKS R29 R10 K65 ["Y"]
  GETTABLEKS R32 R2 K13 ["MainView"]
  GETTABLEKS R31 R32 K47 ["PublishButton"]
  GETTABLEKS R30 R31 K78 ["PaddingY"]
  ADD R28 R29 R30
  CALL R24 4 1
  SETTABLEKS R24 R23 K38 ["Size"]
  GETIMPORT R24 K44 [UDim2.new]
  LOADK R25 K66 [0.5]
  LOADN R26 0
  LOADN R27 0
  GETTABLEKS R30 R2 K13 ["MainView"]
  GETTABLEKS R29 R30 K47 ["PublishButton"]
  GETTABLEKS R28 R29 K67 ["Offset"]
  CALL R24 4 1
  SETTABLEKS R24 R23 K39 ["Position"]
  GETIMPORT R24 K19 [Vector2.new]
  LOADK R25 K66 [0.5]
  LOADK R26 K66 [0.5]
  CALL R24 2 1
  SETTABLEKS R24 R23 K56 ["AnchorPoint"]
  NAMECALL R24 R5 K68 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K57 ["LayoutOrder"]
  DUPCLOSURE R24 K79 [PROTO_12]
  CAPTURE UPVAL U5
  SETTABLEKS R24 R23 K74 ["OnClick"]
  NEWTABLE R24 0 1
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K36 ["createElement"]
  GETUPVAL R26 6
  DUPTABLE R27 K81 [{"Cursor"}]
  LOADK R28 K82 ["PointingHand"]
  SETTABLEKS R28 R27 K80 ["Cursor"]
  CALL R25 2 -1
  SETLIST R24 R25 -1 [1]
  CALL R21 3 1
  SETTABLEKS R21 R20 K47 ["PublishButton"]
  MOVE R21 R6
  JUMPIFNOT R21 [+18]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K36 ["createElement"]
  LOADK R22 K83 ["UIListLayout"]
  DUPTABLE R23 K87 [{"FillDirection", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R24 K89 [Enum.FillDirection.Vertical]
  SETTABLEKS R24 R23 K84 ["FillDirection"]
  GETIMPORT R24 K90 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R24 R23 K85 ["SortOrder"]
  GETIMPORT R24 K92 [Enum.VerticalAlignment.Top]
  SETTABLEKS R24 R23 K86 ["VerticalAlignment"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K48 ["MainViewLayout"]
  MOVE R21 R6
  JUMPIFNOT R21 [+25]
  GETTABLEKS R22 R0 K5 ["state"]
  GETTABLEKS R21 R22 K34 ["showOverlay"]
  JUMPIFNOT R21 [+20]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K36 ["createElement"]
  GETUPVAL R22 7
  DUPTABLE R23 K95 [{"FileExplorerData", "CloseOverlay"}]
  NEWTABLE R24 0 1
  GETTABLEKS R26 R0 K5 ["state"]
  GETTABLEKS R25 R26 K6 ["fileExplorerData"]
  SETLIST R24 R25 1 [1]
  SETTABLEKS R24 R23 K93 ["FileExplorerData"]
  GETTABLEKS R24 R0 K96 ["closeOverlay"]
  SETTABLEKS R24 R23 K94 ["CloseOverlay"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K49 ["ExplorerOverlay"]
  MOVE R21 R6
  JUMPIFNOT R21 [+9]
  GETTABLEKS R22 R0 K5 ["state"]
  GETTABLEKS R21 R22 K35 ["showAssetPreview"]
  JUMPIFNOT R21 [+4]
  GETTABLEKS R22 R0 K5 ["state"]
  GETTABLEKS R21 R22 K97 ["assetPreview"]
  SETTABLEKS R21 R20 K50 ["AssetPreview"]
  MOVE R21 R6
  JUMPIFNOT R21 [+36]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K36 ["createElement"]
  GETUPVAL R22 8
  DUPTABLE R23 K100 [{"Size", "LayoutOrder", "OnOverlayActivated", "Enabled"}]
  GETIMPORT R24 K44 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  GETTABLEKS R30 R2 K29 ["TopBar"]
  GETTABLEKS R29 R30 K101 ["Button"]
  GETTABLEKS R28 R29 K38 ["Size"]
  CALL R24 4 1
  SETTABLEKS R24 R23 K38 ["Size"]
  NAMECALL R24 R5 K68 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K57 ["LayoutOrder"]
  GETTABLEKS R24 R0 K102 ["openOverlay"]
  SETTABLEKS R24 R23 K98 ["OnOverlayActivated"]
  GETTABLEKS R26 R0 K5 ["state"]
  GETTABLEKS R25 R26 K34 ["showOverlay"]
  NOT R24 R25
  SETTABLEKS R24 R23 K99 ["Enabled"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K29 ["TopBar"]
  MOVE R21 R6
  JUMPIFNOT R21 [+23]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K36 ["createElement"]
  GETUPVAL R22 9
  DUPTABLE R23 K103 [{"Size", "LayoutOrder"}]
  GETIMPORT R24 K44 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 0
  GETTABLEKS R29 R2 K31 ["NavBar"]
  GETTABLEKS R28 R29 K30 ["Height"]
  CALL R24 4 1
  SETTABLEKS R24 R23 K38 ["Size"]
  NAMECALL R24 R5 K68 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K57 ["LayoutOrder"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K31 ["NavBar"]
  GETUPVAL R22 10
  NOT R21 R22
  JUMPIFNOT R21 [+43]
  MOVE R21 R6
  JUMPIFNOT R21 [+41]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K36 ["createElement"]
  GETUPVAL R22 11
  DUPTABLE R23 K106 [{"Size", "LayoutOrder", "OnOpenAssetPreview", "OnAssetPreviewClose", "Enabled"}]
  GETIMPORT R24 K44 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 1
  GETTABLEKS R32 R2 K29 ["TopBar"]
  GETTABLEKS R31 R32 K101 ["Button"]
  GETTABLEKS R30 R31 K38 ["Size"]
  MINUS R29 R30
  GETTABLEKS R31 R2 K31 ["NavBar"]
  GETTABLEKS R30 R31 K30 ["Height"]
  SUB R28 R29 R30
  CALL R24 4 1
  SETTABLEKS R24 R23 K38 ["Size"]
  NAMECALL R24 R5 K68 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K57 ["LayoutOrder"]
  GETTABLEKS R24 R0 K107 ["openAssetPreview"]
  SETTABLEKS R24 R23 K104 ["OnOpenAssetPreview"]
  GETTABLEKS R24 R0 K108 ["closeAssetPreview"]
  SETTABLEKS R24 R23 K105 ["OnAssetPreviewClose"]
  SETTABLEKS R16 R23 K99 ["Enabled"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K51 ["AssetGridView"]
  GETUPVAL R21 10
  JUMPIFNOT R21 [+34]
  MOVE R21 R6
  JUMPIFNOT R21 [+32]
  NOT R21 R11
  JUMPIFNOT R21 [+30]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K36 ["createElement"]
  GETUPVAL R22 11
  DUPTABLE R23 K106 [{"Size", "LayoutOrder", "OnOpenAssetPreview", "OnAssetPreviewClose", "Enabled"}]
  GETIMPORT R24 K44 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 1
  MINUS R28 R14
  CALL R24 4 1
  SETTABLEKS R24 R23 K38 ["Size"]
  NAMECALL R24 R5 K68 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K57 ["LayoutOrder"]
  GETTABLEKS R24 R0 K107 ["openAssetPreview"]
  SETTABLEKS R24 R23 K104 ["OnOpenAssetPreview"]
  GETTABLEKS R24 R0 K108 ["closeAssetPreview"]
  SETTABLEKS R24 R23 K105 ["OnAssetPreviewClose"]
  SETTABLEKS R16 R23 K99 ["Enabled"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K52 ["RecentsAssetGridView"]
  GETUPVAL R21 10
  JUMPIFNOT R21 [+40]
  MOVE R21 R13
  JUMPIFNOT R21 [+38]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K36 ["createElement"]
  GETUPVAL R22 12
  DUPTABLE R23 K109 [{"Size", "LayoutOrder", "Enabled"}]
  GETIMPORT R24 K44 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  JUMPIFNOT R11 [+2]
  LOADN R27 1
  JUMP [+1]
  LOADN R27 0
  JUMPIFNOT R11 [+2]
  MINUS R28 R15
  JUMPIF R28 [+6]
  GETTABLEKS R30 R2 K32 ["RecentView"]
  GETTABLEKS R29 R30 K33 ["Bar"]
  GETTABLEKS R28 R29 K30 ["Height"]
  CALL R24 4 1
  SETTABLEKS R24 R23 K38 ["Size"]
  NAMECALL R24 R5 K68 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K57 ["LayoutOrder"]
  GETTABLEKS R26 R0 K5 ["state"]
  GETTABLEKS R25 R26 K34 ["showOverlay"]
  NOT R24 R25
  SETTABLEKS R24 R23 K99 ["Enabled"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K53 ["RecentlyImportedView"]
  CALL R17 3 -1
  RETURN R17 -1

PROTO_14:
  GETTABLEKS R2 R0 K0 ["AssetManagerReducer"]
  DUPTABLE R3 K7 [{"AssetsTable", "CurrentScreen", "UniverseName", "HasLinkedScripts", "RecentAssets", "RecentViewToggled"}]
  GETTABLEKS R4 R2 K8 ["assetsTable"]
  SETTABLEKS R4 R3 K1 ["AssetsTable"]
  GETTABLEKS R5 R0 K9 ["Screen"]
  GETTABLEKS R4 R5 K10 ["currentScreen"]
  SETTABLEKS R4 R3 K2 ["CurrentScreen"]
  GETTABLEKS R4 R2 K11 ["universeName"]
  SETTABLEKS R4 R3 K3 ["UniverseName"]
  GETTABLEKS R4 R2 K12 ["hasLinkedScripts"]
  SETTABLEKS R4 R3 K4 ["HasLinkedScripts"]
  GETTABLEKS R4 R2 K13 ["recentAssets"]
  SETTABLEKS R4 R3 K5 ["RecentAssets"]
  GETTABLEKS R4 R2 K14 ["recentViewToggled"]
  SETTABLEKS R4 R3 K6 ["RecentViewToggled"]
  RETURN R3 1

PROTO_15:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_18:
  DUPTABLE R1 K3 [{"dispatchLoadAllAliases", "dispatchGetUniverseConfiguration", "dispatchOnScreenChange"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["dispatchLoadAllAliases"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["dispatchGetUniverseConfiguration"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["dispatchOnScreenChange"]
  RETURN R1 1

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
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETTABLEKS R6 R3 K11 ["UI"]
  GETTABLEKS R7 R6 K12 ["Button"]
  GETTABLEKS R8 R6 K13 ["HoverArea"]
  GETTABLEKS R9 R3 K14 ["Util"]
  GETTABLEKS R10 R9 K15 ["LayoutOrderIterator"]
  GETTABLEKS R11 R9 K16 ["GetTextSize"]
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K17 ["Src"]
  GETTABLEKS R14 R15 K18 ["Components"]
  GETTABLEKS R13 R14 K19 ["AssetGridContainer"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R16 R0 K17 ["Src"]
  GETTABLEKS R15 R16 K18 ["Components"]
  GETTABLEKS R14 R15 K20 ["AssetPreviewWrapper"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K17 ["Src"]
  GETTABLEKS R16 R17 K18 ["Components"]
  GETTABLEKS R15 R16 K21 ["ExplorerOverlay"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K17 ["Src"]
  GETTABLEKS R17 R18 K18 ["Components"]
  GETTABLEKS R16 R17 K22 ["NavBar"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K17 ["Src"]
  GETTABLEKS R18 R19 K18 ["Components"]
  GETTABLEKS R17 R18 K23 ["RecentlyImportedView"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K17 ["Src"]
  GETTABLEKS R19 R20 K18 ["Components"]
  GETTABLEKS R18 R19 K24 ["TopBar"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R21 R0 K17 ["Src"]
  GETTABLEKS R20 R21 K14 ["Util"]
  GETTABLEKS R19 R20 K25 ["Screens"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R22 R0 K17 ["Src"]
  GETTABLEKS R21 R22 K26 ["Thunks"]
  GETTABLEKS R20 R21 K27 ["LoadAllAliases"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R23 R0 K17 ["Src"]
  GETTABLEKS R22 R23 K26 ["Thunks"]
  GETTABLEKS R21 R22 K28 ["GetUniverseConfiguration"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R24 R0 K17 ["Src"]
  GETTABLEKS R23 R24 K26 ["Thunks"]
  GETTABLEKS R22 R23 K29 ["OnScreenChange"]
  CALL R21 1 1
  GETIMPORT R22 K31 [game]
  LOADK R24 K32 ["StudioPublishService"]
  NAMECALL R22 R22 K33 ["GetService"]
  CALL R22 2 1
  GETTABLEKS R23 R1 K34 ["PureComponent"]
  LOADK R25 K35 ["MainView"]
  NAMECALL R23 R23 K36 ["extend"]
  CALL R23 2 1
  GETIMPORT R24 K31 [game]
  LOADK R26 K37 ["StudioAssetManagerAddRecentlyImportedView"]
  NAMECALL R24 R24 K38 ["GetFastFlag"]
  CALL R24 2 1
  LOADB R25 0
  LOADB R26 0
  GETIMPORT R27 K4 [require]
  GETTABLEKS R30 R0 K17 ["Src"]
  GETTABLEKS R29 R30 K14 ["Util"]
  GETTABLEKS R28 R29 K39 ["ModernIcons"]
  CALL R27 1 1
  DUPCLOSURE R28 K40 [PROTO_0]
  CAPTURE VAL R27
  DUPCLOSURE R29 K41 [PROTO_7]
  CAPTURE VAL R18
  CAPTURE VAL R1
  CAPTURE VAL R13
  SETTABLEKS R29 R23 K42 ["init"]
  DUPCLOSURE R29 K43 [PROTO_9]
  CAPTURE VAL R22
  SETTABLEKS R29 R23 K44 ["didMount"]
  DUPCLOSURE R29 K45 [PROTO_10]
  SETTABLEKS R29 R23 K46 ["willUnmount"]
  NEWCLOSURE R29 P4
  CAPTURE REF R26
  CAPTURE VAL R18
  CAPTURE VAL R28
  SETTABLEKS R29 R23 K47 ["didUpdate"]
  NEWCLOSURE R29 P5
  CAPTURE VAL R10
  CAPTURE REF R25
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R22
  CAPTURE VAL R8
  CAPTURE VAL R14
  CAPTURE VAL R17
  CAPTURE VAL R15
  CAPTURE VAL R24
  CAPTURE VAL R12
  CAPTURE VAL R16
  SETTABLEKS R29 R23 K48 ["render"]
  MOVE R29 R5
  DUPTABLE R30 K52 [{"API", "Stylizer", "Localization"}]
  GETTABLEKS R31 R4 K49 ["API"]
  SETTABLEKS R31 R30 K49 ["API"]
  GETTABLEKS R31 R4 K50 ["Stylizer"]
  SETTABLEKS R31 R30 K50 ["Stylizer"]
  GETTABLEKS R31 R4 K51 ["Localization"]
  SETTABLEKS R31 R30 K51 ["Localization"]
  CALL R29 1 1
  MOVE R30 R23
  CALL R29 1 1
  MOVE R23 R29
  DUPCLOSURE R29 K53 [PROTO_14]
  DUPCLOSURE R30 K54 [PROTO_18]
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R21
  GETTABLEKS R31 R2 K55 ["connect"]
  MOVE R32 R29
  MOVE R33 R30
  CALL R31 2 1
  MOVE R32 R23
  CALL R31 1 -1
  CLOSEUPVALS R25
  RETURN R31 -1
