PROTO_0:
  GETIMPORT R2 K2 [BrickColor.new]
  MOVE R3 R0
  CALL R2 1 1
  GETTABLEKS R1 R2 K3 ["Color"]
  RETURN R1 1

PROTO_1:
  FASTCALL1 TONUMBER R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [tonumber]
  CALL R1 1 1
  RETURN R1 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["map"]
  GETIMPORT R2 K3 [string.split]
  MOVE R3 R0
  LOADK R4 K4 [","]
  CALL R2 2 1
  DUPCLOSURE R3 K5 [PROTO_1]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["CatalogItemUtil"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K12 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K13 ["Flags"]
  GETTABLEKS R6 R7 K14 ["getFFlagAvatarPreviewerFixBadAssetTypes"]
  CALL R5 1 1
  GETIMPORT R6 K16 [game]
  LOADK R8 K17 ["AvatarPreviewerEyebrowIds"]
  LOADK R9 K18 ["11572097774"]
  NAMECALL R6 R6 K19 ["DefineFastString"]
  CALL R6 3 1
  GETIMPORT R7 K16 [game]
  LOADK R9 K20 ["AvatarPreviewerEyelashIds"]
  LOADK R10 K21 ["11572100557"]
  NAMECALL R7 R7 K19 ["DefineFastString"]
  CALL R7 3 1
  DUPCLOSURE R8 K22 [PROTO_0]
  DUPCLOSURE R9 K23 [PROTO_2]
  CAPTURE VAL R2
  DUPTABLE R10 K29 [{"accessories", "animations", "body", "clothing", "face"}]
  NEWTABLE R11 0 9
  GETTABLEKS R12 R3 K30 ["basicAccessoryPalette"]
  LOADK R13 K31 ["Hair"]
  GETIMPORT R14 K35 [Enum.AssetType.HairAccessory]
  NEWTABLE R15 0 10
  LOADK R16 K36 [9244021842]
  LOADK R17 K37 [9244122897]
  LOADK R18 K38 [9243987340]
  LOADK R19 K39 [9244060144]
  LOADK R20 K40 [9174353649]
  LOADK R21 K41 [7193450455]
  LOADK R22 K42 [9244067444]
  LOADK R23 K43 [9244097555]
  LOADK R24 K44 [7193445686]
  LOADK R25 K45 [7193454569]
  SETLIST R15 R16 10 [1]
  CALL R12 3 1
  GETTABLEKS R13 R3 K30 ["basicAccessoryPalette"]
  LOADK R14 K46 ["Head"]
  GETIMPORT R15 K48 [Enum.AssetType.Hat]
  MOVE R17 R5
  CALL R17 0 1
  JUMPIFNOT R17 [+14]
  NEWTABLE R16 0 9
  LOADK R17 K49 [607702162]
  LOADK R18 K50 [7951064603]
  LOADK R19 K51 [7893381364]
  LOADK R20 K52 [102619342]
  LOADK R21 K53 [1374269]
  LOADK R22 K54 [1038669]
  LOADK R23 K55 [10527448135]
  LOADK R24 K56 [89615321]
  LOADK R25 K57 [13476872]
  SETLIST R16 R17 9 [1]
  JUMP [+14]
  NEWTABLE R16 0 10
  LOADK R17 K49 [607702162]
  LOADK R18 K50 [7951064603]
  LOADK R19 K51 [7893381364]
  LOADK R20 K52 [102619342]
  LOADK R21 K53 [1374269]
  LOADK R22 K54 [1038669]
  LOADK R23 K55 [10527448135]
  LOADK R24 K56 [89615321]
  LOADK R25 K57 [13476872]
  LOADK R26 K58 [3756432119]
  SETLIST R16 R17 10 [1]
  CALL R13 3 1
  GETTABLEKS R14 R3 K30 ["basicAccessoryPalette"]
  LOADK R15 K59 ["Face"]
  GETIMPORT R16 K61 [Enum.AssetType.FaceAccessory]
  MOVE R18 R5
  CALL R18 0 1
  JUMPIFNOT R18 [+13]
  NEWTABLE R17 0 8
  LOADK R18 K62 [1192464705]
  LOADK R19 K63 [74970669]
  LOADK R20 K64 [1241185542]
  LOADK R21 K65 [20642008]
  LOADK R22 K66 [3210207381]
  LOADK R23 K67 [12313685]
  LOADK R24 K68 [158066137]
  LOADK R25 K69 [13702134]
  SETLIST R17 R18 8 [1]
  JUMP [+13]
  NEWTABLE R17 0 9
  LOADK R18 K58 [3756432119]
  LOADK R19 K62 [1192464705]
  LOADK R20 K63 [74970669]
  LOADK R21 K64 [1241185542]
  LOADK R22 K65 [20642008]
  LOADK R23 K66 [3210207381]
  LOADK R24 K67 [12313685]
  LOADK R25 K68 [158066137]
  LOADK R26 K69 [13702134]
  SETLIST R17 R18 9 [1]
  CALL R14 3 1
  GETTABLEKS R15 R3 K70 ["layeredClothingPalette"]
  LOADK R16 K71 ["Eyebrows"]
  GETIMPORT R17 K73 [Enum.AssetType.EyebrowAccessory]
  MOVE R18 R9
  MOVE R19 R6
  CALL R18 1 -1
  CALL R15 -1 1
  GETTABLEKS R16 R3 K70 ["layeredClothingPalette"]
  LOADK R17 K74 ["Eyelashes"]
  GETIMPORT R18 K76 [Enum.AssetType.EyelashAccessory]
  MOVE R19 R9
  MOVE R20 R7
  CALL R19 1 -1
  CALL R16 -1 1
  GETTABLEKS R17 R3 K30 ["basicAccessoryPalette"]
  LOADK R18 K77 ["Neck"]
  GETIMPORT R19 K79 [Enum.AssetType.NeckAccessory]
  NEWTABLE R20 0 6
  LOADK R21 K80 [13881788203]
  LOADK R22 K81 [12566318504]
  LOADK R23 K82 [12272017766]
  LOADK R24 K83 [11515295880]
  LOADK R25 K84 [12272010851]
  LOADK R26 K85 [10648495674]
  SETLIST R20 R21 6 [1]
  CALL R17 3 1
  GETTABLEKS R18 R3 K30 ["basicAccessoryPalette"]
  LOADK R19 K86 ["Shoulder"]
  GETIMPORT R20 K88 [Enum.AssetType.ShoulderAccessory]
  NEWTABLE R21 0 5
  LOADK R22 K89 [2620477453]
  LOADK R23 K90 [106709021]
  LOADK R24 K91 [7243878029]
  LOADK R25 K92 [8760832521]
  LOADK R26 K93 [6467614725]
  SETLIST R21 R22 5 [1]
  CALL R18 3 1
  GETTABLEKS R19 R3 K30 ["basicAccessoryPalette"]
  LOADK R20 K94 ["Back"]
  GETIMPORT R21 K96 [Enum.AssetType.BackAccessory]
  NEWTABLE R22 0 5
  LOADK R23 K97 [1180432276]
  LOADK R24 K98 [11821667294]
  LOADK R25 K99 [12272035364]
  LOADK R26 K100 [13820443205]
  LOADK R27 K101 [1744123855]
  SETLIST R22 R23 5 [1]
  CALL R19 3 1
  GETTABLEKS R20 R3 K30 ["basicAccessoryPalette"]
  LOADK R21 K102 ["Waist"]
  GETIMPORT R22 K104 [Enum.AssetType.WaistAccessory]
  NEWTABLE R23 0 10
  LOADK R24 K105 [791329052]
  LOADK R25 K106 [187846604]
  LOADK R26 K107 [738679517]
  LOADK R27 K108 [472507574]
  LOADK R28 K109 [3576665068]
  LOADK R29 K110 [1117719026]
  LOADK R30 K111 [8697885688]
  LOADK R31 K112 [10616839810]
  LOADK R32 K113 [3230476122]
  LOADK R33 K114 [7065897530]
  SETLIST R23 R24 10 [1]
  CALL R20 3 -1
  SETLIST R11 R12 -1 [1]
  SETTABLEKS R11 R10 K24 ["accessories"]
  NEWTABLE R11 0 3
  GETTABLEKS R12 R3 K115 ["createBodyAnimationPalette"]
  LOADK R13 K116 ["BodyRangeOfMotion"]
  NEWTABLE R14 0 1
  LOADK R15 K117 [13899730930]
  SETLIST R14 R15 1 [1]
  CALL R12 2 1
  GETTABLEKS R13 R3 K115 ["createBodyAnimationPalette"]
  LOADK R14 K118 ["Movement"]
  NEWTABLE R15 0 7
  LOADK R16 K119 [11600208470]
  LOADK R17 K120 [11600249883]
  LOADK R18 K121 [11600211410]
  LOADK R19 K122 [11600210487]
  LOADK R20 K123 [11600205519]
  LOADK R21 K124 [11600206437]
  LOADK R22 K125 [11600212676]
  SETLIST R15 R16 7 [1]
  CALL R13 2 1
  GETTABLEKS R14 R3 K115 ["createBodyAnimationPalette"]
  LOADK R15 K126 ["BodyEmotes"]
  NEWTABLE R16 0 13
  LOADK R17 K127 [10714395441]
  LOADK R18 K128 [10714374484]
  LOADK R19 K129 [10714359093]
  LOADK R20 K130 [10714388352]
  LOADK R21 K131 [10714338461]
  LOADK R22 K132 [10714389988]
  LOADK R23 K133 [10714352626]
  LOADK R24 K134 [10714360164]
  LOADK R25 K135 [10714340543]
  LOADK R26 K136 [12507085924]
  LOADK R27 K137 [11453082181]
  LOADK R28 K138 [10370351535]
  LOADK R29 K139 [10214319518]
  SETLIST R16 R17 13 [1]
  CALL R14 2 -1
  SETLIST R11 R12 -1 [1]
  SETTABLEKS R11 R10 K25 ["animations"]
  GETTABLEKS R12 R1 K140 ["List"]
  GETTABLEKS R11 R12 K141 ["join"]
  NEWTABLE R12 0 2
  GETTABLEKS R13 R3 K142 ["skinPalette"]
  NEWTABLE R14 0 74
  GETIMPORT R16 K145 [BrickColor.new]
  LOADK R17 K146 ["Dirt brown"]
  CALL R16 1 1
  GETTABLEKS R15 R16 K147 ["Color"]
  GETIMPORT R17 K145 [BrickColor.new]
  LOADK R18 K148 ["Reddish brown"]
  CALL R17 1 1
  GETTABLEKS R16 R17 K147 ["Color"]
  GETIMPORT R18 K145 [BrickColor.new]
  LOADK R19 K149 ["Brown"]
  CALL R18 1 1
  GETTABLEKS R17 R18 K147 ["Color"]
  GETIMPORT R19 K145 [BrickColor.new]
  LOADK R20 K150 ["Sand red"]
  CALL R19 1 1
  GETTABLEKS R18 R19 K147 ["Color"]
  GETIMPORT R20 K145 [BrickColor.new]
  LOADK R21 K151 ["Linen"]
  CALL R20 1 1
  GETTABLEKS R19 R20 K147 ["Color"]
  GETIMPORT R21 K145 [BrickColor.new]
  LOADK R22 K152 ["Burlap"]
  CALL R21 1 1
  GETTABLEKS R20 R21 K147 ["Color"]
  GETIMPORT R22 K145 [BrickColor.new]
  LOADK R23 K153 ["Brick yellow"]
  CALL R22 1 1
  GETTABLEKS R21 R22 K147 ["Color"]
  GETIMPORT R23 K145 [BrickColor.new]
  LOADK R24 K154 ["Medium red"]
  CALL R23 1 1
  GETTABLEKS R22 R23 K147 ["Color"]
  GETIMPORT R24 K145 [BrickColor.new]
  LOADK R25 K155 ["Dusty Rose"]
  CALL R24 1 1
  GETTABLEKS R23 R24 K147 ["Color"]
  GETIMPORT R25 K145 [BrickColor.new]
  LOADK R26 K156 ["CGA brown"]
  CALL R25 1 1
  GETTABLEKS R24 R25 K147 ["Color"]
  GETIMPORT R26 K145 [BrickColor.new]
  LOADK R27 K157 ["Dark orange"]
  CALL R26 1 1
  GETTABLEKS R25 R26 K147 ["Color"]
  GETIMPORT R27 K145 [BrickColor.new]
  LOADK R28 K158 ["Nougat"]
  CALL R27 1 1
  GETTABLEKS R26 R27 K147 ["Color"]
  GETIMPORT R28 K145 [BrickColor.new]
  LOADK R29 K159 ["Light orange"]
  CALL R28 1 1
  GETTABLEKS R27 R28 K147 ["Color"]
  GETIMPORT R29 K145 [BrickColor.new]
  LOADK R30 K160 ["Pastel brown"]
  CALL R29 1 1
  GETTABLEKS R28 R29 K147 ["Color"]
  GETIMPORT R30 K145 [BrickColor.new]
  LOADK R31 K161 ["Neon orange"]
  CALL R30 1 1
  GETTABLEKS R29 R30 K147 ["Color"]
  GETIMPORT R31 K145 [BrickColor.new]
  LOADK R32 K162 ["Bright orange"]
  CALL R31 1 1
  GETTABLEKS R30 R31 K147 ["Color"]
  SETLIST R14 R15 16 [1]
  GETIMPORT R16 K145 [BrickColor.new]
  LOADK R17 K163 ["Br. yellowish orange"]
  CALL R16 1 1
  GETTABLEKS R15 R16 K147 ["Color"]
  GETIMPORT R17 K145 [BrickColor.new]
  LOADK R18 K164 ["Deep orange"]
  CALL R17 1 1
  GETTABLEKS R16 R17 K147 ["Color"]
  GETIMPORT R18 K145 [BrickColor.new]
  LOADK R19 K165 ["Bright yellow"]
  CALL R18 1 1
  GETTABLEKS R17 R18 K147 ["Color"]
  GETIMPORT R19 K145 [BrickColor.new]
  LOADK R20 K166 ["Daisy orange"]
  CALL R19 1 1
  GETTABLEKS R18 R19 K147 ["Color"]
  GETIMPORT R20 K145 [BrickColor.new]
  LOADK R21 K167 ["Cool yellow"]
  CALL R20 1 1
  GETTABLEKS R19 R20 K147 ["Color"]
  GETIMPORT R21 K145 [BrickColor.new]
  LOADK R22 K168 ["Earth green"]
  CALL R21 1 1
  GETTABLEKS R20 R21 K147 ["Color"]
  GETIMPORT R22 K145 [BrickColor.new]
  LOADK R23 K169 ["Camo"]
  CALL R22 1 1
  GETTABLEKS R21 R22 K147 ["Color"]
  GETIMPORT R23 K145 [BrickColor.new]
  LOADK R24 K170 ["Dark green"]
  CALL R23 1 1
  GETTABLEKS R22 R23 K147 ["Color"]
  GETIMPORT R24 K145 [BrickColor.new]
  LOADK R25 K171 ["Bright green"]
  CALL R24 1 1
  GETTABLEKS R23 R24 K147 ["Color"]
  GETIMPORT R25 K145 [BrickColor.new]
  LOADK R26 K172 ["Shamrock"]
  CALL R25 1 1
  GETTABLEKS R24 R25 K147 ["Color"]
  GETIMPORT R26 K145 [BrickColor.new]
  LOADK R27 K173 ["Moss"]
  CALL R26 1 1
  GETTABLEKS R25 R26 K147 ["Color"]
  GETIMPORT R27 K145 [BrickColor.new]
  LOADK R28 K174 ["Br. yellowish green"]
  CALL R27 1 1
  GETTABLEKS R26 R27 K147 ["Color"]
  GETIMPORT R28 K145 [BrickColor.new]
  LOADK R29 K175 ["Navy blue"]
  CALL R28 1 1
  GETTABLEKS R27 R28 K147 ["Color"]
  GETIMPORT R29 K145 [BrickColor.new]
  LOADK R30 K176 ["Deep blue"]
  CALL R29 1 1
  GETTABLEKS R28 R29 K147 ["Color"]
  GETIMPORT R30 K145 [BrickColor.new]
  LOADK R31 K177 ["Really blue"]
  CALL R30 1 1
  GETTABLEKS R29 R30 K147 ["Color"]
  GETIMPORT R31 K145 [BrickColor.new]
  LOADK R32 K178 ["Bright blue"]
  CALL R31 1 1
  GETTABLEKS R30 R31 K147 ["Color"]
  SETLIST R14 R15 16 [17]
  GETIMPORT R16 K145 [BrickColor.new]
  LOADK R17 K179 ["Steel blue"]
  CALL R16 1 1
  GETTABLEKS R15 R16 K147 ["Color"]
  GETIMPORT R17 K145 [BrickColor.new]
  LOADK R18 K180 ["Medium blue"]
  CALL R17 1 1
  GETTABLEKS R16 R17 K147 ["Color"]
  GETIMPORT R18 K145 [BrickColor.new]
  LOADK R19 K181 ["Light blue"]
  CALL R18 1 1
  GETTABLEKS R17 R18 K147 ["Color"]
  GETIMPORT R19 K145 [BrickColor.new]
  LOADK R20 K182 ["Bright bluish green"]
  CALL R19 1 1
  GETTABLEKS R18 R19 K147 ["Color"]
  GETIMPORT R20 K145 [BrickColor.new]
  LOADK R21 K183 ["Teal"]
  CALL R20 1 1
  GETTABLEKS R19 R20 K147 ["Color"]
  GETIMPORT R21 K145 [BrickColor.new]
  LOADK R22 K184 ["Pastel blue-green"]
  CALL R21 1 1
  GETTABLEKS R20 R21 K147 ["Color"]
  GETIMPORT R22 K145 [BrickColor.new]
  LOADK R23 K185 ["Toothpaste"]
  CALL R22 1 1
  GETTABLEKS R21 R22 K147 ["Color"]
  GETIMPORT R23 K145 [BrickColor.new]
  LOADK R24 K186 ["Cyan"]
  CALL R23 1 1
  GETTABLEKS R22 R23 K147 ["Color"]
  GETIMPORT R24 K145 [BrickColor.new]
  LOADK R25 K187 ["Pastel Blue"]
  CALL R24 1 1
  GETTABLEKS R23 R24 K147 ["Color"]
  GETIMPORT R25 K145 [BrickColor.new]
  LOADK R26 K188 ["Pastel light blue"]
  CALL R25 1 1
  GETTABLEKS R24 R25 K147 ["Color"]
  GETIMPORT R26 K145 [BrickColor.new]
  LOADK R27 K189 ["Bright violet"]
  CALL R26 1 1
  GETTABLEKS R25 R26 K147 ["Color"]
  GETIMPORT R27 K145 [BrickColor.new]
  LOADK R28 K190 ["Lavender"]
  CALL R27 1 1
  GETTABLEKS R26 R27 K147 ["Color"]
  GETIMPORT R28 K145 [BrickColor.new]
  LOADK R29 K191 ["Lilac"]
  CALL R28 1 1
  GETTABLEKS R27 R28 K147 ["Color"]
  GETIMPORT R29 K145 [BrickColor.new]
  LOADK R30 K192 ["Magenta"]
  CALL R29 1 1
  GETTABLEKS R28 R29 K147 ["Color"]
  GETIMPORT R30 K145 [BrickColor.new]
  LOADK R31 K193 ["Royal purple"]
  CALL R30 1 1
  GETTABLEKS R29 R30 K147 ["Color"]
  GETIMPORT R31 K145 [BrickColor.new]
  LOADK R32 K194 ["Alder"]
  CALL R31 1 1
  GETTABLEKS R30 R31 K147 ["Color"]
  SETLIST R14 R15 16 [33]
  GETIMPORT R16 K145 [BrickColor.new]
  LOADK R17 K195 ["Pastel violet"]
  CALL R16 1 1
  GETTABLEKS R15 R16 K147 ["Color"]
  GETIMPORT R17 K145 [BrickColor.new]
  LOADK R18 K196 ["Bright red"]
  CALL R17 1 1
  GETTABLEKS R16 R17 K147 ["Color"]
  GETIMPORT R18 K145 [BrickColor.new]
  LOADK R19 K197 ["Really red"]
  CALL R18 1 1
  GETTABLEKS R17 R18 K147 ["Color"]
  GETIMPORT R19 K145 [BrickColor.new]
  LOADK R20 K198 ["Hot pink"]
  CALL R19 1 1
  GETTABLEKS R18 R19 K147 ["Color"]
  GETIMPORT R20 K145 [BrickColor.new]
  LOADK R21 K199 ["Pink"]
  CALL R20 1 1
  GETTABLEKS R19 R20 K147 ["Color"]
  GETIMPORT R21 K145 [BrickColor.new]
  LOADK R22 K200 ["Carnation pink"]
  CALL R21 1 1
  GETTABLEKS R20 R21 K147 ["Color"]
  GETIMPORT R22 K145 [BrickColor.new]
  LOADK R23 K201 ["Light reddish violet"]
  CALL R22 1 1
  GETTABLEKS R21 R22 K147 ["Color"]
  GETIMPORT R23 K145 [BrickColor.new]
  LOADK R24 K202 ["Pastel orange"]
  CALL R23 1 1
  GETTABLEKS R22 R23 K147 ["Color"]
  GETIMPORT R24 K145 [BrickColor.new]
  LOADK R25 K203 ["Dark taupe"]
  CALL R24 1 1
  GETTABLEKS R23 R24 K147 ["Color"]
  GETIMPORT R25 K145 [BrickColor.new]
  LOADK R26 K204 ["Cork"]
  CALL R25 1 1
  GETTABLEKS R24 R25 K147 ["Color"]
  GETIMPORT R26 K145 [BrickColor.new]
  LOADK R27 K205 ["Olive"]
  CALL R26 1 1
  GETTABLEKS R25 R26 K147 ["Color"]
  GETIMPORT R27 K145 [BrickColor.new]
  LOADK R28 K206 ["Medium green"]
  CALL R27 1 1
  GETTABLEKS R26 R27 K147 ["Color"]
  GETIMPORT R28 K145 [BrickColor.new]
  LOADK R29 K207 ["Grime"]
  CALL R28 1 1
  GETTABLEKS R27 R28 K147 ["Color"]
  GETIMPORT R29 K145 [BrickColor.new]
  LOADK R30 K208 ["Sand green"]
  CALL R29 1 1
  GETTABLEKS R28 R29 K147 ["Color"]
  GETIMPORT R30 K145 [BrickColor.new]
  LOADK R31 K209 ["Sand blue"]
  CALL R30 1 1
  GETTABLEKS R29 R30 K147 ["Color"]
  GETIMPORT R31 K145 [BrickColor.new]
  LOADK R32 K210 ["Lime green"]
  CALL R31 1 1
  GETTABLEKS R30 R31 K147 ["Color"]
  SETLIST R14 R15 16 [49]
  GETIMPORT R16 K145 [BrickColor.new]
  LOADK R17 K211 ["Pastel green"]
  CALL R16 1 1
  GETTABLEKS R15 R16 K147 ["Color"]
  GETIMPORT R17 K145 [BrickColor.new]
  LOADK R18 K212 ["New Yeller"]
  CALL R17 1 1
  GETTABLEKS R16 R17 K147 ["Color"]
  GETIMPORT R18 K145 [BrickColor.new]
  LOADK R19 K213 ["Pastel yellow"]
  CALL R18 1 1
  GETTABLEKS R17 R18 K147 ["Color"]
  GETIMPORT R19 K145 [BrickColor.new]
  LOADK R20 K214 ["Really black"]
  CALL R19 1 1
  GETTABLEKS R18 R19 K147 ["Color"]
  GETIMPORT R20 K145 [BrickColor.new]
  LOADK R21 K215 ["Black"]
  CALL R20 1 1
  GETTABLEKS R19 R20 K147 ["Color"]
  GETIMPORT R21 K145 [BrickColor.new]
  LOADK R22 K216 ["Dark stone grey"]
  CALL R21 1 1
  GETTABLEKS R20 R21 K147 ["Color"]
  GETIMPORT R22 K145 [BrickColor.new]
  LOADK R23 K217 ["Medium stone grey"]
  CALL R22 1 1
  GETTABLEKS R21 R22 K147 ["Color"]
  GETIMPORT R23 K145 [BrickColor.new]
  LOADK R24 K218 ["Mid gray"]
  CALL R23 1 1
  GETTABLEKS R22 R23 K147 ["Color"]
  GETIMPORT R24 K145 [BrickColor.new]
  LOADK R25 K219 ["Light stone grey"]
  CALL R24 1 1
  GETTABLEKS R23 R24 K147 ["Color"]
  GETIMPORT R31 K145 [BrickColor.new]
  LOADK R32 K220 ["White"]
  CALL R31 1 1
  GETTABLEKS R24 R31 K147 ["Color"]
  SETLIST R14 R15 10 [65]
  CALL R13 1 1
  GETTABLEKS R14 R3 K221 ["createHeadPalette"]
  NEWTABLE R15 0 9
  LOADK R16 K222 [10687288296]
  LOADK R17 K223 [10725626210]
  LOADK R18 K224 [11572085825]
  LOADK R19 K225 [11584333045]
  LOADK R20 K226 [9107287520]
  LOADK R21 K227 [4908014528]
  LOADK R22 K228 [11775683481]
  LOADK R23 K229 [10407915508]
  LOADK R24 K230 [13207192743]
  SETLIST R15 R16 9 [1]
  CALL R14 1 -1
  SETLIST R12 R13 -1 [1]
  GETTABLEKS R13 R3 K231 ["createBodyCategory"]
  NEWTABLE R14 0 6
  DUPTABLE R15 K237 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
  LOADK R16 K238 [10610645439]
  SETTABLEKS R16 R15 K232 ["Torso"]
  LOADK R16 K239 [10610637502]
  SETTABLEKS R16 R15 K233 ["LeftArm"]
  LOADK R16 K240 [10610642340]
  SETTABLEKS R16 R15 K234 ["RightArm"]
  LOADK R16 K241 [10610640030]
  SETTABLEKS R16 R15 K235 ["LeftLeg"]
  LOADK R16 K242 [10610643939]
  SETTABLEKS R16 R15 K236 ["RightLeg"]
  DUPTABLE R16 K237 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
  LOADK R17 K243 [11572083496]
  SETTABLEKS R17 R16 K232 ["Torso"]
  LOADK R17 K244 [11572074613]
  SETTABLEKS R17 R16 K233 ["LeftArm"]
  LOADK R17 K245 [11572079320]
  SETTABLEKS R17 R16 K234 ["RightArm"]
  LOADK R17 K246 [11572076845]
  SETTABLEKS R17 R16 K235 ["LeftLeg"]
  LOADK R17 K247 [11572081357]
  SETTABLEKS R17 R16 K236 ["RightLeg"]
  DUPTABLE R17 K237 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
  LOADK R18 K248 [11740060397]
  SETTABLEKS R18 R17 K232 ["Torso"]
  LOADK R18 K249 [11740050465]
  SETTABLEKS R18 R17 K233 ["LeftArm"]
  LOADK R18 K250 [11740055375]
  SETTABLEKS R18 R17 K234 ["RightArm"]
  LOADK R18 K251 [11740052832]
  SETTABLEKS R18 R17 K235 ["LeftLeg"]
  LOADK R18 K252 [11740057815]
  SETTABLEKS R18 R17 K236 ["RightLeg"]
  DUPTABLE R18 K237 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
  LOADK R19 K253 [11775682187]
  SETTABLEKS R19 R18 K232 ["Torso"]
  LOADK R19 K254 [11775676733]
  SETTABLEKS R19 R18 K233 ["LeftArm"]
  LOADK R19 K255 [11775679683]
  SETTABLEKS R19 R18 K234 ["RightArm"]
  LOADK R19 K0 ["script"]
  SETTABLEKS R19 R18 K235 ["LeftLeg"]
  LOADK R19 K1 [script]
  SETTABLEKS R19 R18 K236 ["RightLeg"]
  DUPTABLE R19 K237 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
  LOADK R20 K2 ["AvatarCompatibilityPreviewer"]
  SETTABLEKS R20 R19 K232 ["Torso"]
  LOADK R20 K3 ["FindFirstAncestor"]
  SETTABLEKS R20 R19 K233 ["LeftArm"]
  LOADK R20 K4 ["require"]
  SETTABLEKS R20 R19 K234 ["RightArm"]
  LOADK R20 K5 [require]
  SETTABLEKS R20 R19 K235 ["LeftLeg"]
  LOADK R20 K6 ["Packages"]
  SETTABLEKS R20 R19 K236 ["RightLeg"]
  DUPTABLE R20 K237 [{"Torso", "LeftArm", "RightArm", "LeftLeg", "RightLeg"}]
  LOADK R21 K7 ["Cryo"]
  SETTABLEKS R21 R20 K232 ["Torso"]
  LOADK R21 K8 ["Dash"]
  SETTABLEKS R21 R20 K233 ["LeftArm"]
  LOADK R21 K9 ["Src"]
  SETTABLEKS R21 R20 K234 ["RightArm"]
  LOADK R21 K10 ["Util"]
  SETTABLEKS R21 R20 K235 ["LeftLeg"]
  LOADK R21 K11 ["CatalogItemUtil"]
  SETTABLEKS R21 R20 K236 ["RightLeg"]
  SETLIST R14 R15 6 [1]
  CALL R13 1 -1
  CALL R11 -1 1
  SETTABLEKS R11 R10 K26 ["body"]
  GETTABLEKS R12 R1 K140 ["List"]
  GETTABLEKS R11 R12 K141 ["join"]
  NEWTABLE R12 0 1
  GETTABLEKS R13 R3 K70 ["layeredClothingPalette"]
  LOADK R14 K12 ["Types"]
  MOVE R16 R5
  CALL R16 0 1
  JUMPIFNOT R16 [+3]
  GETIMPORT R15 K270 [Enum.AssetType.ShirtAccessory]
  JUMP [+2]
  GETIMPORT R15 K272 [Enum.AssetType.TShirtAccessory]
  NEWTABLE R16 0 6
  LOADK R17 K17 ["AvatarPreviewerEyebrowIds"]
  LOADK R18 K18 ["11572097774"]
  LOADK R19 K19 ["DefineFastString"]
  LOADK R20 K20 ["AvatarPreviewerEyelashIds"]
  LOADK R21 K21 ["11572100557"]
  LOADK R22 K22 [PROTO_0]
  SETLIST R16 R17 6 [1]
  CALL R13 3 -1
  SETLIST R12 R13 -1 [1]
  MOVE R14 R5
  CALL R14 0 1
  JUMPIFNOT R14 [+18]
  NEWTABLE R13 0 1
  GETTABLEKS R14 R3 K70 ["layeredClothingPalette"]
  LOADK R15 K23 [PROTO_2]
  GETIMPORT R16 K272 [Enum.AssetType.TShirtAccessory]
  NEWTABLE R17 0 3
  LOADK R18 K24 ["accessories"]
  LOADK R19 K17 ["AvatarPreviewerEyebrowIds"]
  LOADK R20 K25 ["animations"]
  SETLIST R17 R18 3 [1]
  CALL R14 3 -1
  SETLIST R13 R14 -1 [1]
  JUMP [+2]
  NEWTABLE R13 0 0
  NEWTABLE R14 0 1
  GETTABLEKS R15 R3 K70 ["layeredClothingPalette"]
  LOADK R16 K26 ["body"]
  GETIMPORT R17 K284 [Enum.AssetType.JacketAccessory]
  NEWTABLE R18 0 5
  LOADK R19 K29 [{"accessories", "animations", "body", "clothing", "face"}]
  LOADK R20 K30 ["basicAccessoryPalette"]
  LOADK R21 K31 ["Hair"]
  LOADK R22 K32 ["Enum"]
  LOADK R23 K33 ["AssetType"]
  SETLIST R18 R19 5 [1]
  CALL R15 3 -1
  SETLIST R14 R15 -1 [1]
  NEWTABLE R15 0 5
  GETTABLEKS R16 R3 K70 ["layeredClothingPalette"]
  LOADK R17 K34 ["HairAccessory"]
  GETIMPORT R18 K292 [Enum.AssetType.SweaterAccessory]
  NEWTABLE R19 0 8
  LOADK R20 K37 [9244122897]
  LOADK R21 K38 [9243987340]
  LOADK R22 K39 [9244060144]
  LOADK R23 K40 [9174353649]
  LOADK R24 K41 [7193450455]
  LOADK R25 K42 [9244067444]
  LOADK R26 K43 [9244097555]
  LOADK R27 K44 [7193445686]
  SETLIST R19 R20 8 [1]
  CALL R16 3 1
  GETTABLEKS R17 R3 K70 ["layeredClothingPalette"]
  LOADK R18 K45 [7193454569]
  GETIMPORT R19 K303 [Enum.AssetType.PantsAccessory]
  NEWTABLE R20 0 5
  LOADK R21 K48 [Enum.AssetType.Hat]
  LOADK R22 K49 [607702162]
  LOADK R23 K50 [7951064603]
  LOADK R24 K51 [7893381364]
  LOADK R25 K52 [102619342]
  SETLIST R20 R21 5 [1]
  CALL R17 3 1
  GETTABLEKS R18 R3 K70 ["layeredClothingPalette"]
  LOADK R19 K53 [1374269]
  GETIMPORT R20 K311 [Enum.AssetType.ShortsAccessory]
  NEWTABLE R21 0 3
  LOADK R22 K56 [89615321]
  LOADK R23 K57 [13476872]
  LOADK R24 K58 [3756432119]
  SETLIST R21 R22 3 [1]
  CALL R18 3 1
  GETTABLEKS R19 R3 K70 ["layeredClothingPalette"]
  LOADK R20 K59 ["Face"]
  GETIMPORT R21 K317 [Enum.AssetType.DressSkirtAccessory]
  NEWTABLE R22 0 5
  LOADK R23 K62 [1192464705]
  LOADK R24 K63 [74970669]
  LOADK R25 K64 [1241185542]
  LOADK R26 K65 [20642008]
  LOADK R27 K66 [3210207381]
  SETLIST R22 R23 5 [1]
  CALL R19 3 1
  GETTABLEKS R20 R3 K323 ["shoesPalette"]
  NEWTABLE R21 0 3
  DUPTABLE R22 K326 [{"left", "right"}]
  LOADK R23 K71 ["Eyebrows"]
  SETTABLEKS R23 R22 K324 ["left"]
  LOADK R23 K72 ["EyebrowAccessory"]
  SETTABLEKS R23 R22 K325 ["right"]
  DUPTABLE R23 K326 [{"left", "right"}]
  LOADK R24 K73 [Enum.AssetType.EyebrowAccessory]
  SETTABLEKS R24 R23 K324 ["left"]
  LOADK R24 K74 ["Eyelashes"]
  SETTABLEKS R24 R23 K325 ["right"]
  DUPTABLE R24 K326 [{"left", "right"}]
  LOADK R25 K75 ["EyelashAccessory"]
  SETTABLEKS R25 R24 K324 ["left"]
  LOADK R25 K76 [Enum.AssetType.EyelashAccessory]
  SETTABLEKS R25 R24 K325 ["right"]
  SETLIST R21 R22 3 [1]
  CALL R20 1 1
  SETLIST R15 R16 5 [1]
  CALL R11 4 1
  SETTABLEKS R11 R10 K27 ["clothing"]
  NEWTABLE R11 0 1
  GETTABLEKS R12 R3 K333 ["emotionPalette"]
  NEWTABLE R13 0 6
  LOADK R14 K78 ["NeckAccessory"]
  LOADK R15 K79 [Enum.AssetType.NeckAccessory]
  LOADK R16 K80 [13881788203]
  LOADK R17 K81 [12566318504]
  LOADK R18 K82 [12272017766]
  LOADK R19 K83 [11515295880]
  SETLIST R13 R14 6 [1]
  CALL R12 1 -1
  SETLIST R11 R12 -1 [1]
  SETTABLEKS R11 R10 K28 ["face"]
  RETURN R10 1
