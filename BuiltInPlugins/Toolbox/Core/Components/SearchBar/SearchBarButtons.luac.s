PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isClearButtonHovered"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isClearButtonHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isClearButtonHovered"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isClearButtonHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["onClearButtonClicked"]
  CALL R0 0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["onClearButtonHoverEnded"]
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isSearchButtonHovered"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["isSearchButtonHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"isSearchButtonHovered"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["isSearchButtonHovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K2 [{"isSearchButtonHovered", "isClearButtonHovered"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["isSearchButtonHovered"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["isClearButtonHovered"]
  SETTABLEKS R1 R0 K3 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onClearButtonHovered"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onClearButtonHoverEnded"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onClearButtonClicked"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onSearchButtonHovered"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["onSearchButtonHoverEnded"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R4 R2 K3 ["isSearchButtonHovered"]
  GETTABLEKS R5 R2 K4 ["isClearButtonHovered"]
  GETTABLEKS R6 R1 K5 ["showClearButton"]
  GETTABLEKS R7 R1 K6 ["showSearchButton"]
  GETTABLEKS R8 R1 K7 ["onSearchButtonClicked"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["SEARCH_BAR_BUTTON_WIDTH"]
  JUMPIFNOT R7 [+4]
  LOADN R12 2
  MUL R11 R12 R9
  ADDK R10 R11 K9 [1]
  JUMPIF R10 [+1]
  MOVE R10 R9
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K10 ["SEARCH_BAR_BUTTON_INSET"]
  GETTABLEKS R12 R3 K11 ["searchBar"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K12 ["createElement"]
  LOADK R14 K13 ["Frame"]
  DUPTABLE R15 K18 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency"}]
  GETIMPORT R16 K21 [Vector2.new]
  LOADN R17 1
  LOADN R18 0
  CALL R16 2 1
  SETTABLEKS R16 R15 K14 ["AnchorPoint"]
  GETIMPORT R16 K23 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 0
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K15 ["Position"]
  GETIMPORT R16 K23 [UDim2.new]
  LOADN R17 0
  MOVE R18 R10
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  SETTABLEKS R16 R15 K16 ["Size"]
  LOADN R16 1
  SETTABLEKS R16 R15 K17 ["BackgroundTransparency"]
  DUPTABLE R16 K27 [{"ClearButton", "Line", "SearchButton"}]
  MOVE R17 R6
  JUMPIFNOT R17 [+128]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K12 ["createElement"]
  LOADK R18 K28 ["ImageButton"]
  NEWTABLE R19 8 0
  GETIMPORT R20 K21 [Vector2.new]
  LOADN R21 0
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K14 ["AnchorPoint"]
  GETIMPORT R20 K23 [UDim2.new]
  LOADN R21 0
  MOVE R22 R11
  LOADN R23 0
  MOVE R24 R11
  CALL R20 4 1
  SETTABLEKS R20 R19 K15 ["Position"]
  GETIMPORT R20 K23 [UDim2.new]
  LOADN R21 0
  LOADN R24 2
  MUL R23 R24 R11
  SUB R22 R9 R23
  LOADN R23 1
  LOADN R26 2
  MUL R25 R26 R11
  MINUS R24 R25
  CALL R20 4 1
  SETTABLEKS R20 R19 K16 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K17 ["BackgroundTransparency"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K29 ["Event"]
  GETTABLEKS R20 R21 K30 ["MouseEnter"]
  GETTABLEKS R21 R0 K31 ["onClearButtonHovered"]
  SETTABLE R21 R19 R20
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K29 ["Event"]
  GETTABLEKS R20 R21 K32 ["MouseMoved"]
  GETTABLEKS R21 R0 K31 ["onClearButtonHovered"]
  SETTABLE R21 R19 R20
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K29 ["Event"]
  GETTABLEKS R20 R21 K33 ["MouseLeave"]
  GETTABLEKS R21 R0 K34 ["onClearButtonHoverEnded"]
  SETTABLE R21 R19 R20
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K29 ["Event"]
  GETTABLEKS R20 R21 K35 ["MouseButton1Down"]
  GETTABLEKS R21 R0 K36 ["onClearButtonClicked"]
  SETTABLE R21 R19 R20
  DUPTABLE R20 K38 [{"ImageLabel"}]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K12 ["createElement"]
  LOADK R22 K37 ["ImageLabel"]
  DUPTABLE R23 K41 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "Image", "ImageColor3"}]
  GETIMPORT R24 K21 [Vector2.new]
  LOADK R25 K42 [0.5]
  LOADK R26 K42 [0.5]
  CALL R24 2 1
  SETTABLEKS R24 R23 K14 ["AnchorPoint"]
  GETIMPORT R24 K23 [UDim2.new]
  LOADK R25 K42 [0.5]
  LOADN R26 0
  LOADK R27 K42 [0.5]
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K15 ["Position"]
  GETIMPORT R24 K23 [UDim2.new]
  LOADN R25 0
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K43 ["SEARCH_BAR_BUTTON_ICON_SIZE"]
  LOADN R27 0
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K43 ["SEARCH_BAR_BUTTON_ICON_SIZE"]
  CALL R24 4 1
  SETTABLEKS R24 R23 K16 ["Size"]
  LOADN R24 1
  SETTABLEKS R24 R23 K17 ["BackgroundTransparency"]
  JUMPIFNOT R5 [+4]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K44 ["CLEAR_ICON_HOVER"]
  JUMPIF R24 [+3]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K45 ["CLEAR_ICON"]
  SETTABLEKS R24 R23 K39 ["Image"]
  GETTABLEKS R25 R12 K46 ["clearButton"]
  GETTABLEKS R24 R25 K47 ["imageColor"]
  SETTABLEKS R24 R23 K40 ["ImageColor3"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K37 ["ImageLabel"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K24 ["ClearButton"]
  MOVE R17 R7
  JUMPIFNOT R17 [+38]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K12 ["createElement"]
  LOADK R18 K13 ["Frame"]
  DUPTABLE R19 K50 [{"AnchorPoint", "Position", "Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R20 K21 [Vector2.new]
  LOADN R21 0
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K14 ["AnchorPoint"]
  GETIMPORT R20 K23 [UDim2.new]
  LOADN R21 0
  MOVE R22 R9
  LOADN R23 0
  LOADN R24 1
  CALL R20 4 1
  SETTABLEKS R20 R19 K15 ["Position"]
  GETIMPORT R20 K23 [UDim2.new]
  LOADN R21 0
  LOADN R22 1
  LOADN R23 1
  LOADN R24 254
  CALL R20 4 1
  SETTABLEKS R20 R19 K16 ["Size"]
  GETTABLEKS R20 R12 K51 ["divideLineColor"]
  SETTABLEKS R20 R19 K48 ["BackgroundColor3"]
  LOADN R20 0
  SETTABLEKS R20 R19 K49 ["BorderSizePixel"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K25 ["Line"]
  MOVE R17 R7
  JUMPIFNOT R17 [+127]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K12 ["createElement"]
  LOADK R18 K28 ["ImageButton"]
  NEWTABLE R19 8 0
  GETIMPORT R20 K21 [Vector2.new]
  LOADN R21 1
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K14 ["AnchorPoint"]
  GETIMPORT R20 K23 [UDim2.new]
  LOADN R21 1
  MINUS R22 R11
  LOADN R23 0
  MOVE R24 R11
  CALL R20 4 1
  SETTABLEKS R20 R19 K15 ["Position"]
  GETIMPORT R20 K23 [UDim2.new]
  LOADN R21 0
  LOADN R24 2
  MUL R23 R24 R11
  SUB R22 R9 R23
  LOADN R23 1
  LOADN R26 2
  MUL R25 R26 R11
  MINUS R24 R25
  CALL R20 4 1
  SETTABLEKS R20 R19 K16 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K17 ["BackgroundTransparency"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K29 ["Event"]
  GETTABLEKS R20 R21 K30 ["MouseEnter"]
  GETTABLEKS R21 R0 K52 ["onSearchButtonHovered"]
  SETTABLE R21 R19 R20
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K29 ["Event"]
  GETTABLEKS R20 R21 K32 ["MouseMoved"]
  GETTABLEKS R21 R0 K52 ["onSearchButtonHovered"]
  SETTABLE R21 R19 R20
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K29 ["Event"]
  GETTABLEKS R20 R21 K33 ["MouseLeave"]
  GETTABLEKS R21 R0 K53 ["onSearchButtonHoverEnded"]
  SETTABLE R21 R19 R20
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K29 ["Event"]
  GETTABLEKS R20 R21 K35 ["MouseButton1Down"]
  SETTABLE R8 R19 R20
  DUPTABLE R20 K38 [{"ImageLabel"}]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K12 ["createElement"]
  LOADK R22 K37 ["ImageLabel"]
  DUPTABLE R23 K41 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency", "Image", "ImageColor3"}]
  GETIMPORT R24 K21 [Vector2.new]
  LOADK R25 K42 [0.5]
  LOADK R26 K42 [0.5]
  CALL R24 2 1
  SETTABLEKS R24 R23 K14 ["AnchorPoint"]
  GETIMPORT R24 K23 [UDim2.new]
  LOADK R25 K42 [0.5]
  LOADN R26 0
  LOADK R27 K42 [0.5]
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K15 ["Position"]
  GETIMPORT R24 K23 [UDim2.new]
  LOADN R25 0
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K43 ["SEARCH_BAR_BUTTON_ICON_SIZE"]
  LOADN R27 0
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K43 ["SEARCH_BAR_BUTTON_ICON_SIZE"]
  CALL R24 4 1
  SETTABLEKS R24 R23 K16 ["Size"]
  LOADN R24 1
  SETTABLEKS R24 R23 K17 ["BackgroundTransparency"]
  GETUPVAL R25 2
  GETTABLEKS R24 R25 K54 ["SEARCH_ICON"]
  SETTABLEKS R24 R23 K39 ["Image"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R25 R12 K55 ["searchButton"]
  GETTABLEKS R24 R25 K56 ["imageSelectedColor"]
  JUMPIF R24 [+4]
  GETTABLEKS R25 R12 K55 ["searchButton"]
  GETTABLEKS R24 R25 K47 ["imageColor"]
  SETTABLEKS R24 R23 K40 ["ImageColor3"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K37 ["ImageLabel"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K26 ["SearchButton"]
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
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K10 ["Constants"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Core"]
  GETTABLEKS R7 R8 K9 ["Util"]
  GETTABLEKS R6 R7 K11 ["Images"]
  CALL R5 1 1
  GETTABLEKS R6 R3 K12 ["ContextServices"]
  GETTABLEKS R7 R6 K13 ["withContext"]
  GETTABLEKS R8 R2 K14 ["PureComponent"]
  LOADK R10 K15 ["SearchBar"]
  NAMECALL R8 R8 K16 ["extend"]
  CALL R8 2 1
  DUPCLOSURE R9 K17 [PROTO_5]
  SETTABLEKS R9 R8 K18 ["init"]
  DUPCLOSURE R9 K19 [PROTO_6]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R9 R8 K20 ["render"]
  MOVE R9 R7
  DUPTABLE R10 K22 [{"Stylizer"}]
  GETTABLEKS R11 R6 K21 ["Stylizer"]
  SETTABLEKS R11 R10 K21 ["Stylizer"]
  CALL R9 1 1
  MOVE R10 R8
  CALL R9 1 1
  MOVE R8 R9
  RETURN R8 1
