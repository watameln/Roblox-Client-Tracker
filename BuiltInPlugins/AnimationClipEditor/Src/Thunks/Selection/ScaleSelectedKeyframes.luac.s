PROTO_0:
  ADDK R2 R0 K0 [0.5]
  FASTCALL1 MATH_FLOOR R2 [+2]
  GETIMPORT R1 K3 [math.floor]
  CALL R1 1 1
  RETURN R1 1

PROTO_1:
  GETUPVAL R4 0
  GETUPVAL R7 0
  SUB R6 R0 R7
  GETUPVAL R7 1
  MUL R5 R6 R7
  ADD R3 R4 R5
  ADDK R5 R3 K0 [0.5]
  FASTCALL1 MATH_FLOOR R5 [+2]
  GETIMPORT R4 K3 [math.floor]
  CALL R4 1 1
  MOVE R2 R4
  GETUPVAL R3 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K4 ["SNAP_MODES"]
  GETTABLEKS R4 R5 K5 ["None"]
  JUMPIFEQ R3 R4 [+8]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K6 ["getNearestFrame"]
  MOVE R4 R2
  GETUPVAL R5 5
  CALL R3 2 1
  MOVE R2 R3
  MOVE R4 R2
  LOADN R5 0
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K7 ["MAX_ANIMATION_LENGTH"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R3 K9 [math.clamp]
  CALL R3 3 1
  MOVE R2 R3
  MUL R3 R2 R1
  GETUPVAL R5 0
  MUL R4 R5 R1
  JUMPIFNOTLE R4 R3 [+3]
  LOADB R3 1
  RETURN R3 1
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K10 ["Keyframes"]
  JUMPIFNOT R3 [+14]
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K11 ["moveKeyframe"]
  GETUPVAL R4 6
  MOVE R5 R0
  MOVE R6 R2
  CALL R3 3 0
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K12 ["moveNamedKeyframe"]
  GETUPVAL R4 8
  MOVE R5 R0
  MOVE R6 R2
  CALL R3 3 0
  GETUPVAL R4 9
  GETTABLEKS R3 R4 K13 ["Selection"]
  LOADNIL R4
  SETTABLE R4 R3 R0
  GETUPVAL R4 9
  GETTABLEKS R3 R4 K13 ["Selection"]
  LOADB R4 1
  SETTABLE R4 R3 R2
  LOADB R3 0
  RETURN R3 1

PROTO_2:
  GETUPVAL R3 0
  GETUPVAL R6 0
  SUB R5 R0 R6
  GETUPVAL R6 1
  MUL R4 R5 R6
  ADD R2 R3 R4
  ADDK R4 R2 K0 [0.5]
  FASTCALL1 MATH_FLOOR R4 [+2]
  GETIMPORT R3 K3 [math.floor]
  CALL R3 1 1
  MOVE R1 R3
  GETUPVAL R2 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["SNAP_MODES"]
  GETTABLEKS R3 R4 K5 ["None"]
  JUMPIFEQ R2 R3 [+8]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K6 ["getNearestFrame"]
  MOVE R3 R1
  GETUPVAL R4 5
  CALL R2 2 1
  MOVE R1 R2
  MOVE R3 R1
  LOADN R4 0
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K7 ["MAX_ANIMATION_LENGTH"]
  FASTCALL MATH_CLAMP [+2]
  GETIMPORT R2 K9 [math.clamp]
  CALL R2 3 1
  MOVE R1 R2
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K10 ["Keyframes"]
  JUMPIFNOT R2 [+14]
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K11 ["moveKeyframe"]
  GETUPVAL R3 6
  MOVE R4 R0
  MOVE R5 R1
  CALL R2 3 0
  GETUPVAL R3 7
  GETTABLEKS R2 R3 K12 ["moveNamedKeyframe"]
  GETUPVAL R3 8
  MOVE R4 R0
  MOVE R5 R1
  CALL R2 3 0
  GETUPVAL R3 9
  GETTABLEKS R2 R3 K13 ["Selection"]
  LOADNIL R3
  SETTABLE R3 R2 R0
  GETUPVAL R3 9
  GETTABLEKS R2 R3 K13 ["Selection"]
  LOADB R3 1
  SETTABLE R3 R2 R1
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R0 K0 ["Selection"]
  JUMPIFNOT R2 [+8]
  GETUPVAL R2 0
  JUMPIFNOT R2 [+7]
  GETIMPORT R2 K2 [next]
  GETTABLEKS R3 R0 K0 ["Selection"]
  CALL R2 1 1
  JUMPIF R2 [+1]
  RETURN R0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["Dictionary"]
  GETTABLEKS R2 R3 K4 ["keys"]
  GETTABLEKS R3 R0 K0 ["Selection"]
  CALL R2 1 1
  GETIMPORT R3 K7 [table.sort]
  MOVE R4 R2
  CALL R3 1 0
  GETUPVAL R3 2
  LOADN R4 1
  JUMPIFNOTLT R4 R3 [+33]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U2
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE VAL R1
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE VAL R0
  LOADN R6 1
  LENGTH R4 R2
  LOADN R5 1
  FORNPREP R4
  MOVE R7 R3
  GETTABLE R8 R2 R6
  LOADN R9 1
  CALL R7 2 1
  JUMPIF R7 [+1]
  FORNLOOP R4
  LENGTH R6 R2
  LOADN R4 1
  LOADN R5 255
  FORNPREP R4
  MOVE R7 R3
  GETTABLE R8 R2 R6
  LOADN R9 255
  CALL R7 2 1
  JUMPIF R7 [+38]
  FORNLOOP R4
  RETURN R0 0
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K8 ["findNearestKeyframes"]
  MOVE R4 R2
  GETUPVAL R5 3
  CALL R3 2 2
  JUMPIFNOTEQKNIL R4 [+2]
  ADDK R4 R3 K9 [1]
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U2
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE VAL R1
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE VAL R0
  MOVE R8 R3
  LOADN R6 1
  LOADN R7 255
  FORNPREP R6
  MOVE R9 R5
  GETTABLE R10 R2 R8
  CALL R9 1 0
  FORNLOOP R6
  MOVE R8 R4
  LENGTH R6 R2
  LOADN R7 1
  FORNPREP R6
  MOVE R9 R5
  GETTABLE R10 R2 R8
  CALL R9 1 0
  FORNLOOP R6
  RETURN R0 0

PROTO_4:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K1 ["Status"]
  GETTABLEKS R2 R3 K2 ["FrameRate"]
  GETTABLEKS R4 R1 K1 ["Status"]
  GETTABLEKS R3 R4 K3 ["SnapMode"]
  GETUPVAL R5 0
  JUMPIFNOT R5 [+4]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["selectedKeyframes"]
  JUMPIF R4 [+4]
  GETTABLEKS R5 R1 K1 ["Status"]
  GETTABLEKS R4 R5 K5 ["SelectedKeyframes"]
  GETUPVAL R6 0
  JUMPIFNOT R6 [+4]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K6 ["animationData"]
  JUMPIF R5 [+2]
  GETTABLEKS R5 R1 K7 ["AnimationData"]
  JUMPIFNOT R5 [+1]
  JUMPIF R4 [+1]
  RETURN R0 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K8 ["Dictionary"]
  GETTABLEKS R6 R7 K9 ["join"]
  NEWTABLE R7 0 0
  MOVE R8 R5
  CALL R6 2 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K8 ["Dictionary"]
  GETTABLEKS R7 R8 K9 ["join"]
  NEWTABLE R8 0 0
  GETTABLEKS R9 R6 K10 ["Instances"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K10 ["Instances"]
  GETUPVAL R7 2
  GETTABLEKS R8 R6 K11 ["Events"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K11 ["Events"]
  GETUPVAL R7 2
  MOVE R8 R4
  CALL R7 1 1
  GETIMPORT R8 K13 [pairs]
  MOVE R9 R7
  CALL R8 1 3
  FORGPREP_NEXT R8
  GETTABLEKS R13 R6 K10 ["Instances"]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K8 ["Dictionary"]
  GETTABLEKS R14 R15 K9 ["join"]
  NEWTABLE R15 0 0
  GETTABLEKS R17 R6 K10 ["Instances"]
  GETTABLE R16 R17 R11
  CALL R14 2 1
  SETTABLE R14 R13 R11
  GETTABLEKS R14 R6 K10 ["Instances"]
  GETTABLE R13 R14 R11
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K8 ["Dictionary"]
  GETTABLEKS R14 R15 K9 ["join"]
  NEWTABLE R15 0 0
  GETTABLEKS R18 R6 K10 ["Instances"]
  GETTABLE R17 R18 R11
  GETTABLEKS R16 R17 K14 ["Tracks"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K14 ["Tracks"]
  GETTABLEKS R14 R6 K10 ["Instances"]
  GETTABLE R13 R14 R11
  GETIMPORT R14 K13 [pairs]
  MOVE R15 R12
  CALL R14 1 3
  FORGPREP_NEXT R14
  GETTABLEKS R19 R13 K14 ["Tracks"]
  GETUPVAL R20 2
  GETTABLEKS R22 R13 K14 ["Tracks"]
  GETTABLE R21 R22 R17
  CALL R20 1 1
  SETTABLE R20 R19 R17
  GETTABLEKS R20 R13 K14 ["Tracks"]
  GETTABLE R19 R20 R17
  GETUPVAL R21 3
  GETTABLEKS R20 R21 K15 ["traverse"]
  MOVE R21 R18
  MOVE R22 R19
  NEWCLOSURE R23 P0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R3
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R2
  CAPTURE UPVAL U9
  CAPTURE VAL R6
  CALL R20 3 0
  FORGLOOP R14 2 [-29]
  FORGLOOP R8 2 [-71]
  GETUPVAL R10 10
  MOVE R11 R6
  CALL R10 1 -1
  NAMECALL R8 R0 K16 ["dispatch"]
  CALL R8 -1 0
  GETUPVAL R10 11
  MOVE R11 R7
  CALL R10 1 -1
  NAMECALL R8 R0 K16 ["dispatch"]
  CALL R8 -1 0
  RETURN R0 0

PROTO_5:
  NEWCLOSURE R3 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationClipEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["deepCopy"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K11 ["Constants"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K12 ["KeyframeUtils"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K9 ["Util"]
  GETTABLEKS R6 R7 K13 ["AnimationData"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K14 ["Actions"]
  GETTABLEKS R7 R8 K15 ["SetSelectedKeyframes"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K8 ["Src"]
  GETTABLEKS R9 R10 K16 ["Thunks"]
  GETTABLEKS R8 R9 K17 ["UpdateAnimationData"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K8 ["Src"]
  GETTABLEKS R10 R11 K9 ["Util"]
  GETTABLEKS R9 R10 K18 ["SelectionUtils"]
  CALL R8 1 1
  GETIMPORT R9 K20 [game]
  LOADK R11 K21 ["ACEFixEmptySelectionScale"]
  LOADB R12 0
  NAMECALL R9 R9 K22 ["DefineFastFlag"]
  CALL R9 3 1
  DUPCLOSURE R10 K23 [PROTO_0]
  DUPCLOSURE R11 K24 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R6
  RETURN R11 1
