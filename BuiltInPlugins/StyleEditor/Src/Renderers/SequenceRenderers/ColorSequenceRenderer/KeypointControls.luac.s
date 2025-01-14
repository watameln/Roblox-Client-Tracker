PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnEdit"]
  GETUPVAL R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Keypoint"]
  DUPTABLE R4 K3 [{"Time"}]
  SETTABLEKS R0 R4 K2 ["Time"]
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["OnEdit"]
  GETUPVAL R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["Keypoint"]
  DUPTABLE R4 K3 [{"Value"}]
  SETTABLEKS R0 R4 K2 ["Value"]
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["Context"]
  GETTABLEKS R2 R3 K1 ["Consumer"]
  CALL R1 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Localization"]
  GETTABLEKS R3 R4 K3 ["Key"]
  GETTABLE R2 R1 R3
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 4
  NEWTABLE R7 2 0
  GETTABLEKS R8 R0 K5 ["LayoutOrder"]
  SETTABLEKS R8 R7 K5 ["LayoutOrder"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K6 ["Tag"]
  LOADK R9 K7 ["X-Center X-Middle X-FitY X-Pad X-RowM"]
  SETTABLE R9 R7 R8
  DUPTABLE R8 K10 [{"SequenceButtonsContainer", "CommitButtonsContainer"}]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 4
  NEWTABLE R11 4 0
  LOADN R12 1
  SETTABLEKS R12 R11 K5 ["LayoutOrder"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K6 ["Tag"]
  LOADK R13 K11 ["X-Left X-Pad X-RowM X-FitY"]
  SETTABLE R13 R11 R12
  GETIMPORT R12 K14 [UDim2.fromScale]
  LOADK R13 K15 [0.5]
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K16 ["Size"]
  DUPTABLE R12 K20 [{"Time", "Color", "Delete"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K4 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K26 [{"LayoutOrder", "Text", "Schema", "Disabled", "Value", "OnChanged"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K5 ["LayoutOrder"]
  LOADK R18 K27 ["Label"]
  LOADK R19 K17 ["Time"]
  NAMECALL R16 R2 K28 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K21 ["Text"]
  GETUPVAL R16 6
  SETTABLEKS R16 R15 K22 ["Schema"]
  GETTABLEKS R16 R0 K29 ["IsKeypointFixed"]
  SETTABLEKS R16 R15 K23 ["Disabled"]
  GETTABLEKS R17 R0 K30 ["Keypoint"]
  GETTABLEKS R16 R17 K17 ["Time"]
  SETTABLEKS R16 R15 K24 ["Value"]
  SETTABLEKS R3 R15 K25 ["OnChanged"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K17 ["Time"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K4 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K32 [{"LayoutOrder", "Text", "Schema", "Value", "OnChanged", "Renderer"}]
  LOADN R16 2
  SETTABLEKS R16 R15 K5 ["LayoutOrder"]
  LOADK R18 K27 ["Label"]
  LOADK R19 K18 ["Color"]
  NAMECALL R16 R2 K28 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K21 ["Text"]
  GETUPVAL R16 7
  SETTABLEKS R16 R15 K22 ["Schema"]
  GETTABLEKS R17 R0 K30 ["Keypoint"]
  GETTABLEKS R16 R17 K24 ["Value"]
  SETTABLEKS R16 R15 K24 ["Value"]
  SETTABLEKS R4 R15 K25 ["OnChanged"]
  GETUPVAL R16 8
  SETTABLEKS R16 R15 K31 ["Renderer"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K18 ["Color"]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K4 ["createElement"]
  GETUPVAL R14 9
  DUPTABLE R15 K36 [{"LayoutOrder", "TooltipText", "LeftIcon", "Disabled", "OnClick"}]
  LOADN R16 3
  SETTABLEKS R16 R15 K5 ["LayoutOrder"]
  LOADK R18 K37 ["Control"]
  LOADK R19 K38 ["DeleteTooltip"]
  NAMECALL R16 R2 K28 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K33 ["TooltipText"]
  GETUPVAL R18 10
  GETTABLEKS R17 R18 K39 ["Icons"]
  GETTABLEKS R16 R17 K40 ["delete"]
  SETTABLEKS R16 R15 K34 ["LeftIcon"]
  GETTABLEKS R16 R0 K29 ["IsKeypointFixed"]
  SETTABLEKS R16 R15 K23 ["Disabled"]
  GETTABLEKS R16 R0 K41 ["OnDelete"]
  SETTABLEKS R16 R15 K35 ["OnClick"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K19 ["Delete"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K8 ["SequenceButtonsContainer"]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K4 ["createElement"]
  GETUPVAL R10 4
  NEWTABLE R11 4 0
  LOADN R12 2
  SETTABLEKS R12 R11 K5 ["LayoutOrder"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K6 ["Tag"]
  LOADK R13 K42 ["X-Right X-Pad X-RowM X-FitY"]
  SETTABLE R13 R11 R12
  GETIMPORT R12 K14 [UDim2.fromScale]
  LOADK R13 K15 [0.5]
  LOADN R14 1
  CALL R12 2 1
  SETTABLEKS R12 R11 K16 ["Size"]
  DUPTABLE R12 K44 [{"Save"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K4 ["createElement"]
  GETUPVAL R14 9
  DUPTABLE R15 K45 [{"LayoutOrder", "Text", "OnClick"}]
  LOADN R16 1
  SETTABLEKS R16 R15 K5 ["LayoutOrder"]
  LOADK R18 K46 ["Modal"]
  LOADK R19 K43 ["Save"]
  NAMECALL R16 R2 K28 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K21 ["Text"]
  GETTABLEKS R16 R0 K47 ["OnSave"]
  SETTABLEKS R16 R15 K35 ["OnClick"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K43 ["Save"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K9 ["CommitButtonsContainer"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["useContext"]
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["ContextServices"]
  GETTABLEKS R6 R3 K10 ["UI"]
  GETTABLEKS R5 R6 K11 ["IconButton"]
  GETTABLEKS R7 R3 K10 ["UI"]
  GETTABLEKS R6 R7 K12 ["Pane"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R0 K5 ["Packages"]
  GETTABLEKS R8 R9 K13 ["Dash"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K14 ["join"]
  GETIMPORT R9 K4 [require]
  GETTABLEKS R12 R0 K15 ["Src"]
  GETTABLEKS R11 R12 K16 ["Util"]
  GETTABLEKS R10 R11 K17 ["MenuHelpers"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R14 R0 K15 ["Src"]
  GETTABLEKS R13 R14 K18 ["Renderers"]
  GETTABLEKS R12 R13 K19 ["SequenceRenderers"]
  GETTABLEKS R11 R12 K20 ["LabelCell"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R14 R0 K15 ["Src"]
  GETTABLEKS R13 R14 K18 ["Renderers"]
  GETTABLEKS R12 R13 K21 ["ColorRenderer"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R14 R0 K15 ["Src"]
  GETTABLEKS R13 R14 K22 ["Types"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R17 R0 K15 ["Src"]
  GETTABLEKS R16 R17 K18 ["Renderers"]
  GETTABLEKS R15 R16 K19 ["SequenceRenderers"]
  GETTABLEKS R14 R15 K22 ["Types"]
  CALL R13 1 1
  DUPTABLE R14 K24 [{"Type"}]
  LOADK R15 K25 ["Color"]
  SETTABLEKS R15 R14 K23 ["Type"]
  DUPTABLE R15 K28 [{"Type", "Min", "Max"}]
  LOADK R16 K29 ["Number"]
  SETTABLEKS R16 R15 K23 ["Type"]
  LOADN R16 0
  SETTABLEKS R16 R15 K26 ["Min"]
  LOADN R16 1
  SETTABLEKS R16 R15 K27 ["Max"]
  DUPCLOSURE R16 K30 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R9
  RETURN R16 1
