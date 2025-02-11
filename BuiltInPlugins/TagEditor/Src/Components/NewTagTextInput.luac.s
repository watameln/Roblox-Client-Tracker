PROTO_0:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["enteredText"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"editing"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["editing"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["textBoxRef"]
  GETTABLEKS R0 R1 K4 ["current"]
  JUMPIFNOT R0 [+8]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["textBoxRef"]
  GETTABLEKS R0 R1 K4 ["current"]
  NAMECALL R0 R0 K5 ["CaptureFocus"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  JUMPIFNOT R0 [+21]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Get"]
  CALL R2 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["enteredText"]
  NAMECALL R2 R2 K3 ["AddTag"]
  CALL R2 2 0
  GETUPVAL R2 2
  JUMPIFNOT R2 [+5]
  GETTABLEKS R2 R1 K4 ["openTagMenu"]
  LOADNIL R3
  CALL R2 1 0
  JUMP [+4]
  GETTABLEKS R2 R1 K4 ["openTagMenu"]
  LOADK R3 K5 [""]
  CALL R2 1 0
  GETUPVAL R2 0
  DUPTABLE R4 K7 [{"editing", "enteredText"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K6 ["editing"]
  LOADK R5 K5 [""]
  SETTABLEKS R5 R4 K2 ["enteredText"]
  NAMECALL R2 R2 K8 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["textBoxRef"]
  DUPTABLE R1 K5 [{"enteredText", "editing", "hovered"}]
  LOADK R2 K6 [""]
  SETTABLEKS R2 R1 K2 ["enteredText"]
  LOADB R2 0
  SETTABLEKS R2 R1 K3 ["editing"]
  LOADB R2 0
  SETTABLEKS R2 R1 K4 ["hovered"]
  SETTABLEKS R1 R0 K7 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K8 ["onTextChanged"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["beginEditing"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K10 ["endEditing"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"hovered"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["hovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"hovered"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["hovered"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R1 K1 ["Stylizer"]
  GETTABLEKS R2 R3 K2 ["NewTagTextInput"]
  GETTABLEKS R3 R1 K3 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["new"]
  CALL R4 0 1
  GETTABLEKS R6 R1 K6 ["WidthOffset"]
  ORK R5 R6 K5 [0]
  LOADNIL R6
  GETTABLEKS R8 R0 K7 ["state"]
  GETTABLEKS R7 R8 K8 ["hovered"]
  JUMPIFNOT R7 [+6]
  GETTABLEKS R8 R0 K7 ["state"]
  GETTABLEKS R7 R8 K9 ["editing"]
  JUMPIF R7 [+1]
  LOADK R6 K10 ["ButtonHover"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K11 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K14 [{"Size", "LayoutOrder"}]
  GETTABLEKS R12 R0 K7 ["state"]
  GETTABLEKS R11 R12 K9 ["editing"]
  JUMPIFNOT R11 [+3]
  GETTABLEKS R10 R2 K15 ["EditingSize"]
  JUMP [+8]
  GETIMPORT R10 K17 [UDim2.new]
  LOADN R11 1
  MINUS R12 R5
  LOADN R13 0
  GETTABLEKS R14 R2 K18 ["Height"]
  CALL R10 4 1
  SETTABLEKS R10 R9 K12 ["Size"]
  GETTABLEKS R10 R1 K13 ["LayoutOrder"]
  SETTABLEKS R10 R9 K13 ["LayoutOrder"]
  DUPTABLE R10 K21 [{"HoverArea", "Pane"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K11 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K25 [{"Cursor", "MouseEnter", "MouseLeave"}]
  LOADK R14 K26 ["PointingHand"]
  SETTABLEKS R14 R13 K22 ["Cursor"]
  NEWCLOSURE R14 P0
  CAPTURE VAL R0
  SETTABLEKS R14 R13 K23 ["MouseEnter"]
  NEWCLOSURE R14 P1
  CAPTURE VAL R0
  SETTABLEKS R14 R13 K24 ["MouseLeave"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K19 ["HoverArea"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K11 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K33 [{"Layout", "HorizontalAlignment", "OnClick", "Spacing", "ClipsDescendants", "Style"}]
  GETIMPORT R14 K37 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K27 ["Layout"]
  GETIMPORT R14 K39 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R14 R13 K28 ["HorizontalAlignment"]
  GETTABLEKS R14 R0 K40 ["beginEditing"]
  SETTABLEKS R14 R13 K29 ["OnClick"]
  GETTABLEKS R14 R2 K30 ["Spacing"]
  SETTABLEKS R14 R13 K30 ["Spacing"]
  LOADB R14 1
  SETTABLEKS R14 R13 K31 ["ClipsDescendants"]
  SETTABLEKS R6 R13 K32 ["Style"]
  DUPTABLE R14 K45 [{"AddIcon", "TextLabel", "TextInput", "TextInput2"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K11 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K48 [{"LayoutOrder", "Size", "Image", "ImageColor3"}]
  NAMECALL R18 R4 K49 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K13 ["LayoutOrder"]
  GETTABLEKS R18 R2 K50 ["IconSize"]
  SETTABLEKS R18 R17 K12 ["Size"]
  LOADK R18 K51 ["rbxasset://textures/TagEditor/Insert.png"]
  SETTABLEKS R18 R17 K46 ["Image"]
  GETTABLEKS R20 R0 K7 ["state"]
  GETTABLEKS R19 R20 K8 ["hovered"]
  JUMPIFNOT R19 [+3]
  GETTABLEKS R18 R2 K52 ["IconColorHover"]
  JUMP [+2]
  GETTABLEKS R18 R2 K53 ["IconColor"]
  SETTABLEKS R18 R17 K47 ["ImageColor3"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K41 ["AddIcon"]
  GETTABLEKS R17 R0 K7 ["state"]
  GETTABLEKS R16 R17 K9 ["editing"]
  NOT R15 R16
  JUMPIFNOT R15 [+36]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K11 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K56 [{"Size", "Style", "LayoutOrder", "Text", "TextXAlignment"}]
  GETTABLEKS R18 R2 K57 ["TextInputSize"]
  SETTABLEKS R18 R17 K12 ["Size"]
  GETTABLEKS R20 R0 K7 ["state"]
  GETTABLEKS R19 R20 K8 ["hovered"]
  JUMPIFNOT R19 [+2]
  LOADK R18 K58 ["ButtonTextHover"]
  JUMP [+1]
  LOADK R18 K59 ["ButtonText"]
  SETTABLEKS R18 R17 K32 ["Style"]
  NAMECALL R18 R4 K49 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K13 ["LayoutOrder"]
  LOADK R20 K60 ["Info"]
  LOADK R21 K61 ["CreateNewTag"]
  NAMECALL R18 R3 K62 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K54 ["Text"]
  GETIMPORT R18 K63 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K55 ["TextXAlignment"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K42 ["TextLabel"]
  GETUPVAL R15 6
  JUMPIFNOT R15 [+42]
  GETTABLEKS R16 R0 K7 ["state"]
  GETTABLEKS R15 R16 K9 ["editing"]
  JUMPIFNOT R15 [+37]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K11 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K69 [{"Size", "LayoutOrder", "ShouldFocus", "ForwardRef", "PlaceholderText", "OnTextChanged", "OnFocusLost"}]
  GETTABLEKS R18 R2 K57 ["TextInputSize"]
  SETTABLEKS R18 R17 K12 ["Size"]
  NAMECALL R18 R4 K49 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K13 ["LayoutOrder"]
  LOADB R18 1
  SETTABLEKS R18 R17 K64 ["ShouldFocus"]
  GETTABLEKS R18 R0 K70 ["textBoxRef"]
  SETTABLEKS R18 R17 K65 ["ForwardRef"]
  LOADK R20 K60 ["Info"]
  LOADK R21 K61 ["CreateNewTag"]
  NAMECALL R18 R3 K62 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K66 ["PlaceholderText"]
  GETTABLEKS R18 R0 K71 ["onTextChanged"]
  SETTABLEKS R18 R17 K67 ["OnTextChanged"]
  GETTABLEKS R18 R0 K72 ["endEditing"]
  SETTABLEKS R18 R17 K68 ["OnFocusLost"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K43 ["TextInput"]
  GETUPVAL R16 6
  NOT R15 R16
  JUMPIFNOT R15 [+49]
  GETTABLEKS R16 R0 K7 ["state"]
  GETTABLEKS R15 R16 K9 ["editing"]
  JUMPIFNOT R15 [+44]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K11 ["createElement"]
  GETUPVAL R16 7
  DUPTABLE R17 K74 [{"Size", "LayoutOrder", "TextWrapped", "ShouldFocus", "TextXAlignment", "ForwardRef", "PlaceholderText", "OnTextChanged", "OnFocusLost"}]
  GETTABLEKS R18 R2 K57 ["TextInputSize"]
  SETTABLEKS R18 R17 K12 ["Size"]
  NAMECALL R18 R4 K49 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K13 ["LayoutOrder"]
  LOADB R18 1
  SETTABLEKS R18 R17 K73 ["TextWrapped"]
  LOADB R18 1
  SETTABLEKS R18 R17 K64 ["ShouldFocus"]
  GETIMPORT R18 K63 [Enum.TextXAlignment.Left]
  SETTABLEKS R18 R17 K55 ["TextXAlignment"]
  GETTABLEKS R18 R0 K70 ["textBoxRef"]
  SETTABLEKS R18 R17 K65 ["ForwardRef"]
  LOADK R20 K60 ["Info"]
  LOADK R21 K61 ["CreateNewTag"]
  NAMECALL R18 R3 K62 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K66 ["PlaceholderText"]
  GETTABLEKS R18 R0 K71 ["onTextChanged"]
  SETTABLEKS R18 R17 K67 ["OnTextChanged"]
  GETTABLEKS R18 R0 K72 ["endEditing"]
  SETTABLEKS R18 R17 K68 ["OnFocusLost"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K44 ["TextInput2"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K20 ["Pane"]
  CALL R7 3 -1
  RETURN R7 -1

PROTO_7:
  NEWTABLE R2 0 0
  RETURN R2 1

PROTO_8:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["OpenTagMenu"]
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_9:
  DUPTABLE R1 K1 [{"openTagMenu"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["openTagMenu"]
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
  GETTABLEKS R5 R3 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["HoverArea"]
  GETTABLEKS R7 R5 K12 ["Pane"]
  GETTABLEKS R8 R5 K13 ["DEPRECATED_TextInput"]
  GETTABLEKS R9 R5 K14 ["Image"]
  GETTABLEKS R10 R5 K15 ["TextLabel"]
  GETTABLEKS R11 R3 K16 ["Util"]
  GETTABLEKS R12 R11 K17 ["LayoutOrderIterator"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R15 R0 K18 ["Src"]
  GETTABLEKS R14 R15 K19 ["Actions"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R16 R0 K18 ["Src"]
  GETTABLEKS R15 R16 K20 ["TagManager"]
  CALL R14 1 1
  GETIMPORT R15 K22 [game]
  LOADK R17 K23 ["TagEditorImprovements2"]
  NAMECALL R15 R15 K24 ["GetFastFlag"]
  CALL R15 2 1
  GETTABLEKS R16 R1 K25 ["Component"]
  LOADK R18 K26 ["NewTagTextInput"]
  NAMECALL R16 R16 K27 ["extend"]
  CALL R16 2 1
  DUPCLOSURE R17 K28 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R15
  SETTABLEKS R17 R16 K29 ["init"]
  DUPCLOSURE R17 K30 [PROTO_6]
  CAPTURE VAL R12
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R8
  SETTABLEKS R17 R16 K31 ["render"]
  GETTABLEKS R17 R4 K32 ["withContext"]
  DUPTABLE R18 K35 [{"Stylizer", "Localization"}]
  GETTABLEKS R19 R4 K33 ["Stylizer"]
  SETTABLEKS R19 R18 K33 ["Stylizer"]
  GETTABLEKS R19 R4 K34 ["Localization"]
  SETTABLEKS R19 R18 K34 ["Localization"]
  CALL R17 1 1
  MOVE R18 R16
  CALL R17 1 1
  MOVE R16 R17
  DUPCLOSURE R17 K36 [PROTO_7]
  DUPCLOSURE R18 K37 [PROTO_9]
  CAPTURE VAL R13
  GETTABLEKS R19 R2 K38 ["connect"]
  MOVE R20 R17
  MOVE R21 R18
  CALL R19 2 1
  MOVE R20 R16
  CALL R19 1 -1
  RETURN R19 -1
