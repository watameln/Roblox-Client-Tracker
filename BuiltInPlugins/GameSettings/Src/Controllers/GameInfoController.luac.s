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
  LOADK R7 K2 ["/v2/universes/"]
  MOVE R8 R1
  LOADK R9 K3 ["/configuration"]
  CONCAT R6 R7 R9
  NAMECALL R3 R2 K4 ["get"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_2:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["develop"]
  LOADK R7 K2 ["/v1/universes/"]
  MOVE R8 R1
  LOADK R9 K3 ["/icon"]
  CONCAT R6 R7 R9
  NAMECALL R3 R2 K4 ["get"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["__networking"]
  LOADK R5 K1 ["games"]
  LOADK R7 K2 ["/v1/games/"]
  MOVE R8 R1
  LOADK R9 K3 ["/media"]
  CONCAT R6 R7 R9
  NAMECALL R3 R2 K4 ["get"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_4:
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

PROTO_5:
  GETUPVAL R3 0
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K1 [assert]
  CALL R2 1 0
  GETTABLEKS R2 R0 K2 ["__networking"]
  LOADK R5 K3 ["apis"]
  LOADK R6 K4 ["/experience-guidelines-service/v1beta1/multi-age-recommendation"]
  DUPTABLE R7 K6 [{"Body"}]
  DUPTABLE R8 K8 [{"universeIds"}]
  NEWTABLE R9 0 1
  MOVE R10 R1
  SETLIST R9 R10 1 [1]
  SETTABLEKS R9 R8 K7 ["universeIds"]
  SETTABLEKS R8 R7 K5 ["Body"]
  NAMECALL R3 R2 K9 ["post"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_6:
  GETTABLEKS R3 R0 K0 ["__networking"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["GetAssetPublishRequestInfo"]
  MOVE R5 R2
  CALL R4 1 1
  LOADNIL R5
  SETTABLEKS R5 R4 K2 ["Method"]
  LOADK R7 K3 ["publish"]
  LOADK R9 K4 ["/v1/games/"]
  MOVE R10 R1
  LOADK R11 K5 ["/icon"]
  CONCAT R8 R9 R11
  MOVE R9 R4
  NAMECALL R5 R3 K6 ["post"]
  CALL R5 4 -1
  RETURN R5 -1

PROTO_7:
  GETTABLEKS R3 R0 K0 ["__networking"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["GetAssetPublishRequestInfo"]
  MOVE R5 R2
  CALL R4 1 1
  LOADNIL R5
  SETTABLEKS R5 R4 K2 ["Method"]
  LOADK R7 K3 ["publish"]
  LOADK R9 K4 ["/v1/games/"]
  MOVE R10 R1
  LOADK R11 K5 ["/thumbnail/image"]
  CONCAT R8 R9 R11
  MOVE R9 R4
  NAMECALL R5 R3 K6 ["post"]
  CALL R5 4 -1
  RETURN R5 -1

PROTO_8:
  GETTABLEKS R3 R0 K0 ["__networking"]
  LOADK R6 K1 ["develop"]
  LOADK R8 K2 ["/v1/universes/"]
  MOVE R9 R1
  LOADK R10 K3 ["/thumbnails/"]
  MOVE R11 R2
  CONCAT R7 R8 R11
  NAMECALL R4 R3 K4 ["delete"]
  CALL R4 3 -1
  RETURN R4 -1

PROTO_9:
  GETTABLEKS R3 R0 K0 ["__networking"]
  LOADK R6 K1 ["develop"]
  LOADK R8 K2 ["/v1/universes/"]
  MOVE R9 R1
  LOADK R10 K3 ["/thumbnails/order"]
  CONCAT R7 R8 R10
  DUPTABLE R8 K5 [{"Body"}]
  DUPTABLE R9 K7 [{"thumbnailIds"}]
  SETTABLEKS R2 R9 K6 ["thumbnailIds"]
  SETTABLEKS R9 R8 K4 ["Body"]
  NAMECALL R4 R3 K8 ["post"]
  CALL R4 4 -1
  RETURN R4 -1

PROTO_10:
  GETTABLEKS R3 R0 K0 ["__networking"]
  LOADK R6 K1 ["develop"]
  LOADK R8 K2 ["/v1/universes/"]
  MOVE R9 R1
  LOADK R10 K3 ["/thumbnails/alt-text"]
  CONCAT R7 R8 R10
  DUPTABLE R8 K5 [{"Body"}]
  SETTABLEKS R2 R8 K4 ["Body"]
  NAMECALL R4 R3 K6 ["post"]
  CALL R4 4 -1
  RETURN R4 -1

PROTO_11:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["configurationV2GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["name"]
  RETURN R3 1

PROTO_12:
  GETTABLEKS R1 R0 K0 ["responseCode"]
  JUMPIFNOTEQKN R1 K1 [400] [+19]
  GETIMPORT R1 K3 [ipairs]
  GETTABLEKS R4 R0 K4 ["responseBody"]
  GETTABLEKS R2 R4 K5 ["errors"]
  CALL R1 1 3
  FORGPREP_INEXT R1
  GETTABLEKS R6 R5 K6 ["code"]
  JUMPIFNOTEQKN R6 K7 [7] [+5]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K8 ["NameModerated"]
  SETUPVAL R6 0
  FORGLOOP R1 2 [inext] [-9]
  RETURN R0 0

PROTO_13:
  LOADNIL R3
  MOVE R6 R1
  DUPTABLE R7 K1 [{"name"}]
  SETTABLEKS R2 R7 K0 ["name"]
  NAMECALL R4 R0 K2 ["configurationV2PATCH"]
  CALL R4 3 1
  NEWCLOSURE R6 P0
  CAPTURE REF R3
  CAPTURE UPVAL U0
  NAMECALL R4 R4 K3 ["catch"]
  CALL R4 2 1
  NAMECALL R4 R4 K4 ["await"]
  CALL R4 1 0
  JUMPIFNOT R3 [+5]
  GETIMPORT R4 K6 [error]
  MOVE R5 R3
  CALL R4 1 0
  JUMP [+5]
  GETUPVAL R4 1
  MOVE R6 R2
  NAMECALL R4 R4 K7 ["SetUniverseDisplayName"]
  CALL R4 2 0
  CLOSEUPVALS R3
  RETURN R0 0

PROTO_14:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["configurationV2GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R5 R2 K3 ["responseBody"]
  GETTABLEKS R4 R5 K4 ["description"]
  ORK R3 R4 K2 [""]
  RETURN R3 1

PROTO_15:
  GETUPVAL R3 0
  FASTCALL1 ASSERT R3 [+2]
  GETIMPORT R2 K1 [assert]
  CALL R2 1 0
  MOVE R4 R1
  NAMECALL R2 R0 K2 ["guidelinesPOST"]
  CALL R2 2 1
  NAMECALL R2 R2 K3 ["await"]
  CALL R2 1 1
  GETTABLEKS R5 R2 K4 ["responseBody"]
  GETTABLEKS R4 R5 K5 ["ageRecommendationDetailsByUniverse"]
  GETTABLEN R3 R4 1
  FASTCALL1 ASSERT R3 [+3]
  MOVE R5 R3
  GETIMPORT R4 K1 [assert]
  CALL R4 1 0
  GETTABLEKS R6 R3 K6 ["universeId"]
  JUMPIFEQ R6 R1 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL1 ASSERT R5 [+2]
  GETIMPORT R4 K1 [assert]
  CALL R4 1 0
  JUMPIFNOT R3 [+10]
  GETTABLEKS R6 R3 K7 ["ageRecommendationDetails"]
  GETTABLEKS R5 R6 K8 ["ageRecommendationSummary"]
  GETTABLEKS R4 R5 K9 ["ageRecommendation"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R5 R4 K10 ["displayName"]
  RETURN R5 1
  LOADNIL R4
  RETURN R4 1

PROTO_16:
  MOVE R5 R1
  DUPTABLE R6 K1 [{"description"}]
  SETTABLEKS R2 R6 K0 ["description"]
  NAMECALL R3 R0 K2 ["configurationV2PATCH"]
  CALL R3 3 1
  NAMECALL R3 R3 K3 ["await"]
  CALL R3 1 0
  RETURN R0 0

PROTO_17:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["configurationV2GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["genre"]
  RETURN R3 1

PROTO_18:
  MOVE R5 R1
  DUPTABLE R6 K1 [{"genre"}]
  SETTABLEKS R2 R6 K0 ["genre"]
  NAMECALL R3 R0 K2 ["configurationV2PATCH"]
  CALL R3 3 1
  NAMECALL R3 R3 K3 ["await"]
  CALL R3 1 0
  RETURN R0 0

PROTO_19:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["configurationV2GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["playableDevices"]
  RETURN R3 1

PROTO_20:
  MOVE R5 R1
  DUPTABLE R6 K1 [{"playableDevices"}]
  SETTABLEKS R2 R6 K0 ["playableDevices"]
  NAMECALL R3 R0 K2 ["configurationV2PATCH"]
  CALL R3 3 1
  NAMECALL R3 R3 K3 ["await"]
  CALL R3 1 0
  RETURN R0 0

PROTO_21:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["thumbnailsV2GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["data"]
  RETURN R3 1

PROTO_22:
  GETTABLEKS R2 R0 K0 ["responseBody"]
  GETTABLEKS R1 R2 K1 ["targetId"]
  GETUPVAL R2 0
  GETUPVAL R3 1
  SETTABLE R1 R2 R3
  RETURN R0 0

PROTO_23:
  NEWTABLE R3 0 0
  NEWTABLE R4 0 0
  GETIMPORT R5 K1 [ipairs]
  MOVE R6 R2
  CALL R5 1 3
  FORGPREP_INEXT R5
  MOVE R11 R3
  MOVE R14 R1
  MOVE R15 R9
  NAMECALL R12 R0 K2 ["thumbnailV1POST"]
  CALL R12 3 1
  NEWCLOSURE R14 P0
  CAPTURE VAL R4
  CAPTURE VAL R9
  NAMECALL R12 R12 K3 ["andThen"]
  CALL R12 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R10 K6 [table.insert]
  CALL R10 -1 0
  FORGLOOP R5 2 [inext] [-17]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K7 ["all"]
  MOVE R6 R3
  CALL R5 1 1
  NAMECALL R5 R5 K8 ["await"]
  CALL R5 1 0
  RETURN R4 1

PROTO_24:
  NEWTABLE R3 0 0
  GETIMPORT R4 K1 [ipairs]
  MOVE R5 R2
  CALL R4 1 3
  FORGPREP_INEXT R4
  MOVE R10 R3
  MOVE R13 R1
  MOVE R14 R8
  NAMECALL R11 R0 K2 ["thumbnailV1DELETE"]
  CALL R11 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R9 K5 [table.insert]
  CALL R9 -1 0
  FORGLOOP R4 2 [inext] [-11]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["all"]
  MOVE R5 R3
  CALL R4 1 1
  NAMECALL R4 R4 K7 ["await"]
  CALL R4 1 0
  RETURN R0 0

PROTO_25:
  GETTABLEKS R1 R0 K0 ["responseBody"]
  SETUPVAL R1 0
  RETURN R0 0

PROTO_26:
  GETTABLEKS R1 R0 K0 ["responseCode"]
  JUMPIFNOTEQKN R1 K1 [400] [+19]
  GETIMPORT R1 K3 [ipairs]
  GETTABLEKS R4 R0 K4 ["responseBody"]
  GETTABLEKS R2 R4 K5 ["errors"]
  CALL R1 1 3
  FORGPREP_INEXT R1
  GETTABLEKS R6 R5 K6 ["code"]
  JUMPIFNOTEQKN R6 K7 [19] [+5]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K8 ["AltTextModerated"]
  SETUPVAL R6 0
  FORGLOOP R1 2 [inext] [-9]
  RETURN R0 0

PROTO_27:
  LOADNIL R3
  LOADNIL R4
  MOVE R7 R1
  MOVE R8 R2
  NAMECALL R5 R0 K0 ["thumbnailAltTextV1POST"]
  CALL R5 3 1
  NEWCLOSURE R7 P0
  CAPTURE REF R3
  NAMECALL R5 R5 K1 ["andThen"]
  CALL R5 2 1
  NEWCLOSURE R7 P1
  CAPTURE REF R4
  CAPTURE UPVAL U0
  NAMECALL R5 R5 K2 ["catch"]
  CALL R5 2 1
  NAMECALL R5 R5 K3 ["await"]
  CALL R5 1 0
  JUMPIFNOT R4 [+5]
  GETIMPORT R5 K5 [error]
  MOVE R6 R4
  CALL R5 1 0
  JUMP [+4]
  JUMPIFEQKNIL R3 [+3]
  CLOSEUPVALS R3
  RETURN R3 1
  LOADNIL R5
  CLOSEUPVALS R3
  RETURN R5 1

PROTO_28:
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R0 K0 ["thumbnailOrderV1POST"]
  CALL R3 3 1
  NAMECALL R3 R3 K1 ["await"]
  CALL R3 1 0
  RETURN R0 0

PROTO_29:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["iconV1GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["imageId"]
  GETTABLEKS R5 R2 K2 ["responseBody"]
  GETTABLEKS R4 R5 K4 ["isApproved"]
  JUMPIFNOT R3 [+4]
  LOADK R6 K5 ["rbxassetid://"]
  MOVE R7 R3
  CONCAT R5 R6 R7
  JUMPIF R5 [+1]
  LOADNIL R5
  MOVE R6 R4
  RETURN R5 2

PROTO_30:
  MOVE R5 R1
  MOVE R6 R2
  NAMECALL R3 R0 K0 ["iconV1POST"]
  CALL R3 3 1
  NAMECALL R3 R3 K1 ["await"]
  CALL R3 1 0
  RETURN R0 0

PROTO_31:
  MOVE R4 R1
  NAMECALL R2 R0 K0 ["configurationV2GET"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["await"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K2 ["responseBody"]
  GETTABLEKS R3 R4 K3 ["optInRegions"]
  RETURN R3 1

PROTO_32:
  MOVE R6 R1
  DUPTABLE R7 K2 [{"optInRegions", "optOutRegions"}]
  SETTABLEKS R2 R7 K0 ["optInRegions"]
  SETTABLEKS R3 R7 K1 ["optOutRegions"]
  NAMECALL R4 R0 K3 ["configurationV2PATCH"]
  CALL R4 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K6 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K7 ["Util"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K9 ["FileUtils"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K10 ["Promise"]
  GETTABLEKS R4 R1 K11 ["Symbol"]
  GETIMPORT R5 K13 [game]
  LOADK R7 K14 ["StudioPublishService"]
  NAMECALL R5 R5 K15 ["GetService"]
  CALL R5 2 1
  GETIMPORT R6 K13 [game]
  LOADK R8 K16 ["GameSettingsExperienceGuidelines"]
  NAMECALL R6 R6 K17 ["GetFastFlag"]
  CALL R6 2 1
  NEWTABLE R7 64 0
  SETTABLEKS R7 R7 K18 ["__index"]
  GETTABLEKS R8 R4 K19 ["named"]
  LOADK R9 K20 ["NameModerated"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K20 ["NameModerated"]
  GETTABLEKS R8 R4 K19 ["named"]
  LOADK R9 K21 ["DescriptionModerated"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K21 ["DescriptionModerated"]
  GETTABLEKS R8 R4 K19 ["named"]
  LOADK R9 K22 ["AltTextModerated"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K22 ["AltTextModerated"]
  DUPCLOSURE R8 K23 [PROTO_0]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K24 ["new"]
  DUPCLOSURE R8 K25 [PROTO_1]
  SETTABLEKS R8 R7 K26 ["configurationV2GET"]
  DUPCLOSURE R8 K27 [PROTO_2]
  SETTABLEKS R8 R7 K28 ["iconV1GET"]
  DUPCLOSURE R8 K29 [PROTO_3]
  SETTABLEKS R8 R7 K30 ["thumbnailsV2GET"]
  DUPCLOSURE R8 K31 [PROTO_4]
  SETTABLEKS R8 R7 K32 ["configurationV2PATCH"]
  DUPCLOSURE R8 K33 [PROTO_5]
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K34 ["guidelinesPOST"]
  DUPCLOSURE R8 K35 [PROTO_6]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K36 ["iconV1POST"]
  DUPCLOSURE R8 K37 [PROTO_7]
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K38 ["thumbnailV1POST"]
  DUPCLOSURE R8 K39 [PROTO_8]
  SETTABLEKS R8 R7 K40 ["thumbnailV1DELETE"]
  DUPCLOSURE R8 K41 [PROTO_9]
  SETTABLEKS R8 R7 K42 ["thumbnailOrderV1POST"]
  DUPCLOSURE R8 K43 [PROTO_10]
  SETTABLEKS R8 R7 K44 ["thumbnailAltTextV1POST"]
  DUPCLOSURE R8 K45 [PROTO_11]
  SETTABLEKS R8 R7 K46 ["getName"]
  DUPCLOSURE R8 K47 [PROTO_13]
  CAPTURE VAL R7
  CAPTURE VAL R5
  SETTABLEKS R8 R7 K48 ["setName"]
  DUPCLOSURE R8 K49 [PROTO_14]
  SETTABLEKS R8 R7 K50 ["getDescription"]
  DUPCLOSURE R8 K51 [PROTO_15]
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K52 ["getGuidelines"]
  DUPCLOSURE R8 K53 [PROTO_16]
  SETTABLEKS R8 R7 K54 ["setDescription"]
  DUPCLOSURE R8 K55 [PROTO_17]
  SETTABLEKS R8 R7 K56 ["getGenre"]
  DUPCLOSURE R8 K57 [PROTO_18]
  SETTABLEKS R8 R7 K58 ["setGenre"]
  DUPCLOSURE R8 K59 [PROTO_19]
  SETTABLEKS R8 R7 K60 ["getSupportedDevices"]
  DUPCLOSURE R8 K61 [PROTO_20]
  SETTABLEKS R8 R7 K62 ["setSupportedDevices"]
  DUPCLOSURE R8 K63 [PROTO_21]
  SETTABLEKS R8 R7 K64 ["getThumbnails"]
  DUPCLOSURE R8 K65 [PROTO_23]
  CAPTURE VAL R3
  SETTABLEKS R8 R7 K66 ["addThumbnails"]
  DUPCLOSURE R8 K67 [PROTO_24]
  CAPTURE VAL R3
  SETTABLEKS R8 R7 K68 ["removeThumbnails"]
  DUPCLOSURE R8 K69 [PROTO_27]
  CAPTURE VAL R7
  SETTABLEKS R8 R7 K70 ["updateThumbnailAltText"]
  DUPCLOSURE R8 K71 [PROTO_28]
  SETTABLEKS R8 R7 K72 ["setThumbnailsOrder"]
  DUPCLOSURE R8 K73 [PROTO_29]
  SETTABLEKS R8 R7 K74 ["getIcon"]
  DUPCLOSURE R8 K75 [PROTO_30]
  SETTABLEKS R8 R7 K76 ["setIcon"]
  DUPCLOSURE R8 K77 [PROTO_31]
  SETTABLEKS R8 R7 K78 ["getOptInLocations"]
  DUPCLOSURE R8 K79 [PROTO_32]
  SETTABLEKS R8 R7 K80 ["setOptInLocations"]
  RETURN R7 1
