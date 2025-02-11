PROTO_0:
  JUMPIFNOTEQKNIL R0 [+6]
  DUPTABLE R1 K1 [{"type"}]
  LOADK R2 K2 ["none"]
  SETTABLEKS R2 R1 K0 ["type"]
  RETURN R1 1
  DUPTABLE R1 K4 [{"type", "target"}]
  LOADK R2 K5 ["hasSelection"]
  SETTABLEKS R2 R1 K0 ["type"]
  SETTABLEKS R0 R1 K3 ["target"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R3 0
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Inserting body with no target"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R1 1
  LOADK R3 K3 ["Avatar Auto Setup"]
  NAMECALL R1 R1 K4 ["SetWaypoint"]
  CALL R1 2 0
  GETUPVAL R1 2
  CALL R1 0 1
  JUMPIFNOT R1 [+40]
  GETTABLEKS R3 R0 K5 ["PrimaryPart"]
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K6 [+4]
  LOADK R3 K6 ["Auto setup returned model with no primary part"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETUPVAL R1 3
  SETTABLEKS R1 R0 K7 ["Parent"]
  GETTABLEKS R1 R0 K5 ["PrimaryPart"]
  NAMECALL R3 R0 K8 ["GetBoundingBox"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K5 ["PrimaryPart"]
  GETTABLEKS R4 R5 K9 ["CFrame"]
  NAMECALL R4 R4 K10 ["Inverse"]
  CALL R4 1 1
  MUL R2 R3 R4
  SETTABLEKS R2 R1 K11 ["PivotOffset"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K12 ["bodies"]
  GETTABLEN R4 R5 1
  GETTABLEKS R3 R4 K13 ["ExtentsCFrame"]
  NAMECALL R1 R0 K14 ["PivotTo"]
  CALL R1 2 0
  JUMP [+10]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K12 ["bodies"]
  GETTABLEN R3 R4 1
  NAMECALL R3 R3 K15 ["GetPivot"]
  CALL R3 1 -1
  NAMECALL R1 R0 K14 ["PivotTo"]
  CALL R1 -1 0
  GETUPVAL R4 0
  GETTABLEKS R1 R4 K16 ["otherChildren"]
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  NAMECALL R6 R5 K17 ["Clone"]
  CALL R6 1 1
  SETTABLEKS R0 R6 K7 ["Parent"]
  FORGLOOP R1 2 [-6]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K18 ["CurrentCamera"]
  FASTCALL2K ASSERT R3 K19 [+4]
  LOADK R4 K19 ["No Workspace Camera"]
  GETIMPORT R2 K2 [assert]
  CALL R2 2 1
  GETTABLEKS R1 R2 K9 ["CFrame"]
  GETTABLEKS R4 R1 K20 ["Position"]
  GETTABLEKS R6 R1 K22 ["LookVector"]
  MULK R5 R6 K21 [10]
  ADD R3 R4 R5
  LOADN R5 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K12 ["bodies"]
  GETTABLEN R9 R10 1
  GETTABLEKS R8 R9 K24 ["Size"]
  GETTABLEKS R7 R8 K25 ["Y"]
  MULK R6 R7 K23 [0.5]
  LOADN R7 0
  FASTCALL VECTOR [+2]
  GETIMPORT R4 K28 [Vector3.new]
  CALL R4 3 1
  ADD R2 R3 R4
  GETUPVAL R8 4
  GETTABLEKS R6 R8 K29 ["ATTRIBUTE_PREFIX"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K30 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
  CONCAT R5 R6 R7
  LOADB R6 1
  NAMECALL R3 R0 K31 ["SetAttribute"]
  CALL R3 3 0
  GETIMPORT R5 K33 [CFrame.lookAt]
  MOVE R6 R2
  GETTABLEKS R9 R1 K20 ["Position"]
  GETTABLEKS R8 R9 K34 ["X"]
  GETTABLEKS R9 R2 K25 ["Y"]
  GETTABLEKS R11 R1 K20 ["Position"]
  GETTABLEKS R10 R11 K35 ["Z"]
  FASTCALL VECTOR [+2]
  GETIMPORT R7 K28 [Vector3.new]
  CALL R7 3 1
  CALL R5 2 -1
  NAMECALL R3 R0 K14 ["PivotTo"]
  CALL R3 -1 0
  GETUPVAL R3 2
  CALL R3 0 1
  JUMPIF R3 [+3]
  GETUPVAL R3 3
  SETTABLEKS R3 R0 K7 ["Parent"]
  GETUPVAL R3 5
  NEWTABLE R5 0 1
  MOVE R6 R0
  SETLIST R5 R6 1 [1]
  NAMECALL R3 R3 K36 ["Set"]
  CALL R3 2 0
  GETUPVAL R3 6
  DUPTABLE R4 K38 [{"type"}]
  LOADK R5 K39 ["none"]
  SETTABLEKS R5 R4 K37 ["type"]
  CALL R3 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOTEQKNIL R0 [+2]
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R1 R2 [+3]
  GETIMPORT R0 K3 [assert]
  CALL R0 2 0
  GETIMPORT R0 K6 [task.cancel]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["type"]
  JUMPIFEQKS R1 K1 ["inAutoSetup"] [+2]
  RETURN R0 1
  GETTABLEKS R3 R0 K0 ["type"]
  JUMPIFEQKS R3 K1 ["inAutoSetup"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K4 [assert]
  CALL R1 2 0
  GETIMPORT R1 K7 [table.clone]
  MOVE R2 R0
  CALL R1 1 1
  GETUPVAL R2 1
  SETTABLEKS R2 R1 K8 ["eta"]
  RETURN R1 1

PROTO_4:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETIMPORT R0 K2 [os.clock]
  CALL R0 0 1
  GETIMPORT R1 K4 [pcall]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["startAutoSetupAsync"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  CALL R1 3 2
  JUMPIFNOT R1 [+24]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K6 ["current"]
  GETUPVAL R4 4
  NAMECALL R5 R2 K7 ["Clone"]
  CALL R5 1 1
  SETTABLE R5 R3 R4
  GETUPVAL R3 5
  MOVE R4 R2
  CALL R3 1 0
  GETUPVAL R3 6
  LOADK R5 K8 ["autoSetupFinish"]
  GETIMPORT R7 K2 [os.clock]
  CALL R7 0 1
  SUB R6 R7 R0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["MeshId"]
  NAMECALL R3 R3 K10 ["report"]
  CALL R3 4 0
  RETURN R0 0
  GETIMPORT R3 K12 [warn]
  LOADK R5 K13 ["Something went wrong while performing auto setup.
"]
  MOVE R6 R2
  CONCAT R4 R5 R6
  CALL R3 1 0
  GETUPVAL R3 7
  DUPTABLE R4 K17 [{"type", "target", "error"}]
  LOADK R5 K16 ["error"]
  SETTABLEKS R5 R4 K14 ["type"]
  GETUPVAL R5 8
  SETTABLEKS R5 R4 K15 ["target"]
  LOADK R5 K18 ["ErrorSourceFail"]
  SETTABLEKS R5 R4 K16 ["error"]
  CALL R3 1 0
  GETUPVAL R3 6
  LOADK R5 K19 ["autoSetupFailure"]
  GETIMPORT R7 K2 [os.clock]
  CALL R7 0 1
  SUB R6 R7 R0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["MeshId"]
  NAMECALL R3 R3 K10 ["report"]
  CALL R3 4 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["type"]
  JUMPIFEQKS R0 K1 ["hasSelection"] [+7]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["type"]
  JUMPIFEQKS R0 K2 ["error"] [+2]
  RETURN R0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K3 ["current"]
  JUMPIFEQKNIL R0 [+11]
  GETIMPORT R0 K6 [task.cancel]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["current"]
  CALL R0 1 0
  GETUPVAL R0 1
  LOADNIL R1
  SETTABLEKS R1 R0 K3 ["current"]
  GETUPVAL R2 2
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  FASTCALL2K ASSERT R1 K7 [+4]
  LOADK R2 K7 ["performAutoSetup called with no target"]
  GETIMPORT R0 K9 [assert]
  CALL R0 2 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K10 ["bodies"]
  GETTABLEN R1 R2 1
  FASTCALL2K ASSERT R1 K11 [+4]
  LOADK R2 K11 ["Auto setup target has no bodies"]
  GETIMPORT R0 K9 [assert]
  CALL R0 2 1
  GETUPVAL R1 3
  GETTABLEKS R3 R0 K12 ["MeshId"]
  NAMECALL R1 R1 K13 ["HashMeshAsync"]
  CALL R1 2 1
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K3 ["current"]
  GETTABLE R2 R3 R1
  JUMPIFEQKNIL R2 [+19]
  GETUPVAL R3 5
  MOVE R4 R2
  CALL R3 1 0
  GETUPVAL R3 6
  CALL R3 0 1
  JUMPIFNOT R3 [+11]
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K14 ["autoSetupClickedSignal"]
  JUMPIFEQKNIL R3 [+7]
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K14 ["autoSetupClickedSignal"]
  NAMECALL R3 R3 K15 ["Fire"]
  CALL R3 1 0
  RETURN R0 0
  GETUPVAL R3 8
  DUPTABLE R4 K17 [{"type", "target"}]
  LOADK R5 K18 ["inAutoSetup"]
  SETTABLEKS R5 R4 K0 ["type"]
  GETUPVAL R5 2
  SETTABLEKS R5 R4 K16 ["target"]
  CALL R3 1 0
  GETUPVAL R3 1
  GETIMPORT R4 K20 [task.spawn]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U7
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U10
  CAPTURE UPVAL U8
  CAPTURE UPVAL U2
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["current"]
  GETUPVAL R3 6
  CALL R3 0 1
  JUMPIFNOT R3 [+11]
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K14 ["autoSetupClickedSignal"]
  JUMPIFEQKNIL R3 [+7]
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K14 ["autoSetupClickedSignal"]
  NAMECALL R3 R3 K15 ["Fire"]
  CALL R3 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["type"]
  JUMPIFNOTEQKS R1 K1 ["none"] [+2]
  RETURN R0 1
  DUPTABLE R1 K3 [{"type", "target"}]
  LOADK R2 K4 ["hasSelection"]
  SETTABLEKS R2 R1 K0 ["type"]
  GETTABLEKS R2 R0 K2 ["target"]
  SETTABLEKS R2 R1 K2 ["target"]
  RETURN R1 1

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFEQKNIL R0 [+7]
  GETIMPORT R0 K3 [task.cancel]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  CALL R0 1 0
  GETUPVAL R0 1
  DUPCLOSURE R1 K4 [PROTO_7]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  JUMPIFNOTEQKNIL R1 [+15]
  GETTABLEKS R1 R0 K0 ["type"]
  JUMPIFEQKS R1 K1 ["hasSelection"] [+5]
  GETTABLEKS R1 R0 K0 ["type"]
  JUMPIFNOTEQKS R1 K2 ["none"] [+22]
  DUPTABLE R1 K3 [{"type"}]
  LOADK R2 K2 ["none"]
  SETTABLEKS R2 R1 K0 ["type"]
  RETURN R1 1
  RETURN R0 1
  GETUPVAL R1 0
  JUMPIFEQKNIL R1 [+13]
  GETTABLEKS R1 R0 K0 ["type"]
  JUMPIFNOTEQKS R1 K2 ["none"] [+9]
  DUPTABLE R1 K5 [{"type", "target"}]
  LOADK R2 K1 ["hasSelection"]
  SETTABLEKS R2 R1 K0 ["type"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K4 ["target"]
  RETURN R1 1
  RETURN R0 1

PROTO_10:
  GETUPVAL R0 0
  JUMPIFNOTEQKNIL R0 [+17]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["type"]
  JUMPIFEQKS R0 K1 ["hasSelection"] [+6]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["type"]
  JUMPIFNOTEQKS R0 K2 ["none"] [+7]
  GETUPVAL R0 2
  DUPTABLE R1 K3 [{"type"}]
  LOADK R2 K2 ["none"]
  SETTABLEKS R2 R1 K0 ["type"]
  CALL R0 1 0
  GETUPVAL R0 2
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["useContext"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["Context"]
  CALL R2 1 1
  GETUPVAL R3 3
  NAMECALL R3 R3 K0 ["use"]
  CALL R3 1 1
  NAMECALL R3 R3 K3 ["get"]
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K4 ["useState"]
  JUMPIFNOTEQKNIL R0 [+6]
  DUPTABLE R5 K6 [{"type"}]
  LOADK R6 K7 ["none"]
  SETTABLEKS R6 R5 K5 ["type"]
  JUMP [+6]
  DUPTABLE R5 K9 [{"type", "target"}]
  LOADK R6 K10 ["hasSelection"]
  SETTABLEKS R6 R5 K5 ["type"]
  SETTABLEKS R0 R5 K8 ["target"]
  CALL R4 1 2
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K11 ["useRef"]
  NEWTABLE R7 0 0
  CALL R6 1 1
  GETTABLEKS R9 R6 K12 ["current"]
  JUMPIFNOTEQKNIL R9 [+2]
  LOADB R8 0 +1
  LOADB R8 1
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K13 ["LUAU_ANALYZE_ERROR"]
  FASTCALL2 ASSERT R8 R9 [+3]
  GETIMPORT R7 K15 [assert]
  CALL R7 2 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K16 ["useCallback"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U4
  CAPTURE VAL R3
  CAPTURE VAL R5
  NEWTABLE R9 0 1
  MOVE R10 R0
  SETLIST R9 R10 1 [1]
  CALL R7 2 1
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K11 ["useRef"]
  LOADNIL R9
  CALL R8 1 1
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K17 ["useEffect"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R8
  CAPTURE UPVAL U4
  NEWTABLE R11 0 0
  CALL R9 2 0
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K16 ["useCallback"]
  NEWCLOSURE R10 P2
  CAPTURE VAL R5
  CAPTURE UPVAL U4
  NEWTABLE R11 0 0
  CALL R9 2 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K16 ["useCallback"]
  NEWCLOSURE R11 P3
  CAPTURE REF R4
  CAPTURE VAL R8
  CAPTURE VAL R0
  CAPTURE UPVAL U8
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE UPVAL U9
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R1
  NEWTABLE R12 0 4
  MOVE R13 R4
  GETTABLEKS R14 R2 K18 ["startAutoSetupAsync"]
  MOVE R15 R0
  MOVE R16 R7
  SETLIST R12 R13 4 [1]
  CALL R10 2 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K16 ["useCallback"]
  NEWCLOSURE R12 P4
  CAPTURE VAL R8
  CAPTURE VAL R5
  NEWTABLE R13 0 0
  CALL R11 2 1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K17 ["useEffect"]
  NEWCLOSURE R13 P5
  CAPTURE VAL R0
  CAPTURE REF R4
  CAPTURE VAL R5
  NEWTABLE R14 0 1
  MOVE R15 R0
  SETLIST R14 R15 1 [1]
  CALL R12 2 0
  JUMPIFEQKNIL R0 [+17]
  GETTABLEKS R13 R0 K19 ["bodies"]
  LENGTH R12 R13
  LOADN R13 1
  JUMPIFNOTLT R13 R12 [+11]
  DUPTABLE R12 K21 [{"type", "target", "error"}]
  LOADK R13 K20 ["error"]
  SETTABLEKS R13 R12 K5 ["type"]
  SETTABLEKS R0 R12 K8 ["target"]
  LOADK R13 K22 ["ErrorMultipleBodies"]
  SETTABLEKS R13 R12 K20 ["error"]
  MOVE R4 R12
  DUPTABLE R12 K26 [{"state", "cancelAutoSetup", "startAutoSetup"}]
  SETTABLEKS R4 R12 K23 ["state"]
  SETTABLEKS R11 R12 K24 ["cancelAutoSetup"]
  SETTABLEKS R10 R12 K25 ["startAutoSetup"]
  CLOSEUPVALS R4
  RETURN R12 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ChangeHistoryService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["GeometryService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["Workspace"]
  NAMECALL R2 R2 K3 ["GetService"]
  CALL R2 2 1
  GETIMPORT R3 K7 [script]
  LOADK R5 K8 ["AvatarCompatibilityPreviewer"]
  NAMECALL R3 R3 K9 ["FindFirstAncestor"]
  CALL R3 2 1
  GETIMPORT R4 K11 [require]
  GETTABLEKS R6 R3 K12 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K11 [require]
  GETTABLEKS R7 R3 K12 ["Packages"]
  GETTABLEKS R6 R7 K14 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K11 [require]
  GETTABLEKS R9 R3 K15 ["Src"]
  GETTABLEKS R8 R9 K16 ["Components"]
  GETTABLEKS R7 R8 K17 ["AutoSetupContext"]
  CALL R6 1 1
  GETIMPORT R7 K11 [require]
  GETTABLEKS R10 R3 K15 ["Src"]
  GETTABLEKS R9 R10 K18 ["Util"]
  GETTABLEKS R8 R9 K19 ["Constants"]
  CALL R7 1 1
  GETIMPORT R8 K11 [require]
  GETTABLEKS R11 R3 K15 ["Src"]
  GETTABLEKS R10 R11 K18 ["Util"]
  GETTABLEKS R9 R10 K20 ["SelectionWrapper"]
  CALL R8 1 1
  GETIMPORT R9 K11 [require]
  GETTABLEKS R11 R3 K15 ["Src"]
  GETTABLEKS R10 R11 K21 ["Types"]
  CALL R9 1 1
  GETIMPORT R10 K11 [require]
  GETTABLEKS R13 R3 K15 ["Src"]
  GETTABLEKS R12 R13 K22 ["Flags"]
  GETTABLEKS R11 R12 K23 ["getFFlagAvatarPreviewerAutoSetupFixPositioning"]
  CALL R10 1 1
  GETIMPORT R11 K11 [require]
  GETTABLEKS R14 R3 K15 ["Src"]
  GETTABLEKS R13 R14 K22 ["Flags"]
  GETTABLEKS R12 R13 K24 ["getFFlagAvatarPreviewerFixBrokenTests"]
  CALL R11 1 1
  GETTABLEKS R13 R4 K25 ["ContextServices"]
  GETTABLEKS R12 R13 K26 ["Analytics"]
  DUPCLOSURE R13 K27 [PROTO_0]
  DUPCLOSURE R14 K28 [PROTO_11]
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R11
  RETURN R14 1
