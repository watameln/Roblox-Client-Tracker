PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createRef"]
  CALL R1 0 1
  SETTABLEKS R1 R0 K1 ["imageRef"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K0 ["Texture"]
  GETUPVAL R0 2
  NEWTABLE R2 0 1
  GETUPVAL R3 0
  SETLIST R2 R3 1 [1]
  NAMECALL R0 R0 K1 ["PreloadAsync"]
  CALL R0 2 0
  GETUPVAL R0 3
  GETUPVAL R1 1
  LOADB R2 1
  SETTABLE R2 R0 R1
  GETUPVAL R1 4
  GETTABLEKS R0 R1 K2 ["imageRef"]
  JUMPIFNOT R0 [+22]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K2 ["imageRef"]
  GETTABLEKS R0 R1 K3 ["current"]
  JUMPIFNOT R0 [+16]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K4 ["props"]
  GETTABLEKS R0 R1 K5 ["Image"]
  GETUPVAL R1 1
  JUMPIFNOTEQ R0 R1 [+9]
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K2 ["imageRef"]
  GETTABLEKS R0 R1 K3 ["current"]
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K5 ["Image"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Image"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["defaultImage"]
  JUMPIFNOT R1 [+18]
  JUMPIFEQKS R1 K3 [""] [+17]
  GETTABLEKS R3 R0 K4 ["imageRef"]
  JUMPIFNOT R3 [+13]
  GETTABLEKS R4 R0 K4 ["imageRef"]
  GETTABLEKS R3 R4 K5 ["current"]
  JUMPIFNOT R3 [+8]
  GETTABLEKS R5 R0 K4 ["imageRef"]
  GETTABLEKS R4 R5 K5 ["current"]
  GETTABLEKS R3 R4 K1 ["Image"]
  JUMPIFNOTEQ R3 R1 [+2]
  RETURN R0 0
  GETUPVAL R4 0
  GETTABLE R3 R4 R1
  JUMPIFNOT R3 [+7]
  GETTABLEKS R4 R0 K4 ["imageRef"]
  GETTABLEKS R3 R4 K5 ["current"]
  SETTABLEKS R1 R3 K1 ["Image"]
  RETURN R0 0
  GETTABLEKS R4 R0 K4 ["imageRef"]
  GETTABLEKS R3 R4 K5 ["current"]
  SETTABLEKS R2 R3 K1 ["Image"]
  GETIMPORT R3 K7 [spawn]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CALL R3 1 0
  RETURN R0 0

PROTO_3:
  NAMECALL R1 R0 K0 ["_loadAndSetImage"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Image"]
  GETTABLEKS R3 R1 K1 ["Image"]
  JUMPIFNOTEQ R2 R3 [+9]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K2 ["defaultImage"]
  GETTABLEKS R3 R1 K2 ["defaultImage"]
  JUMPIFEQ R2 R3 [+4]
  NAMECALL R2 R0 K3 ["_loadAndSetImage"]
  CALL R2 1 0
  RETURN R0 0

PROTO_5:
  LOADNIL R1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  GETTABLEKS R3 R0 K2 ["props"]
  NEWTABLE R4 4 0
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["Ref"]
  GETTABLEKS R6 R0 K4 ["imageRef"]
  SETTABLE R6 R4 R5
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["None"]
  SETTABLEKS R5 R4 K6 ["Image"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K5 ["None"]
  SETTABLEKS R5 R4 K7 ["defaultImage"]
  CALL R2 2 1
  MOVE R1 R2
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K8 ["createElement"]
  LOADK R3 K9 ["ImageLabel"]
  MOVE R4 R1
  CALL R2 2 -1
  RETURN R2 -1

PROTO_6:
  GETUPVAL R1 0
  LOADB R2 1
  SETTABLE R2 R1 R0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R1 K7 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K9 [game]
  LOADK R6 K10 ["ContentProvider"]
  NAMECALL R4 R4 K11 ["GetService"]
  CALL R4 2 1
  NEWTABLE R5 0 0
  GETIMPORT R6 K14 [Instance.new]
  LOADK R7 K15 ["Decal"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K16 ["PureComponent"]
  LOADK R9 K17 ["ImageWithDefault"]
  NAMECALL R7 R7 K18 ["extend"]
  CALL R7 2 1
  DUPCLOSURE R8 K19 [PROTO_0]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K20 ["init"]
  DUPCLOSURE R8 K21 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K22 ["_loadAndSetImage"]
  DUPCLOSURE R8 K23 [PROTO_3]
  SETTABLEKS R8 R7 K24 ["didMount"]
  DUPCLOSURE R8 K25 [PROTO_4]
  SETTABLEKS R8 R7 K26 ["didUpdate"]
  DUPCLOSURE R8 K27 [PROTO_5]
  CAPTURE VAL R3
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K28 ["render"]
  DUPCLOSURE R8 K29 [PROTO_6]
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K30 ["mockImage"]
  RETURN R7 1
