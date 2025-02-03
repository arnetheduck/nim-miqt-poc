import Qt6Widgets_libs

{.push raises: [].}

from system/ansi_c import c_free

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: cstring

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: openArray[byte]): string {.used.} =
  if v.len > 0:
    result = newString(v.len)
    when nimvm:
      for i, c in v:
        result[i] = cast[char](c)
    else:
      copyMem(addr result[0], unsafeAddr v[0], v.len)

const cflags = gorge("pkg-config -cflags Qt6Widgets")
{.compile("gen_qaccessible.cpp", cflags).}


type QAccessibleTableModelChangeEventModelChangeType* = cint
const
  QAccessibleTableModelChangeEventModelReset* = 0
  QAccessibleTableModelChangeEventDataChanged* = 1
  QAccessibleTableModelChangeEventRowsInserted* = 2
  QAccessibleTableModelChangeEventColumnsInserted* = 3
  QAccessibleTableModelChangeEventRowsRemoved* = 4
  QAccessibleTableModelChangeEventColumnsRemoved* = 5



import gen_qaccessible_types
export gen_qaccessible_types

import
  gen_qaccessible_base,
  gen_qcolor,
  gen_qobject,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qvariant,
  gen_qwindow
export
  gen_qaccessible_base,
  gen_qcolor,
  gen_qobject,
  gen_qpoint,
  gen_qrect,
  gen_qsize,
  gen_qvariant,
  gen_qwindow

type cQAccessibleInterface*{.exportc: "QAccessibleInterface", incompleteStruct.} = object
type cQAccessibleTextInterface*{.exportc: "QAccessibleTextInterface", incompleteStruct.} = object
type cQAccessibleEditableTextInterface*{.exportc: "QAccessibleEditableTextInterface", incompleteStruct.} = object
type cQAccessibleValueInterface*{.exportc: "QAccessibleValueInterface", incompleteStruct.} = object
type cQAccessibleTableCellInterface*{.exportc: "QAccessibleTableCellInterface", incompleteStruct.} = object
type cQAccessibleTableInterface*{.exportc: "QAccessibleTableInterface", incompleteStruct.} = object
type cQAccessibleActionInterface*{.exportc: "QAccessibleActionInterface", incompleteStruct.} = object
type cQAccessibleImageInterface*{.exportc: "QAccessibleImageInterface", incompleteStruct.} = object
type cQAccessibleHyperlinkInterface*{.exportc: "QAccessibleHyperlinkInterface", incompleteStruct.} = object
type cQAccessibleEvent*{.exportc: "QAccessibleEvent", incompleteStruct.} = object
type cQAccessibleStateChangeEvent*{.exportc: "QAccessibleStateChangeEvent", incompleteStruct.} = object
type cQAccessibleTextCursorEvent*{.exportc: "QAccessibleTextCursorEvent", incompleteStruct.} = object
type cQAccessibleTextSelectionEvent*{.exportc: "QAccessibleTextSelectionEvent", incompleteStruct.} = object
type cQAccessibleTextInsertEvent*{.exportc: "QAccessibleTextInsertEvent", incompleteStruct.} = object
type cQAccessibleTextRemoveEvent*{.exportc: "QAccessibleTextRemoveEvent", incompleteStruct.} = object
type cQAccessibleTextUpdateEvent*{.exportc: "QAccessibleTextUpdateEvent", incompleteStruct.} = object
type cQAccessibleValueChangeEvent*{.exportc: "QAccessibleValueChangeEvent", incompleteStruct.} = object
type cQAccessibleTableModelChangeEvent*{.exportc: "QAccessibleTableModelChangeEvent", incompleteStruct.} = object

proc fcQAccessibleInterface_isValid(self: pointer, ): bool {.importc: "QAccessibleInterface_isValid".}
proc fcQAccessibleInterface_objectX(self: pointer, ): pointer {.importc: "QAccessibleInterface_object".}
proc fcQAccessibleInterface_window(self: pointer, ): pointer {.importc: "QAccessibleInterface_window".}
proc fcQAccessibleInterface_relations(self: pointer, match: cint): struct_miqt_array {.importc: "QAccessibleInterface_relations".}
proc fcQAccessibleInterface_focusChild(self: pointer, ): pointer {.importc: "QAccessibleInterface_focusChild".}
proc fcQAccessibleInterface_childAt(self: pointer, x: cint, y: cint): pointer {.importc: "QAccessibleInterface_childAt".}
proc fcQAccessibleInterface_parent(self: pointer, ): pointer {.importc: "QAccessibleInterface_parent".}
proc fcQAccessibleInterface_child(self: pointer, index: cint): pointer {.importc: "QAccessibleInterface_child".}
proc fcQAccessibleInterface_childCount(self: pointer, ): cint {.importc: "QAccessibleInterface_childCount".}
proc fcQAccessibleInterface_indexOfChild(self: pointer, param1: pointer): cint {.importc: "QAccessibleInterface_indexOfChild".}
proc fcQAccessibleInterface_text(self: pointer, t: cint): struct_miqt_string {.importc: "QAccessibleInterface_text".}
proc fcQAccessibleInterface_setText(self: pointer, t: cint, text: struct_miqt_string): void {.importc: "QAccessibleInterface_setText".}
proc fcQAccessibleInterface_rect(self: pointer, ): pointer {.importc: "QAccessibleInterface_rect".}
proc fcQAccessibleInterface_role(self: pointer, ): cint {.importc: "QAccessibleInterface_role".}
proc fcQAccessibleInterface_state(self: pointer, ): pointer {.importc: "QAccessibleInterface_state".}
proc fcQAccessibleInterface_foregroundColor(self: pointer, ): pointer {.importc: "QAccessibleInterface_foregroundColor".}
proc fcQAccessibleInterface_backgroundColor(self: pointer, ): pointer {.importc: "QAccessibleInterface_backgroundColor".}
proc fcQAccessibleInterface_textInterface(self: pointer, ): pointer {.importc: "QAccessibleInterface_textInterface".}
proc fcQAccessibleInterface_editableTextInterface(self: pointer, ): pointer {.importc: "QAccessibleInterface_editableTextInterface".}
proc fcQAccessibleInterface_valueInterface(self: pointer, ): pointer {.importc: "QAccessibleInterface_valueInterface".}
proc fcQAccessibleInterface_actionInterface(self: pointer, ): pointer {.importc: "QAccessibleInterface_actionInterface".}
proc fcQAccessibleInterface_imageInterface(self: pointer, ): pointer {.importc: "QAccessibleInterface_imageInterface".}
proc fcQAccessibleInterface_tableInterface(self: pointer, ): pointer {.importc: "QAccessibleInterface_tableInterface".}
proc fcQAccessibleInterface_tableCellInterface(self: pointer, ): pointer {.importc: "QAccessibleInterface_tableCellInterface".}
proc fcQAccessibleInterface_hyperlinkInterface(self: pointer, ): pointer {.importc: "QAccessibleInterface_hyperlinkInterface".}
proc fcQAccessibleInterface_virtualHook(self: pointer, id: cint, data: pointer): void {.importc: "QAccessibleInterface_virtualHook".}
proc fcQAccessibleInterface_interfaceCast(self: pointer, param1: cint): pointer {.importc: "QAccessibleInterface_interfaceCast".}
proc fcQAccessibleTextInterface_selection(self: pointer, selectionIndex: cint, startOffset: ptr cint, endOffset: ptr cint): void {.importc: "QAccessibleTextInterface_selection".}
proc fcQAccessibleTextInterface_selectionCount(self: pointer, ): cint {.importc: "QAccessibleTextInterface_selectionCount".}
proc fcQAccessibleTextInterface_addSelection(self: pointer, startOffset: cint, endOffset: cint): void {.importc: "QAccessibleTextInterface_addSelection".}
proc fcQAccessibleTextInterface_removeSelection(self: pointer, selectionIndex: cint): void {.importc: "QAccessibleTextInterface_removeSelection".}
proc fcQAccessibleTextInterface_setSelection(self: pointer, selectionIndex: cint, startOffset: cint, endOffset: cint): void {.importc: "QAccessibleTextInterface_setSelection".}
proc fcQAccessibleTextInterface_cursorPosition(self: pointer, ): cint {.importc: "QAccessibleTextInterface_cursorPosition".}
proc fcQAccessibleTextInterface_setCursorPosition(self: pointer, position: cint): void {.importc: "QAccessibleTextInterface_setCursorPosition".}
proc fcQAccessibleTextInterface_text(self: pointer, startOffset: cint, endOffset: cint): struct_miqt_string {.importc: "QAccessibleTextInterface_text".}
proc fcQAccessibleTextInterface_textBeforeOffset(self: pointer, offset: cint, boundaryType: cint, startOffset: ptr cint, endOffset: ptr cint): struct_miqt_string {.importc: "QAccessibleTextInterface_textBeforeOffset".}
proc fcQAccessibleTextInterface_textAfterOffset(self: pointer, offset: cint, boundaryType: cint, startOffset: ptr cint, endOffset: ptr cint): struct_miqt_string {.importc: "QAccessibleTextInterface_textAfterOffset".}
proc fcQAccessibleTextInterface_textAtOffset(self: pointer, offset: cint, boundaryType: cint, startOffset: ptr cint, endOffset: ptr cint): struct_miqt_string {.importc: "QAccessibleTextInterface_textAtOffset".}
proc fcQAccessibleTextInterface_characterCount(self: pointer, ): cint {.importc: "QAccessibleTextInterface_characterCount".}
proc fcQAccessibleTextInterface_characterRect(self: pointer, offset: cint): pointer {.importc: "QAccessibleTextInterface_characterRect".}
proc fcQAccessibleTextInterface_offsetAtPoint(self: pointer, point: pointer): cint {.importc: "QAccessibleTextInterface_offsetAtPoint".}
proc fcQAccessibleTextInterface_scrollToSubstring(self: pointer, startIndex: cint, endIndex: cint): void {.importc: "QAccessibleTextInterface_scrollToSubstring".}
proc fcQAccessibleTextInterface_attributes(self: pointer, offset: cint, startOffset: ptr cint, endOffset: ptr cint): struct_miqt_string {.importc: "QAccessibleTextInterface_attributes".}
proc fcQAccessibleTextInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAccessibleTextInterface_operatorAssign".}
proc fcQAccessibleTextInterface_delete(self: pointer) {.importc: "QAccessibleTextInterface_delete".}
proc fcQAccessibleEditableTextInterface_deleteText(self: pointer, startOffset: cint, endOffset: cint): void {.importc: "QAccessibleEditableTextInterface_deleteText".}
proc fcQAccessibleEditableTextInterface_insertText(self: pointer, offset: cint, text: struct_miqt_string): void {.importc: "QAccessibleEditableTextInterface_insertText".}
proc fcQAccessibleEditableTextInterface_replaceText(self: pointer, startOffset: cint, endOffset: cint, text: struct_miqt_string): void {.importc: "QAccessibleEditableTextInterface_replaceText".}
proc fcQAccessibleEditableTextInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAccessibleEditableTextInterface_operatorAssign".}
proc fcQAccessibleEditableTextInterface_delete(self: pointer) {.importc: "QAccessibleEditableTextInterface_delete".}
proc fcQAccessibleValueInterface_currentValue(self: pointer, ): pointer {.importc: "QAccessibleValueInterface_currentValue".}
proc fcQAccessibleValueInterface_setCurrentValue(self: pointer, value: pointer): void {.importc: "QAccessibleValueInterface_setCurrentValue".}
proc fcQAccessibleValueInterface_maximumValue(self: pointer, ): pointer {.importc: "QAccessibleValueInterface_maximumValue".}
proc fcQAccessibleValueInterface_minimumValue(self: pointer, ): pointer {.importc: "QAccessibleValueInterface_minimumValue".}
proc fcQAccessibleValueInterface_minimumStepSize(self: pointer, ): pointer {.importc: "QAccessibleValueInterface_minimumStepSize".}
proc fcQAccessibleValueInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAccessibleValueInterface_operatorAssign".}
proc fcQAccessibleValueInterface_delete(self: pointer) {.importc: "QAccessibleValueInterface_delete".}
proc fcQAccessibleTableCellInterface_isSelected(self: pointer, ): bool {.importc: "QAccessibleTableCellInterface_isSelected".}
proc fcQAccessibleTableCellInterface_columnHeaderCells(self: pointer, ): struct_miqt_array {.importc: "QAccessibleTableCellInterface_columnHeaderCells".}
proc fcQAccessibleTableCellInterface_rowHeaderCells(self: pointer, ): struct_miqt_array {.importc: "QAccessibleTableCellInterface_rowHeaderCells".}
proc fcQAccessibleTableCellInterface_columnIndex(self: pointer, ): cint {.importc: "QAccessibleTableCellInterface_columnIndex".}
proc fcQAccessibleTableCellInterface_rowIndex(self: pointer, ): cint {.importc: "QAccessibleTableCellInterface_rowIndex".}
proc fcQAccessibleTableCellInterface_columnExtent(self: pointer, ): cint {.importc: "QAccessibleTableCellInterface_columnExtent".}
proc fcQAccessibleTableCellInterface_rowExtent(self: pointer, ): cint {.importc: "QAccessibleTableCellInterface_rowExtent".}
proc fcQAccessibleTableCellInterface_table(self: pointer, ): pointer {.importc: "QAccessibleTableCellInterface_table".}
proc fcQAccessibleTableCellInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAccessibleTableCellInterface_operatorAssign".}
proc fcQAccessibleTableCellInterface_delete(self: pointer) {.importc: "QAccessibleTableCellInterface_delete".}
proc fcQAccessibleTableInterface_caption(self: pointer, ): pointer {.importc: "QAccessibleTableInterface_caption".}
proc fcQAccessibleTableInterface_summary(self: pointer, ): pointer {.importc: "QAccessibleTableInterface_summary".}
proc fcQAccessibleTableInterface_cellAt(self: pointer, row: cint, column: cint): pointer {.importc: "QAccessibleTableInterface_cellAt".}
proc fcQAccessibleTableInterface_selectedCellCount(self: pointer, ): cint {.importc: "QAccessibleTableInterface_selectedCellCount".}
proc fcQAccessibleTableInterface_selectedCells(self: pointer, ): struct_miqt_array {.importc: "QAccessibleTableInterface_selectedCells".}
proc fcQAccessibleTableInterface_columnDescription(self: pointer, column: cint): struct_miqt_string {.importc: "QAccessibleTableInterface_columnDescription".}
proc fcQAccessibleTableInterface_rowDescription(self: pointer, row: cint): struct_miqt_string {.importc: "QAccessibleTableInterface_rowDescription".}
proc fcQAccessibleTableInterface_selectedColumnCount(self: pointer, ): cint {.importc: "QAccessibleTableInterface_selectedColumnCount".}
proc fcQAccessibleTableInterface_selectedRowCount(self: pointer, ): cint {.importc: "QAccessibleTableInterface_selectedRowCount".}
proc fcQAccessibleTableInterface_columnCount(self: pointer, ): cint {.importc: "QAccessibleTableInterface_columnCount".}
proc fcQAccessibleTableInterface_rowCount(self: pointer, ): cint {.importc: "QAccessibleTableInterface_rowCount".}
proc fcQAccessibleTableInterface_selectedColumns(self: pointer, ): struct_miqt_array {.importc: "QAccessibleTableInterface_selectedColumns".}
proc fcQAccessibleTableInterface_selectedRows(self: pointer, ): struct_miqt_array {.importc: "QAccessibleTableInterface_selectedRows".}
proc fcQAccessibleTableInterface_isColumnSelected(self: pointer, column: cint): bool {.importc: "QAccessibleTableInterface_isColumnSelected".}
proc fcQAccessibleTableInterface_isRowSelected(self: pointer, row: cint): bool {.importc: "QAccessibleTableInterface_isRowSelected".}
proc fcQAccessibleTableInterface_selectRow(self: pointer, row: cint): bool {.importc: "QAccessibleTableInterface_selectRow".}
proc fcQAccessibleTableInterface_selectColumn(self: pointer, column: cint): bool {.importc: "QAccessibleTableInterface_selectColumn".}
proc fcQAccessibleTableInterface_unselectRow(self: pointer, row: cint): bool {.importc: "QAccessibleTableInterface_unselectRow".}
proc fcQAccessibleTableInterface_unselectColumn(self: pointer, column: cint): bool {.importc: "QAccessibleTableInterface_unselectColumn".}
proc fcQAccessibleTableInterface_modelChange(self: pointer, event: pointer): void {.importc: "QAccessibleTableInterface_modelChange".}
proc fcQAccessibleTableInterface_delete(self: pointer) {.importc: "QAccessibleTableInterface_delete".}
proc fcQAccessibleActionInterface_tr(sourceText: cstring): struct_miqt_string {.importc: "QAccessibleActionInterface_tr".}
proc fcQAccessibleActionInterface_actionNames(self: pointer, ): struct_miqt_array {.importc: "QAccessibleActionInterface_actionNames".}
proc fcQAccessibleActionInterface_localizedActionName(self: pointer, name: struct_miqt_string): struct_miqt_string {.importc: "QAccessibleActionInterface_localizedActionName".}
proc fcQAccessibleActionInterface_localizedActionDescription(self: pointer, name: struct_miqt_string): struct_miqt_string {.importc: "QAccessibleActionInterface_localizedActionDescription".}
proc fcQAccessibleActionInterface_doAction(self: pointer, actionName: struct_miqt_string): void {.importc: "QAccessibleActionInterface_doAction".}
proc fcQAccessibleActionInterface_keyBindingsForAction(self: pointer, actionName: struct_miqt_string): struct_miqt_array {.importc: "QAccessibleActionInterface_keyBindingsForAction".}
proc fcQAccessibleActionInterface_pressAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_pressAction".}
proc fcQAccessibleActionInterface_increaseAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_increaseAction".}
proc fcQAccessibleActionInterface_decreaseAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_decreaseAction".}
proc fcQAccessibleActionInterface_showMenuAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_showMenuAction".}
proc fcQAccessibleActionInterface_setFocusAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_setFocusAction".}
proc fcQAccessibleActionInterface_toggleAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_toggleAction".}
proc fcQAccessibleActionInterface_scrollLeftAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_scrollLeftAction".}
proc fcQAccessibleActionInterface_scrollRightAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_scrollRightAction".}
proc fcQAccessibleActionInterface_scrollUpAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_scrollUpAction".}
proc fcQAccessibleActionInterface_scrollDownAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_scrollDownAction".}
proc fcQAccessibleActionInterface_nextPageAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_nextPageAction".}
proc fcQAccessibleActionInterface_previousPageAction(): struct_miqt_string {.importc: "QAccessibleActionInterface_previousPageAction".}
proc fcQAccessibleActionInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAccessibleActionInterface_operatorAssign".}
proc fcQAccessibleActionInterface_tr2(sourceText: cstring, disambiguation: cstring): struct_miqt_string {.importc: "QAccessibleActionInterface_tr2".}
proc fcQAccessibleActionInterface_tr3(sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.importc: "QAccessibleActionInterface_tr3".}
proc fcQAccessibleActionInterface_delete(self: pointer) {.importc: "QAccessibleActionInterface_delete".}
proc fcQAccessibleImageInterface_imageDescription(self: pointer, ): struct_miqt_string {.importc: "QAccessibleImageInterface_imageDescription".}
proc fcQAccessibleImageInterface_imageSize(self: pointer, ): pointer {.importc: "QAccessibleImageInterface_imageSize".}
proc fcQAccessibleImageInterface_imagePosition(self: pointer, ): pointer {.importc: "QAccessibleImageInterface_imagePosition".}
proc fcQAccessibleImageInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAccessibleImageInterface_operatorAssign".}
proc fcQAccessibleImageInterface_delete(self: pointer) {.importc: "QAccessibleImageInterface_delete".}
proc fcQAccessibleHyperlinkInterface_anchor(self: pointer, ): struct_miqt_string {.importc: "QAccessibleHyperlinkInterface_anchor".}
proc fcQAccessibleHyperlinkInterface_anchorTarget(self: pointer, ): struct_miqt_string {.importc: "QAccessibleHyperlinkInterface_anchorTarget".}
proc fcQAccessibleHyperlinkInterface_startIndex(self: pointer, ): cint {.importc: "QAccessibleHyperlinkInterface_startIndex".}
proc fcQAccessibleHyperlinkInterface_endIndex(self: pointer, ): cint {.importc: "QAccessibleHyperlinkInterface_endIndex".}
proc fcQAccessibleHyperlinkInterface_isValid(self: pointer, ): bool {.importc: "QAccessibleHyperlinkInterface_isValid".}
proc fcQAccessibleHyperlinkInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAccessibleHyperlinkInterface_operatorAssign".}
proc fcQAccessibleHyperlinkInterface_delete(self: pointer) {.importc: "QAccessibleHyperlinkInterface_delete".}
proc fcQAccessibleEvent_new(obj: pointer, typ: cint): ptr cQAccessibleEvent {.importc: "QAccessibleEvent_new".}
proc fcQAccessibleEvent_new2(iface: pointer, typ: cint): ptr cQAccessibleEvent {.importc: "QAccessibleEvent_new2".}
proc fcQAccessibleEvent_typeX(self: pointer, ): cint {.importc: "QAccessibleEvent_type".}
proc fcQAccessibleEvent_objectX(self: pointer, ): pointer {.importc: "QAccessibleEvent_object".}
proc fcQAccessibleEvent_uniqueId(self: pointer, ): cuint {.importc: "QAccessibleEvent_uniqueId".}
proc fcQAccessibleEvent_setChild(self: pointer, chld: cint): void {.importc: "QAccessibleEvent_setChild".}
proc fcQAccessibleEvent_child(self: pointer, ): cint {.importc: "QAccessibleEvent_child".}
proc fcQAccessibleEvent_accessibleInterface(self: pointer, ): pointer {.importc: "QAccessibleEvent_accessibleInterface".}
proc fQAccessibleEvent_virtualbase_accessibleInterface(self: pointer, ): pointer{.importc: "QAccessibleEvent_virtualbase_accessibleInterface".}
proc fcQAccessibleEvent_override_virtual_accessibleInterface(self: pointer, slot: int) {.importc: "QAccessibleEvent_override_virtual_accessibleInterface".}
proc fcQAccessibleEvent_delete(self: pointer) {.importc: "QAccessibleEvent_delete".}
proc fcQAccessibleStateChangeEvent_new(obj: pointer, state: pointer): ptr cQAccessibleStateChangeEvent {.importc: "QAccessibleStateChangeEvent_new".}
proc fcQAccessibleStateChangeEvent_new2(iface: pointer, state: pointer): ptr cQAccessibleStateChangeEvent {.importc: "QAccessibleStateChangeEvent_new2".}
proc fcQAccessibleStateChangeEvent_changedStates(self: pointer, ): pointer {.importc: "QAccessibleStateChangeEvent_changedStates".}
proc fQAccessibleStateChangeEvent_virtualbase_accessibleInterface(self: pointer, ): pointer{.importc: "QAccessibleStateChangeEvent_virtualbase_accessibleInterface".}
proc fcQAccessibleStateChangeEvent_override_virtual_accessibleInterface(self: pointer, slot: int) {.importc: "QAccessibleStateChangeEvent_override_virtual_accessibleInterface".}
proc fcQAccessibleStateChangeEvent_delete(self: pointer) {.importc: "QAccessibleStateChangeEvent_delete".}
proc fcQAccessibleTextCursorEvent_new(obj: pointer, cursorPos: cint): ptr cQAccessibleTextCursorEvent {.importc: "QAccessibleTextCursorEvent_new".}
proc fcQAccessibleTextCursorEvent_new2(iface: pointer, cursorPos: cint): ptr cQAccessibleTextCursorEvent {.importc: "QAccessibleTextCursorEvent_new2".}
proc fcQAccessibleTextCursorEvent_setCursorPosition(self: pointer, position: cint): void {.importc: "QAccessibleTextCursorEvent_setCursorPosition".}
proc fcQAccessibleTextCursorEvent_cursorPosition(self: pointer, ): cint {.importc: "QAccessibleTextCursorEvent_cursorPosition".}
proc fQAccessibleTextCursorEvent_virtualbase_accessibleInterface(self: pointer, ): pointer{.importc: "QAccessibleTextCursorEvent_virtualbase_accessibleInterface".}
proc fcQAccessibleTextCursorEvent_override_virtual_accessibleInterface(self: pointer, slot: int) {.importc: "QAccessibleTextCursorEvent_override_virtual_accessibleInterface".}
proc fcQAccessibleTextCursorEvent_delete(self: pointer) {.importc: "QAccessibleTextCursorEvent_delete".}
proc fcQAccessibleTextSelectionEvent_new(obj: pointer, start: cint, endVal: cint): ptr cQAccessibleTextSelectionEvent {.importc: "QAccessibleTextSelectionEvent_new".}
proc fcQAccessibleTextSelectionEvent_new2(iface: pointer, start: cint, endVal: cint): ptr cQAccessibleTextSelectionEvent {.importc: "QAccessibleTextSelectionEvent_new2".}
proc fcQAccessibleTextSelectionEvent_setSelection(self: pointer, start: cint, endVal: cint): void {.importc: "QAccessibleTextSelectionEvent_setSelection".}
proc fcQAccessibleTextSelectionEvent_selectionStart(self: pointer, ): cint {.importc: "QAccessibleTextSelectionEvent_selectionStart".}
proc fcQAccessibleTextSelectionEvent_selectionEnd(self: pointer, ): cint {.importc: "QAccessibleTextSelectionEvent_selectionEnd".}
proc fQAccessibleTextSelectionEvent_virtualbase_accessibleInterface(self: pointer, ): pointer{.importc: "QAccessibleTextSelectionEvent_virtualbase_accessibleInterface".}
proc fcQAccessibleTextSelectionEvent_override_virtual_accessibleInterface(self: pointer, slot: int) {.importc: "QAccessibleTextSelectionEvent_override_virtual_accessibleInterface".}
proc fcQAccessibleTextSelectionEvent_delete(self: pointer) {.importc: "QAccessibleTextSelectionEvent_delete".}
proc fcQAccessibleTextInsertEvent_new(obj: pointer, position: cint, text: struct_miqt_string): ptr cQAccessibleTextInsertEvent {.importc: "QAccessibleTextInsertEvent_new".}
proc fcQAccessibleTextInsertEvent_new2(iface: pointer, position: cint, text: struct_miqt_string): ptr cQAccessibleTextInsertEvent {.importc: "QAccessibleTextInsertEvent_new2".}
proc fcQAccessibleTextInsertEvent_textInserted(self: pointer, ): struct_miqt_string {.importc: "QAccessibleTextInsertEvent_textInserted".}
proc fcQAccessibleTextInsertEvent_changePosition(self: pointer, ): cint {.importc: "QAccessibleTextInsertEvent_changePosition".}
proc fQAccessibleTextInsertEvent_virtualbase_accessibleInterface(self: pointer, ): pointer{.importc: "QAccessibleTextInsertEvent_virtualbase_accessibleInterface".}
proc fcQAccessibleTextInsertEvent_override_virtual_accessibleInterface(self: pointer, slot: int) {.importc: "QAccessibleTextInsertEvent_override_virtual_accessibleInterface".}
proc fcQAccessibleTextInsertEvent_delete(self: pointer) {.importc: "QAccessibleTextInsertEvent_delete".}
proc fcQAccessibleTextRemoveEvent_new(obj: pointer, position: cint, text: struct_miqt_string): ptr cQAccessibleTextRemoveEvent {.importc: "QAccessibleTextRemoveEvent_new".}
proc fcQAccessibleTextRemoveEvent_new2(iface: pointer, position: cint, text: struct_miqt_string): ptr cQAccessibleTextRemoveEvent {.importc: "QAccessibleTextRemoveEvent_new2".}
proc fcQAccessibleTextRemoveEvent_textRemoved(self: pointer, ): struct_miqt_string {.importc: "QAccessibleTextRemoveEvent_textRemoved".}
proc fcQAccessibleTextRemoveEvent_changePosition(self: pointer, ): cint {.importc: "QAccessibleTextRemoveEvent_changePosition".}
proc fQAccessibleTextRemoveEvent_virtualbase_accessibleInterface(self: pointer, ): pointer{.importc: "QAccessibleTextRemoveEvent_virtualbase_accessibleInterface".}
proc fcQAccessibleTextRemoveEvent_override_virtual_accessibleInterface(self: pointer, slot: int) {.importc: "QAccessibleTextRemoveEvent_override_virtual_accessibleInterface".}
proc fcQAccessibleTextRemoveEvent_delete(self: pointer) {.importc: "QAccessibleTextRemoveEvent_delete".}
proc fcQAccessibleTextUpdateEvent_new(obj: pointer, position: cint, oldText: struct_miqt_string, text: struct_miqt_string): ptr cQAccessibleTextUpdateEvent {.importc: "QAccessibleTextUpdateEvent_new".}
proc fcQAccessibleTextUpdateEvent_new2(iface: pointer, position: cint, oldText: struct_miqt_string, text: struct_miqt_string): ptr cQAccessibleTextUpdateEvent {.importc: "QAccessibleTextUpdateEvent_new2".}
proc fcQAccessibleTextUpdateEvent_textRemoved(self: pointer, ): struct_miqt_string {.importc: "QAccessibleTextUpdateEvent_textRemoved".}
proc fcQAccessibleTextUpdateEvent_textInserted(self: pointer, ): struct_miqt_string {.importc: "QAccessibleTextUpdateEvent_textInserted".}
proc fcQAccessibleTextUpdateEvent_changePosition(self: pointer, ): cint {.importc: "QAccessibleTextUpdateEvent_changePosition".}
proc fQAccessibleTextUpdateEvent_virtualbase_accessibleInterface(self: pointer, ): pointer{.importc: "QAccessibleTextUpdateEvent_virtualbase_accessibleInterface".}
proc fcQAccessibleTextUpdateEvent_override_virtual_accessibleInterface(self: pointer, slot: int) {.importc: "QAccessibleTextUpdateEvent_override_virtual_accessibleInterface".}
proc fcQAccessibleTextUpdateEvent_delete(self: pointer) {.importc: "QAccessibleTextUpdateEvent_delete".}
proc fcQAccessibleValueChangeEvent_new(obj: pointer, val: pointer): ptr cQAccessibleValueChangeEvent {.importc: "QAccessibleValueChangeEvent_new".}
proc fcQAccessibleValueChangeEvent_new2(iface: pointer, val: pointer): ptr cQAccessibleValueChangeEvent {.importc: "QAccessibleValueChangeEvent_new2".}
proc fcQAccessibleValueChangeEvent_setValue(self: pointer, val: pointer): void {.importc: "QAccessibleValueChangeEvent_setValue".}
proc fcQAccessibleValueChangeEvent_value(self: pointer, ): pointer {.importc: "QAccessibleValueChangeEvent_value".}
proc fQAccessibleValueChangeEvent_virtualbase_accessibleInterface(self: pointer, ): pointer{.importc: "QAccessibleValueChangeEvent_virtualbase_accessibleInterface".}
proc fcQAccessibleValueChangeEvent_override_virtual_accessibleInterface(self: pointer, slot: int) {.importc: "QAccessibleValueChangeEvent_override_virtual_accessibleInterface".}
proc fcQAccessibleValueChangeEvent_delete(self: pointer) {.importc: "QAccessibleValueChangeEvent_delete".}
proc fcQAccessibleTableModelChangeEvent_new(obj: pointer, changeType: cint): ptr cQAccessibleTableModelChangeEvent {.importc: "QAccessibleTableModelChangeEvent_new".}
proc fcQAccessibleTableModelChangeEvent_new2(iface: pointer, changeType: cint): ptr cQAccessibleTableModelChangeEvent {.importc: "QAccessibleTableModelChangeEvent_new2".}
proc fcQAccessibleTableModelChangeEvent_setModelChangeType(self: pointer, changeType: cint): void {.importc: "QAccessibleTableModelChangeEvent_setModelChangeType".}
proc fcQAccessibleTableModelChangeEvent_modelChangeType(self: pointer, ): cint {.importc: "QAccessibleTableModelChangeEvent_modelChangeType".}
proc fcQAccessibleTableModelChangeEvent_setFirstRow(self: pointer, row: cint): void {.importc: "QAccessibleTableModelChangeEvent_setFirstRow".}
proc fcQAccessibleTableModelChangeEvent_setFirstColumn(self: pointer, col: cint): void {.importc: "QAccessibleTableModelChangeEvent_setFirstColumn".}
proc fcQAccessibleTableModelChangeEvent_setLastRow(self: pointer, row: cint): void {.importc: "QAccessibleTableModelChangeEvent_setLastRow".}
proc fcQAccessibleTableModelChangeEvent_setLastColumn(self: pointer, col: cint): void {.importc: "QAccessibleTableModelChangeEvent_setLastColumn".}
proc fcQAccessibleTableModelChangeEvent_firstRow(self: pointer, ): cint {.importc: "QAccessibleTableModelChangeEvent_firstRow".}
proc fcQAccessibleTableModelChangeEvent_firstColumn(self: pointer, ): cint {.importc: "QAccessibleTableModelChangeEvent_firstColumn".}
proc fcQAccessibleTableModelChangeEvent_lastRow(self: pointer, ): cint {.importc: "QAccessibleTableModelChangeEvent_lastRow".}
proc fcQAccessibleTableModelChangeEvent_lastColumn(self: pointer, ): cint {.importc: "QAccessibleTableModelChangeEvent_lastColumn".}
proc fQAccessibleTableModelChangeEvent_virtualbase_accessibleInterface(self: pointer, ): pointer{.importc: "QAccessibleTableModelChangeEvent_virtualbase_accessibleInterface".}
proc fcQAccessibleTableModelChangeEvent_override_virtual_accessibleInterface(self: pointer, slot: int) {.importc: "QAccessibleTableModelChangeEvent_override_virtual_accessibleInterface".}
proc fcQAccessibleTableModelChangeEvent_delete(self: pointer) {.importc: "QAccessibleTableModelChangeEvent_delete".}


func init*(T: type QAccessibleInterface, h: ptr cQAccessibleInterface): QAccessibleInterface =
  T(h: h)
proc isValid*(self: QAccessibleInterface, ): bool =

  fcQAccessibleInterface_isValid(self.h)

proc objectX*(self: QAccessibleInterface, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQAccessibleInterface_objectX(self.h))

proc window*(self: QAccessibleInterface, ): gen_qwindow.QWindow =

  gen_qwindow.QWindow(h: fcQAccessibleInterface_window(self.h))

proc relations*(self: QAccessibleInterface, match: gen_qaccessible_base.QAccessibleRelationFlag): seq[tuple[first: QAccessibleInterface, second: gen_qaccessible_base.QAccessibleRelationFlag]] =

  var v_ma = fcQAccessibleInterface_relations(self.h, cint(match))
  var vx_ret = newSeq[tuple[first: QAccessibleInterface, second: gen_qaccessible_base.QAccessibleRelationFlag]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[pointer]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[cint]](vx_lv_mm.values)
    var vx_lv_entry_First = QAccessibleInterface(h: vx_lv_First_CArray[0])

    var vx_lv_entry_Second = gen_qaccessible_base.QAccessibleRelationFlag(vx_lv_Second_CArray[0])

    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  vx_ret

proc focusChild*(self: QAccessibleInterface, ): QAccessibleInterface =

  QAccessibleInterface(h: fcQAccessibleInterface_focusChild(self.h))

proc childAt*(self: QAccessibleInterface, x: cint, y: cint): QAccessibleInterface =

  QAccessibleInterface(h: fcQAccessibleInterface_childAt(self.h, x, y))

proc parent*(self: QAccessibleInterface, ): QAccessibleInterface =

  QAccessibleInterface(h: fcQAccessibleInterface_parent(self.h))

proc child*(self: QAccessibleInterface, index: cint): QAccessibleInterface =

  QAccessibleInterface(h: fcQAccessibleInterface_child(self.h, index))

proc childCount*(self: QAccessibleInterface, ): cint =

  fcQAccessibleInterface_childCount(self.h)

proc indexOfChild*(self: QAccessibleInterface, param1: QAccessibleInterface): cint =

  fcQAccessibleInterface_indexOfChild(self.h, param1.h)

proc text*(self: QAccessibleInterface, t: gen_qaccessible_base.QAccessibleText): string =

  let v_ms = fcQAccessibleInterface_text(self.h, cint(t))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: QAccessibleInterface, t: gen_qaccessible_base.QAccessibleText, text: string): void =

  fcQAccessibleInterface_setText(self.h, cint(t), struct_miqt_string(data: text, len: csize_t(len(text))))

proc rect*(self: QAccessibleInterface, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQAccessibleInterface_rect(self.h))

proc role*(self: QAccessibleInterface, ): gen_qaccessible_base.QAccessibleRole =

  gen_qaccessible_base.QAccessibleRole(fcQAccessibleInterface_role(self.h))

proc state*(self: QAccessibleInterface, ): gen_qaccessible_base.QAccessibleState =

  gen_qaccessible_base.QAccessibleState(h: fcQAccessibleInterface_state(self.h))

proc foregroundColor*(self: QAccessibleInterface, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQAccessibleInterface_foregroundColor(self.h))

proc backgroundColor*(self: QAccessibleInterface, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQAccessibleInterface_backgroundColor(self.h))

proc textInterface*(self: QAccessibleInterface, ): QAccessibleTextInterface =

  QAccessibleTextInterface(h: fcQAccessibleInterface_textInterface(self.h))

proc editableTextInterface*(self: QAccessibleInterface, ): QAccessibleEditableTextInterface =

  QAccessibleEditableTextInterface(h: fcQAccessibleInterface_editableTextInterface(self.h))

proc valueInterface*(self: QAccessibleInterface, ): QAccessibleValueInterface =

  QAccessibleValueInterface(h: fcQAccessibleInterface_valueInterface(self.h))

proc actionInterface*(self: QAccessibleInterface, ): QAccessibleActionInterface =

  QAccessibleActionInterface(h: fcQAccessibleInterface_actionInterface(self.h))

proc imageInterface*(self: QAccessibleInterface, ): QAccessibleImageInterface =

  QAccessibleImageInterface(h: fcQAccessibleInterface_imageInterface(self.h))

proc tableInterface*(self: QAccessibleInterface, ): QAccessibleTableInterface =

  QAccessibleTableInterface(h: fcQAccessibleInterface_tableInterface(self.h))

proc tableCellInterface*(self: QAccessibleInterface, ): QAccessibleTableCellInterface =

  QAccessibleTableCellInterface(h: fcQAccessibleInterface_tableCellInterface(self.h))

proc hyperlinkInterface*(self: QAccessibleInterface, ): QAccessibleHyperlinkInterface =

  QAccessibleHyperlinkInterface(h: fcQAccessibleInterface_hyperlinkInterface(self.h))

proc virtualHook*(self: QAccessibleInterface, id: cint, data: pointer): void =

  fcQAccessibleInterface_virtualHook(self.h, id, data)

proc interfaceCast*(self: QAccessibleInterface, param1: gen_qaccessible_base.QAccessibleInterfaceType): pointer =

  fcQAccessibleInterface_interfaceCast(self.h, cint(param1))


func init*(T: type QAccessibleTextInterface, h: ptr cQAccessibleTextInterface): QAccessibleTextInterface =
  T(h: h)
proc selection*(self: QAccessibleTextInterface, selectionIndex: cint, startOffset: ptr cint, endOffset: ptr cint): void =

  fcQAccessibleTextInterface_selection(self.h, selectionIndex, startOffset, endOffset)

proc selectionCount*(self: QAccessibleTextInterface, ): cint =

  fcQAccessibleTextInterface_selectionCount(self.h)

proc addSelection*(self: QAccessibleTextInterface, startOffset: cint, endOffset: cint): void =

  fcQAccessibleTextInterface_addSelection(self.h, startOffset, endOffset)

proc removeSelection*(self: QAccessibleTextInterface, selectionIndex: cint): void =

  fcQAccessibleTextInterface_removeSelection(self.h, selectionIndex)

proc setSelection*(self: QAccessibleTextInterface, selectionIndex: cint, startOffset: cint, endOffset: cint): void =

  fcQAccessibleTextInterface_setSelection(self.h, selectionIndex, startOffset, endOffset)

proc cursorPosition*(self: QAccessibleTextInterface, ): cint =

  fcQAccessibleTextInterface_cursorPosition(self.h)

proc setCursorPosition*(self: QAccessibleTextInterface, position: cint): void =

  fcQAccessibleTextInterface_setCursorPosition(self.h, position)

proc text*(self: QAccessibleTextInterface, startOffset: cint, endOffset: cint): string =

  let v_ms = fcQAccessibleTextInterface_text(self.h, startOffset, endOffset)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textBeforeOffset*(self: QAccessibleTextInterface, offset: cint, boundaryType: gen_qaccessible_base.QAccessibleTextBoundaryType, startOffset: ptr cint, endOffset: ptr cint): string =

  let v_ms = fcQAccessibleTextInterface_textBeforeOffset(self.h, offset, cint(boundaryType), startOffset, endOffset)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textAfterOffset*(self: QAccessibleTextInterface, offset: cint, boundaryType: gen_qaccessible_base.QAccessibleTextBoundaryType, startOffset: ptr cint, endOffset: ptr cint): string =

  let v_ms = fcQAccessibleTextInterface_textAfterOffset(self.h, offset, cint(boundaryType), startOffset, endOffset)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textAtOffset*(self: QAccessibleTextInterface, offset: cint, boundaryType: gen_qaccessible_base.QAccessibleTextBoundaryType, startOffset: ptr cint, endOffset: ptr cint): string =

  let v_ms = fcQAccessibleTextInterface_textAtOffset(self.h, offset, cint(boundaryType), startOffset, endOffset)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc characterCount*(self: QAccessibleTextInterface, ): cint =

  fcQAccessibleTextInterface_characterCount(self.h)

proc characterRect*(self: QAccessibleTextInterface, offset: cint): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQAccessibleTextInterface_characterRect(self.h, offset))

proc offsetAtPoint*(self: QAccessibleTextInterface, point: gen_qpoint.QPoint): cint =

  fcQAccessibleTextInterface_offsetAtPoint(self.h, point.h)

proc scrollToSubstring*(self: QAccessibleTextInterface, startIndex: cint, endIndex: cint): void =

  fcQAccessibleTextInterface_scrollToSubstring(self.h, startIndex, endIndex)

proc attributes*(self: QAccessibleTextInterface, offset: cint, startOffset: ptr cint, endOffset: ptr cint): string =

  let v_ms = fcQAccessibleTextInterface_attributes(self.h, offset, startOffset, endOffset)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc operatorAssign*(self: QAccessibleTextInterface, param1: QAccessibleTextInterface): void =

  fcQAccessibleTextInterface_operatorAssign(self.h, param1.h)

proc delete*(self: QAccessibleTextInterface) =
  fcQAccessibleTextInterface_delete(self.h)

func init*(T: type QAccessibleEditableTextInterface, h: ptr cQAccessibleEditableTextInterface): QAccessibleEditableTextInterface =
  T(h: h)
proc deleteText*(self: QAccessibleEditableTextInterface, startOffset: cint, endOffset: cint): void =

  fcQAccessibleEditableTextInterface_deleteText(self.h, startOffset, endOffset)

proc insertText*(self: QAccessibleEditableTextInterface, offset: cint, text: string): void =

  fcQAccessibleEditableTextInterface_insertText(self.h, offset, struct_miqt_string(data: text, len: csize_t(len(text))))

proc replaceText*(self: QAccessibleEditableTextInterface, startOffset: cint, endOffset: cint, text: string): void =

  fcQAccessibleEditableTextInterface_replaceText(self.h, startOffset, endOffset, struct_miqt_string(data: text, len: csize_t(len(text))))

proc operatorAssign*(self: QAccessibleEditableTextInterface, param1: QAccessibleEditableTextInterface): void =

  fcQAccessibleEditableTextInterface_operatorAssign(self.h, param1.h)

proc delete*(self: QAccessibleEditableTextInterface) =
  fcQAccessibleEditableTextInterface_delete(self.h)

func init*(T: type QAccessibleValueInterface, h: ptr cQAccessibleValueInterface): QAccessibleValueInterface =
  T(h: h)
proc currentValue*(self: QAccessibleValueInterface, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQAccessibleValueInterface_currentValue(self.h))

proc setCurrentValue*(self: QAccessibleValueInterface, value: gen_qvariant.QVariant): void =

  fcQAccessibleValueInterface_setCurrentValue(self.h, value.h)

proc maximumValue*(self: QAccessibleValueInterface, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQAccessibleValueInterface_maximumValue(self.h))

proc minimumValue*(self: QAccessibleValueInterface, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQAccessibleValueInterface_minimumValue(self.h))

proc minimumStepSize*(self: QAccessibleValueInterface, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQAccessibleValueInterface_minimumStepSize(self.h))

proc operatorAssign*(self: QAccessibleValueInterface, param1: QAccessibleValueInterface): void =

  fcQAccessibleValueInterface_operatorAssign(self.h, param1.h)

proc delete*(self: QAccessibleValueInterface) =
  fcQAccessibleValueInterface_delete(self.h)

func init*(T: type QAccessibleTableCellInterface, h: ptr cQAccessibleTableCellInterface): QAccessibleTableCellInterface =
  T(h: h)
proc isSelected*(self: QAccessibleTableCellInterface, ): bool =

  fcQAccessibleTableCellInterface_isSelected(self.h)

proc columnHeaderCells*(self: QAccessibleTableCellInterface, ): seq[QAccessibleInterface] =

  var v_ma = fcQAccessibleTableCellInterface_columnHeaderCells(self.h)
  var vx_ret = newSeq[QAccessibleInterface](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QAccessibleInterface(h: v_outCast[i])
  vx_ret

proc rowHeaderCells*(self: QAccessibleTableCellInterface, ): seq[QAccessibleInterface] =

  var v_ma = fcQAccessibleTableCellInterface_rowHeaderCells(self.h)
  var vx_ret = newSeq[QAccessibleInterface](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QAccessibleInterface(h: v_outCast[i])
  vx_ret

proc columnIndex*(self: QAccessibleTableCellInterface, ): cint =

  fcQAccessibleTableCellInterface_columnIndex(self.h)

proc rowIndex*(self: QAccessibleTableCellInterface, ): cint =

  fcQAccessibleTableCellInterface_rowIndex(self.h)

proc columnExtent*(self: QAccessibleTableCellInterface, ): cint =

  fcQAccessibleTableCellInterface_columnExtent(self.h)

proc rowExtent*(self: QAccessibleTableCellInterface, ): cint =

  fcQAccessibleTableCellInterface_rowExtent(self.h)

proc table*(self: QAccessibleTableCellInterface, ): QAccessibleInterface =

  QAccessibleInterface(h: fcQAccessibleTableCellInterface_table(self.h))

proc operatorAssign*(self: QAccessibleTableCellInterface, param1: QAccessibleTableCellInterface): void =

  fcQAccessibleTableCellInterface_operatorAssign(self.h, param1.h)

proc delete*(self: QAccessibleTableCellInterface) =
  fcQAccessibleTableCellInterface_delete(self.h)

func init*(T: type QAccessibleTableInterface, h: ptr cQAccessibleTableInterface): QAccessibleTableInterface =
  T(h: h)
proc caption*(self: QAccessibleTableInterface, ): QAccessibleInterface =

  QAccessibleInterface(h: fcQAccessibleTableInterface_caption(self.h))

proc summary*(self: QAccessibleTableInterface, ): QAccessibleInterface =

  QAccessibleInterface(h: fcQAccessibleTableInterface_summary(self.h))

proc cellAt*(self: QAccessibleTableInterface, row: cint, column: cint): QAccessibleInterface =

  QAccessibleInterface(h: fcQAccessibleTableInterface_cellAt(self.h, row, column))

proc selectedCellCount*(self: QAccessibleTableInterface, ): cint =

  fcQAccessibleTableInterface_selectedCellCount(self.h)

proc selectedCells*(self: QAccessibleTableInterface, ): seq[QAccessibleInterface] =

  var v_ma = fcQAccessibleTableInterface_selectedCells(self.h)
  var vx_ret = newSeq[QAccessibleInterface](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QAccessibleInterface(h: v_outCast[i])
  vx_ret

proc columnDescription*(self: QAccessibleTableInterface, column: cint): string =

  let v_ms = fcQAccessibleTableInterface_columnDescription(self.h, column)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc rowDescription*(self: QAccessibleTableInterface, row: cint): string =

  let v_ms = fcQAccessibleTableInterface_rowDescription(self.h, row)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc selectedColumnCount*(self: QAccessibleTableInterface, ): cint =

  fcQAccessibleTableInterface_selectedColumnCount(self.h)

proc selectedRowCount*(self: QAccessibleTableInterface, ): cint =

  fcQAccessibleTableInterface_selectedRowCount(self.h)

proc columnCount*(self: QAccessibleTableInterface, ): cint =

  fcQAccessibleTableInterface_columnCount(self.h)

proc rowCount*(self: QAccessibleTableInterface, ): cint =

  fcQAccessibleTableInterface_rowCount(self.h)

proc selectedColumns*(self: QAccessibleTableInterface, ): seq[cint] =

  var v_ma = fcQAccessibleTableInterface_selectedColumns(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc selectedRows*(self: QAccessibleTableInterface, ): seq[cint] =

  var v_ma = fcQAccessibleTableInterface_selectedRows(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc isColumnSelected*(self: QAccessibleTableInterface, column: cint): bool =

  fcQAccessibleTableInterface_isColumnSelected(self.h, column)

proc isRowSelected*(self: QAccessibleTableInterface, row: cint): bool =

  fcQAccessibleTableInterface_isRowSelected(self.h, row)

proc selectRow*(self: QAccessibleTableInterface, row: cint): bool =

  fcQAccessibleTableInterface_selectRow(self.h, row)

proc selectColumn*(self: QAccessibleTableInterface, column: cint): bool =

  fcQAccessibleTableInterface_selectColumn(self.h, column)

proc unselectRow*(self: QAccessibleTableInterface, row: cint): bool =

  fcQAccessibleTableInterface_unselectRow(self.h, row)

proc unselectColumn*(self: QAccessibleTableInterface, column: cint): bool =

  fcQAccessibleTableInterface_unselectColumn(self.h, column)

proc modelChange*(self: QAccessibleTableInterface, event: QAccessibleTableModelChangeEvent): void =

  fcQAccessibleTableInterface_modelChange(self.h, event.h)

proc delete*(self: QAccessibleTableInterface) =
  fcQAccessibleTableInterface_delete(self.h)

func init*(T: type QAccessibleActionInterface, h: ptr cQAccessibleActionInterface): QAccessibleActionInterface =
  T(h: h)
proc tr*(_: type QAccessibleActionInterface, sourceText: cstring): string =

  let v_ms = fcQAccessibleActionInterface_tr(sourceText)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc actionNames*(self: QAccessibleActionInterface, ): seq[string] =

  var v_ma = fcQAccessibleActionInterface_actionNames(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc localizedActionName*(self: QAccessibleActionInterface, name: string): string =

  let v_ms = fcQAccessibleActionInterface_localizedActionName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc localizedActionDescription*(self: QAccessibleActionInterface, name: string): string =

  let v_ms = fcQAccessibleActionInterface_localizedActionDescription(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc doAction*(self: QAccessibleActionInterface, actionName: string): void =

  fcQAccessibleActionInterface_doAction(self.h, struct_miqt_string(data: actionName, len: csize_t(len(actionName))))

proc keyBindingsForAction*(self: QAccessibleActionInterface, actionName: string): seq[string] =

  var v_ma = fcQAccessibleActionInterface_keyBindingsForAction(self.h, struct_miqt_string(data: actionName, len: csize_t(len(actionName))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc pressAction*(_: type QAccessibleActionInterface, ): string =

  let v_ms = fcQAccessibleActionInterface_pressAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc increaseAction*(_: type QAccessibleActionInterface, ): string =

  let v_ms = fcQAccessibleActionInterface_increaseAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc decreaseAction*(_: type QAccessibleActionInterface, ): string =

  let v_ms = fcQAccessibleActionInterface_decreaseAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc showMenuAction*(_: type QAccessibleActionInterface, ): string =

  let v_ms = fcQAccessibleActionInterface_showMenuAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFocusAction*(_: type QAccessibleActionInterface, ): string =

  let v_ms = fcQAccessibleActionInterface_setFocusAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toggleAction*(_: type QAccessibleActionInterface, ): string =

  let v_ms = fcQAccessibleActionInterface_toggleAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc scrollLeftAction*(_: type QAccessibleActionInterface, ): string =

  let v_ms = fcQAccessibleActionInterface_scrollLeftAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc scrollRightAction*(_: type QAccessibleActionInterface, ): string =

  let v_ms = fcQAccessibleActionInterface_scrollRightAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc scrollUpAction*(_: type QAccessibleActionInterface, ): string =

  let v_ms = fcQAccessibleActionInterface_scrollUpAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc scrollDownAction*(_: type QAccessibleActionInterface, ): string =

  let v_ms = fcQAccessibleActionInterface_scrollDownAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc nextPageAction*(_: type QAccessibleActionInterface, ): string =

  let v_ms = fcQAccessibleActionInterface_nextPageAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc previousPageAction*(_: type QAccessibleActionInterface, ): string =

  let v_ms = fcQAccessibleActionInterface_previousPageAction()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc operatorAssign*(self: QAccessibleActionInterface, param1: QAccessibleActionInterface): void =

  fcQAccessibleActionInterface_operatorAssign(self.h, param1.h)

proc tr2*(_: type QAccessibleActionInterface, sourceText: cstring, disambiguation: cstring): string =

  let v_ms = fcQAccessibleActionInterface_tr2(sourceText, disambiguation)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAccessibleActionInterface, sourceText: cstring, disambiguation: cstring, n: cint): string =

  let v_ms = fcQAccessibleActionInterface_tr3(sourceText, disambiguation, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QAccessibleActionInterface) =
  fcQAccessibleActionInterface_delete(self.h)

func init*(T: type QAccessibleImageInterface, h: ptr cQAccessibleImageInterface): QAccessibleImageInterface =
  T(h: h)
proc imageDescription*(self: QAccessibleImageInterface, ): string =

  let v_ms = fcQAccessibleImageInterface_imageDescription(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc imageSize*(self: QAccessibleImageInterface, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQAccessibleImageInterface_imageSize(self.h))

proc imagePosition*(self: QAccessibleImageInterface, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQAccessibleImageInterface_imagePosition(self.h))

proc operatorAssign*(self: QAccessibleImageInterface, param1: QAccessibleImageInterface): void =

  fcQAccessibleImageInterface_operatorAssign(self.h, param1.h)

proc delete*(self: QAccessibleImageInterface) =
  fcQAccessibleImageInterface_delete(self.h)

func init*(T: type QAccessibleHyperlinkInterface, h: ptr cQAccessibleHyperlinkInterface): QAccessibleHyperlinkInterface =
  T(h: h)
proc anchor*(self: QAccessibleHyperlinkInterface, ): string =

  let v_ms = fcQAccessibleHyperlinkInterface_anchor(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc anchorTarget*(self: QAccessibleHyperlinkInterface, ): string =

  let v_ms = fcQAccessibleHyperlinkInterface_anchorTarget(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc startIndex*(self: QAccessibleHyperlinkInterface, ): cint =

  fcQAccessibleHyperlinkInterface_startIndex(self.h)

proc endIndex*(self: QAccessibleHyperlinkInterface, ): cint =

  fcQAccessibleHyperlinkInterface_endIndex(self.h)

proc isValid*(self: QAccessibleHyperlinkInterface, ): bool =

  fcQAccessibleHyperlinkInterface_isValid(self.h)

proc operatorAssign*(self: QAccessibleHyperlinkInterface, param1: QAccessibleHyperlinkInterface): void =

  fcQAccessibleHyperlinkInterface_operatorAssign(self.h, param1.h)

proc delete*(self: QAccessibleHyperlinkInterface) =
  fcQAccessibleHyperlinkInterface_delete(self.h)

func init*(T: type QAccessibleEvent, h: ptr cQAccessibleEvent): QAccessibleEvent =
  T(h: h)
proc create*(T: type QAccessibleEvent, obj: gen_qobject.QObject, typ: gen_qaccessible_base.QAccessibleEventEnum): QAccessibleEvent =

  QAccessibleEvent.init(fcQAccessibleEvent_new(obj.h, cint(typ)))
proc create2*(T: type QAccessibleEvent, iface: QAccessibleInterface, typ: gen_qaccessible_base.QAccessibleEventEnum): QAccessibleEvent =

  QAccessibleEvent.init(fcQAccessibleEvent_new2(iface.h, cint(typ)))
proc typeX*(self: QAccessibleEvent, ): gen_qaccessible_base.QAccessibleEventEnum =

  gen_qaccessible_base.QAccessibleEventEnum(fcQAccessibleEvent_typeX(self.h))

proc objectX*(self: QAccessibleEvent, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQAccessibleEvent_objectX(self.h))

proc uniqueId*(self: QAccessibleEvent, ): cuint =

  fcQAccessibleEvent_uniqueId(self.h)

proc setChild*(self: QAccessibleEvent, chld: cint): void =

  fcQAccessibleEvent_setChild(self.h, chld)

proc child*(self: QAccessibleEvent, ): cint =

  fcQAccessibleEvent_child(self.h)

proc accessibleInterface*(self: QAccessibleEvent, ): QAccessibleInterface =

  QAccessibleInterface(h: fcQAccessibleEvent_accessibleInterface(self.h))

proc callVirtualBase_accessibleInterface(self: QAccessibleEvent, ): QAccessibleInterface =


  QAccessibleInterface(h: fQAccessibleEvent_virtualbase_accessibleInterface(self.h))

type QAccessibleEventaccessibleInterfaceBase* = proc(): QAccessibleInterface
proc onaccessibleInterface*(self: QAccessibleEvent, slot: proc(super: QAccessibleEventaccessibleInterfaceBase): QAccessibleInterface) =
  # TODO check subclass
  type Cb = proc(super: QAccessibleEventaccessibleInterfaceBase): QAccessibleInterface
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleEvent_override_virtual_accessibleInterface(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleEvent_accessibleInterface(self: ptr cQAccessibleEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QAccessibleEvent_accessibleInterface ".} =
  type Cb = proc(super: QAccessibleEventaccessibleInterfaceBase): QAccessibleInterface
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accessibleInterface(QAccessibleEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QAccessibleEvent) =
  fcQAccessibleEvent_delete(self.h)

func init*(T: type QAccessibleStateChangeEvent, h: ptr cQAccessibleStateChangeEvent): QAccessibleStateChangeEvent =
  T(h: h)
proc create*(T: type QAccessibleStateChangeEvent, obj: gen_qobject.QObject, state: gen_qaccessible_base.QAccessibleState): QAccessibleStateChangeEvent =

  QAccessibleStateChangeEvent.init(fcQAccessibleStateChangeEvent_new(obj.h, state.h))
proc create2*(T: type QAccessibleStateChangeEvent, iface: QAccessibleInterface, state: gen_qaccessible_base.QAccessibleState): QAccessibleStateChangeEvent =

  QAccessibleStateChangeEvent.init(fcQAccessibleStateChangeEvent_new2(iface.h, state.h))
proc changedStates*(self: QAccessibleStateChangeEvent, ): gen_qaccessible_base.QAccessibleState =

  gen_qaccessible_base.QAccessibleState(h: fcQAccessibleStateChangeEvent_changedStates(self.h))

proc callVirtualBase_accessibleInterface(self: QAccessibleStateChangeEvent, ): QAccessibleInterface =


  QAccessibleInterface(h: fQAccessibleStateChangeEvent_virtualbase_accessibleInterface(self.h))

type QAccessibleStateChangeEventaccessibleInterfaceBase* = proc(): QAccessibleInterface
proc onaccessibleInterface*(self: QAccessibleStateChangeEvent, slot: proc(super: QAccessibleStateChangeEventaccessibleInterfaceBase): QAccessibleInterface) =
  # TODO check subclass
  type Cb = proc(super: QAccessibleStateChangeEventaccessibleInterfaceBase): QAccessibleInterface
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleStateChangeEvent_override_virtual_accessibleInterface(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleStateChangeEvent_accessibleInterface(self: ptr cQAccessibleStateChangeEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QAccessibleStateChangeEvent_accessibleInterface ".} =
  type Cb = proc(super: QAccessibleStateChangeEventaccessibleInterfaceBase): QAccessibleInterface
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accessibleInterface(QAccessibleStateChangeEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QAccessibleStateChangeEvent) =
  fcQAccessibleStateChangeEvent_delete(self.h)

func init*(T: type QAccessibleTextCursorEvent, h: ptr cQAccessibleTextCursorEvent): QAccessibleTextCursorEvent =
  T(h: h)
proc create*(T: type QAccessibleTextCursorEvent, obj: gen_qobject.QObject, cursorPos: cint): QAccessibleTextCursorEvent =

  QAccessibleTextCursorEvent.init(fcQAccessibleTextCursorEvent_new(obj.h, cursorPos))
proc create2*(T: type QAccessibleTextCursorEvent, iface: QAccessibleInterface, cursorPos: cint): QAccessibleTextCursorEvent =

  QAccessibleTextCursorEvent.init(fcQAccessibleTextCursorEvent_new2(iface.h, cursorPos))
proc setCursorPosition*(self: QAccessibleTextCursorEvent, position: cint): void =

  fcQAccessibleTextCursorEvent_setCursorPosition(self.h, position)

proc cursorPosition*(self: QAccessibleTextCursorEvent, ): cint =

  fcQAccessibleTextCursorEvent_cursorPosition(self.h)

proc callVirtualBase_accessibleInterface(self: QAccessibleTextCursorEvent, ): QAccessibleInterface =


  QAccessibleInterface(h: fQAccessibleTextCursorEvent_virtualbase_accessibleInterface(self.h))

type QAccessibleTextCursorEventaccessibleInterfaceBase* = proc(): QAccessibleInterface
proc onaccessibleInterface*(self: QAccessibleTextCursorEvent, slot: proc(super: QAccessibleTextCursorEventaccessibleInterfaceBase): QAccessibleInterface) =
  # TODO check subclass
  type Cb = proc(super: QAccessibleTextCursorEventaccessibleInterfaceBase): QAccessibleInterface
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleTextCursorEvent_override_virtual_accessibleInterface(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleTextCursorEvent_accessibleInterface(self: ptr cQAccessibleTextCursorEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QAccessibleTextCursorEvent_accessibleInterface ".} =
  type Cb = proc(super: QAccessibleTextCursorEventaccessibleInterfaceBase): QAccessibleInterface
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accessibleInterface(QAccessibleTextCursorEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QAccessibleTextCursorEvent) =
  fcQAccessibleTextCursorEvent_delete(self.h)

func init*(T: type QAccessibleTextSelectionEvent, h: ptr cQAccessibleTextSelectionEvent): QAccessibleTextSelectionEvent =
  T(h: h)
proc create*(T: type QAccessibleTextSelectionEvent, obj: gen_qobject.QObject, start: cint, endVal: cint): QAccessibleTextSelectionEvent =

  QAccessibleTextSelectionEvent.init(fcQAccessibleTextSelectionEvent_new(obj.h, start, endVal))
proc create2*(T: type QAccessibleTextSelectionEvent, iface: QAccessibleInterface, start: cint, endVal: cint): QAccessibleTextSelectionEvent =

  QAccessibleTextSelectionEvent.init(fcQAccessibleTextSelectionEvent_new2(iface.h, start, endVal))
proc setSelection*(self: QAccessibleTextSelectionEvent, start: cint, endVal: cint): void =

  fcQAccessibleTextSelectionEvent_setSelection(self.h, start, endVal)

proc selectionStart*(self: QAccessibleTextSelectionEvent, ): cint =

  fcQAccessibleTextSelectionEvent_selectionStart(self.h)

proc selectionEnd*(self: QAccessibleTextSelectionEvent, ): cint =

  fcQAccessibleTextSelectionEvent_selectionEnd(self.h)

proc callVirtualBase_accessibleInterface(self: QAccessibleTextSelectionEvent, ): QAccessibleInterface =


  QAccessibleInterface(h: fQAccessibleTextSelectionEvent_virtualbase_accessibleInterface(self.h))

type QAccessibleTextSelectionEventaccessibleInterfaceBase* = proc(): QAccessibleInterface
proc onaccessibleInterface*(self: QAccessibleTextSelectionEvent, slot: proc(super: QAccessibleTextSelectionEventaccessibleInterfaceBase): QAccessibleInterface) =
  # TODO check subclass
  type Cb = proc(super: QAccessibleTextSelectionEventaccessibleInterfaceBase): QAccessibleInterface
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleTextSelectionEvent_override_virtual_accessibleInterface(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleTextSelectionEvent_accessibleInterface(self: ptr cQAccessibleTextSelectionEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QAccessibleTextSelectionEvent_accessibleInterface ".} =
  type Cb = proc(super: QAccessibleTextSelectionEventaccessibleInterfaceBase): QAccessibleInterface
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accessibleInterface(QAccessibleTextSelectionEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QAccessibleTextSelectionEvent) =
  fcQAccessibleTextSelectionEvent_delete(self.h)

func init*(T: type QAccessibleTextInsertEvent, h: ptr cQAccessibleTextInsertEvent): QAccessibleTextInsertEvent =
  T(h: h)
proc create*(T: type QAccessibleTextInsertEvent, obj: gen_qobject.QObject, position: cint, text: string): QAccessibleTextInsertEvent =

  QAccessibleTextInsertEvent.init(fcQAccessibleTextInsertEvent_new(obj.h, position, struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create2*(T: type QAccessibleTextInsertEvent, iface: QAccessibleInterface, position: cint, text: string): QAccessibleTextInsertEvent =

  QAccessibleTextInsertEvent.init(fcQAccessibleTextInsertEvent_new2(iface.h, position, struct_miqt_string(data: text, len: csize_t(len(text)))))
proc textInserted*(self: QAccessibleTextInsertEvent, ): string =

  let v_ms = fcQAccessibleTextInsertEvent_textInserted(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc changePosition*(self: QAccessibleTextInsertEvent, ): cint =

  fcQAccessibleTextInsertEvent_changePosition(self.h)

proc callVirtualBase_accessibleInterface(self: QAccessibleTextInsertEvent, ): QAccessibleInterface =


  QAccessibleInterface(h: fQAccessibleTextInsertEvent_virtualbase_accessibleInterface(self.h))

type QAccessibleTextInsertEventaccessibleInterfaceBase* = proc(): QAccessibleInterface
proc onaccessibleInterface*(self: QAccessibleTextInsertEvent, slot: proc(super: QAccessibleTextInsertEventaccessibleInterfaceBase): QAccessibleInterface) =
  # TODO check subclass
  type Cb = proc(super: QAccessibleTextInsertEventaccessibleInterfaceBase): QAccessibleInterface
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleTextInsertEvent_override_virtual_accessibleInterface(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleTextInsertEvent_accessibleInterface(self: ptr cQAccessibleTextInsertEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QAccessibleTextInsertEvent_accessibleInterface ".} =
  type Cb = proc(super: QAccessibleTextInsertEventaccessibleInterfaceBase): QAccessibleInterface
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accessibleInterface(QAccessibleTextInsertEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QAccessibleTextInsertEvent) =
  fcQAccessibleTextInsertEvent_delete(self.h)

func init*(T: type QAccessibleTextRemoveEvent, h: ptr cQAccessibleTextRemoveEvent): QAccessibleTextRemoveEvent =
  T(h: h)
proc create*(T: type QAccessibleTextRemoveEvent, obj: gen_qobject.QObject, position: cint, text: string): QAccessibleTextRemoveEvent =

  QAccessibleTextRemoveEvent.init(fcQAccessibleTextRemoveEvent_new(obj.h, position, struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create2*(T: type QAccessibleTextRemoveEvent, iface: QAccessibleInterface, position: cint, text: string): QAccessibleTextRemoveEvent =

  QAccessibleTextRemoveEvent.init(fcQAccessibleTextRemoveEvent_new2(iface.h, position, struct_miqt_string(data: text, len: csize_t(len(text)))))
proc textRemoved*(self: QAccessibleTextRemoveEvent, ): string =

  let v_ms = fcQAccessibleTextRemoveEvent_textRemoved(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc changePosition*(self: QAccessibleTextRemoveEvent, ): cint =

  fcQAccessibleTextRemoveEvent_changePosition(self.h)

proc callVirtualBase_accessibleInterface(self: QAccessibleTextRemoveEvent, ): QAccessibleInterface =


  QAccessibleInterface(h: fQAccessibleTextRemoveEvent_virtualbase_accessibleInterface(self.h))

type QAccessibleTextRemoveEventaccessibleInterfaceBase* = proc(): QAccessibleInterface
proc onaccessibleInterface*(self: QAccessibleTextRemoveEvent, slot: proc(super: QAccessibleTextRemoveEventaccessibleInterfaceBase): QAccessibleInterface) =
  # TODO check subclass
  type Cb = proc(super: QAccessibleTextRemoveEventaccessibleInterfaceBase): QAccessibleInterface
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleTextRemoveEvent_override_virtual_accessibleInterface(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleTextRemoveEvent_accessibleInterface(self: ptr cQAccessibleTextRemoveEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QAccessibleTextRemoveEvent_accessibleInterface ".} =
  type Cb = proc(super: QAccessibleTextRemoveEventaccessibleInterfaceBase): QAccessibleInterface
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accessibleInterface(QAccessibleTextRemoveEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QAccessibleTextRemoveEvent) =
  fcQAccessibleTextRemoveEvent_delete(self.h)

func init*(T: type QAccessibleTextUpdateEvent, h: ptr cQAccessibleTextUpdateEvent): QAccessibleTextUpdateEvent =
  T(h: h)
proc create*(T: type QAccessibleTextUpdateEvent, obj: gen_qobject.QObject, position: cint, oldText: string, text: string): QAccessibleTextUpdateEvent =

  QAccessibleTextUpdateEvent.init(fcQAccessibleTextUpdateEvent_new(obj.h, position, struct_miqt_string(data: oldText, len: csize_t(len(oldText))), struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create2*(T: type QAccessibleTextUpdateEvent, iface: QAccessibleInterface, position: cint, oldText: string, text: string): QAccessibleTextUpdateEvent =

  QAccessibleTextUpdateEvent.init(fcQAccessibleTextUpdateEvent_new2(iface.h, position, struct_miqt_string(data: oldText, len: csize_t(len(oldText))), struct_miqt_string(data: text, len: csize_t(len(text)))))
proc textRemoved*(self: QAccessibleTextUpdateEvent, ): string =

  let v_ms = fcQAccessibleTextUpdateEvent_textRemoved(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textInserted*(self: QAccessibleTextUpdateEvent, ): string =

  let v_ms = fcQAccessibleTextUpdateEvent_textInserted(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc changePosition*(self: QAccessibleTextUpdateEvent, ): cint =

  fcQAccessibleTextUpdateEvent_changePosition(self.h)

proc callVirtualBase_accessibleInterface(self: QAccessibleTextUpdateEvent, ): QAccessibleInterface =


  QAccessibleInterface(h: fQAccessibleTextUpdateEvent_virtualbase_accessibleInterface(self.h))

type QAccessibleTextUpdateEventaccessibleInterfaceBase* = proc(): QAccessibleInterface
proc onaccessibleInterface*(self: QAccessibleTextUpdateEvent, slot: proc(super: QAccessibleTextUpdateEventaccessibleInterfaceBase): QAccessibleInterface) =
  # TODO check subclass
  type Cb = proc(super: QAccessibleTextUpdateEventaccessibleInterfaceBase): QAccessibleInterface
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleTextUpdateEvent_override_virtual_accessibleInterface(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleTextUpdateEvent_accessibleInterface(self: ptr cQAccessibleTextUpdateEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QAccessibleTextUpdateEvent_accessibleInterface ".} =
  type Cb = proc(super: QAccessibleTextUpdateEventaccessibleInterfaceBase): QAccessibleInterface
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accessibleInterface(QAccessibleTextUpdateEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QAccessibleTextUpdateEvent) =
  fcQAccessibleTextUpdateEvent_delete(self.h)

func init*(T: type QAccessibleValueChangeEvent, h: ptr cQAccessibleValueChangeEvent): QAccessibleValueChangeEvent =
  T(h: h)
proc create*(T: type QAccessibleValueChangeEvent, obj: gen_qobject.QObject, val: gen_qvariant.QVariant): QAccessibleValueChangeEvent =

  QAccessibleValueChangeEvent.init(fcQAccessibleValueChangeEvent_new(obj.h, val.h))
proc create2*(T: type QAccessibleValueChangeEvent, iface: QAccessibleInterface, val: gen_qvariant.QVariant): QAccessibleValueChangeEvent =

  QAccessibleValueChangeEvent.init(fcQAccessibleValueChangeEvent_new2(iface.h, val.h))
proc setValue*(self: QAccessibleValueChangeEvent, val: gen_qvariant.QVariant): void =

  fcQAccessibleValueChangeEvent_setValue(self.h, val.h)

proc value*(self: QAccessibleValueChangeEvent, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQAccessibleValueChangeEvent_value(self.h))

proc callVirtualBase_accessibleInterface(self: QAccessibleValueChangeEvent, ): QAccessibleInterface =


  QAccessibleInterface(h: fQAccessibleValueChangeEvent_virtualbase_accessibleInterface(self.h))

type QAccessibleValueChangeEventaccessibleInterfaceBase* = proc(): QAccessibleInterface
proc onaccessibleInterface*(self: QAccessibleValueChangeEvent, slot: proc(super: QAccessibleValueChangeEventaccessibleInterfaceBase): QAccessibleInterface) =
  # TODO check subclass
  type Cb = proc(super: QAccessibleValueChangeEventaccessibleInterfaceBase): QAccessibleInterface
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleValueChangeEvent_override_virtual_accessibleInterface(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleValueChangeEvent_accessibleInterface(self: ptr cQAccessibleValueChangeEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QAccessibleValueChangeEvent_accessibleInterface ".} =
  type Cb = proc(super: QAccessibleValueChangeEventaccessibleInterfaceBase): QAccessibleInterface
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accessibleInterface(QAccessibleValueChangeEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QAccessibleValueChangeEvent) =
  fcQAccessibleValueChangeEvent_delete(self.h)

func init*(T: type QAccessibleTableModelChangeEvent, h: ptr cQAccessibleTableModelChangeEvent): QAccessibleTableModelChangeEvent =
  T(h: h)
proc create*(T: type QAccessibleTableModelChangeEvent, obj: gen_qobject.QObject, changeType: QAccessibleTableModelChangeEventModelChangeType): QAccessibleTableModelChangeEvent =

  QAccessibleTableModelChangeEvent.init(fcQAccessibleTableModelChangeEvent_new(obj.h, cint(changeType)))
proc create2*(T: type QAccessibleTableModelChangeEvent, iface: QAccessibleInterface, changeType: QAccessibleTableModelChangeEventModelChangeType): QAccessibleTableModelChangeEvent =

  QAccessibleTableModelChangeEvent.init(fcQAccessibleTableModelChangeEvent_new2(iface.h, cint(changeType)))
proc setModelChangeType*(self: QAccessibleTableModelChangeEvent, changeType: QAccessibleTableModelChangeEventModelChangeType): void =

  fcQAccessibleTableModelChangeEvent_setModelChangeType(self.h, cint(changeType))

proc modelChangeType*(self: QAccessibleTableModelChangeEvent, ): QAccessibleTableModelChangeEventModelChangeType =

  QAccessibleTableModelChangeEventModelChangeType(fcQAccessibleTableModelChangeEvent_modelChangeType(self.h))

proc setFirstRow*(self: QAccessibleTableModelChangeEvent, row: cint): void =

  fcQAccessibleTableModelChangeEvent_setFirstRow(self.h, row)

proc setFirstColumn*(self: QAccessibleTableModelChangeEvent, col: cint): void =

  fcQAccessibleTableModelChangeEvent_setFirstColumn(self.h, col)

proc setLastRow*(self: QAccessibleTableModelChangeEvent, row: cint): void =

  fcQAccessibleTableModelChangeEvent_setLastRow(self.h, row)

proc setLastColumn*(self: QAccessibleTableModelChangeEvent, col: cint): void =

  fcQAccessibleTableModelChangeEvent_setLastColumn(self.h, col)

proc firstRow*(self: QAccessibleTableModelChangeEvent, ): cint =

  fcQAccessibleTableModelChangeEvent_firstRow(self.h)

proc firstColumn*(self: QAccessibleTableModelChangeEvent, ): cint =

  fcQAccessibleTableModelChangeEvent_firstColumn(self.h)

proc lastRow*(self: QAccessibleTableModelChangeEvent, ): cint =

  fcQAccessibleTableModelChangeEvent_lastRow(self.h)

proc lastColumn*(self: QAccessibleTableModelChangeEvent, ): cint =

  fcQAccessibleTableModelChangeEvent_lastColumn(self.h)

proc callVirtualBase_accessibleInterface(self: QAccessibleTableModelChangeEvent, ): QAccessibleInterface =


  QAccessibleInterface(h: fQAccessibleTableModelChangeEvent_virtualbase_accessibleInterface(self.h))

type QAccessibleTableModelChangeEventaccessibleInterfaceBase* = proc(): QAccessibleInterface
proc onaccessibleInterface*(self: QAccessibleTableModelChangeEvent, slot: proc(super: QAccessibleTableModelChangeEventaccessibleInterfaceBase): QAccessibleInterface) =
  # TODO check subclass
  type Cb = proc(super: QAccessibleTableModelChangeEventaccessibleInterfaceBase): QAccessibleInterface
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAccessibleTableModelChangeEvent_override_virtual_accessibleInterface(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAccessibleTableModelChangeEvent_accessibleInterface(self: ptr cQAccessibleTableModelChangeEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QAccessibleTableModelChangeEvent_accessibleInterface ".} =
  type Cb = proc(super: QAccessibleTableModelChangeEventaccessibleInterfaceBase): QAccessibleInterface
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_accessibleInterface(QAccessibleTableModelChangeEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QAccessibleTableModelChangeEvent) =
  fcQAccessibleTableModelChangeEvent_delete(self.h)
