PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R1 K3 ["Title"]
  GETTABLEKS R5 R1 K4 ["LayoutOrder"]
  GETTABLEKS R6 R1 K5 ["TotalHeight"]
  GETTABLEKS R7 R1 K6 ["genres"]
  JUMPIF R7 [+2]
  NEWTABLE R7 0 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["getGenreIndex"]
  GETTABLEN R9 R7 1
  CALL R8 1 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["getGenreTypes"]
  CALL R9 0 1
  GETTABLEKS R10 R1 K9 ["onDropDownSelect"]
  GETTABLEKS R11 R1 K10 ["setDropdownHeight"]
  GETTABLEKS R12 R3 K11 ["publishAsset"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K12 ["createElement"]
  LOADK R14 K13 ["Frame"]
  NEWTABLE R15 8 0
  GETIMPORT R16 K16 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  MOVE R20 R6
  CALL R16 4 1
  SETTABLEKS R16 R15 K17 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K18 ["BackgroundTransparency"]
  LOADN R16 0
  SETTABLEKS R16 R15 K19 ["BorderSizePixel"]
  SETTABLEKS R5 R15 K4 ["LayoutOrder"]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K20 ["Ref"]
  GETTABLEKS R17 R1 K21 ["ForwardRef"]
  SETTABLE R17 R15 R16
  DUPTABLE R16 K24 [{"UIListLayout", "Title", "DropDown"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K12 ["createElement"]
  LOADK R18 K22 ["UIListLayout"]
  DUPTABLE R19 K30 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
  GETIMPORT R20 K33 [Enum.FillDirection.Horizontal]
  SETTABLEKS R20 R19 K25 ["FillDirection"]
  GETIMPORT R20 K35 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R20 R19 K26 ["HorizontalAlignment"]
  GETIMPORT R20 K37 [Enum.VerticalAlignment.Top]
  SETTABLEKS R20 R19 K27 ["VerticalAlignment"]
  GETIMPORT R20 K38 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R20 R19 K28 ["SortOrder"]
  GETIMPORT R20 K40 [UDim.new]
  LOADN R21 0
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K29 ["Padding"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K22 ["UIListLayout"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K12 ["createElement"]
  LOADK R18 K41 ["TextLabel"]
  DUPTABLE R19 K48 [{"Size", "BackgroundTransparency", "BorderSizePixel", "Text", "TextXAlignment", "TextYAlignment", "TextSize", "TextColor3", "Font", "LayoutOrder"}]
  GETIMPORT R20 K16 [UDim2.new]
  LOADN R21 0
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K49 ["TITLE_GUTTER_WIDTH"]
  LOADN R23 1
  LOADN R24 0
  CALL R20 4 1
  SETTABLEKS R20 R19 K17 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K18 ["BackgroundTransparency"]
  LOADN R20 0
  SETTABLEKS R20 R19 K19 ["BorderSizePixel"]
  SETTABLEKS R4 R19 K42 ["Text"]
  GETIMPORT R20 K50 [Enum.TextXAlignment.Left]
  SETTABLEKS R20 R19 K43 ["TextXAlignment"]
  GETIMPORT R20 K51 [Enum.TextYAlignment.Top]
  SETTABLEKS R20 R19 K44 ["TextYAlignment"]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K52 ["FONT_SIZE_TITLE"]
  SETTABLEKS R20 R19 K45 ["TextSize"]
  GETTABLEKS R20 R12 K53 ["titleTextColor"]
  SETTABLEKS R20 R19 K46 ["TextColor3"]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K54 ["FONT"]
  SETTABLEKS R20 R19 K47 ["Font"]
  LOADN R20 1
  SETTABLEKS R20 R19 K4 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K3 ["Title"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K12 ["createElement"]
  GETUPVAL R18 4
  DUPTABLE R19 K60 [{"Size", "visibleDropDownCount", "selectedDropDownIndex", "items", "fontSize", "onItemClicked", "setDropdownHeight", "LayoutOrder"}]
  GETIMPORT R20 K16 [UDim2.new]
  LOADN R21 0
  LOADN R22 220
  LOADN R23 0
  LOADN R24 38
  CALL R20 4 1
  SETTABLEKS R20 R19 K17 ["Size"]
  LOADN R20 5
  SETTABLEKS R20 R19 K55 ["visibleDropDownCount"]
  SETTABLEKS R8 R19 K56 ["selectedDropDownIndex"]
  SETTABLEKS R9 R19 K57 ["items"]
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K61 ["FONT_SIZE_LARGE"]
  SETTABLEKS R20 R19 K58 ["fontSize"]
  SETTABLEKS R10 R19 K59 ["onItemClicked"]
  SETTABLEKS R11 R19 K10 ["setDropdownHeight"]
  LOADN R20 2
  SETTABLEKS R20 R19 K4 ["LayoutOrder"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K23 ["DropDown"]
  CALL R13 3 -1
  RETURN R13 -1

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
  GETTABLEKS R4 R1 K7 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Core"]
  GETTABLEKS R6 R7 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["DropdownMenu"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K8 ["Core"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R5 K12 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R5 K13 ["AssetConfigConstants"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R5 K14 ["AssetConfigUtil"]
  CALL R8 1 1
  GETTABLEKS R9 R3 K15 ["ContextServices"]
  GETTABLEKS R10 R9 K16 ["withContext"]
  GETTABLEKS R12 R3 K17 ["Wrappers"]
  GETTABLEKS R11 R12 K18 ["withForwardRef"]
  GETTABLEKS R12 R2 K19 ["PureComponent"]
  LOADK R14 K20 ["ConfigGenre"]
  NAMECALL R12 R12 K21 ["extend"]
  CALL R12 2 1
  DUPCLOSURE R13 K22 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R4
  SETTABLEKS R13 R12 K23 ["render"]
  MOVE R13 R10
  DUPTABLE R14 K25 [{"Stylizer"}]
  GETTABLEKS R15 R9 K24 ["Stylizer"]
  SETTABLEKS R15 R14 K24 ["Stylizer"]
  CALL R13 1 1
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  MOVE R13 R11
  MOVE R14 R12
  CALL R13 1 1
  MOVE R12 R13
  RETURN R12 1
