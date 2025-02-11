PROTO_0:
  GETUPVAL R1 0
  FASTCALL1 TONUMBER R1 [+2]
  GETIMPORT R0 K1 [tonumber]
  CALL R0 1 1
  RETURN R0 1

PROTO_1:
  JUMPIF R0 [+1]
  RETURN R0 0
  NEWTABLE R1 0 2
  LOADK R2 K0 ["id://"]
  LOADK R3 K1 ["[Ii][Dd]="]
  SETLIST R1 R2 2 [1]
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETIMPORT R7 K4 [string.find]
  MOVE R8 R0
  MOVE R9 R6
  CALL R7 2 2
  JUMPIFNOT R7 [+22]
  GETIMPORT R9 K4 [string.find]
  MOVE R10 R0
  LOADK R11 K5 ["%d+"]
  ADDK R12 R8 K6 [1]
  CALL R9 3 2
  MOVE R7 R9
  MOVE R8 R10
  JUMPIFNOT R7 [+13]
  JUMPIFNOT R8 [+12]
  MOVE R11 R7
  MOVE R12 R8
  NAMECALL R9 R0 K7 ["sub"]
  CALL R9 3 1
  GETIMPORT R10 K9 [pcall]
  NEWCLOSURE R11 P0
  CAPTURE VAL R9
  CALL R10 1 2
  JUMPIFNOT R10 [+1]
  RETURN R11 1
  FORGLOOP R2 2 [-29]
  RETURN R0 0

PROTO_2:
  MOVE R2 R1
  JUMPIF R2 [+2]
  NEWTABLE R2 0 0
  MOVE R1 R2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  DUPTABLE R3 K6 [{"studioSid", "clientId", "placeId", "userId"}]
  GETUPVAL R4 1
  NAMECALL R4 R4 K7 ["GetSessionId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K2 ["studioSid"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K8 ["GetClientId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["clientId"]
  GETIMPORT R5 K10 [game]
  GETTABLEKS R4 R5 K11 ["PlaceId"]
  SETTABLEKS R4 R3 K4 ["placeId"]
  GETUPVAL R4 2
  NAMECALL R4 R4 K12 ["GetUserId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K5 ["userId"]
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R3 1
  LOADK R5 K13 ["studio"]
  LOADK R6 K14 ["accessoryFittingTool"]
  MOVE R7 R0
  MOVE R8 R2
  NAMECALL R3 R3 K15 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["TotalLayers"]
  LOADN R1 0
  JUMPIFLT R1 R0 [+7]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["TotalAvatars"]
  LOADN R1 1
  JUMPIFNOTLT R1 R0 [+15]
  GETUPVAL R0 1
  LOADK R1 K2 ["previewUsed"]
  DUPTABLE R2 K5 [{"layerCount", "avatarCount"}]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["TotalLayers"]
  SETTABLEKS R3 R2 K3 ["layerCount"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["TotalAvatars"]
  SETTABLEKS R3 R2 K4 ["avatarCount"]
  CALL R0 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["CageEdits"]
  LOADN R1 0
  JUMPIFNOTLT R1 R0 [+33]
  GETUPVAL R0 1
  LOADK R1 K1 ["cageEdited"]
  DUPTABLE R2 K4 [{"Count", "count"}]
  GETUPVAL R4 2
  CALL R4 0 1
  JUMPIF R4 [+4]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["CageEdits"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K2 ["Count"]
  GETUPVAL R4 2
  CALL R4 0 1
  JUMPIFNOT R4 [+4]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["CageEdits"]
  JUMP [+1]
  LOADNIL R3
  SETTABLEKS R3 R2 K3 ["count"]
  CALL R0 2 0
  GETUPVAL R0 3
  LOADK R2 K5 ["AccessoryFittingToolCageEdited"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["CageEdits"]
  NAMECALL R0 R0 K6 ["ReportCounter"]
  CALL R0 3 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["FirstAction"]
  JUMPIFNOT R1 [+6]
  GETUPVAL R1 1
  LOADK R2 K1 ["firstAction"]
  DUPTABLE R3 K3 [{"actionId"}]
  SETTABLEKS R0 R3 K2 ["actionId"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  LOADK R2 K0 ["createAccessory"]
  DUPTABLE R3 K2 [{"count"}]
  SETTABLEKS R0 R3 K1 ["count"]
  CALL R1 2 0
  GETUPVAL R1 1
  LOADK R3 K3 ["CreateAccessory"]
  MOVE R4 R0
  NAMECALL R1 R1 K4 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  LOADK R1 K0 ["opened"]
  CALL R0 1 0
  GETUPVAL R0 1
  LOADK R2 K1 ["AccessoryFittingToolOpened"]
  LOADN R3 1
  NAMECALL R0 R0 K2 ["ReportCounter"]
  CALL R0 3 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  LOADK R2 K0 ["publishedLC"]
  DUPTABLE R3 K3 [{"cageEdited", "meshId"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K4 ["CageEdits"]
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+7]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["CAGE_EDITING"]
  GETTABLEKS R4 R5 K6 ["Edited"]
  JUMP [+5]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K5 ["CAGE_EDITING"]
  GETTABLEKS R4 R5 K7 ["Unedited"]
  SETTABLEKS R4 R3 K1 ["cageEdited"]
  GETUPVAL R5 3
  CALL R5 0 1
  JUMPIFNOT R5 [+4]
  GETUPVAL R4 4
  MOVE R5 R0
  CALL R4 1 1
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K2 ["meshId"]
  CALL R1 2 0
  GETUPVAL R1 5
  LOADK R3 K8 ["AccessoryFittingToolPublishedLC"]
  LOADN R4 1
  NAMECALL R1 R1 K9 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+10]
  GETUPVAL R1 1
  LOADK R2 K0 ["publishedAcc"]
  DUPTABLE R3 K2 [{"meshId"}]
  GETUPVAL R4 2
  MOVE R5 R0
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["meshId"]
  CALL R1 2 0
  JUMP [+3]
  GETUPVAL R1 1
  LOADK R2 K0 ["publishedAcc"]
  CALL R1 1 0
  GETUPVAL R1 3
  LOADK R3 K3 ["AccessoryFittingToolPublishedAcc"]
  LOADN R4 1
  NAMECALL R1 R1 K4 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  LOADK R1 K0 ["selectedLC"]
  CALL R0 1 0
  GETUPVAL R0 1
  LOADK R2 K1 ["AccessoryFittingToolSelectedLC"]
  LOADN R3 1
  NAMECALL R0 R0 K2 ["ReportCounter"]
  CALL R0 3 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  LOADK R1 K0 ["selectedAcc"]
  CALL R0 1 0
  GETUPVAL R0 1
  LOADK R2 K1 ["AccessoryFittingToolSelectedAcc"]
  LOADN R3 1
  NAMECALL R0 R0 K2 ["ReportCounter"]
  CALL R0 3 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  LOADK R1 K0 ["centerAvatarToCamera"]
  CALL R0 1 0
  GETUPVAL R0 1
  LOADK R2 K1 ["AccessoryFittingToolCenterAvatarToCamera"]
  LOADN R3 1
  NAMECALL R0 R0 K2 ["ReportCounter"]
  CALL R0 3 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  LOADK R1 K0 ["zoomToAvatar"]
  CALL R0 1 0
  GETUPVAL R0 1
  LOADK R2 K1 ["AccessoryFittingToolZoomToAvatar"]
  LOADN R3 1
  NAMECALL R0 R0 K2 ["ReportCounter"]
  CALL R0 3 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R1 0
  LOADK R2 K0 ["autoSkinningToggled"]
  DUPTABLE R3 K2 [{"enabled"}]
  SETTABLEKS R0 R3 K1 ["enabled"]
  CALL R1 2 0
  GETUPVAL R1 1
  LOADK R3 K3 ["AccessoryFittingToolAutoSkinningToggled"]
  LOADN R4 1
  NAMECALL R1 R1 K4 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R1 0
  LOADK R2 K0 ["falloffAdjusted"]
  CALL R1 1 0
  GETUPVAL R1 1
  LOADK R3 K1 ["AccessoryFittingToolFalloffAdjusted"]
  LOADN R4 1
  NAMECALL R1 R1 K2 ["ReportCounter"]
  CALL R1 3 0
  RETURN R0 0

PROTO_16:
  JUMPIFNOT R0 [+4]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["Custom"]
  JUMP [+3]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["Default"]
  GETTABLE R5 R4 R1
  JUMPIFNOT R5 [+24]
  GETUPVAL R6 1
  MOVE R7 R5
  DUPTABLE R8 K4 [{"method", "assetId"}]
  JUMPIFNOT R3 [+6]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["PREVIEW_SELECT_METHOD"]
  GETTABLEKS R9 R10 K6 ["Thumbnail"]
  JUMP [+5]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["PREVIEW_SELECT_METHOD"]
  GETTABLEKS R9 R10 K7 ["Workspace"]
  SETTABLEKS R9 R8 K2 ["method"]
  JUMPIF R0 [+2]
  MOVE R9 R2
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K3 ["assetId"]
  CALL R6 2 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["HasPublished"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["CurrentScreen"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["RigidFlow"]
  GETIMPORT R5 K5 [os.time]
  CALL R5 0 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K6 ["StartTime"]
  SUB R4 R5 R6
  FASTCALL1 MATH_ABS R4 [+2]
  GETIMPORT R3 K9 [math.abs]
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLE R4 R5 R1
  JUMPIFNOT R4 [+34]
  GETUPVAL R5 2
  MOVE R6 R4
  DUPTABLE R7 K13 [{"flow", "didGenerate", "timeInSeconds"}]
  JUMPIFNOT R2 [+6]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K14 ["FLOW"]
  GETTABLEKS R8 R9 K15 ["Rigid"]
  JUMP [+5]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K14 ["FLOW"]
  GETTABLEKS R8 R9 K16 ["Layered"]
  SETTABLEKS R8 R7 K10 ["flow"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K17 ["PUBLISHING"]
  GETTABLEKS R8 R9 K18 ["Published"]
  JUMP [+5]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K17 ["PUBLISHING"]
  GETTABLEKS R8 R9 K19 ["Unpublished"]
  SETTABLEKS R8 R7 K11 ["didGenerate"]
  SETTABLEKS R3 R7 K12 ["timeInSeconds"]
  CALL R5 2 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["TotalLayers"]
  LOADN R2 0
  JUMPIFLT R2 R1 [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["TotalAvatars"]
  LOADN R2 1
  JUMPIFNOTLT R2 R1 [+15]
  GETUPVAL R1 1
  LOADK R2 K2 ["previewUsed"]
  DUPTABLE R3 K5 [{"layerCount", "avatarCount"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["TotalLayers"]
  SETTABLEKS R4 R3 K3 ["layerCount"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["TotalAvatars"]
  SETTABLEKS R4 R3 K4 ["avatarCount"]
  CALL R1 2 0
  GETUPVAL R1 2
  CALL R1 0 0
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 0
  NAMECALL R1 R1 K6 ["reset"]
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R1 0
  NAMECALL R1 R1 K7 ["resetSession"]
  CALL R1 1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["ANALYTICS_CONSTANTS"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  NEWTABLE R3 4 0
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["SCREENS"]
  GETTABLEKS R4 R5 K2 ["Select"]
  LOADK R5 K3 ["exitSelect"]
  SETTABLE R5 R3 R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["SCREENS"]
  GETTABLEKS R4 R5 K4 ["AssetType"]
  LOADK R5 K5 ["exitAssetType"]
  SETTABLE R5 R3 R4
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K1 ["SCREENS"]
  GETTABLEKS R4 R5 K6 ["Edit"]
  LOADK R5 K7 ["exitEdit"]
  SETTABLE R5 R3 R4
  DUPTABLE R4 K10 [{"Default", "Custom"}]
  NEWTABLE R5 4 0
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K11 ["TABS_KEYS"]
  GETTABLEKS R6 R7 K12 ["Animations"]
  LOADK R7 K13 ["defaultPreviewAnimSelected"]
  SETTABLE R7 R5 R6
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K11 ["TABS_KEYS"]
  GETTABLEKS R6 R7 K14 ["Avatars"]
  LOADK R7 K15 ["defaultPreviewAvatarSelected"]
  SETTABLE R7 R5 R6
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K11 ["TABS_KEYS"]
  GETTABLEKS R6 R7 K16 ["Clothing"]
  LOADK R7 K17 ["defaultPreviewClothingSelected"]
  SETTABLE R7 R5 R6
  SETTABLEKS R5 R4 K8 ["Default"]
  NEWTABLE R5 4 0
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K11 ["TABS_KEYS"]
  GETTABLEKS R6 R7 K12 ["Animations"]
  LOADK R7 K18 ["customPreviewAnimSelected"]
  SETTABLE R7 R5 R6
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K11 ["TABS_KEYS"]
  GETTABLEKS R6 R7 K14 ["Avatars"]
  LOADK R7 K19 ["customPreviewAvatarSelected"]
  SETTABLE R7 R5 R6
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K11 ["TABS_KEYS"]
  GETTABLEKS R6 R7 K16 ["Clothing"]
  LOADK R7 K20 ["customPreviewClothingSelected"]
  SETTABLE R7 R5 R6
  SETTABLEKS R5 R4 K9 ["Custom"]
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  NEWCLOSURE R6 P2
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  CAPTURE UPVAL U5
  CAPTURE VAL R0
  DUPTABLE R7 K35 [{"FirstAction", "CreateAccessory", "PluginOpened", "LayeredAccessoryPublished", "RigidAccessoryPublished", "LayeredAccessorySelected", "RigidAccessorySelected", "CenterAvatarToCamera", "ZoomToAvatar", "AutoSkinningToggled", "FalloffSliderAdjusted", "PreviewAssetSelected", "ExitScreen", "SessionEnded"}]
  NEWCLOSURE R8 P3
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  SETTABLEKS R8 R7 K21 ["FirstAction"]
  NEWCLOSURE R8 P4
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K22 ["CreateAccessory"]
  NEWCLOSURE R8 P5
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K23 ["PluginOpened"]
  NEWCLOSURE R8 P6
  CAPTURE VAL R2
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K24 ["LayeredAccessoryPublished"]
  NEWCLOSURE R8 P7
  CAPTURE UPVAL U5
  CAPTURE VAL R2
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K25 ["RigidAccessoryPublished"]
  NEWCLOSURE R8 P8
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K26 ["LayeredAccessorySelected"]
  NEWCLOSURE R8 P9
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K27 ["RigidAccessorySelected"]
  NEWCLOSURE R8 P10
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K28 ["CenterAvatarToCamera"]
  NEWCLOSURE R8 P11
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLEKS R8 R7 K29 ["ZoomToAvatar"]
  GETUPVAL R9 5
  CALL R9 0 1
  JUMPIFNOT R9 [+4]
  NEWCLOSURE R8 P12
  CAPTURE VAL R2
  CAPTURE VAL R0
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K30 ["AutoSkinningToggled"]
  GETUPVAL R9 5
  CALL R9 0 1
  JUMPIFNOT R9 [+4]
  NEWCLOSURE R8 P13
  CAPTURE VAL R2
  CAPTURE VAL R0
  JUMP [+1]
  LOADNIL R8
  SETTABLEKS R8 R7 K31 ["FalloffSliderAdjusted"]
  NEWCLOSURE R8 P14
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K32 ["PreviewAssetSelected"]
  NEWCLOSURE R8 P15
  CAPTURE UPVAL U4
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R1
  SETTABLEKS R8 R7 K33 ["ExitScreen"]
  NEWCLOSURE R8 P16
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K34 ["SessionEnded"]
  RETURN R7 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["AvatarToolsShared"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["AccessoryAndBodyToolShared"]
  GETTABLEKS R4 R3 K10 ["PreviewConstants"]
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K8 ["Util"]
  GETTABLEKS R6 R7 K12 ["Constants"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K8 ["Util"]
  GETTABLEKS R7 R8 K13 ["AnalyticsGlobals"]
  CALL R6 1 1
  GETTABLEKS R8 R2 K14 ["Flags"]
  GETTABLEKS R7 R8 K15 ["GetFFlagAFTSupportAdditionalAnalyticsLogging"]
  GETIMPORT R8 K17 [game]
  LOADK R10 K18 ["StudioService"]
  NAMECALL R8 R8 K19 ["GetService"]
  CALL R8 2 1
  DUPCLOSURE R9 K20 [PROTO_1]
  DUPCLOSURE R10 K21 [PROTO_19]
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R9
  RETURN R10 1
