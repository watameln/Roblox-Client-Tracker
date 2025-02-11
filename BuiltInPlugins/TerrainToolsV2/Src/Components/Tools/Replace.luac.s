PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Position"]
  GETTABLEKS R1 R2 K2 ["X"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["Position"]
  GETTABLEKS R2 R3 K3 ["Y"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K1 ["Position"]
  GETTABLEKS R3 R4 K4 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R0 K7 [Vector3.new]
  CALL R0 3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["props"]
  GETTABLEKS R3 R4 K8 ["Size"]
  GETTABLEKS R2 R3 K2 ["X"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K8 ["Size"]
  GETTABLEKS R3 R4 K3 ["Y"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K8 ["Size"]
  GETTABLEKS R4 R5 K4 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R1 K7 [Vector3.new]
  CALL R1 3 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETTABLEKS R2 R3 K9 ["Replace"]
  MOVE R4 R0
  MOVE R5 R1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["props"]
  GETTABLEKS R6 R7 K10 ["Source"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["props"]
  GETTABLEKS R7 R8 K11 ["Target"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["props"]
  GETTABLEKS R8 R9 K12 ["toolName"]
  NAMECALL R2 R2 K13 ["replaceMaterial"]
  CALL R2 6 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R1 K3 [Enum.Material.Water]
  JUMPIFNOTEQ R0 R1 [+15]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["props"]
  GETTABLEKS R1 R2 K5 ["ignoreWater"]
  JUMPIFNOTEQKB R1 TRUE [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["props"]
  GETTABLEKS R1 R2 K6 ["dispatchSetIgnoreWater"]
  LOADB R2 0
  CALL R1 1 0
  GETIMPORT R1 K8 [Enum.Material.Air]
  JUMPIFNOTEQ R0 R1 [+20]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["props"]
  GETTABLEKS R1 R2 K9 ["planeLock"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K10 ["Off"]
  JUMPIFNOTEQ R1 R2 [+10]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["props"]
  GETTABLEKS R1 R2 K11 ["dispatchSetPlaneLock"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K12 ["Auto"]
  CALL R1 1 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K4 ["props"]
  GETTABLEKS R1 R2 K13 ["dispatchSetSourceMaterial"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Source"]
  GETIMPORT R2 K5 [Enum.Material.Water]
  JUMPIFNOTEQ R1 R2 [+15]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K6 ["ignoreWater"]
  JUMPIFNOT R1 [+15]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K7 ["dispatchSetIgnoreWater"]
  LOADB R2 0
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K7 ["dispatchSetIgnoreWater"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Source"]
  GETIMPORT R2 K5 [Enum.Material.Air]
  JUMPIFNOTEQ R1 R2 [+14]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K6 ["Off"]
  JUMPIFEQ R0 R1 [+16]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K7 ["dispatchSetPlaneLock"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K7 ["dispatchSetPlaneLock"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["Replace"]
  NAMECALL R0 R0 K2 ["cancel"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K0 ["tryGenerateReplace"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K1 ["setSourceMaterial"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["setIgnoreWater"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R1 R0 K3 ["setPlaneLock"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["cancel"]
  RETURN R0 0

PROTO_6:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["Position"]
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K3 ["Size"]
  GETTABLEKS R5 R0 K0 ["props"]
  GETTABLEKS R4 R5 K4 ["Replace"]
  NAMECALL R4 R4 K5 ["isReplacing"]
  CALL R4 1 1
  JUMPIFNOT R4 [+8]
  GETTABLEKS R6 R0 K0 ["props"]
  GETTABLEKS R5 R6 K4 ["Replace"]
  NAMECALL R5 R5 K6 ["getProgress"]
  CALL R5 1 1
  JUMPIF R5 [+1]
  LOADN R5 0
  GETTABLEKS R7 R0 K0 ["props"]
  GETTABLEKS R6 R7 K7 ["baseSize"]
  GETTABLEKS R8 R0 K0 ["props"]
  GETTABLEKS R7 R8 K8 ["baseSizeHeightLocked"]
  GETTABLEKS R9 R0 K0 ["props"]
  GETTABLEKS R8 R9 K9 ["brushShape"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K10 ["height"]
  GETTABLEKS R11 R0 K0 ["props"]
  GETTABLEKS R10 R11 K11 ["ignoreWater"]
  GETTABLEKS R12 R0 K0 ["props"]
  GETTABLEKS R11 R12 K12 ["ignoreParts"]
  GETTABLEKS R13 R0 K0 ["props"]
  GETTABLEKS R12 R13 K13 ["pivot"]
  GETTABLEKS R14 R0 K0 ["props"]
  GETTABLEKS R13 R14 K14 ["planeLock"]
  GETTABLEKS R15 R0 K0 ["props"]
  GETTABLEKS R14 R15 K15 ["planeCFrame"]
  GETTABLEKS R16 R0 K0 ["props"]
  GETTABLEKS R15 R16 K16 ["editPlaneMode"]
  GETTABLEKS R17 R0 K0 ["props"]
  GETTABLEKS R16 R17 K17 ["snapToVoxels"]
  GETTABLEKS R18 R0 K0 ["props"]
  GETTABLEKS R17 R18 K18 ["strength"]
  GETTABLEKS R19 R0 K0 ["props"]
  GETTABLEKS R18 R19 K19 ["Source"]
  GETTABLEKS R20 R0 K0 ["props"]
  GETTABLEKS R19 R20 K20 ["Target"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K21 ["createFragment"]
  DUPTABLE R21 K24 [{"ReplaceTool", "ProgressDialog"}]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K25 ["createElement"]
  GETUPVAL R23 1
  DUPTABLE R24 K28 [{"Title", "LayoutOrder"}]
  LOADK R27 K4 ["Replace"]
  LOADK R28 K29 ["ReplaceMaterial"]
  NAMECALL R25 R1 K30 ["getText"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K26 ["Title"]
  LOADN R25 1
  SETTABLEKS R25 R24 K27 ["LayoutOrder"]
  DUPTABLE R25 K37 [{"ModeButtonsWithBoxToggled", "Brush", "MouseListener", "MapSettingsWithPreview", "MaterialPanel", "ReplaceButtons"}]
  GETUPVAL R27 2
  JUMPIF R27 [+51]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K25 ["createElement"]
  GETUPVAL R27 3
  DUPTABLE R28 K41 [{"Selected", "Select", "Options"}]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K42 ["Mode"]
  SETTABLEKS R29 R28 K38 ["Selected"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K43 ["dispatchSetReplaceMode"]
  SETTABLEKS R29 R28 K39 ["Select"]
  NEWTABLE R29 0 2
  DUPTABLE R30 K46 [{"Data", "Text"}]
  GETUPVAL R32 4
  GETTABLEKS R31 R32 K47 ["Box"]
  SETTABLEKS R31 R30 K44 ["Data"]
  LOADK R33 K48 ["ReplaceMode"]
  LOADK R34 K47 ["Box"]
  NAMECALL R31 R1 K30 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K45 ["Text"]
  DUPTABLE R31 K46 [{"Data", "Text"}]
  GETUPVAL R33 4
  GETTABLEKS R32 R33 K32 ["Brush"]
  SETTABLEKS R32 R31 K44 ["Data"]
  LOADK R34 K48 ["ReplaceMode"]
  LOADK R35 K32 ["Brush"]
  NAMECALL R32 R1 K30 ["getText"]
  CALL R32 3 1
  SETTABLEKS R32 R31 K45 ["Text"]
  SETLIST R29 R30 2 [1]
  SETTABLEKS R29 R28 K40 ["Options"]
  CALL R26 2 1
  JUMP [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K31 ["ModeButtonsWithBoxToggled"]
  GETUPVAL R27 2
  JUMPIF R27 [+154]
  GETTABLEKS R28 R0 K0 ["props"]
  GETTABLEKS R27 R28 K42 ["Mode"]
  GETUPVAL R29 4
  GETTABLEKS R28 R29 K32 ["Brush"]
  JUMPIFNOTEQ R27 R28 [+146]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K25 ["createElement"]
  GETUPVAL R27 5
  DUPTABLE R28 K68 [{"LayoutOrder", "isSubsection", "toolName", "baseSize", "baseSizeHeightLocked", "brushShape", "height", "ignoreWater", "ignoreParts", "pivot", "planeLock", "planeCFrame", "editPlaneMode", "snapToVoxels", "strength", "source", "target", "dispatchChangeBaseSize", "dispatchSetBaseSizeHeightLocked", "dispatchChooseBrushShape", "dispatchChangeHeight", "dispatchSetEditPlaneMode", "dispatchSetIgnoreWater", "dispatchSetIgnoreParts", "dispatchChangePivot", "dispatchSetPlaneCFrame", "dispatchSetPlaneLock", "dispatchSetSnapToVoxels", "dispatchSetSourceMaterial", "dispatchSetTargetMaterial", "disablePlaneLock", "disableIgnoreWater"}]
  LOADN R29 2
  SETTABLEKS R29 R28 K27 ["LayoutOrder"]
  LOADB R29 1
  SETTABLEKS R29 R28 K49 ["isSubsection"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K50 ["toolName"]
  SETTABLEKS R29 R28 K50 ["toolName"]
  SETTABLEKS R6 R28 K7 ["baseSize"]
  SETTABLEKS R7 R28 K8 ["baseSizeHeightLocked"]
  SETTABLEKS R8 R28 K9 ["brushShape"]
  SETTABLEKS R9 R28 K10 ["height"]
  SETTABLEKS R10 R28 K11 ["ignoreWater"]
  SETTABLEKS R11 R28 K12 ["ignoreParts"]
  SETTABLEKS R12 R28 K13 ["pivot"]
  SETTABLEKS R13 R28 K14 ["planeLock"]
  SETTABLEKS R14 R28 K15 ["planeCFrame"]
  SETTABLEKS R15 R28 K16 ["editPlaneMode"]
  SETTABLEKS R16 R28 K17 ["snapToVoxels"]
  SETTABLEKS R17 R28 K18 ["strength"]
  SETTABLEKS R18 R28 K51 ["source"]
  SETTABLEKS R19 R28 K52 ["target"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K53 ["dispatchChangeBaseSize"]
  SETTABLEKS R29 R28 K53 ["dispatchChangeBaseSize"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K54 ["dispatchSetBaseSizeHeightLocked"]
  SETTABLEKS R29 R28 K54 ["dispatchSetBaseSizeHeightLocked"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K55 ["dispatchChooseBrushShape"]
  SETTABLEKS R29 R28 K55 ["dispatchChooseBrushShape"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K56 ["dispatchChangeHeight"]
  SETTABLEKS R29 R28 K56 ["dispatchChangeHeight"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K57 ["dispatchSetEditPlaneMode"]
  SETTABLEKS R29 R28 K57 ["dispatchSetEditPlaneMode"]
  GETTABLEKS R29 R0 K69 ["setIgnoreWater"]
  SETTABLEKS R29 R28 K58 ["dispatchSetIgnoreWater"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K59 ["dispatchSetIgnoreParts"]
  SETTABLEKS R29 R28 K59 ["dispatchSetIgnoreParts"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K60 ["dispatchChangePivot"]
  SETTABLEKS R29 R28 K60 ["dispatchChangePivot"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K61 ["dispatchSetPlaneCFrame"]
  SETTABLEKS R29 R28 K61 ["dispatchSetPlaneCFrame"]
  GETTABLEKS R29 R0 K70 ["setPlaneLock"]
  SETTABLEKS R29 R28 K62 ["dispatchSetPlaneLock"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K63 ["dispatchSetSnapToVoxels"]
  SETTABLEKS R29 R28 K63 ["dispatchSetSnapToVoxels"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K64 ["dispatchSetSourceMaterial"]
  SETTABLEKS R29 R28 K64 ["dispatchSetSourceMaterial"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K65 ["dispatchSetTargetMaterial"]
  SETTABLEKS R29 R28 K65 ["dispatchSetTargetMaterial"]
  GETTABLEKS R31 R0 K0 ["props"]
  GETTABLEKS R30 R31 K19 ["Source"]
  GETIMPORT R31 K74 [Enum.Material.Air]
  JUMPIFEQ R30 R31 [+2]
  LOADB R29 0 +1
  LOADB R29 1
  SETTABLEKS R29 R28 K66 ["disablePlaneLock"]
  GETTABLEKS R31 R0 K0 ["props"]
  GETTABLEKS R30 R31 K19 ["Source"]
  GETIMPORT R31 K76 [Enum.Material.Water]
  JUMPIFEQ R30 R31 [+2]
  LOADB R29 0 +1
  LOADB R29 1
  SETTABLEKS R29 R28 K67 ["disableIgnoreWater"]
  CALL R26 2 1
  JUMP [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K32 ["Brush"]
  GETUPVAL R27 2
  JUMPIF R27 [+9]
  GETTABLEKS R28 R0 K0 ["props"]
  GETTABLEKS R27 R28 K42 ["Mode"]
  GETUPVAL R29 4
  GETTABLEKS R28 R29 K47 ["Box"]
  JUMPIFNOTEQ R27 R28 [+20]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K25 ["createElement"]
  GETUPVAL R27 6
  DUPTABLE R28 K77 [{"dispatchSetSourceMaterial", "dispatchSetTargetMaterial"}]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K64 ["dispatchSetSourceMaterial"]
  SETTABLEKS R29 R28 K64 ["dispatchSetSourceMaterial"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K65 ["dispatchSetTargetMaterial"]
  SETTABLEKS R29 R28 K65 ["dispatchSetTargetMaterial"]
  CALL R26 2 1
  JUMP [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K33 ["MouseListener"]
  GETUPVAL R27 2
  JUMPIF R27 [+9]
  GETTABLEKS R28 R0 K0 ["props"]
  GETTABLEKS R27 R28 K42 ["Mode"]
  GETUPVAL R29 4
  GETTABLEKS R28 R29 K47 ["Box"]
  JUMPIFNOTEQ R27 R28 [+36]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K25 ["createElement"]
  GETUPVAL R27 7
  DUPTABLE R28 K80 [{"LayoutOrder", "isSubsection", "toolName", "Position", "Size", "OnPositionChanged", "OnSizeChanged"}]
  LOADN R29 3
  SETTABLEKS R29 R28 K27 ["LayoutOrder"]
  LOADB R29 1
  SETTABLEKS R29 R28 K49 ["isSubsection"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K50 ["toolName"]
  SETTABLEKS R29 R28 K50 ["toolName"]
  SETTABLEKS R2 R28 K2 ["Position"]
  SETTABLEKS R3 R28 K3 ["Size"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K81 ["dispatchChangePosition"]
  SETTABLEKS R29 R28 K78 ["OnPositionChanged"]
  GETTABLEKS R30 R0 K0 ["props"]
  GETTABLEKS R29 R30 K82 ["dispatchChangeSize"]
  SETTABLEKS R29 R28 K79 ["OnSizeChanged"]
  CALL R26 2 1
  JUMP [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K34 ["MapSettingsWithPreview"]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K25 ["createElement"]
  GETUPVAL R27 1
  DUPTABLE R28 K83 [{"Title", "LayoutOrder", "isSubsection"}]
  LOADK R31 K4 ["Replace"]
  LOADK R32 K84 ["MaterialSettings"]
  NAMECALL R29 R1 K30 ["getText"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K26 ["Title"]
  LOADN R29 4
  SETTABLEKS R29 R28 K27 ["LayoutOrder"]
  LOADB R29 1
  SETTABLEKS R29 R28 K49 ["isSubsection"]
  DUPTABLE R29 K87 [{"SourceMaterialSelector", "TargetMaterialSelector"}]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K25 ["createElement"]
  GETUPVAL R31 8
  DUPTABLE R32 K92 [{"LayoutOrder", "AllowAir", "Label", "material", "setMaterial"}]
  LOADN R33 1
  SETTABLEKS R33 R32 K27 ["LayoutOrder"]
  LOADB R33 1
  SETTABLEKS R33 R32 K88 ["AllowAir"]
  LOADK R35 K4 ["Replace"]
  LOADK R36 K93 ["SourceMaterial"]
  NAMECALL R33 R1 K30 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K89 ["Label"]
  GETTABLEKS R34 R0 K0 ["props"]
  GETTABLEKS R33 R34 K19 ["Source"]
  SETTABLEKS R33 R32 K90 ["material"]
  GETTABLEKS R33 R0 K94 ["setSourceMaterial"]
  SETTABLEKS R33 R32 K91 ["setMaterial"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K85 ["SourceMaterialSelector"]
  GETUPVAL R31 0
  GETTABLEKS R30 R31 K25 ["createElement"]
  GETUPVAL R31 8
  DUPTABLE R32 K92 [{"LayoutOrder", "AllowAir", "Label", "material", "setMaterial"}]
  LOADN R33 2
  SETTABLEKS R33 R32 K27 ["LayoutOrder"]
  LOADB R33 1
  SETTABLEKS R33 R32 K88 ["AllowAir"]
  LOADK R35 K4 ["Replace"]
  LOADK R36 K95 ["TargetMaterial"]
  NAMECALL R33 R1 K30 ["getText"]
  CALL R33 3 1
  SETTABLEKS R33 R32 K89 ["Label"]
  GETTABLEKS R34 R0 K0 ["props"]
  GETTABLEKS R33 R34 K20 ["Target"]
  SETTABLEKS R33 R32 K90 ["material"]
  GETTABLEKS R34 R0 K0 ["props"]
  GETTABLEKS R33 R34 K65 ["dispatchSetTargetMaterial"]
  SETTABLEKS R33 R32 K91 ["setMaterial"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K86 ["TargetMaterialSelector"]
  CALL R26 3 1
  SETTABLEKS R26 R25 K35 ["MaterialPanel"]
  GETUPVAL R27 2
  JUMPIF R27 [+9]
  GETTABLEKS R28 R0 K0 ["props"]
  GETTABLEKS R27 R28 K42 ["Mode"]
  GETUPVAL R29 4
  GETTABLEKS R28 R29 K47 ["Box"]
  JUMPIFNOTEQ R27 R28 [+35]
  GETUPVAL R27 0
  GETTABLEKS R26 R27 K25 ["createElement"]
  GETUPVAL R27 9
  DUPTABLE R28 K97 [{"LayoutOrder", "Buttons"}]
  LOADN R29 5
  SETTABLEKS R29 R28 K27 ["LayoutOrder"]
  NEWTABLE R29 0 1
  DUPTABLE R30 K102 [{"Key", "Name", "Active", "OnClicked"}]
  LOADK R31 K4 ["Replace"]
  SETTABLEKS R31 R30 K98 ["Key"]
  LOADK R33 K4 ["Replace"]
  LOADK R34 K4 ["Replace"]
  NAMECALL R31 R1 K30 ["getText"]
  CALL R31 3 1
  SETTABLEKS R31 R30 K99 ["Name"]
  NOT R31 R4
  SETTABLEKS R31 R30 K100 ["Active"]
  GETTABLEKS R31 R0 K103 ["tryGenerateReplace"]
  SETTABLEKS R31 R30 K101 ["OnClicked"]
  SETLIST R29 R30 1 [1]
  SETTABLEKS R29 R28 K96 ["Buttons"]
  CALL R26 2 1
  JUMP [+1]
  LOADNIL R26
  SETTABLEKS R26 R25 K36 ["ReplaceButtons"]
  CALL R22 3 1
  SETTABLEKS R22 R21 K22 ["ReplaceTool"]
  MOVE R22 R4
  JUMPIFNOT R22 [+26]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K25 ["createElement"]
  GETUPVAL R23 10
  DUPTABLE R24 K107 [{"Title", "SubText", "Progress", "OnCancelButtonClicked"}]
  LOADK R27 K4 ["Replace"]
  LOADK R28 K108 ["ReplaceProgressTitle"]
  NAMECALL R25 R1 K30 ["getText"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K26 ["Title"]
  LOADK R27 K4 ["Replace"]
  LOADK R28 K109 ["Replacing"]
  NAMECALL R25 R1 K30 ["getText"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K104 ["SubText"]
  SETTABLEKS R5 R24 K105 ["Progress"]
  GETTABLEKS R25 R0 K110 ["cancel"]
  SETTABLEKS R25 R24 K106 ["OnCancelButtonClicked"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K23 ["ProgressDialog"]
  CALL R20 1 -1
  RETURN R20 -1

PROTO_7:
  DUPTABLE R2 K16 [{"toolName", "Position", "Size", "Source", "Target", "Mode", "baseSize", "baseSizeHeightLocked", "brushShape", "height", "ignoreWater", "ignoreParts", "pivot", "planeLock", "planeCFrame", "editPlaneMode"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K17 ["ToolId"]
  GETTABLEKS R3 R4 K18 ["Replace"]
  SETTABLEKS R3 R2 K0 ["toolName"]
  GETTABLEKS R4 R0 K19 ["ReplaceTool"]
  GETTABLEKS R3 R4 K20 ["position"]
  SETTABLEKS R3 R2 K1 ["Position"]
  GETTABLEKS R4 R0 K19 ["ReplaceTool"]
  GETTABLEKS R3 R4 K21 ["size"]
  SETTABLEKS R3 R2 K2 ["Size"]
  GETTABLEKS R4 R0 K19 ["ReplaceTool"]
  GETTABLEKS R3 R4 K22 ["SourceMaterial"]
  SETTABLEKS R3 R2 K3 ["Source"]
  GETTABLEKS R4 R0 K19 ["ReplaceTool"]
  GETTABLEKS R3 R4 K23 ["TargetMaterial"]
  SETTABLEKS R3 R2 K4 ["Target"]
  GETTABLEKS R4 R0 K19 ["ReplaceTool"]
  GETTABLEKS R3 R4 K24 ["ReplaceMode"]
  SETTABLEKS R3 R2 K5 ["Mode"]
  GETTABLEKS R4 R0 K19 ["ReplaceTool"]
  GETTABLEKS R3 R4 K6 ["baseSize"]
  SETTABLEKS R3 R2 K6 ["baseSize"]
  GETTABLEKS R4 R0 K19 ["ReplaceTool"]
  GETTABLEKS R3 R4 K7 ["baseSizeHeightLocked"]
  SETTABLEKS R3 R2 K7 ["baseSizeHeightLocked"]
  GETTABLEKS R4 R0 K19 ["ReplaceTool"]
  GETTABLEKS R3 R4 K8 ["brushShape"]
  SETTABLEKS R3 R2 K8 ["brushShape"]
  GETTABLEKS R4 R0 K19 ["ReplaceTool"]
  GETTABLEKS R3 R4 K9 ["height"]
  SETTABLEKS R3 R2 K9 ["height"]
  GETTABLEKS R4 R0 K19 ["ReplaceTool"]
  GETTABLEKS R3 R4 K10 ["ignoreWater"]
  SETTABLEKS R3 R2 K10 ["ignoreWater"]
  GETTABLEKS R4 R0 K19 ["ReplaceTool"]
  GETTABLEKS R3 R4 K11 ["ignoreParts"]
  SETTABLEKS R3 R2 K11 ["ignoreParts"]
  GETTABLEKS R4 R0 K19 ["ReplaceTool"]
  GETTABLEKS R3 R4 K12 ["pivot"]
  SETTABLEKS R3 R2 K12 ["pivot"]
  GETTABLEKS R4 R0 K25 ["BaseTool"]
  GETTABLEKS R3 R4 K13 ["planeLock"]
  SETTABLEKS R3 R2 K13 ["planeLock"]
  GETTABLEKS R4 R0 K25 ["BaseTool"]
  GETTABLEKS R3 R4 K14 ["planeCFrame"]
  SETTABLEKS R3 R2 K14 ["planeCFrame"]
  GETTABLEKS R4 R0 K25 ["BaseTool"]
  GETTABLEKS R3 R4 K15 ["editPlaneMode"]
  SETTABLEKS R3 R2 K15 ["editPlaneMode"]
  RETURN R2 1

PROTO_8:
  GETUPVAL R1 0
  GETUPVAL R2 1
  LOADK R3 K0 ["ReplaceTool"]
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R2 1
  LOADK R3 K0 ["BaseTool"]
  MOVE R4 R0
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["ReplaceTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["ReplaceTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["ReplaceTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["ReplaceTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["ReplaceTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["ReplaceTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["ReplaceTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["ReplaceTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["ReplaceTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["ReplaceTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_20:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["ReplaceTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["ReplaceTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["ReplaceTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["BaseTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["BaseTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_25:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  LOADK R4 K0 ["BaseTool"]
  MOVE R5 R1
  CALL R3 2 -1
  CALL R2 -1 0
  RETURN R0 0

PROTO_26:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  DUPTABLE R3 K16 [{"dispatchChangePosition", "dispatchChangeSize", "dispatchSetSourceMaterial", "dispatchSetTargetMaterial", "dispatchSetReplaceMode", "dispatchChangeBaseSize", "dispatchSetBaseSizeHeightLocked", "dispatchChooseBrushShape", "dispatchChangeHeight", "dispatchSetEditPlaneMode", "dispatchSetIgnoreWater", "dispatchSetIgnoreParts", "dispatchChangePivot", "dispatchSetPlaneCFrame", "dispatchSetPlaneLock", "dispatchSetSnapToVoxels"}]
  NEWCLOSURE R4 P2
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R4 R3 K0 ["dispatchChangePosition"]
  NEWCLOSURE R4 P3
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R4 R3 K1 ["dispatchChangeSize"]
  NEWCLOSURE R4 P4
  CAPTURE UPVAL U3
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R4 R3 K2 ["dispatchSetSourceMaterial"]
  NEWCLOSURE R4 P5
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R4 R3 K3 ["dispatchSetTargetMaterial"]
  NEWCLOSURE R4 P6
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R4 R3 K4 ["dispatchSetReplaceMode"]
  NEWCLOSURE R4 P7
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R4 R3 K5 ["dispatchChangeBaseSize"]
  NEWCLOSURE R4 P8
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R4 R3 K6 ["dispatchSetBaseSizeHeightLocked"]
  NEWCLOSURE R4 P9
  CAPTURE UPVAL U8
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R4 R3 K7 ["dispatchChooseBrushShape"]
  NEWCLOSURE R4 P10
  CAPTURE UPVAL U9
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R4 R3 K8 ["dispatchChangeHeight"]
  NEWCLOSURE R4 P11
  CAPTURE UPVAL U10
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R4 R3 K9 ["dispatchSetEditPlaneMode"]
  NEWCLOSURE R4 P12
  CAPTURE UPVAL U11
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R4 R3 K10 ["dispatchSetIgnoreWater"]
  NEWCLOSURE R4 P13
  CAPTURE UPVAL U12
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R4 R3 K11 ["dispatchSetIgnoreParts"]
  NEWCLOSURE R4 P14
  CAPTURE UPVAL U13
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R4 R3 K12 ["dispatchChangePivot"]
  NEWCLOSURE R4 P15
  CAPTURE UPVAL U14
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R4 R3 K13 ["dispatchSetPlaneCFrame"]
  NEWCLOSURE R4 P16
  CAPTURE UPVAL U15
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R4 R3 K14 ["dispatchSetPlaneLock"]
  NEWCLOSURE R4 P17
  CAPTURE UPVAL U16
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  SETTABLEKS R4 R3 K15 ["dispatchSetSnapToVoxels"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
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
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["RoactRodux"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K9 ["ContextServices"]
  GETTABLEKS R5 R4 K10 ["withContext"]
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["ContextItems"]
  CALL R6 1 1
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K13 ["Actions"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R7 K14 ["ApplyToolAction"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R10 R7 K15 ["ChangePosition"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R7 K16 ["ChangeSize"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R7 K17 ["SetSourceMaterial"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R7 K18 ["SetTargetMaterial"]
  CALL R12 1 1
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R7 K19 ["SetReplaceMode"]
  CALL R13 1 1
  GETIMPORT R14 K4 [require]
  GETTABLEKS R15 R7 K20 ["ChangeBaseSize"]
  CALL R14 1 1
  GETIMPORT R15 K4 [require]
  GETTABLEKS R16 R7 K21 ["ChangeHeight"]
  CALL R15 1 1
  GETIMPORT R16 K4 [require]
  GETTABLEKS R17 R7 K22 ["ChangePivot"]
  CALL R16 1 1
  GETIMPORT R17 K4 [require]
  GETTABLEKS R18 R7 K23 ["ChooseBrushShape"]
  CALL R17 1 1
  GETIMPORT R18 K4 [require]
  GETTABLEKS R19 R7 K24 ["SetBaseSizeHeightLocked"]
  CALL R18 1 1
  GETIMPORT R19 K4 [require]
  GETTABLEKS R20 R7 K25 ["SetEditPlaneMode"]
  CALL R19 1 1
  GETIMPORT R20 K4 [require]
  GETTABLEKS R21 R7 K26 ["SetIgnoreWater"]
  CALL R20 1 1
  GETIMPORT R21 K4 [require]
  GETTABLEKS R22 R7 K27 ["SetIgnoreParts"]
  CALL R21 1 1
  GETIMPORT R22 K4 [require]
  GETTABLEKS R23 R7 K28 ["SetPlaneCFrame"]
  CALL R22 1 1
  GETIMPORT R23 K4 [require]
  GETTABLEKS R24 R7 K29 ["SetPlaneLock"]
  CALL R23 1 1
  GETIMPORT R24 K4 [require]
  GETTABLEKS R25 R7 K30 ["SetSnapToVoxels"]
  CALL R24 1 1
  GETIMPORT R27 K1 [script]
  GETTABLEKS R26 R27 K2 ["Parent"]
  GETTABLEKS R25 R26 K31 ["ToolParts"]
  GETIMPORT R26 K4 [require]
  GETTABLEKS R27 R25 K32 ["ButtonGroup"]
  CALL R26 1 1
  GETIMPORT R27 K4 [require]
  GETTABLEKS R28 R25 K33 ["Panel"]
  CALL R27 1 1
  GETIMPORT R28 K4 [require]
  GETTABLEKS R29 R25 K34 ["MapSettingsWithPreview"]
  CALL R28 1 1
  GETIMPORT R29 K4 [require]
  GETTABLEKS R30 R25 K35 ["MaterialSelector"]
  CALL R29 1 1
  GETIMPORT R30 K4 [require]
  GETTABLEKS R33 R0 K11 ["Src"]
  GETTABLEKS R32 R33 K36 ["Components"]
  GETTABLEKS R31 R32 K37 ["ProgressDialog"]
  CALL R30 1 1
  GETIMPORT R31 K4 [require]
  GETTABLEKS R32 R25 K38 ["ModeSelector"]
  CALL R31 1 1
  GETIMPORT R32 K4 [require]
  GETTABLEKS R33 R25 K39 ["MouseListener"]
  CALL R32 1 1
  GETIMPORT R33 K4 [require]
  GETTABLEKS R37 R0 K11 ["Src"]
  GETTABLEKS R36 R37 K36 ["Components"]
  GETTABLEKS R35 R36 K40 ["Tools"]
  GETTABLEKS R34 R35 K41 ["BaseBrush"]
  CALL R33 1 1
  GETIMPORT R34 K4 [require]
  GETTABLEKS R37 R0 K11 ["Src"]
  GETTABLEKS R36 R37 K42 ["Util"]
  GETTABLEKS R35 R36 K43 ["TerrainEnums"]
  CALL R34 1 1
  GETTABLEKS R35 R34 K44 ["PlaneLockType"]
  GETTABLEKS R36 R34 K45 ["ReplaceMode"]
  GETIMPORT R37 K47 [game]
  LOADK R39 K48 ["TerrainEditorOverhaul"]
  NAMECALL R37 R37 K49 ["GetFastFlag"]
  CALL R37 2 1
  GETTABLEKS R38 R2 K50 ["PureComponent"]
  GETIMPORT R41 K1 [script]
  GETTABLEKS R40 R41 K51 ["Name"]
  NAMECALL R38 R38 K52 ["extend"]
  CALL R38 2 1
  DUPCLOSURE R39 K53 [PROTO_5]
  CAPTURE VAL R35
  SETTABLEKS R39 R38 K54 ["init"]
  DUPCLOSURE R39 K55 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R27
  CAPTURE VAL R37
  CAPTURE VAL R31
  CAPTURE VAL R36
  CAPTURE VAL R33
  CAPTURE VAL R32
  CAPTURE VAL R28
  CAPTURE VAL R29
  CAPTURE VAL R26
  CAPTURE VAL R30
  SETTABLEKS R39 R38 K56 ["render"]
  MOVE R39 R5
  DUPTABLE R40 K59 [{"Localization", "Replace"}]
  GETTABLEKS R41 R4 K57 ["Localization"]
  SETTABLEKS R41 R40 K57 ["Localization"]
  GETTABLEKS R41 R6 K60 ["SeaLevel"]
  SETTABLEKS R41 R40 K58 ["Replace"]
  CALL R39 1 1
  MOVE R40 R38
  CALL R39 1 1
  MOVE R38 R39
  DUPCLOSURE R39 K61 [PROTO_7]
  CAPTURE VAL R34
  DUPCLOSURE R40 K62 [PROTO_26]
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R18
  CAPTURE VAL R17
  CAPTURE VAL R15
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R16
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R24
  GETTABLEKS R41 R3 K63 ["connect"]
  MOVE R42 R39
  MOVE R43 R40
  CALL R41 2 1
  MOVE R42 R38
  CALL R41 1 -1
  RETURN R41 -1
