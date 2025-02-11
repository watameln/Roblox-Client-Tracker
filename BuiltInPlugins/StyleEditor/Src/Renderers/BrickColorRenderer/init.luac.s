PROTO_0:
  DUPTABLE R1 K2 [{"BrickColor", "NameLower"}]
  SETTABLEKS R0 R1 K0 ["BrickColor"]
  GETTABLEKS R2 R0 K3 ["Name"]
  NAMECALL R2 R2 K4 ["lower"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K1 ["NameLower"]
  RETURN R1 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["NameLower"]
  GETUPVAL R3 0
  NAMECALL R1 R1 K1 ["match"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  NAMECALL R1 R0 K0 ["lower"]
  CALL R1 1 1
  GETUPVAL R2 0
  GETUPVAL R3 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_3:
  GETIMPORT R0 K2 [Color3.fromHex]
  GETUPVAL R1 0
  CALL R0 1 -1
  RETURN R0 -1

PROTO_4:
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K2 ["BrickColor"] [+2]
  RETURN R0 1
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K3 ["Color3"] [+6]
  GETIMPORT R1 K5 [BrickColor.new]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [typeof]
  CALL R1 1 1
  JUMPIFNOTEQKS R1 K6 ["string"] [+17]
  GETIMPORT R1 K8 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CALL R1 1 2
  JUMPIFNOT R1 [+5]
  GETIMPORT R3 K5 [BrickColor.new]
  MOVE R4 R2
  CALL R3 1 -1
  RETURN R3 -1
  GETIMPORT R3 K5 [BrickColor.new]
  MOVE R4 R0
  CALL R3 1 -1
  RETURN R3 -1
  LOADNIL R1
  RETURN R1 1

PROTO_5:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADB R1 1
  CALL R0 1 0
  GETUPVAL R0 1
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  JUMPIFEQKNIL R2 [+15]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 1
  JUMPIFNOT R2 [+10]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["Value"]
  JUMPIFEQ R2 R3 [+6]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["OnChanged"]
  MOVE R4 R2
  CALL R3 1 0
  GETUPVAL R2 3
  LOADNIL R3
  CALL R2 1 0
  GETUPVAL R2 4
  LOADB R3 0
  CALL R2 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["OnChanged"]
  GETTABLEKS R3 R0 K1 ["BrickColor"]
  CALL R2 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  LOADNIL R1
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  JUMPIF R0 [+5]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["Value"]
  GETTABLEKS R0 R1 K1 ["Name"]
  GETUPVAL R1 2
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

PROTO_12:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  GETUPVAL R5 1
  NEWTABLE R6 4 0
  SETTABLEKS R1 R6 K1 ["LayoutOrder"]
  SETTABLEKS R2 R6 K2 ["OnPress"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["Tag"]
  LOADK R8 K4 ["X-Pad X-RowM X-Middle DropdownItem"]
  SETTABLE R8 R6 R7
  DUPTABLE R7 K7 [{"Preview", "Text"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 1
  NEWTABLE R10 4 0
  GETTABLEKS R12 R0 K8 ["BrickColor"]
  GETTABLEKS R11 R12 K9 ["Color"]
  SETTABLEKS R11 R10 K10 ["BackgroundColor3"]
  LOADN R11 1
  SETTABLEKS R11 R10 K1 ["LayoutOrder"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K3 ["Tag"]
  LOADK R12 K11 ["X-Corner Icon16"]
  SETTABLE R12 R10 R11
  NEWTABLE R11 0 0
  CALL R8 3 1
  SETTABLEKS R8 R7 K5 ["Preview"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 2
  NEWTABLE R10 4 0
  LOADN R11 2
  SETTABLEKS R11 R10 K1 ["LayoutOrder"]
  GETTABLEKS R12 R0 K8 ["BrickColor"]
  GETTABLEKS R11 R12 K12 ["Name"]
  SETTABLEKS R11 R10 K6 ["Text"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K3 ["Tag"]
  LOADK R12 K13 ["TextXAlignLeft"]
  SETTABLE R12 R10 R11
  NEWTABLE R11 0 0
  CALL R8 3 1
  SETTABLEKS R8 R7 K6 ["Text"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_13:
  GETUPVAL R1 0
  LOADB R2 0
  CALL R1 1 2
  GETUPVAL R3 0
  LOADNIL R4
  CALL R3 1 2
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  NEWCLOSURE R6 P1
  CAPTURE VAL R4
  NEWCLOSURE R7 P2
  CAPTURE VAL R2
  CAPTURE VAL R4
  NEWCLOSURE R8 P3
  CAPTURE VAL R3
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE VAL R2
  NEWCLOSURE R9 P4
  CAPTURE VAL R0
  GETUPVAL R10 2
  NEWCLOSURE R11 P5
  CAPTURE VAL R4
  NEWTABLE R12 0 2
  GETTABLEKS R13 R0 K0 ["Schema"]
  GETTABLEKS R14 R0 K1 ["Value"]
  SETLIST R12 R13 2 [1]
  CALL R10 2 0
  GETUPVAL R10 3
  NEWCLOSURE R11 P6
  CAPTURE VAL R3
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  NEWTABLE R12 0 2
  MOVE R13 R3
  GETTABLEKS R14 R0 K1 ["Value"]
  SETLIST R12 R13 2 [1]
  CALL R10 2 1
  LOADNIL R11
  LOADNIL R12
  JUMPIFNOT R3 [+11]
  GETUPVAL R13 1
  MOVE R14 R3
  CALL R13 1 1
  JUMPIFNOT R13 [+3]
  GETTABLEKS R14 R13 K2 ["Color"]
  JUMPIF R14 [+1]
  LOADNIL R14
  MOVE R11 R14
  MOVE R12 R3
  JUMP [+14]
  GETUPVAL R13 1
  GETTABLEKS R14 R0 K1 ["Value"]
  CALL R13 1 1
  JUMPIF R13 [+5]
  GETTABLEKS R14 R0 K0 ["Schema"]
  GETTABLEKS R13 R14 K3 ["GetDefaultValue"]
  CALL R13 0 1
  GETTABLEKS R11 R13 K2 ["Color"]
  GETTABLEKS R12 R13 K4 ["Name"]
  GETUPVAL R14 5
  GETTABLEKS R13 R14 K5 ["createElement"]
  GETUPVAL R14 6
  NEWTABLE R15 0 0
  DUPTABLE R16 K8 [{"Input", "Menu"}]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K5 ["createElement"]
  GETUPVAL R18 7
  DUPTABLE R19 K17 [{"Disabled", "LeadingComponent", "LeadingComponentProps", "OnTextChanged", "OnFocused", "OnFocusLost", "Size", "Text"}]
  GETTABLEKS R20 R0 K9 ["Disabled"]
  SETTABLEKS R20 R19 K9 ["Disabled"]
  GETUPVAL R20 8
  SETTABLEKS R20 R19 K10 ["LeadingComponent"]
  NEWTABLE R20 2 0
  SETTABLEKS R11 R20 K18 ["BackgroundColor"]
  GETUPVAL R22 5
  GETTABLEKS R21 R22 K19 ["Tag"]
  LOADK R22 K20 ["Icon16"]
  SETTABLE R22 R20 R21
  SETTABLEKS R20 R19 K11 ["LeadingComponentProps"]
  SETTABLEKS R6 R19 K12 ["OnTextChanged"]
  SETTABLEKS R7 R19 K13 ["OnFocused"]
  SETTABLEKS R8 R19 K14 ["OnFocusLost"]
  GETTABLEKS R21 R0 K21 ["AutomaticSize"]
  JUMPIFNOT R21 [+10]
  GETIMPORT R20 K24 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 0
  GETTABLEKS R25 R0 K26 ["MinimumHeight"]
  ORK R24 R25 K25 [24]
  CALL R20 4 1
  JUMP [+5]
  GETIMPORT R20 K28 [UDim2.fromScale]
  LOADN R21 1
  LOADN R22 1
  CALL R20 2 1
  SETTABLEKS R20 R19 K15 ["Size"]
  SETTABLEKS R12 R19 K16 ["Text"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K6 ["Input"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K5 ["createElement"]
  GETUPVAL R18 9
  DUPTABLE R19 K33 [{"Hide", "OnFocusLost", "OnItemActivated", "Items", "OnRenderItem"}]
  NOT R20 R1
  JUMPIF R20 [+5]
  LENGTH R21 R10
  JUMPIFEQKN R21 K34 [0] [+2]
  LOADB R20 0 +1
  LOADB R20 1
  SETTABLEKS R20 R19 K29 ["Hide"]
  SETTABLEKS R5 R19 K14 ["OnFocusLost"]
  SETTABLEKS R9 R19 K30 ["OnItemActivated"]
  SETTABLEKS R10 R19 K31 ["Items"]
  DUPCLOSURE R20 K35 [PROTO_12]
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U10
  SETTABLEKS R20 R19 K32 ["OnRenderItem"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K7 ["Menu"]
  CALL R13 3 -1
  RETURN R13 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["useState"]
  GETTABLEKS R3 R1 K8 ["useEffect"]
  GETTABLEKS R4 R1 K9 ["useMemo"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K5 ["Packages"]
  GETTABLEKS R6 R7 K10 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R7 R5 K11 ["UI"]
  GETTABLEKS R6 R7 K12 ["IconButton"]
  GETTABLEKS R8 R5 K11 ["UI"]
  GETTABLEKS R7 R8 K13 ["Pane"]
  GETTABLEKS R9 R5 K11 ["UI"]
  GETTABLEKS R8 R9 K14 ["TextInput"]
  GETTABLEKS R10 R5 K11 ["UI"]
  GETTABLEKS R9 R10 K15 ["DropdownMenu"]
  GETTABLEKS R11 R5 K11 ["UI"]
  GETTABLEKS R10 R11 K16 ["TextLabel"]
  GETIMPORT R11 K4 [require]
  GETTABLEKS R13 R0 K5 ["Packages"]
  GETTABLEKS R12 R13 K17 ["Dash"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K18 ["map"]
  GETTABLEKS R13 R11 K19 ["filter"]
  GETIMPORT R14 K4 [require]
  GETIMPORT R16 K1 [script]
  GETTABLEKS R15 R16 K20 ["getAllBrickColors"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K21 ["Src"]
  GETTABLEKS R17 R18 K22 ["Renderers"]
  GETTABLEKS R16 R17 K23 ["RendererTypes"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R18 R0 K21 ["Src"]
  GETTABLEKS R17 R18 K24 ["Types"]
  CALL R16 1 1
  MOVE R17 R12
  MOVE R18 R14
  CALL R18 0 1
  DUPCLOSURE R19 K25 [PROTO_0]
  CALL R17 2 1
  DUPCLOSURE R18 K26 [PROTO_2]
  CAPTURE VAL R13
  CAPTURE VAL R17
  DUPCLOSURE R19 K27 [PROTO_4]
  DUPCLOSURE R20 K28 [PROTO_13]
  CAPTURE VAL R2
  CAPTURE VAL R19
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R18
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R10
  RETURN R20 1
