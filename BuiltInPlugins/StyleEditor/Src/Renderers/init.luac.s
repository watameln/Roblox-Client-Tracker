MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K8 [{"BrickColor", "Color", "ColorSequence", "FontFamily", "FontStyle", "FontWeight", "NumberSequence", "Theme"}]
  GETIMPORT R1 K10 [require]
  GETIMPORT R3 K12 [script]
  GETTABLEKS R2 R3 K13 ["BrickColorRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K0 ["BrickColor"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R3 K12 [script]
  GETTABLEKS R2 R3 K14 ["ColorRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K1 ["Color"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R4 K12 [script]
  GETTABLEKS R3 R4 K15 ["SequenceRenderers"]
  GETTABLEKS R2 R3 K16 ["ColorSequenceRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K2 ["ColorSequence"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R4 K12 [script]
  GETTABLEKS R3 R4 K17 ["FontRenderers"]
  GETTABLEKS R2 R3 K18 ["FontFamilyRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K3 ["FontFamily"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R4 K12 [script]
  GETTABLEKS R3 R4 K17 ["FontRenderers"]
  GETTABLEKS R2 R3 K19 ["FontStyleRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["FontStyle"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R4 K12 [script]
  GETTABLEKS R3 R4 K17 ["FontRenderers"]
  GETTABLEKS R2 R3 K20 ["FontWeightRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K5 ["FontWeight"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R4 K12 [script]
  GETTABLEKS R3 R4 K15 ["SequenceRenderers"]
  GETTABLEKS R2 R3 K21 ["NumberSequenceRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K6 ["NumberSequence"]
  GETIMPORT R1 K10 [require]
  GETIMPORT R3 K12 [script]
  GETTABLEKS R2 R3 K22 ["BreadcrumbRadioRenderer"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K7 ["Theme"]
  RETURN R0 1
