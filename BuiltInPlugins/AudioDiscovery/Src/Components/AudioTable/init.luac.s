PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["OnHoverRow"]
  JUMPIFNOT R1 [+10]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["OnHoverRow"]
  GETTABLEKS R2 R0 K2 ["Row"]
  GETTABLEKS R3 R0 K3 ["RowIndex"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["OnHoverRowEnd"]
  JUMPIFNOT R1 [+10]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["OnHoverRowEnd"]
  GETTABLEKS R2 R0 K2 ["Row"]
  GETTABLEKS R3 R0 K3 ["RowIndex"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["OnSelectRow"]
  JUMPIFNOT R1 [+10]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["OnSelectRow"]
  GETTABLEKS R2 R0 K2 ["Row"]
  GETTABLEKS R3 R0 K3 ["RowIndex"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["OnDoubleClick"]
  JUMPIFNOT R1 [+10]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["OnDoubleClick"]
  GETTABLEKS R2 R0 K2 ["Row"]
  GETTABLEKS R3 R0 K3 ["RowIndex"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["OnRightClickRow"]
  JUMPIFNOT R1 [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["OnRightClickRow"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  LOADK R2 K0 ["Row "]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["rowToIndex"]
  GETTABLE R3 R4 R0
  JUMPIF R3 [+5]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R4 R0
  GETIMPORT R3 K3 [tostring]
  CALL R3 1 1
  CONCAT R1 R2 R3
  RETURN R1 1

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R4 R1 K2 ["Footer"]
  JUMPIFNOT R4 [+3]
  GETTABLEKS R3 R2 K3 ["FooterHeight"]
  JUMPIF R3 [+1]
  LOADN R3 0
  GETTABLEKS R7 R0 K5 ["AbsoluteSize"]
  GETTABLEKS R6 R7 K6 ["Y"]
  GETTABLEKS R8 R2 K7 ["HeaderHeight"]
  ADD R7 R8 R3
  SUB R5 R6 R7
  SUBK R4 R5 K4 [5]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K0 ["props"]
  GETTABLEKS R5 R6 K8 ["OnSizeChange"]
  MOVE R6 R4
  CALL R5 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R4 R0 K0 ["props"]
  GETTABLEKS R3 R4 K1 ["Rows"]
  NAMECALL R1 R0 K2 ["calculateRowIndices"]
  CALL R1 2 0
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K3 ["onHoverRow"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["onHoverRowEnd"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K5 ["onSelectRow"]
  NEWCLOSURE R1 P3
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K6 ["onDoubleClick"]
  NEWCLOSURE R1 P4
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K7 ["onRightClickRow"]
  NAMECALL R1 R0 K8 ["_flushRenderRow"]
  CALL R1 1 0
  NEWCLOSURE R1 P5
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K9 ["getDefaultRowKey"]
  NEWCLOSURE R1 P6
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K10 ["onSizeChange"]
  RETURN R0 0

PROTO_8:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["rowToIndex"]
  GETTABLE R1 R2 R0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["props"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["props"]
  GETTABLEKS R3 R4 K2 ["RowComponent"]
  JUMPIF R3 [+1]
  GETUPVAL R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["createElement"]
  MOVE R5 R3
  DUPTABLE R6 K16 [{"CellProps", "CellComponent", "Columns", "Rows", "Row", "RowIndex", "Selected", "OnHover", "OnHoverEnd", "OnPress", "OnDoubleClick", "OnRightClick"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["props"]
  GETTABLEKS R7 R8 K4 ["CellProps"]
  SETTABLEKS R7 R6 K4 ["CellProps"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["props"]
  GETTABLEKS R7 R8 K5 ["CellComponent"]
  SETTABLEKS R7 R6 K5 ["CellComponent"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["props"]
  GETTABLEKS R7 R8 K6 ["Columns"]
  SETTABLEKS R7 R6 K6 ["Columns"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["props"]
  GETTABLEKS R7 R8 K7 ["Rows"]
  SETTABLEKS R7 R6 K7 ["Rows"]
  SETTABLEKS R0 R6 K8 ["Row"]
  SETTABLEKS R1 R6 K9 ["RowIndex"]
  GETTABLEKS R8 R2 K17 ["SelectedRow"]
  JUMPIFEQ R1 R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  SETTABLEKS R7 R6 K10 ["Selected"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["props"]
  GETTABLEKS R7 R8 K18 ["OnHoverRow"]
  JUMPIFNOT R7 [+3]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K19 ["onHoverRow"]
  SETTABLEKS R7 R6 K11 ["OnHover"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["props"]
  GETTABLEKS R7 R8 K20 ["OnHoverRowEnd"]
  JUMPIFNOT R7 [+3]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K21 ["onHoverRowEnd"]
  SETTABLEKS R7 R6 K12 ["OnHoverEnd"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["props"]
  GETTABLEKS R7 R8 K22 ["OnSelectRow"]
  JUMPIFNOT R7 [+3]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K23 ["onSelectRow"]
  SETTABLEKS R7 R6 K13 ["OnPress"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K1 ["props"]
  GETTABLEKS R7 R8 K14 ["OnDoubleClick"]
  JUMPIFNOT R7 [+3]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K24 ["onDoubleClick"]
  SETTABLEKS R7 R6 K14 ["OnDoubleClick"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K25 ["onRightClickRow"]
  SETTABLEKS R7 R6 K15 ["OnRightClick"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_9:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K0 ["onRenderRow"]
  RETURN R0 0

PROTO_10:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Columns"]
  GETTABLE R2 R3 R1
  GETTABLEKS R4 R2 K1 ["Width"]
  GETTABLEKS R5 R0 K1 ["Width"]
  JUMPIFNOTEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  RETURN R3 1

PROTO_11:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["Rows"]
  GETTABLEKS R4 R1 K1 ["Rows"]
  JUMPIFEQ R3 R4 [+6]
  GETTABLEKS R5 R1 K1 ["Rows"]
  NAMECALL R3 R0 K2 ["calculateRowIndices"]
  CALL R3 2 0
  GETTABLEKS R3 R2 K3 ["Columns"]
  GETTABLEKS R4 R1 K3 ["Columns"]
  JUMPIFEQ R3 R4 [+22]
  GETTABLEKS R5 R2 K3 ["Columns"]
  LENGTH R4 R5
  GETTABLEKS R6 R1 K3 ["Columns"]
  LENGTH R5 R6
  JUMPIFNOTEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R4 0
  GETTABLEKS R5 R2 K3 ["Columns"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R1
  CALL R4 2 1
  JUMPIF R3 [+1]
  JUMPIFNOT R4 [+3]
  NAMECALL R5 R0 K4 ["_flushRenderRow"]
  CALL R5 1 0
  RETURN R0 0

PROTO_12:
  MOVE R2 R1
  MOVE R3 R0
  RETURN R2 2

PROTO_13:
  GETUPVAL R2 0
  MOVE R3 R1
  DUPCLOSURE R4 K0 [PROTO_12]
  CALL R2 2 1
  SETTABLEKS R2 R0 K1 ["rowToIndex"]
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["Width"]
  JUMPIF R1 [+10]
  GETIMPORT R1 K3 [UDim.new]
  LOADN R3 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["Columns"]
  LENGTH R4 R5
  DIV R2 R3 R4
  LOADN R3 0
  CALL R1 2 1
  RETURN R1 1

PROTO_15:
  GETTABLEKS R1 R0 K0 ["MinWidth"]
  JUMPIF R1 [+1]
  GETUPVAL R1 0
  RETURN R1 1

PROTO_16:
  GETUPVAL R1 0
  GETIMPORT R2 K3 [Enum.SortDirection.Descending]
  JUMPIFNOTEQ R1 R2 [+4]
  GETIMPORT R0 K5 [Enum.SortDirection.Ascending]
  JUMP [+2]
  GETIMPORT R0 K3 [Enum.SortDirection.Descending]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["props"]
  GETTABLEKS R1 R2 K7 ["OnSortChange"]
  GETUPVAL R2 2
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["SortIndex"]
  JUMPIFNOTEQ R3 R1 [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["SortOrder"]
  JUMPIF R2 [+1]
  LOADNIL R2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K9 [{"Name", "Order", "Width", "ColumnIndex", "Style", "OnPress"}]
  GETTABLEKS R6 R0 K3 ["Name"]
  SETTABLEKS R6 R5 K3 ["Name"]
  SETTABLEKS R2 R5 K4 ["Order"]
  GETIMPORT R6 K12 [UDim.new]
  LOADN R7 1
  LOADN R8 0
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["Width"]
  SETTABLEKS R1 R5 K6 ["ColumnIndex"]
  GETUPVAL R6 3
  SETTABLEKS R6 R5 K7 ["Style"]
  GETUPVAL R9 4
  GETTABLEKS R8 R9 K13 ["props"]
  GETTABLEKS R7 R8 K14 ["OnSortChange"]
  JUMPIFNOT R7 [+5]
  NEWCLOSURE R6 P0
  CAPTURE VAL R2
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  JUMPIF R6 [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K8 ["OnPress"]
  CALL R3 2 -1
  RETURN R3 -1

PROTO_18:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETUPVAL R3 0
  GETTABLEKS R4 R1 K2 ["Columns"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CALL R3 2 1
  GETUPVAL R4 0
  GETTABLEKS R5 R1 K2 ["Columns"]
  DUPCLOSURE R6 K3 [PROTO_15]
  CAPTURE UPVAL U1
  CALL R4 2 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K10 [{"UseScale", "ClampSize", "Sizes", "MinSizes", "OnSizesChange"}]
  GETTABLEKS R8 R1 K5 ["UseScale"]
  SETTABLEKS R8 R7 K5 ["UseScale"]
  GETTABLEKS R8 R1 K6 ["ClampSize"]
  SETTABLEKS R8 R7 K6 ["ClampSize"]
  SETTABLEKS R3 R7 K7 ["Sizes"]
  SETTABLEKS R4 R7 K8 ["MinSizes"]
  GETTABLEKS R8 R1 K11 ["OnColumnSizesChange"]
  SETTABLEKS R8 R7 K9 ["OnSizesChange"]
  GETUPVAL R8 0
  GETTABLEKS R9 R1 K2 ["Columns"]
  NEWCLOSURE R10 P2
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U4
  CAPTURE VAL R2
  CAPTURE VAL R0
  CALL R8 2 -1
  CALL R5 -1 -1
  RETURN R5 -1

PROTO_19:
  GETUPVAL R1 0
  GETIMPORT R2 K3 [Enum.SortDirection.Descending]
  JUMPIFNOTEQ R1 R2 [+4]
  GETIMPORT R0 K5 [Enum.SortDirection.Ascending]
  JUMPIF R0 [+2]
  GETIMPORT R0 K3 [Enum.SortDirection.Descending]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K6 ["props"]
  GETTABLEKS R1 R2 K7 ["OnSortChange"]
  GETUPVAL R2 2
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_20:
  GETTABLEKS R2 R0 K0 ["Width"]
  JUMPIF R2 [+10]
  GETIMPORT R2 K3 [UDim.new]
  LOADN R4 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["Columns"]
  LENGTH R5 R6
  DIV R3 R4 R5
  LOADN R4 0
  CALL R2 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["SortIndex"]
  JUMPIFNOTEQ R4 R1 [+5]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["SortOrder"]
  JUMPIF R3 [+1]
  LOADNIL R3
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K7 ["createElement"]
  GETUPVAL R5 2
  DUPTABLE R6 K13 [{"Name", "Order", "Width", "ColumnIndex", "Style", "OnPress"}]
  GETTABLEKS R7 R0 K8 ["Name"]
  SETTABLEKS R7 R6 K8 ["Name"]
  SETTABLEKS R3 R6 K9 ["Order"]
  SETTABLEKS R2 R6 K0 ["Width"]
  SETTABLEKS R1 R6 K10 ["ColumnIndex"]
  GETUPVAL R7 3
  SETTABLEKS R7 R6 K11 ["Style"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K14 ["props"]
  GETTABLEKS R8 R9 K15 ["OnSortChange"]
  JUMPIFNOT R8 [+5]
  NEWCLOSURE R7 P0
  CAPTURE VAL R3
  CAPTURE UPVAL U4
  CAPTURE VAL R1
  JUMPIF R7 [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K12 ["OnPress"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_21:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETUPVAL R3 0
  GETTABLEKS R4 R1 K2 ["Columns"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  CAPTURE VAL R0
  CALL R3 2 -1
  RETURN R3 -1

PROTO_22:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["OnColumnSizesChange"]
  JUMPIFNOT R2 [+4]
  NAMECALL R2 R0 K2 ["renderResizableHeadings"]
  CALL R2 1 -1
  RETURN R2 -1
  NAMECALL R2 R0 K3 ["renderFixedHeadings"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_23:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"AutomaticCanvasSize", "CanvasSize"}]
  GETIMPORT R4 K7 [Enum.AutomaticSize.Y]
  SETTABLEKS R4 R3 K1 ["AutomaticCanvasSize"]
  GETIMPORT R4 K10 [UDim2.fromOffset]
  LOADN R5 0
  LOADN R6 0
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["CanvasSize"]
  DUPTABLE R4 K12 [{"Group"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K16 [{"AutomaticSize", "Size", "Layout", "HorizontalAlignment"}]
  GETIMPORT R8 K7 [Enum.AutomaticSize.Y]
  SETTABLEKS R8 R7 K5 ["AutomaticSize"]
  GETIMPORT R8 K18 [UDim2.fromScale]
  LOADN R9 1
  LOADN R10 0
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["Size"]
  GETIMPORT R8 K21 [Enum.FillDirection.Vertical]
  SETTABLEKS R8 R7 K14 ["Layout"]
  GETIMPORT R8 K23 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R8 R7 K15 ["HorizontalAlignment"]
  DUPTABLE R8 K25 [{"Children"}]
  NAMECALL R9 R0 K26 ["renderRows"]
  CALL R9 1 1
  SETTABLEKS R9 R8 K24 ["Children"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K11 ["Group"]
  CALL R1 3 -1
  RETURN R1 -1

PROTO_24:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K3 [{"LayoutOrder", "AutomaticSize"}]
  SETTABLEKS R1 R4 K1 ["LayoutOrder"]
  GETIMPORT R5 K6 [Enum.AutomaticSize.XY]
  SETTABLEKS R5 R4 K2 ["AutomaticSize"]
  DUPTABLE R5 K8 [{"Row"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K9 ["onRenderRow"]
  MOVE R7 R0
  CALL R6 1 1
  SETTABLEKS R6 R5 K7 ["Row"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_25:
  GETTABLEKS R1 R0 K0 ["props"]
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K1 ["Rows"]
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["createFragment"]
  MOVE R4 R2
  CALL R3 1 -1
  RETURN R3 -1

PROTO_26:
  GETTABLEKS R3 R1 K0 ["Width"]
  JUMPIFNOT R3 [+5]
  GETTABLEKS R3 R1 K0 ["Width"]
  GETTABLEKS R2 R3 K1 ["Offset"]
  JUMP [+1]
  LOADN R2 0
  ADD R3 R0 R2
  RETURN R3 1

PROTO_27:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  NAMECALL R3 R0 K2 ["renderHeadings"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K3 ["ShowFooter"]
  GETTABLEKS R5 R1 K4 ["ShowHeader"]
  JUMPIFNOTEQKNIL R5 [+2]
  LOADB R5 1
  JUMPIFNOTEQKNIL R4 [+7]
  GETTABLEKS R6 R1 K5 ["Footer"]
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  JUMPIFNOT R5 [+3]
  GETTABLEKS R6 R2 K6 ["HeaderHeight"]
  JUMPIF R6 [+1]
  LOADN R6 0
  JUMPIFNOT R4 [+3]
  GETTABLEKS R7 R2 K7 ["FooterHeight"]
  JUMPIF R7 [+1]
  LOADN R7 0
  GETTABLEKS R9 R1 K8 ["Scroll"]
  JUMPIFNOT R9 [+4]
  NAMECALL R8 R0 K9 ["renderScroll"]
  CALL R8 1 1
  JUMPIF R8 [+3]
  NAMECALL R8 R0 K10 ["renderRows"]
  CALL R8 1 1
  MOVE R9 R5
  JUMPIFNOT R9 [+33]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K11 ["createElement"]
  GETUPVAL R10 1
  DUPTABLE R11 K18 [{"Layout", "LayoutOrder", "Size", "Style", "BorderColor3", "BorderSizePixel"}]
  GETIMPORT R12 K22 [Enum.FillDirection.Horizontal]
  SETTABLEKS R12 R11 K12 ["Layout"]
  LOADN R12 1
  SETTABLEKS R12 R11 K13 ["LayoutOrder"]
  GETIMPORT R12 K25 [UDim2.new]
  LOADN R13 1
  LOADN R14 248
  LOADN R15 0
  MOVE R16 R6
  CALL R12 4 1
  SETTABLEKS R12 R11 K14 ["Size"]
  LOADK R12 K26 ["SubtleBox"]
  SETTABLEKS R12 R11 K15 ["Style"]
  GETTABLEKS R12 R2 K27 ["Border"]
  SETTABLEKS R12 R11 K16 ["BorderColor3"]
  LOADN R12 1
  SETTABLEKS R12 R11 K17 ["BorderSizePixel"]
  MOVE R12 R3
  CALL R9 3 1
  GETTABLEKS R10 R1 K28 ["OnColumnSizesChange"]
  JUMPIFNOT R10 [+7]
  GETTABLEKS R11 R1 K29 ["UseScale"]
  NOT R10 R11
  JUMPIFNOT R10 [+3]
  GETTABLEKS R11 R1 K30 ["ClampSize"]
  NOT R10 R11
  LOADN R11 0
  GETIMPORT R12 K25 [UDim2.new]
  LOADN R13 1
  LOADN R14 0
  LOADN R15 1
  ADD R17 R6 R7
  MINUS R16 R17
  CALL R12 4 1
  JUMPIFNOT R10 [+19]
  GETUPVAL R13 2
  GETTABLEKS R14 R1 K31 ["Columns"]
  DUPCLOSURE R15 K32 [PROTO_26]
  LOADN R16 0
  CALL R13 3 1
  MOVE R11 R13
  LOADN R13 0
  JUMPIFNOTLT R13 R11 [+10]
  GETIMPORT R13 K25 [UDim2.new]
  LOADN R14 0
  MOVE R15 R11
  LOADN R16 1
  ADD R18 R6 R7
  MINUS R17 R18
  CALL R13 4 1
  MOVE R12 R13
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K11 ["createElement"]
  GETUPVAL R14 1
  NEWTABLE R15 8 0
  GETIMPORT R16 K35 [Enum.VerticalAlignment.Top]
  SETTABLEKS R16 R15 K33 ["VerticalAlignment"]
  GETIMPORT R16 K38 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R16 R15 K36 ["HorizontalAlignment"]
  GETIMPORT R16 K40 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K12 ["Layout"]
  LOADN R16 2
  SETTABLEKS R16 R15 K41 ["Padding"]
  LOADN R16 2
  SETTABLEKS R16 R15 K13 ["LayoutOrder"]
  SETTABLEKS R12 R15 K14 ["Size"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K42 ["Event"]
  GETTABLEKS R16 R17 K43 ["MouseLeave"]
  GETTABLEKS R17 R1 K44 ["OnMouseLeave"]
  SETTABLE R17 R15 R16
  DUPTABLE R16 K46 [{"Child"}]
  SETTABLEKS R8 R16 K45 ["Child"]
  CALL R13 3 1
  LOADNIL R14
  JUMPIFNOT R10 [+41]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K11 ["createElement"]
  GETUPVAL R16 3
  DUPTABLE R17 K49 [{"CanvasSize", "ScrollingDirection"}]
  GETIMPORT R18 K51 [UDim2.fromOffset]
  MOVE R19 R11
  LOADN R20 0
  CALL R18 2 1
  SETTABLEKS R18 R17 K47 ["CanvasSize"]
  GETIMPORT R18 K53 [Enum.ScrollingDirection.X]
  SETTABLEKS R18 R17 K48 ["ScrollingDirection"]
  DUPTABLE R18 K46 [{"Child"}]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K11 ["createElement"]
  GETUPVAL R20 1
  DUPTABLE R21 K54 [{"Layout", "HorizontalAlignment"}]
  GETIMPORT R22 K40 [Enum.FillDirection.Vertical]
  SETTABLEKS R22 R21 K12 ["Layout"]
  GETIMPORT R22 K38 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R22 R21 K36 ["HorizontalAlignment"]
  DUPTABLE R22 K57 [{"Header", "List"}]
  SETTABLEKS R9 R22 K55 ["Header"]
  SETTABLEKS R13 R22 K56 ["List"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K45 ["Child"]
  CALL R15 3 1
  MOVE R14 R15
  JUMP [+10]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K58 ["createFragment"]
  DUPTABLE R16 K57 [{"Header", "List"}]
  SETTABLEKS R9 R16 K55 ["Header"]
  SETTABLEKS R13 R16 K56 ["List"]
  CALL R15 1 1
  MOVE R14 R15
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K11 ["createElement"]
  GETUPVAL R16 1
  NEWTABLE R17 8 0
  GETTABLEKS R18 R1 K14 ["Size"]
  SETTABLEKS R18 R17 K14 ["Size"]
  GETIMPORT R18 K40 [Enum.FillDirection.Vertical]
  SETTABLEKS R18 R17 K12 ["Layout"]
  GETIMPORT R18 K38 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R18 R17 K36 ["HorizontalAlignment"]
  LOADK R18 K59 ["BorderBox"]
  SETTABLEKS R18 R17 K15 ["Style"]
  LOADN R18 1
  SETTABLEKS R18 R17 K41 ["Padding"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K60 ["Change"]
  GETTABLEKS R18 R19 K61 ["AbsoluteSize"]
  GETTABLEKS R20 R1 K62 ["OnSizeChange"]
  JUMPIFNOT R20 [+3]
  GETTABLEKS R19 R0 K63 ["onSizeChange"]
  JUMPIF R19 [+1]
  LOADNIL R19
  SETTABLE R19 R17 R18
  DUPTABLE R18 K64 [{"Top", "Footer"}]
  SETTABLEKS R14 R18 K34 ["Top"]
  MOVE R19 R4
  JUMPIFNOT R19 [+33]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K11 ["createElement"]
  GETUPVAL R20 1
  DUPTABLE R21 K65 [{"LayoutOrder", "Style", "BorderColor3", "BorderSizePixel", "Size"}]
  LOADN R22 3
  SETTABLEKS R22 R21 K13 ["LayoutOrder"]
  LOADK R22 K26 ["SubtleBox"]
  SETTABLEKS R22 R21 K15 ["Style"]
  GETTABLEKS R22 R2 K27 ["Border"]
  SETTABLEKS R22 R21 K16 ["BorderColor3"]
  LOADN R22 1
  SETTABLEKS R22 R21 K17 ["BorderSizePixel"]
  GETIMPORT R22 K25 [UDim2.new]
  LOADN R23 1
  LOADN R24 0
  LOADN R25 0
  MOVE R26 R7
  CALL R22 4 1
  SETTABLEKS R22 R21 K14 ["Size"]
  DUPTABLE R22 K67 [{"Content"}]
  GETTABLEKS R23 R1 K5 ["Footer"]
  SETTABLEKS R23 R22 K66 ["Content"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K5 ["Footer"]
  CALL R15 3 -1
  RETURN R15 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R2 K10 ["UI"]
  GETTABLEKS R6 R5 K11 ["TableRow"]
  GETTABLEKS R7 R2 K12 ["Dash"]
  GETTABLEKS R8 R7 K13 ["map"]
  GETTABLEKS R9 R7 K14 ["collect"]
  GETTABLEKS R10 R7 K15 ["reduce"]
  GETTABLEKS R11 R7 K16 ["some"]
  GETTABLEKS R12 R5 K17 ["Pane"]
  GETTABLEKS R13 R5 K18 ["ScrollingFrame"]
  GETTABLEKS R14 R5 K19 ["SplitPane"]
  GETIMPORT R15 K4 [require]
  GETIMPORT R17 K1 [script]
  GETTABLEKS R16 R17 K20 ["TableHeaderCell"]
  CALL R15 1 1
  GETTABLEKS R16 R1 K21 ["PureComponent"]
  LOADK R18 K22 ["AudioTable"]
  NAMECALL R16 R16 K23 ["extend"]
  CALL R16 2 1
  GETIMPORT R17 K26 [UDim.new]
  LOADN R18 0
  LOADN R19 50
  CALL R17 2 1
  DUPCLOSURE R18 K27 [PROTO_7]
  SETTABLEKS R18 R16 K28 ["init"]
  DUPCLOSURE R18 K29 [PROTO_9]
  CAPTURE VAL R6
  CAPTURE VAL R1
  SETTABLEKS R18 R16 K30 ["_flushRenderRow"]
  DUPCLOSURE R18 K31 [PROTO_11]
  CAPTURE VAL R11
  SETTABLEKS R18 R16 K32 ["willUpdate"]
  DUPCLOSURE R18 K33 [PROTO_13]
  CAPTURE VAL R9
  SETTABLEKS R18 R16 K34 ["calculateRowIndices"]
  DUPCLOSURE R18 K35 [PROTO_18]
  CAPTURE VAL R8
  CAPTURE VAL R17
  CAPTURE VAL R1
  CAPTURE VAL R14
  CAPTURE VAL R15
  SETTABLEKS R18 R16 K36 ["renderResizableHeadings"]
  DUPCLOSURE R18 K37 [PROTO_21]
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R15
  SETTABLEKS R18 R16 K38 ["renderFixedHeadings"]
  DUPCLOSURE R18 K39 [PROTO_22]
  SETTABLEKS R18 R16 K40 ["renderHeadings"]
  DUPCLOSURE R18 K41 [PROTO_23]
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R12
  SETTABLEKS R18 R16 K42 ["renderScroll"]
  DUPCLOSURE R18 K43 [PROTO_25]
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R12
  SETTABLEKS R18 R16 K44 ["renderRows"]
  DUPCLOSURE R18 K45 [PROTO_27]
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R13
  SETTABLEKS R18 R16 K46 ["render"]
  MOVE R18 R4
  DUPTABLE R19 K48 [{"Stylizer"}]
  GETTABLEKS R20 R3 K47 ["Stylizer"]
  SETTABLEKS R20 R19 K47 ["Stylizer"]
  CALL R18 1 1
  MOVE R19 R16
  CALL R18 1 1
  MOVE R16 R18
  RETURN R16 1
