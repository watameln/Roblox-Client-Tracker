PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["state"]
  GETTABLEKS R2 R3 K1 ["currentText"]
  JUMPIFEQ R0 R2 [+30]
  GETUPVAL R2 0
  DUPTABLE R4 K4 [{"currentText", "showDropdown", "extraDetails"}]
  SETTABLEKS R0 R4 K1 ["currentText"]
  LOADB R5 1
  SETTABLEKS R5 R4 K2 ["showDropdown"]
  MOVE R5 R1
  JUMPIF R5 [+3]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["None"]
  SETTABLEKS R5 R4 K3 ["extraDetails"]
  NAMECALL R2 R2 K6 ["setState"]
  CALL R2 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["props"]
  GETTABLEKS R2 R3 K8 ["updateSearch"]
  MOVE R3 R0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["state"]
  GETTABLEKS R4 R5 K3 ["extraDetails"]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["Name"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["onTextChanged"]
  MOVE R3 R1
  MOVE R4 R0
  CALL R2 2 0
  GETUPVAL R2 0
  DUPTABLE R4 K3 [{"extraDetails"}]
  SETTABLEKS R0 R4 K2 ["extraDetails"]
  NAMECALL R2 R2 K4 ["setState"]
  CALL R2 2 0
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+13]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["props"]
  GETTABLEKS R2 R3 K6 ["OnSelectItem"]
  JUMPIFNOT R2 [+7]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K5 ["props"]
  GETTABLEKS R2 R3 K6 ["OnSelectItem"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"currentText"}]
  LOADK R3 K2 [""]
  SETTABLEKS R3 R2 K0 ["currentText"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"showDropdown"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["showDropdown"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["currentText"]
  JUMPIFNOTEQKS R1 K1 [""] [+11]
  GETTABLEKS R1 R0 K2 ["showDropdown"]
  JUMPIF R1 [+7]
  GETIMPORT R1 K4 [next]
  GETTABLEKS R2 R0 K5 ["extraDetails"]
  CALL R1 1 1
  JUMPIFEQKNIL R1 [+13]
  DUPTABLE R1 K6 [{"currentText", "extraDetails", "showDropdown"}]
  LOADK R2 K1 [""]
  SETTABLEKS R2 R1 K0 ["currentText"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K5 ["extraDetails"]
  LOADB R2 0
  SETTABLEKS R2 R1 K2 ["showDropdown"]
  RETURN R1 1
  LOADNIL R1
  RETURN R1 1

PROTO_5:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_4]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  RETURN R0 0

PROTO_7:
  DUPTABLE R2 K3 [{"currentText", "showDropdown", "extraDetails"}]
  GETTABLEKS R4 R1 K5 ["searchTerm"]
  ORK R3 R4 K4 [""]
  SETTABLEKS R3 R2 K0 ["currentText"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["showDropdown"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K2 ["extraDetails"]
  SETTABLEKS R2 R0 K6 ["state"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["createRef"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K8 ["frameRef"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R2 R0 K9 ["onTextChanged"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R2 R0 K10 ["onDropdownClicked"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K11 ["onDeleteTag"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K12 ["closeDropdown"]
  GETUPVAL R3 2
  CALL R3 0 1
  JUMPIFNOT R3 [+3]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  JUMP [+1]
  DUPCLOSURE R2 K13 [PROTO_6]
  SETTABLEKS R2 R0 K14 ["resetSearchBar"]
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+9]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["searchTerm"]
  JUMPIFNOTEQKS R1 K2 [""] [+4]
  GETTABLEKS R1 R0 K3 ["resetSearchBar"]
  CALL R1 0 0
  GETTABLEKS R2 R0 K4 ["state"]
  GETTABLEKS R1 R2 K5 ["currentText"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["searchTerm"]
  JUMPIFEQ R2 R1 [+11]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K6 ["updateSearch"]
  MOVE R3 R1
  GETTABLEKS R5 R0 K4 ["state"]
  GETTABLEKS R4 R5 K7 ["extraDetails"]
  CALL R2 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["width"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K2 ["searchTerm"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K3 ["LayoutOrder"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["state"]
  GETTABLEKS R5 R6 K5 ["currentText"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["state"]
  GETTABLEKS R6 R7 K6 ["showDropdown"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K7 ["results"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["props"]
  GETTABLEKS R8 R9 K8 ["defaultTextKey"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K9 ["frameRef"]
  JUMPIFNOT R9 [+5]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K9 ["frameRef"]
  GETTABLEKS R9 R10 K10 ["current"]
  LOADNIL R10
  JUMPIFNOT R9 [+16]
  GETIMPORT R11 K13 [UDim2.new]
  LOADN R12 0
  GETTABLEKS R14 R9 K14 ["AbsolutePosition"]
  GETTABLEKS R13 R14 K15 ["X"]
  LOADN R14 0
  GETTABLEKS R17 R9 K14 ["AbsolutePosition"]
  GETTABLEKS R16 R17 K17 ["Y"]
  ADDK R15 R16 K16 [26]
  CALL R11 4 1
  MOVE R10 R11
  JUMP [+4]
  GETIMPORT R11 K13 [UDim2.new]
  CALL R11 0 1
  MOVE R10 R11
  MOVE R11 R6
  JUMPIFNOT R11 [+9]
  LOADB R11 0
  JUMPIFNOTEQ R3 R5 [+7]
  LENGTH R12 R5
  LOADN R13 3
  JUMPIFLE R13 R12 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K18 ["createElement"]
  LOADK R13 K19 ["Frame"]
  NEWTABLE R14 4 0
  LOADN R15 1
  SETTABLEKS R15 R14 K20 ["BackgroundTransparency"]
  SETTABLEKS R4 R14 K3 ["LayoutOrder"]
  GETIMPORT R15 K13 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 25
  CALL R15 4 1
  SETTABLEKS R15 R14 K21 ["Size"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K22 ["Ref"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K9 ["frameRef"]
  SETTABLE R16 R14 R15
  DUPTABLE R15 K25 [{"SearchBar", "Dropdown"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K18 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K30 [{"width", "onTextChanged", "onSearchRequested", "defaultTextKey", "searchTerm", "onDeleteTag", "IsLive"}]
  SETTABLEKS R2 R18 K1 ["width"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K26 ["onTextChanged"]
  SETTABLEKS R19 R18 K26 ["onTextChanged"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K26 ["onTextChanged"]
  SETTABLEKS R19 R18 K27 ["onSearchRequested"]
  SETTABLEKS R8 R18 K8 ["defaultTextKey"]
  SETTABLEKS R5 R18 K2 ["searchTerm"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K28 ["onDeleteTag"]
  SETTABLEKS R19 R18 K28 ["onDeleteTag"]
  LOADB R19 1
  SETTABLEKS R19 R18 K29 ["IsLive"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K23 ["SearchBar"]
  MOVE R16 R11
  JUMPIFNOT R16 [+31]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K18 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K36 [{"Size", "Position", "Items", "SearchTerm", "onItemClicked", "closeDropdown"}]
  GETIMPORT R19 K13 [UDim2.new]
  LOADN R20 0
  MOVE R21 R2
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K21 ["Size"]
  SETTABLEKS R10 R18 K31 ["Position"]
  SETTABLEKS R7 R18 K32 ["Items"]
  SETTABLEKS R5 R18 K33 ["SearchTerm"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K37 ["onDropdownClicked"]
  SETTABLEKS R19 R18 K34 ["onItemClicked"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K35 ["closeDropdown"]
  SETTABLEKS R19 R18 K35 ["closeDropdown"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K24 ["Dropdown"]
  CALL R12 3 -1
  RETURN R12 -1

PROTO_10:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+171]
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["width"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["searchTerm"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["LayoutOrder"]
  GETTABLEKS R5 R0 K4 ["state"]
  GETTABLEKS R4 R5 K5 ["currentText"]
  GETTABLEKS R6 R0 K4 ["state"]
  GETTABLEKS R5 R6 K6 ["showDropdown"]
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K7 ["results"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K8 ["defaultTextKey"]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K9 ["GetKey"]
  GETTABLEKS R9 R0 K10 ["frameRef"]
  JUMPIFNOT R9 [+4]
  GETTABLEKS R10 R0 K10 ["frameRef"]
  GETTABLEKS R9 R10 K11 ["current"]
  LOADNIL R10
  JUMPIFNOT R9 [+16]
  GETIMPORT R11 K14 [UDim2.new]
  LOADN R12 0
  GETTABLEKS R14 R9 K15 ["AbsolutePosition"]
  GETTABLEKS R13 R14 K16 ["X"]
  LOADN R14 0
  GETTABLEKS R17 R9 K15 ["AbsolutePosition"]
  GETTABLEKS R16 R17 K18 ["Y"]
  ADDK R15 R16 K17 [26]
  CALL R11 4 1
  MOVE R10 R11
  JUMP [+4]
  GETIMPORT R11 K14 [UDim2.new]
  CALL R11 0 1
  MOVE R10 R11
  MOVE R11 R5
  JUMPIFNOT R11 [+9]
  LOADB R11 0
  JUMPIFNOTEQ R2 R4 [+7]
  LENGTH R12 R4
  LOADN R13 3
  JUMPIFLE R13 R12 [+2]
  LOADB R11 0 +1
  LOADB R11 1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K19 ["createElement"]
  LOADK R13 K20 ["Frame"]
  NEWTABLE R14 4 0
  LOADN R15 1
  SETTABLEKS R15 R14 K21 ["BackgroundTransparency"]
  SETTABLEKS R3 R14 K3 ["LayoutOrder"]
  GETIMPORT R15 K14 [UDim2.new]
  LOADN R16 1
  LOADN R17 0
  LOADN R18 0
  LOADN R19 25
  CALL R15 4 1
  SETTABLEKS R15 R14 K22 ["Size"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K23 ["Ref"]
  GETTABLEKS R16 R0 K10 ["frameRef"]
  SETTABLE R16 R14 R15
  DUPTABLE R15 K26 [{"SearchBar", "Dropdown"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K19 ["createElement"]
  GETUPVAL R17 2
  DUPTABLE R18 K31 [{"width", "onTextChanged", "onSearchRequested", "defaultTextKey", "searchTerm", "onDeleteTag", "IsLive"}]
  SETTABLEKS R1 R18 K1 ["width"]
  GETTABLEKS R19 R0 K27 ["onTextChanged"]
  SETTABLEKS R19 R18 K27 ["onTextChanged"]
  GETTABLEKS R19 R0 K27 ["onTextChanged"]
  SETTABLEKS R19 R18 K28 ["onSearchRequested"]
  SETTABLEKS R7 R18 K8 ["defaultTextKey"]
  SETTABLEKS R4 R18 K2 ["searchTerm"]
  GETTABLEKS R19 R0 K29 ["onDeleteTag"]
  SETTABLEKS R19 R18 K29 ["onDeleteTag"]
  LOADB R19 1
  SETTABLEKS R19 R18 K30 ["IsLive"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K24 ["SearchBar"]
  MOVE R16 R11
  JUMPIFNOT R16 [+37]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K19 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K37 [{"Size", "Position", "Items", "GetKey", "SearchTerm", "onItemClicked", "closeDropdown"}]
  GETIMPORT R19 K14 [UDim2.new]
  LOADN R20 0
  MOVE R21 R1
  LOADN R22 0
  LOADN R23 0
  CALL R19 4 1
  SETTABLEKS R19 R18 K22 ["Size"]
  SETTABLEKS R10 R18 K32 ["Position"]
  SETTABLEKS R6 R18 K33 ["Items"]
  GETUPVAL R20 4
  CALL R20 0 1
  JUMPIFNOT R20 [+2]
  MOVE R19 R8
  JUMP [+1]
  LOADNIL R19
  SETTABLEKS R19 R18 K9 ["GetKey"]
  SETTABLEKS R4 R18 K34 ["SearchTerm"]
  GETTABLEKS R19 R0 K38 ["onDropdownClicked"]
  SETTABLEKS R19 R18 K35 ["onItemClicked"]
  GETTABLEKS R19 R0 K36 ["closeDropdown"]
  SETTABLEKS R19 R18 K36 ["closeDropdown"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K25 ["Dropdown"]
  CALL R12 3 -1
  RETURN R12 -1
  GETUPVAL R1 5
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K7 ["Core"]
  GETTABLEKS R5 R6 K8 ["Util"]
  GETTABLEKS R4 R5 K9 ["ContextHelper"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["withLocalization"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K7 ["Core"]
  GETTABLEKS R8 R9 K11 ["Components"]
  GETTABLEKS R7 R8 K12 ["SearchBar"]
  GETTABLEKS R6 R7 K12 ["SearchBar"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K7 ["Core"]
  GETTABLEKS R9 R10 K11 ["Components"]
  GETTABLEKS R8 R9 K13 ["SearchOptions"]
  GETTABLEKS R7 R8 K14 ["LiveSearchDropdown"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K7 ["Core"]
  GETTABLEKS R10 R11 K8 ["Util"]
  GETTABLEKS R9 R10 K15 ["SharedFlags"]
  GETTABLEKS R8 R9 K16 ["getFFlagToolboxCleanupLegacyContext"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R12 R0 K7 ["Core"]
  GETTABLEKS R11 R12 K8 ["Util"]
  GETTABLEKS R10 R11 K15 ["SharedFlags"]
  GETTABLEKS R9 R10 K17 ["getFFlagToolboxAllowLiveDropdownKeyChange"]
  CALL R8 1 1
  GETTABLEKS R9 R2 K18 ["PureComponent"]
  LOADK R11 K19 ["LiveSearchBar"]
  NAMECALL R9 R9 K20 ["extend"]
  CALL R9 2 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R14 R0 K7 ["Core"]
  GETTABLEKS R13 R14 K8 ["Util"]
  GETTABLEKS R12 R13 K15 ["SharedFlags"]
  GETTABLEKS R11 R12 K21 ["getFFlagToolboxEnableSearchOptionsRefactor"]
  CALL R10 1 1
  DUPCLOSURE R11 K22 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R10
  SETTABLEKS R11 R9 K23 ["init"]
  DUPCLOSURE R11 K24 [PROTO_8]
  CAPTURE VAL R10
  SETTABLEKS R11 R9 K25 ["didUpdate"]
  DUPCLOSURE R11 K26 [PROTO_10]
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R4
  SETTABLEKS R11 R9 K27 ["render"]
  RETURN R9 1
