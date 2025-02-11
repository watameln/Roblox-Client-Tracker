PROTO_0:
  GETTABLEKS R3 R1 K0 ["cursorHeight"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["VOXEL_RESOLUTION"]
  MUL R2 R3 R4
  GETTABLEKS R3 R1 K2 ["cursorSize"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["VOXEL_RESOLUTION"]
  MUL R4 R3 R5
  GETUPVAL R5 1
  GETTABLEKS R6 R1 K3 ["pivot"]
  GETTABLEKS R7 R1 K4 ["centerPoint"]
  MOVE R8 R2
  CALL R5 3 1
  GETTABLEKS R6 R1 K5 ["autoMaterial"]
  GETTABLEKS R7 R1 K6 ["brushMode"]
  GETTABLEKS R8 R1 K7 ["brushShape"]
  GETTABLEKS R9 R1 K8 ["ignoreWater"]
  GETTABLEKS R10 R1 K9 ["material"]
  MULK R11 R4 K10 [0.5]
  GETTABLEKS R12 R1 K11 ["replaceMaterial"]
  GETTABLEKS R13 R1 K12 ["source"]
  GETTABLEKS R14 R1 K13 ["target"]
  GETTABLEKS R15 R1 K14 ["currentTool"]
  JUMPIFNOTEQKNIL R0 [+2]
  LOADB R17 0 +1
  LOADB R17 1
  FASTCALL2K ASSERT R17 K15 [+4]
  LOADK R18 K15 ["performTerrainBrushOperation requires a terrain instance"]
  GETIMPORT R16 K17 [assert]
  CALL R16 2 0
  LOADB R17 0
  JUMPIFEQKNIL R15 [+10]
  FASTCALL1 TYPE R15 [+3]
  MOVE R19 R15
  GETIMPORT R18 K19 [type]
  CALL R18 1 1
  JUMPIFEQKS R18 K20 ["string"] [+2]
  LOADB R17 0 +1
  LOADB R17 1
  FASTCALL2K ASSERT R17 K21 [+4]
  LOADK R18 K21 ["performTerrainBrushOperation requires a currentTool parameter"]
  GETIMPORT R16 K17 [assert]
  CALL R16 2 0
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K22 ["clampDownToVoxel"]
  GETTABLEKS R19 R5 K23 ["x"]
  SUB R18 R19 R11
  CALL R17 1 1
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K22 ["clampDownToVoxel"]
  GETTABLEKS R20 R5 K24 ["y"]
  MULK R21 R2 K10 [0.5]
  SUB R19 R20 R21
  CALL R18 1 1
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K22 ["clampDownToVoxel"]
  GETTABLEKS R21 R5 K25 ["z"]
  SUB R20 R21 R11
  CALL R19 1 -1
  FASTCALL VECTOR [+2]
  GETIMPORT R16 K28 [Vector3.new]
  CALL R16 -1 1
  GETUPVAL R19 2
  GETTABLEKS R18 R19 K29 ["clampUpToVoxel"]
  GETTABLEKS R20 R5 K23 ["x"]
  ADD R19 R20 R11
  CALL R18 1 1
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K29 ["clampUpToVoxel"]
  GETTABLEKS R21 R5 K24 ["y"]
  MULK R22 R2 K10 [0.5]
  ADD R20 R21 R22
  CALL R19 1 1
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K29 ["clampUpToVoxel"]
  GETTABLEKS R22 R5 K25 ["z"]
  ADD R21 R22 R11
  CALL R20 1 -1
  FASTCALL VECTOR [+2]
  GETIMPORT R17 K28 [Vector3.new]
  CALL R17 -1 1
  GETUPVAL R18 3
  JUMPIFNOT R18 [+139]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K30 ["Draw"]
  JUMPIFNOTEQ R15 R18 [+11]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K31 ["Add"]
  JUMPIFNOTEQ R7 R18 [+6]
  GETIMPORT R18 K35 [Enum.TerrainAcquisitionMethod.EditAddTool]
  SETTABLEKS R18 R0 K36 ["LastUsedModificationMethod"]
  JUMP [+24]
  GETUPVAL R18 3
  JUMPIFNOT R18 [+11]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K37 ["Paint"]
  JUMPIFNOTEQ R15 R18 [+7]
  JUMPIFNOT R12 [+5]
  GETIMPORT R18 K39 [Enum.TerrainAcquisitionMethod.EditReplaceTool]
  SETTABLEKS R18 R0 K36 ["LastUsedModificationMethod"]
  JUMP [+11]
  GETUPVAL R18 3
  JUMPIF R18 [+9]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K40 ["Replace"]
  JUMPIFNOTEQ R15 R18 [+5]
  GETIMPORT R18 K39 [Enum.TerrainAcquisitionMethod.EditReplaceTool]
  SETTABLEKS R18 R0 K36 ["LastUsedModificationMethod"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K30 ["Draw"]
  JUMPIFNOTEQ R15 R18 [+222]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K31 ["Add"]
  JUMPIFEQ R7 R18 [+7]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K41 ["Subtract"]
  JUMPIFNOTEQ R7 R18 [+212]
  JUMPIF R9 [+210]
  JUMPIF R6 [+209]
  LOADN R18 255
  GETUPVAL R20 5
  GETTABLEKS R19 R20 K41 ["Subtract"]
  JUMPIFNOTEQ R7 R19 [+3]
  GETUPVAL R10 6
  LOADN R18 0
  GETUPVAL R20 7
  GETTABLEKS R19 R20 K42 ["Sphere"]
  JUMPIFNOTEQ R8 R19 [+8]
  MOVE R21 R5
  ADD R22 R11 R18
  MOVE R23 R10
  NAMECALL R19 R0 K43 ["FillBall"]
  CALL R19 4 0
  RETURN R0 0
  GETUPVAL R20 7
  GETTABLEKS R19 R20 K44 ["Cube"]
  JUMPIFNOTEQ R8 R19 [+17]
  GETIMPORT R21 K46 [CFrame.new]
  MOVE R22 R5
  CALL R21 1 1
  ADD R23 R4 R18
  ADD R24 R2 R18
  ADD R25 R4 R18
  FASTCALL VECTOR [+2]
  GETIMPORT R22 K28 [Vector3.new]
  CALL R22 3 1
  MOVE R23 R10
  NAMECALL R19 R0 K47 ["FillBlock"]
  CALL R19 4 0
  RETURN R0 0
  GETUPVAL R20 7
  GETTABLEKS R19 R20 K48 ["Cylinder"]
  JUMPIFNOTEQ R8 R19 [+29]
  SUB R20 R17 R16
  GETTABLEKS R19 R20 K23 ["x"]
  LOADN R21 2
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K1 ["VOXEL_RESOLUTION"]
  MUL R20 R21 R22
  JUMPIFNOTLE R19 R20 [+8]
  MOVE R21 R5
  ADD R22 R11 R18
  MOVE R23 R10
  NAMECALL R19 R0 K43 ["FillBall"]
  CALL R19 4 0
  RETURN R0 0
  GETIMPORT R21 K46 [CFrame.new]
  MOVE R22 R5
  CALL R21 1 1
  ADD R22 R2 R18
  ADD R23 R11 R18
  MOVE R24 R10
  NAMECALL R19 R0 K49 ["FillCylinder"]
  CALL R19 5 0
  RETURN R0 0
  LOADB R20 0
  FASTCALL2K ASSERT R20 K50 [+4]
  LOADK R21 K50 ["Invalid brush shape in performTerrainBrushOperation quick path"]
  GETIMPORT R19 K17 [assert]
  CALL R19 2 0
  RETURN R0 0
  JUMP [+126]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K31 ["Add"]
  JUMPIFNOTEQ R15 R18 [+6]
  GETIMPORT R18 K35 [Enum.TerrainAcquisitionMethod.EditAddTool]
  SETTABLEKS R18 R0 K36 ["LastUsedModificationMethod"]
  JUMP [+24]
  GETUPVAL R18 3
  JUMPIFNOT R18 [+11]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K37 ["Paint"]
  JUMPIFNOTEQ R15 R18 [+7]
  JUMPIFNOT R12 [+5]
  GETIMPORT R18 K39 [Enum.TerrainAcquisitionMethod.EditReplaceTool]
  SETTABLEKS R18 R0 K36 ["LastUsedModificationMethod"]
  JUMP [+11]
  GETUPVAL R18 3
  JUMPIF R18 [+9]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K40 ["Replace"]
  JUMPIFNOTEQ R15 R18 [+5]
  GETIMPORT R18 K39 [Enum.TerrainAcquisitionMethod.EditReplaceTool]
  SETTABLEKS R18 R0 K36 ["LastUsedModificationMethod"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K31 ["Add"]
  JUMPIFEQ R15 R18 [+7]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K41 ["Subtract"]
  JUMPIFNOTEQ R15 R18 [+83]
  JUMPIF R9 [+81]
  JUMPIF R6 [+80]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K41 ["Subtract"]
  JUMPIFNOTEQ R15 R18 [+2]
  GETUPVAL R10 6
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K42 ["Sphere"]
  JUMPIFNOTEQ R8 R18 [+8]
  MOVE R20 R5
  MOVE R21 R11
  MOVE R22 R10
  NAMECALL R18 R0 K43 ["FillBall"]
  CALL R18 4 0
  RETURN R0 0
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K44 ["Cube"]
  JUMPIFNOTEQ R8 R18 [+17]
  GETIMPORT R20 K46 [CFrame.new]
  MOVE R21 R5
  CALL R20 1 1
  MOVE R22 R4
  MOVE R23 R2
  MOVE R24 R4
  FASTCALL VECTOR [+2]
  GETIMPORT R21 K28 [Vector3.new]
  CALL R21 3 1
  MOVE R22 R10
  NAMECALL R18 R0 K47 ["FillBlock"]
  CALL R18 4 0
  RETURN R0 0
  GETUPVAL R19 7
  GETTABLEKS R18 R19 K48 ["Cylinder"]
  JUMPIFNOTEQ R8 R18 [+29]
  SUB R19 R17 R16
  GETTABLEKS R18 R19 K23 ["x"]
  LOADN R20 2
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K1 ["VOXEL_RESOLUTION"]
  MUL R19 R20 R21
  JUMPIFNOTLE R18 R19 [+8]
  MOVE R20 R5
  MOVE R21 R11
  MOVE R22 R10
  NAMECALL R18 R0 K43 ["FillBall"]
  CALL R18 4 0
  RETURN R0 0
  GETIMPORT R20 K46 [CFrame.new]
  MOVE R21 R5
  CALL R20 1 1
  MOVE R21 R2
  MOVE R22 R11
  MOVE R23 R10
  NAMECALL R18 R0 K49 ["FillCylinder"]
  CALL R18 5 0
  RETURN R0 0
  LOADB R19 0
  FASTCALL2K ASSERT R19 K50 [+4]
  LOADK R20 K50 ["Invalid brush shape in performTerrainBrushOperation quick path"]
  GETIMPORT R18 K17 [assert]
  CALL R18 2 0
  RETURN R0 0
  GETTABLEKS R18 R1 K51 ["strength"]
  GETIMPORT R19 K53 [Region3.new]
  MOVE R20 R16
  MOVE R21 R17
  CALL R19 2 1
  MOVE R22 R19
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K1 ["VOXEL_RESOLUTION"]
  NAMECALL R20 R0 K54 ["ReadVoxels"]
  CALL R20 3 2
  LOADNIL R22
  LOADNIL R23
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K55 ["Smooth"]
  JUMPIFNOTEQ R15 R24 [+14]
  GETUPVAL R24 8
  JUMPIFNOT R24 [+11]
  MOVE R26 R19
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K1 ["VOXEL_RESOLUTION"]
  MOVE R28 R18
  NAMECALL R24 R0 K56 ["SmoothRegion"]
  CALL R24 4 2
  MOVE R22 R24
  MOVE R23 R25
  JUMP [+9]
  MOVE R26 R19
  GETUPVAL R28 0
  GETTABLEKS R27 R28 K1 ["VOXEL_RESOLUTION"]
  NAMECALL R24 R0 K54 ["ReadVoxels"]
  CALL R24 3 2
  MOVE R22 R24
  MOVE R23 R25
  GETUPVAL R25 3
  JUMPIFNOT R25 [+19]
  LOADB R24 1
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K57 ["Sculpt"]
  JUMPIFEQ R15 R25 [+38]
  LOADB R24 1
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K58 ["Flatten"]
  JUMPIFEQ R15 R25 [+32]
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K55 ["Smooth"]
  JUMPIFNOT R24 [+27]
  GETUPVAL R25 8
  NOT R24 R25
  JUMP [+24]
  LOADB R24 1
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K59 ["Grow"]
  JUMPIFEQ R15 R25 [+19]
  LOADB R24 1
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K60 ["Erode"]
  JUMPIFEQ R15 R25 [+13]
  LOADB R24 1
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K58 ["Flatten"]
  JUMPIFEQ R15 R25 [+7]
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K55 ["Smooth"]
  JUMPIFNOT R24 [+2]
  GETUPVAL R25 8
  NOT R24 R25
  GETUPVAL R26 4
  GETTABLEKS R25 R26 K58 ["Flatten"]
  JUMPIFNOTEQ R15 R25 [+20]
  GETUPVAL R25 9
  MOVE R26 R1
  MOVE R27 R16
  MOVE R28 R17
  MOVE R29 R20
  MOVE R30 R21
  MOVE R31 R22
  MOVE R32 R23
  CALL R25 7 0
  MOVE R27 R19
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K1 ["VOXEL_RESOLUTION"]
  MOVE R29 R22
  MOVE R30 R23
  NAMECALL R25 R0 K61 ["WriteVoxels"]
  CALL R25 5 0
  RETURN R0 0
  LOADN R25 32
  JUMPIFNOTLT R25 R3 [+21]
  JUMPIFNOT R24 [+19]
  GETUPVAL R25 10
  MOVE R26 R1
  MOVE R27 R16
  MOVE R28 R17
  MOVE R29 R20
  MOVE R30 R21
  MOVE R31 R22
  MOVE R32 R23
  CALL R25 7 0
  MOVE R27 R19
  GETUPVAL R29 0
  GETTABLEKS R28 R29 K1 ["VOXEL_RESOLUTION"]
  MOVE R29 R22
  MOVE R30 R23
  NAMECALL R25 R0 K61 ["WriteVoxels"]
  CALL R25 5 0
  RETURN R0 0
  GETTABLEKS R25 R1 K62 ["flattenMode"]
  GETTABLEKS R26 R5 K23 ["x"]
  GETTABLEKS R27 R5 K24 ["y"]
  GETTABLEKS R28 R5 K25 ["z"]
  GETTABLEKS R29 R16 K23 ["x"]
  GETTABLEKS R30 R16 K24 ["y"]
  GETTABLEKS R31 R16 K25 ["z"]
  GETTABLEKS R32 R17 K23 ["x"]
  GETUPVAL R33 6
  LOADN R34 0
  JUMPIFNOT R9 [+7]
  GETUPVAL R36 2
  GETTABLEKS R35 R36 K63 ["getWaterHeightAndAirFillerMaterial"]
  MOVE R36 R20
  CALL R35 1 2
  MOVE R34 R35
  MOVE R33 R36
  LENGTH R35 R21
  GETTABLEN R37 R21 1
  LENGTH R36 R37
  GETTABLEN R39 R21 1
  GETTABLEN R38 R39 1
  LENGTH R37 R38
  SUB R39 R32 R29
  MULK R38 R39 K10 [0.5]
  GETTABLEKS R39 R1 K64 ["planeNormal"]
  GETTABLEKS R40 R39 K23 ["x"]
  GETTABLEKS R41 R39 K24 ["y"]
  GETTABLEKS R42 R39 K25 ["z"]
  GETTABLEKS R43 R1 K65 ["planePoint"]
  GETTABLEKS R44 R43 K23 ["x"]
  GETTABLEKS R45 R43 K24 ["y"]
  GETTABLEKS R46 R43 K25 ["z"]
  DUPTABLE R47 K76 [{"readMaterials", "readOccupancies", "writeMaterials", "writeOccupancies", "sizeX", "sizeY", "sizeZ", "strength", "ignoreWater", "desiredMaterial", "autoMaterial", "filterSize", "maxOccupancy"}]
  SETTABLEKS R20 R47 K66 ["readMaterials"]
  SETTABLEKS R21 R47 K67 ["readOccupancies"]
  SETTABLEKS R22 R47 K68 ["writeMaterials"]
  SETTABLEKS R23 R47 K69 ["writeOccupancies"]
  SETTABLEKS R35 R47 K70 ["sizeX"]
  SETTABLEKS R36 R47 K71 ["sizeY"]
  SETTABLEKS R37 R47 K72 ["sizeZ"]
  SETTABLEKS R18 R47 K51 ["strength"]
  SETTABLEKS R9 R47 K8 ["ignoreWater"]
  SETTABLEKS R10 R47 K73 ["desiredMaterial"]
  SETTABLEKS R6 R47 K5 ["autoMaterial"]
  LOADN R48 1
  SETTABLEKS R48 R47 K74 ["filterSize"]
  LOADN R48 1
  SETTABLEKS R48 R47 K75 ["maxOccupancy"]
  GETUPVAL R50 4
  GETTABLEKS R49 R50 K30 ["Draw"]
  JUMPIFNOTEQ R15 R49 [+8]
  GETUPVAL R50 5
  GETTABLEKS R49 R50 K41 ["Subtract"]
  JUMPIFNOTEQ R7 R49 [+3]
  LOADN R48 0
  JUMP [+1]
  LOADN R48 255
  ADD R3 R3 R48
  GETUPVAL R50 4
  GETTABLEKS R49 R50 K30 ["Draw"]
  JUMPIFNOTEQ R15 R49 [+8]
  GETUPVAL R50 5
  GETTABLEKS R49 R50 K41 ["Subtract"]
  JUMPIFNOTEQ R7 R49 [+3]
  LOADN R48 0
  JUMP [+1]
  LOADN R48 255
  ADD R38 R38 R48
  GETIMPORT R48 K78 [ipairs]
  MOVE R49 R21
  CALL R48 1 3
  FORGPREP_INEXT R48
  SUBK R55 R51 K10 [0.5]
  GETUPVAL R57 0
  GETTABLEKS R56 R57 K1 ["VOXEL_RESOLUTION"]
  MUL R54 R55 R56
  ADD R53 R29 R54
  SUB R54 R53 R26
  SUB R56 R53 R44
  MUL R55 R56 R40
  GETIMPORT R56 K78 [ipairs]
  MOVE R57 R52
  CALL R56 1 3
  FORGPREP_INEXT R56
  SUBK R63 R59 K10 [0.5]
  GETUPVAL R65 0
  GETTABLEKS R64 R65 K1 ["VOXEL_RESOLUTION"]
  MUL R62 R63 R64
  ADD R61 R30 R62
  SUB R62 R61 R27
  SUB R65 R61 R45
  MUL R64 R65 R41
  ADD R63 R55 R64
  GETIMPORT R64 K78 [ipairs]
  MOVE R65 R60
  CALL R64 1 3
  FORGPREP_INEXT R64
  SUBK R71 R67 K10 [0.5]
  GETUPVAL R73 0
  GETTABLEKS R72 R73 K1 ["VOXEL_RESOLUTION"]
  MUL R70 R71 R72
  ADD R69 R31 R70
  SUB R70 R69 R28
  SUB R73 R69 R46
  MUL R72 R73 R42
  ADD R71 R63 R72
  GETUPVAL R73 2
  GETTABLEKS R72 R73 K79 ["calculateBrushPowerForCell"]
  MOVE R73 R54
  MOVE R74 R62
  MOVE R75 R70
  MOVE R76 R3
  MOVE R77 R8
  MOVE R78 R38
  GETUPVAL R82 4
  GETTABLEKS R81 R82 K55 ["Smooth"]
  JUMPIFEQ R15 R81 [+2]
  LOADB R80 0 +1
  LOADB R80 1
  NOT R79 R80
  CALL R72 7 2
  MOVE R74 R68
  GETTABLE R77 R20 R51
  GETTABLE R76 R77 R59
  GETTABLE R75 R76 R67
  JUMPIFNOT R9 [+5]
  GETUPVAL R76 11
  JUMPIFNOTEQ R75 R76 [+3]
  GETUPVAL R75 6
  LOADN R74 0
  JUMPIFNOTLE R59 R34 [+3]
  MOVE R76 R33
  JUMPIF R76 [+1]
  GETUPVAL R76 6
  MOVE R33 R76
  SETTABLEKS R51 R47 K23 ["x"]
  SETTABLEKS R59 R47 K24 ["y"]
  SETTABLEKS R67 R47 K25 ["z"]
  SETTABLEKS R72 R47 K80 ["brushOccupancy"]
  SETTABLEKS R73 R47 K81 ["magnitudePercent"]
  SETTABLEKS R74 R47 K82 ["cellOccupancy"]
  SETTABLEKS R75 R47 K83 ["cellMaterial"]
  SETTABLEKS R33 R47 K84 ["airFillerMaterial"]
  GETUPVAL R76 3
  JUMPIFNOT R76 [+228]
  GETUPVAL R77 4
  GETTABLEKS R76 R77 K30 ["Draw"]
  JUMPIFNOTEQ R15 R76 [+70]
  GETUPVAL R77 5
  GETTABLEKS R76 R77 K31 ["Add"]
  JUMPIFNOTEQ R7 R76 [+31]
  JUMPIFNOTLT R74 R72 [+4]
  GETTABLE R77 R23 R51
  GETTABLE R76 R77 R59
  SETTABLE R72 R76 R67
  LOADK R76 K10 [0.5]
  JUMPIFNOTLE R76 R72 [+428]
  GETUPVAL R76 6
  JUMPIFNOTEQ R75 R76 [+425]
  MOVE R76 R10
  JUMPIFNOT R6 [+13]
  GETUPVAL R78 2
  GETTABLEKS R77 R78 K85 ["DEPRECATED_getMaterialForAutoMaterial"]
  MOVE R78 R20
  MOVE R79 R51
  MOVE R80 R59
  MOVE R81 R67
  MOVE R82 R35
  MOVE R83 R36
  MOVE R84 R37
  MOVE R85 R75
  CALL R77 8 1
  MOVE R76 R77
  GETTABLE R78 R22 R51
  GETTABLE R77 R78 R59
  SETTABLE R76 R77 R67
  JUMP [+405]
  GETUPVAL R77 5
  GETTABLEKS R76 R77 K41 ["Subtract"]
  JUMPIFNOTEQ R7 R76 [+401]
  GETUPVAL R76 6
  JUMPIFEQ R75 R76 [+398]
  LOADN R77 1
  SUB R76 R77 R72
  JUMPIFNOTLT R76 R74 [+394]
  GETUPVAL R78 2
  GETTABLEKS R77 R78 K86 ["one256th"]
  JUMPIFNOTLE R76 R77 [+14]
  GETTABLE R78 R23 R51
  GETTABLE R77 R78 R59
  GETUPVAL R79 11
  JUMPIFNOTEQ R33 R79 [+3]
  LOADN R78 1
  JUMP [+1]
  LOADN R78 0
  SETTABLE R78 R77 R67
  GETTABLE R78 R22 R51
  GETTABLE R77 R78 R59
  SETTABLE R33 R77 R67
  JUMP [+375]
  GETTABLE R78 R23 R51
  GETTABLE R77 R78 R59
  SETTABLE R76 R77 R67
  JUMP [+371]
  GETUPVAL R77 4
  GETTABLEKS R76 R77 K57 ["Sculpt"]
  JUMPIFNOTEQ R15 R76 [+23]
  GETUPVAL R77 5
  GETTABLEKS R76 R77 K31 ["Add"]
  JUMPIFNOTEQ R7 R76 [+7]
  GETUPVAL R77 12
  GETTABLEKS R76 R77 K87 ["grow"]
  MOVE R77 R47
  CALL R76 1 0
  JUMP [+355]
  GETUPVAL R77 5
  GETTABLEKS R76 R77 K41 ["Subtract"]
  JUMPIFNOTEQ R7 R76 [+351]
  GETUPVAL R77 12
  GETTABLEKS R76 R77 K88 ["erode"]
  MOVE R77 R47
  CALL R76 1 0
  JUMP [+344]
  GETUPVAL R77 4
  GETTABLEKS R76 R77 K58 ["Flatten"]
  JUMPIFNOTEQ R15 R76 [+41]
  FASTCALL1 MATH_ABS R71 [+3]
  MOVE R77 R71
  GETIMPORT R76 K91 [math.abs]
  CALL R76 1 1
  SETTABLEKS R76 R47 K75 ["maxOccupancy"]
  GETUPVAL R77 0
  GETTABLEKS R76 R77 K92 ["FLATTEN_PLANE_TOLERANCE"]
  JUMPIFNOTLT R76 R71 [+12]
  GETUPVAL R77 13
  GETTABLEKS R76 R77 K59 ["Grow"]
  JUMPIFEQ R25 R76 [+7]
  GETUPVAL R77 12
  GETTABLEKS R76 R77 K88 ["erode"]
  MOVE R77 R47
  CALL R76 1 0
  JUMP [+316]
  GETUPVAL R78 0
  GETTABLEKS R77 R78 K92 ["FLATTEN_PLANE_TOLERANCE"]
  MINUS R76 R77
  JUMPIFNOTLT R71 R76 [+311]
  GETUPVAL R77 13
  GETTABLEKS R76 R77 K60 ["Erode"]
  JUMPIFEQ R25 R76 [+306]
  GETUPVAL R77 12
  GETTABLEKS R76 R77 K87 ["grow"]
  MOVE R77 R47
  CALL R76 1 0
  JUMP [+299]
  GETUPVAL R77 4
  GETTABLEKS R76 R77 K37 ["Paint"]
  JUMPIFNOTEQ R15 R76 [+32]
  GETUPVAL R76 3
  JUMPIFNOT R76 [+19]
  JUMPIFNOT R12 [+18]
  GETTABLE R78 R20 R51
  GETTABLE R77 R78 R59
  GETTABLE R76 R77 R67
  LOADN R77 0
  JUMPIFNOTLT R77 R72 [+286]
  JUMPIFNOTEQ R76 R13 [+284]
  GETTABLE R78 R22 R51
  GETTABLE R77 R78 R59
  SETTABLE R14 R77 R67
  GETUPVAL R77 6
  JUMPIFNOTEQ R76 R77 [+278]
  GETTABLE R78 R23 R51
  GETTABLE R77 R78 R59
  SETTABLE R72 R77 R67
  JUMP [+273]
  LOADN R76 0
  JUMPIFNOTLT R76 R72 [+271]
  LOADN R76 0
  JUMPIFNOTLT R76 R74 [+268]
  GETTABLE R77 R22 R51
  GETTABLE R76 R77 R59
  SETTABLE R10 R76 R67
  JUMP [+263]
  GETUPVAL R77 4
  GETTABLEKS R76 R77 K40 ["Replace"]
  JUMPIFNOTEQ R15 R76 [+19]
  GETTABLE R78 R20 R51
  GETTABLE R77 R78 R59
  GETTABLE R76 R77 R67
  LOADN R77 0
  JUMPIFNOTLT R77 R72 [+253]
  JUMPIFNOTEQ R76 R13 [+251]
  GETTABLE R78 R22 R51
  GETTABLE R77 R78 R59
  SETTABLE R14 R77 R67
  GETUPVAL R77 6
  JUMPIFNOTEQ R76 R77 [+245]
  GETTABLE R78 R23 R51
  GETTABLE R77 R78 R59
  SETTABLE R72 R77 R67
  JUMP [+240]
  GETUPVAL R77 4
  GETTABLEKS R76 R77 K55 ["Smooth"]
  JUMPIFNOTEQ R15 R76 [+236]
  GETUPVAL R76 8
  JUMPIF R76 [+6]
  GETUPVAL R77 12
  GETTABLEKS R76 R77 K93 ["smooth"]
  MOVE R77 R47
  CALL R76 1 0
  JUMP [+227]
  GETTABLEKS R76 R0 K94 ["SmoothVoxelsUpgraded"]
  SETTABLEKS R76 R47 K95 ["smoothVoxelsUpgraded"]
  GETUPVAL R77 12
  GETTABLEKS R76 R77 K93 ["smooth"]
  MOVE R77 R47
  CALL R76 1 0
  JUMP [+217]
  GETUPVAL R77 4
  GETTABLEKS R76 R77 K31 ["Add"]
  JUMPIFNOTEQ R15 R76 [+31]
  JUMPIFNOTLT R74 R72 [+4]
  GETTABLE R77 R23 R51
  GETTABLE R76 R77 R59
  SETTABLE R72 R76 R67
  LOADK R76 K10 [0.5]
  JUMPIFNOTLE R76 R72 [+205]
  GETUPVAL R76 6
  JUMPIFNOTEQ R75 R76 [+202]
  MOVE R76 R10
  JUMPIFNOT R6 [+13]
  GETUPVAL R78 2
  GETTABLEKS R77 R78 K85 ["DEPRECATED_getMaterialForAutoMaterial"]
  MOVE R78 R20
  MOVE R79 R51
  MOVE R80 R59
  MOVE R81 R67
  MOVE R82 R35
  MOVE R83 R36
  MOVE R84 R37
  MOVE R85 R75
  CALL R77 8 1
  MOVE R76 R77
  GETTABLE R78 R22 R51
  GETTABLE R77 R78 R59
  SETTABLE R76 R77 R67
  JUMP [+182]
  GETUPVAL R77 4
  GETTABLEKS R76 R77 K41 ["Subtract"]
  JUMPIFNOTEQ R15 R76 [+30]
  GETUPVAL R76 6
  JUMPIFEQ R75 R76 [+175]
  LOADN R77 1
  SUB R76 R77 R72
  JUMPIFNOTLT R76 R74 [+171]
  GETUPVAL R78 2
  GETTABLEKS R77 R78 K86 ["one256th"]
  JUMPIFNOTLE R76 R77 [+14]
  GETTABLE R78 R23 R51
  GETTABLE R77 R78 R59
  GETUPVAL R79 11
  JUMPIFNOTEQ R33 R79 [+3]
  LOADN R78 1
  JUMP [+1]
  LOADN R78 0
  SETTABLE R78 R77 R67
  GETTABLE R78 R22 R51
  GETTABLE R77 R78 R59
  SETTABLE R33 R77 R67
  JUMP [+152]
  GETTABLE R78 R23 R51
  GETTABLE R77 R78 R59
  SETTABLE R76 R77 R67
  JUMP [+148]
  GETUPVAL R77 4
  GETTABLEKS R76 R77 K59 ["Grow"]
  JUMPIFNOTEQ R15 R76 [+7]
  GETUPVAL R77 12
  GETTABLEKS R76 R77 K87 ["grow"]
  MOVE R77 R47
  CALL R76 1 0
  JUMP [+137]
  GETUPVAL R77 4
  GETTABLEKS R76 R77 K60 ["Erode"]
  JUMPIFNOTEQ R15 R76 [+7]
  GETUPVAL R77 12
  GETTABLEKS R76 R77 K88 ["erode"]
  MOVE R77 R47
  CALL R76 1 0
  JUMP [+126]
  GETUPVAL R77 4
  GETTABLEKS R76 R77 K58 ["Flatten"]
  JUMPIFNOTEQ R15 R76 [+41]
  FASTCALL1 MATH_ABS R71 [+3]
  MOVE R77 R71
  GETIMPORT R76 K91 [math.abs]
  CALL R76 1 1
  SETTABLEKS R76 R47 K75 ["maxOccupancy"]
  GETUPVAL R77 0
  GETTABLEKS R76 R77 K92 ["FLATTEN_PLANE_TOLERANCE"]
  JUMPIFNOTLT R76 R71 [+12]
  GETUPVAL R77 13
  GETTABLEKS R76 R77 K59 ["Grow"]
  JUMPIFEQ R25 R76 [+7]
  GETUPVAL R77 12
  GETTABLEKS R76 R77 K88 ["erode"]
  MOVE R77 R47
  CALL R76 1 0
  JUMP [+98]
  GETUPVAL R78 0
  GETTABLEKS R77 R78 K92 ["FLATTEN_PLANE_TOLERANCE"]
  MINUS R76 R77
  JUMPIFNOTLT R71 R76 [+93]
  GETUPVAL R77 13
  GETTABLEKS R76 R77 K60 ["Erode"]
  JUMPIFEQ R25 R76 [+88]
  GETUPVAL R77 12
  GETTABLEKS R76 R77 K87 ["grow"]
  MOVE R77 R47
  CALL R76 1 0
  JUMP [+81]
  GETUPVAL R77 4
  GETTABLEKS R76 R77 K37 ["Paint"]
  JUMPIFNOTEQ R15 R76 [+32]
  GETUPVAL R76 3
  JUMPIFNOT R76 [+19]
  JUMPIFNOT R12 [+18]
  GETTABLE R78 R20 R51
  GETTABLE R77 R78 R59
  GETTABLE R76 R77 R67
  LOADN R77 0
  JUMPIFNOTLT R77 R72 [+68]
  JUMPIFNOTEQ R76 R13 [+66]
  GETTABLE R78 R22 R51
  GETTABLE R77 R78 R59
  SETTABLE R14 R77 R67
  GETUPVAL R77 6
  JUMPIFNOTEQ R76 R77 [+60]
  GETTABLE R78 R23 R51
  GETTABLE R77 R78 R59
  SETTABLE R72 R77 R67
  JUMP [+55]
  LOADN R76 0
  JUMPIFNOTLT R76 R72 [+53]
  LOADN R76 0
  JUMPIFNOTLT R76 R74 [+50]
  GETTABLE R77 R22 R51
  GETTABLE R76 R77 R59
  SETTABLE R10 R76 R67
  JUMP [+45]
  GETUPVAL R77 4
  GETTABLEKS R76 R77 K40 ["Replace"]
  JUMPIFNOTEQ R15 R76 [+19]
  GETTABLE R78 R20 R51
  GETTABLE R77 R78 R59
  GETTABLE R76 R77 R67
  LOADN R77 0
  JUMPIFNOTLT R77 R72 [+35]
  JUMPIFNOTEQ R76 R13 [+33]
  GETTABLE R78 R22 R51
  GETTABLE R77 R78 R59
  SETTABLE R14 R77 R67
  GETUPVAL R77 6
  JUMPIFNOTEQ R76 R77 [+27]
  GETTABLE R78 R23 R51
  GETTABLE R77 R78 R59
  SETTABLE R72 R77 R67
  JUMP [+22]
  GETUPVAL R77 4
  GETTABLEKS R76 R77 K55 ["Smooth"]
  JUMPIFNOTEQ R15 R76 [+18]
  GETUPVAL R76 8
  JUMPIF R76 [+6]
  GETUPVAL R77 12
  GETTABLEKS R76 R77 K93 ["smooth"]
  MOVE R77 R47
  CALL R76 1 0
  JUMP [+9]
  GETTABLEKS R76 R0 K94 ["SmoothVoxelsUpgraded"]
  SETTABLEKS R76 R47 K95 ["smoothVoxelsUpgraded"]
  GETUPVAL R77 12
  GETTABLEKS R76 R77 K93 ["smooth"]
  MOVE R77 R47
  CALL R76 1 0
  FORGLOOP R64 2 [inext] [-508]
  FORGLOOP R56 2 [inext] [-525]
  FORGLOOP R48 2 [inext] [-541]
  MOVE R50 R19
  GETUPVAL R52 0
  GETTABLEKS R51 R52 K1 ["VOXEL_RESOLUTION"]
  MOVE R52 R22
  MOVE R53 R23
  NAMECALL R48 R0 K61 ["WriteVoxels"]
  CALL R48 5 0
  RETURN R0 0

PROTO_1:
  PREPVARARGS 0
  GETIMPORT R0 K1 [tick]
  CALL R0 0 1
  GETUPVAL R1 0
  GETVARARGS R2 -1
  CALL R1 -1 0
  GETIMPORT R1 K1 [tick]
  CALL R1 0 1
  GETIMPORT R2 K3 [print]
  LOADK R3 K4 ["Operation took"]
  SUB R4 R1 R0
  CALL R2 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R4 R0 K5 ["Src"]
  GETTABLEKS R3 R4 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["Constants"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K6 ["Util"]
  GETTABLEKS R3 R4 K8 ["TerrainEnums"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["BrushMode"]
  GETTABLEKS R4 R2 K10 ["BrushShape"]
  GETTABLEKS R5 R2 K11 ["FlattenMode"]
  GETTABLEKS R6 R2 K12 ["ToolId"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R10 R0 K5 ["Src"]
  GETTABLEKS R9 R10 K6 ["Util"]
  GETTABLEKS R8 R9 K13 ["applyPivot"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K2 ["Parent"]
  GETTABLEKS R9 R10 K14 ["OperationHelper"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K15 ["DEPRECATED_smartLargeSculptBrush"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETIMPORT R13 K1 [script]
  GETTABLEKS R12 R13 K2 ["Parent"]
  GETTABLEKS R11 R12 K16 ["DEPRECATED_smartColumnSculptBrush"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K2 ["Parent"]
  GETTABLEKS R12 R13 K17 ["SculptOperations"]
  CALL R11 1 1
  GETIMPORT R12 K21 [Enum.Material.Air]
  GETIMPORT R13 K23 [Enum.Material.Water]
  GETIMPORT R14 K25 [game]
  LOADK R16 K26 ["TerrainEditorOverhaul"]
  NAMECALL R14 R14 K27 ["GetFastFlag"]
  CALL R14 2 1
  GETIMPORT R15 K25 [game]
  LOADK R17 K28 ["TerrainSmoothToolFix"]
  NAMECALL R15 R15 K27 ["GetFastFlag"]
  CALL R15 2 1
  DUPCLOSURE R16 K29 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R14
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R12
  CAPTURE VAL R4
  CAPTURE VAL R15
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R5
  RETURN R16 1
