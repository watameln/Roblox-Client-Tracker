PROTO_0:
  DUPTABLE R1 K1 [{"enabled"}]
  GETTABLEKS R3 R0 K0 ["enabled"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["enabled"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_0]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["store"]
  GETUPVAL R2 1
  CALL R2 0 -1
  NAMECALL R0 R0 K1 ["dispatch"]
  CALL R0 -1 0
  GETUPVAL R0 0
  DUPTABLE R2 K3 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["enabled"]
  NAMECALL R0 R0 K4 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  SETTABLEKS R0 R3 K0 ["enabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["reportCollaborateButtonPressed"]
  CALL R0 0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["toggleEnabled"]
  CALL R0 0 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  GETTABLEKS R3 R1 K1 ["Plugin"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K2 ["plugin"]
  DUPTABLE R2 K4 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["enabled"]
  SETTABLEKS R2 R0 K5 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["toggleEnabled"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R0 K7 ["onClose"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K8 ["onRestore"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K9 ["onWidgetEnabledChanged"]
  NEWTABLE R2 8 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K0 ["new"]
  CALL R3 0 1
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K0 ["new"]
  NAMECALL R5 R3 K10 ["get"]
  CALL R5 1 -1
  CALL R4 -1 1
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K0 ["new"]
  NAMECALL R6 R3 K10 ["get"]
  CALL R6 1 -1
  CALL R5 -1 1
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K0 ["new"]
  NAMECALL R7 R3 K10 ["get"]
  CALL R7 1 -1
  CALL R6 -1 1
  GETUPVAL R8 6
  GETTABLEKS R7 R8 K0 ["new"]
  NAMECALL R8 R3 K10 ["get"]
  CALL R8 1 -1
  CALL R7 -1 1
  GETUPVAL R9 7
  GETTABLEKS R8 R9 K0 ["new"]
  NAMECALL R9 R3 K10 ["get"]
  CALL R9 1 -1
  CALL R8 -1 1
  NAMECALL R9 R3 K10 ["get"]
  CALL R9 1 1
  SETTABLEKS R9 R2 K11 ["networking"]
  SETTABLEKS R4 R2 K12 ["groupMetadataController"]
  SETTABLEKS R5 R2 K13 ["groupRolePermisionsController"]
  SETTABLEKS R6 R2 K14 ["gamePermissionsController"]
  SETTABLEKS R7 R2 K15 ["gameMetadataController"]
  SETTABLEKS R8 R2 K16 ["socialController"]
  GETUPVAL R10 8
  GETTABLEKS R9 R10 K17 ["ThunkWithArgsMiddleware"]
  MOVE R10 R2
  CALL R9 1 1
  NEWTABLE R10 0 1
  MOVE R11 R9
  SETLIST R10 R11 1 [1]
  GETUPVAL R13 9
  GETTABLEKS R12 R13 K18 ["Store"]
  GETTABLEKS R11 R12 K0 ["new"]
  GETUPVAL R12 10
  LOADNIL R13
  MOVE R14 R10
  CALL R11 3 1
  SETTABLEKS R11 R0 K19 ["store"]
  GETUPVAL R13 11
  GETTABLEKS R12 R13 K20 ["Localization"]
  GETTABLEKS R11 R12 K0 ["new"]
  DUPTABLE R12 K24 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R13 12
  SETTABLEKS R13 R12 K21 ["stringResourceTable"]
  GETUPVAL R13 13
  SETTABLEKS R13 R12 K22 ["translationResourceTable"]
  LOADK R13 K25 ["ManageCollaborators"]
  SETTABLEKS R13 R12 K23 ["pluginName"]
  CALL R11 1 1
  SETTABLEKS R11 R0 K26 ["localization"]
  GETUPVAL R13 11
  GETTABLEKS R12 R13 K27 ["Analytics"]
  GETTABLEKS R11 R12 K0 ["new"]
  DUPCLOSURE R12 K28 [PROTO_5]
  NEWTABLE R13 0 0
  CALL R11 2 1
  SETTABLEKS R11 R0 K29 ["analytics"]
  NEWCLOSURE R11 P5
  CAPTURE UPVAL U14
  CAPTURE VAL R0
  GETUPVAL R12 15
  JUMPIFNOT R12 [+11]
  GETTABLEKS R14 R1 K31 ["PluginLoaderContext"]
  GETTABLEKS R13 R14 K32 ["signals"]
  GETTABLEKS R12 R13 K30 ["TeamCreateService.ToggleManageCollaborators"]
  MOVE R14 R11
  NAMECALL R12 R12 K33 ["Connect"]
  CALL R12 2 0
  RETURN R0 0
  GETUPVAL R13 16
  GETTABLEKS R12 R13 K34 ["ToggleManageCollaborators"]
  MOVE R14 R11
  NAMECALL R12 R12 K33 ["Connect"]
  CALL R12 2 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R2 K2 ["enabled"]
  GETIMPORT R6 K4 [game]
  GETTABLEKS R5 R6 K5 ["GameId"]
  JUMPIFNOTEQKN R5 K6 [0] [+2]
  LOADB R4 0 +1
  LOADB R4 1
  GETUPVAL R5 0
  CALL R5 0 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K7 ["provide"]
  NEWTABLE R7 0 6
  GETTABLEKS R8 R0 K8 ["plugin"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K9 ["new"]
  GETTABLEKS R10 R0 K10 ["store"]
  CALL R9 1 1
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K9 ["new"]
  GETTABLEKS R11 R1 K11 ["Plugin"]
  NAMECALL R11 R11 K12 ["getMouse"]
  CALL R11 1 -1
  CALL R10 -1 1
  MOVE R11 R5
  GETTABLEKS R12 R0 K13 ["localization"]
  GETTABLEKS R13 R0 K14 ["analytics"]
  SETLIST R7 R8 6 [1]
  DUPTABLE R8 K16 [{"Dialog"}]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K17 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K24 [{"CreateWidgetImmediately", "Enabled", "Modal", "Title", "Size", "OnClose"}]
  LOADB R12 1
  SETTABLEKS R12 R11 K18 ["CreateWidgetImmediately"]
  SETTABLEKS R3 R11 K19 ["Enabled"]
  LOADB R12 1
  SETTABLEKS R12 R11 K20 ["Modal"]
  GETTABLEKS R12 R0 K13 ["localization"]
  LOADK R14 K11 ["Plugin"]
  LOADK R15 K21 ["Title"]
  NAMECALL R12 R12 K25 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K21 ["Title"]
  GETIMPORT R12 K27 [Vector2.new]
  LOADN R13 32
  LOADN R14 59
  CALL R12 2 1
  SETTABLEKS R12 R11 K22 ["Size"]
  GETTABLEKS R12 R0 K28 ["onClose"]
  SETTABLEKS R12 R11 K23 ["OnClose"]
  DUPTABLE R12 K31 [{"PermissionsView", "SaveToRobloxView"}]
  JUMPIFNOT R4 [+17]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K17 ["createElement"]
  GETUPVAL R14 6
  DUPTABLE R15 K33 [{"CloseWidget", "Plugin", "Enabled"}]
  GETTABLEKS R16 R0 K28 ["onClose"]
  SETTABLEKS R16 R15 K32 ["CloseWidget"]
  GETTABLEKS R16 R0 K8 ["plugin"]
  SETTABLEKS R16 R15 K11 ["Plugin"]
  SETTABLEKS R3 R15 K19 ["Enabled"]
  CALL R13 2 1
  JUMPIF R13 [+1]
  LOADNIL R13
  SETTABLEKS R13 R12 K29 ["PermissionsView"]
  NOT R13 R4
  JUMPIFNOT R13 [+10]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K17 ["createElement"]
  GETUPVAL R14 7
  DUPTABLE R15 K34 [{"CloseWidget"}]
  GETTABLEKS R16 R0 K28 ["onClose"]
  SETTABLEKS R16 R15 K32 ["CloseWidget"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K30 ["SaveToRobloxView"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K15 ["Dialog"]
  CALL R6 2 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ImprovePluginSpeed_ManageCollaborators"]
  NAMECALL R0 R0 K3 ["getFastFlag"]
  CALL R0 2 1
  GETIMPORT R3 K5 [script]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Rodux"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K9 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["Util"]
  GETTABLEKS R6 R4 K14 ["UI"]
  GETTABLEKS R7 R6 K15 ["Dialog"]
  GETTABLEKS R8 R4 K16 ["ContextServices"]
  GETTABLEKS R9 R8 K17 ["Plugin"]
  GETTABLEKS R10 R8 K18 ["Mouse"]
  GETTABLEKS R11 R8 K19 ["Store"]
  GETIMPORT R12 K8 [require]
  GETTABLEKS R15 R1 K20 ["Src"]
  GETTABLEKS R14 R15 K21 ["Reducers"]
  GETTABLEKS R13 R14 K22 ["MainReducer"]
  CALL R12 1 1
  GETIMPORT R13 K8 [require]
  GETTABLEKS R16 R1 K20 ["Src"]
  GETTABLEKS R15 R16 K23 ["Resources"]
  GETTABLEKS R14 R15 K24 ["MakeTheme"]
  CALL R13 1 1
  GETTABLEKS R17 R1 K20 ["Src"]
  GETTABLEKS R16 R17 K23 ["Resources"]
  GETTABLEKS R15 R16 K25 ["Localization"]
  GETTABLEKS R14 R15 K26 ["SourceStrings"]
  GETTABLEKS R18 R1 K20 ["Src"]
  GETTABLEKS R17 R18 K23 ["Resources"]
  GETTABLEKS R16 R17 K25 ["Localization"]
  GETTABLEKS R15 R16 K27 ["LocalizedStrings"]
  GETTABLEKS R17 R1 K20 ["Src"]
  GETTABLEKS R16 R17 K28 ["Components"]
  GETIMPORT R17 K8 [require]
  GETTABLEKS R18 R16 K29 ["PermissionsView"]
  CALL R17 1 1
  GETIMPORT R18 K8 [require]
  GETTABLEKS R19 R16 K30 ["SaveToRobloxView"]
  CALL R18 1 1
  GETIMPORT R19 K1 [game]
  LOADK R21 K31 ["TeamCreateService"]
  NAMECALL R19 R19 K32 ["GetService"]
  CALL R19 2 1
  GETTABLEKS R20 R2 K33 ["PureComponent"]
  LOADK R22 K34 ["MainPlugin"]
  NAMECALL R20 R20 K35 ["extend"]
  CALL R20 2 1
  GETIMPORT R21 K8 [require]
  GETTABLEKS R24 R1 K20 ["Src"]
  GETTABLEKS R23 R24 K36 ["Networking"]
  GETTABLEKS R22 R23 K36 ["Networking"]
  CALL R21 1 1
  GETIMPORT R22 K8 [require]
  GETTABLEKS R25 R1 K20 ["Src"]
  GETTABLEKS R24 R25 K37 ["Controllers"]
  GETTABLEKS R23 R24 K38 ["GroupMetadataController"]
  CALL R22 1 1
  GETIMPORT R23 K8 [require]
  GETTABLEKS R26 R1 K20 ["Src"]
  GETTABLEKS R25 R26 K37 ["Controllers"]
  GETTABLEKS R24 R25 K39 ["GroupRolePermissionsController"]
  CALL R23 1 1
  GETIMPORT R24 K8 [require]
  GETTABLEKS R27 R1 K20 ["Src"]
  GETTABLEKS R26 R27 K37 ["Controllers"]
  GETTABLEKS R25 R26 K40 ["GamePermissionsController"]
  CALL R24 1 1
  GETIMPORT R25 K8 [require]
  GETTABLEKS R28 R1 K20 ["Src"]
  GETTABLEKS R27 R28 K37 ["Controllers"]
  GETTABLEKS R26 R27 K41 ["GameMetadataController"]
  CALL R25 1 1
  GETIMPORT R26 K8 [require]
  GETTABLEKS R29 R1 K20 ["Src"]
  GETTABLEKS R28 R29 K37 ["Controllers"]
  GETTABLEKS R27 R28 K42 ["SocialController"]
  CALL R26 1 1
  GETIMPORT R27 K8 [require]
  GETTABLEKS R30 R1 K20 ["Src"]
  GETTABLEKS R29 R30 K43 ["Actions"]
  GETTABLEKS R28 R29 K44 ["ResetStore"]
  CALL R27 1 1
  GETIMPORT R28 K8 [require]
  GETTABLEKS R31 R1 K20 ["Src"]
  GETTABLEKS R30 R31 K13 ["Util"]
  GETTABLEKS R29 R30 K45 ["Analytics"]
  CALL R28 1 1
  DUPCLOSURE R29 K46 [PROTO_7]
  CAPTURE VAL R9
  CAPTURE VAL R27
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R24
  CAPTURE VAL R25
  CAPTURE VAL R26
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R28
  CAPTURE VAL R0
  CAPTURE VAL R19
  SETTABLEKS R29 R20 K47 ["init"]
  DUPCLOSURE R29 K48 [PROTO_8]
  CAPTURE VAL R13
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R17
  CAPTURE VAL R18
  SETTABLEKS R29 R20 K49 ["render"]
  RETURN R20 1
