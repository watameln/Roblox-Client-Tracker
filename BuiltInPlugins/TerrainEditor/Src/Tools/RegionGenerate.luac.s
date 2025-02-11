PROTO_0:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+163]
  GETIMPORT R0 K2 [Region3int16.new]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["_region"]
  GETTABLEKS R1 R2 K4 ["Min"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["_region"]
  GETTABLEKS R3 R4 K5 ["Max"]
  GETIMPORT R4 K7 [Vector3int16.new]
  LOADN R5 1
  LOADN R6 1
  LOADN R7 1
  CALL R4 3 1
  SUB R2 R3 R4
  CALL R0 2 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K8 ["_services"]
  GETTABLEKS R1 R2 K9 ["Terrain"]
  MOVE R3 R0
  NAMECALL R1 R1 K10 ["CopyRegion"]
  CALL R1 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K8 ["_services"]
  GETTABLEKS R2 R3 K9 ["Terrain"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K11 ["_terrainRegion"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["_region"]
  GETTABLEKS R5 R6 K4 ["Min"]
  LOADB R6 1
  NAMECALL R2 R2 K12 ["PasteRegion"]
  CALL R2 4 0
  GETUPVAL R2 2
  CALL R2 0 1
  JUMPIFNOT R2 [+50]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K13 ["Set"]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K14 ["TransformSettings"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K15 ["_pluginController"]
  NEWTABLE R5 4 0
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K16 ["TerrainRegion"]
  SETTABLE R1 R5 R6
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K17 ["TerrainRegionSize"]
  GETUPVAL R9 6
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K18 ["SelectionSettings"]
  GETTABLE R8 R9 R10
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K19 ["Size"]
  GETTABLE R7 R8 R9
  SETTABLE R7 R5 R6
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K20 ["TerrainRegionTransform"]
  GETUPVAL R9 6
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K18 ["SelectionSettings"]
  GETTABLE R8 R9 R10
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K21 ["Transform"]
  GETTABLE R7 R8 R9
  SETTABLE R7 R5 R6
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K22 ["TransformMode"]
  GETUPVAL R8 8
  GETTABLEKS R7 R8 K23 ["Import"]
  SETTABLE R7 R5 R6
  CALL R2 3 0
  JUMP [+52]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K13 ["Set"]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K14 ["TransformSettings"]
  GETUPVAL R5 9
  GETTABLEKS R4 R5 K24 ["Storage"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K15 ["_pluginController"]
  NEWTABLE R6 4 0
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K16 ["TerrainRegion"]
  SETTABLE R1 R6 R7
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K17 ["TerrainRegionSize"]
  GETUPVAL R10 6
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K18 ["SelectionSettings"]
  GETTABLE R9 R10 R11
  GETUPVAL R11 7
  GETTABLEKS R10 R11 K19 ["Size"]
  GETTABLE R8 R9 R10
  SETTABLE R8 R6 R7
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K20 ["TerrainRegionTransform"]
  GETUPVAL R10 6
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K18 ["SelectionSettings"]
  GETTABLE R9 R10 R11
  GETUPVAL R11 7
  GETTABLEKS R10 R11 K21 ["Transform"]
  GETTABLE R8 R9 R10
  SETTABLE R8 R6 R7
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K22 ["TransformMode"]
  GETUPVAL R9 8
  GETTABLEKS R8 R9 K23 ["Import"]
  SETTABLE R8 R6 R7
  CALL R2 4 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K25 ["_toolController"]
  GETTABLEKS R2 R3 K26 ["selectTabAndTool"]
  GETUPVAL R4 10
  GETTABLEKS R3 R4 K27 ["Edit"]
  GETUPVAL R5 11
  GETTABLEKS R4 R5 K21 ["Transform"]
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  NAMECALL R2 R0 K0 ["getPayload"]
  CALL R2 1 1
  GETTABLEKS R3 R0 K1 ["_localization"]
  LOADK R5 K2 ["Operations"]
  LOADK R6 K3 ["GenerateName"]
  NAMECALL R3 R3 K4 ["getText"]
  CALL R3 3 1
  GETTABLEKS R4 R0 K1 ["_localization"]
  LOADK R6 K2 ["Operations"]
  LOADK R7 K5 ["GenerateDescription"]
  NAMECALL R4 R4 K4 ["getText"]
  CALL R4 3 1
  GETUPVAL R5 0
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["SelectionSettings"]
  GETTABLE R7 R2 R8
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K7 ["Transform"]
  GETTABLE R6 R7 R8
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K6 ["SelectionSettings"]
  GETTABLE R8 R2 R9
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K8 ["Size"]
  GETTABLE R7 R8 R9
  LOADB R8 1
  CALL R5 3 1
  SETTABLEKS R5 R0 K9 ["_region"]
  GETTABLEKS R6 R0 K10 ["_services"]
  GETTABLEKS R5 R6 K11 ["Terrain"]
  GETTABLEKS R7 R0 K9 ["_region"]
  NAMECALL R5 R5 K12 ["CopyRegion"]
  CALL R5 2 1
  SETTABLEKS R5 R0 K13 ["_terrainRegion"]
  GETUPVAL R5 3
  MOVE R6 R3
  MOVE R7 R4
  GETTABLEKS R8 R0 K10 ["_services"]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U1
  CAPTURE UPVAL U7
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CALL R5 4 1
  SETTABLEKS R5 R0 K14 ["_operation"]
  GETTABLEKS R5 R0 K14 ["_operation"]
  GETUPVAL R8 12
  GETTABLEKS R7 R8 K15 ["join"]
  DUPTABLE R8 K17 [{"Payload"}]
  SETTABLEKS R2 R8 K16 ["Payload"]
  MOVE R9 R1
  CALL R7 2 -1
  NAMECALL R5 R5 K18 ["start"]
  CALL R5 -1 0
  GETTABLEKS R5 R0 K19 ["OnOperationChanged"]
  NAMECALL R5 R5 K20 ["Fire"]
  CALL R5 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["startOperation"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["init"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  CALL R3 3 0
  NEWTABLE R3 1 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["BiomeSettings"]
  NEWTABLE R5 1 0
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K2 ["Generate"]
  DUPTABLE R7 K7 [{"Hidden", "Label", "Schema", "Value"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K3 ["Hidden"]
  LOADK R8 K8 [""]
  SETTABLEKS R8 R7 K4 ["Label"]
  DUPTABLE R8 K10 [{"OnClick"}]
  NEWCLOSURE R9 P0
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K9 ["OnClick"]
  SETTABLEKS R8 R7 K5 ["Schema"]
  LOADB R8 1
  SETTABLEKS R8 R7 K6 ["Value"]
  SETTABLE R7 R5 R6
  SETTABLE R5 R3 R4
  SETTABLEKS R3 R0 K11 ["_overrides"]
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["_operation"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Dash"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["BaseTool"]
  CALL R2 1 1
  GETTABLEKS R5 R0 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Schemas"]
  GETTABLEKS R3 R4 K12 ["Settings"]
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K13 ["Flags"]
  GETTABLEKS R5 R6 K14 ["getFFlagTerrainEditorSubformComponent"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R3 K15 ["Biome"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R3 K16 ["Selection"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R3 K17 ["Transform"]
  CALL R7 1 1
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K18 ["Util"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R10 R8 K19 ["ConvertTransformToRegion"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R11 R8 K20 ["SettingsHelper"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R15 R0 K10 ["Src"]
  GETTABLEKS R14 R15 K18 ["Util"]
  GETTABLEKS R13 R14 K21 ["Operations"]
  GETTABLEKS R12 R13 K22 ["GenerateOperation"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R14 R0 K10 ["Src"]
  GETTABLEKS R13 R14 K23 ["Types"]
  CALL R12 1 1
  GETTABLEKS R13 R12 K15 ["Biome"]
  GETTABLEKS R14 R12 K24 ["BiomeSettings"]
  GETTABLEKS R15 R12 K25 ["Category"]
  GETTABLEKS R16 R12 K26 ["Gizmo"]
  GETTABLEKS R17 R12 K27 ["SelectionSettings"]
  GETTABLEKS R18 R12 K28 ["Tab"]
  GETTABLEKS R19 R12 K29 ["Tool"]
  GETTABLEKS R20 R12 K30 ["TransformMode"]
  GETTABLEKS R21 R12 K31 ["TransformSettings"]
  GETIMPORT R22 K5 [require]
  GETTABLEKS R25 R0 K10 ["Src"]
  GETTABLEKS R24 R25 K13 ["Flags"]
  GETTABLEKS R23 R24 K32 ["getFFlagTerrainEditorGenerateTransform"]
  CALL R22 1 1
  NEWTABLE R23 0 2
  DUPTABLE R24 K36 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R25 0 0
  SETTABLEKS R25 R24 K33 ["Defaults"]
  GETTABLEKS R25 R15 K27 ["SelectionSettings"]
  SETTABLEKS R25 R24 K34 ["Id"]
  MOVE R26 R4
  CALL R26 0 1
  JUMPIFNOT R26 [+2]
  LOADNIL R25
  JUMP [+1]
  MOVE R25 R6
  SETTABLEKS R25 R24 K35 ["Schema"]
  DUPTABLE R25 K36 [{"Defaults", "Id", "Schema"}]
  NEWTABLE R26 8 0
  GETTABLEKS R27 R14 K37 ["Biomes"]
  NEWTABLE R28 4 0
  GETTABLEKS R29 R13 K38 ["Mountains"]
  LOADB R30 1
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R13 K39 ["Hills"]
  LOADB R30 1
  SETTABLE R30 R28 R29
  GETTABLEKS R29 R13 K40 ["Plains"]
  LOADB R30 1
  SETTABLE R30 R28 R29
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R14 K41 ["BiomeBlending"]
  LOADK R28 K42 [0.25]
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R14 K43 ["BiomeSize"]
  LOADN R28 100
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R14 K44 ["Caves"]
  LOADB R28 1
  SETTABLE R28 R26 R27
  GETTABLEKS R27 R14 K45 ["Seed"]
  LOADK R28 K46 [618033988]
  SETTABLE R28 R26 R27
  SETTABLEKS R26 R25 K33 ["Defaults"]
  GETTABLEKS R26 R15 K24 ["BiomeSettings"]
  SETTABLEKS R26 R25 K34 ["Id"]
  MOVE R27 R4
  CALL R27 0 1
  JUMPIFNOT R27 [+2]
  LOADNIL R26
  JUMP [+1]
  MOVE R26 R5
  SETTABLEKS R26 R25 K35 ["Schema"]
  SETLIST R23 R24 2 [1]
  NEWTABLE R24 0 1
  DUPTABLE R25 K47 [{"Id", "Schema"}]
  GETTABLEKS R26 R16 K48 ["Region"]
  SETTABLEKS R26 R25 K34 ["Id"]
  DUPTABLE R26 K52 [{"Type", "Wireframe", "Rotation"}]
  GETTABLEKS R27 R16 K48 ["Region"]
  SETTABLEKS R27 R26 K49 ["Type"]
  LOADB R27 0
  SETTABLEKS R27 R26 K50 ["Wireframe"]
  LOADB R27 0
  SETTABLEKS R27 R26 K51 ["Rotation"]
  SETTABLEKS R26 R25 K35 ["Schema"]
  SETLIST R24 R25 1 [1]
  GETTABLEKS R27 R19 K53 ["Generate"]
  GETTABLEKS R28 R18 K54 ["Create"]
  MOVE R29 R23
  MOVE R30 R24
  NAMECALL R25 R2 K55 ["new"]
  CALL R25 5 1
  DUPCLOSURE R26 K56 [PROTO_1]
  CAPTURE VAL R9
  CAPTURE VAL R15
  CAPTURE VAL R17
  CAPTURE VAL R11
  CAPTURE VAL R22
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R21
  CAPTURE VAL R20
  CAPTURE VAL R7
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R1
  SETTABLEKS R26 R25 K57 ["startOperation"]
  DUPCLOSURE R26 K58 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R15
  CAPTURE VAL R14
  SETTABLEKS R26 R25 K59 ["init"]
  DUPCLOSURE R26 K60 [PROTO_4]
  SETTABLEKS R26 R25 K61 ["operation"]
  RETURN R25 1
