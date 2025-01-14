PROTO_0:
  GETTABLEKS R2 R1 K0 ["Name"]
  LOADB R3 0
  GETUPVAL R4 0
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  MOVE R11 R8
  NAMECALL R9 R2 K1 ["match"]
  CALL R9 2 1
  JUMPIFNOT R9 [+2]
  LOADB R3 1
  JUMP [+2]
  FORGLOOP R4 2 [-8]
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETUPVAL R5 1
  GETTABLE R4 R5 R2
  JUMPIFNOT R4 [+2]
  GETUPVAL R4 1
  GETTABLE R2 R4 R2
  LOADK R5 K2 ["rbxasset://fonts/families/"]
  MOVE R6 R2
  LOADK R7 K3 [".json"]
  CONCAT R4 R5 R7
  DUPTABLE R5 K6 [{"Id", "Label"}]
  SETTABLEKS R4 R5 K4 ["Id"]
  SETTABLEKS R2 R5 K5 ["Label"]
  RETURN R5 1

PROTO_1:
  GETUPVAL R0 0
  GETIMPORT R1 K2 [Enum.Font]
  NAMECALL R1 R1 K3 ["GetEnumItems"]
  CALL R1 1 1
  DUPCLOSURE R2 K4 [PROTO_0]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R0 2 1
  RETURN R0 1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["responseBody"]
  GETTABLEKS R1 R2 K1 ["nextPageCursor"]
  SETUPVAL R1 0
  GETTABLEKS R2 R0 K0 ["responseBody"]
  GETTABLEKS R1 R2 K2 ["data"]
  RETURN R1 1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["responseBody"]
  GETTABLEKS R1 R2 K1 ["data"]
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R8 0
  DUPTABLE R9 K4 [{"Id", "Label"}]
  LOADK R11 K5 ["rbxassetid://"]
  GETTABLEKS R14 R6 K6 ["asset"]
  GETTABLEKS R13 R14 K7 ["id"]
  FASTCALL1 TOSTRING R13 [+2]
  GETIMPORT R12 K9 [tostring]
  CALL R12 1 1
  CONCAT R10 R11 R12
  SETTABLEKS R10 R9 K2 ["Id"]
  GETTABLEKS R11 R6 K6 ["asset"]
  GETTABLEKS R10 R11 K10 ["name"]
  SETTABLEKS R10 R9 K3 ["Label"]
  FASTCALL2 TABLE_INSERT R8 R9 [+2]
  GETUPVAL R7 1
  CALL R7 2 0
  FORGLOOP R2 2 [-25]
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R5 R0
  NAMECALL R3 R3 K0 ["getItemDetails"]
  CALL R3 2 1
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R3 R3 K1 ["andThen"]
  CALL R3 2 -1
  FASTCALL TABLE_INSERT [+1]
  GETUPVAL R1 3
  CALL R1 -1 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R1 K1 [warn]
  LOADK R2 K2 ["ERROR:"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  GETUPVAL R0 1
  RETURN R0 1

PROTO_7:
  GETIMPORT R1 K1 [warn]
  LOADK R2 K2 ["ERROR:"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 1
  GETIMPORT R2 K2 [Enum.Font]
  NAMECALL R2 R2 K3 ["GetEnumItems"]
  CALL R2 1 1
  DUPCLOSURE R3 K4 [PROTO_0]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R1 2 1
  MOVE R0 R1
  SETUPVAL R0 0
  GETUPVAL R0 4
  NAMECALL R0 R0 K5 ["GetUserId"]
  CALL R0 1 1
  LOADK R1 K6 [""]
  NEWTABLE R2 0 0
  JUMPIFNOT R1 [+28]
  GETUPVAL R3 5
  MOVE R5 R0
  LOADN R6 73
  MOVE R7 R1
  NAMECALL R3 R3 K7 ["getInventoryIds"]
  CALL R3 4 1
  NEWCLOSURE R5 P1
  CAPTURE REF R1
  NAMECALL R3 R3 K8 ["andThen"]
  CALL R3 2 1
  NEWCLOSURE R5 P2
  CAPTURE VAL R2
  CAPTURE UPVAL U5
  CAPTURE UPVAL U0
  CAPTURE UPVAL U6
  NAMECALL R3 R3 K8 ["andThen"]
  CALL R3 2 1
  DUPCLOSURE R5 K9 [PROTO_5]
  NAMECALL R3 R3 K10 ["catch"]
  CALL R3 2 1
  NAMECALL R3 R3 K11 ["await"]
  CALL R3 1 0
  JUMPBACK [-29]
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K12 ["all"]
  MOVE R4 R2
  CALL R3 1 1
  NEWCLOSURE R5 P4
  CAPTURE UPVAL U8
  CAPTURE UPVAL U0
  NAMECALL R3 R3 K8 ["andThen"]
  CALL R3 2 1
  DUPCLOSURE R5 K13 [PROTO_7]
  NAMECALL R3 R3 K10 ["catch"]
  CALL R3 2 1
  NAMECALL R3 R3 K11 ["await"]
  CALL R3 1 -1
  CLOSEUPVALS R1
  RETURN R3 -1

PROTO_9:
  GETTABLEKS R2 R0 K0 ["responseBody"]
  GETTABLEKS R1 R2 K1 ["data"]
  GETTABLEN R4 R1 1
  GETTABLEKS R3 R4 K2 ["asset"]
  GETTABLEKS R2 R3 K3 ["name"]
  DUPTABLE R3 K6 [{"Id", "Label"}]
  LOADK R5 K7 ["rbxassetid://"]
  GETUPVAL R7 0
  FASTCALL1 TOSTRING R7 [+2]
  GETIMPORT R6 K9 [tostring]
  CALL R6 1 1
  CONCAT R4 R5 R6
  SETTABLEKS R4 R3 K4 ["Id"]
  SETTABLEKS R2 R3 K5 ["Label"]
  GETUPVAL R5 1
  FASTCALL2 TABLE_INSERT R5 R3 [+3]
  MOVE R6 R3
  GETUPVAL R4 2
  CALL R4 2 0
  GETUPVAL R4 3
  GETUPVAL R5 1
  CALL R4 1 0
  RETURN R0 0

PROTO_10:
  GETIMPORT R1 K1 [warn]
  LOADK R2 K2 ["ERROR:"]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_11:
  JUMPIFNOT R0 [+2]
  GETUPVAL R1 0
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R1 1
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["JSONDecode"]
  CALL R1 2 1
  JUMPIFNOT R1 [+4]
  GETTABLEKS R2 R1 K1 ["assetTypeId"]
  JUMPIFEQKN R2 K2 [73] [+2]
  RETURN R0 0
  GETTABLEKS R2 R1 K3 ["assetId"]
  GETUPVAL R3 2
  NEWTABLE R5 0 1
  DUPTABLE R6 K5 [{"id"}]
  SETTABLEKS R2 R6 K4 ["id"]
  SETLIST R5 R6 1 [1]
  NAMECALL R3 R3 K6 ["getItemDetails"]
  CALL R3 2 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NAMECALL R3 R3 K7 ["andThen"]
  CALL R3 2 1
  DUPCLOSURE R5 K8 [PROTO_10]
  NAMECALL R3 R3 K9 ["catch"]
  CALL R3 2 0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R4 R0 K0 ["Id"]
  GETTABLEKS R5 R0 K1 ["Label"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 1
  DUPTABLE R8 K6 [{"LayoutOrder", "OnClick", "Size"}]
  SETTABLEKS R1 R8 K3 ["LayoutOrder"]
  SETTABLEKS R2 R8 K4 ["OnClick"]
  GETIMPORT R9 K9 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 24
  CALL R9 4 1
  SETTABLEKS R9 R8 K5 ["Size"]
  DUPTABLE R9 K10 [{"Label"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["createElement"]
  GETUPVAL R11 2
  NEWTABLE R12 4 0
  LOADB R13 1
  SETTABLEKS R13 R12 K11 ["RichText"]
  GETIMPORT R13 K14 [string.format]
  LOADK R14 K15 ["<font family='%s' size='18'>%s</font>"]
  MOVE R15 R4
  MOVE R16 R5
  CALL R13 3 1
  SETTABLEKS R13 R12 K16 ["Text"]
  GETIMPORT R13 K20 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K18 ["TextXAlignment"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K21 ["Tag"]
  LOADK R14 K22 ["X-Fill X-Pad"]
  SETTABLE R14 R12 R13
  CALL R10 2 1
  SETTABLEKS R10 R9 K1 ["Label"]
  CALL R6 3 -1
  RETURN R6 -1

PROTO_13:
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["Family"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["OnChanged"]
  GETUPVAL R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R0 0
  LOADK R2 K0 ["AddToolboxAssetToInventory"]
  GETUPVAL R3 1
  NAMECALL R0 R0 K1 ["Bind"]
  CALL R0 3 1
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  RETURN R1 1

PROTO_16:
  GETTABLEKS R1 R0 K0 ["Value"]
  GETTABLEKS R2 R1 K1 ["Family"]
  DUPTABLE R3 K5 [{"OnChanged", "OnRenderItem", "Schema", "Value"}]
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R4 R3 K2 ["OnChanged"]
  GETUPVAL R4 0
  SETTABLEKS R4 R3 K3 ["OnRenderItem"]
  DUPTABLE R4 K7 [{"Items"}]
  GETUPVAL R5 1
  JUMPIF R5 [+2]
  GETUPVAL R5 2
  CALL R5 0 1
  SETTABLEKS R5 R4 K6 ["Items"]
  SETTABLEKS R4 R3 K4 ["Schema"]
  SETTABLEKS R2 R3 K0 ["Value"]
  GETUPVAL R4 3
  DUPCLOSURE R5 K8 [PROTO_15]
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  NEWTABLE R6 0 0
  CALL R4 2 0
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K9 ["createElement"]
  GETUPVAL R5 7
  GETUPVAL R6 8
  MOVE R7 R0
  MOVE R8 R3
  CALL R6 2 -1
  CALL R4 -1 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["HttpService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["MemStorageService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["StudioService"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R7 K7 [script]
  GETTABLEKS R6 R7 K8 ["Parent"]
  GETTABLEKS R5 R6 K8 ["Parent"]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Parent"]
  GETIMPORT R4 K10 [require]
  GETTABLEKS R6 R3 K11 ["Packages"]
  GETTABLEKS R5 R6 K12 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K10 [require]
  GETTABLEKS R7 R3 K11 ["Packages"]
  GETTABLEKS R6 R7 K13 ["Framework"]
  CALL R5 1 1
  GETIMPORT R6 K10 [require]
  GETTABLEKS R8 R3 K11 ["Packages"]
  GETTABLEKS R7 R8 K14 ["Dash"]
  CALL R6 1 1
  GETTABLEKS R8 R5 K15 ["Util"]
  GETTABLEKS R7 R8 K16 ["Promise"]
  GETIMPORT R8 K10 [require]
  GETTABLEKS R11 R3 K17 ["Src"]
  GETTABLEKS R10 R11 K15 ["Util"]
  GETTABLEKS R9 R10 K18 ["NetworkInterface"]
  CALL R8 1 1
  GETIMPORT R9 K10 [require]
  GETTABLEKS R12 R3 K17 ["Src"]
  GETTABLEKS R11 R12 K15 ["Util"]
  GETTABLEKS R10 R11 K19 ["sortByLabel"]
  CALL R9 1 1
  GETTABLEKS R10 R5 K20 ["UI"]
  GETTABLEKS R11 R10 K21 ["Button"]
  GETTABLEKS R14 R10 K22 ["PropertyCell"]
  GETTABLEKS R13 R14 K23 ["Renderers"]
  GETTABLEKS R12 R13 K24 ["Select"]
  GETTABLEKS R13 R10 K25 ["TextLabel"]
  GETTABLEKS R14 R6 K26 ["collectArray"]
  GETTABLEKS R15 R6 K27 ["join"]
  GETTABLEKS R16 R4 K28 ["useEffect"]
  GETIMPORT R17 K31 [table.insert]
  DUPTABLE R18 K43 [{"SourceSans", "Bodoni", "Garamond", "Cartoon", "Code", "Highway", "SciFi", "Arcade", "Fantasy", "Antique", "Gotham"}]
  LOADK R19 K44 ["SourceSansPro"]
  SETTABLEKS R19 R18 K32 ["SourceSans"]
  LOADK R19 K45 ["AccanthisADFStd"]
  SETTABLEKS R19 R18 K33 ["Bodoni"]
  LOADK R19 K46 ["Guru"]
  SETTABLEKS R19 R18 K34 ["Garamond"]
  LOADK R19 K47 ["ComicNeueAngular"]
  SETTABLEKS R19 R18 K35 ["Cartoon"]
  LOADK R19 K48 ["Inconsolata"]
  SETTABLEKS R19 R18 K36 ["Code"]
  LOADK R19 K49 ["HighwayGothic"]
  SETTABLEKS R19 R18 K37 ["Highway"]
  LOADK R19 K50 ["Zekton"]
  SETTABLEKS R19 R18 K38 ["SciFi"]
  LOADK R19 K51 ["PressStart2P"]
  SETTABLEKS R19 R18 K39 ["Arcade"]
  LOADK R19 K52 ["Balthazar"]
  SETTABLEKS R19 R18 K40 ["Fantasy"]
  LOADK R19 K53 ["RomanAntique"]
  SETTABLEKS R19 R18 K41 ["Antique"]
  LOADK R19 K54 ["GothamSSm"]
  SETTABLEKS R19 R18 K42 ["Gotham"]
  NEWTABLE R19 0 8
  LOADK R20 K55 ["Black"]
  LOADK R21 K56 ["Bold"]
  LOADK R22 K57 ["Italic"]
  LOADK R23 K58 ["Legacy"]
  LOADK R24 K59 ["Light"]
  LOADK R25 K60 ["Medium"]
  LOADK R26 K61 ["Semibold"]
  LOADK R27 K62 ["Unknown"]
  SETLIST R19 R20 8 [1]
  GETTABLEKS R20 R8 K63 ["new"]
  CALL R20 0 1
  LOADNIL R21
  DUPCLOSURE R22 K64 [PROTO_1]
  CAPTURE VAL R14
  CAPTURE VAL R19
  CAPTURE VAL R18
  NEWCLOSURE R23 P1
  CAPTURE REF R21
  CAPTURE VAL R14
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R2
  CAPTURE VAL R20
  CAPTURE VAL R17
  CAPTURE VAL R7
  CAPTURE VAL R9
  NEWCLOSURE R24 P2
  CAPTURE REF R21
  CAPTURE VAL R0
  CAPTURE VAL R20
  CAPTURE VAL R17
  CAPTURE VAL R9
  DUPCLOSURE R25 K65 [PROTO_12]
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R13
  NEWCLOSURE R26 P4
  CAPTURE VAL R25
  CAPTURE REF R21
  CAPTURE VAL R23
  CAPTURE VAL R16
  CAPTURE VAL R1
  CAPTURE VAL R24
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R15
  CLOSEUPVALS R21
  RETURN R26 1
