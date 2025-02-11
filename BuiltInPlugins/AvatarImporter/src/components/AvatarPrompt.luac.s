PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K0 ["AVATAR_IMPORTER_DEVHUB"]
  NAMECALL R2 R2 K1 ["GetDocumentationUrl"]
  CALL R2 2 -1
  NAMECALL R0 R0 K2 ["OpenBrowserWindow"]
  CALL R0 -1 0
  RETURN R0 0

PROTO_1:
  LOADN R1 0
  LOADNIL R2
  GETUPVAL R3 0
  CALL R3 0 1
  JUMPIFNOT R3 [+64]
  LOADN R1 28
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["createElement"]
  LOADK R4 K1 ["TextLabel"]
  DUPTABLE R5 K13 [{"BackgroundColor3", "BorderSizePixel", "Font", "Name", "Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K14 ["WARNING_COLOR"]
  SETTABLEKS R6 R5 K2 ["BackgroundColor3"]
  LOADN R6 0
  SETTABLEKS R6 R5 K3 ["BorderSizePixel"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K15 ["FONT"]
  SETTABLEKS R6 R5 K4 ["Font"]
  LOADK R6 K16 ["DeprecationBanner"]
  SETTABLEKS R6 R5 K5 ["Name"]
  GETIMPORT R6 K19 [UDim2.new]
  LOADN R7 0
  LOADN R8 0
  LOADN R9 0
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K6 ["Position"]
  GETIMPORT R6 K19 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  LOADN R10 28
  CALL R6 4 1
  SETTABLEKS R6 R5 K7 ["Size"]
  GETUPVAL R6 3
  CALL R6 0 1
  SETTABLEKS R6 R5 K8 ["Text"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K20 ["FONT_SIZE_LARGE"]
  SETTABLEKS R6 R5 K9 ["TextSize"]
  GETIMPORT R6 K23 [Enum.TextXAlignment.Center]
  SETTABLEKS R6 R5 K10 ["TextXAlignment"]
  GETIMPORT R6 K24 [Enum.TextYAlignment.Center]
  SETTABLEKS R6 R5 K11 ["TextYAlignment"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K25 ["WARNING_TEXT_COLOR"]
  SETTABLEKS R6 R5 K12 ["TextColor3"]
  CALL R3 2 1
  MOVE R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["createElement"]
  LOADK R4 K26 ["Frame"]
  DUPTABLE R5 K27 [{"Name", "Size", "BackgroundColor3"}]
  LOADK R6 K28 ["AvatarPrompt"]
  SETTABLEKS R6 R5 K5 ["Name"]
  GETIMPORT R6 K19 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 1
  LOADN R10 0
  CALL R6 4 1
  SETTABLEKS R6 R5 K7 ["Size"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K29 ["Theme"]
  GETIMPORT R8 K32 [Enum.StudioStyleGuideColor.MainBackground]
  GETIMPORT R9 K35 [Enum.StudioStyleGuideModifier.Default]
  NAMECALL R6 R6 K36 ["GetColor"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K2 ["BackgroundColor3"]
  DUPTABLE R6 K38 [{"content"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K0 ["createElement"]
  LOADK R8 K26 ["Frame"]
  DUPTABLE R9 K40 [{"BackgroundTransparency", "Name", "Position", "Size"}]
  LOADN R10 1
  SETTABLEKS R10 R9 K39 ["BackgroundTransparency"]
  LOADK R10 K41 ["Content"]
  SETTABLEKS R10 R9 K5 ["Name"]
  GETIMPORT R10 K19 [UDim2.new]
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K6 ["Position"]
  GETIMPORT R10 K19 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 1
  LOADN R14 0
  CALL R10 4 1
  SETTABLEKS R10 R9 K7 ["Size"]
  DUPTABLE R10 K46 [{"deprecationBanner", "topDescription", "buttons", "bottomDescription"}]
  SETTABLEKS R2 R10 K42 ["deprecationBanner"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K0 ["createElement"]
  LOADK R12 K1 ["TextLabel"]
  DUPTABLE R13 K47 [{"BackgroundTransparency", "Font", "Name", "Position", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K39 ["BackgroundTransparency"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K15 ["FONT"]
  SETTABLEKS R14 R13 K4 ["Font"]
  LOADK R14 K48 ["TopDescription"]
  SETTABLEKS R14 R13 K5 ["Name"]
  GETIMPORT R14 K19 [UDim2.new]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  LOADN R19 20
  ADD R18 R19 R1
  CALL R14 4 1
  SETTABLEKS R14 R13 K6 ["Position"]
  GETIMPORT R14 K19 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 18
  CALL R14 4 1
  SETTABLEKS R14 R13 K7 ["Size"]
  LOADK R14 K49 ["Choose the Avatar type you are going to import:"]
  SETTABLEKS R14 R13 K8 ["Text"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K20 ["FONT_SIZE_LARGE"]
  SETTABLEKS R14 R13 K9 ["TextSize"]
  GETIMPORT R14 K23 [Enum.TextXAlignment.Center]
  SETTABLEKS R14 R13 K10 ["TextXAlignment"]
  GETIMPORT R14 K51 [Enum.TextYAlignment.Top]
  SETTABLEKS R14 R13 K11 ["TextYAlignment"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K29 ["Theme"]
  GETIMPORT R16 K53 [Enum.StudioStyleGuideColor.MainText]
  GETIMPORT R17 K35 [Enum.StudioStyleGuideModifier.Default]
  NAMECALL R14 R14 K36 ["GetColor"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K12 ["TextColor3"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K43 ["topDescription"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K0 ["createElement"]
  LOADK R12 K26 ["Frame"]
  DUPTABLE R13 K40 [{"BackgroundTransparency", "Name", "Position", "Size"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K39 ["BackgroundTransparency"]
  LOADK R14 K54 ["Buttons"]
  SETTABLEKS R14 R13 K5 ["Name"]
  GETIMPORT R14 K19 [UDim2.new]
  LOADN R15 0
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K55 ["BUTTON_SIDE_PADDING"]
  LOADN R17 0
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K56 ["BUTTON_TOP_PADDING"]
  ADD R18 R19 R1
  CALL R14 4 1
  SETTABLEKS R14 R13 K6 ["Position"]
  GETIMPORT R14 K19 [UDim2.new]
  LOADN R15 1
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K55 ["BUTTON_SIDE_PADDING"]
  MINUS R17 R18
  MULK R16 R17 K57 [2]
  LOADN R17 0
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K58 ["BUTTON_HEIGHT"]
  CALL R14 4 1
  SETTABLEKS R14 R13 K7 ["Size"]
  DUPTABLE R14 K64 [{"buttonsListLayout", "rthroButton", "rthroNarrowButton", "r15Button", "customButton"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K0 ["createElement"]
  LOADK R16 K65 ["UIListLayout"]
  DUPTABLE R17 K69 [{"FillDirection", "Padding", "SortOrder"}]
  GETIMPORT R18 K71 [Enum.FillDirection.Horizontal]
  SETTABLEKS R18 R17 K66 ["FillDirection"]
  GETIMPORT R18 K73 [UDim.new]
  LOADN R19 0
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K74 ["BUTTON_CENTER_PADDING"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K67 ["Padding"]
  GETIMPORT R18 K76 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K68 ["SortOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K59 ["buttonsListLayout"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K0 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K82 [{"name", "avatarType", "iconOptions", "contextInfo", "layoutOrder"}]
  LOADK R18 K83 ["Rthro"]
  SETTABLEKS R18 R17 K77 ["name"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K84 ["AVATAR_TYPE"]
  GETTABLEKS R18 R19 K85 ["RTHRO"]
  SETTABLEKS R18 R17 K78 ["avatarType"]
  GETUPVAL R19 6
  GETTABLEKS R18 R19 K85 ["RTHRO"]
  SETTABLEKS R18 R17 K79 ["iconOptions"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K86 ["RTHRO_INFO"]
  SETTABLEKS R18 R17 K80 ["contextInfo"]
  LOADN R18 0
  SETTABLEKS R18 R17 K81 ["layoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K60 ["rthroButton"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K0 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K82 [{"name", "avatarType", "iconOptions", "contextInfo", "layoutOrder"}]
  LOADK R18 K87 ["Rthro Narrow"]
  SETTABLEKS R18 R17 K77 ["name"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K84 ["AVATAR_TYPE"]
  GETTABLEKS R18 R19 K88 ["RTHRO_SLENDER"]
  SETTABLEKS R18 R17 K78 ["avatarType"]
  GETUPVAL R19 6
  GETTABLEKS R18 R19 K89 ["RTHRO_NARROW"]
  SETTABLEKS R18 R17 K79 ["iconOptions"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K90 ["RTHRO_SLENDER_INFO"]
  SETTABLEKS R18 R17 K80 ["contextInfo"]
  LOADN R18 1
  SETTABLEKS R18 R17 K81 ["layoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K61 ["rthroNarrowButton"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K0 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K82 [{"name", "avatarType", "iconOptions", "contextInfo", "layoutOrder"}]
  LOADK R18 K91 ["R15"]
  SETTABLEKS R18 R17 K77 ["name"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K84 ["AVATAR_TYPE"]
  GETTABLEKS R18 R19 K91 ["R15"]
  SETTABLEKS R18 R17 K78 ["avatarType"]
  GETUPVAL R19 6
  GETTABLEKS R18 R19 K91 ["R15"]
  SETTABLEKS R18 R17 K79 ["iconOptions"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K92 ["R15_INFO"]
  SETTABLEKS R18 R17 K80 ["contextInfo"]
  LOADN R18 2
  SETTABLEKS R18 R17 K81 ["layoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K62 ["r15Button"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K0 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K82 [{"name", "avatarType", "iconOptions", "contextInfo", "layoutOrder"}]
  LOADK R18 K93 ["Custom"]
  SETTABLEKS R18 R17 K77 ["name"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K84 ["AVATAR_TYPE"]
  GETTABLEKS R18 R19 K94 ["CUSTOM"]
  SETTABLEKS R18 R17 K78 ["avatarType"]
  GETUPVAL R19 6
  GETTABLEKS R18 R19 K94 ["CUSTOM"]
  SETTABLEKS R18 R17 K79 ["iconOptions"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K95 ["CUSTOM_INFO"]
  SETTABLEKS R18 R17 K80 ["contextInfo"]
  LOADN R18 3
  SETTABLEKS R18 R17 K81 ["layoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K63 ["customButton"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K44 ["buttons"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K0 ["createElement"]
  LOADK R12 K26 ["Frame"]
  DUPTABLE R13 K96 [{"BackgroundTransparency", "Position", "Size"}]
  LOADN R14 1
  SETTABLEKS R14 R13 K39 ["BackgroundTransparency"]
  GETIMPORT R14 K19 [UDim2.new]
  LOADN R15 0
  LOADN R16 0
  LOADN R17 0
  LOADN R19 51
  ADD R18 R19 R1
  CALL R14 4 1
  SETTABLEKS R14 R13 K6 ["Position"]
  GETIMPORT R14 K19 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 1
  LOADN R20 51
  ADD R19 R20 R1
  MINUS R18 R19
  CALL R14 4 1
  SETTABLEKS R14 R13 K7 ["Size"]
  DUPTABLE R14 K100 [{"bottomDescriptionListLayout", "requirementsText", "infoLink"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K0 ["createElement"]
  LOADK R16 K65 ["UIListLayout"]
  DUPTABLE R17 K102 [{"FillDirection", "HorizontalAlignment", "SortOrder"}]
  GETIMPORT R18 K104 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K66 ["FillDirection"]
  GETIMPORT R18 K105 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R18 R17 K101 ["HorizontalAlignment"]
  GETIMPORT R18 K76 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R18 R17 K68 ["SortOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K97 ["bottomDescriptionListLayout"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K0 ["createElement"]
  LOADK R16 K1 ["TextLabel"]
  DUPTABLE R17 K106 [{"BackgroundTransparency", "Font", "LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment", "TextYAlignment", "TextColor3"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K39 ["BackgroundTransparency"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K15 ["FONT"]
  SETTABLEKS R18 R17 K4 ["Font"]
  LOADN R18 0
  SETTABLEKS R18 R17 K75 ["LayoutOrder"]
  GETIMPORT R18 K19 [UDim2.new]
  LOADN R19 0
  GETUPVAL R20 7
  GETUPVAL R22 2
  GETTABLEKS R21 R22 K107 ["REQUIREMENTS_DESCRIPTION"]
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K108 ["FONT_SIZE_SMALL"]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K15 ["FONT"]
  CALL R20 3 1
  LOADN R21 0
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K108 ["FONT_SIZE_SMALL"]
  CALL R18 4 1
  SETTABLEKS R18 R17 K7 ["Size"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K107 ["REQUIREMENTS_DESCRIPTION"]
  SETTABLEKS R18 R17 K8 ["Text"]
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K108 ["FONT_SIZE_SMALL"]
  SETTABLEKS R18 R17 K9 ["TextSize"]
  GETIMPORT R18 K23 [Enum.TextXAlignment.Center]
  SETTABLEKS R18 R17 K10 ["TextXAlignment"]
  GETIMPORT R18 K24 [Enum.TextYAlignment.Center]
  SETTABLEKS R18 R17 K11 ["TextYAlignment"]
  GETUPVAL R18 8
  DUPTABLE R19 K111 [{"Light", "Dark"}]
  GETIMPORT R20 K114 [Color3.fromRGB]
  LOADN R21 98
  LOADN R22 98
  LOADN R23 98
  CALL R20 3 1
  SETTABLEKS R20 R19 K109 ["Light"]
  GETIMPORT R20 K114 [Color3.fromRGB]
  LOADN R21 204
  LOADN R22 204
  LOADN R23 204
  CALL R20 3 1
  SETTABLEKS R20 R19 K110 ["Dark"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K12 ["TextColor3"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K98 ["requirementsText"]
  LOADB R15 0
  SETTABLEKS R15 R14 K99 ["infoLink"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K45 ["bottomDescription"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K37 ["content"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["GuiService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K4 [game]
  LOADK R4 K7 ["HttpRbxApiService"]
  NAMECALL R2 R2 K6 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K12 ["src"]
  GETTABLEKS R5 R6 K13 ["Assets"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R0 K12 ["src"]
  GETTABLEKS R7 R8 K14 ["components"]
  GETTABLEKS R6 R7 K15 ["AvatarButton"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R0 K12 ["src"]
  GETTABLEKS R7 R8 K16 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R10 R0 K12 ["src"]
  GETTABLEKS R9 R10 K17 ["utils"]
  GETTABLEKS R8 R9 K18 ["themeConfig"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R11 R0 K12 ["src"]
  GETTABLEKS R10 R11 K17 ["utils"]
  GETTABLEKS R9 R10 K19 ["getTextWidth"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R0 K12 ["src"]
  GETTABLEKS R11 R12 K20 ["flags"]
  GETTABLEKS R10 R11 K21 ["getFFlagShowAvatarImportDeprecation"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETTABLEKS R13 R0 K12 ["src"]
  GETTABLEKS R12 R13 K20 ["flags"]
  GETTABLEKS R11 R12 K22 ["getFStringAvatarImportDeprecationMessage"]
  CALL R10 1 1
  GETIMPORT R12 K24 [settings]
  CALL R12 0 1
  GETTABLEKS R11 R12 K25 ["Studio"]
  GETTABLEKS R12 R3 K26 ["Component"]
  LOADK R14 K27 ["AvatarPrompt"]
  NAMECALL R12 R12 K28 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K29 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R7
  SETTABLEKS R13 R12 K30 ["render"]
  RETURN R12 1
