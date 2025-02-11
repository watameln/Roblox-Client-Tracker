PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R5 R1 K4 ["LayoutOrder"]
  ORK R4 R5 K3 [-1]
  GETTABLEKS R5 R1 K5 ["Padding"]
  JUMPIF R5 [+2]
  GETTABLEKS R5 R2 K5 ["Padding"]
  GETTABLEKS R6 R1 K6 ["Spacing"]
  JUMPIF R6 [+2]
  GETTABLEKS R6 R2 K6 ["Spacing"]
  GETTABLEKS R7 R1 K7 ["RowHeight"]
  JUMPIF R7 [+2]
  GETTABLEKS R7 R2 K7 ["RowHeight"]
  GETTABLEKS R8 R1 K8 ["IsChecked"]
  GETTABLEKS R9 R1 K9 ["OnCheckboxClick"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K10 ["new"]
  CALL R10 0 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K11 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K16 [{"Size", "LayoutOrder", "HorizontalAlignment", "VerticalAlignment", "Layout", "Padding", "Spacing"}]
  GETIMPORT R14 K18 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  MOVE R18 R7
  CALL R14 4 1
  SETTABLEKS R14 R13 K12 ["Size"]
  SETTABLEKS R4 R13 K4 ["LayoutOrder"]
  GETIMPORT R14 K21 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R14 R13 K13 ["HorizontalAlignment"]
  GETIMPORT R14 K23 [Enum.VerticalAlignment.Center]
  SETTABLEKS R14 R13 K14 ["VerticalAlignment"]
  GETIMPORT R14 K26 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K15 ["Layout"]
  SETTABLEKS R5 R13 K5 ["Padding"]
  SETTABLEKS R6 R13 K6 ["Spacing"]
  DUPTABLE R14 K29 [{"Checkbox", "SelectAllLabel"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K11 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K32 [{"LayoutOrder", "Checked", "OnClick"}]
  NAMECALL R18 R10 K33 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K4 ["LayoutOrder"]
  SETTABLEKS R8 R17 K30 ["Checked"]
  SETTABLEKS R9 R17 K31 ["OnClick"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K27 ["Checkbox"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K11 ["createElement"]
  GETUPVAL R16 4
  DUPTABLE R17 K37 [{"LayoutOrder", "Text", "Style", "AutomaticSize"}]
  NAMECALL R18 R10 K33 ["getNextOrder"]
  CALL R18 1 1
  SETTABLEKS R18 R17 K4 ["LayoutOrder"]
  LOADK R20 K38 ["ScriptConversion"]
  LOADK R21 K39 ["SelectAll"]
  NAMECALL R18 R3 K40 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K34 ["Text"]
  GETTABLEKS R18 R2 K41 ["TextConfig"]
  SETTABLEKS R18 R17 K35 ["Style"]
  GETIMPORT R18 K43 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K36 ["AutomaticSize"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K28 ["SelectAllLabel"]
  CALL R11 3 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["ContextServices"]
  GETTABLEKS R4 R1 K10 ["UI"]
  GETTABLEKS R5 R4 K11 ["Pane"]
  GETTABLEKS R6 R4 K12 ["Checkbox"]
  GETTABLEKS R7 R4 K13 ["TextLabel"]
  GETTABLEKS R8 R1 K14 ["Util"]
  GETTABLEKS R9 R8 K15 ["LayoutOrderIterator"]
  GETTABLEKS R10 R2 K16 ["PureComponent"]
  LOADK R12 K17 ["SelectAllRow"]
  NAMECALL R10 R10 K18 ["extend"]
  CALL R10 2 1
  DUPCLOSURE R11 K19 [PROTO_0]
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K20 ["render"]
  GETTABLEKS R11 R3 K21 ["withContext"]
  DUPTABLE R12 K24 [{"Stylizer", "Localization"}]
  GETTABLEKS R13 R3 K22 ["Stylizer"]
  SETTABLEKS R13 R12 K22 ["Stylizer"]
  GETTABLEKS R13 R3 K23 ["Localization"]
  SETTABLEKS R13 R12 K23 ["Localization"]
  CALL R11 1 1
  MOVE R12 R10
  CALL R11 1 1
  MOVE R10 R11
  RETURN R10 1
