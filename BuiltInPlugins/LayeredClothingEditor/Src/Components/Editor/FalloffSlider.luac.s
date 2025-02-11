PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Analytics"]
  LOADK R2 K2 ["FalloffSliderAdjusted"]
  NAMECALL R0 R0 K3 ["getHandler"]
  CALL R0 2 1
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["LuaMeshEditingModuleContext"]
  NAMECALL R2 R1 K2 ["getCurrentTool"]
  CALL R2 1 1
  JUMPIF R2 [+1]
  RETURN R0 0
  MOVE R5 R0
  NAMECALL R3 R2 K3 ["setFalloff"]
  CALL R3 2 0
  GETUPVAL R3 0
  DUPTABLE R5 K5 [{"falloff"}]
  SETTABLEKS R0 R5 K4 ["falloff"]
  NAMECALL R3 R3 K6 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R1 K1 [{"falloff"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["DEFAULT_FALLOFF"]
  SETTABLEKS R2 R1 K0 ["falloff"]
  SETTABLEKS R1 R0 K3 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["reportFalloffChangeEvent"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["setFalloff"]
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["LuaMeshEditingModuleContext"]
  NAMECALL R2 R1 K2 ["getCurrentTool"]
  CALL R2 1 1
  JUMPIFNOT R2 [+9]
  DUPTABLE R5 K4 [{"falloff"}]
  NAMECALL R6 R2 K5 ["getFalloff"]
  CALL R6 1 1
  SETTABLEKS R6 R5 K3 ["falloff"]
  NAMECALL R3 R0 K6 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R2 K2 ["falloff"]
  GETTABLEKS R4 R1 K3 ["Size"]
  GETTABLEKS R5 R1 K4 ["LayoutOrder"]
  GETTABLEKS R6 R1 K5 ["ShowMinimal"]
  GETTABLEKS R7 R1 K6 ["Localization"]
  GETTABLEKS R8 R1 K7 ["Stylizer"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K21 [{"Title", "Value", "MaxValue", "SnapIncrement", "Height", "UsePercentage", "LayoutOrder", "SetValue", "ShowInputField", "ShowBackground", "IsDisabled", "OnChangeBegan", "OnTextBoxValueChanged"}]
  JUMPIF R6 [+6]
  LOADK R14 K22 ["ToolSettings"]
  LOADK R15 K23 ["FalloffDistance"]
  NAMECALL R12 R7 K24 ["getText"]
  CALL R12 3 1
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K9 ["Title"]
  SETTABLEKS R3 R11 K10 ["Value"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K25 ["MAX_FALLOFF"]
  SETTABLEKS R12 R11 K11 ["MaxValue"]
  LOADK R12 K26 [0.1]
  SETTABLEKS R12 R11 K12 ["SnapIncrement"]
  GETTABLEKS R12 R8 K27 ["SliderHeight"]
  SETTABLEKS R12 R11 K13 ["Height"]
  LOADB R12 0
  SETTABLEKS R12 R11 K14 ["UsePercentage"]
  SETTABLEKS R5 R11 K4 ["LayoutOrder"]
  GETTABLEKS R12 R0 K28 ["setFalloff"]
  SETTABLEKS R12 R11 K15 ["SetValue"]
  NOT R12 R6
  SETTABLEKS R12 R11 K16 ["ShowInputField"]
  LOADB R12 1
  SETTABLEKS R12 R11 K17 ["ShowBackground"]
  LOADB R12 0
  SETTABLEKS R12 R11 K18 ["IsDisabled"]
  GETUPVAL R13 3
  JUMPIFNOT R13 [+3]
  GETTABLEKS R12 R0 K29 ["reportFalloffChangeEvent"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K19 ["OnChangeBegan"]
  GETUPVAL R13 3
  JUMPIFNOT R13 [+3]
  GETTABLEKS R12 R0 K29 ["reportFalloffChangeEvent"]
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K20 ["OnTextBoxValueChanged"]
  CALL R9 2 -1
  RETURN R9 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["AvatarToolsShared"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["Contexts"]
  GETTABLEKS R3 R4 K9 ["LuaMeshEditingModuleContext"]
  GETTABLEKS R4 R2 K10 ["Components"]
  GETTABLEKS R5 R4 K11 ["SliderSetting"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R0 K5 ["Packages"]
  GETTABLEKS R8 R9 K15 ["Framework"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K16 ["ContextServices"]
  GETTABLEKS R9 R8 K17 ["withContext"]
  GETTABLEKS R10 R7 K18 ["UI"]
  GETTABLEKS R11 R10 K19 ["Pane"]
  GETTABLEKS R13 R2 K20 ["Flags"]
  GETTABLEKS R12 R13 K21 ["GetFFlagAFTSupportAdditionalAnalyticsLogging"]
  GETTABLEKS R13 R1 K22 ["PureComponent"]
  LOADK R15 K23 ["FalloffSlider"]
  NAMECALL R13 R13 K24 ["extend"]
  CALL R13 2 1
  DUPCLOSURE R14 K25 [PROTO_2]
  CAPTURE VAL R6
  SETTABLEKS R14 R13 K26 ["init"]
  DUPCLOSURE R14 K27 [PROTO_3]
  SETTABLEKS R14 R13 K28 ["didMount"]
  DUPCLOSURE R14 K29 [PROTO_4]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R12
  SETTABLEKS R14 R13 K30 ["render"]
  MOVE R14 R9
  DUPTABLE R15 K34 [{"Analytics", "Localization", "LuaMeshEditingModuleContext", "Stylizer"}]
  MOVE R17 R12
  CALL R17 0 1
  JUMPIFNOT R17 [+3]
  GETTABLEKS R16 R8 K31 ["Analytics"]
  JUMP [+1]
  LOADNIL R16
  SETTABLEKS R16 R15 K31 ["Analytics"]
  GETTABLEKS R16 R8 K32 ["Localization"]
  SETTABLEKS R16 R15 K32 ["Localization"]
  SETTABLEKS R3 R15 K9 ["LuaMeshEditingModuleContext"]
  GETTABLEKS R16 R8 K33 ["Stylizer"]
  SETTABLEKS R16 R15 K33 ["Stylizer"]
  CALL R14 1 1
  MOVE R15 R13
  CALL R14 1 1
  MOVE R13 R14
  RETURN R13 1
