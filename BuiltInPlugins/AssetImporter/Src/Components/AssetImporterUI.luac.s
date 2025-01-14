PROTO_0:
  JUMPIFNOT R0 [+7]
  JUMPIF R1 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["PresetController"]
  NAMECALL R2 R2 K1 ["initializePresets"]
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+9]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["ShowImportPrompt"]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U2
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["ShowImportPrompt"]
  CALL R0 0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K2 ["PresetController"]
  NAMECALL R0 R0 K3 ["initializePresets"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  DUPTABLE R4 K2 [{"showContext"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K1 ["showContext"]
  NAMECALL R2 R0 K3 ["setState"]
  CALL R2 2 0
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+6]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLEKS R2 R0 K4 ["showImportPromptHandler"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R2 K2 ["Sizes"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K5 [{"Layout"}]
  GETIMPORT R7 K9 [Enum.FillDirection.Vertical]
  SETTABLEKS R7 R6 K4 ["Layout"]
  DUPTABLE R7 K13 [{"TopBar", "TopSeparator", "BottomPanel"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K19 [{"LayoutOrder", "Padding", "Size", "FileName", "OnBrowse"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K14 ["LayoutOrder"]
  GETTABLEKS R11 R2 K20 ["TopBarPadding"]
  SETTABLEKS R11 R10 K15 ["Padding"]
  GETIMPORT R11 K23 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  GETTABLEKS R15 R3 K24 ["TopBarHeight"]
  CALL R11 4 1
  SETTABLEKS R11 R10 K16 ["Size"]
  GETTABLEKS R12 R1 K26 ["Filename"]
  ORK R11 R12 K25 [""]
  SETTABLEKS R11 R10 K17 ["FileName"]
  GETUPVAL R12 3
  CALL R12 0 1
  JUMPIFNOT R12 [+3]
  GETTABLEKS R11 R0 K27 ["showImportPromptHandler"]
  JUMP [+2]
  GETTABLEKS R11 R1 K28 ["ShowImportPrompt"]
  SETTABLEKS R11 R10 K18 ["OnBrowse"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["TopBar"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K30 [{"DominantAxis", "LayoutOrder"}]
  GETIMPORT R11 K32 [Enum.DominantAxis.Width]
  SETTABLEKS R11 R10 K29 ["DominantAxis"]
  LOADN R11 2
  SETTABLEKS R11 R10 K14 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K11 ["TopSeparator"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K34 [{"Layout", "LayoutOrder", "Position", "Size"}]
  GETIMPORT R11 K36 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K4 ["Layout"]
  LOADN R11 3
  SETTABLEKS R11 R10 K14 ["LayoutOrder"]
  GETIMPORT R11 K23 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 0
  GETTABLEKS R15 R3 K24 ["TopBarHeight"]
  CALL R11 4 1
  SETTABLEKS R11 R10 K33 ["Position"]
  GETIMPORT R11 K23 [UDim2.new]
  LOADN R12 1
  LOADN R13 0
  LOADN R14 1
  GETTABLEKS R17 R3 K24 ["TopBarHeight"]
  ADDK R16 R17 K37 [2]
  MINUS R15 R16
  CALL R11 4 1
  SETTABLEKS R11 R10 K16 ["Size"]
  DUPTABLE R11 K41 [{"LeftPanel", "Separator", "RightPanel"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K42 [{"LayoutOrder", "Layout", "Size"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K14 ["LayoutOrder"]
  GETIMPORT R15 K9 [Enum.FillDirection.Vertical]
  SETTABLEKS R15 R14 K4 ["Layout"]
  GETIMPORT R15 K23 [UDim2.new]
  LOADK R16 K43 [0.5]
  LOADN R17 0
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K16 ["Size"]
  DUPTABLE R15 K46 [{"PreviewContainer", "Separator", "TreeContainer"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R17 5
  CALL R16 1 1
  SETTABLEKS R16 R15 K44 ["PreviewContainer"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R17 4
  DUPTABLE R18 K30 [{"DominantAxis", "LayoutOrder"}]
  GETIMPORT R19 K32 [Enum.DominantAxis.Width]
  SETTABLEKS R19 R18 K29 ["DominantAxis"]
  LOADN R19 2
  SETTABLEKS R19 R18 K14 ["LayoutOrder"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K39 ["Separator"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R17 1
  DUPTABLE R18 K47 [{"LayoutOrder", "Size"}]
  LOADN R19 3
  SETTABLEKS R19 R18 K14 ["LayoutOrder"]
  GETIMPORT R19 K23 [UDim2.new]
  LOADN R20 1
  LOADN R21 0
  GETTABLEKS R22 R3 K48 ["PreviewRatio"]
  LOADN R23 255
  CALL R19 4 1
  SETTABLEKS R19 R18 K16 ["Size"]
  DUPTABLE R19 K50 [{"TreeView"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K3 ["createElement"]
  GETUPVAL R21 6
  DUPTABLE R22 K52 [{"Instances", "FileName"}]
  NEWTABLE R23 0 1
  GETTABLEKS R24 R1 K53 ["ImportTree"]
  SETLIST R23 R24 1 [1]
  SETTABLEKS R23 R22 K51 ["Instances"]
  GETTABLEKS R24 R1 K26 ["Filename"]
  ORK R23 R24 K25 [""]
  SETTABLEKS R23 R22 K17 ["FileName"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K49 ["TreeView"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K45 ["TreeContainer"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K38 ["LeftPanel"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K30 [{"DominantAxis", "LayoutOrder"}]
  GETIMPORT R15 K55 [Enum.DominantAxis.Height]
  SETTABLEKS R15 R14 K29 ["DominantAxis"]
  LOADN R15 2
  SETTABLEKS R15 R14 K14 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K39 ["Separator"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 1
  DUPTABLE R14 K47 [{"LayoutOrder", "Size"}]
  LOADN R15 3
  SETTABLEKS R15 R14 K14 ["LayoutOrder"]
  GETIMPORT R15 K23 [UDim2.new]
  LOADK R16 K43 [0.5]
  LOADN R17 255
  LOADN R18 1
  LOADN R19 0
  CALL R15 4 1
  SETTABLEKS R15 R14 K16 ["Size"]
  DUPTABLE R15 K57 [{"ImportConfiguration"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K3 ["createElement"]
  GETUPVAL R17 7
  DUPTABLE R18 K60 [{"ImportItem", "AssetImportSession"}]
  GETTABLEKS R19 R1 K61 ["SelectedImportItem"]
  SETTABLEKS R19 R18 K58 ["ImportItem"]
  GETTABLEKS R19 R1 K59 ["AssetImportSession"]
  SETTABLEKS R19 R18 K59 ["AssetImportSession"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K56 ["ImportConfiguration"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K40 ["RightPanel"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K12 ["BottomPanel"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R1 0 -1
  CALL R0 -1 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K1 [{"ShowImportPrompt"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["ShowImportPrompt"]
  RETURN R1 1

PROTO_6:
  DUPTABLE R1 K4 [{"AssetImportSession", "ImportTree", "Filename", "SelectedImportItem"}]
  GETTABLEKS R2 R0 K5 ["assetImportSession"]
  SETTABLEKS R2 R1 K0 ["AssetImportSession"]
  GETTABLEKS R2 R0 K6 ["importTree"]
  SETTABLEKS R2 R1 K1 ["ImportTree"]
  GETTABLEKS R2 R0 K7 ["filename"]
  SETTABLEKS R2 R1 K2 ["Filename"]
  GETTABLEKS R2 R0 K8 ["selectedImportItem"]
  SETTABLEKS R2 R1 K3 ["SelectedImportItem"]
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
  GETTABLEKS R6 R4 K11 ["Localization"]
  GETTABLEKS R8 R3 K12 ["Style"]
  GETTABLEKS R7 R8 K13 ["Stylizer"]
  GETTABLEKS R8 R3 K14 ["UI"]
  GETTABLEKS R9 R8 K15 ["Pane"]
  GETTABLEKS R10 R8 K16 ["Separator"]
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K17 ["Src"]
  GETTABLEKS R13 R14 K18 ["Controllers"]
  GETTABLEKS R12 R13 K19 ["PresetController"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R15 R0 K17 ["Src"]
  GETTABLEKS R14 R15 K20 ["Components"]
  GETTABLEKS R13 R14 K21 ["AssetImportTree"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R17 R0 K17 ["Src"]
  GETTABLEKS R16 R17 K20 ["Components"]
  GETTABLEKS R15 R16 K22 ["Properties"]
  GETTABLEKS R14 R15 K23 ["ImportConfiguration"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R17 R0 K17 ["Src"]
  GETTABLEKS R16 R17 K20 ["Components"]
  GETTABLEKS R15 R16 K24 ["TopBar"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R19 R0 K17 ["Src"]
  GETTABLEKS R18 R19 K20 ["Components"]
  GETTABLEKS R17 R18 K25 ["Preview"]
  GETTABLEKS R16 R17 K26 ["PreviewContainer"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K17 ["Src"]
  GETTABLEKS R18 R19 K27 ["Thunks"]
  GETTABLEKS R17 R18 K28 ["ShowImportPrompt"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K17 ["Src"]
  GETTABLEKS R19 R20 K29 ["Flags"]
  GETTABLEKS R18 R19 K30 ["getFFlagAssetImporterCustomPresets"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R21 R0 K17 ["Src"]
  GETTABLEKS R20 R21 K29 ["Flags"]
  GETTABLEKS R19 R20 K31 ["getFFlagAssetImportFixErrorOnCorruptedFilesPlugin"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R22 R0 K17 ["Src"]
  GETTABLEKS R21 R22 K29 ["Flags"]
  GETTABLEKS R20 R21 K32 ["getFFlagCinPreviewInstances"]
  CALL R19 1 1
  GETTABLEKS R20 R1 K33 ["PureComponent"]
  LOADK R22 K34 ["AssetImporterUI"]
  NAMECALL R20 R20 K35 ["extend"]
  CALL R20 2 1
  DUPCLOSURE R21 K36 [PROTO_2]
  CAPTURE VAL R17
  CAPTURE VAL R18
  SETTABLEKS R21 R20 K37 ["init"]
  DUPCLOSURE R21 K38 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R14
  CAPTURE VAL R17
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R12
  CAPTURE VAL R13
  SETTABLEKS R21 R20 K39 ["render"]
  MOVE R21 R5
  DUPTABLE R22 K40 [{"Localization", "Stylizer", "PresetController"}]
  SETTABLEKS R6 R22 K11 ["Localization"]
  SETTABLEKS R7 R22 K13 ["Stylizer"]
  MOVE R24 R17
  CALL R24 0 1
  JUMPIFNOT R24 [+2]
  MOVE R23 R11
  JUMP [+1]
  LOADNIL R23
  SETTABLEKS R23 R22 K19 ["PresetController"]
  CALL R21 1 1
  MOVE R22 R20
  CALL R21 1 1
  MOVE R20 R21
  DUPCLOSURE R21 K41 [PROTO_5]
  CAPTURE VAL R16
  DUPCLOSURE R22 K42 [PROTO_6]
  GETTABLEKS R23 R2 K43 ["connect"]
  MOVE R24 R22
  MOVE R25 R21
  CALL R23 2 1
  MOVE R24 R20
  CALL R23 1 -1
  RETURN R23 -1
