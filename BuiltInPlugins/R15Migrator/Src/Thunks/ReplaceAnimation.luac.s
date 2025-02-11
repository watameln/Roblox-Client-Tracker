PROTO_0:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K1 ["AnimationConversion"]
  GETTABLEKS R2 R3 K2 ["animations"]
  GETUPVAL R3 0
  MOVE R4 R2
  CALL R3 1 1
  GETUPVAL R4 1
  LOADK R6 K3 ["preReplace"]
  NAMECALL R4 R4 K4 ["SetWaypoint"]
  CALL R4 2 0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["getConvertedAnimationAssetInfo"]
  GETUPVAL R5 3
  CALL R4 1 1
  GETTABLEKS R5 R4 K6 ["id"]
  JUMPIF R5 [+1]
  RETURN R0 0
  GETUPVAL R5 3
  GETTABLEKS R7 R4 K7 ["_type"]
  NAMECALL R5 R5 K8 ["IsA"]
  CALL R5 2 1
  JUMPIF R5 [+1]
  RETURN R0 0
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K6 ["id"]
  GETTABLE R5 R3 R6
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K9 ["getConvertedKeyframeSequence"]
  GETUPVAL R7 3
  CALL R6 1 1
  NEWTABLE R7 0 0
  LOADN R8 0
  GETTABLEKS R9 R5 K10 ["refs"]
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K11 ["LocalAsset"]
  NAMECALL R14 R13 K8 ["IsA"]
  CALL R14 2 1
  JUMPIFNOT R14 [+27]
  NAMECALL R14 R12 K12 ["ClearAllChildren"]
  CALL R14 1 0
  NAMECALL R14 R6 K13 ["GetChildren"]
  CALL R14 1 3
  FORGPREP R14
  NAMECALL R19 R18 K14 ["Clone"]
  CALL R19 1 1
  SETTABLEKS R12 R19 K15 ["Parent"]
  FORGLOOP R14 2 [-6]
  FASTCALL2 TABLE_INSERT R7 R12 [+5]
  MOVE R15 R7
  MOVE R16 R12
  GETIMPORT R14 K18 [table.insert]
  CALL R14 2 0
  GETUPVAL R14 5
  MOVE R16 R12
  NAMECALL R14 R14 K19 ["removeTag"]
  CALL R14 2 0
  JUMP [+59]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K20 ["AnimationInstance"]
  NAMECALL R14 R13 K8 ["IsA"]
  CALL R14 2 1
  JUMPIFNOT R14 [+17]
  GETTABLEKS R14 R4 K21 ["url"]
  SETTABLEKS R14 R12 K22 ["AnimationId"]
  FASTCALL2 TABLE_INSERT R7 R12 [+5]
  MOVE R15 R7
  MOVE R16 R12
  GETIMPORT R14 K18 [table.insert]
  CALL R14 2 0
  GETUPVAL R14 5
  MOVE R16 R12
  NAMECALL R14 R14 K19 ["removeTag"]
  CALL R14 2 0
  JUMP [+35]
  GETUPVAL R17 4
  GETTABLEKS R16 R17 K23 ["AssetIdString"]
  NAMECALL R14 R13 K8 ["IsA"]
  CALL R14 2 1
  JUMPIFNOT R14 [+28]
  GETTABLEKS R15 R1 K24 ["ScriptConversion"]
  GETTABLEKS R14 R15 K25 ["diagnostics"]
  GETUPVAL R15 6
  GETTABLEKS R17 R12 K26 ["scriptInstance"]
  NAMECALL R15 R15 K27 ["findScriptGUID"]
  CALL R15 2 1
  GETTABLE R16 R14 R15
  GETUPVAL R18 7
  GETTABLEKS R17 R18 K28 ["replaceWithSuggestion"]
  GETUPVAL R18 6
  GETTABLEKS R20 R12 K26 ["scriptInstance"]
  NAMECALL R18 R18 K27 ["findScriptGUID"]
  CALL R18 2 1
  GETTABLEKS R19 R12 K29 ["range"]
  GETUPVAL R20 6
  GETTABLEKS R21 R4 K21 ["url"]
  MOVE R22 R16
  GETUPVAL R23 8
  CALL R17 6 0
  ADDK R8 R8 K30 [1]
  FORGLOOP R9 2 [-95]
  LENGTH R9 R7
  JUMPIFNOTEQ R8 R9 [+5]
  NAMECALL R9 R5 K31 ["complete"]
  CALL R9 1 0
  JUMP [+4]
  MOVE R11 R7
  NAMECALL R9 R5 K32 ["removeRefs"]
  CALL R9 2 0
  GETUPVAL R9 1
  LOADK R11 K33 ["postReplace"]
  NAMECALL R9 R9 K4 ["SetWaypoint"]
  CALL R9 2 0
  GETUPVAL R11 9
  MOVE R12 R3
  CALL R11 1 -1
  NAMECALL R9 R0 K34 ["dispatch"]
  CALL R9 -1 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE VAL R2
  CAPTURE UPVAL U6
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["ChangeHistoryService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K12 ["Util"]
  GETTABLEKS R3 R4 K13 ["deepCopy"]
  GETTABLEKS R5 R0 K14 ["Src"]
  GETTABLEKS R4 R5 K12 ["Util"]
  GETIMPORT R6 K9 [require]
  GETTABLEKS R7 R4 K15 ["PublishTagging"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K16 ["AnimationTagging"]
  GETTABLEKS R6 R4 K17 ["AnimationConversion"]
  GETIMPORT R7 K9 [require]
  GETTABLEKS R8 R6 K18 ["AnimationConversionManager"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R9 R6 K19 ["constants"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K20 ["AssetType"]
  GETIMPORT R10 K9 [require]
  GETTABLEKS R11 R4 K21 ["ScriptReplacement"]
  CALL R10 1 1
  GETTABLEKS R12 R0 K14 ["Src"]
  GETTABLEKS R11 R12 K22 ["Actions"]
  GETIMPORT R12 K9 [require]
  GETTABLEKS R13 R11 K23 ["SetAnimations"]
  CALL R12 1 1
  DUPCLOSURE R13 K24 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R12
  RETURN R13 1
