PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["isClothes"]
  MOVE R3 R0
  CALL R2 1 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R2 R0 K2 ["Parent"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["isAvatar"]
  MOVE R4 R2
  CALL R3 1 1
  JUMPIF R3 [+1]
  RETURN R0 0
  NAMECALL R3 R2 K4 ["Clone"]
  CALL R3 1 1
  GETIMPORT R4 K6 [ipairs]
  NAMECALL R5 R3 K7 ["GetChildren"]
  CALL R5 1 -1
  CALL R4 -1 3
  FORGPREP_INEXT R4
  GETTABLEKS R9 R8 K8 ["Name"]
  GETTABLEKS R10 R0 K8 ["Name"]
  JUMPIFNOTEQ R9 R10 [+4]
  NAMECALL R9 R8 K9 ["Destroy"]
  CALL R9 1 0
  FORGLOOP R4 2 [inext] [-10]
  GETTABLEKS R4 R1 K10 ["AddUserAddedAssetForPreview"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K11 ["TABS_KEYS"]
  GETTABLEKS R5 R6 K12 ["Avatars"]
  MOVE R6 R3
  CALL R4 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["EditingItemContext"]
  MOVE R3 R0
  NAMECALL R1 R1 K2 ["setSourceItem"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["checkForPreviewAvatar"]
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K4 ["SetToolMode"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["TOOL_MODE"]
  GETTABLEKS R2 R3 K6 ["None"]
  CALL R1 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K7 ["GoToNext"]
  CALL R1 0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setSourceItem"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETUPVAL R2 1
  GETTABLEKS R3 R1 K1 ["Plugin"]
  GETTABLEKS R4 R1 K2 ["Localization"]
  GETUPVAL R5 2
  DUPTABLE R6 K5 [{"Text", "OnConfirm"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K2 ["Localization"]
  LOADK R9 K6 ["Select"]
  LOADK R10 K7 ["LoseChanges"]
  NAMECALL R7 R7 K8 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K3 ["Text"]
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  SETTABLEKS R7 R6 K4 ["OnConfirm"]
  CALL R2 4 0
  RETURN R0 0

PROTO_4:
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["state"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["props"]
  GETTABLEKS R2 R0 K2 ["selectedPart"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["isSelectedInstanceValid"]
  MOVE R4 R2
  CALL R3 1 1
  JUMPIF R3 [+37]
  GETUPVAL R4 0
  DUPTABLE R6 K5 [{"invalidSelected", "selectedPart"}]
  LOADB R7 1
  SETTABLEKS R7 R6 K4 ["invalidSelected"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K6 ["None"]
  SETTABLEKS R7 R6 K2 ["selectedPart"]
  NAMECALL R4 R4 K7 ["setState"]
  CALL R4 2 0
  GETUPVAL R4 2
  GETTABLEKS R5 R1 K8 ["Plugin"]
  GETTABLEKS R6 R1 K9 ["Localization"]
  GETUPVAL R7 3
  DUPTABLE R8 K12 [{"Text", "OnClose"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K1 ["props"]
  GETTABLEKS R9 R10 K9 ["Localization"]
  LOADK R11 K13 ["Select"]
  LOADK R12 K14 ["Invalid"]
  NAMECALL R9 R9 K15 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K10 ["Text"]
  DUPCLOSURE R9 K16 [PROTO_4]
  SETTABLEKS R9 R8 K11 ["OnClose"]
  CALL R4 4 0
  RETURN R0 0
  JUMPIFNOT R2 [+31]
  GETTABLEKS R4 R1 K17 ["EditingItemContext"]
  NAMECALL R4 R4 K18 ["getSourceItem"]
  CALL R4 1 1
  LOADNIL R5
  GETUPVAL R6 4
  CALL R6 0 1
  JUMPIFNOT R6 [+2]
  MOVE R5 R2
  JUMP [+6]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K19 ["getAvatarFromMeshPart"]
  MOVE R7 R2
  CALL R6 1 1
  MOVE R5 R6
  JUMPIFNOT R4 [+2]
  JUMPIFNOTEQ R4 R5 [+7]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K20 ["setSourceItem"]
  MOVE R7 R5
  CALL R6 1 0
  RETURN R0 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K21 ["onSelectNewItem"]
  MOVE R7 R5
  CALL R6 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["EditingItemContext"]
  NAMECALL R2 R2 K2 ["getItem"]
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["isPotentialLayeredClothingItem"]
  MOVE R4 R0
  CALL R3 1 1
  JUMPIF R3 [+2]
  LOADB R3 0
  RETURN R3 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["hasInvalidCage"]
  MOVE R4 R0
  CALL R3 1 1
  JUMPIFNOT R3 [+2]
  LOADB R3 0
  RETURN R3 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["isAvatar"]
  MOVE R4 R0
  CALL R3 1 1
  LOADK R6 K6 ["MeshPart"]
  NAMECALL R4 R0 K7 ["IsA"]
  CALL R4 2 1
  JUMPIFNOT R4 [+4]
  LOADK R6 K8 ["WrapTarget"]
  NAMECALL R4 R0 K9 ["FindFirstChildWhichIsA"]
  CALL R4 2 1
  JUMPIF R3 [+1]
  JUMPIFNOT R4 [+2]
  LOADB R5 0
  RETURN R5 1
  LOADK R8 K10 ["LayeredClothingEditorPreview"]
  NAMECALL R6 R0 K11 ["FindFirstAncestor"]
  CALL R6 2 1
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  JUMPIFEQ R0 R2 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  MOVE R7 R2
  JUMPIFNOT R7 [+6]
  GETTABLEKS R8 R2 K12 ["Parent"]
  JUMPIFEQ R0 R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  MOVE R8 R2
  JUMPIFNOT R8 [+5]
  GETTABLEKS R10 R2 K13 ["Name"]
  NAMECALL R8 R0 K11 ["FindFirstAncestor"]
  CALL R8 2 1
  MOVE R9 R0
  JUMPIFNOT R9 [+10]
  MOVE R9 R2
  JUMPIFNOT R9 [+8]
  GETTABLEKS R10 R0 K12 ["Parent"]
  GETTABLEKS R11 R2 K12 ["Parent"]
  JUMPIFEQ R10 R11 [+2]
  LOADB R9 0 +1
  LOADB R9 1
  MOVE R11 R5
  JUMPIF R11 [+7]
  MOVE R11 R6
  JUMPIF R11 [+5]
  MOVE R11 R7
  JUMPIF R11 [+3]
  MOVE R11 R9
  JUMPIF R11 [+1]
  MOVE R11 R8
  NOT R10 R11
  RETURN R10 1

PROTO_7:
  GETUPVAL R0 0
  DUPTABLE R2 K2 [{"selectedPart", "invalidSelected"}]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["None"]
  SETTABLEKS R3 R2 K0 ["selectedPart"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["invalidSelected"]
  NAMECALL R0 R0 K4 ["setState"]
  CALL R0 2 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K5 ["ancestryChangedHandle"]
  NAMECALL R0 R0 K6 ["Disconnect"]
  CALL R0 1 0
  GETUPVAL R0 0
  LOADNIL R1
  SETTABLEKS R1 R0 K5 ["ancestryChangedHandle"]
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  DUPTABLE R3 K2 [{"selectedPart", "invalidSelected"}]
  GETUPVAL R5 1
  CALL R5 0 1
  JUMPIFNOT R5 [+6]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["getHandle"]
  MOVE R5 R0
  CALL R4 1 1
  JUMP [+1]
  MOVE R4 R0
  SETTABLEKS R4 R3 K0 ["selectedPart"]
  LOADB R4 0
  SETTABLEKS R4 R3 K1 ["invalidSelected"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["ancestryChangedHandle"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K5 ["ancestryChangedHandle"]
  NAMECALL R1 R1 K6 ["Disconnect"]
  CALL R1 1 0
  GETUPVAL R1 0
  GETTABLEKS R2 R0 K7 ["AncestryChanged"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U3
  NAMECALL R2 R2 K8 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K5 ["ancestryChangedHandle"]
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  DUPTABLE R2 K2 [{"invalidSelected", "selectedPart"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["invalidSelected"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["None"]
  SETTABLEKS R3 R2 K1 ["selectedPart"]
  NAMECALL R0 R0 K4 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_10:
  DUPTABLE R1 K2 [{"selectedPart", "invalidSelected"}]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["selectedPart"]
  LOADB R2 0
  SETTABLEKS R2 R1 K1 ["invalidSelected"]
  SETTABLEKS R1 R0 K3 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K4 ["checkForPreviewAvatar"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K5 ["setSourceItem"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R1 R0 K6 ["onSelectNewItem"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U3
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K7 ["onConfirmSelection"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K8 ["isSelectedInstanceValid"]
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U7
  CAPTURE UPVAL U0
  CAPTURE UPVAL U5
  SETTABLEKS R1 R0 K9 ["onSelectValidInstance"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  SETTABLEKS R1 R0 K10 ["onInvalidSelectionInstance"]
  RETURN R0 0

PROTO_11:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["EditingItemContext"]
  NAMECALL R1 R1 K2 ["getSourceItem"]
  CALL R1 1 1
  JUMPIFNOT R1 [+6]
  DUPTABLE R4 K4 [{"selectedPart"}]
  SETTABLEKS R1 R4 K3 ["selectedPart"]
  NAMECALL R2 R0 K5 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R4 R2 K2 ["selectedPart"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R2 K2 ["selectedPart"]
  GETTABLEKS R3 R4 K3 ["Name"]
  JUMPIF R3 [+1]
  LOADK R3 K4 [""]
  GETTABLEKS R4 R2 K5 ["invalidSelected"]
  JUMPIFNOTEQKS R3 K4 [""] [+2]
  LOADB R5 0 +1
  LOADB R5 1
  GETTABLEKS R6 R1 K6 ["Stylizer"]
  GETTABLEKS R7 R1 K7 ["Localization"]
  JUMPIFNOT R4 [+6]
  LOADK R10 K8 ["Select"]
  LOADK R11 K9 ["Invalid"]
  NAMECALL R8 R7 K10 ["getText"]
  CALL R8 3 1
  JUMPIF R8 [+1]
  MOVE R8 R3
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["createElement"]
  LOADK R10 K12 ["Frame"]
  DUPTABLE R11 K16 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R12 K19 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K13 ["Size"]
  GETTABLEKS R12 R6 K20 ["BackgroundColor"]
  SETTABLEKS R12 R11 K14 ["BackgroundColor3"]
  LOADN R12 0
  SETTABLEKS R12 R11 K15 ["BorderSizePixel"]
  DUPTABLE R12 K23 [{"SelectFrame", "InstanceSelector"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K11 ["createElement"]
  GETUPVAL R14 1
  DUPTABLE R15 K27 [{"PartName", "ButtonEnabled", "OnConfirmSelection"}]
  SETTABLEKS R8 R15 K24 ["PartName"]
  SETTABLEKS R5 R15 K25 ["ButtonEnabled"]
  GETTABLEKS R16 R0 K28 ["onConfirmSelection"]
  SETTABLEKS R16 R15 K26 ["OnConfirmSelection"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K21 ["SelectFrame"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K11 ["createElement"]
  GETUPVAL R14 2
  DUPTABLE R15 K32 [{"IsSelectedInstanceValid", "OnValidSelection", "OnInvalidSelection"}]
  GETTABLEKS R16 R0 K33 ["isSelectedInstanceValid"]
  SETTABLEKS R16 R15 K29 ["IsSelectedInstanceValid"]
  GETTABLEKS R16 R0 K34 ["onSelectValidInstance"]
  SETTABLEKS R16 R15 K30 ["OnValidSelection"]
  GETTABLEKS R16 R0 K35 ["onInvalidSelectionInstance"]
  SETTABLEKS R16 R15 K31 ["OnInvalidSelection"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K22 ["InstanceSelector"]
  CALL R9 3 -1
  RETURN R9 -1

PROTO_13:
  GETTABLEKS R1 R0 K0 ["ancestryChangedHandle"]
  JUMPIFNOT R1 [+8]
  GETTABLEKS R1 R0 K0 ["ancestryChangedHandle"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  LOADNIL R1
  SETTABLEKS R1 R0 K0 ["ancestryChangedHandle"]
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_16:
  DUPTABLE R1 K2 [{"SetToolMode", "AddUserAddedAssetForPreview"}]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R1 K0 ["SetToolMode"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R1 K1 ["AddUserAddedAssetForPreview"]
  RETURN R1 1

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
  GETTABLEKS R3 R4 K7 ["RoactRodux"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["AvatarToolsShared"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K9 ["Util"]
  GETTABLEKS R4 R5 K10 ["AccessoryAndBodyToolShared"]
  GETTABLEKS R5 R4 K11 ["ItemCharacteristics"]
  GETTABLEKS R6 R4 K12 ["PreviewConstants"]
  GETTABLEKS R7 R3 K13 ["Components"]
  GETTABLEKS R8 R7 K14 ["ConfirmDialog"]
  GETTABLEKS R9 R7 K15 ["ConfirmCancelDialog"]
  GETTABLEKS R10 R7 K16 ["InstanceSelector"]
  GETIMPORT R11 K4 [require]
  GETTABLEKS R13 R0 K5 ["Packages"]
  GETTABLEKS R12 R13 K17 ["Framework"]
  CALL R11 1 1
  GETTABLEKS R12 R11 K18 ["ContextServices"]
  GETTABLEKS R13 R12 K19 ["withContext"]
  GETTABLEKS R15 R3 K20 ["Contexts"]
  GETTABLEKS R14 R15 K21 ["EditingItemContext"]
  GETIMPORT R15 K4 [require]
  GETTABLEKS R18 R0 K22 ["Src"]
  GETTABLEKS R17 R18 K23 ["Actions"]
  GETTABLEKS R16 R17 K24 ["SetToolMode"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R19 R0 K22 ["Src"]
  GETTABLEKS R18 R19 K25 ["Thunks"]
  GETTABLEKS R17 R18 K26 ["AddUserAddedAssetForPreview"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R20 R0 K22 ["Src"]
  GETTABLEKS R19 R20 K13 ["Components"]
  GETTABLEKS R18 R19 K27 ["SelectFrame"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R21 R0 K22 ["Src"]
  GETTABLEKS R20 R21 K9 ["Util"]
  GETTABLEKS R19 R20 K28 ["ShowDialog"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R22 R0 K22 ["Src"]
  GETTABLEKS R21 R22 K9 ["Util"]
  GETTABLEKS R20 R21 K29 ["Constants"]
  CALL R19 1 1
  GETTABLEKS R20 R1 K30 ["PureComponent"]
  LOADK R22 K31 ["SelectItemScreen"]
  NAMECALL R20 R20 K32 ["extend"]
  CALL R20 2 1
  GETTABLEKS R22 R3 K33 ["Flags"]
  GETTABLEKS R21 R22 K34 ["GetFFlagAFTSelectModelGroup"]
  GETTABLEKS R22 R11 K9 ["Util"]
  GETTABLEKS R23 R22 K35 ["Typecheck"]
  GETTABLEKS R24 R23 K36 ["wrap"]
  MOVE R25 R20
  GETIMPORT R26 K1 [script]
  CALL R24 2 0
  DUPCLOSURE R24 K37 [PROTO_10]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R9
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R21
  SETTABLEKS R24 R20 K38 ["init"]
  DUPCLOSURE R24 K39 [PROTO_11]
  SETTABLEKS R24 R20 K40 ["didMount"]
  DUPCLOSURE R24 K41 [PROTO_12]
  CAPTURE VAL R1
  CAPTURE VAL R17
  CAPTURE VAL R10
  SETTABLEKS R24 R20 K42 ["render"]
  DUPCLOSURE R24 K43 [PROTO_13]
  SETTABLEKS R24 R20 K44 ["willUnmount"]
  MOVE R24 R13
  DUPTABLE R25 K48 [{"Plugin", "Stylizer", "Localization", "EditingItemContext"}]
  GETTABLEKS R26 R12 K45 ["Plugin"]
  SETTABLEKS R26 R25 K45 ["Plugin"]
  GETTABLEKS R26 R12 K46 ["Stylizer"]
  SETTABLEKS R26 R25 K46 ["Stylizer"]
  GETTABLEKS R26 R12 K47 ["Localization"]
  SETTABLEKS R26 R25 K47 ["Localization"]
  SETTABLEKS R14 R25 K21 ["EditingItemContext"]
  CALL R24 1 1
  MOVE R25 R20
  CALL R24 1 1
  MOVE R20 R24
  DUPCLOSURE R24 K49 [PROTO_16]
  CAPTURE VAL R15
  CAPTURE VAL R16
  GETTABLEKS R25 R2 K50 ["connect"]
  LOADNIL R26
  MOVE R27 R24
  CALL R25 2 1
  MOVE R26 R20
  CALL R25 1 -1
  RETURN R25 -1
