PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["CFrame"]
  GETTABLEKS R1 R2 K1 ["LookVector"]
  JUMPIFNOTEQ R0 R1 [+2]
  RETURN R0 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["data"]
  GETTABLEKS R0 R1 K3 ["distance"]
  JUMPIFNOT R0 [+56]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K2 ["data"]
  GETTABLEKS R0 R1 K4 ["rotation"]
  GETIMPORT R1 K6 [CFrame.Angles]
  GETTABLEKS R3 R0 K7 ["X"]
  FASTCALL1 MATH_RAD R3 [+2]
  GETIMPORT R2 K10 [math.rad]
  CALL R2 1 1
  GETTABLEKS R4 R0 K11 ["Y"]
  FASTCALL1 MATH_RAD R4 [+2]
  GETIMPORT R3 K10 [math.rad]
  CALL R3 1 1
  GETTABLEKS R5 R0 K12 ["Z"]
  FASTCALL1 MATH_RAD R5 [+2]
  GETIMPORT R4 K10 [math.rad]
  CALL R4 1 1
  CALL R1 3 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K0 ["CFrame"]
  GETTABLEKS R4 R5 K1 ["LookVector"]
  GETTABLEKS R6 R1 K1 ["LookVector"]
  NAMECALL R4 R4 K13 ["Dot"]
  CALL R4 2 1
  FASTCALL1 MATH_ACOS R4 [+2]
  GETIMPORT R3 K15 [math.acos]
  CALL R3 1 1
  FASTCALL1 MATH_DEG R3 [+2]
  GETIMPORT R2 K17 [math.deg]
  CALL R2 1 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K2 ["data"]
  GETTABLEKS R3 R4 K3 ["distance"]
  JUMPIFNOTLT R2 R3 [+10]
  GETUPVAL R3 2
  NAMECALL R3 R3 K18 ["complete"]
  CALL R3 1 0
  RETURN R0 0
  GETUPVAL R0 2
  NAMECALL R0 R0 K18 ["complete"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETTABLEKS R3 R0 K0 ["tutorial"]
  GETTABLEKS R2 R3 K1 ["instances"]
  GETTABLEKS R4 R0 K2 ["data"]
  GETTABLEKS R3 R4 K3 ["instanceId"]
  GETTABLE R1 R2 R3
  JUMPIFNOT R1 [+17]
  GETTABLEKS R3 R1 K4 ["CFrame"]
  GETTABLEKS R2 R3 K5 ["LookVector"]
  LOADK R5 K4 ["CFrame"]
  NAMECALL R3 R1 K6 ["GetPropertyChangedSignal"]
  CALL R3 2 1
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R0
  NAMECALL R3 R3 K7 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K8 ["connection"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["connection"]
  JUMPIFNOT R1 [+5]
  GETTABLEKS R1 R0 K0 ["connection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["TutorialStep"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K6 ["extend"]
  LOADK R2 K7 ["Rotate"]
  CALL R1 1 1
  LOADB R2 1
  SETTABLEKS R2 R1 K8 ["showComplete"]
  DUPCLOSURE R2 K9 [PROTO_1]
  SETTABLEKS R2 R1 K10 ["bind"]
  DUPCLOSURE R2 K11 [PROTO_2]
  SETTABLEKS R2 R1 K12 ["unbind"]
  RETURN R1 1
