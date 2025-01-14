MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Src"]
  GETTABLEKS R3 R4 K9 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K8 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["createUnimplemented"]
  CALL R3 1 1
  DUPTABLE R4 K19 [{"equippedItems", "addEquippedItem", "removeEquippedItem", "removeAllEquippedItems", "moveEquippedItemsToIndex", "DEPRECATED_swapEquippedItemsByIndex", "avatarAssets"}]
  NEWTABLE R5 0 0
  SETTABLEKS R5 R4 K12 ["equippedItems"]
  MOVE R5 R3
  LOADK R6 K13 ["addEquippedItem"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K13 ["addEquippedItem"]
  MOVE R5 R3
  LOADK R6 K14 ["removeEquippedItem"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K14 ["removeEquippedItem"]
  MOVE R5 R3
  LOADK R6 K15 ["removeAllEquippedItems"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K15 ["removeAllEquippedItems"]
  MOVE R5 R3
  LOADK R6 K16 ["moveEquippedItemsToIndex"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K16 ["moveEquippedItemsToIndex"]
  MOVE R5 R3
  LOADK R6 K17 ["DEPRECATED_swapEquippedItemsByIndex"]
  CALL R5 1 1
  SETTABLEKS R5 R4 K17 ["DEPRECATED_swapEquippedItemsByIndex"]
  DUPTABLE R5 K25 [{"accessories", "animation", "clothing", "emotion", "patches"}]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K20 ["accessories"]
  LOADNIL R6
  SETTABLEKS R6 R5 K21 ["animation"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K22 ["clothing"]
  LOADNIL R6
  SETTABLEKS R6 R5 K23 ["emotion"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K24 ["patches"]
  SETTABLEKS R5 R4 K18 ["avatarAssets"]
  GETTABLEKS R5 R1 K26 ["createContext"]
  MOVE R6 R4
  CALL R5 1 -1
  RETURN R5 -1
