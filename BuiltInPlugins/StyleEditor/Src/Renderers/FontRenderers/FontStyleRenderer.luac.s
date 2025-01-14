PROTO_0:
  GETUPVAL R1 0
  MOVE R3 R0
  LOADK R4 K0 ["Selected"]
  NAMECALL R1 R1 K1 ["HasTag"]
  CALL R1 3 1
  JUMPIFNOT R1 [+7]
  GETUPVAL R2 0
  MOVE R4 R0
  LOADK R5 K0 ["Selected"]
  NAMECALL R2 R2 K2 ["RemoveTag"]
  CALL R2 3 0
  JUMP [+6]
  GETUPVAL R2 0
  MOVE R4 R0
  LOADK R5 K0 ["Selected"]
  NAMECALL R2 R2 K3 ["AddTag"]
  CALL R2 3 0
  NOT R2 R1
  RETURN R2 1

PROTO_1:
  GETUPVAL R2 0
  MOVE R4 R0
  LOADK R5 K0 ["Selected"]
  NAMECALL R2 R2 K1 ["HasTag"]
  CALL R2 3 1
  JUMPIFNOT R2 [+7]
  GETUPVAL R3 0
  MOVE R5 R0
  LOADK R6 K0 ["Selected"]
  NAMECALL R3 R3 K2 ["RemoveTag"]
  CALL R3 3 0
  JUMP [+6]
  GETUPVAL R3 0
  MOVE R5 R0
  LOADK R6 K0 ["Selected"]
  NAMECALL R3 R3 K3 ["AddTag"]
  CALL R3 3 0
  NOT R1 R2
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 1
  GETIMPORT R3 K7 [Enum.FontWeight.Bold]
  SETTABLEKS R3 R2 K8 ["Weight"]
  JUMP [+5]
  GETUPVAL R2 1
  GETIMPORT R3 K10 [Enum.FontWeight.Regular]
  SETTABLEKS R3 R2 K8 ["Weight"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K11 ["OnChanged"]
  GETUPVAL R3 1
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  MOVE R4 R0
  LOADK R5 K0 ["Selected"]
  NAMECALL R2 R2 K1 ["HasTag"]
  CALL R2 3 1
  JUMPIFNOT R2 [+7]
  GETUPVAL R3 0
  MOVE R5 R0
  LOADK R6 K0 ["Selected"]
  NAMECALL R3 R3 K2 ["RemoveTag"]
  CALL R3 3 0
  JUMP [+6]
  GETUPVAL R3 0
  MOVE R5 R0
  LOADK R6 K0 ["Selected"]
  NAMECALL R3 R3 K3 ["AddTag"]
  CALL R3 3 0
  NOT R1 R2
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 1
  GETIMPORT R3 K7 [Enum.FontStyle.Italic]
  SETTABLEKS R3 R2 K8 ["Style"]
  JUMP [+5]
  GETUPVAL R2 1
  GETIMPORT R3 K10 [Enum.FontStyle.Normal]
  SETTABLEKS R3 R2 K8 ["Style"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K11 ["OnChanged"]
  GETUPVAL R3 1
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["Value"]
  GETTABLEKS R3 R1 K1 ["Style"]
  GETIMPORT R4 K5 [Enum.FontStyle.Italic]
  JUMPIFEQ R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETTABLEKS R3 R1 K6 ["Bold"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K7 ["createElement"]
  GETUPVAL R5 1
  NEWTABLE R6 1 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K8 ["Tag"]
  LOADK R8 K9 ["X-Middle X-PadS X-RowM"]
  SETTABLE R8 R6 R7
  DUPTABLE R7 K10 [{"Bold", "Italic"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 1
  NEWTABLE R10 2 0
  GETIMPORT R11 K13 [UDim2.fromOffset]
  LOADN R12 24
  LOADN R13 24
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["Size"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K8 ["Tag"]
  JUMPIFNOT R3 [+5]
  GETUPVAL R12 2
  LOADK R13 K15 ["FontStyle X-Corner X-Stroke"]
  LOADK R14 K16 ["Selected"]
  CALL R12 2 1
  JUMP [+1]
  LOADK R12 K15 ["FontStyle X-Corner X-Stroke"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K18 [{"BoldButton"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  LOADK R13 K19 ["TextButton"]
  NEWTABLE R14 8 0
  LOADN R15 1
  SETTABLEKS R15 R14 K20 ["BackgroundTransparency"]
  LOADB R15 1
  SETTABLEKS R15 R14 K21 ["RichText"]
  GETIMPORT R15 K23 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K14 ["Size"]
  LOADK R15 K24 ["<font size='18' family='rbxasset://fonts/families/SourceSansPro.json'><b>B</b></font>"]
  SETTABLEKS R15 R14 K25 ["Text"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K26 ["Event"]
  GETTABLEKS R15 R16 K27 ["Activated"]
  NEWCLOSURE R16 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLE R16 R14 R15
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K8 ["Tag"]
  JUMPIFNOT R3 [+5]
  GETUPVAL R16 2
  LOADK R17 K3 ["FontStyle"]
  LOADK R18 K16 ["Selected"]
  CALL R16 2 1
  JUMP [+1]
  LOADK R16 K3 ["FontStyle"]
  SETTABLE R16 R14 R15
  CALL R12 2 1
  SETTABLEKS R12 R11 K17 ["BoldButton"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K6 ["Bold"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K7 ["createElement"]
  GETUPVAL R9 1
  NEWTABLE R10 2 0
  GETIMPORT R11 K13 [UDim2.fromOffset]
  LOADN R12 24
  LOADN R13 24
  CALL R11 2 1
  SETTABLEKS R11 R10 K14 ["Size"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K8 ["Tag"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R12 2
  LOADK R13 K15 ["FontStyle X-Corner X-Stroke"]
  LOADK R14 K16 ["Selected"]
  CALL R12 2 1
  JUMP [+1]
  LOADK R12 K15 ["FontStyle X-Corner X-Stroke"]
  SETTABLE R12 R10 R11
  DUPTABLE R11 K29 [{"ItalicButton"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K7 ["createElement"]
  LOADK R13 K19 ["TextButton"]
  NEWTABLE R14 8 0
  LOADN R15 1
  SETTABLEKS R15 R14 K20 ["BackgroundTransparency"]
  LOADB R15 1
  SETTABLEKS R15 R14 K21 ["RichText"]
  GETIMPORT R15 K23 [UDim2.fromScale]
  LOADN R16 1
  LOADN R17 1
  CALL R15 2 1
  SETTABLEKS R15 R14 K14 ["Size"]
  LOADK R15 K30 ["<font size='18' family='rbxasset://fonts/families/Inconsolata.json'><i>I</i></font>"]
  SETTABLEKS R15 R14 K25 ["Text"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K26 ["Event"]
  GETTABLEKS R15 R16 K27 ["Activated"]
  NEWCLOSURE R16 P1
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLE R16 R14 R15
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K8 ["Tag"]
  JUMPIFNOT R2 [+5]
  GETUPVAL R16 2
  LOADK R17 K3 ["FontStyle"]
  LOADK R18 K16 ["Selected"]
  CALL R16 2 1
  JUMP [+1]
  LOADK R16 K3 ["FontStyle"]
  SETTABLE R16 R14 R15
  CALL R12 2 1
  SETTABLEKS R12 R11 K28 ["ItalicButton"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K4 ["Italic"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["CollectionService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R5 K5 [script]
  GETTABLEKS R4 R5 K6 ["Parent"]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K12 ["Styling"]
  GETTABLEKS R4 R5 K13 ["joinTags"]
  GETTABLEKS R6 R3 K14 ["UI"]
  GETTABLEKS R5 R6 K15 ["Pane"]
  DUPCLOSURE R6 K16 [PROTO_0]
  CAPTURE VAL R0
  DUPCLOSURE R7 K17 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R0
  RETURN R7 1
