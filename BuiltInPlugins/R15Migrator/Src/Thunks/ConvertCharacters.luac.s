PROTO_0:
  NAMECALL R1 R0 K0 ["getState"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K1 ["CharacterConversion"]
  GETTABLEKS R2 R3 K2 ["selection"]
  GETTABLEKS R4 R1 K1 ["CharacterConversion"]
  GETTABLEKS R3 R4 K3 ["characters"]
  MOVE R4 R2
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLE R9 R3 R8
  JUMPIFNOT R9 [+32]
  GETTABLEKS R10 R9 K4 ["model"]
  JUMPIFNOT R10 [+29]
  GETTABLEKS R10 R9 K4 ["model"]
  NAMECALL R10 R10 K5 ["Clone"]
  CALL R10 1 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K6 ["ReplaceModel"]
  MOVE R12 R8
  MOVE R13 R10
  LOADB R14 1
  CALL R11 3 0
  GETUPVAL R11 1
  MOVE R13 R10
  NAMECALL R11 R11 K7 ["addTag"]
  CALL R11 2 0
  GETUPVAL R11 2
  MOVE R13 R10
  NAMECALL R11 R11 K8 ["removeTag"]
  CALL R11 2 0
  GETUPVAL R13 3
  MOVE R14 R9
  LOADB R15 1
  CALL R13 2 -1
  NAMECALL R11 R0 K9 ["dispatch"]
  CALL R11 -1 0
  FORGLOOP R4 2 [-35]
  GETUPVAL R6 4
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K10 ["getAdapterData"]
  CALL R7 0 -1
  CALL R6 -1 -1
  NAMECALL R4 R0 K9 ["dispatch"]
  CALL R4 -1 0
  GETUPVAL R4 5
  LOADK R6 K11 ["onCharactersConverted"]
  NAMECALL R4 R4 K12 ["getHandler"]
  CALL R4 2 1
  MOVE R5 R3
  MOVE R6 R2
  CALL R4 2 0
  RETURN R0 0

PROTO_1:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R2 R0 K4 ["Src"]
  GETTABLEKS R1 R2 K5 ["Actions"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["SetAdapted"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R4 R1 K9 ["SetCharacterConverted"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K4 ["Src"]
  GETTABLEKS R4 R5 K10 ["Modules"]
  GETIMPORT R5 K7 [require]
  GETTABLEKS R6 R4 K11 ["NpcManager"]
  CALL R5 1 1
  GETTABLEKS R7 R0 K4 ["Src"]
  GETTABLEKS R6 R7 K12 ["Util"]
  GETIMPORT R8 K7 [require]
  GETTABLEKS R9 R6 K13 ["PublishTagging"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K14 ["AdapterTagging"]
  GETIMPORT R9 K7 [require]
  GETTABLEKS R10 R6 K13 ["PublishTagging"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K15 ["CharacterTagging"]
  DUPCLOSURE R9 K16 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R2
  RETURN R9 1
