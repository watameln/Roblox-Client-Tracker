MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Rodux"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["src"]
  GETTABLEKS R4 R5 K8 ["reducers"]
  GETTABLEKS R3 R4 K9 ["PluginReducer"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["src"]
  GETTABLEKS R5 R6 K8 ["reducers"]
  GETTABLEKS R4 R5 K10 ["ErrorReducer"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K11 ["combineReducers"]
  DUPTABLE R5 K14 [{"plugin", "error"}]
  SETTABLEKS R2 R5 K12 ["plugin"]
  SETTABLEKS R3 R5 K13 ["error"]
  CALL R4 1 -1
  RETURN R4 -1
