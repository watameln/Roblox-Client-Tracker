PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["mainFrameRef"]
  GETTABLEKS R0 R1 K1 ["current"]
  JUMPIFNOT R0 [+48]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["labelLayoutRef"]
  GETTABLEKS R1 R2 K1 ["current"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["contentLayoutRef"]
  GETTABLEKS R2 R3 K1 ["current"]
  LOADNIL R3
  JUMPIFNOT R1 [+4]
  GETTABLEKS R4 R1 K4 ["AbsoluteContentSize"]
  GETTABLEKS R3 R4 K5 ["Y"]
  JUMPIFNOT R2 [+11]
  ORK R5 R3 K6 [0]
  GETTABLEKS R7 R2 K4 ["AbsoluteContentSize"]
  GETTABLEKS R6 R7 K5 ["Y"]
  FASTCALL2 MATH_MAX R5 R6 [+3]
  GETIMPORT R4 K9 [math.max]
  CALL R4 2 1
  MOVE R3 R4
  JUMPIFNOT R3 [+19]
  GETIMPORT R4 K12 [UDim2.new]
  GETTABLEKS R7 R0 K13 ["Size"]
  GETTABLEKS R6 R7 K14 ["X"]
  GETTABLEKS R5 R6 K15 ["Scale"]
  GETTABLEKS R8 R0 K13 ["Size"]
  GETTABLEKS R7 R8 K14 ["X"]
  GETTABLEKS R6 R7 K16 ["Offset"]
  LOADN R7 0
  MOVE R8 R3
  CALL R4 4 1
  SETTABLEKS R4 R0 K13 ["Size"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["mainFrameRef"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K2 ["DEPRECATED_contentFrameRef"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K3 ["labelLayoutRef"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K4 ["contentLayoutRef"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["resizeToContent"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["SizeToContent"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R1 R0 K2 ["resizeToContent"]
  CALL R1 0 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Theme"]
  NAMECALL R1 R1 K2 ["get"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K3 ["Padding"]
  JUMPIF R2 [+5]
  GETIMPORT R2 K6 [UDim.new]
  LOADN R3 0
  LOADN R4 0
  CALL R2 2 1
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K8 ["Text"]
  ORK R3 R4 K7 [""]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K9 ["Size"]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K10 ["LayoutOrder"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K11 ["ContentDirection"]
  JUMPIF R6 [+2]
  GETIMPORT R6 K15 [Enum.FillDirection.Vertical]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K16 ["TeachingCallout"]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K17 ["Tooltip"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K18 ["SizeToContent"]
  LOADB R10 1
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K19 ["Visible"]
  JUMPIFEQKNIL R11 [+5]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K19 ["Visible"]
  GETTABLEKS R12 R0 K0 ["props"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K20 ["Children"]
  GETTABLE R11 R12 R13
  JUMPIFNOT R9 [+32]
  JUMPIFNOT R11 [+31]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K21 ["createElement"]
  LOADK R13 K22 ["UIListLayout"]
  NEWTABLE R14 8 0
  SETTABLEKS R2 R14 K3 ["Padding"]
  SETTABLEKS R6 R14 K13 ["FillDirection"]
  GETIMPORT R15 K24 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R15 R14 K23 ["SortOrder"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K25 ["Change"]
  GETTABLEKS R15 R16 K26 ["AbsoluteContentSize"]
  GETTABLEKS R16 R0 K27 ["resizeToContent"]
  SETTABLE R16 R14 R15
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K28 ["Ref"]
  GETTABLEKS R16 R0 K29 ["contentLayoutRef"]
  SETTABLE R16 R14 R15
  CALL R12 2 1
  SETTABLEKS R12 R11 K22 ["UIListLayout"]
  GETTABLEKS R13 R0 K0 ["props"]
  GETTABLEKS R12 R13 K30 ["ErrorMessage"]
  JUMPIF R12 [+9]
  GETTABLEKS R13 R0 K0 ["props"]
  GETTABLEKS R12 R13 K31 ["WarningMessage"]
  JUMPIF R12 [+4]
  GETTABLEKS R13 R0 K0 ["props"]
  GETTABLEKS R12 R13 K32 ["InfoMessage"]
  GETTABLEKS R13 R1 K33 ["textSize"]
  GETTABLEKS R14 R1 K34 ["font"]
  NEWTABLE R15 4 0
  GETIMPORT R16 K36 [UDim2.new]
  LOADN R17 1
  LOADN R18 0
  LOADN R19 1
  LOADN R20 0
  CALL R16 4 1
  JUMPIFNOT R12 [+165]
  GETUPVAL R17 1
  MOVE R19 R3
  MOVE R20 R13
  MOVE R21 R14
  GETIMPORT R22 K38 [Vector2.new]
  GETUPVAL R24 2
  GETTABLEKS R23 R24 K39 ["FIRST_COLUMN_WIDTH"]
  LOADK R24 K40 [∞]
  CALL R22 2 -1
  NAMECALL R17 R17 K41 ["GetTextSize"]
  CALL R17 -1 1
  GETTABLEKS R21 R17 K43 ["x"]
  FASTCALL1 MATH_CEIL R21 [+2]
  GETIMPORT R20 K46 [math.ceil]
  CALL R20 1 1
  ADDK R19 R20 K42 [2]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K39 ["FIRST_COLUMN_WIDTH"]
  FASTCALL2 MATH_MIN R19 R20 [+3]
  GETIMPORT R18 K48 [math.min]
  CALL R18 2 1
  GETTABLEKS R20 R17 K49 ["y"]
  FASTCALL1 MATH_CEIL R20 [+2]
  GETIMPORT R19 K46 [math.ceil]
  CALL R19 1 1
  GETIMPORT R20 K36 [UDim2.new]
  LOADN R21 0
  MOVE R22 R18
  LOADN R23 0
  ADDK R24 R19 K42 [2]
  CALL R20 4 1
  MOVE R16 R20
  ADDK R22 R18 K51 [4]
  ADDK R21 R22 K50 [18]
  GETUPVAL R23 2
  GETTABLEKS R22 R23 K39 ["FIRST_COLUMN_WIDTH"]
  JUMPIFLE R21 R22 [+2]
  LOADB R20 0 +1
  LOADB R20 1
  JUMPIFNOT R20 [+2]
  LOADN R21 2
  JUMP [+1]
  LOADN R21 0
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K21 ["createElement"]
  LOADK R23 K22 ["UIListLayout"]
  NEWTABLE R24 8 0
  GETIMPORT R25 K6 [UDim.new]
  LOADN R26 0
  LOADN R27 4
  CALL R25 2 1
  SETTABLEKS R25 R24 K3 ["Padding"]
  GETIMPORT R25 K24 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R25 R24 K23 ["SortOrder"]
  JUMPIFNOT R20 [+3]
  GETIMPORT R25 K53 [Enum.FillDirection.Horizontal]
  JUMPIF R25 [+2]
  GETIMPORT R25 K15 [Enum.FillDirection.Vertical]
  SETTABLEKS R25 R24 K13 ["FillDirection"]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K25 ["Change"]
  GETTABLEKS R25 R26 K26 ["AbsoluteContentSize"]
  GETTABLEKS R26 R0 K27 ["resizeToContent"]
  SETTABLE R26 R24 R25
  GETUPVAL R26 0
  GETTABLEKS R25 R26 K28 ["Ref"]
  GETTABLEKS R26 R0 K54 ["labelLayoutRef"]
  SETTABLE R26 R24 R25
  CALL R22 2 1
  SETTABLEKS R22 R15 K22 ["UIListLayout"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K21 ["createElement"]
  LOADK R23 K55 ["Frame"]
  DUPTABLE R24 K57 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
  LOADN R25 2
  SETTABLEKS R25 R24 K10 ["LayoutOrder"]
  GETIMPORT R25 K36 [UDim2.new]
  LOADN R26 0
  LOADN R27 18
  LOADN R28 0
  LOADN R30 18
  ADD R29 R30 R21
  CALL R25 4 1
  SETTABLEKS R25 R24 K9 ["Size"]
  LOADN R25 1
  SETTABLEKS R25 R24 K56 ["BackgroundTransparency"]
  DUPTABLE R25 K59 [{"StatusIcon"}]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K21 ["createElement"]
  GETUPVAL R27 3
  DUPTABLE R28 K62 [{"AnchorPoint", "Position", "ErrorMessage", "WarningMessage", "InfoMessage"}]
  GETIMPORT R29 K38 [Vector2.new]
  LOADN R30 0
  LOADN R31 1
  CALL R29 2 1
  SETTABLEKS R29 R28 K60 ["AnchorPoint"]
  GETIMPORT R29 K36 [UDim2.new]
  LOADN R30 0
  LOADN R31 0
  LOADN R32 1
  LOADN R33 0
  CALL R29 4 1
  SETTABLEKS R29 R28 K61 ["Position"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K30 ["ErrorMessage"]
  SETTABLEKS R29 R28 K30 ["ErrorMessage"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K31 ["WarningMessage"]
  SETTABLEKS R29 R28 K31 ["WarningMessage"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K32 ["InfoMessage"]
  SETTABLEKS R29 R28 K32 ["InfoMessage"]
  CALL R26 2 1
  SETTABLEKS R26 R25 K58 ["StatusIcon"]
  CALL R22 3 1
  SETTABLEKS R22 R15 K63 ["StatusIconContainer"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K21 ["createElement"]
  LOADK R18 K55 ["Frame"]
  DUPTABLE R19 K57 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
  LOADN R20 1
  SETTABLEKS R20 R19 K10 ["LayoutOrder"]
  SETTABLEKS R16 R19 K9 ["Size"]
  LOADN R20 1
  SETTABLEKS R20 R19 K56 ["BackgroundTransparency"]
  DUPTABLE R20 K65 [{"Label", "Tooltip"}]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K21 ["createElement"]
  LOADK R22 K66 ["TextLabel"]
  DUPTABLE R23 K73 [{"Position", "Size", "BackgroundTransparency", "Text", "TextSize", "Font", "TextWrapped", "TextColor3", "TextXAlignment", "TextYAlignment"}]
  GETIMPORT R24 K36 [UDim2.new]
  LOADN R25 0
  LOADN R26 0
  LOADN R27 0
  LOADN R28 2
  CALL R24 4 1
  SETTABLEKS R24 R23 K61 ["Position"]
  GETIMPORT R24 K36 [UDim2.new]
  LOADN R25 1
  LOADN R26 0
  LOADN R27 1
  LOADN R28 254
  CALL R24 4 1
  SETTABLEKS R24 R23 K9 ["Size"]
  LOADN R24 1
  SETTABLEKS R24 R23 K56 ["BackgroundTransparency"]
  SETTABLEKS R3 R23 K8 ["Text"]
  SETTABLEKS R13 R23 K67 ["TextSize"]
  SETTABLEKS R14 R23 K68 ["Font"]
  LOADB R24 1
  SETTABLEKS R24 R23 K69 ["TextWrapped"]
  GETTABLEKS R24 R1 K74 ["textColor"]
  SETTABLEKS R24 R23 K70 ["TextColor3"]
  GETIMPORT R24 K76 [Enum.TextXAlignment.Left]
  SETTABLEKS R24 R23 K71 ["TextXAlignment"]
  GETIMPORT R24 K78 [Enum.TextYAlignment.Top]
  SETTABLEKS R24 R23 K72 ["TextYAlignment"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K64 ["Label"]
  JUMPIFNOT R8 [+9]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K21 ["createElement"]
  GETUPVAL R22 4
  DUPTABLE R23 K79 [{"Text"}]
  SETTABLEKS R8 R23 K8 ["Text"]
  CALL R21 2 1
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K17 ["Tooltip"]
  CALL R17 3 1
  SETTABLEKS R17 R15 K80 ["LabelContainer"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K21 ["createElement"]
  LOADK R18 K55 ["Frame"]
  NEWTABLE R19 8 0
  LOADN R20 1
  SETTABLEKS R20 R19 K56 ["BackgroundTransparency"]
  SETTABLEKS R4 R19 K9 ["Size"]
  SETTABLEKS R10 R19 K19 ["Visible"]
  SETTABLEKS R5 R19 K10 ["LayoutOrder"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K28 ["Ref"]
  GETTABLEKS R21 R0 K81 ["mainFrameRef"]
  SETTABLE R21 R19 R20
  DUPTABLE R20 K84 [{"LabelColumn", "ContentColumn", "TeachingCallout"}]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K21 ["createElement"]
  LOADK R22 K55 ["Frame"]
  DUPTABLE R23 K85 [{"BackgroundTransparency", "Position", "Size"}]
  LOADN R24 1
  SETTABLEKS R24 R23 K56 ["BackgroundTransparency"]
  GETIMPORT R24 K36 [UDim2.new]
  LOADN R25 0
  GETUPVAL R27 2
  GETTABLEKS R26 R27 K86 ["SIDE_PADDING"]
  LOADN R27 0
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K61 ["Position"]
  GETIMPORT R24 K36 [UDim2.new]
  LOADN R25 0
  GETUPVAL R27 2
  GETTABLEKS R26 R27 K39 ["FIRST_COLUMN_WIDTH"]
  LOADN R27 1
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K9 ["Size"]
  MOVE R24 R15
  CALL R21 3 1
  SETTABLEKS R21 R20 K82 ["LabelColumn"]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K21 ["createElement"]
  LOADK R22 K55 ["Frame"]
  DUPTABLE R23 K87 [{"Position", "Size", "BackgroundTransparency"}]
  GETIMPORT R24 K36 [UDim2.new]
  LOADN R25 0
  GETUPVAL R27 2
  GETTABLEKS R26 R27 K88 ["SECOND_COLUMN_START"]
  LOADN R27 0
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K61 ["Position"]
  GETIMPORT R24 K36 [UDim2.new]
  LOADN R25 1
  GETUPVAL R29 2
  GETTABLEKS R28 R29 K88 ["SECOND_COLUMN_START"]
  GETUPVAL R30 2
  GETTABLEKS R29 R30 K86 ["SIDE_PADDING"]
  ADD R27 R28 R29
  MINUS R26 R27
  LOADN R27 1
  LOADN R28 0
  CALL R24 4 1
  SETTABLEKS R24 R23 K9 ["Size"]
  LOADN R24 1
  SETTABLEKS R24 R23 K56 ["BackgroundTransparency"]
  MOVE R24 R11
  CALL R21 3 1
  SETTABLEKS R21 R20 K83 ["ContentColumn"]
  JUMPIFNOT R7 [+15]
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K21 ["createElement"]
  GETUPVAL R22 5
  DUPTABLE R23 K91 [{"DefinitionId", "LocationId"}]
  GETTABLEKS R24 R7 K89 ["DefinitionId"]
  SETTABLEKS R24 R23 K89 ["DefinitionId"]
  GETTABLEKS R24 R7 K90 ["LocationId"]
  SETTABLEKS R24 R23 K90 ["LocationId"]
  CALL R21 2 1
  JUMP [+1]
  LOADNIL R21
  SETTABLEKS R21 R20 K16 ["TeachingCallout"]
  CALL R17 3 -1
  RETURN R17 -1

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
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["ContextItems"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K12 ["Util"]
  GETTABLEKS R7 R8 K13 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K14 ["Components"]
  GETTABLEKS R8 R9 K15 ["StatusIcon"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K14 ["Components"]
  GETTABLEKS R9 R10 K16 ["TeachingCallout"]
  CALL R8 1 1
  GETTABLEKS R10 R1 K17 ["UI"]
  GETTABLEKS R9 R10 K18 ["Tooltip"]
  GETIMPORT R10 K20 [game]
  LOADK R12 K21 ["TextService"]
  NAMECALL R10 R10 K22 ["GetService"]
  CALL R10 2 1
  GETTABLEKS R11 R2 K23 ["PureComponent"]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K24 ["Name"]
  NAMECALL R11 R11 K25 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K26 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R12 R11 K27 ["init"]
  DUPCLOSURE R12 K28 [PROTO_2]
  SETTABLEKS R12 R11 K29 ["didMount"]
  DUPCLOSURE R12 K30 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R8
  SETTABLEKS R12 R11 K31 ["render"]
  MOVE R12 R4
  DUPTABLE R13 K33 [{"Theme"}]
  GETTABLEKS R14 R5 K34 ["DEPRECATED_Theme"]
  SETTABLEKS R14 R13 K32 ["Theme"]
  CALL R12 1 1
  MOVE R13 R11
  CALL R12 1 1
  MOVE R11 R12
  RETURN R11 1
