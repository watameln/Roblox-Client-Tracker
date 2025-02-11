PROTO_0:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  GETTABLEKS R3 R1 K1 ["features"]
  LENGTH R2 R3
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+8]
  LOADB R2 1
  GETTABLEKS R5 R1 K1 ["features"]
  GETTABLEN R4 R5 1
  GETTABLEKS R3 R4 K2 ["access"]
  RETURN R2 2
  GETIMPORT R2 K4 [warn]
  LOADK R3 K5 ["Unable to retrieve id verification feature, defaulting to false"]
  CALL R2 1 0
  LOADB R2 1
  LOADK R3 K6 ["Denied"]
  RETURN R2 2

PROTO_1:
  LOADB R1 0
  LOADK R2 K0 ["Denied"]
  RETURN R1 2

PROTO_2:
  DUPCLOSURE R1 K0 [PROTO_0]
  DUPCLOSURE R2 K1 [PROTO_1]
  NAMECALL R3 R0 K2 ["getIdVerificationStatus"]
  CALL R3 1 1
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R3 K3 ["andThen"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Core"]
  GETTABLEKS R3 R4 K7 ["Actions"]
  GETTABLEKS R2 R3 K8 ["NetworkError"]
  CALL R1 1 1
  GETTABLEKS R3 R0 K6 ["Core"]
  GETTABLEKS R2 R3 K9 ["Util"]
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R2 K10 ["DebugFlags"]
  CALL R3 1 1
  GETTABLEKS R5 R0 K6 ["Core"]
  GETTABLEKS R4 R5 K7 ["Actions"]
  DUPCLOSURE R5 K11 [PROTO_2]
  RETURN R5 1
