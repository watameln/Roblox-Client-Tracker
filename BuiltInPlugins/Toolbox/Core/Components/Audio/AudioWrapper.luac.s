PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["state"]
  GETTABLEKS R4 R2 K2 ["selectedCategory"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R2 K2 ["selectedCategory"]
  GETTABLEKS R3 R4 K3 ["name"]
  JUMP [+1]
  LOADNIL R3
  GETTABLEKS R4 R1 K4 ["LogPageView"]
  GETUPVAL R5 0
  DUPTABLE R7 K6 [{"selectedTab", "selectedCategory"}]
  SETTABLEKS R0 R7 K5 ["selectedTab"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["None"]
  SETTABLEKS R8 R7 K2 ["selectedCategory"]
  NAMECALL R5 R5 K8 ["setState"]
  CALL R5 2 0
  MOVE R5 R4
  MOVE R6 R0
  MOVE R7 R3
  CALL R5 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["state"]
  MOVE R3 R0
  JUMPIF R3 [+3]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["None"]
  JUMPIFNOT R0 [+3]
  GETTABLEKS R4 R0 K3 ["name"]
  JUMP [+1]
  LOADNIL R4
  GETTABLEKS R5 R2 K4 ["selectedTab"]
  GETTABLEKS R6 R1 K5 ["LogPageView"]
  GETUPVAL R7 0
  DUPTABLE R9 K7 [{"selectedCategory"}]
  SETTABLEKS R3 R9 K6 ["selectedCategory"]
  NAMECALL R7 R7 K8 ["setState"]
  CALL R7 2 0
  MOVE R7 R6
  MOVE R8 R5
  MOVE R9 R4
  CALL R7 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Network"]
  GETTABLEKS R1 R2 K2 ["networkInterface"]
  GETUPVAL R2 2
  GETUPVAL R3 3
  CALL R0 3 0
  GETUPVAL R0 4
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["Creator"]
  GETTABLEKS R2 R3 K4 ["Id"]
  NAMECALL R0 R0 K5 ["onCallToActionBannerClicked"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["state"]
  GETTABLEKS R2 R1 K2 ["selectedTab"]
  GETTABLEKS R3 R1 K3 ["audioTabSize"]
  GETTABLEKS R4 R0 K4 ["Localization"]
  GETTABLEKS R5 R0 K5 ["Settings"]
  LOADK R7 K6 ["Plugin"]
  NAMECALL R5 R5 K7 ["get"]
  CALL R5 2 1
  GETTABLEKS R6 R0 K8 ["SearchWithOptions"]
  GETTABLEKS R7 R0 K9 ["AssetAnalytics"]
  NAMECALL R7 R7 K7 ["get"]
  CALL R7 1 1
  NEWCLOSURE R8 P0
  CAPTURE VAL R6
  CAPTURE UPVAL U0
  CAPTURE VAL R5
  CAPTURE UPVAL U1
  CAPTURE VAL R7
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K10 ["MUSIC"]
  GETTABLEKS R10 R11 K11 ["name"]
  JUMPIFEQ R2 R10 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K12 ["createElement"]
  LOADK R11 K13 ["Frame"]
  DUPTABLE R12 K18 [{"LayoutOrder", "AutomaticSize", "Size", "BackgroundTransparency"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K14 ["LayoutOrder"]
  GETIMPORT R13 K21 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K15 ["AutomaticSize"]
  GETIMPORT R13 K24 [UDim2.new]
  LOADN R14 1
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K16 ["Size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K17 ["BackgroundTransparency"]
  NEWTABLE R13 2 3
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K12 ["createElement"]
  LOADK R15 K25 ["UIPadding"]
  DUPTABLE R16 K27 [{"PaddingBottom"}]
  GETIMPORT R17 K29 [UDim.new]
  LOADN R18 0
  LOADN R19 11
  CALL R17 2 1
  SETTABLEKS R17 R16 K26 ["PaddingBottom"]
  CALL R14 2 1
  SETLIST R13 R14 1 [1]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K12 ["createElement"]
  LOADK R18 K30 ["UIListLayout"]
  DUPTABLE R19 K35 [{"FillDirection", "SortOrder", "HorizontalAlignment", "Padding"}]
  GETIMPORT R20 K37 [Enum.FillDirection.Vertical]
  SETTABLEKS R20 R19 K31 ["FillDirection"]
  GETIMPORT R20 K38 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K32 ["SortOrder"]
  GETIMPORT R20 K40 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R20 R19 K33 ["HorizontalAlignment"]
  GETIMPORT R20 K29 [UDim.new]
  LOADN R21 0
  LOADN R22 10
  CALL R20 2 1
  SETTABLEKS R20 R19 K34 ["Padding"]
  CALL R17 2 1
  SETTABLEKS R17 R13 K41 ["Layout"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K12 ["createElement"]
  LOADK R15 K13 ["Frame"]
  DUPTABLE R16 K43 [{"LayoutOrder", "Size", "BackgroundColor3"}]
  LOADN R17 1
  SETTABLEKS R17 R16 K14 ["LayoutOrder"]
  SETTABLEKS R3 R16 K16 ["Size"]
  GETTABLEKS R19 R0 K44 ["Stylizer"]
  GETTABLEKS R18 R19 K45 ["audioTabs"]
  GETTABLEKS R17 R18 K46 ["backgroundButtonColor"]
  SETTABLEKS R17 R16 K42 ["BackgroundColor3"]
  NEWTABLE R17 1 1
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K12 ["createElement"]
  LOADK R20 K47 ["UICorner"]
  DUPTABLE R21 K49 [{"CornerRadius"}]
  GETIMPORT R22 K29 [UDim.new]
  LOADN R23 0
  LOADN R24 5
  CALL R22 2 1
  SETTABLEKS R22 R21 K48 ["CornerRadius"]
  CALL R19 2 1
  SETTABLEKS R19 R17 K47 ["UICorner"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K12 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K52 [{"Size", "SelectedTab", "OnTabSelect"}]
  GETIMPORT R21 K24 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 0
  LOADN R25 30
  CALL R21 4 1
  SETTABLEKS R21 R20 K16 ["Size"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K1 ["state"]
  GETTABLEKS R21 R22 K2 ["selectedTab"]
  SETTABLEKS R21 R20 K50 ["SelectedTab"]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K53 ["onTabSelect"]
  SETTABLEKS R21 R20 K51 ["OnTabSelect"]
  CALL R18 2 -1
  SETLIST R17 R18 -1 [1]
  CALL R14 3 1
  SETLIST R13 R14 1 [2]
  JUMPIFNOT R9 [+31]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K54 ["Generator"]
  DUPTABLE R18 K58 [{"LayoutOrder", "Image", "Text", "OnClick"}]
  LOADN R19 2
  SETTABLEKS R19 R18 K14 ["LayoutOrder"]
  GETUPVAL R20 6
  GETTABLEKS R19 R20 K59 ["MONSTER_CAT_BANNER"]
  SETTABLEKS R19 R18 K55 ["Image"]
  LOADK R21 K60 ["Audio"]
  LOADK R22 K61 ["FindTracks"]
  DUPTABLE R23 K63 [{"creatorName"}]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K64 ["Creator"]
  GETTABLEKS R24 R25 K65 ["Name"]
  SETTABLEKS R24 R23 K62 ["creatorName"]
  NAMECALL R19 R4 K66 ["getText"]
  CALL R19 4 1
  SETTABLEKS R19 R18 K56 ["Text"]
  SETTABLEKS R8 R18 K57 ["OnClick"]
  CALL R17 1 1
  JUMP [+1]
  LOADNIL R17
  SETTABLEKS R17 R13 K67 ["CallToActionBanner"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K12 ["createElement"]
  GETUPVAL R15 7
  DUPTABLE R16 K71 [{"LayoutOrder", "Subcategories", "AudioType", "OnCategorySelect"}]
  LOADN R17 3
  SETTABLEKS R17 R16 K14 ["LayoutOrder"]
  GETTABLEKS R17 R0 K72 ["SubcategoryDict"]
  SETTABLEKS R17 R16 K68 ["Subcategories"]
  SETTABLEKS R2 R16 K69 ["AudioType"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K73 ["onCategorySelect"]
  SETTABLEKS R17 R16 K70 ["OnCategorySelect"]
  CALL R14 2 -1
  SETLIST R13 R14 -1 [3]
  CALL R10 3 -1
  RETURN R10 -1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["AbsoluteSize"]
  GETTABLEKS R1 R2 K1 ["X"]
  LOADN R2 119
  JUMPIFNOTLT R1 R2 [+18]
  GETUPVAL R1 0
  DUPTABLE R3 K3 [{"audioTabSize"}]
  GETIMPORT R4 K6 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["AUDIO_TABS_HEIGHT"]
  CALL R4 4 1
  SETTABLEKS R4 R3 K2 ["audioTabSize"]
  NAMECALL R1 R1 K8 ["setState"]
  CALL R1 2 0
  RETURN R0 0
  GETUPVAL R1 0
  DUPTABLE R3 K3 [{"audioTabSize"}]
  GETIMPORT R4 K6 [UDim2.new]
  LOADN R5 0
  LOADN R6 74
  LOADN R7 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K7 ["AUDIO_TABS_HEIGHT"]
  CALL R4 4 1
  SETTABLEKS R4 R3 K2 ["audioTabSize"]
  NAMECALL R1 R1 K8 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["state"]
  GETTABLEKS R6 R5 K2 ["selectedTab"]
  GETTABLEKS R8 R5 K3 ["selectedCategory"]
  JUMPIFNOT R8 [+5]
  GETTABLEKS R8 R5 K3 ["selectedCategory"]
  GETTABLEKS R7 R8 K4 ["name"]
  JUMP [+1]
  LOADNIL R7
  GETTABLEKS R8 R4 K5 ["LogAssetImpression"]
  JUMPIFNOT R8 [+17]
  GETTABLEKS R8 R4 K5 ["LogAssetImpression"]
  MOVE R9 R0
  MOVE R10 R3
  MOVE R11 R1
  MOVE R12 R2
  GETTABLEKS R13 R4 K6 ["AbsoluteSize"]
  GETTABLEKS R14 R4 K7 ["AbsolutePosition"]
  DUPTABLE R15 K10 [{"audioType", "categoryName"}]
  SETTABLEKS R6 R15 K8 ["audioType"]
  SETTABLEKS R7 R15 K9 ["categoryName"]
  CALL R8 7 -1
  RETURN R8 -1
  RETURN R0 0

PROTO_6:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K1 ["sizerRef"]
  DUPTABLE R2 K4 [{"selectedTab", "audioTabSize"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["SOUND_EFFECTS"]
  GETTABLEKS R3 R4 K6 ["name"]
  SETTABLEKS R3 R2 K2 ["selectedTab"]
  GETIMPORT R3 K9 [UDim2.new]
  LOADN R4 0
  LOADN R5 74
  LOADN R6 0
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K10 ["AUDIO_TABS_HEIGHT"]
  CALL R3 4 1
  SETTABLEKS R3 R2 K3 ["audioTabSize"]
  SETTABLEKS R2 R0 K11 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R0 K12 ["onTabSelect"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R0 K13 ["onCategorySelect"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  SETTABLEKS R2 R0 K14 ["renderTopContent"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R0 K15 ["onAbsoluteSizeChanged"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K16 ["logImpression"]
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R2 0
  CALL R2 0 1
  FASTCALL1 TONUMBER R2 [+3]
  MOVE R4 R2
  GETIMPORT R3 K2 [tonumber]
  CALL R3 1 1
  JUMPIFNOT R3 [+17]
  GETTABLEKS R4 R1 K3 ["OnAssetPreviewButtonClicked"]
  GETTABLEKS R5 R1 K4 ["getAssetPreviewDataForStartup"]
  MOVE R6 R3
  GETTABLEKS R7 R1 K5 ["TryInsert"]
  GETTABLEKS R8 R1 K6 ["Localization"]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K7 ["Network"]
  GETTABLEKS R9 R10 K8 ["networkInterface"]
  MOVE R10 R4
  CALL R5 5 0
  GETTABLEKS R5 R0 K9 ["sizerRef"]
  GETTABLEKS R4 R5 K10 ["current"]
  JUMPIFNOT R4 [+7]
  GETTABLEKS R4 R0 K11 ["onAbsoluteSizeChanged"]
  GETTABLEKS R6 R0 K9 ["sizerRef"]
  GETTABLEKS R5 R6 K10 ["current"]
  CALL R4 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Generator"]
  DUPTABLE R2 K13 [{"Assets", "Loading", "Total", "FetchNextPage", "TryInsert", "CanInsertAsset", "RenderTopContent", "AudioType", "LogImpression", "OnAssetPreviewButtonClicked", "ParentAbsoluteSize", "TryOpenAssetConfig"}]
  GETTABLEKS R3 R0 K14 ["assets"]
  SETTABLEKS R3 R2 K1 ["Assets"]
  GETTABLEKS R3 R0 K15 ["loading"]
  SETTABLEKS R3 R2 K2 ["Loading"]
  GETTABLEKS R3 R0 K16 ["total"]
  SETTABLEKS R3 R2 K3 ["Total"]
  GETTABLEKS R3 R0 K17 ["fetchNextPage"]
  SETTABLEKS R3 R2 K4 ["FetchNextPage"]
  GETUPVAL R3 1
  SETTABLEKS R3 R2 K5 ["TryInsert"]
  GETUPVAL R3 2
  SETTABLEKS R3 R2 K6 ["CanInsertAsset"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K18 ["renderTopContent"]
  SETTABLEKS R3 R2 K7 ["RenderTopContent"]
  GETUPVAL R3 4
  SETTABLEKS R3 R2 K8 ["AudioType"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K19 ["logImpression"]
  SETTABLEKS R3 R2 K9 ["LogImpression"]
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K10 ["OnAssetPreviewButtonClicked"]
  SETTABLEKS R3 R2 K10 ["OnAssetPreviewButtonClicked"]
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K20 ["AbsoluteSize"]
  SETTABLEKS R3 R2 K11 ["ParentAbsoluteSize"]
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K12 ["TryOpenAssetConfig"]
  SETTABLEKS R3 R2 K12 ["TryOpenAssetConfig"]
  CALL R1 1 -1
  RETURN R1 -1

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["AssetSections"]
  GETTABLEKS R4 R1 K3 ["CanInsertAsset"]
  GETTABLEKS R5 R1 K4 ["SortName"]
  GETTABLEKS R6 R1 K5 ["TryInsert"]
  LENGTH R9 R3
  GETTABLE R8 R3 R9
  JUMPIFNOT R8 [+5]
  LENGTH R9 R3
  GETTABLE R8 R3 R9
  GETTABLEKS R7 R8 K6 ["name"]
  JUMPIF R7 [+1]
  LOADNIL R7
  GETTABLEKS R8 R2 K7 ["selectedTab"]
  GETTABLEKS R9 R2 K8 ["selectedCategory"]
  GETTABLEKS R10 R1 K9 ["Stylizer"]
  LOADNIL R11
  JUMPIFNOT R9 [+7]
  NEWTABLE R12 0 1
  GETTABLEKS R13 R9 K6 ["name"]
  SETLIST R12 R13 1 [1]
  MOVE R11 R12
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K10 ["join"]
  NEWTABLE R13 8 0
  LOADN R14 0
  SETTABLEKS R14 R13 K11 ["BackgroundTransparency"]
  GETTABLEKS R14 R10 K12 ["backgroundColor"]
  SETTABLEKS R14 R13 K13 ["BackgroundColor3"]
  GETIMPORT R14 K16 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R18 0
  CALL R14 4 1
  SETTABLEKS R14 R13 K17 ["Size"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K18 ["Ref"]
  GETTABLEKS R15 R0 K19 ["sizerRef"]
  SETTABLE R15 R13 R14
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K20 ["Change"]
  GETTABLEKS R14 R15 K21 ["AbsoluteSize"]
  GETTABLEKS R15 R0 K22 ["onAbsoluteSizeChanged"]
  SETTABLE R15 R13 R14
  GETTABLEKS R14 R1 K23 ["WrapperProps"]
  CALL R12 2 1
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K24 ["createElement"]
  GETUPVAL R14 2
  MOVE R15 R12
  DUPTABLE R16 K26 [{"Results"}]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K27 ["Generator"]
  DUPTABLE R18 K36 [{"networkInterface", "categoryName", "sortName", "queryParams", "sectionName", "initialPageSize", "tags", "render"}]
  GETTABLEKS R21 R0 K0 ["props"]
  GETTABLEKS R20 R21 K37 ["Network"]
  GETTABLEKS R19 R20 K28 ["networkInterface"]
  SETTABLEKS R19 R18 K28 ["networkInterface"]
  SETTABLEKS R8 R18 K29 ["categoryName"]
  SETTABLEKS R5 R18 K30 ["sortName"]
  NEWTABLE R19 0 0
  SETTABLEKS R19 R18 K31 ["queryParams"]
  SETTABLEKS R7 R18 K32 ["sectionName"]
  LOADN R19 20
  SETTABLEKS R19 R18 K33 ["initialPageSize"]
  SETTABLEKS R11 R18 K34 ["tags"]
  NEWCLOSURE R19 P0
  CAPTURE UPVAL U4
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R8
  CAPTURE VAL R1
  SETTABLEKS R19 R18 K35 ["render"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K25 ["Results"]
  CALL R13 3 -1
  RETURN R13 -1

PROTO_10:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_11:
  GETUPVAL R3 0
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 -1
  RETURN R0 -1

PROTO_13:
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

PROTO_14:
  DUPTABLE R1 K3 [{"SearchWithOptions", "getPageInfoAnalyticsContextInfo", "getAssetPreviewDataForStartup"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SearchWithOptions"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["getPageInfoAnalyticsContextInfo"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R1 K2 ["getAssetPreviewDataForStartup"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["RoactRodux"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R8 R0 K10 ["Core"]
  GETTABLEKS R7 R8 K11 ["Components"]
  GETTABLEKS R6 R7 K12 ["ResultsFetcher"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R9 R0 K10 ["Core"]
  GETTABLEKS R8 R9 K13 ["Types"]
  GETTABLEKS R7 R8 K14 ["AssetLogicTypes"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R10 R0 K10 ["Core"]
  GETTABLEKS R9 R10 K13 ["Types"]
  GETTABLEKS R8 R9 K15 ["HomeTypes"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R11 R0 K10 ["Core"]
  GETTABLEKS R10 R11 K16 ["Models"]
  GETTABLEKS R9 R10 K17 ["AssetInfo"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R12 R0 K10 ["Core"]
  GETTABLEKS R11 R12 K11 ["Components"]
  GETTABLEKS R10 R11 K18 ["AssetLogicWrapper"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R14 R0 K10 ["Core"]
  GETTABLEKS R13 R14 K11 ["Components"]
  GETTABLEKS R12 R13 K19 ["Audio"]
  GETTABLEKS R11 R12 K20 ["AudioScroller"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R15 R0 K10 ["Core"]
  GETTABLEKS R14 R15 K11 ["Components"]
  GETTABLEKS R13 R14 K19 ["Audio"]
  GETTABLEKS R12 R13 K21 ["AudioTabs"]
  CALL R11 1 1
  GETIMPORT R12 K6 [require]
  GETTABLEKS R15 R0 K10 ["Core"]
  GETTABLEKS R14 R15 K13 ["Types"]
  GETTABLEKS R13 R14 K22 ["Category"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R16 R0 K10 ["Core"]
  GETTABLEKS R15 R16 K23 ["Util"]
  GETTABLEKS R14 R15 K24 ["Constants"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R17 R0 K10 ["Core"]
  GETTABLEKS R16 R17 K23 ["Util"]
  GETTABLEKS R15 R16 K25 ["Images"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R19 R0 K10 ["Core"]
  GETTABLEKS R18 R19 K23 ["Util"]
  GETTABLEKS R17 R18 K26 ["Analytics"]
  GETTABLEKS R16 R17 K27 ["AssetAnalyticsContextItem"]
  CALL R15 1 1
  GETIMPORT R16 K6 [require]
  GETTABLEKS R19 R0 K10 ["Core"]
  GETTABLEKS R18 R19 K28 ["Thunks"]
  GETTABLEKS R17 R18 K29 ["GetPageInfoAnalyticsContextInfo"]
  CALL R16 1 1
  GETIMPORT R17 K6 [require]
  GETTABLEKS R21 R0 K10 ["Core"]
  GETTABLEKS R20 R21 K30 ["Networking"]
  GETTABLEKS R19 R20 K31 ["Requests"]
  GETTABLEKS R18 R19 K32 ["SearchWithOptions"]
  CALL R17 1 1
  GETIMPORT R18 K6 [require]
  GETTABLEKS R21 R0 K10 ["Core"]
  GETTABLEKS R20 R21 K33 ["ContextServices"]
  GETTABLEKS R19 R20 K34 ["Settings"]
  CALL R18 1 1
  GETIMPORT R19 K6 [require]
  GETTABLEKS R22 R0 K10 ["Core"]
  GETTABLEKS R21 R22 K33 ["ContextServices"]
  GETTABLEKS R20 R21 K35 ["NetworkContext"]
  CALL R19 1 1
  GETIMPORT R20 K6 [require]
  GETTABLEKS R24 R0 K10 ["Core"]
  GETTABLEKS R23 R24 K11 ["Components"]
  GETTABLEKS R22 R23 K36 ["CategoryDropDown"]
  GETTABLEKS R21 R22 K36 ["CategoryDropDown"]
  CALL R20 1 1
  GETIMPORT R21 K6 [require]
  GETTABLEKS R25 R0 K10 ["Core"]
  GETTABLEKS R24 R25 K11 ["Components"]
  GETTABLEKS R23 R24 K37 ["CallToActionBanner"]
  GETTABLEKS R22 R23 K37 ["CallToActionBanner"]
  CALL R21 1 1
  GETIMPORT R23 K6 [require]
  GETTABLEKS R24 R1 K7 ["Framework"]
  CALL R23 1 1
  GETTABLEKS R22 R23 K33 ["ContextServices"]
  GETIMPORT R23 K6 [require]
  GETTABLEKS R26 R0 K10 ["Core"]
  GETTABLEKS R25 R26 K28 ["Thunks"]
  GETTABLEKS R24 R25 K38 ["GetAssetPreviewDataForStartup"]
  CALL R23 1 1
  GETIMPORT R24 K6 [require]
  GETTABLEKS R27 R0 K10 ["Core"]
  GETTABLEKS R26 R27 K23 ["Util"]
  GETTABLEKS R25 R26 K39 ["getStartupAssetId"]
  CALL R24 1 1
  GETTABLEKS R25 R22 K40 ["withContext"]
  GETIMPORT R26 K6 [require]
  GETTABLEKS R27 R1 K41 ["Dash"]
  CALL R26 1 1
  GETTABLEKS R28 R2 K42 ["UI"]
  GETTABLEKS R27 R28 K43 ["Pane"]
  GETTABLEKS R29 R2 K44 ["Wrappers"]
  GETTABLEKS R28 R29 K45 ["withAbsoluteSizeAndPosition"]
  GETTABLEKS R29 R3 K46 ["PureComponent"]
  LOADK R31 K47 ["AudioWrapper"]
  NAMECALL R29 R29 K48 ["extend"]
  CALL R29 2 1
  GETIMPORT R30 K51 [table.freeze]
  DUPTABLE R31 K53 [{"Creator"}]
  DUPTABLE R32 K56 [{"Id", "Name"}]
  LOADK R33 K57 [1750384777]
  SETTABLEKS R33 R32 K54 ["Id"]
  LOADK R33 K58 ["Monstercat"]
  SETTABLEKS R33 R32 K55 ["Name"]
  SETTABLEKS R32 R31 K52 ["Creator"]
  CALL R30 1 1
  DUPCLOSURE R31 K59 [PROTO_6]
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R30
  CAPTURE VAL R11
  CAPTURE VAL R21
  CAPTURE VAL R14
  CAPTURE VAL R20
  SETTABLEKS R31 R29 K60 ["init"]
  DUPCLOSURE R31 K61 [PROTO_7]
  CAPTURE VAL R24
  SETTABLEKS R31 R29 K62 ["didMount"]
  DUPCLOSURE R31 K63 [PROTO_9]
  CAPTURE VAL R26
  CAPTURE VAL R3
  CAPTURE VAL R27
  CAPTURE VAL R5
  CAPTURE VAL R10
  SETTABLEKS R31 R29 K64 ["render"]
  DUPCLOSURE R31 K65 [PROTO_10]
  DUPCLOSURE R32 K66 [PROTO_14]
  CAPTURE VAL R17
  CAPTURE VAL R16
  CAPTURE VAL R23
  MOVE R33 R25
  DUPTABLE R34 K71 [{"AssetAnalytics", "Localization", "Settings", "Stylizer", "Network"}]
  SETTABLEKS R15 R34 K67 ["AssetAnalytics"]
  GETTABLEKS R35 R22 K68 ["Localization"]
  SETTABLEKS R35 R34 K68 ["Localization"]
  SETTABLEKS R18 R34 K34 ["Settings"]
  GETTABLEKS R35 R22 K69 ["Stylizer"]
  SETTABLEKS R35 R34 K69 ["Stylizer"]
  SETTABLEKS R19 R34 K70 ["Network"]
  CALL R33 1 1
  MOVE R34 R29
  CALL R33 1 1
  MOVE R29 R33
  GETTABLEKS R33 R4 K72 ["connect"]
  MOVE R34 R31
  MOVE R35 R32
  CALL R33 2 1
  MOVE R34 R29
  CALL R33 1 1
  MOVE R29 R33
  MOVE R33 R28
  MOVE R34 R29
  CALL R33 1 -1
  RETURN R33 -1
