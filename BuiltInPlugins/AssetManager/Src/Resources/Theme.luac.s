PROTO_0:
  JUMPIFNOT R0 [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["mock"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R1 2 1
  JUMP [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["new"]
  GETUPVAL R2 1
  GETUPVAL R3 2
  CALL R1 2 1
  GETUPVAL R4 3
  NAMECALL R2 R1 K2 ["extend"]
  CALL R2 2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Dictionary"]
  GETTABLEKS R2 R3 K8 ["join"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["Util"]
  GETTABLEKS R5 R4 K11 ["StyleModifier"]
  GETTABLEKS R7 R3 K12 ["Style"]
  GETTABLEKS R6 R7 K13 ["StyleKey"]
  GETTABLEKS R9 R3 K12 ["Style"]
  GETTABLEKS R8 R9 K14 ["Themes"]
  GETTABLEKS R7 R8 K15 ["StudioTheme"]
  GETTABLEKS R9 R3 K12 ["Style"]
  GETTABLEKS R8 R9 K16 ["getRawComponentStyle"]
  GETTABLEKS R10 R3 K12 ["Style"]
  GETTABLEKS R9 R10 K17 ["ComponentSymbols"]
  GETTABLEKS R10 R3 K18 ["UI"]
  GETTABLEKS R11 R10 K19 ["Box"]
  GETTABLEKS R12 R10 K20 ["Image"]
  GETTABLEKS R14 R3 K12 ["Style"]
  GETTABLEKS R13 R14 K21 ["Colors"]
  GETTABLEKS R14 R4 K22 ["Spritesheet"]
  GETIMPORT R15 K24 [game]
  LOADK R17 K25 ["EnableAssetManagerSortButton"]
  NAMECALL R15 R15 K26 ["GetFastFlag"]
  CALL R15 2 1
  MOVE R16 R14
  LOADK R17 K27 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  DUPTABLE R18 K30 [{"SpriteSize", "NumSprites"}]
  LOADN R19 12
  SETTABLEKS R19 R18 K28 ["SpriteSize"]
  LOADN R19 4
  SETTABLEKS R19 R18 K29 ["NumSprites"]
  CALL R16 2 1
  GETTABLEN R17 R16 2
  GETTABLEN R18 R16 4
  GETTABLEN R19 R16 1
  GETTABLEN R20 R16 3
  LOADK R23 K31 ["ListItem"]
  NAMECALL R21 R9 K32 ["add"]
  CALL R21 2 0
  LOADK R23 K33 ["Tile"]
  NAMECALL R21 R9 K32 ["add"]
  CALL R21 2 0
  NEWTABLE R21 8 0
  SETTABLEKS R11 R21 K34 ["Background"]
  DUPTABLE R22 K38 [{"Color", "BorderColor", "BorderSize"}]
  GETTABLEKS R23 R6 K39 ["MainBackground"]
  SETTABLEKS R23 R22 K35 ["Color"]
  GETTABLEKS R23 R6 K40 ["Border"]
  SETTABLEKS R23 R22 K36 ["BorderColor"]
  LOADN R23 1
  SETTABLEKS R23 R22 K37 ["BorderSize"]
  SETTABLEKS R22 R21 K41 ["BackgroundStyle"]
  SETTABLEKS R12 R21 K42 ["Foreground"]
  DUPTABLE R22 K43 [{"Color"}]
  GETTABLEKS R23 R6 K44 ["MainText"]
  SETTABLEKS R23 R22 K35 ["Color"]
  SETTABLEKS R22 R21 K45 ["ForegroundStyle"]
  GETTABLEKS R22 R5 K46 ["Hover"]
  DUPTABLE R23 K47 [{"BackgroundStyle"}]
  DUPTABLE R24 K38 [{"Color", "BorderColor", "BorderSize"}]
  GETTABLEKS R25 R6 K48 ["ButtonHover"]
  SETTABLEKS R25 R24 K35 ["Color"]
  GETTABLEKS R25 R6 K40 ["Border"]
  SETTABLEKS R25 R24 K36 ["BorderColor"]
  LOADN R25 1
  SETTABLEKS R25 R24 K37 ["BorderSize"]
  SETTABLEKS R24 R23 K41 ["BackgroundStyle"]
  SETTABLE R23 R21 R22
  DUPTABLE R22 K43 [{"Color"}]
  GETTABLEKS R23 R6 K49 ["MainTextDisabled"]
  SETTABLEKS R23 R22 K35 ["Color"]
  MOVE R23 R2
  GETTABLEKS R24 R21 K45 ["ForegroundStyle"]
  MOVE R25 R18
  DUPTABLE R26 K53 [{"Size", "AnchorPoint", "Position"}]
  GETIMPORT R27 K56 [UDim2.new]
  LOADN R28 0
  LOADN R29 10
  LOADN R30 0
  LOADN R31 10
  CALL R27 4 1
  SETTABLEKS R27 R26 K50 ["Size"]
  GETIMPORT R27 K58 [Vector2.new]
  LOADK R28 K59 [0.5]
  LOADK R29 K59 [0.5]
  CALL R27 2 1
  SETTABLEKS R27 R26 K51 ["AnchorPoint"]
  GETIMPORT R27 K56 [UDim2.new]
  LOADK R28 K59 [0.5]
  LOADN R29 0
  LOADK R30 K59 [0.5]
  LOADN R31 0
  CALL R27 4 1
  SETTABLEKS R27 R26 K52 ["Position"]
  CALL R23 3 1
  MOVE R24 R2
  GETTABLEKS R25 R21 K45 ["ForegroundStyle"]
  MOVE R26 R17
  DUPTABLE R27 K53 [{"Size", "AnchorPoint", "Position"}]
  GETIMPORT R28 K56 [UDim2.new]
  LOADN R29 0
  LOADN R30 10
  LOADN R31 0
  LOADN R32 10
  CALL R28 4 1
  SETTABLEKS R28 R27 K50 ["Size"]
  GETIMPORT R28 K58 [Vector2.new]
  LOADK R29 K59 [0.5]
  LOADK R30 K59 [0.5]
  CALL R28 2 1
  SETTABLEKS R28 R27 K51 ["AnchorPoint"]
  GETIMPORT R28 K56 [UDim2.new]
  LOADK R29 K59 [0.5]
  LOADN R30 0
  LOADK R31 K59 [0.5]
  LOADN R32 0
  CALL R28 4 1
  SETTABLEKS R28 R27 K52 ["Position"]
  CALL R24 3 1
  NEWTABLE R25 16 0
  SETTABLEKS R21 R25 K60 ["&AssetManagerButton"]
  MOVE R26 R2
  MOVE R27 R21
  DUPTABLE R28 K61 [{"ForegroundStyle"}]
  MOVE R29 R2
  GETTABLEKS R30 R21 K45 ["ForegroundStyle"]
  DUPTABLE R31 K62 [{"Image"}]
  LOADK R32 K63 ["rbxasset://textures/StudioSharedUI/menu.png"]
  SETTABLEKS R32 R31 K20 ["Image"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K45 ["ForegroundStyle"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K64 ["&OverlayButton"]
  MOVE R26 R2
  MOVE R27 R21
  NEWTABLE R28 2 0
  SETTABLEKS R23 R28 K45 ["ForegroundStyle"]
  GETTABLEKS R29 R5 K65 ["Disabled"]
  DUPTABLE R30 K61 [{"ForegroundStyle"}]
  MOVE R31 R2
  MOVE R32 R23
  MOVE R33 R22
  CALL R31 2 1
  SETTABLEKS R31 R30 K45 ["ForegroundStyle"]
  SETTABLE R30 R28 R29
  CALL R26 2 1
  SETTABLEKS R26 R25 K66 ["&PreviousButton"]
  MOVE R26 R2
  MOVE R27 R21
  NEWTABLE R28 2 0
  SETTABLEKS R24 R28 K45 ["ForegroundStyle"]
  GETTABLEKS R29 R5 K65 ["Disabled"]
  DUPTABLE R30 K61 [{"ForegroundStyle"}]
  MOVE R31 R2
  MOVE R32 R24
  MOVE R33 R22
  CALL R31 2 1
  SETTABLEKS R31 R30 K45 ["ForegroundStyle"]
  SETTABLE R30 R28 R29
  CALL R26 2 1
  SETTABLEKS R26 R25 K67 ["&NextButton"]
  MOVE R26 R2
  MOVE R27 R21
  DUPTABLE R28 K61 [{"ForegroundStyle"}]
  MOVE R29 R2
  GETTABLEKS R30 R21 K45 ["ForegroundStyle"]
  DUPTABLE R31 K62 [{"Image"}]
  LOADK R32 K68 ["rbxasset://textures/StudioSharedUI/import.png"]
  SETTABLEKS R32 R31 K20 ["Image"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K45 ["ForegroundStyle"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K69 ["&BulkImporterButton"]
  MOVE R26 R2
  MOVE R27 R21
  DUPTABLE R28 K76 [{"TextSize", "TextColor", "Font", "TextTruncate", "TextXAlignment", "TextYAlignment", "BackgroundStyle"}]
  LOADN R29 16
  SETTABLEKS R29 R28 K70 ["TextSize"]
  GETTABLEKS R29 R6 K44 ["MainText"]
  SETTABLEKS R29 R28 K71 ["TextColor"]
  GETIMPORT R29 K79 [Enum.Font.SourceSans]
  SETTABLEKS R29 R28 K72 ["Font"]
  GETIMPORT R29 K81 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R29 R28 K73 ["TextTruncate"]
  GETIMPORT R29 K83 [Enum.TextXAlignment.Left]
  SETTABLEKS R29 R28 K74 ["TextXAlignment"]
  GETIMPORT R29 K85 [Enum.TextYAlignment.Bottom]
  SETTABLEKS R29 R28 K75 ["TextYAlignment"]
  MOVE R29 R2
  GETTABLEKS R30 R21 K41 ["BackgroundStyle"]
  DUPTABLE R31 K86 [{"BorderSize"}]
  LOADN R32 0
  SETTABLEKS R32 R31 K37 ["BorderSize"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K41 ["BackgroundStyle"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K87 ["&TreeItemButton"]
  MOVE R26 R2
  MOVE R27 R21
  DUPTABLE R28 K61 [{"ForegroundStyle"}]
  MOVE R29 R2
  GETTABLEKS R30 R21 K45 ["ForegroundStyle"]
  DUPTABLE R31 K62 [{"Image"}]
  LOADK R32 K88 ["rbxasset://textures/StudioSharedUI/grid.png"]
  SETTABLEKS R32 R31 K20 ["Image"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K45 ["ForegroundStyle"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K89 ["&GridViewButton"]
  MOVE R26 R2
  MOVE R27 R21
  DUPTABLE R28 K61 [{"ForegroundStyle"}]
  MOVE R29 R2
  GETTABLEKS R30 R21 K45 ["ForegroundStyle"]
  DUPTABLE R31 K62 [{"Image"}]
  LOADK R32 K90 ["rbxasset://textures/StudioSharedUI/list.png"]
  SETTABLEKS R32 R31 K20 ["Image"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K45 ["ForegroundStyle"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K91 ["&ListViewButton"]
  JUMPIFNOT R15 [+62]
  MOVE R26 R2
  MOVE R27 R21
  NEWTABLE R28 4 0
  MOVE R29 R2
  GETTABLEKS R30 R21 K41 ["BackgroundStyle"]
  DUPTABLE R31 K86 [{"BorderSize"}]
  LOADN R32 0
  SETTABLEKS R32 R31 K37 ["BorderSize"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K41 ["BackgroundStyle"]
  MOVE R29 R2
  GETTABLEKS R30 R21 K45 ["ForegroundStyle"]
  DUPTABLE R31 K92 [{"Image", "Size", "AnchorPoint", "Position"}]
  LOADK R32 K93 ["rbxasset://textures/StudioSharedUI/sort.png"]
  SETTABLEKS R32 R31 K20 ["Image"]
  GETIMPORT R32 K56 [UDim2.new]
  LOADN R33 0
  LOADN R34 16
  LOADN R35 0
  LOADN R36 16
  CALL R32 4 1
  SETTABLEKS R32 R31 K50 ["Size"]
  GETIMPORT R32 K58 [Vector2.new]
  LOADK R33 K59 [0.5]
  LOADK R34 K59 [0.5]
  CALL R32 2 1
  SETTABLEKS R32 R31 K51 ["AnchorPoint"]
  GETIMPORT R32 K56 [UDim2.new]
  LOADK R33 K59 [0.5]
  LOADN R34 0
  LOADK R35 K59 [0.5]
  LOADN R36 0
  CALL R32 4 1
  SETTABLEKS R32 R31 K52 ["Position"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K45 ["ForegroundStyle"]
  GETTABLEKS R29 R5 K94 ["Selected"]
  DUPTABLE R30 K47 [{"BackgroundStyle"}]
  DUPTABLE R31 K43 [{"Color"}]
  GETTABLEKS R32 R6 K95 ["ButtonSelected"]
  SETTABLEKS R32 R31 K35 ["Color"]
  SETTABLEKS R31 R30 K41 ["BackgroundStyle"]
  SETTABLE R30 R28 R29
  CALL R26 2 1
  JUMP [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K96 ["&SortButton"]
  DUPTABLE R26 K98 [{"Font", "TextSize", "EnableHover"}]
  GETIMPORT R27 K79 [Enum.Font.SourceSans]
  SETTABLEKS R27 R26 K72 ["Font"]
  LOADN R27 16
  SETTABLEKS R27 R26 K70 ["TextSize"]
  LOADB R27 1
  SETTABLEKS R27 R26 K97 ["EnableHover"]
  DUPTABLE R27 K103 [{"Width", "MaxHeight", "ItemHeight", "Text"}]
  LOADN R28 150
  SETTABLEKS R28 R27 K99 ["Width"]
  LOADN R28 100
  SETTABLEKS R28 R27 K100 ["MaxHeight"]
  LOADN R28 25
  SETTABLEKS R28 R27 K101 ["ItemHeight"]
  DUPTABLE R28 K104 [{"TextSize"}]
  LOADN R29 14
  SETTABLEKS R29 R28 K70 ["TextSize"]
  SETTABLEKS R28 R27 K102 ["Text"]
  NEWTABLE R28 4 0
  SETTABLEKS R26 R28 K105 ["&AssetManagerDefault"]
  MOVE R29 R2
  MOVE R30 R26
  DUPTABLE R31 K106 [{"TextColor"}]
  GETTABLEKS R32 R6 K107 ["LinkText"]
  SETTABLEKS R32 R31 K71 ["TextColor"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K108 ["&BulkImporterTooltip"]
  MOVE R29 R2
  MOVE R30 R26
  DUPTABLE R31 K110 [{"TextColor", "ShowUnderline"}]
  GETTABLEKS R32 R6 K107 ["LinkText"]
  SETTABLEKS R32 R31 K71 ["TextColor"]
  LOADB R32 0
  SETTABLEKS R32 R31 K109 ["ShowUnderline"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K111 ["&MainViewTooltip"]
  MOVE R29 R2
  MOVE R30 R26
  NEWTABLE R31 4 0
  GETTABLEKS R32 R6 K112 ["DialogButtonText"]
  SETTABLEKS R32 R31 K71 ["TextColor"]
  LOADB R32 0
  SETTABLEKS R32 R31 K109 ["ShowUnderline"]
  GETTABLEKS R32 R5 K65 ["Disabled"]
  DUPTABLE R33 K113 [{"EnableHover"}]
  LOADB R34 0
  SETTABLEKS R34 R33 K97 ["EnableHover"]
  SETTABLE R33 R31 R32
  CALL R29 2 1
  SETTABLEKS R29 R28 K114 ["&NavBar"]
  NEWTABLE R29 1 0
  MOVE R30 R2
  MOVE R31 R17
  DUPTABLE R32 K53 [{"Size", "AnchorPoint", "Position"}]
  GETIMPORT R33 K56 [UDim2.new]
  LOADN R34 0
  LOADN R35 10
  LOADN R36 0
  LOADN R37 10
  CALL R33 4 1
  SETTABLEKS R33 R32 K50 ["Size"]
  GETIMPORT R33 K58 [Vector2.new]
  LOADK R34 K59 [0.5]
  LOADK R35 K59 [0.5]
  CALL R33 2 1
  SETTABLEKS R33 R32 K51 ["AnchorPoint"]
  GETIMPORT R33 K56 [UDim2.new]
  LOADK R34 K59 [0.5]
  LOADN R35 0
  LOADK R36 K59 [0.5]
  LOADN R37 0
  CALL R33 4 1
  SETTABLEKS R33 R32 K52 ["Position"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K115 ["&NavBarPathSeparator"]
  NEWTABLE R30 8 0
  GETIMPORT R31 K56 [UDim2.new]
  LOADN R32 0
  LOADN R33 85
  LOADN R34 0
  LOADN R35 121
  CALL R31 4 1
  SETTABLEKS R31 R30 K50 ["Size"]
  LOADN R31 1
  SETTABLEKS R31 R30 K116 ["BackgroundTransparency"]
  DUPTABLE R31 K118 [{"Button", "Image"}]
  DUPTABLE R32 K120 [{"Offset"}]
  LOADN R33 14
  SETTABLEKS R33 R32 K119 ["Offset"]
  SETTABLEKS R32 R31 K117 ["Button"]
  LOADK R32 K121 ["rbxasset://textures/StudioToolbox/AssetPreview/MAGNIFIER_PH.png"]
  SETTABLEKS R32 R31 K20 ["Image"]
  SETTABLEKS R31 R30 K122 ["AssetPreview"]
  DUPTABLE R31 K133 [{"FrameSize", "ImageSize", "Position", "FolderPosition", "FolderAnchorPosition", "BackgroundColor", "RBXThumbSize", "PlaceHolder", "Folder", "StartingPlace", "ModerationStatus"}]
  GETIMPORT R32 K56 [UDim2.new]
  LOADN R33 0
  LOADN R34 69
  LOADN R35 0
  LOADN R36 69
  CALL R32 4 1
  SETTABLEKS R32 R31 K123 ["FrameSize"]
  GETIMPORT R32 K56 [UDim2.new]
  LOADN R33 0
  LOADN R34 32
  LOADN R35 0
  LOADN R36 32
  CALL R32 4 1
  SETTABLEKS R32 R31 K124 ["ImageSize"]
  GETIMPORT R32 K56 [UDim2.new]
  LOADN R33 0
  LOADN R34 8
  LOADN R35 0
  LOADN R36 8
  CALL R32 4 1
  SETTABLEKS R32 R31 K52 ["Position"]
  GETIMPORT R32 K56 [UDim2.new]
  LOADK R33 K59 [0.5]
  LOADN R34 0
  LOADK R35 K59 [0.5]
  LOADN R36 0
  CALL R32 4 1
  SETTABLEKS R32 R31 K125 ["FolderPosition"]
  GETIMPORT R32 K58 [Vector2.new]
  LOADK R33 K59 [0.5]
  LOADK R34 K59 [0.5]
  CALL R32 2 1
  SETTABLEKS R32 R31 K126 ["FolderAnchorPosition"]
  GETTABLEKS R32 R6 K134 ["ScrollBarBackground"]
  SETTABLEKS R32 R31 K127 ["BackgroundColor"]
  LOADN R32 150
  SETTABLEKS R32 R31 K128 ["RBXThumbSize"]
  LOADK R32 K135 ["rbxasset://textures/StudioSharedUI/TransparentWhiteImagePlaceholder.png"]
  SETTABLEKS R32 R31 K129 ["PlaceHolder"]
  LOADK R32 K136 ["rbxasset://textures/StudioSharedUI/folder.png"]
  SETTABLEKS R32 R31 K130 ["Folder"]
  DUPTABLE R32 K140 [{"Size", "Icon", "XOffset", "YOffset"}]
  LOADN R33 24
  SETTABLEKS R33 R32 K50 ["Size"]
  LOADK R33 K141 ["rbxasset://textures/StudioSharedUI/spawn_withbg_24.png"]
  SETTABLEKS R33 R32 K137 ["Icon"]
  LOADN R33 8
  SETTABLEKS R33 R32 K138 ["XOffset"]
  LOADN R33 37
  SETTABLEKS R33 R32 K139 ["YOffset"]
  SETTABLEKS R32 R31 K131 ["StartingPlace"]
  DUPTABLE R32 K144 [{"Size", "XOffset", "YOffset", "Rejected", "Pending"}]
  LOADN R33 24
  SETTABLEKS R33 R32 K50 ["Size"]
  LOADN R33 4
  SETTABLEKS R33 R32 K138 ["XOffset"]
  LOADN R33 4
  SETTABLEKS R33 R32 K139 ["YOffset"]
  LOADK R33 K145 ["rbxasset://textures/StudioSharedUI/alert_error_withbg.png"]
  SETTABLEKS R33 R32 K142 ["Rejected"]
  GETTABLEKS R33 R6 K146 ["TilePendingImage"]
  SETTABLEKS R33 R32 K143 ["Pending"]
  SETTABLEKS R32 R31 K132 ["ModerationStatus"]
  SETTABLEKS R31 R30 K20 ["Image"]
  DUPTABLE R31 K150 [{"Color", "Size", "TextTruncate", "XAlignment", "YAlignment", "BackgroundTransparency", "Frame"}]
  GETTABLEKS R32 R6 K44 ["MainText"]
  SETTABLEKS R32 R31 K35 ["Color"]
  LOADN R32 16
  SETTABLEKS R32 R31 K50 ["Size"]
  GETIMPORT R32 K81 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R32 R31 K73 ["TextTruncate"]
  GETIMPORT R32 K83 [Enum.TextXAlignment.Left]
  SETTABLEKS R32 R31 K147 ["XAlignment"]
  GETIMPORT R32 K152 [Enum.TextYAlignment.Top]
  SETTABLEKS R32 R31 K148 ["YAlignment"]
  LOADN R32 1
  SETTABLEKS R32 R31 K116 ["BackgroundTransparency"]
  DUPTABLE R32 K153 [{"Size", "Position"}]
  GETIMPORT R33 K56 [UDim2.new]
  LOADN R34 0
  LOADN R35 69
  LOADN R36 0
  LOADN R37 32
  CALL R33 4 1
  SETTABLEKS R33 R32 K50 ["Size"]
  GETIMPORT R33 K56 [UDim2.new]
  LOADN R34 0
  LOADN R35 8
  LOADN R36 0
  LOADN R37 81
  CALL R33 4 1
  SETTABLEKS R33 R32 K52 ["Position"]
  SETTABLEKS R32 R31 K149 ["Frame"]
  SETTABLEKS R31 R30 K102 ["Text"]
  DUPTABLE R31 K157 [{"TextPadding", "TextWrapped", "ClearTextOnFocus", "XAlignment", "Frame"}]
  LOADN R32 10
  SETTABLEKS R32 R31 K154 ["TextPadding"]
  LOADB R32 1
  SETTABLEKS R32 R31 K155 ["TextWrapped"]
  LOADB R32 0
  SETTABLEKS R32 R31 K156 ["ClearTextOnFocus"]
  GETIMPORT R32 K159 [Enum.TextXAlignment.Center]
  SETTABLEKS R32 R31 K147 ["XAlignment"]
  DUPTABLE R32 K160 [{"BackgroundColor", "BorderColor"}]
  GETTABLEKS R33 R6 K161 ["InputFieldBackground"]
  SETTABLEKS R33 R32 K127 ["BackgroundColor"]
  GETTABLEKS R33 R6 K95 ["ButtonSelected"]
  SETTABLEKS R33 R32 K36 ["BorderColor"]
  SETTABLEKS R32 R31 K149 ["Frame"]
  SETTABLEKS R31 R30 K162 ["EditText"]
  GETTABLEKS R31 R5 K46 ["Hover"]
  DUPTABLE R32 K163 [{"BackgroundTransparency", "BackgroundColor", "AssetPreview"}]
  LOADN R33 0
  SETTABLEKS R33 R32 K116 ["BackgroundTransparency"]
  GETTABLEKS R33 R6 K48 ["ButtonHover"]
  SETTABLEKS R33 R32 K127 ["BackgroundColor"]
  DUPTABLE R33 K118 [{"Button", "Image"}]
  DUPTABLE R34 K120 [{"Offset"}]
  LOADN R35 14
  SETTABLEKS R35 R34 K119 ["Offset"]
  SETTABLEKS R34 R33 K117 ["Button"]
  LOADK R34 K121 ["rbxasset://textures/StudioToolbox/AssetPreview/MAGNIFIER_PH.png"]
  SETTABLEKS R34 R33 K20 ["Image"]
  SETTABLEKS R33 R32 K122 ["AssetPreview"]
  SETTABLE R32 R30 R31
  GETTABLEKS R31 R5 K94 ["Selected"]
  DUPTABLE R32 K164 [{"BackgroundTransparency", "BackgroundColor"}]
  LOADN R33 0
  SETTABLEKS R33 R32 K116 ["BackgroundTransparency"]
  GETTABLEKS R33 R6 K165 ["ItemSelected"]
  SETTABLEKS R33 R32 K127 ["BackgroundColor"]
  SETTABLE R32 R30 R31
  NEWTABLE R31 16 0
  GETIMPORT R32 K79 [Enum.Font.SourceSans]
  SETTABLEKS R32 R31 K72 ["Font"]
  GETIMPORT R32 K56 [UDim2.new]
  LOADN R33 1
  LOADN R34 0
  LOADN R35 0
  LOADN R36 24
  CALL R32 4 1
  SETTABLEKS R32 R31 K50 ["Size"]
  LOADN R32 1
  SETTABLEKS R32 R31 K116 ["BackgroundTransparency"]
  GETIMPORT R32 K167 [UDim.new]
  LOADN R33 0
  LOADN R34 4
  CALL R32 2 1
  SETTABLEKS R32 R31 K168 ["Spacing"]
  DUPTABLE R32 K171 [{"FrameSize", "ImageSize", "ImagePosition", "ImageAnchorPosition", "BackgroundColor", "RBXThumbSize", "Folder", "ModerationStatus"}]
  GETIMPORT R33 K56 [UDim2.new]
  LOADN R34 0
  LOADN R35 24
  LOADN R36 0
  LOADN R37 24
  CALL R33 4 1
  SETTABLEKS R33 R32 K123 ["FrameSize"]
  GETIMPORT R33 K56 [UDim2.new]
  LOADN R34 0
  LOADN R35 20
  LOADN R36 0
  LOADN R37 20
  CALL R33 4 1
  SETTABLEKS R33 R32 K124 ["ImageSize"]
  GETIMPORT R33 K56 [UDim2.new]
  LOADK R34 K59 [0.5]
  LOADN R35 0
  LOADK R36 K59 [0.5]
  LOADN R37 0
  CALL R33 4 1
  SETTABLEKS R33 R32 K169 ["ImagePosition"]
  GETIMPORT R33 K58 [Vector2.new]
  LOADK R34 K59 [0.5]
  LOADK R35 K59 [0.5]
  CALL R33 2 1
  SETTABLEKS R33 R32 K170 ["ImageAnchorPosition"]
  GETTABLEKS R33 R6 K39 ["MainBackground"]
  SETTABLEKS R33 R32 K127 ["BackgroundColor"]
  LOADN R33 150
  SETTABLEKS R33 R32 K128 ["RBXThumbSize"]
  LOADK R33 K136 ["rbxasset://textures/StudioSharedUI/folder.png"]
  SETTABLEKS R33 R32 K130 ["Folder"]
  DUPTABLE R33 K172 [{"Rejected", "Pending"}]
  LOADK R34 K173 ["rbxasset://textures/StudioSharedUI/alert_error.png"]
  SETTABLEKS R34 R33 K142 ["Rejected"]
  GETTABLEKS R34 R6 K174 ["ListItemPendingImage"]
  SETTABLEKS R34 R33 K143 ["Pending"]
  SETTABLEKS R33 R32 K132 ["ModerationStatus"]
  SETTABLEKS R32 R31 K20 ["Image"]
  DUPTABLE R32 K150 [{"Color", "Size", "TextTruncate", "XAlignment", "YAlignment", "BackgroundTransparency", "Frame"}]
  GETTABLEKS R33 R6 K44 ["MainText"]
  SETTABLEKS R33 R32 K35 ["Color"]
  LOADN R33 16
  SETTABLEKS R33 R32 K50 ["Size"]
  GETIMPORT R33 K81 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R33 R32 K73 ["TextTruncate"]
  GETIMPORT R33 K83 [Enum.TextXAlignment.Left]
  SETTABLEKS R33 R32 K147 ["XAlignment"]
  GETIMPORT R33 K175 [Enum.TextYAlignment.Center]
  SETTABLEKS R33 R32 K148 ["YAlignment"]
  LOADN R33 1
  SETTABLEKS R33 R32 K116 ["BackgroundTransparency"]
  DUPTABLE R33 K177 [{"Size", "XOffset", "YOffset", "Padding"}]
  GETIMPORT R34 K56 [UDim2.new]
  LOADN R35 1
  LOADN R36 232
  LOADN R37 0
  LOADN R38 24
  CALL R34 4 1
  SETTABLEKS R34 R33 K50 ["Size"]
  LOADN R34 232
  SETTABLEKS R34 R33 K138 ["XOffset"]
  LOADN R34 24
  SETTABLEKS R34 R33 K139 ["YOffset"]
  LOADN R34 10
  SETTABLEKS R34 R33 K176 ["Padding"]
  SETTABLEKS R33 R32 K149 ["Frame"]
  SETTABLEKS R32 R31 K102 ["Text"]
  DUPTABLE R32 K178 [{"TextPadding", "ClearTextOnFocus", "XAlignment", "Frame"}]
  LOADN R33 10
  SETTABLEKS R33 R32 K154 ["TextPadding"]
  LOADB R33 0
  SETTABLEKS R33 R32 K156 ["ClearTextOnFocus"]
  GETIMPORT R33 K159 [Enum.TextXAlignment.Center]
  SETTABLEKS R33 R32 K147 ["XAlignment"]
  DUPTABLE R33 K160 [{"BackgroundColor", "BorderColor"}]
  GETTABLEKS R34 R6 K161 ["InputFieldBackground"]
  SETTABLEKS R34 R33 K127 ["BackgroundColor"]
  GETTABLEKS R34 R6 K95 ["ButtonSelected"]
  SETTABLEKS R34 R33 K36 ["BorderColor"]
  SETTABLEKS R33 R32 K149 ["Frame"]
  SETTABLEKS R32 R31 K162 ["EditText"]
  GETTABLEKS R32 R5 K46 ["Hover"]
  DUPTABLE R33 K179 [{"BackgroundTransparency", "BackgroundColor", "Image"}]
  LOADN R34 0
  SETTABLEKS R34 R33 K116 ["BackgroundTransparency"]
  GETTABLEKS R34 R6 K48 ["ButtonHover"]
  SETTABLEKS R34 R33 K127 ["BackgroundColor"]
  DUPTABLE R34 K180 [{"BackgroundColor"}]
  GETTABLEKS R35 R6 K48 ["ButtonHover"]
  SETTABLEKS R35 R34 K127 ["BackgroundColor"]
  SETTABLEKS R34 R33 K20 ["Image"]
  SETTABLE R33 R31 R32
  GETTABLEKS R32 R5 K94 ["Selected"]
  DUPTABLE R33 K179 [{"BackgroundTransparency", "BackgroundColor", "Image"}]
  LOADN R34 0
  SETTABLEKS R34 R33 K116 ["BackgroundTransparency"]
  GETTABLEKS R34 R6 K165 ["ItemSelected"]
  SETTABLEKS R34 R33 K127 ["BackgroundColor"]
  DUPTABLE R34 K180 [{"BackgroundColor"}]
  GETTABLEKS R35 R6 K165 ["ItemSelected"]
  SETTABLEKS R35 R34 K127 ["BackgroundColor"]
  SETTABLEKS R34 R33 K20 ["Image"]
  SETTABLE R33 R31 R32
  NEWTABLE R32 64 0
  GETTABLEKS R33 R6 K39 ["MainBackground"]
  SETTABLEKS R33 R32 K127 ["BackgroundColor"]
  GETTABLEKS R33 R6 K117 ["Button"]
  SETTABLEKS R33 R32 K181 ["ButtonColor"]
  GETTABLEKS R33 R6 K182 ["DialogMainButtonSelected"]
  SETTABLEKS R33 R32 K183 ["ProgressBarColor"]
  GETTABLEKS R33 R6 K48 ["ButtonHover"]
  SETTABLEKS R33 R32 K184 ["HoverColor"]
  GETTABLEKS R33 R6 K40 ["Border"]
  SETTABLEKS R33 R32 K36 ["BorderColor"]
  GETTABLEKS R33 R6 K185 ["SubText"]
  SETTABLEKS R33 R32 K186 ["SubTextColor"]
  GETTABLEKS R33 R6 K187 ["DimmedText"]
  SETTABLEKS R33 R32 K188 ["InfoTextColor"]
  GETTABLEKS R33 R6 K44 ["MainText"]
  SETTABLEKS R33 R32 K71 ["TextColor"]
  GETTABLEKS R33 R6 K189 ["ErrorText"]
  SETTABLEKS R33 R32 K190 ["ErrorColor"]
  GETTABLEKS R33 R6 K107 ["LinkText"]
  SETTABLEKS R33 R32 K191 ["LinkColor"]
  GETIMPORT R33 K194 [Color3.fromRGB]
  LOADN R34 64
  LOADN R35 166
  LOADN R36 81
  CALL R33 3 1
  SETTABLEKS R33 R32 K195 ["Green"]
  GETIMPORT R33 K194 [Color3.fromRGB]
  LOADN R34 255
  LOADN R35 255
  LOADN R36 255
  CALL R33 3 1
  SETTABLEKS R33 R32 K196 ["White"]
  GETTABLEKS R33 R6 K49 ["MainTextDisabled"]
  SETTABLEKS R33 R32 K197 ["DisabledColor"]
  LOADK R33 K198 [0.7]
  SETTABLEKS R33 R32 K199 ["ScrollbarTransparency"]
  LOADN R33 8
  SETTABLEKS R33 R32 K200 ["ScrollbarSize"]
  GETIMPORT R33 K79 [Enum.Font.SourceSans]
  SETTABLEKS R33 R32 K72 ["Font"]
  GETIMPORT R33 K202 [Enum.Font.SourceSansSemibold]
  SETTABLEKS R33 R32 K203 ["FontBold"]
  LOADN R33 14
  SETTABLEKS R33 R32 K204 ["FontSizeSmall"]
  LOADN R33 16
  SETTABLEKS R33 R32 K205 ["FontSizeMedium"]
  LOADN R33 18
  SETTABLEKS R33 R32 K206 ["FontSizeLarge"]
  DUPTABLE R33 K209 [{"CellPadding", "LoadButton"}]
  GETIMPORT R34 K56 [UDim2.new]
  LOADN R35 0
  LOADN R36 4
  LOADN R37 0
  LOADN R38 6
  CALL R34 4 1
  SETTABLEKS R34 R33 K207 ["CellPadding"]
  DUPTABLE R34 K212 [{"Offset", "PaddingX", "PaddingY"}]
  LOADN R35 125
  SETTABLEKS R35 R34 K119 ["Offset"]
  LOADN R35 75
  SETTABLEKS R35 R34 K210 ["PaddingX"]
  LOADN R35 15
  SETTABLEKS R35 R34 K211 ["PaddingY"]
  SETTABLEKS R34 R33 K208 ["LoadButton"]
  SETTABLEKS R33 R32 K213 ["AssetGridContainer"]
  DUPTABLE R33 K216 [{"PublishText", "PublishButton"}]
  DUPTABLE R34 K217 [{"Offset", "Width"}]
  LOADN R35 70
  SETTABLEKS R35 R34 K119 ["Offset"]
  LOADN R35 250
  SETTABLEKS R35 R34 K99 ["Width"]
  SETTABLEKS R34 R33 K214 ["PublishText"]
  DUPTABLE R34 K212 [{"Offset", "PaddingX", "PaddingY"}]
  LOADN R35 125
  SETTABLEKS R35 R34 K119 ["Offset"]
  LOADN R35 75
  SETTABLEKS R35 R34 K210 ["PaddingX"]
  LOADN R35 15
  SETTABLEKS R35 R34 K211 ["PaddingY"]
  SETTABLEKS R34 R33 K215 ["PublishButton"]
  SETTABLEKS R33 R32 K218 ["MainView"]
  DUPTABLE R33 K221 [{"BackgroundColor", "ImageSize", "Padding", "Height", "TruncatedTextScale"}]
  GETTABLEKS R34 R6 K222 ["Titlebar"]
  SETTABLEKS R34 R33 K127 ["BackgroundColor"]
  LOADN R34 24
  SETTABLEKS R34 R33 K124 ["ImageSize"]
  LOADN R34 12
  SETTABLEKS R34 R33 K176 ["Padding"]
  LOADN R34 38
  SETTABLEKS R34 R33 K219 ["Height"]
  LOADK R34 K223 [0.4]
  SETTABLEKS R34 R33 K220 ["TruncatedTextScale"]
  SETTABLEKS R33 R32 K224 ["NavBar"]
  DUPTABLE R33 K226 [{"Background", "Foreground", "CloseButton", "Padding"}]
  DUPTABLE R34 K229 [{"WidthScale", "Transparency"}]
  LOADK R35 K230 [-0.25]
  SETTABLEKS R35 R34 K227 ["WidthScale"]
  LOADK R35 K231 [0.75]
  SETTABLEKS R35 R34 K228 ["Transparency"]
  SETTABLEKS R34 R33 K34 ["Background"]
  DUPTABLE R34 K232 [{"WidthScale"}]
  LOADK R35 K231 [0.75]
  SETTABLEKS R35 R34 K227 ["WidthScale"]
  SETTABLEKS R34 R33 K42 ["Foreground"]
  DUPTABLE R34 K234 [{"Size", "Images"}]
  LOADN R35 16
  SETTABLEKS R35 R34 K50 ["Size"]
  DUPTABLE R35 K236 [{"Close"}]
  LOADK R36 K237 ["rbxasset://textures/StudioSharedUI/close.png"]
  SETTABLEKS R36 R35 K235 ["Close"]
  SETTABLEKS R35 R34 K233 ["Images"]
  SETTABLEKS R34 R33 K225 ["CloseButton"]
  DUPTABLE R34 K239 [{"Right"}]
  LOADN R35 11
  SETTABLEKS R35 R34 K238 ["Right"]
  SETTABLEKS R34 R33 K176 ["Padding"]
  SETTABLEKS R33 R32 K240 ["Overlay"]
  DUPTABLE R33 K242 [{"Height", "Button", "Padding", "Tooltip"}]
  LOADN R34 24
  SETTABLEKS R34 R33 K219 ["Height"]
  DUPTABLE R34 K243 [{"Size"}]
  LOADN R35 24
  SETTABLEKS R35 R34 K50 ["Size"]
  SETTABLEKS R34 R33 K117 ["Button"]
  LOADN R34 15
  SETTABLEKS R34 R33 K176 ["Padding"]
  DUPTABLE R34 K244 [{"TextSize", "Width", "Padding"}]
  LOADN R35 14
  SETTABLEKS R35 R34 K70 ["TextSize"]
  LOADN R35 210
  SETTABLEKS R35 R34 K99 ["Width"]
  LOADN R35 5
  SETTABLEKS R35 R34 K176 ["Padding"]
  SETTABLEKS R34 R33 K241 ["Tooltip"]
  SETTABLEKS R33 R32 K245 ["TopBar"]
  DUPTABLE R33 K248 [{"ItemPadding", "Bar"}]
  GETIMPORT R34 K167 [UDim.new]
  LOADN R35 0
  LOADN R36 6
  CALL R34 2 1
  SETTABLEKS R34 R33 K246 ["ItemPadding"]
  DUPTABLE R34 K250 [{"BackgroundColor", "Height", "Padding", "Arrow", "Button"}]
  GETTABLEKS R35 R6 K222 ["Titlebar"]
  SETTABLEKS R35 R34 K127 ["BackgroundColor"]
  LOADN R35 24
  SETTABLEKS R35 R34 K219 ["Height"]
  LOADN R35 10
  SETTABLEKS R35 R34 K176 ["Padding"]
  DUPTABLE R35 K253 [{"Expanded", "Collapsed", "Color", "Size"}]
  SETTABLEKS R20 R35 K251 ["Expanded"]
  SETTABLEKS R19 R35 K252 ["Collapsed"]
  GETTABLEKS R36 R6 K44 ["MainText"]
  SETTABLEKS R36 R35 K35 ["Color"]
  LOADN R36 9
  SETTABLEKS R36 R35 K50 ["Size"]
  SETTABLEKS R35 R34 K249 ["Arrow"]
  DUPTABLE R35 K243 [{"Size"}]
  LOADN R36 24
  SETTABLEKS R36 R35 K50 ["Size"]
  SETTABLEKS R35 R34 K117 ["Button"]
  SETTABLEKS R34 R33 K247 ["Bar"]
  SETTABLEKS R33 R32 K254 ["RecentView"]
  DUPTABLE R33 K257 [{"Height", "Indent", "Offset", "Padding", "ColorIcon", "Arrow"}]
  LOADN R34 16
  SETTABLEKS R34 R33 K219 ["Height"]
  LOADN R34 20
  SETTABLEKS R34 R33 K255 ["Indent"]
  LOADN R34 3
  SETTABLEKS R34 R33 K119 ["Offset"]
  LOADN R34 5
  SETTABLEKS R34 R33 K176 ["Padding"]
  GETTABLEKS R34 R13 K196 ["White"]
  SETTABLEKS R34 R33 K256 ["ColorIcon"]
  DUPTABLE R34 K253 [{"Expanded", "Collapsed", "Color", "Size"}]
  SETTABLEKS R20 R34 K251 ["Expanded"]
  SETTABLEKS R17 R34 K252 ["Collapsed"]
  GETTABLEKS R35 R6 K44 ["MainText"]
  SETTABLEKS R35 R34 K35 ["Color"]
  LOADN R35 9
  SETTABLEKS R35 R34 K50 ["Size"]
  SETTABLEKS R34 R33 K249 ["Arrow"]
  SETTABLEKS R33 R32 K258 ["TreeViewItem"]
  GETTABLEKS R33 R9 K33 ["Tile"]
  SETTABLE R30 R32 R33
  GETTABLEKS R33 R9 K31 ["ListItem"]
  SETTABLE R31 R32 R33
  GETTABLEKS R33 R9 K117 ["Button"]
  MOVE R34 R2
  MOVE R35 R8
  LOADK R36 K117 ["Button"]
  CALL R35 1 1
  MOVE R36 R25
  CALL R34 2 1
  SETTABLE R34 R32 R33
  GETTABLEKS R33 R9 K259 ["DropdownMenu"]
  JUMPIFNOT R15 [+7]
  MOVE R34 R2
  MOVE R35 R8
  LOADK R36 K3 ["require"]
  CALL R35 1 1
  MOVE R36 R27
  CALL R34 2 1
  JUMP [+1]
  LOADNIL R34
  SETTABLE R34 R32 R33
  GETTABLEKS R33 R9 K20 ["Image"]
  SETTABLE R29 R32 R33
  GETTABLEKS R33 R9 K107 ["LinkText"]
  MOVE R34 R2
  MOVE R35 R8
  LOADK R36 K107 ["LinkText"]
  CALL R35 1 1
  MOVE R36 R28
  CALL R34 2 1
  SETTABLE R34 R32 R33
  NEWTABLE R33 2 0
  GETTABLEKS R34 R6 K146 ["TilePendingImage"]
  LOADK R35 K4 [require]
  SETTABLE R35 R33 R34
  GETTABLEKS R34 R6 K174 ["ListItemPendingImage"]
  LOADK R35 K5 ["Packages"]
  SETTABLE R35 R33 R34
  NEWTABLE R34 2 0
  GETTABLEKS R35 R6 K146 ["TilePendingImage"]
  LOADK R36 K4 [require]
  SETTABLE R36 R34 R35
  GETTABLEKS R35 R6 K174 ["ListItemPendingImage"]
  LOADK R36 K6 ["Cryo"]
  SETTABLE R36 R34 R35
  DUPCLOSURE R35 K263 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R33
  CAPTURE VAL R34
  CAPTURE VAL R32
  RETURN R35 1
