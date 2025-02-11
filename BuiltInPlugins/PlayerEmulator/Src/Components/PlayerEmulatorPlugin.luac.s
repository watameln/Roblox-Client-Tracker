PROTO_0:
  GETTABLEKS R2 R0 K0 ["state"]
  GETTABLEKS R1 R2 K1 ["active"]
  GETTABLEKS R2 R0 K2 ["button"]
  JUMPIFNOT R2 [+6]
  GETTABLEKS R2 R0 K2 ["button"]
  MOVE R4 R1
  NAMECALL R2 R2 K3 ["SetActive"]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["plugin"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["PLUGIN_WIDGET_STATE"]
  NAMECALL R2 R1 K3 ["GetSetting"]
  CALL R2 2 1
  GETTABLEKS R4 R0 K4 ["state"]
  GETTABLEKS R3 R4 K5 ["active"]
  JUMPIFEQ R2 R3 [+7]
  DUPTABLE R5 K6 [{"active"}]
  SETTABLEKS R2 R5 K5 ["active"]
  NAMECALL R3 R0 K7 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["plugin"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["state"]
  GETTABLEKS R2 R3 K3 ["active"]
  NOT R1 R2
  GETUPVAL R2 0
  DUPTABLE R4 K4 [{"active"}]
  SETTABLEKS R1 R4 K3 ["active"]
  NAMECALL R2 R2 K5 ["setState"]
  CALL R2 2 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["PLUGIN_WIDGET_STATE"]
  MOVE R5 R1
  NAMECALL R2 R0 K7 ["SetSetting"]
  CALL R2 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"active"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["active"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["props"]
  GETTABLEKS R0 R1 K4 ["plugin"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["PLUGIN_WIDGET_STATE"]
  LOADB R4 0
  NAMECALL R1 R0 K6 ["SetSetting"]
  CALL R1 3 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"active"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["active"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  JUMPIF R2 [+12]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["onPluginWillDestroy"]
  JUMPIFNOT R3 [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["onPluginWillDestroy"]
  CALL R3 0 0
  RETURN R0 0

PROTO_6:
  DUPTABLE R1 K1 [{"active"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["active"]
  SETTABLEKS R1 R0 K2 ["state"]
  NEWTABLE R1 0 6
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["Plugin"]
  GETTABLEKS R2 R3 K4 ["new"]
  GETTABLEKS R4 R0 K5 ["props"]
  GETTABLEKS R3 R4 K6 ["plugin"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["localization"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["theme"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["networking"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K10 ["store"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K11 ["Mouse"]
  GETTABLEKS R7 R8 K4 ["new"]
  GETTABLEKS R9 R0 K5 ["props"]
  GETTABLEKS R8 R9 K6 ["plugin"]
  NAMECALL R8 R8 K12 ["GetMouse"]
  CALL R8 1 -1
  CALL R7 -1 -1
  SETLIST R1 R2 -1 [1]
  SETTABLEKS R1 R0 K13 ["contextItems"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K14 ["toggleActive"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K15 ["onClose"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K16 ["onWidgetEnabledChanged"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K17 ["onAncestryChanged"]
  GETTABLEKS R3 R0 K5 ["props"]
  GETTABLEKS R2 R3 K18 ["pluginLoaderContext"]
  GETTABLEKS R1 R2 K19 ["mainButton"]
  SETTABLEKS R1 R0 K20 ["button"]
  GETTABLEKS R3 R0 K5 ["props"]
  GETTABLEKS R2 R3 K18 ["pluginLoaderContext"]
  GETTABLEKS R1 R2 K21 ["mainButtonClickedSignal"]
  GETTABLEKS R3 R0 K14 ["toggleActive"]
  NAMECALL R1 R1 K22 ["Connect"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  NAMECALL R1 R0 K0 ["initPluginWidgetStatus"]
  CALL R1 1 0
  NAMECALL R1 R0 K1 ["updateToolbarButtonActiveState"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  NAMECALL R1 R0 K0 ["updateToolbarButtonActiveState"]
  CALL R1 1 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["state"]
  GETTABLEKS R2 R1 K1 ["active"]
  GETUPVAL R3 0
  NAMECALL R3 R3 K2 ["IsEdit"]
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["provide"]
  GETTABLEKS R5 R0 K4 ["contextItems"]
  DUPTABLE R6 K6 [{"MainWidget"}]
  MOVE R7 R3
  JUMPIFNOT R7 [+65]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K7 ["createElement"]
  GETUPVAL R8 3
  NEWTABLE R9 16 0
  GETUPVAL R11 4
  JUMPIFNOT R11 [+2]
  LOADK R10 K8 ["PlayerEmulator"]
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K9 ["Id"]
  SETTABLEKS R2 R9 K10 ["Enabled"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K11 ["localization"]
  LOADK R12 K12 ["Meta"]
  LOADK R13 K13 ["PluginTitle"]
  NAMECALL R10 R10 K14 ["getText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K15 ["Title"]
  GETIMPORT R10 K19 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R10 R9 K17 ["ZIndexBehavior"]
  GETIMPORT R10 K22 [Enum.InitialDockState.Left]
  SETTABLEKS R10 R9 K20 ["InitialDockState"]
  GETUPVAL R10 6
  SETTABLEKS R10 R9 K23 ["Size"]
  GETUPVAL R10 6
  SETTABLEKS R10 R9 K24 ["MinSize"]
  GETTABLEKS R10 R0 K25 ["onClose"]
  SETTABLEKS R10 R9 K26 ["OnClose"]
  LOADB R10 0
  SETTABLEKS R10 R9 K27 ["ShouldRestore"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K28 ["Change"]
  GETTABLEKS R10 R11 K10 ["Enabled"]
  GETTABLEKS R11 R0 K29 ["onWidgetEnabledChanged"]
  SETTABLE R11 R9 R10
  DUPTABLE R10 K31 [{"MainView"}]
  MOVE R11 R2
  JUMPIFNOT R11 [+5]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K7 ["createElement"]
  GETUPVAL R12 7
  CALL R11 1 1
  SETTABLEKS R11 R10 K30 ["MainView"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K5 ["MainWidget"]
  CALL R4 2 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioFixPluginWidgetLocalizedIds"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["RunService"]
  NAMECALL R1 R1 K5 ["GetService"]
  CALL R1 2 1
  GETIMPORT R5 K7 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETTABLEKS R2 R3 K8 ["Parent"]
  GETIMPORT R3 K10 [require]
  GETTABLEKS R5 R2 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Roact"]
  CALL R3 1 1
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R2 K11 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K14 ["ContextServices"]
  GETTABLEKS R6 R4 K15 ["UI"]
  GETTABLEKS R7 R6 K16 ["DockWidget"]
  GETIMPORT R8 K10 [require]
  GETTABLEKS R11 R2 K17 ["Src"]
  GETTABLEKS R10 R11 K18 ["Components"]
  GETTABLEKS R9 R10 K19 ["MainView"]
  CALL R8 1 1
  GETIMPORT R9 K10 [require]
  GETTABLEKS R12 R2 K17 ["Src"]
  GETTABLEKS R11 R12 K20 ["Util"]
  GETTABLEKS R10 R11 K21 ["CreatePluginGlobals"]
  CALL R9 1 1
  GETIMPORT R10 K10 [require]
  GETTABLEKS R13 R2 K17 ["Src"]
  GETTABLEKS R12 R13 K20 ["Util"]
  GETTABLEKS R11 R12 K22 ["Constants"]
  CALL R10 1 1
  GETTABLEKS R11 R3 K23 ["PureComponent"]
  LOADK R13 K24 ["PlayerEmulatorPlugin"]
  NAMECALL R11 R11 K25 ["extend"]
  CALL R11 2 1
  GETIMPORT R12 K28 [Vector2.new]
  LOADN R13 64
  LOADN R14 74
  CALL R12 2 1
  DUPCLOSURE R13 K29 [PROTO_0]
  SETTABLEKS R13 R11 K30 ["updateToolbarButtonActiveState"]
  DUPCLOSURE R13 K31 [PROTO_1]
  CAPTURE VAL R10
  SETTABLEKS R13 R11 K32 ["initPluginWidgetStatus"]
  DUPCLOSURE R13 K33 [PROTO_6]
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R13 R11 K34 ["init"]
  DUPCLOSURE R13 K35 [PROTO_7]
  SETTABLEKS R13 R11 K36 ["didMount"]
  DUPCLOSURE R13 K37 [PROTO_8]
  SETTABLEKS R13 R11 K38 ["didUpdate"]
  DUPCLOSURE R13 K39 [PROTO_9]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R8
  SETTABLEKS R13 R11 K40 ["render"]
  RETURN R11 1
