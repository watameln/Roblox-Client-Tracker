MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K17 [{"UserId", "UserName", "GroupId", "GroupName", "RoleId", "RoleName", "RoleRank", "Action", "AllowedPermissions", "PlayAction", "EditAction", "AdminAction", "SubjectType", "SubjectId", "UserSubject", "GroupSubject", "RoleSubject"}]
  LOADK R1 K18 ["userId"]
  SETTABLEKS R1 R0 K0 ["UserId"]
  LOADK R1 K19 ["userName"]
  SETTABLEKS R1 R0 K1 ["UserName"]
  LOADK R1 K20 ["groupId"]
  SETTABLEKS R1 R0 K2 ["GroupId"]
  LOADK R1 K21 ["groupName"]
  SETTABLEKS R1 R0 K3 ["GroupName"]
  LOADK R1 K22 ["rolesetId"]
  SETTABLEKS R1 R0 K4 ["RoleId"]
  LOADK R1 K23 ["rolesetName"]
  SETTABLEKS R1 R0 K5 ["RoleName"]
  LOADK R1 K24 ["rank"]
  SETTABLEKS R1 R0 K6 ["RoleRank"]
  LOADK R1 K25 ["action"]
  SETTABLEKS R1 R0 K7 ["Action"]
  LOADK R1 K26 ["allowedPermissions"]
  SETTABLEKS R1 R0 K8 ["AllowedPermissions"]
  LOADK R1 K27 ["Play"]
  SETTABLEKS R1 R0 K9 ["PlayAction"]
  LOADK R1 K28 ["Edit"]
  SETTABLEKS R1 R0 K10 ["EditAction"]
  LOADK R1 K29 ["Admin"]
  SETTABLEKS R1 R0 K11 ["AdminAction"]
  LOADK R1 K30 ["subjectType"]
  SETTABLEKS R1 R0 K12 ["SubjectType"]
  LOADK R1 K31 ["subjectId"]
  SETTABLEKS R1 R0 K13 ["SubjectId"]
  LOADK R1 K32 ["User"]
  SETTABLEKS R1 R0 K14 ["UserSubject"]
  LOADK R1 K33 ["Group"]
  SETTABLEKS R1 R0 K15 ["GroupSubject"]
  LOADK R1 K34 ["Roleset"]
  SETTABLEKS R1 R0 K16 ["RoleSubject"]
  RETURN R0 1
