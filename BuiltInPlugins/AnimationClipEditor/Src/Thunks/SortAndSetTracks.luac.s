PROTO_0:
  SETTABLEKS R1 R0 K0 ["Depth"]
  GETIMPORT R2 K2 [pairs]
  GETTABLEKS R3 R0 K3 ["Components"]
  JUMPIF R3 [+2]
  NEWTABLE R3 0 0
  CALL R2 1 3
  FORGPREP_NEXT R2
  GETUPVAL R7 0
  MOVE R8 R6
  ADDK R9 R1 K4 [1]
  CALL R7 2 0
  FORGLOOP R2 2 [-5]
  RETURN R0 0

PROTO_1:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Dictionary"]
  GETTABLEKS R3 R4 K1 ["keys"]
  MOVE R4 R0
  CALL R3 1 1
  GETIMPORT R4 K4 [table.sort]
  MOVE R5 R3
  CALL R4 1 0
  GETIMPORT R4 K6 [ipairs]
  MOVE R5 R3
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETTABLE R9 R0 R8
  MOVE R10 R1
  MOVE R11 R8
  MOVE R12 R2
  CALL R10 2 1
  JUMPIFNOT R10 [+6]
  GETUPVAL R11 1
  MOVE R12 R9
  MOVE R13 R1
  ADDK R14 R2 K7 [1]
  CALL R11 3 0
  JUMP [+5]
  GETUPVAL R11 1
  MOVE R12 R9
  MOVE R13 R1
  MOVE R14 R2
  CALL R11 3 0
  FORGLOOP R4 2 [inext] [-18]
  RETURN R0 0

PROTO_2:
  GETIMPORT R2 K1 [ipairs]
  GETUPVAL R3 0
  CALL R2 1 3
  FORGPREP_INEXT R2
  GETTABLEKS R7 R6 K2 ["Name"]
  JUMPIFNOTEQ R7 R0 [+14]
  GETUPVAL R7 1
  MOVE R8 R6
  MOVE R9 R1
  CALL R7 2 0
  GETUPVAL R8 2
  FASTCALL2 TABLE_INSERT R8 R6 [+4]
  MOVE R9 R6
  GETIMPORT R7 K5 [table.insert]
  CALL R7 2 0
  LOADB R7 1
  RETURN R7 1
  FORGLOOP R2 2 [inext] [-18]
  RETURN R0 0

PROTO_3:
  NEWTABLE R2 0 0
  GETUPVAL R3 0
  MOVE R4 R1
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  LOADN R6 0
  CALL R3 3 0
  RETURN R2 1

PROTO_4:
  GETTABLEKS R3 R0 K0 ["Name"]
  GETTABLEKS R4 R1 K0 ["Name"]
  JUMPIFLT R3 R4 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_5:
  GETIMPORT R1 K2 [table.sort]
  MOVE R2 R0
  DUPCLOSURE R3 K3 [PROTO_4]
  CALL R1 2 0
  GETIMPORT R1 K5 [ipairs]
  MOVE R2 R0
  CALL R1 1 3
  FORGPREP_INEXT R1
  GETUPVAL R6 0
  MOVE R7 R5
  LOADN R8 0
  CALL R6 2 0
  FORGLOOP R1 2 [inext] [-5]
  RETURN R0 1

PROTO_6:
  NAMECALL R2 R0 K0 ["getState"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K1 ["Status"]
  GETTABLEKS R2 R1 K2 ["RootInstance"]
  LOADNIL R3
  LOADNIL R4
  NEWTABLE R5 0 0
  JUMPIFNOT R2 [+82]
  FASTCALL1 TYPEOF R2 [+3]
  MOVE R7 R2
  GETIMPORT R6 K4 [typeof]
  CALL R6 1 1
  JUMPIFEQKS R6 K5 ["Instance"] [+8]
  FASTCALL1 TYPE R2 [+3]
  MOVE R7 R2
  GETIMPORT R6 K7 [type]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K8 ["table"] [+69]
  GETTABLEKS R6 R2 K9 ["ClassName"]
  JUMPIFEQKS R6 K10 ["Skeleton"] [+5]
  GETTABLEKS R6 R2 K9 ["ClassName"]
  JUMPIFNOTEQKS R6 K11 ["MockSkeleton"] [+34]
  LOADNIL R6
  LOADNIL R7
  GETTABLEKS R8 R2 K9 ["ClassName"]
  JUMPIFNOTEQKS R8 K10 ["Skeleton"] [+9]
  NAMECALL R8 R2 K12 ["GetBones"]
  CALL R8 1 1
  GETTABLEKS R6 R8 K13 ["Names"]
  GETTABLEKS R7 R8 K14 ["Parents"]
  JUMP [+4]
  GETTABLEKS R6 R2 K13 ["Names"]
  GETTABLEKS R7 R2 K14 ["Parents"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K15 ["buildSkeletonHierarchy"]
  MOVE R9 R6
  MOVE R10 R7
  CALL R8 2 1
  MOVE R4 R8
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K16 ["getUnusedSkeletonTracks"]
  MOVE R9 R6
  GETUPVAL R10 1
  CALL R8 2 1
  MOVE R5 R8
  JUMP [+27]
  GETTABLEKS R6 R2 K9 ["ClassName"]
  JUMPIFNOTEQKS R6 K17 ["Model"] [+6]
  LOADK R8 K18 ["Humanoid"]
  NAMECALL R6 R2 K19 ["FindFirstChildOfClass"]
  CALL R6 2 1
  JUMPIF R6 [+5]
  LOADK R8 K20 ["AnimationController"]
  NAMECALL R6 R2 K19 ["FindFirstChildOfClass"]
  CALL R6 2 1
  JUMPIFNOT R6 [+13]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K21 ["buildRigHierarchy"]
  MOVE R7 R2
  CALL R6 1 1
  MOVE R4 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K22 ["getUnusedRigTracks"]
  MOVE R7 R2
  GETUPVAL R8 1
  CALL R6 2 1
  MOVE R5 R6
  JUMPIFNOT R4 [+30]
  GETUPVAL R6 1
  MOVE R7 R4
  NEWTABLE R8 0 0
  GETUPVAL R9 3
  MOVE R10 R7
  NEWCLOSURE R11 P0
  CAPTURE VAL R6
  CAPTURE UPVAL U4
  CAPTURE VAL R8
  LOADN R12 0
  CALL R9 3 0
  MOVE R3 R8
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K23 ["filterFacsTracks"]
  GETUPVAL R7 1
  CALL R6 1 1
  GETUPVAL R9 6
  GETTABLEKS R8 R9 K24 ["List"]
  GETTABLEKS R7 R8 K25 ["join"]
  MOVE R8 R3
  GETUPVAL R9 7
  MOVE R10 R6
  CALL R9 1 1
  CALL R7 2 1
  MOVE R3 R7
  JUMP [+4]
  GETUPVAL R6 7
  GETUPVAL R7 1
  CALL R6 1 1
  MOVE R3 R6
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K26 ["getUnusedFacs"]
  GETUPVAL R7 1
  CALL R6 1 1
  GETUPVAL R9 8
  MOVE R10 R3
  MOVE R11 R5
  MOVE R12 R6
  CALL R9 3 -1
  NAMECALL R7 R0 K27 ["dispatch"]
  CALL R7 -1 0
  RETURN R0 0

PROTO_7:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  RETURN R1 1

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
  GETTABLEKS R3 R4 K10 ["SkeletonUtils"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K9 ["Util"]
  GETTABLEKS R4 R5 K11 ["RigUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K9 ["Util"]
  GETTABLEKS R5 R6 K12 ["RigInfo"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K8 ["Src"]
  GETTABLEKS R7 R8 K9 ["Util"]
  GETTABLEKS R6 R7 K13 ["FacsUtils"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K8 ["Src"]
  GETTABLEKS R8 R9 K14 ["Actions"]
  GETTABLEKS R7 R8 K15 ["SetTracks"]
  CALL R6 1 1
  DUPCLOSURE R7 K16 [PROTO_0]
  CAPTURE VAL R7
  DUPCLOSURE R8 K17 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R8
  DUPCLOSURE R9 K18 [PROTO_3]
  CAPTURE VAL R8
  CAPTURE VAL R7
  DUPCLOSURE R10 K19 [PROTO_5]
  CAPTURE VAL R7
  DUPCLOSURE R11 K20 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R10
  CAPTURE VAL R6
  RETURN R11 1
