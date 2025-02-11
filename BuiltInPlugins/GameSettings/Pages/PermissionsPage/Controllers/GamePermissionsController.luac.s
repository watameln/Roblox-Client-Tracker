PROTO_0:
  NEWTABLE R1 1 0
  SETTABLEKS R0 R1 K0 ["__networking"]
  GETUPVAL R4 0
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K2 [setmetatable]
  CALL R2 2 1
  RETURN R2 1

PROTO_1:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["develop"]
  LOADK R7 K2 ["/v1/universes/"]
  MOVE R8 R1
  CONCAT R6 R7 R8
  NAMECALL R3 R2 K3 ["get"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["develop"]
  LOADK R7 K2 ["/v1/universes/"]
  MOVE R8 R1
  LOADK R9 K3 ["/activate"]
  CONCAT R6 R7 R9
  DUPTABLE R7 K5 [{"Body"}]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K4 ["Body"]
  NAMECALL R3 R2 K6 ["post"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["develop"]
  LOADK R7 K2 ["/v1/universes/"]
  MOVE R8 R1
  LOADK R9 K3 ["/deactivate"]
  CONCAT R6 R7 R9
  DUPTABLE R7 K5 [{"Body"}]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K4 ["Body"]
  NAMECALL R3 R2 K6 ["post"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["develop"]
  LOADK R7 K2 ["/v2/universes/"]
  MOVE R8 R1
  LOADK R9 K3 ["/configuration"]
  CONCAT R6 R7 R9
  NAMECALL R3 R2 K4 ["get"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_5:
  GETTABLEKS R3 R0 K0 ["__networking"]
  LOADK R6 K1 ["develop"]
  LOADK R8 K2 ["/v2/universes/"]
  MOVE R9 R1
  LOADK R10 K3 ["/configuration"]
  CONCAT R7 R8 R10
  DUPTABLE R8 K5 [{"Body"}]
  SETTABLEKS R2 R8 K4 ["Body"]
  NAMECALL R4 R3 K6 ["patch"]
  CALL R4 4 -1
  RETURN R4 -1

PROTO_6:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["develop"]
  LOADK R7 K2 ["/v2/universes/"]
  MOVE R8 R1
  LOADK R9 K3 ["/permissions"]
  CONCAT R6 R7 R9
  NAMECALL R3 R2 K4 ["get"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_7:
  GETTABLEKS R3 R0 K0 ["__networking"]
  LOADK R6 K1 ["develop"]
  LOADK R8 K2 ["/v2/universes/"]
  MOVE R9 R1
  LOADK R10 K3 ["/permissions_batched"]
  CONCAT R7 R8 R10
  DUPTABLE R8 K5 [{"Body"}]
  SETTABLEKS R2 R8 K4 ["Body"]
  NAMECALL R4 R3 K6 ["post"]
  CALL R4 4 -1
  RETURN R4 -1

PROTO_8:
  GETTABLEKS R3 R0 K0 ["__networking"]
  LOADK R6 K1 ["develop"]
  LOADK R8 K2 ["/v2/universes/"]
  MOVE R9 R1
  LOADK R10 K3 ["/permissions_batched"]
  CONCAT R7 R8 R10
  DUPTABLE R8 K5 [{"Body"}]
  SETTABLEKS R2 R8 K4 ["Body"]
  NAMECALL R4 R3 K6 ["delete"]
  CALL R4 4 -1
  RETURN R4 -1

PROTO_9:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["www"]
  LOADK R6 K2 ["/search/users/results"]
  DUPTABLE R7 K4 [{"Params"}]
  DUPTABLE R8 K7 [{"keyword", "maxRows"}]
  SETTABLEKS R1 R8 K5 ["keyword"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["MaxSearchResultsPerSubjectType"]
  SETTABLEKS R9 R8 K6 ["maxRows"]
  SETTABLEKS R8 R7 K3 ["Params"]
  NAMECALL R3 R2 K9 ["get"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_10:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["api"]
  LOADK R6 K2 ["/users/get-by-username"]
  DUPTABLE R7 K4 [{"Params"}]
  DUPTABLE R8 K6 [{"username"}]
  SETTABLEKS R1 R8 K5 ["username"]
  SETTABLEKS R8 R7 K3 ["Params"]
  NAMECALL R3 R2 K7 ["get"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_11:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["users"]
  LOADK R6 K2 ["/v1/usernames/users"]
  DUPTABLE R7 K4 [{"Body"}]
  DUPTABLE R8 K6 [{"usernames"}]
  SETTABLEKS R1 R8 K5 ["usernames"]
  SETTABLEKS R8 R7 K3 ["Body"]
  NAMECALL R3 R2 K7 ["post"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_12:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["groups"]
  LOADK R6 K2 ["/v1/groups/search/lookup"]
  DUPTABLE R7 K4 [{"Params"}]
  DUPTABLE R8 K7 [{"groupName", "maxRows"}]
  SETTABLEKS R1 R8 K5 ["groupName"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K8 ["MaxSearchResultsPerSubjectType"]
  SETTABLEKS R9 R8 K6 ["maxRows"]
  SETTABLEKS R8 R7 K3 ["Params"]
  NAMECALL R3 R2 K9 ["get"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_13:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["configurationV2GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["isFriendsOnly"]
  RETURN R3 1

PROTO_14:
  MOVE R5 R1
  DUPTABLE R6 K1 [{"isFriendsOnly"}]
  SETTABLEKS R2 R6 K0 ["isFriendsOnly"]
  NAMECALL R3 R0 K2 ["configurationV2PATCH"]
  CALL R3 3 1
  NAMECALL R3 R3 K3 ["await"]
  CALL R3 1 0
  RETURN R0 0

PROTO_15:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["universesV1GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["isActive"]
  RETURN R3 1

PROTO_16:
  JUMPIFNOT R2 [+8]
  MOVE R5 R1
  NAMECALL R3 R0 K0 ["universesActivateV1POST"]
  CALL R3 2 1
  NAMECALL R3 R3 K1 ["await"]
  CALL R3 1 0
  RETURN R0 0
  MOVE R5 R1
  NAMECALL R3 R0 K2 ["universesDeactivateV1POST"]
  CALL R3 2 1
  NAMECALL R3 R3 K1 ["await"]
  CALL R3 1 0
  RETURN R0 0

PROTO_17:
  MOVE R7 R1
  NAMECALL R5 R0 K0 ["permissionsV2GET"]
  CALL R5 2 1
  NAMECALL R5 R5 K1 ["await"]
  CALL R5 1 1
  GETTABLEKS R7 R5 K2 ["responseBody"]
  GETTABLEKS R6 R7 K3 ["data"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["DeserializePermissions"]
  MOVE R8 R6
  MOVE R9 R2
  MOVE R10 R3
  MOVE R11 R4
  CALL R7 4 -1
  RETURN R7 -1

PROTO_18:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["SerializePermissions"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 2
  LENGTH R7 R4
  LENGTH R8 R5
  ADD R6 R7 R8
  LOADN R7 60
  JUMPIFNOTLT R7 R6 [+9]
  GETIMPORT R7 K2 [error]
  LOADK R9 K3 ["Too many changes ("]
  MOVE R10 R6
  LOADK R12 K5 [") to permissions. Maximum at once is "]
  ADDK R11 R12 K4 [60]
  CONCAT R8 R9 R11
  CALL R7 1 0
  LENGTH R7 R4
  LOADN R8 0
  JUMPIFNOTLT R8 R7 [+9]
  MOVE R9 R1
  MOVE R10 R4
  NAMECALL R7 R0 K6 ["permissionsBatchedV2POST"]
  CALL R7 3 1
  NAMECALL R7 R7 K7 ["await"]
  CALL R7 1 0
  LENGTH R7 R5
  LOADN R8 0
  JUMPIFNOTLT R8 R7 [+9]
  MOVE R9 R1
  MOVE R10 R5
  NAMECALL R7 R0 K8 ["permissionsBatchedV2DELETE"]
  CALL R7 3 1
  NAMECALL R7 R7 K7 ["await"]
  CALL R7 1 0
  RETURN R0 0

PROTO_19:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["wwwSearchUsers"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["UserSearchResults"]
  JUMPIFNOT R3 [+36]
  NEWTABLE R4 0 0
  GETIMPORT R5 K5 [pairs]
  MOVE R6 R3
  CALL R5 1 3
  FORGPREP_NEXT R5
  NEWTABLE R12 2 0
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K6 ["SubjectNameKey"]
  GETTABLEKS R14 R9 K7 ["Name"]
  SETTABLE R14 R12 R13
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K8 ["SubjectIdKey"]
  GETTABLEKS R14 R9 K9 ["UserId"]
  SETTABLE R14 R12 R13
  FASTCALL2 TABLE_INSERT R4 R12 [+4]
  MOVE R11 R4
  GETIMPORT R10 K12 [table.insert]
  CALL R10 2 0
  FORGLOOP R5 2 [-21]
  NEWTABLE R5 1 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K13 ["UserSubjectKey"]
  SETTABLE R4 R5 R6
  RETURN R5 1
  GETUPVAL R4 1
  JUMPIF R4 [+62]
  MOVE R6 R1
  NAMECALL R4 R0 K14 ["apiGetByUsernameV1GET"]
  CALL R4 2 1
  NAMECALL R4 R4 K1 ["await"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K2 ["responseBody"]
  GETTABLEKS R6 R5 K15 ["success"]
  JUMPIFNOTEQKB R6 FALSE [+25]
  GETTABLEKS R6 R5 K16 ["errorMessage"]
  JUMPIFEQKS R6 K17 ["User not found"] [+12]
  GETIMPORT R7 K19 [error]
  LOADK R9 K20 ["Failed to find user: "]
  FASTCALL1 TOSTRING R6 [+3]
  MOVE R11 R6
  GETIMPORT R10 K22 [tostring]
  CALL R10 1 1
  CONCAT R8 R9 R10
  CALL R7 1 -1
  RETURN R7 -1
  NEWTABLE R7 1 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K13 ["UserSubjectKey"]
  NEWTABLE R9 0 0
  SETTABLE R9 R7 R8
  RETURN R7 1
  NEWTABLE R6 1 0
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K13 ["UserSubjectKey"]
  NEWTABLE R8 0 1
  NEWTABLE R9 2 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K6 ["SubjectNameKey"]
  GETTABLEKS R11 R5 K23 ["Username"]
  SETTABLE R11 R9 R10
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K8 ["SubjectIdKey"]
  GETTABLEKS R11 R5 K24 ["Id"]
  SETTABLE R11 R9 R10
  SETLIST R8 R9 1 [1]
  SETTABLE R8 R6 R7
  RETURN R6 1
  NEWTABLE R6 0 1
  MOVE R7 R1
  SETLIST R6 R7 1 [1]
  NAMECALL R4 R0 K25 ["usersGetByUsernamesV1POST"]
  CALL R4 2 1
  NAMECALL R4 R4 K1 ["await"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K2 ["responseBody"]
  GETTABLEKS R6 R5 K26 ["responseCode"]
  JUMPIFEQKN R6 K27 [200] [+30]
  GETTABLEKS R6 R5 K28 ["errors"]
  JUMPIFNOT R6 [+21]
  GETTABLEKS R7 R5 K28 ["errors"]
  LENGTH R6 R7
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+16]
  GETIMPORT R6 K19 [error]
  LOADK R8 K29 ["Failed to find user"]
  GETTABLEKS R12 R5 K28 ["errors"]
  GETTABLEN R11 R12 1
  GETTABLEKS R10 R11 K30 ["message"]
  FASTCALL1 TOSTRING R10 [+2]
  GETIMPORT R9 K22 [tostring]
  CALL R9 1 1
  CONCAT R7 R8 R9
  CALL R6 1 -1
  RETURN R6 -1
  GETIMPORT R6 K19 [error]
  LOADK R7 K29 ["Failed to find user"]
  CALL R6 1 -1
  RETURN R6 -1
  NEWTABLE R6 0 0
  GETIMPORT R7 K5 [pairs]
  GETTABLEKS R8 R5 K31 ["data"]
  CALL R7 1 3
  FORGPREP_NEXT R7
  NEWTABLE R14 2 0
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K6 ["SubjectNameKey"]
  GETTABLEKS R16 R11 K32 ["name"]
  SETTABLE R16 R14 R15
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K8 ["SubjectIdKey"]
  GETTABLEKS R16 R11 K33 ["id"]
  SETTABLE R16 R14 R15
  FASTCALL2 TABLE_INSERT R6 R14 [+4]
  MOVE R13 R6
  GETIMPORT R12 K12 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-21]
  NEWTABLE R7 1 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K13 ["UserSubjectKey"]
  SETTABLE R6 R7 R8
  RETURN R7 1

PROTO_20:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["searchGroupsV1GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["data"]
  NEWTABLE R4 0 0
  JUMPIFNOT R3 [+39]
  NEWTABLE R5 0 0
  GETIMPORT R6 K5 [pairs]
  MOVE R7 R3
  CALL R6 1 3
  FORGPREP_NEXT R6
  NEWTABLE R13 4 0
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K6 ["GroupNameKey"]
  GETTABLEKS R15 R10 K7 ["name"]
  SETTABLE R15 R13 R14
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K8 ["GroupIdKey"]
  GETTABLEKS R15 R10 K9 ["id"]
  SETTABLE R15 R13 R14
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K10 ["GroupMemberCountKey"]
  GETTABLEKS R15 R10 K11 ["memberCount"]
  SETTABLE R15 R13 R14
  FASTCALL2 TABLE_INSERT R5 R13 [+4]
  MOVE R12 R5
  GETIMPORT R11 K14 [table.insert]
  CALL R11 2 0
  FORGLOOP R6 2 [-27]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K15 ["GroupSubjectKey"]
  SETTABLE R5 R4 R6
  RETURN R4 1

PROTO_21:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["searchUsers"]
  CALL R2 2 1
  MOVE R5 R1
  NAMECALL R3 R0 K1 ["searchGroups"]
  CALL R3 2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["Dictionary"]
  GETTABLEKS R4 R5 K3 ["join"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 1
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R1 K5 ["Packages"]
  GETTABLEKS R3 R4 K6 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K7 ["Util"]
  GETTABLEKS R4 R5 K8 ["DeserializeFromRequest"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K7 ["Util"]
  GETTABLEKS R5 R6 K9 ["SerializeForRequest"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K7 ["Util"]
  GETTABLEKS R6 R7 K10 ["PermissionsConstants"]
  CALL R5 1 1
  GETIMPORT R6 K12 [game]
  LOADK R8 K13 ["ApiProxyToUsersApiGetUserByUsernamesEnabled"]
  NAMECALL R6 R6 K14 ["GetFastFlag"]
  CALL R6 2 1
  NEWTABLE R7 32 0
  SETTABLEKS R7 R7 K15 ["__index"]
  DUPCLOSURE R8 K16 [PROTO_0]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K17 ["new"]
  DUPCLOSURE R8 K18 [PROTO_1]
  SETTABLEKS R8 R7 K19 ["universesV1GET"]
  DUPCLOSURE R8 K20 [PROTO_2]
  SETTABLEKS R8 R7 K21 ["universesActivateV1POST"]
  DUPCLOSURE R8 K22 [PROTO_3]
  SETTABLEKS R8 R7 K23 ["universesDeactivateV1POST"]
  DUPCLOSURE R8 K24 [PROTO_4]
  SETTABLEKS R8 R7 K25 ["configurationV2GET"]
  DUPCLOSURE R8 K26 [PROTO_5]
  SETTABLEKS R8 R7 K27 ["configurationV2PATCH"]
  DUPCLOSURE R8 K28 [PROTO_6]
  SETTABLEKS R8 R7 K29 ["permissionsV2GET"]
  DUPCLOSURE R8 K30 [PROTO_7]
  SETTABLEKS R8 R7 K31 ["permissionsBatchedV2POST"]
  DUPCLOSURE R8 K32 [PROTO_8]
  SETTABLEKS R8 R7 K33 ["permissionsBatchedV2DELETE"]
  DUPCLOSURE R8 K34 [PROTO_9]
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K35 ["wwwSearchUsers"]
  DUPCLOSURE R8 K36 [PROTO_10]
  SETTABLEKS R8 R7 K37 ["apiGetByUsernameV1GET"]
  DUPCLOSURE R8 K38 [PROTO_11]
  SETTABLEKS R8 R7 K39 ["usersGetByUsernamesV1POST"]
  DUPCLOSURE R8 K40 [PROTO_12]
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K41 ["searchGroupsV1GET"]
  DUPCLOSURE R8 K42 [PROTO_13]
  SETTABLEKS R8 R7 K43 ["isFriendsOnly"]
  DUPCLOSURE R8 K44 [PROTO_14]
  SETTABLEKS R8 R7 K45 ["setFriendsOnly"]
  DUPCLOSURE R8 K46 [PROTO_15]
  SETTABLEKS R8 R7 K47 ["isActive"]
  DUPCLOSURE R8 K48 [PROTO_16]
  SETTABLEKS R8 R7 K49 ["setActive"]
  DUPCLOSURE R8 K50 [PROTO_17]
  CAPTURE VAL R3
  SETTABLEKS R8 R7 K51 ["getPermissions"]
  DUPCLOSURE R8 K52 [PROTO_18]
  CAPTURE VAL R4
  SETTABLEKS R8 R7 K53 ["setPermissions"]
  DUPCLOSURE R8 K54 [PROTO_19]
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K55 ["searchUsers"]
  DUPCLOSURE R8 K56 [PROTO_20]
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K57 ["searchGroups"]
  DUPCLOSURE R8 K58 [PROTO_21]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K59 ["search"]
  RETURN R7 1
