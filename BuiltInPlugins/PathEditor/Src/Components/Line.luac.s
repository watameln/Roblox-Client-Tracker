PROTO_0:
  LOADN R2 1
  LOADN R0 5
  LOADN R1 1
  FORNPREP R0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["pathRefs"]
  GETTABLE R3 R4 R2
  NAMECALL R3 R3 K1 ["getValue"]
  CALL R3 1 1
  JUMPIFNOT R3 [+8]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["props"]
  GETTABLEKS R6 R7 K3 ["ControlPoints"]
  NAMECALL R4 R3 K4 ["SetControlPoints"]
  CALL R4 2 0
  FORNLOOP R0
  RETURN R0 0

PROTO_1:
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K0 ["pathRefs"]
  LOADN R3 1
  LOADN R1 5
  LOADN R2 1
  FORNPREP R1
  GETTABLEKS R4 R0 K0 ["pathRefs"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["createRef"]
  CALL R5 0 1
  SETTABLE R5 R4 R3
  FORNLOOP R1
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["setControlPoints"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Stylizer"]
  GETTABLEKS R4 R1 K2 ["ZIndex"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R3 R1 K2 ["ZIndex"]
  JUMP [+1]
  LOADN R3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  LOADK R5 K4 ["Frame"]
  DUPTABLE R6 K7 [{"BackgroundTransparency", "ZIndex", "Position"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K5 ["BackgroundTransparency"]
  GETTABLEKS R7 R1 K2 ["ZIndex"]
  SETTABLEKS R7 R6 K2 ["ZIndex"]
  GETTABLEKS R7 R1 K6 ["Position"]
  SETTABLEKS R7 R6 K6 ["Position"]
  DUPTABLE R7 K10 [{"Foreground", "Background"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  LOADK R9 K4 ["Frame"]
  DUPTABLE R10 K12 [{"BackgroundTransparency", "Size", "ZIndex"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K5 ["BackgroundTransparency"]
  GETIMPORT R11 K15 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K11 ["Size"]
  SETTABLEKS R3 R10 K2 ["ZIndex"]
  DUPTABLE R11 K17 [{"ForegroundLine"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  LOADK R13 K18 ["Path2D"]
  DUPTABLE R14 K23 [{"Color", "Thickness", "ref", "Transparency"}]
  GETTABLEKS R15 R1 K19 ["Color"]
  JUMPIF R15 [+2]
  GETTABLEKS R15 R2 K19 ["Color"]
  SETTABLEKS R15 R14 K19 ["Color"]
  GETTABLEKS R15 R1 K20 ["Thickness"]
  JUMPIF R15 [+2]
  GETTABLEKS R15 R2 K20 ["Thickness"]
  SETTABLEKS R15 R14 K20 ["Thickness"]
  GETTABLEKS R16 R0 K24 ["pathRefs"]
  GETTABLEN R15 R16 1
  SETTABLEKS R15 R14 K21 ["ref"]
  GETTABLEKS R15 R2 K22 ["Transparency"]
  JUMPIF R15 [+2]
  GETTABLEKS R15 R1 K22 ["Transparency"]
  SETTABLEKS R15 R14 K22 ["Transparency"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K16 ["ForegroundLine"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K8 ["Foreground"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  LOADK R9 K4 ["Frame"]
  DUPTABLE R10 K12 [{"BackgroundTransparency", "Size", "ZIndex"}]
  LOADN R11 1
  SETTABLEKS R11 R10 K5 ["BackgroundTransparency"]
  GETIMPORT R11 K15 [UDim2.fromScale]
  LOADN R12 1
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K11 ["Size"]
  SUBK R11 R3 K25 [1]
  SETTABLEKS R11 R10 K2 ["ZIndex"]
  DUPTABLE R11 K27 [{"ContrastPath"}]
  GETTABLEKS R12 R2 K28 ["ContrastColor"]
  JUMPIFNOT R12 [+30]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  LOADK R13 K18 ["Path2D"]
  DUPTABLE R14 K23 [{"Color", "Thickness", "ref", "Transparency"}]
  GETTABLEKS R15 R2 K28 ["ContrastColor"]
  SETTABLEKS R15 R14 K19 ["Color"]
  GETTABLEKS R16 R1 K20 ["Thickness"]
  JUMPIF R16 [+2]
  GETTABLEKS R16 R2 K20 ["Thickness"]
  ADDK R15 R16 K25 [1]
  SETTABLEKS R15 R14 K20 ["Thickness"]
  GETTABLEKS R16 R0 K24 ["pathRefs"]
  GETTABLEN R15 R16 2
  SETTABLEKS R15 R14 K21 ["ref"]
  GETTABLEKS R15 R2 K22 ["Transparency"]
  JUMPIF R15 [+2]
  GETTABLEKS R15 R1 K22 ["Transparency"]
  SETTABLEKS R15 R14 K22 ["Transparency"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K26 ["ContrastPath"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K9 ["Background"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["setControlPoints"]
  CALL R1 0 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["setControlPoints"]
  CALL R1 0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Src"]
  GETTABLEKS R2 R3 K6 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["withContext"]
  GETTABLEKS R7 R3 K12 ["Style"]
  GETTABLEKS R6 R7 K13 ["Stylizer"]
  GETTABLEKS R7 R2 K14 ["Component"]
  LOADK R9 K15 ["Line"]
  NAMECALL R7 R7 K16 ["extend"]
  CALL R7 2 1
  DUPTABLE R8 K19 [{"Position", "Transparency"}]
  GETIMPORT R9 K22 [UDim2.new]
  CALL R9 0 1
  SETTABLEKS R9 R8 K17 ["Position"]
  LOADN R9 0
  SETTABLEKS R9 R8 K18 ["Transparency"]
  SETTABLEKS R8 R7 K23 ["defaultProps"]
  DUPCLOSURE R8 K24 [PROTO_1]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K25 ["init"]
  DUPCLOSURE R8 K26 [PROTO_2]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K27 ["render"]
  DUPCLOSURE R8 K28 [PROTO_3]
  SETTABLEKS R8 R7 K29 ["didMount"]
  DUPCLOSURE R8 K30 [PROTO_4]
  SETTABLEKS R8 R7 K31 ["didUpdate"]
  MOVE R8 R5
  DUPTABLE R9 K32 [{"Stylizer"}]
  SETTABLEKS R6 R9 K13 ["Stylizer"]
  CALL R8 1 1
  MOVE R9 R7
  CALL R8 1 1
  MOVE R7 R8
  RETURN R7 1
