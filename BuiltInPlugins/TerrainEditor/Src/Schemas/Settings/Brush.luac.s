PROTO_0:
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["PlaneTransform"]
  GETTABLE R2 R3 R4
  GETTABLEKS R1 R2 K1 ["Rotation"]
  GETTABLEN R4 R0 1
  GETTABLEN R5 R0 2
  GETTABLEN R6 R0 3
  FASTCALL VECTOR [+2]
  GETIMPORT R3 K4 [Vector3.new]
  CALL R3 3 1
  ADD R2 R1 R3
  RETURN R2 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["Position"]
  NEWTABLE R2 0 3
  GETTABLEKS R3 R1 K1 ["X"]
  GETTABLEKS R4 R1 K2 ["Y"]
  GETTABLEKS R5 R1 K3 ["Z"]
  SETLIST R2 R3 3 [1]
  RETURN R2 1

PROTO_3:
  GETIMPORT R1 K2 [CFrame.fromEulerAnglesXYZ]
  GETTABLEN R3 R0 1
  FASTCALL1 MATH_RAD R3 [+2]
  GETIMPORT R2 K5 [math.rad]
  CALL R2 1 1
  GETTABLEN R4 R0 2
  FASTCALL1 MATH_RAD R4 [+2]
  GETIMPORT R3 K5 [math.rad]
  CALL R3 1 1
  GETTABLEN R5 R0 3
  FASTCALL1 MATH_RAD R5 [+2]
  GETIMPORT R4 K5 [math.rad]
  CALL R4 1 1
  CALL R1 3 1
  GETUPVAL R5 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K6 ["PlaneTransform"]
  GETTABLE R4 R5 R6
  GETTABLEKS R3 R4 K7 ["Position"]
  ADD R2 R1 R3
  RETURN R2 1

PROTO_4:
  NAMECALL R1 R0 K0 ["ToEulerAnglesXYZ"]
  CALL R1 1 3
  NEWTABLE R4 0 3
  FASTCALL1 MATH_DEG R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K3 [math.deg]
  CALL R5 1 1
  FASTCALL1 MATH_DEG R2 [+3]
  MOVE R7 R2
  GETIMPORT R6 K3 [math.deg]
  CALL R6 1 1
  FASTCALL1 MATH_DEG R3 [+3]
  MOVE R8 R3
  GETIMPORT R7 K3 [math.deg]
  CALL R7 1 1
  SETLIST R4 R5 3 [1]
  RETURN R4 1

PROTO_5:
  GETTABLEKS R4 R0 K0 ["Localization"]
  GETTABLEKS R5 R0 K1 ["Stylizer"]
  GETUPVAL R6 0
  MOVE R7 R0
  NEWTABLE R8 0 16
  DUPTABLE R9 K4 [{"Id", "Schema"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K5 ["BrushMode"]
  SETTABLEKS R10 R9 K2 ["Id"]
  DUPTABLE R10 K8 [{"Type", "Items"}]
  LOADK R11 K9 ["SingleSelectButton"]
  SETTABLEKS R11 R10 K6 ["Type"]
  GETUPVAL R11 2
  MOVE R12 R4
  LOADNIL R13
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K5 ["BrushMode"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K7 ["Items"]
  SETTABLEKS R10 R9 K3 ["Schema"]
  DUPTABLE R10 K11 [{"Height", "Id", "Schema"}]
  LOADN R11 52
  SETTABLEKS R11 R10 K10 ["Height"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K12 ["BrushShape"]
  SETTABLEKS R11 R10 K2 ["Id"]
  DUPTABLE R11 K8 [{"Type", "Items"}]
  LOADK R12 K9 ["SingleSelectButton"]
  SETTABLEKS R12 R11 K6 ["Type"]
  GETUPVAL R12 2
  LOADNIL R13
  MOVE R14 R5
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K12 ["BrushShape"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K7 ["Items"]
  SETTABLEKS R11 R10 K3 ["Schema"]
  DUPTABLE R11 K11 [{"Height", "Id", "Schema"}]
  LOADN R12 52
  SETTABLEKS R12 R11 K10 ["Height"]
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K13 ["FlattenMode"]
  SETTABLEKS R12 R11 K2 ["Id"]
  DUPTABLE R12 K8 [{"Type", "Items"}]
  LOADK R13 K9 ["SingleSelectButton"]
  SETTABLEKS R13 R12 K6 ["Type"]
  GETUPVAL R13 2
  LOADNIL R14
  MOVE R15 R5
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K13 ["FlattenMode"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K7 ["Items"]
  SETTABLEKS R12 R11 K3 ["Schema"]
  DUPTABLE R12 K4 [{"Id", "Schema"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K14 ["BrushSize"]
  SETTABLEKS R13 R12 K2 ["Id"]
  DUPTABLE R13 K16 [{"Shape", "Type"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K12 ["BrushShape"]
  GETTABLE R14 R1 R15
  SETTABLEKS R14 R13 K15 ["Shape"]
  LOADK R14 K14 ["BrushSize"]
  SETTABLEKS R14 R13 K6 ["Type"]
  SETTABLEKS R13 R12 K3 ["Schema"]
  DUPTABLE R13 K4 [{"Id", "Schema"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K17 ["Strength"]
  SETTABLEKS R14 R13 K2 ["Id"]
  DUPTABLE R14 K22 [{"Type", "Min", "Max", "ShowInput", "SnapIncrement"}]
  LOADK R15 K23 ["Slider"]
  SETTABLEKS R15 R14 K6 ["Type"]
  LOADN R15 0
  SETTABLEKS R15 R14 K18 ["Min"]
  LOADN R15 1
  SETTABLEKS R15 R14 K19 ["Max"]
  LOADB R15 1
  SETTABLEKS R15 R14 K20 ["ShowInput"]
  LOADK R15 K24 [0.01]
  SETTABLEKS R15 R14 K21 ["SnapIncrement"]
  SETTABLEKS R14 R13 K3 ["Schema"]
  DUPTABLE R14 K4 [{"Id", "Schema"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K25 ["PivotPosition"]
  SETTABLEKS R15 R14 K2 ["Id"]
  DUPTABLE R15 K8 [{"Type", "Items"}]
  LOADK R16 K9 ["SingleSelectButton"]
  SETTABLEKS R16 R15 K6 ["Type"]
  GETUPVAL R16 2
  MOVE R17 R4
  LOADNIL R18
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K25 ["PivotPosition"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K7 ["Items"]
  SETTABLEKS R15 R14 K3 ["Schema"]
  DUPTABLE R15 K4 [{"Id", "Schema"}]
  GETUPVAL R17 1
  GETTABLEKS R16 R17 K26 ["Snapping"]
  SETTABLEKS R16 R15 K2 ["Id"]
  DUPTABLE R16 K8 [{"Type", "Items"}]
  LOADK R17 K9 ["SingleSelectButton"]
  SETTABLEKS R17 R16 K6 ["Type"]
  GETUPVAL R17 2
  MOVE R18 R4
  LOADNIL R19
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K26 ["Snapping"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K7 ["Items"]
  SETTABLEKS R16 R15 K3 ["Schema"]
  DUPTABLE R16 K4 [{"Id", "Schema"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K27 ["FlattenPlane"]
  SETTABLEKS R17 R16 K2 ["Id"]
  DUPTABLE R17 K8 [{"Type", "Items"}]
  LOADK R18 K9 ["SingleSelectButton"]
  SETTABLEKS R18 R17 K6 ["Type"]
  GETUPVAL R18 2
  MOVE R19 R4
  LOADNIL R20
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K27 ["FlattenPlane"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K7 ["Items"]
  SETTABLEKS R17 R16 K3 ["Schema"]
  DUPTABLE R17 K29 [{"Hidden", "Id", "Schema"}]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K27 ["FlattenPlane"]
  GETTABLE R19 R1 R20
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K30 ["Auto"]
  JUMPIFEQ R19 R20 [+2]
  LOADB R18 0 +1
  LOADB R18 1
  SETTABLEKS R18 R17 K28 ["Hidden"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K31 ["FixedYPlane"]
  SETTABLEKS R18 R17 K2 ["Id"]
  DUPTABLE R18 K32 [{"Type"}]
  LOADK R19 K33 ["Number"]
  SETTABLEKS R19 R18 K6 ["Type"]
  SETTABLEKS R18 R17 K3 ["Schema"]
  DUPTABLE R18 K4 [{"Id", "Schema"}]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K34 ["PlaneLock"]
  SETTABLEKS R19 R18 K2 ["Id"]
  DUPTABLE R19 K8 [{"Type", "Items"}]
  LOADK R20 K9 ["SingleSelectButton"]
  SETTABLEKS R20 R19 K6 ["Type"]
  GETUPVAL R20 2
  MOVE R21 R4
  LOADNIL R22
  GETUPVAL R24 3
  GETTABLEKS R23 R24 K34 ["PlaneLock"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K7 ["Items"]
  SETTABLEKS R19 R18 K3 ["Schema"]
  DUPTABLE R19 K29 [{"Hidden", "Id", "Schema"}]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K34 ["PlaneLock"]
  GETTABLE R21 R1 R22
  GETUPVAL R23 5
  GETTABLEKS R22 R23 K35 ["Manual"]
  JUMPIFNOTEQ R21 R22 [+2]
  LOADB R20 0 +1
  LOADB R20 1
  SETTABLEKS R20 R19 K28 ["Hidden"]
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K36 ["ManualPlaneLock"]
  SETTABLEKS R20 R19 K2 ["Id"]
  DUPTABLE R20 K40 [{"ApplyLabel", "EditLabel", "OnReset", "Type"}]
  GETUPVAL R24 6
  GETTABLEKS R23 R24 K41 ["BrushSettings"]
  LOADK R24 K42 ["Apply"]
  NAMECALL R21 R4 K43 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K37 ["ApplyLabel"]
  GETUPVAL R24 6
  GETTABLEKS R23 R24 K41 ["BrushSettings"]
  LOADK R24 K44 ["Edit"]
  NAMECALL R21 R4 K43 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K38 ["EditLabel"]
  DUPCLOSURE R21 K45 [PROTO_0]
  SETTABLEKS R21 R20 K39 ["OnReset"]
  LOADK R21 K34 ["PlaneLock"]
  SETTABLEKS R21 R20 K6 ["Type"]
  SETTABLEKS R20 R19 K3 ["Schema"]
  DUPTABLE R20 K48 [{"DataId", "Id", "Hidden", "Schema", "Value"}]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K49 ["PlaneTransform"]
  SETTABLEKS R21 R20 K46 ["DataId"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K50 ["PlanePosition"]
  SETTABLEKS R21 R20 K2 ["Id"]
  LOADB R21 1
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K34 ["PlaneLock"]
  GETTABLE R22 R1 R23
  GETUPVAL R24 5
  GETTABLEKS R23 R24 K35 ["Manual"]
  JUMPIFNOTEQ R22 R23 [+6]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K36 ["ManualPlaneLock"]
  GETTABLE R22 R1 R23
  NOT R21 R22
  SETTABLEKS R21 R20 K28 ["Hidden"]
  DUPTABLE R21 K54 [{"Type", "Components", "GetValue", "GetComponents"}]
  LOADK R22 K55 ["Vector"]
  SETTABLEKS R22 R21 K6 ["Type"]
  NEWTABLE R22 0 3
  LOADK R23 K56 ["X"]
  LOADK R24 K57 ["Y"]
  LOADK R25 K58 ["Z"]
  SETLIST R22 R23 3 [1]
  SETTABLEKS R22 R21 K51 ["Components"]
  NEWCLOSURE R22 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  SETTABLEKS R22 R21 K52 ["GetValue"]
  DUPCLOSURE R22 K59 [PROTO_2]
  SETTABLEKS R22 R21 K53 ["GetComponents"]
  SETTABLEKS R21 R20 K3 ["Schema"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K49 ["PlaneTransform"]
  GETTABLE R21 R1 R22
  SETTABLEKS R21 R20 K47 ["Value"]
  DUPTABLE R21 K48 [{"DataId", "Id", "Hidden", "Schema", "Value"}]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K49 ["PlaneTransform"]
  SETTABLEKS R22 R21 K46 ["DataId"]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K60 ["PlaneRotation"]
  SETTABLEKS R22 R21 K2 ["Id"]
  LOADB R22 1
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K34 ["PlaneLock"]
  GETTABLE R23 R1 R24
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K35 ["Manual"]
  JUMPIFNOTEQ R23 R24 [+6]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K36 ["ManualPlaneLock"]
  GETTABLE R23 R1 R24
  NOT R22 R23
  SETTABLEKS R22 R21 K28 ["Hidden"]
  DUPTABLE R22 K54 [{"Type", "Components", "GetValue", "GetComponents"}]
  LOADK R23 K55 ["Vector"]
  SETTABLEKS R23 R22 K6 ["Type"]
  NEWTABLE R23 0 3
  LOADK R24 K56 ["X"]
  LOADK R25 K57 ["Y"]
  LOADK R26 K58 ["Z"]
  SETLIST R23 R24 3 [1]
  SETTABLEKS R23 R22 K51 ["Components"]
  NEWCLOSURE R23 P3
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  SETTABLEKS R23 R22 K52 ["GetValue"]
  DUPCLOSURE R23 K61 [PROTO_4]
  SETTABLEKS R23 R22 K53 ["GetComponents"]
  SETTABLEKS R22 R21 K3 ["Schema"]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K49 ["PlaneTransform"]
  GETTABLE R22 R1 R23
  SETTABLEKS R22 R21 K47 ["Value"]
  DUPTABLE R22 K4 [{"Id", "Schema"}]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K62 ["IgnoreWater"]
  SETTABLEKS R23 R22 K2 ["Id"]
  DUPTABLE R23 K32 [{"Type"}]
  LOADK R24 K63 ["Checkbox"]
  SETTABLEKS R24 R23 K6 ["Type"]
  SETTABLEKS R23 R22 K3 ["Schema"]
  DUPTABLE R23 K4 [{"Id", "Schema"}]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K64 ["IgnoreParts"]
  SETTABLEKS R24 R23 K2 ["Id"]
  DUPTABLE R24 K32 [{"Type"}]
  LOADK R25 K63 ["Checkbox"]
  SETTABLEKS R25 R24 K6 ["Type"]
  SETTABLEKS R24 R23 K3 ["Schema"]
  DUPTABLE R24 K29 [{"Hidden", "Id", "Schema"}]
  GETUPVAL R26 7
  CALL R26 0 1
  NOT R25 R26
  JUMPIF R25 [+11]
  GETUPVAL R28 1
  GETTABLEKS R27 R28 K5 ["BrushMode"]
  GETTABLE R26 R1 R27
  GETUPVAL R28 8
  GETTABLEKS R27 R28 K65 ["Add"]
  JUMPIFEQ R26 R27 [+2]
  LOADB R25 0 +1
  LOADB R25 1
  SETTABLEKS R25 R24 K28 ["Hidden"]
  GETUPVAL R26 1
  GETTABLEKS R25 R26 K66 ["WaterAutofill"]
  SETTABLEKS R25 R24 K2 ["Id"]
  DUPTABLE R25 K32 [{"Type"}]
  LOADK R26 K63 ["Checkbox"]
  SETTABLEKS R26 R25 K6 ["Type"]
  SETTABLEKS R25 R24 K3 ["Schema"]
  SETLIST R8 R9 16 [1]
  DUPTABLE R9 K70 [{"Category", "Data", "Overrides"}]
  GETUPVAL R10 9
  SETTABLEKS R10 R9 K67 ["Category"]
  SETTABLEKS R1 R9 K68 ["Data"]
  SETTABLEKS R3 R9 K69 ["Overrides"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["TerrainEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["getItems"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K8 ["Util"]
  GETTABLEKS R4 R5 K10 ["ApplyById"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K11 ["BrushSettings"]
  GETTABLEKS R5 R1 K12 ["BrushMode"]
  GETTABLEKS R6 R1 K13 ["Category"]
  GETTABLEKS R7 R1 K14 ["EnumType"]
  GETTABLEKS R8 R1 K15 ["FlattenPlane"]
  GETTABLEKS R9 R1 K16 ["PlaneLock"]
  GETTABLEKS R10 R1 K17 ["Storage"]
  GETTABLEKS R11 R6 K11 ["BrushSettings"]
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K6 ["Src"]
  GETTABLEKS R14 R15 K18 ["Flags"]
  GETTABLEKS R13 R14 K19 ["getFFlagTerrainEditorWaterAutofill"]
  CALL R12 1 1
  NEWTABLE R13 2 0
  NEWTABLE R14 32 0
  GETTABLEKS R15 R4 K12 ["BrushMode"]
  GETTABLEKS R16 R10 K20 ["LocalPersistent"]
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R4 K21 ["BrushShape"]
  GETTABLEKS R16 R10 K20 ["LocalPersistent"]
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R4 K22 ["BrushSize"]
  GETTABLEKS R16 R10 K20 ["LocalPersistent"]
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R4 K23 ["Strength"]
  GETTABLEKS R16 R10 K20 ["LocalPersistent"]
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R4 K24 ["FixedYPlane"]
  GETTABLEKS R16 R10 K20 ["LocalPersistent"]
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R4 K15 ["FlattenPlane"]
  GETTABLEKS R16 R10 K20 ["LocalPersistent"]
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R4 K25 ["FlattenMode"]
  GETTABLEKS R16 R10 K20 ["LocalPersistent"]
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R4 K26 ["PivotPosition"]
  GETTABLEKS R16 R10 K20 ["LocalPersistent"]
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R4 K16 ["PlaneLock"]
  GETTABLEKS R16 R10 K27 ["Global"]
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R4 K28 ["ManualPlaneLock"]
  GETTABLEKS R16 R10 K27 ["Global"]
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R4 K29 ["PlaneTransform"]
  GETTABLEKS R16 R10 K27 ["Global"]
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R4 K30 ["Snapping"]
  GETTABLEKS R16 R10 K20 ["LocalPersistent"]
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R4 K31 ["State"]
  GETTABLEKS R16 R10 K32 ["LocalSession"]
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R4 K33 ["IgnoreWater"]
  GETTABLEKS R16 R10 K20 ["LocalPersistent"]
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R4 K34 ["IgnoreParts"]
  GETTABLEKS R16 R10 K20 ["LocalPersistent"]
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R4 K35 ["PullTerrain"]
  GETTABLEKS R16 R10 K20 ["LocalPersistent"]
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R4 K36 ["TemporarySmooth"]
  GETTABLEKS R16 R10 K32 ["LocalSession"]
  SETTABLE R16 R14 R15
  GETTABLEKS R15 R4 K37 ["WaterAutofill"]
  GETTABLEKS R16 R10 K20 ["LocalPersistent"]
  SETTABLE R16 R14 R15
  SETTABLEKS R14 R13 K17 ["Storage"]
  DUPCLOSURE R14 K38 [PROTO_5]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R11
  SETTABLEKS R14 R13 K39 ["Generator"]
  RETURN R13 1
