import Qt5Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5Widgets")
{.compile("gen_qtableview.cpp", cflags).}


import gen_qtableview_types
export gen_qtableview_types

import
  gen_qabstractitemdelegate,
  gen_qabstractitemmodel,
  gen_qabstractitemview,
  gen_qcoreevent,
  gen_qevent,
  gen_qheaderview,
  gen_qitemselectionmodel,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qsize,
  gen_qstyleoption,
  gen_qvariant,
  gen_qwidget
export
  gen_qabstractitemdelegate,
  gen_qabstractitemmodel,
  gen_qabstractitemview,
  gen_qcoreevent,
  gen_qevent,
  gen_qheaderview,
  gen_qitemselectionmodel,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpaintdevice,
  gen_qpaintengine,
  gen_qpainter,
  gen_qpoint,
  gen_qrect,
  gen_qregion,
  gen_qsize,
  gen_qstyleoption,
  gen_qvariant,
  gen_qwidget

type cQTableView*{.exportc: "QTableView", incompleteStruct.} = object

proc fcQTableView_new(parent: pointer): ptr cQTableView {.importc: "QTableView_new".}
proc fcQTableView_new2(): ptr cQTableView {.importc: "QTableView_new2".}
proc fcQTableView_metaObject(self: pointer, ): pointer {.importc: "QTableView_metaObject".}
proc fcQTableView_metacast(self: pointer, param1: cstring): pointer {.importc: "QTableView_metacast".}
proc fcQTableView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTableView_metacall".}
proc fcQTableView_tr(s: cstring): struct_miqt_string {.importc: "QTableView_tr".}
proc fcQTableView_trUtf8(s: cstring): struct_miqt_string {.importc: "QTableView_trUtf8".}
proc fcQTableView_setModel(self: pointer, model: pointer): void {.importc: "QTableView_setModel".}
proc fcQTableView_setRootIndex(self: pointer, index: pointer): void {.importc: "QTableView_setRootIndex".}
proc fcQTableView_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QTableView_setSelectionModel".}
proc fcQTableView_doItemsLayout(self: pointer, ): void {.importc: "QTableView_doItemsLayout".}
proc fcQTableView_horizontalHeader(self: pointer, ): pointer {.importc: "QTableView_horizontalHeader".}
proc fcQTableView_verticalHeader(self: pointer, ): pointer {.importc: "QTableView_verticalHeader".}
proc fcQTableView_setHorizontalHeader(self: pointer, header: pointer): void {.importc: "QTableView_setHorizontalHeader".}
proc fcQTableView_setVerticalHeader(self: pointer, header: pointer): void {.importc: "QTableView_setVerticalHeader".}
proc fcQTableView_rowViewportPosition(self: pointer, row: cint): cint {.importc: "QTableView_rowViewportPosition".}
proc fcQTableView_rowAt(self: pointer, y: cint): cint {.importc: "QTableView_rowAt".}
proc fcQTableView_setRowHeight(self: pointer, row: cint, height: cint): void {.importc: "QTableView_setRowHeight".}
proc fcQTableView_rowHeight(self: pointer, row: cint): cint {.importc: "QTableView_rowHeight".}
proc fcQTableView_columnViewportPosition(self: pointer, column: cint): cint {.importc: "QTableView_columnViewportPosition".}
proc fcQTableView_columnAt(self: pointer, x: cint): cint {.importc: "QTableView_columnAt".}
proc fcQTableView_setColumnWidth(self: pointer, column: cint, width: cint): void {.importc: "QTableView_setColumnWidth".}
proc fcQTableView_columnWidth(self: pointer, column: cint): cint {.importc: "QTableView_columnWidth".}
proc fcQTableView_isRowHidden(self: pointer, row: cint): bool {.importc: "QTableView_isRowHidden".}
proc fcQTableView_setRowHidden(self: pointer, row: cint, hide: bool): void {.importc: "QTableView_setRowHidden".}
proc fcQTableView_isColumnHidden(self: pointer, column: cint): bool {.importc: "QTableView_isColumnHidden".}
proc fcQTableView_setColumnHidden(self: pointer, column: cint, hide: bool): void {.importc: "QTableView_setColumnHidden".}
proc fcQTableView_setSortingEnabled(self: pointer, enable: bool): void {.importc: "QTableView_setSortingEnabled".}
proc fcQTableView_isSortingEnabled(self: pointer, ): bool {.importc: "QTableView_isSortingEnabled".}
proc fcQTableView_showGrid(self: pointer, ): bool {.importc: "QTableView_showGrid".}
proc fcQTableView_gridStyle(self: pointer, ): cint {.importc: "QTableView_gridStyle".}
proc fcQTableView_setGridStyle(self: pointer, style: cint): void {.importc: "QTableView_setGridStyle".}
proc fcQTableView_setWordWrap(self: pointer, on: bool): void {.importc: "QTableView_setWordWrap".}
proc fcQTableView_wordWrap(self: pointer, ): bool {.importc: "QTableView_wordWrap".}
proc fcQTableView_setCornerButtonEnabled(self: pointer, enable: bool): void {.importc: "QTableView_setCornerButtonEnabled".}
proc fcQTableView_isCornerButtonEnabled(self: pointer, ): bool {.importc: "QTableView_isCornerButtonEnabled".}
proc fcQTableView_visualRect(self: pointer, index: pointer): pointer {.importc: "QTableView_visualRect".}
proc fcQTableView_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QTableView_scrollTo".}
proc fcQTableView_indexAt(self: pointer, p: pointer): pointer {.importc: "QTableView_indexAt".}
proc fcQTableView_setSpan(self: pointer, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void {.importc: "QTableView_setSpan".}
proc fcQTableView_rowSpan(self: pointer, row: cint, column: cint): cint {.importc: "QTableView_rowSpan".}
proc fcQTableView_columnSpan(self: pointer, row: cint, column: cint): cint {.importc: "QTableView_columnSpan".}
proc fcQTableView_clearSpans(self: pointer, ): void {.importc: "QTableView_clearSpans".}
proc fcQTableView_selectRow(self: pointer, row: cint): void {.importc: "QTableView_selectRow".}
proc fcQTableView_selectColumn(self: pointer, column: cint): void {.importc: "QTableView_selectColumn".}
proc fcQTableView_hideRow(self: pointer, row: cint): void {.importc: "QTableView_hideRow".}
proc fcQTableView_hideColumn(self: pointer, column: cint): void {.importc: "QTableView_hideColumn".}
proc fcQTableView_showRow(self: pointer, row: cint): void {.importc: "QTableView_showRow".}
proc fcQTableView_showColumn(self: pointer, column: cint): void {.importc: "QTableView_showColumn".}
proc fcQTableView_resizeRowToContents(self: pointer, row: cint): void {.importc: "QTableView_resizeRowToContents".}
proc fcQTableView_resizeRowsToContents(self: pointer, ): void {.importc: "QTableView_resizeRowsToContents".}
proc fcQTableView_resizeColumnToContents(self: pointer, column: cint): void {.importc: "QTableView_resizeColumnToContents".}
proc fcQTableView_resizeColumnsToContents(self: pointer, ): void {.importc: "QTableView_resizeColumnsToContents".}
proc fcQTableView_sortByColumn(self: pointer, column: cint): void {.importc: "QTableView_sortByColumn".}
proc fcQTableView_sortByColumn2(self: pointer, column: cint, order: cint): void {.importc: "QTableView_sortByColumn2".}
proc fcQTableView_setShowGrid(self: pointer, show: bool): void {.importc: "QTableView_setShowGrid".}
proc fcQTableView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTableView_tr2".}
proc fcQTableView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTableView_tr3".}
proc fcQTableView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTableView_trUtf82".}
proc fcQTableView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTableView_trUtf83".}
proc fQTableView_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTableView_virtualbase_metaObject".}
proc fcQTableView_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTableView_override_virtual_metaObject".}
proc fQTableView_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTableView_virtualbase_metacast".}
proc fcQTableView_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTableView_override_virtual_metacast".}
proc fQTableView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTableView_virtualbase_metacall".}
proc fcQTableView_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTableView_override_virtual_metacall".}
proc fQTableView_virtualbase_setModel(self: pointer, model: pointer): void{.importc: "QTableView_virtualbase_setModel".}
proc fcQTableView_override_virtual_setModel(self: pointer, slot: int) {.importc: "QTableView_override_virtual_setModel".}
proc fQTableView_virtualbase_setRootIndex(self: pointer, index: pointer): void{.importc: "QTableView_virtualbase_setRootIndex".}
proc fcQTableView_override_virtual_setRootIndex(self: pointer, slot: int) {.importc: "QTableView_override_virtual_setRootIndex".}
proc fQTableView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void{.importc: "QTableView_virtualbase_setSelectionModel".}
proc fcQTableView_override_virtual_setSelectionModel(self: pointer, slot: int) {.importc: "QTableView_override_virtual_setSelectionModel".}
proc fQTableView_virtualbase_doItemsLayout(self: pointer, ): void{.importc: "QTableView_virtualbase_doItemsLayout".}
proc fcQTableView_override_virtual_doItemsLayout(self: pointer, slot: int) {.importc: "QTableView_override_virtual_doItemsLayout".}
proc fQTableView_virtualbase_visualRect(self: pointer, index: pointer): pointer{.importc: "QTableView_virtualbase_visualRect".}
proc fcQTableView_override_virtual_visualRect(self: pointer, slot: int) {.importc: "QTableView_override_virtual_visualRect".}
proc fQTableView_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void{.importc: "QTableView_virtualbase_scrollTo".}
proc fcQTableView_override_virtual_scrollTo(self: pointer, slot: int) {.importc: "QTableView_override_virtual_scrollTo".}
proc fQTableView_virtualbase_indexAt(self: pointer, p: pointer): pointer{.importc: "QTableView_virtualbase_indexAt".}
proc fcQTableView_override_virtual_indexAt(self: pointer, slot: int) {.importc: "QTableView_override_virtual_indexAt".}
proc fQTableView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QTableView_virtualbase_scrollContentsBy".}
proc fcQTableView_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QTableView_override_virtual_scrollContentsBy".}
proc fQTableView_virtualbase_viewOptions(self: pointer, ): pointer{.importc: "QTableView_virtualbase_viewOptions".}
proc fcQTableView_override_virtual_viewOptions(self: pointer, slot: int) {.importc: "QTableView_override_virtual_viewOptions".}
proc fQTableView_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QTableView_virtualbase_paintEvent".}
proc fcQTableView_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_paintEvent".}
proc fQTableView_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_timerEvent".}
proc fcQTableView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_timerEvent".}
proc fQTableView_virtualbase_horizontalOffset(self: pointer, ): cint{.importc: "QTableView_virtualbase_horizontalOffset".}
proc fcQTableView_override_virtual_horizontalOffset(self: pointer, slot: int) {.importc: "QTableView_override_virtual_horizontalOffset".}
proc fQTableView_virtualbase_verticalOffset(self: pointer, ): cint{.importc: "QTableView_virtualbase_verticalOffset".}
proc fcQTableView_override_virtual_verticalOffset(self: pointer, slot: int) {.importc: "QTableView_override_virtual_verticalOffset".}
proc fQTableView_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer{.importc: "QTableView_virtualbase_moveCursor".}
proc fcQTableView_override_virtual_moveCursor(self: pointer, slot: int) {.importc: "QTableView_override_virtual_moveCursor".}
proc fQTableView_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void{.importc: "QTableView_virtualbase_setSelection".}
proc fcQTableView_override_virtual_setSelection(self: pointer, slot: int) {.importc: "QTableView_override_virtual_setSelection".}
proc fQTableView_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer{.importc: "QTableView_virtualbase_visualRegionForSelection".}
proc fcQTableView_override_virtual_visualRegionForSelection(self: pointer, slot: int) {.importc: "QTableView_override_virtual_visualRegionForSelection".}
proc fQTableView_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array{.importc: "QTableView_virtualbase_selectedIndexes".}
proc fcQTableView_override_virtual_selectedIndexes(self: pointer, slot: int) {.importc: "QTableView_override_virtual_selectedIndexes".}
proc fQTableView_virtualbase_updateGeometries(self: pointer, ): void{.importc: "QTableView_virtualbase_updateGeometries".}
proc fcQTableView_override_virtual_updateGeometries(self: pointer, slot: int) {.importc: "QTableView_override_virtual_updateGeometries".}
proc fQTableView_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QTableView_virtualbase_viewportSizeHint".}
proc fcQTableView_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QTableView_override_virtual_viewportSizeHint".}
proc fQTableView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint{.importc: "QTableView_virtualbase_sizeHintForRow".}
proc fcQTableView_override_virtual_sizeHintForRow(self: pointer, slot: int) {.importc: "QTableView_override_virtual_sizeHintForRow".}
proc fQTableView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint{.importc: "QTableView_virtualbase_sizeHintForColumn".}
proc fcQTableView_override_virtual_sizeHintForColumn(self: pointer, slot: int) {.importc: "QTableView_override_virtual_sizeHintForColumn".}
proc fQTableView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void{.importc: "QTableView_virtualbase_verticalScrollbarAction".}
proc fcQTableView_override_virtual_verticalScrollbarAction(self: pointer, slot: int) {.importc: "QTableView_override_virtual_verticalScrollbarAction".}
proc fQTableView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void{.importc: "QTableView_virtualbase_horizontalScrollbarAction".}
proc fcQTableView_override_virtual_horizontalScrollbarAction(self: pointer, slot: int) {.importc: "QTableView_override_virtual_horizontalScrollbarAction".}
proc fQTableView_virtualbase_isIndexHidden(self: pointer, index: pointer): bool{.importc: "QTableView_virtualbase_isIndexHidden".}
proc fcQTableView_override_virtual_isIndexHidden(self: pointer, slot: int) {.importc: "QTableView_override_virtual_isIndexHidden".}
proc fQTableView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void{.importc: "QTableView_virtualbase_selectionChanged".}
proc fcQTableView_override_virtual_selectionChanged(self: pointer, slot: int) {.importc: "QTableView_override_virtual_selectionChanged".}
proc fQTableView_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void{.importc: "QTableView_virtualbase_currentChanged".}
proc fcQTableView_override_virtual_currentChanged(self: pointer, slot: int) {.importc: "QTableView_override_virtual_currentChanged".}
proc fQTableView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void{.importc: "QTableView_virtualbase_keyboardSearch".}
proc fcQTableView_override_virtual_keyboardSearch(self: pointer, slot: int) {.importc: "QTableView_override_virtual_keyboardSearch".}
proc fQTableView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QTableView_virtualbase_inputMethodQuery".}
proc fcQTableView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QTableView_override_virtual_inputMethodQuery".}
proc fQTableView_virtualbase_reset(self: pointer, ): void{.importc: "QTableView_virtualbase_reset".}
proc fcQTableView_override_virtual_reset(self: pointer, slot: int) {.importc: "QTableView_override_virtual_reset".}
proc fQTableView_virtualbase_selectAll(self: pointer, ): void{.importc: "QTableView_virtualbase_selectAll".}
proc fcQTableView_override_virtual_selectAll(self: pointer, slot: int) {.importc: "QTableView_override_virtual_selectAll".}
proc fQTableView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void{.importc: "QTableView_virtualbase_dataChanged".}
proc fcQTableView_override_virtual_dataChanged(self: pointer, slot: int) {.importc: "QTableView_override_virtual_dataChanged".}
proc fQTableView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QTableView_virtualbase_rowsInserted".}
proc fcQTableView_override_virtual_rowsInserted(self: pointer, slot: int) {.importc: "QTableView_override_virtual_rowsInserted".}
proc fQTableView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QTableView_virtualbase_rowsAboutToBeRemoved".}
proc fcQTableView_override_virtual_rowsAboutToBeRemoved(self: pointer, slot: int) {.importc: "QTableView_override_virtual_rowsAboutToBeRemoved".}
proc fQTableView_virtualbase_updateEditorData(self: pointer, ): void{.importc: "QTableView_virtualbase_updateEditorData".}
proc fcQTableView_override_virtual_updateEditorData(self: pointer, slot: int) {.importc: "QTableView_override_virtual_updateEditorData".}
proc fQTableView_virtualbase_updateEditorGeometries(self: pointer, ): void{.importc: "QTableView_virtualbase_updateEditorGeometries".}
proc fcQTableView_override_virtual_updateEditorGeometries(self: pointer, slot: int) {.importc: "QTableView_override_virtual_updateEditorGeometries".}
proc fQTableView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QTableView_virtualbase_verticalScrollbarValueChanged".}
proc fcQTableView_override_virtual_verticalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QTableView_override_virtual_verticalScrollbarValueChanged".}
proc fQTableView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QTableView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQTableView_override_virtual_horizontalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QTableView_override_virtual_horizontalScrollbarValueChanged".}
proc fQTableView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void{.importc: "QTableView_virtualbase_closeEditor".}
proc fcQTableView_override_virtual_closeEditor(self: pointer, slot: int) {.importc: "QTableView_override_virtual_closeEditor".}
proc fQTableView_virtualbase_commitData(self: pointer, editor: pointer): void{.importc: "QTableView_virtualbase_commitData".}
proc fcQTableView_override_virtual_commitData(self: pointer, slot: int) {.importc: "QTableView_override_virtual_commitData".}
proc fQTableView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void{.importc: "QTableView_virtualbase_editorDestroyed".}
proc fcQTableView_override_virtual_editorDestroyed(self: pointer, slot: int) {.importc: "QTableView_override_virtual_editorDestroyed".}
proc fQTableView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool{.importc: "QTableView_virtualbase_edit2".}
proc fcQTableView_override_virtual_edit2(self: pointer, slot: int) {.importc: "QTableView_override_virtual_edit2".}
proc fQTableView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint{.importc: "QTableView_virtualbase_selectionCommand".}
proc fcQTableView_override_virtual_selectionCommand(self: pointer, slot: int) {.importc: "QTableView_override_virtual_selectionCommand".}
proc fQTableView_virtualbase_startDrag(self: pointer, supportedActions: cint): void{.importc: "QTableView_virtualbase_startDrag".}
proc fcQTableView_override_virtual_startDrag(self: pointer, slot: int) {.importc: "QTableView_override_virtual_startDrag".}
proc fQTableView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QTableView_virtualbase_focusNextPrevChild".}
proc fcQTableView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QTableView_override_virtual_focusNextPrevChild".}
proc fQTableView_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTableView_virtualbase_event".}
proc fcQTableView_override_virtual_event(self: pointer, slot: int) {.importc: "QTableView_override_virtual_event".}
proc fQTableView_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QTableView_virtualbase_viewportEvent".}
proc fcQTableView_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_viewportEvent".}
proc fQTableView_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_mousePressEvent".}
proc fcQTableView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_mousePressEvent".}
proc fQTableView_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_mouseMoveEvent".}
proc fcQTableView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_mouseMoveEvent".}
proc fQTableView_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_mouseReleaseEvent".}
proc fcQTableView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_mouseReleaseEvent".}
proc fQTableView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_mouseDoubleClickEvent".}
proc fcQTableView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_mouseDoubleClickEvent".}
proc fQTableView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_dragEnterEvent".}
proc fcQTableView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_dragEnterEvent".}
proc fQTableView_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_dragMoveEvent".}
proc fcQTableView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_dragMoveEvent".}
proc fQTableView_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_dragLeaveEvent".}
proc fcQTableView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_dragLeaveEvent".}
proc fQTableView_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_dropEvent".}
proc fcQTableView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_dropEvent".}
proc fQTableView_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_focusInEvent".}
proc fcQTableView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_focusInEvent".}
proc fQTableView_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_focusOutEvent".}
proc fcQTableView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_focusOutEvent".}
proc fQTableView_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_keyPressEvent".}
proc fcQTableView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_keyPressEvent".}
proc fQTableView_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_resizeEvent".}
proc fcQTableView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_resizeEvent".}
proc fQTableView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_inputMethodEvent".}
proc fcQTableView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_inputMethodEvent".}
proc fQTableView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QTableView_virtualbase_eventFilter".}
proc fcQTableView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTableView_override_virtual_eventFilter".}
proc fQTableView_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QTableView_virtualbase_minimumSizeHint".}
proc fcQTableView_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QTableView_override_virtual_minimumSizeHint".}
proc fQTableView_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QTableView_virtualbase_sizeHint".}
proc fcQTableView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QTableView_override_virtual_sizeHint".}
proc fQTableView_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QTableView_virtualbase_setupViewport".}
proc fcQTableView_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QTableView_override_virtual_setupViewport".}
proc fQTableView_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QTableView_virtualbase_wheelEvent".}
proc fcQTableView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_wheelEvent".}
proc fQTableView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QTableView_virtualbase_contextMenuEvent".}
proc fcQTableView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_contextMenuEvent".}
proc fQTableView_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QTableView_virtualbase_changeEvent".}
proc fcQTableView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_changeEvent".}
proc fQTableView_virtualbase_devType(self: pointer, ): cint{.importc: "QTableView_virtualbase_devType".}
proc fcQTableView_override_virtual_devType(self: pointer, slot: int) {.importc: "QTableView_override_virtual_devType".}
proc fQTableView_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QTableView_virtualbase_setVisible".}
proc fcQTableView_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QTableView_override_virtual_setVisible".}
proc fQTableView_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QTableView_virtualbase_heightForWidth".}
proc fcQTableView_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QTableView_override_virtual_heightForWidth".}
proc fQTableView_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QTableView_virtualbase_hasHeightForWidth".}
proc fcQTableView_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QTableView_override_virtual_hasHeightForWidth".}
proc fQTableView_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QTableView_virtualbase_paintEngine".}
proc fcQTableView_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QTableView_override_virtual_paintEngine".}
proc fQTableView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_keyReleaseEvent".}
proc fcQTableView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_keyReleaseEvent".}
proc fQTableView_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_enterEvent".}
proc fcQTableView_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_enterEvent".}
proc fQTableView_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_leaveEvent".}
proc fcQTableView_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_leaveEvent".}
proc fQTableView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_moveEvent".}
proc fcQTableView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_moveEvent".}
proc fQTableView_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_closeEvent".}
proc fcQTableView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_closeEvent".}
proc fQTableView_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_tabletEvent".}
proc fcQTableView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_tabletEvent".}
proc fQTableView_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_actionEvent".}
proc fcQTableView_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_actionEvent".}
proc fQTableView_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_showEvent".}
proc fcQTableView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_showEvent".}
proc fQTableView_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_hideEvent".}
proc fcQTableView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_hideEvent".}
proc fQTableView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QTableView_virtualbase_nativeEvent".}
proc fcQTableView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_nativeEvent".}
proc fQTableView_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QTableView_virtualbase_metric".}
proc fcQTableView_override_virtual_metric(self: pointer, slot: int) {.importc: "QTableView_override_virtual_metric".}
proc fQTableView_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QTableView_virtualbase_initPainter".}
proc fcQTableView_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QTableView_override_virtual_initPainter".}
proc fQTableView_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QTableView_virtualbase_redirected".}
proc fcQTableView_override_virtual_redirected(self: pointer, slot: int) {.importc: "QTableView_override_virtual_redirected".}
proc fQTableView_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QTableView_virtualbase_sharedPainter".}
proc fcQTableView_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QTableView_override_virtual_sharedPainter".}
proc fQTableView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_childEvent".}
proc fcQTableView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_childEvent".}
proc fQTableView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTableView_virtualbase_customEvent".}
proc fcQTableView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTableView_override_virtual_customEvent".}
proc fQTableView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTableView_virtualbase_connectNotify".}
proc fcQTableView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTableView_override_virtual_connectNotify".}
proc fQTableView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTableView_virtualbase_disconnectNotify".}
proc fcQTableView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTableView_override_virtual_disconnectNotify".}
proc fcQTableView_staticMetaObject(): pointer {.importc: "QTableView_staticMetaObject".}
proc fcQTableView_delete(self: pointer) {.importc: "QTableView_delete".}


func init*(T: type QTableView, h: ptr cQTableView): QTableView =
  T(h: h)
proc create*(T: type QTableView, parent: gen_qwidget.QWidget): QTableView =

  QTableView.init(fcQTableView_new(parent.h))
proc create*(T: type QTableView, ): QTableView =

  QTableView.init(fcQTableView_new2())
proc metaObject*(self: QTableView, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTableView_metaObject(self.h))

proc metacast*(self: QTableView, param1: cstring): pointer =

  fcQTableView_metacast(self.h, param1)

proc metacall*(self: QTableView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTableView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTableView, s: cstring): string =

  let v_ms = fcQTableView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QTableView, s: cstring): string =

  let v_ms = fcQTableView_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setModel*(self: QTableView, model: gen_qabstractitemmodel.QAbstractItemModel): void =

  fcQTableView_setModel(self.h, model.h)

proc setRootIndex*(self: QTableView, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQTableView_setRootIndex(self.h, index.h)

proc setSelectionModel*(self: QTableView, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void =

  fcQTableView_setSelectionModel(self.h, selectionModel.h)

proc doItemsLayout*(self: QTableView, ): void =

  fcQTableView_doItemsLayout(self.h)

proc horizontalHeader*(self: QTableView, ): gen_qheaderview.QHeaderView =

  gen_qheaderview.QHeaderView(h: fcQTableView_horizontalHeader(self.h))

proc verticalHeader*(self: QTableView, ): gen_qheaderview.QHeaderView =

  gen_qheaderview.QHeaderView(h: fcQTableView_verticalHeader(self.h))

proc setHorizontalHeader*(self: QTableView, header: gen_qheaderview.QHeaderView): void =

  fcQTableView_setHorizontalHeader(self.h, header.h)

proc setVerticalHeader*(self: QTableView, header: gen_qheaderview.QHeaderView): void =

  fcQTableView_setVerticalHeader(self.h, header.h)

proc rowViewportPosition*(self: QTableView, row: cint): cint =

  fcQTableView_rowViewportPosition(self.h, row)

proc rowAt*(self: QTableView, y: cint): cint =

  fcQTableView_rowAt(self.h, y)

proc setRowHeight*(self: QTableView, row: cint, height: cint): void =

  fcQTableView_setRowHeight(self.h, row, height)

proc rowHeight*(self: QTableView, row: cint): cint =

  fcQTableView_rowHeight(self.h, row)

proc columnViewportPosition*(self: QTableView, column: cint): cint =

  fcQTableView_columnViewportPosition(self.h, column)

proc columnAt*(self: QTableView, x: cint): cint =

  fcQTableView_columnAt(self.h, x)

proc setColumnWidth*(self: QTableView, column: cint, width: cint): void =

  fcQTableView_setColumnWidth(self.h, column, width)

proc columnWidth*(self: QTableView, column: cint): cint =

  fcQTableView_columnWidth(self.h, column)

proc isRowHidden*(self: QTableView, row: cint): bool =

  fcQTableView_isRowHidden(self.h, row)

proc setRowHidden*(self: QTableView, row: cint, hide: bool): void =

  fcQTableView_setRowHidden(self.h, row, hide)

proc isColumnHidden*(self: QTableView, column: cint): bool =

  fcQTableView_isColumnHidden(self.h, column)

proc setColumnHidden*(self: QTableView, column: cint, hide: bool): void =

  fcQTableView_setColumnHidden(self.h, column, hide)

proc setSortingEnabled*(self: QTableView, enable: bool): void =

  fcQTableView_setSortingEnabled(self.h, enable)

proc isSortingEnabled*(self: QTableView, ): bool =

  fcQTableView_isSortingEnabled(self.h)

proc showGrid*(self: QTableView, ): bool =

  fcQTableView_showGrid(self.h)

proc gridStyle*(self: QTableView, ): gen_qnamespace.PenStyle =

  gen_qnamespace.PenStyle(fcQTableView_gridStyle(self.h))

proc setGridStyle*(self: QTableView, style: gen_qnamespace.PenStyle): void =

  fcQTableView_setGridStyle(self.h, cint(style))

proc setWordWrap*(self: QTableView, on: bool): void =

  fcQTableView_setWordWrap(self.h, on)

proc wordWrap*(self: QTableView, ): bool =

  fcQTableView_wordWrap(self.h)

proc setCornerButtonEnabled*(self: QTableView, enable: bool): void =

  fcQTableView_setCornerButtonEnabled(self.h, enable)

proc isCornerButtonEnabled*(self: QTableView, ): bool =

  fcQTableView_isCornerButtonEnabled(self.h)

proc visualRect*(self: QTableView, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQTableView_visualRect(self.h, index.h))

proc scrollTo*(self: QTableView, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void =

  fcQTableView_scrollTo(self.h, index.h, cint(hint))

proc indexAt*(self: QTableView, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQTableView_indexAt(self.h, p.h))

proc setSpan*(self: QTableView, row: cint, column: cint, rowSpan: cint, columnSpan: cint): void =

  fcQTableView_setSpan(self.h, row, column, rowSpan, columnSpan)

proc rowSpan*(self: QTableView, row: cint, column: cint): cint =

  fcQTableView_rowSpan(self.h, row, column)

proc columnSpan*(self: QTableView, row: cint, column: cint): cint =

  fcQTableView_columnSpan(self.h, row, column)

proc clearSpans*(self: QTableView, ): void =

  fcQTableView_clearSpans(self.h)

proc selectRow*(self: QTableView, row: cint): void =

  fcQTableView_selectRow(self.h, row)

proc selectColumn*(self: QTableView, column: cint): void =

  fcQTableView_selectColumn(self.h, column)

proc hideRow*(self: QTableView, row: cint): void =

  fcQTableView_hideRow(self.h, row)

proc hideColumn*(self: QTableView, column: cint): void =

  fcQTableView_hideColumn(self.h, column)

proc showRow*(self: QTableView, row: cint): void =

  fcQTableView_showRow(self.h, row)

proc showColumn*(self: QTableView, column: cint): void =

  fcQTableView_showColumn(self.h, column)

proc resizeRowToContents*(self: QTableView, row: cint): void =

  fcQTableView_resizeRowToContents(self.h, row)

proc resizeRowsToContents*(self: QTableView, ): void =

  fcQTableView_resizeRowsToContents(self.h)

proc resizeColumnToContents*(self: QTableView, column: cint): void =

  fcQTableView_resizeColumnToContents(self.h, column)

proc resizeColumnsToContents*(self: QTableView, ): void =

  fcQTableView_resizeColumnsToContents(self.h)

proc sortByColumn*(self: QTableView, column: cint): void =

  fcQTableView_sortByColumn(self.h, column)

proc sortByColumn2*(self: QTableView, column: cint, order: gen_qnamespace.SortOrder): void =

  fcQTableView_sortByColumn2(self.h, column, cint(order))

proc setShowGrid*(self: QTableView, show: bool): void =

  fcQTableView_setShowGrid(self.h, show)

proc tr2*(_: type QTableView, s: cstring, c: cstring): string =

  let v_ms = fcQTableView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTableView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTableView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QTableView, s: cstring, c: cstring): string =

  let v_ms = fcQTableView_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QTableView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTableView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QTableView, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQTableView_virtualbase_metaObject(self.h))

type QTableViewmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QTableView, slot: proc(super: QTableViewmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QTableViewmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_metaObject(self: ptr cQTableView, slot: int): pointer {.exportc: "miqt_exec_callback_QTableView_metaObject ".} =
  type Cb = proc(super: QTableViewmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QTableView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QTableView, param1: cstring): pointer =


  fQTableView_virtualbase_metacast(self.h, param1)

type QTableViewmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QTableView, slot: proc(super: QTableViewmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QTableViewmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_metacast(self: ptr cQTableView, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTableView_metacast ".} =
  type Cb = proc(super: QTableViewmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QTableView(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QTableView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTableView_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTableViewmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTableView, slot: proc(super: QTableViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTableViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_metacall(self: ptr cQTableView, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTableView_metacall ".} =
  type Cb = proc(super: QTableViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTableView(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setModel(self: QTableView, model: gen_qabstractitemmodel.QAbstractItemModel): void =


  fQTableView_virtualbase_setModel(self.h, model.h)

type QTableViewsetModelBase* = proc(model: gen_qabstractitemmodel.QAbstractItemModel): void
proc onsetModel*(self: QTableView, slot: proc(super: QTableViewsetModelBase, model: gen_qabstractitemmodel.QAbstractItemModel): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewsetModelBase, model: gen_qabstractitemmodel.QAbstractItemModel): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_setModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_setModel(self: ptr cQTableView, slot: int, model: pointer): void {.exportc: "miqt_exec_callback_QTableView_setModel ".} =
  type Cb = proc(super: QTableViewsetModelBase, model: gen_qabstractitemmodel.QAbstractItemModel): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(model: gen_qabstractitemmodel.QAbstractItemModel): auto =
    callVirtualBase_setModel(QTableView(h: self), model)
  let slotval1 = gen_qabstractitemmodel.QAbstractItemModel(h: model)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setRootIndex(self: QTableView, index: gen_qabstractitemmodel.QModelIndex): void =


  fQTableView_virtualbase_setRootIndex(self.h, index.h)

type QTableViewsetRootIndexBase* = proc(index: gen_qabstractitemmodel.QModelIndex): void
proc onsetRootIndex*(self: QTableView, slot: proc(super: QTableViewsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_setRootIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_setRootIndex(self: ptr cQTableView, slot: int, index: pointer): void {.exportc: "miqt_exec_callback_QTableView_setRootIndex ".} =
  type Cb = proc(super: QTableViewsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_setRootIndex(QTableView(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setSelectionModel(self: QTableView, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void =


  fQTableView_virtualbase_setSelectionModel(self.h, selectionModel.h)

type QTableViewsetSelectionModelBase* = proc(selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
proc onsetSelectionModel*(self: QTableView, slot: proc(super: QTableViewsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_setSelectionModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_setSelectionModel(self: ptr cQTableView, slot: int, selectionModel: pointer): void {.exportc: "miqt_exec_callback_QTableView_setSelectionModel ".} =
  type Cb = proc(super: QTableViewsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selectionModel: gen_qitemselectionmodel.QItemSelectionModel): auto =
    callVirtualBase_setSelectionModel(QTableView(h: self), selectionModel)
  let slotval1 = gen_qitemselectionmodel.QItemSelectionModel(h: selectionModel)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_doItemsLayout(self: QTableView, ): void =


  fQTableView_virtualbase_doItemsLayout(self.h)

type QTableViewdoItemsLayoutBase* = proc(): void
proc ondoItemsLayout*(self: QTableView, slot: proc(super: QTableViewdoItemsLayoutBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewdoItemsLayoutBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_doItemsLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_doItemsLayout(self: ptr cQTableView, slot: int): void {.exportc: "miqt_exec_callback_QTableView_doItemsLayout ".} =
  type Cb = proc(super: QTableViewdoItemsLayoutBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_doItemsLayout(QTableView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_visualRect(self: QTableView, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect =


  gen_qrect.QRect(h: fQTableView_virtualbase_visualRect(self.h, index.h))

type QTableViewvisualRectBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
proc onvisualRect*(self: QTableView, slot: proc(super: QTableViewvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QTableViewvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_visualRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_visualRect(self: ptr cQTableView, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QTableView_visualRect ".} =
  type Cb = proc(super: QTableViewvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_visualRect(QTableView(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_scrollTo(self: QTableView, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void =


  fQTableView_virtualbase_scrollTo(self.h, index.h, cint(hint))

type QTableViewscrollToBase* = proc(index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
proc onscrollTo*(self: QTableView, slot: proc(super: QTableViewscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_scrollTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_scrollTo(self: ptr cQTableView, slot: int, index: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QTableView_scrollTo ".} =
  type Cb = proc(super: QTableViewscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): auto =
    callVirtualBase_scrollTo(QTableView(h: self), index, hint)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemview.QAbstractItemViewScrollHint(hint)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_indexAt(self: QTableView, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQTableView_virtualbase_indexAt(self.h, p.h))

type QTableViewindexAtBase* = proc(p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
proc onindexAt*(self: QTableView, slot: proc(super: QTableViewindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QTableViewindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_indexAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_indexAt(self: ptr cQTableView, slot: int, p: pointer): pointer {.exportc: "miqt_exec_callback_QTableView_indexAt ".} =
  type Cb = proc(super: QTableViewindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(p: gen_qpoint.QPoint): auto =
    callVirtualBase_indexAt(QTableView(h: self), p)
  let slotval1 = gen_qpoint.QPoint(h: p)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_scrollContentsBy(self: QTableView, dx: cint, dy: cint): void =


  fQTableView_virtualbase_scrollContentsBy(self.h, dx, dy)

type QTableViewscrollContentsByBase* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: QTableView, slot: proc(super: QTableViewscrollContentsByBase, dx: cint, dy: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewscrollContentsByBase, dx: cint, dy: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_scrollContentsBy(self: ptr cQTableView, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QTableView_scrollContentsBy ".} =
  type Cb = proc(super: QTableViewscrollContentsByBase, dx: cint, dy: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(dx: cint, dy: cint): auto =
    callVirtualBase_scrollContentsBy(QTableView(h: self), dx, dy)
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_viewOptions(self: QTableView, ): gen_qstyleoption.QStyleOptionViewItem =


  gen_qstyleoption.QStyleOptionViewItem(h: fQTableView_virtualbase_viewOptions(self.h))

type QTableViewviewOptionsBase* = proc(): gen_qstyleoption.QStyleOptionViewItem
proc onviewOptions*(self: QTableView, slot: proc(super: QTableViewviewOptionsBase): gen_qstyleoption.QStyleOptionViewItem) =
  # TODO check subclass
  type Cb = proc(super: QTableViewviewOptionsBase): gen_qstyleoption.QStyleOptionViewItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_viewOptions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_viewOptions(self: ptr cQTableView, slot: int): pointer {.exportc: "miqt_exec_callback_QTableView_viewOptions ".} =
  type Cb = proc(super: QTableViewviewOptionsBase): gen_qstyleoption.QStyleOptionViewItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewOptions(QTableView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_paintEvent(self: QTableView, e: gen_qevent.QPaintEvent): void =


  fQTableView_virtualbase_paintEvent(self.h, e.h)

type QTableViewpaintEventBase* = proc(e: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QTableView, slot: proc(super: QTableViewpaintEventBase, e: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewpaintEventBase, e: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_paintEvent(self: ptr cQTableView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTableView_paintEvent ".} =
  type Cb = proc(super: QTableViewpaintEventBase, e: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QTableView(h: self), e)
  let slotval1 = gen_qevent.QPaintEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QTableView, event: gen_qcoreevent.QTimerEvent): void =


  fQTableView_virtualbase_timerEvent(self.h, event.h)

type QTableViewtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTableView, slot: proc(super: QTableViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_timerEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_timerEvent ".} =
  type Cb = proc(super: QTableViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTableView(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalOffset(self: QTableView, ): cint =


  fQTableView_virtualbase_horizontalOffset(self.h)

type QTableViewhorizontalOffsetBase* = proc(): cint
proc onhorizontalOffset*(self: QTableView, slot: proc(super: QTableViewhorizontalOffsetBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QTableViewhorizontalOffsetBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_horizontalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_horizontalOffset(self: ptr cQTableView, slot: int): cint {.exportc: "miqt_exec_callback_QTableView_horizontalOffset ".} =
  type Cb = proc(super: QTableViewhorizontalOffsetBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_horizontalOffset(QTableView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_verticalOffset(self: QTableView, ): cint =


  fQTableView_virtualbase_verticalOffset(self.h)

type QTableViewverticalOffsetBase* = proc(): cint
proc onverticalOffset*(self: QTableView, slot: proc(super: QTableViewverticalOffsetBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QTableViewverticalOffsetBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_verticalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_verticalOffset(self: ptr cQTableView, slot: int): cint {.exportc: "miqt_exec_callback_QTableView_verticalOffset ".} =
  type Cb = proc(super: QTableViewverticalOffsetBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_verticalOffset(QTableView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_moveCursor(self: QTableView, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQTableView_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

type QTableViewmoveCursorBase* = proc(cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
proc onmoveCursor*(self: QTableView, slot: proc(super: QTableViewmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QTableViewmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_moveCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_moveCursor(self: ptr cQTableView, slot: int, cursorAction: cint, modifiers: cint): pointer {.exportc: "miqt_exec_callback_QTableView_moveCursor ".} =
  type Cb = proc(super: QTableViewmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): auto =
    callVirtualBase_moveCursor(QTableView(h: self), cursorAction, modifiers)
  let slotval1 = gen_qabstractitemview.QAbstractItemViewCursorAction(cursorAction)

  let slotval2 = gen_qnamespace.KeyboardModifier(modifiers)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_setSelection(self: QTableView, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void =


  fQTableView_virtualbase_setSelection(self.h, rect.h, cint(command))

type QTableViewsetSelectionBase* = proc(rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
proc onsetSelection*(self: QTableView, slot: proc(super: QTableViewsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_setSelection(self: ptr cQTableView, slot: int, rect: pointer, command: cint): void {.exportc: "miqt_exec_callback_QTableView_setSelection ".} =
  type Cb = proc(super: QTableViewsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): auto =
    callVirtualBase_setSelection(QTableView(h: self), rect, command)
  let slotval1 = gen_qrect.QRect(h: rect)

  let slotval2 = gen_qitemselectionmodel.QItemSelectionModelSelectionFlag(command)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_visualRegionForSelection(self: QTableView, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion =


  gen_qregion.QRegion(h: fQTableView_virtualbase_visualRegionForSelection(self.h, selection.h))

type QTableViewvisualRegionForSelectionBase* = proc(selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
proc onvisualRegionForSelection*(self: QTableView, slot: proc(super: QTableViewvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion) =
  # TODO check subclass
  type Cb = proc(super: QTableViewvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_visualRegionForSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_visualRegionForSelection(self: ptr cQTableView, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QTableView_visualRegionForSelection ".} =
  type Cb = proc(super: QTableViewvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selection: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_visualRegionForSelection(QTableView(h: self), selection)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_selectedIndexes(self: QTableView, ): seq[gen_qabstractitemmodel.QModelIndex] =


  var v_ma = fQTableView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

type QTableViewselectedIndexesBase* = proc(): seq[gen_qabstractitemmodel.QModelIndex]
proc onselectedIndexes*(self: QTableView, slot: proc(super: QTableViewselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QTableViewselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_selectedIndexes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_selectedIndexes(self: ptr cQTableView, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QTableView_selectedIndexes ".} =
  type Cb = proc(super: QTableViewselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_selectedIndexes(QTableView(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_updateGeometries(self: QTableView, ): void =


  fQTableView_virtualbase_updateGeometries(self.h)

type QTableViewupdateGeometriesBase* = proc(): void
proc onupdateGeometries*(self: QTableView, slot: proc(super: QTableViewupdateGeometriesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewupdateGeometriesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_updateGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_updateGeometries(self: ptr cQTableView, slot: int): void {.exportc: "miqt_exec_callback_QTableView_updateGeometries ".} =
  type Cb = proc(super: QTableViewupdateGeometriesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateGeometries(QTableView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_viewportSizeHint(self: QTableView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTableView_virtualbase_viewportSizeHint(self.h))

type QTableViewviewportSizeHintBase* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: QTableView, slot: proc(super: QTableViewviewportSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTableViewviewportSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_viewportSizeHint(self: ptr cQTableView, slot: int): pointer {.exportc: "miqt_exec_callback_QTableView_viewportSizeHint ".} =
  type Cb = proc(super: QTableViewviewportSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewportSizeHint(QTableView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHintForRow(self: QTableView, row: cint): cint =


  fQTableView_virtualbase_sizeHintForRow(self.h, row)

type QTableViewsizeHintForRowBase* = proc(row: cint): cint
proc onsizeHintForRow*(self: QTableView, slot: proc(super: QTableViewsizeHintForRowBase, row: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QTableViewsizeHintForRowBase, row: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_sizeHintForRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_sizeHintForRow(self: ptr cQTableView, slot: int, row: cint): cint {.exportc: "miqt_exec_callback_QTableView_sizeHintForRow ".} =
  type Cb = proc(super: QTableViewsizeHintForRowBase, row: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint): auto =
    callVirtualBase_sizeHintForRow(QTableView(h: self), row)
  let slotval1 = row


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_sizeHintForColumn(self: QTableView, column: cint): cint =


  fQTableView_virtualbase_sizeHintForColumn(self.h, column)

type QTableViewsizeHintForColumnBase* = proc(column: cint): cint
proc onsizeHintForColumn*(self: QTableView, slot: proc(super: QTableViewsizeHintForColumnBase, column: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QTableViewsizeHintForColumnBase, column: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_sizeHintForColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_sizeHintForColumn(self: ptr cQTableView, slot: int, column: cint): cint {.exportc: "miqt_exec_callback_QTableView_sizeHintForColumn ".} =
  type Cb = proc(super: QTableViewsizeHintForColumnBase, column: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint): auto =
    callVirtualBase_sizeHintForColumn(QTableView(h: self), column)
  let slotval1 = column


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_verticalScrollbarAction(self: QTableView, action: cint): void =


  fQTableView_virtualbase_verticalScrollbarAction(self.h, action)

type QTableViewverticalScrollbarActionBase* = proc(action: cint): void
proc onverticalScrollbarAction*(self: QTableView, slot: proc(super: QTableViewverticalScrollbarActionBase, action: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewverticalScrollbarActionBase, action: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_verticalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_verticalScrollbarAction(self: ptr cQTableView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QTableView_verticalScrollbarAction ".} =
  type Cb = proc(super: QTableViewverticalScrollbarActionBase, action: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(action: cint): auto =
    callVirtualBase_verticalScrollbarAction(QTableView(h: self), action)
  let slotval1 = action


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalScrollbarAction(self: QTableView, action: cint): void =


  fQTableView_virtualbase_horizontalScrollbarAction(self.h, action)

type QTableViewhorizontalScrollbarActionBase* = proc(action: cint): void
proc onhorizontalScrollbarAction*(self: QTableView, slot: proc(super: QTableViewhorizontalScrollbarActionBase, action: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewhorizontalScrollbarActionBase, action: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_horizontalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_horizontalScrollbarAction(self: ptr cQTableView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QTableView_horizontalScrollbarAction ".} =
  type Cb = proc(super: QTableViewhorizontalScrollbarActionBase, action: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(action: cint): auto =
    callVirtualBase_horizontalScrollbarAction(QTableView(h: self), action)
  let slotval1 = action


  nimfunc[](superCall, slotval1)
proc callVirtualBase_isIndexHidden(self: QTableView, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQTableView_virtualbase_isIndexHidden(self.h, index.h)

type QTableViewisIndexHiddenBase* = proc(index: gen_qabstractitemmodel.QModelIndex): bool
proc onisIndexHidden*(self: QTableView, slot: proc(super: QTableViewisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QTableViewisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_isIndexHidden(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_isIndexHidden(self: ptr cQTableView, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QTableView_isIndexHidden ".} =
  type Cb = proc(super: QTableViewisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_isIndexHidden(QTableView(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_selectionChanged(self: QTableView, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void =


  fQTableView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

type QTableViewselectionChangedBase* = proc(selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
proc onselectionChanged*(self: QTableView, slot: proc(super: QTableViewselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_selectionChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_selectionChanged(self: ptr cQTableView, slot: int, selected: pointer, deselected: pointer): void {.exportc: "miqt_exec_callback_QTableView_selectionChanged ".} =
  type Cb = proc(super: QTableViewselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_selectionChanged(QTableView(h: self), selected, deselected)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel.QItemSelection(h: deselected)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_currentChanged(self: QTableView, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void =


  fQTableView_virtualbase_currentChanged(self.h, current.h, previous.h)

type QTableViewcurrentChangedBase* = proc(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
proc oncurrentChanged*(self: QTableView, slot: proc(super: QTableViewcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_currentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_currentChanged(self: ptr cQTableView, slot: int, current: pointer, previous: pointer): void {.exportc: "miqt_exec_callback_QTableView_currentChanged ".} =
  type Cb = proc(super: QTableViewcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_currentChanged(QTableView(h: self), current, previous)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: previous)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_keyboardSearch(self: QTableView, search: string): void =


  fQTableView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

type QTableViewkeyboardSearchBase* = proc(search: string): void
proc onkeyboardSearch*(self: QTableView, slot: proc(super: QTableViewkeyboardSearchBase, search: string): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewkeyboardSearchBase, search: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_keyboardSearch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_keyboardSearch(self: ptr cQTableView, slot: int, search: struct_miqt_string): void {.exportc: "miqt_exec_callback_QTableView_keyboardSearch ".} =
  type Cb = proc(super: QTableViewkeyboardSearchBase, search: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(search: string): auto =
    callVirtualBase_keyboardSearch(QTableView(h: self), search)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodQuery(self: QTableView, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQTableView_virtualbase_inputMethodQuery(self.h, cint(query)))

type QTableViewinputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QTableView, slot: proc(super: QTableViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QTableViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_inputMethodQuery(self: ptr cQTableView, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QTableView_inputMethodQuery ".} =
  type Cb = proc(super: QTableViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QTableView(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_reset(self: QTableView, ): void =


  fQTableView_virtualbase_reset(self.h)

type QTableViewresetBase* = proc(): void
proc onreset*(self: QTableView, slot: proc(super: QTableViewresetBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewresetBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_reset(self: ptr cQTableView, slot: int): void {.exportc: "miqt_exec_callback_QTableView_reset ".} =
  type Cb = proc(super: QTableViewresetBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QTableView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_selectAll(self: QTableView, ): void =


  fQTableView_virtualbase_selectAll(self.h)

type QTableViewselectAllBase* = proc(): void
proc onselectAll*(self: QTableView, slot: proc(super: QTableViewselectAllBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewselectAllBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_selectAll(self: ptr cQTableView, slot: int): void {.exportc: "miqt_exec_callback_QTableView_selectAll ".} =
  type Cb = proc(super: QTableViewselectAllBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_selectAll(QTableView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_dataChanged(self: QTableView, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void =

  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]


  fQTableView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

type QTableViewdataChangedBase* = proc(topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
proc ondataChanged*(self: QTableView, slot: proc(super: QTableViewdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_dataChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_dataChanged(self: ptr cQTableView, slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.exportc: "miqt_exec_callback_QTableView_dataChanged ".} =
  type Cb = proc(super: QTableViewdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): auto =
    callVirtualBase_dataChanged(QTableView(h: self), topLeft, bottomRight, roles)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_rowsInserted(self: QTableView, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void =


  fQTableView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

type QTableViewrowsInsertedBase* = proc(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
proc onrowsInserted*(self: QTableView, slot: proc(super: QTableViewrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_rowsInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_rowsInserted(self: ptr cQTableView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QTableView_rowsInserted ".} =
  type Cb = proc(super: QTableViewrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): auto =
    callVirtualBase_rowsInserted(QTableView(h: self), parent, start, endVal)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_rowsAboutToBeRemoved(self: QTableView, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void =


  fQTableView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

type QTableViewrowsAboutToBeRemovedBase* = proc(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
proc onrowsAboutToBeRemoved*(self: QTableView, slot: proc(super: QTableViewrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_rowsAboutToBeRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_rowsAboutToBeRemoved(self: ptr cQTableView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QTableView_rowsAboutToBeRemoved ".} =
  type Cb = proc(super: QTableViewrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): auto =
    callVirtualBase_rowsAboutToBeRemoved(QTableView(h: self), parent, start, endVal)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_updateEditorData(self: QTableView, ): void =


  fQTableView_virtualbase_updateEditorData(self.h)

type QTableViewupdateEditorDataBase* = proc(): void
proc onupdateEditorData*(self: QTableView, slot: proc(super: QTableViewupdateEditorDataBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewupdateEditorDataBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_updateEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_updateEditorData(self: ptr cQTableView, slot: int): void {.exportc: "miqt_exec_callback_QTableView_updateEditorData ".} =
  type Cb = proc(super: QTableViewupdateEditorDataBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateEditorData(QTableView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_updateEditorGeometries(self: QTableView, ): void =


  fQTableView_virtualbase_updateEditorGeometries(self.h)

type QTableViewupdateEditorGeometriesBase* = proc(): void
proc onupdateEditorGeometries*(self: QTableView, slot: proc(super: QTableViewupdateEditorGeometriesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewupdateEditorGeometriesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_updateEditorGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_updateEditorGeometries(self: ptr cQTableView, slot: int): void {.exportc: "miqt_exec_callback_QTableView_updateEditorGeometries ".} =
  type Cb = proc(super: QTableViewupdateEditorGeometriesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateEditorGeometries(QTableView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_verticalScrollbarValueChanged(self: QTableView, value: cint): void =


  fQTableView_virtualbase_verticalScrollbarValueChanged(self.h, value)

type QTableViewverticalScrollbarValueChangedBase* = proc(value: cint): void
proc onverticalScrollbarValueChanged*(self: QTableView, slot: proc(super: QTableViewverticalScrollbarValueChangedBase, value: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewverticalScrollbarValueChangedBase, value: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_verticalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_verticalScrollbarValueChanged(self: ptr cQTableView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QTableView_verticalScrollbarValueChanged ".} =
  type Cb = proc(super: QTableViewverticalScrollbarValueChangedBase, value: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: cint): auto =
    callVirtualBase_verticalScrollbarValueChanged(QTableView(h: self), value)
  let slotval1 = value


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalScrollbarValueChanged(self: QTableView, value: cint): void =


  fQTableView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

type QTableViewhorizontalScrollbarValueChangedBase* = proc(value: cint): void
proc onhorizontalScrollbarValueChanged*(self: QTableView, slot: proc(super: QTableViewhorizontalScrollbarValueChangedBase, value: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewhorizontalScrollbarValueChangedBase, value: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_horizontalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_horizontalScrollbarValueChanged(self: ptr cQTableView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QTableView_horizontalScrollbarValueChanged ".} =
  type Cb = proc(super: QTableViewhorizontalScrollbarValueChangedBase, value: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: cint): auto =
    callVirtualBase_horizontalScrollbarValueChanged(QTableView(h: self), value)
  let slotval1 = value


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEditor(self: QTableView, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void =


  fQTableView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

type QTableViewcloseEditorBase* = proc(editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
proc oncloseEditor*(self: QTableView, slot: proc(super: QTableViewcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_closeEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_closeEditor(self: ptr cQTableView, slot: int, editor: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QTableView_closeEditor ".} =
  type Cb = proc(super: QTableViewcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): auto =
    callVirtualBase_closeEditor(QTableView(h: self), editor, hint)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint(hint)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_commitData(self: QTableView, editor: gen_qwidget.QWidget): void =


  fQTableView_virtualbase_commitData(self.h, editor.h)

type QTableViewcommitDataBase* = proc(editor: gen_qwidget.QWidget): void
proc oncommitData*(self: QTableView, slot: proc(super: QTableViewcommitDataBase, editor: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewcommitDataBase, editor: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_commitData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_commitData(self: ptr cQTableView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QTableView_commitData ".} =
  type Cb = proc(super: QTableViewcommitDataBase, editor: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget): auto =
    callVirtualBase_commitData(QTableView(h: self), editor)
  let slotval1 = gen_qwidget.QWidget(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_editorDestroyed(self: QTableView, editor: gen_qobject.QObject): void =


  fQTableView_virtualbase_editorDestroyed(self.h, editor.h)

type QTableVieweditorDestroyedBase* = proc(editor: gen_qobject.QObject): void
proc oneditorDestroyed*(self: QTableView, slot: proc(super: QTableVieweditorDestroyedBase, editor: gen_qobject.QObject): void) =
  # TODO check subclass
  type Cb = proc(super: QTableVieweditorDestroyedBase, editor: gen_qobject.QObject): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_editorDestroyed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_editorDestroyed(self: ptr cQTableView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QTableView_editorDestroyed ".} =
  type Cb = proc(super: QTableVieweditorDestroyedBase, editor: gen_qobject.QObject): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qobject.QObject): auto =
    callVirtualBase_editorDestroyed(QTableView(h: self), editor)
  let slotval1 = gen_qobject.QObject(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_edit2(self: QTableView, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool =


  fQTableView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

type QTableViewedit2Base* = proc(index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
proc onedit2*(self: QTableView, slot: proc(super: QTableViewedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTableViewedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_edit2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_edit2(self: ptr cQTableView, slot: int, index: pointer, trigger: cint, event: pointer): bool {.exportc: "miqt_exec_callback_QTableView_edit2 ".} =
  type Cb = proc(super: QTableViewedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_edit2(QTableView(h: self), index, trigger, event)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemview.QAbstractItemViewEditTrigger(trigger)

  let slotval3 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_selectionCommand(self: QTableView, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag =


  gen_qitemselectionmodel.QItemSelectionModelSelectionFlag(fQTableView_virtualbase_selectionCommand(self.h, index.h, event.h))

type QTableViewselectionCommandBase* = proc(index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
proc onselectionCommand*(self: QTableView, slot: proc(super: QTableViewselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag) =
  # TODO check subclass
  type Cb = proc(super: QTableViewselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_selectionCommand(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_selectionCommand(self: ptr cQTableView, slot: int, index: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QTableView_selectionCommand ".} =
  type Cb = proc(super: QTableViewselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_selectionCommand(QTableView(h: self), index, event)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  cint(virtualReturn)
proc callVirtualBase_startDrag(self: QTableView, supportedActions: gen_qnamespace.DropAction): void =


  fQTableView_virtualbase_startDrag(self.h, cint(supportedActions))

type QTableViewstartDragBase* = proc(supportedActions: gen_qnamespace.DropAction): void
proc onstartDrag*(self: QTableView, slot: proc(super: QTableViewstartDragBase, supportedActions: gen_qnamespace.DropAction): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewstartDragBase, supportedActions: gen_qnamespace.DropAction): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_startDrag(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_startDrag(self: ptr cQTableView, slot: int, supportedActions: cint): void {.exportc: "miqt_exec_callback_QTableView_startDrag ".} =
  type Cb = proc(super: QTableViewstartDragBase, supportedActions: gen_qnamespace.DropAction): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(supportedActions: gen_qnamespace.DropAction): auto =
    callVirtualBase_startDrag(QTableView(h: self), supportedActions)
  let slotval1 = gen_qnamespace.DropAction(supportedActions)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusNextPrevChild(self: QTableView, next: bool): bool =


  fQTableView_virtualbase_focusNextPrevChild(self.h, next)

type QTableViewfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QTableView, slot: proc(super: QTableViewfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QTableViewfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_focusNextPrevChild(self: ptr cQTableView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QTableView_focusNextPrevChild ".} =
  type Cb = proc(super: QTableViewfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QTableView(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QTableView, event: gen_qcoreevent.QEvent): bool =


  fQTableView_virtualbase_event(self.h, event.h)

type QTableVieweventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTableView, slot: proc(super: QTableVieweventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTableVieweventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_event(self: ptr cQTableView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTableView_event ".} =
  type Cb = proc(super: QTableVieweventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTableView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_viewportEvent(self: QTableView, event: gen_qcoreevent.QEvent): bool =


  fQTableView_virtualbase_viewportEvent(self.h, event.h)

type QTableViewviewportEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: QTableView, slot: proc(super: QTableViewviewportEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTableViewviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_viewportEvent(self: ptr cQTableView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTableView_viewportEvent ".} =
  type Cb = proc(super: QTableViewviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_viewportEvent(QTableView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QTableView, event: gen_qevent.QMouseEvent): void =


  fQTableView_virtualbase_mousePressEvent(self.h, event.h)

type QTableViewmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QTableView, slot: proc(super: QTableViewmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_mousePressEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_mousePressEvent ".} =
  type Cb = proc(super: QTableViewmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QTableView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QTableView, event: gen_qevent.QMouseEvent): void =


  fQTableView_virtualbase_mouseMoveEvent(self.h, event.h)

type QTableViewmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QTableView, slot: proc(super: QTableViewmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_mouseMoveEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_mouseMoveEvent ".} =
  type Cb = proc(super: QTableViewmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QTableView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QTableView, event: gen_qevent.QMouseEvent): void =


  fQTableView_virtualbase_mouseReleaseEvent(self.h, event.h)

type QTableViewmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QTableView, slot: proc(super: QTableViewmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_mouseReleaseEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_mouseReleaseEvent ".} =
  type Cb = proc(super: QTableViewmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QTableView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QTableView, event: gen_qevent.QMouseEvent): void =


  fQTableView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QTableViewmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QTableView, slot: proc(super: QTableViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_mouseDoubleClickEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QTableViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QTableView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QTableView, event: gen_qevent.QDragEnterEvent): void =


  fQTableView_virtualbase_dragEnterEvent(self.h, event.h)

type QTableViewdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QTableView, slot: proc(super: QTableViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_dragEnterEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_dragEnterEvent ".} =
  type Cb = proc(super: QTableViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QTableView(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QTableView, event: gen_qevent.QDragMoveEvent): void =


  fQTableView_virtualbase_dragMoveEvent(self.h, event.h)

type QTableViewdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QTableView, slot: proc(super: QTableViewdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_dragMoveEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_dragMoveEvent ".} =
  type Cb = proc(super: QTableViewdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QTableView(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QTableView, event: gen_qevent.QDragLeaveEvent): void =


  fQTableView_virtualbase_dragLeaveEvent(self.h, event.h)

type QTableViewdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QTableView, slot: proc(super: QTableViewdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_dragLeaveEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_dragLeaveEvent ".} =
  type Cb = proc(super: QTableViewdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QTableView(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QTableView, event: gen_qevent.QDropEvent): void =


  fQTableView_virtualbase_dropEvent(self.h, event.h)

type QTableViewdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QTableView, slot: proc(super: QTableViewdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_dropEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_dropEvent ".} =
  type Cb = proc(super: QTableViewdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QTableView(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QTableView, event: gen_qevent.QFocusEvent): void =


  fQTableView_virtualbase_focusInEvent(self.h, event.h)

type QTableViewfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QTableView, slot: proc(super: QTableViewfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_focusInEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_focusInEvent ".} =
  type Cb = proc(super: QTableViewfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QTableView(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QTableView, event: gen_qevent.QFocusEvent): void =


  fQTableView_virtualbase_focusOutEvent(self.h, event.h)

type QTableViewfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QTableView, slot: proc(super: QTableViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_focusOutEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_focusOutEvent ".} =
  type Cb = proc(super: QTableViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QTableView(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QTableView, event: gen_qevent.QKeyEvent): void =


  fQTableView_virtualbase_keyPressEvent(self.h, event.h)

type QTableViewkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QTableView, slot: proc(super: QTableViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_keyPressEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_keyPressEvent ".} =
  type Cb = proc(super: QTableViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QTableView(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QTableView, event: gen_qevent.QResizeEvent): void =


  fQTableView_virtualbase_resizeEvent(self.h, event.h)

type QTableViewresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QTableView, slot: proc(super: QTableViewresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_resizeEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_resizeEvent ".} =
  type Cb = proc(super: QTableViewresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QTableView(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QTableView, event: gen_qevent.QInputMethodEvent): void =


  fQTableView_virtualbase_inputMethodEvent(self.h, event.h)

type QTableViewinputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QTableView, slot: proc(super: QTableViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_inputMethodEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_inputMethodEvent ".} =
  type Cb = proc(super: QTableViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QTableView(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QTableView, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQTableView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QTableVieweventFilterBase* = proc(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTableView, slot: proc(super: QTableVieweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTableVieweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_eventFilter(self: ptr cQTableView, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTableView_eventFilter ".} =
  type Cb = proc(super: QTableVieweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTableView(h: self), objectVal, event)
  let slotval1 = gen_qobject.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_minimumSizeHint(self: QTableView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTableView_virtualbase_minimumSizeHint(self.h))

type QTableViewminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QTableView, slot: proc(super: QTableViewminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTableViewminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_minimumSizeHint(self: ptr cQTableView, slot: int): pointer {.exportc: "miqt_exec_callback_QTableView_minimumSizeHint ".} =
  type Cb = proc(super: QTableViewminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QTableView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHint(self: QTableView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTableView_virtualbase_sizeHint(self.h))

type QTableViewsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QTableView, slot: proc(super: QTableViewsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTableViewsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_sizeHint(self: ptr cQTableView, slot: int): pointer {.exportc: "miqt_exec_callback_QTableView_sizeHint ".} =
  type Cb = proc(super: QTableViewsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QTableView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setupViewport(self: QTableView, viewport: gen_qwidget.QWidget): void =


  fQTableView_virtualbase_setupViewport(self.h, viewport.h)

type QTableViewsetupViewportBase* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: QTableView, slot: proc(super: QTableViewsetupViewportBase, viewport: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_setupViewport(self: ptr cQTableView, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QTableView_setupViewport ".} =
  type Cb = proc(super: QTableViewsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(viewport: gen_qwidget.QWidget): auto =
    callVirtualBase_setupViewport(QTableView(h: self), viewport)
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QTableView, param1: gen_qevent.QWheelEvent): void =


  fQTableView_virtualbase_wheelEvent(self.h, param1.h)

type QTableViewwheelEventBase* = proc(param1: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QTableView, slot: proc(super: QTableViewwheelEventBase, param1: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_wheelEvent(self: ptr cQTableView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTableView_wheelEvent ".} =
  type Cb = proc(super: QTableViewwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QTableView(h: self), param1)
  let slotval1 = gen_qevent.QWheelEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QTableView, param1: gen_qevent.QContextMenuEvent): void =


  fQTableView_virtualbase_contextMenuEvent(self.h, param1.h)

type QTableViewcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QTableView, slot: proc(super: QTableViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_contextMenuEvent(self: ptr cQTableView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTableView_contextMenuEvent ".} =
  type Cb = proc(super: QTableViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QTableView(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QTableView, param1: gen_qcoreevent.QEvent): void =


  fQTableView_virtualbase_changeEvent(self.h, param1.h)

type QTableViewchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QTableView, slot: proc(super: QTableViewchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_changeEvent(self: ptr cQTableView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTableView_changeEvent ".} =
  type Cb = proc(super: QTableViewchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QTableView(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QTableView, ): cint =


  fQTableView_virtualbase_devType(self.h)

type QTableViewdevTypeBase* = proc(): cint
proc ondevType*(self: QTableView, slot: proc(super: QTableViewdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QTableViewdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_devType(self: ptr cQTableView, slot: int): cint {.exportc: "miqt_exec_callback_QTableView_devType ".} =
  type Cb = proc(super: QTableViewdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QTableView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QTableView, visible: bool): void =


  fQTableView_virtualbase_setVisible(self.h, visible)

type QTableViewsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QTableView, slot: proc(super: QTableViewsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_setVisible(self: ptr cQTableView, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QTableView_setVisible ".} =
  type Cb = proc(super: QTableViewsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QTableView(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QTableView, param1: cint): cint =


  fQTableView_virtualbase_heightForWidth(self.h, param1)

type QTableViewheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QTableView, slot: proc(super: QTableViewheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QTableViewheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_heightForWidth(self: ptr cQTableView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTableView_heightForWidth ".} =
  type Cb = proc(super: QTableViewheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QTableView(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QTableView, ): bool =


  fQTableView_virtualbase_hasHeightForWidth(self.h)

type QTableViewhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QTableView, slot: proc(super: QTableViewhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTableViewhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_hasHeightForWidth(self: ptr cQTableView, slot: int): bool {.exportc: "miqt_exec_callback_QTableView_hasHeightForWidth ".} =
  type Cb = proc(super: QTableViewhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QTableView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QTableView, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQTableView_virtualbase_paintEngine(self.h))

type QTableViewpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QTableView, slot: proc(super: QTableViewpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QTableViewpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_paintEngine(self: ptr cQTableView, slot: int): pointer {.exportc: "miqt_exec_callback_QTableView_paintEngine ".} =
  type Cb = proc(super: QTableViewpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QTableView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_keyReleaseEvent(self: QTableView, event: gen_qevent.QKeyEvent): void =


  fQTableView_virtualbase_keyReleaseEvent(self.h, event.h)

type QTableViewkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QTableView, slot: proc(super: QTableViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_keyReleaseEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_keyReleaseEvent ".} =
  type Cb = proc(super: QTableViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QTableView(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QTableView, event: gen_qcoreevent.QEvent): void =


  fQTableView_virtualbase_enterEvent(self.h, event.h)

type QTableViewenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QTableView, slot: proc(super: QTableViewenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_enterEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_enterEvent ".} =
  type Cb = proc(super: QTableViewenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QTableView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QTableView, event: gen_qcoreevent.QEvent): void =


  fQTableView_virtualbase_leaveEvent(self.h, event.h)

type QTableViewleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QTableView, slot: proc(super: QTableViewleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_leaveEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_leaveEvent ".} =
  type Cb = proc(super: QTableViewleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QTableView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QTableView, event: gen_qevent.QMoveEvent): void =


  fQTableView_virtualbase_moveEvent(self.h, event.h)

type QTableViewmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QTableView, slot: proc(super: QTableViewmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_moveEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_moveEvent ".} =
  type Cb = proc(super: QTableViewmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QTableView(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QTableView, event: gen_qevent.QCloseEvent): void =


  fQTableView_virtualbase_closeEvent(self.h, event.h)

type QTableViewcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QTableView, slot: proc(super: QTableViewcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_closeEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_closeEvent ".} =
  type Cb = proc(super: QTableViewcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QTableView(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QTableView, event: gen_qevent.QTabletEvent): void =


  fQTableView_virtualbase_tabletEvent(self.h, event.h)

type QTableViewtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QTableView, slot: proc(super: QTableViewtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_tabletEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_tabletEvent ".} =
  type Cb = proc(super: QTableViewtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QTableView(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QTableView, event: gen_qevent.QActionEvent): void =


  fQTableView_virtualbase_actionEvent(self.h, event.h)

type QTableViewactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QTableView, slot: proc(super: QTableViewactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_actionEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_actionEvent ".} =
  type Cb = proc(super: QTableViewactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QTableView(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QTableView, event: gen_qevent.QShowEvent): void =


  fQTableView_virtualbase_showEvent(self.h, event.h)

type QTableViewshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QTableView, slot: proc(super: QTableViewshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_showEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_showEvent ".} =
  type Cb = proc(super: QTableViewshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QTableView(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QTableView, event: gen_qevent.QHideEvent): void =


  fQTableView_virtualbase_hideEvent(self.h, event.h)

type QTableViewhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QTableView, slot: proc(super: QTableViewhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_hideEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_hideEvent ".} =
  type Cb = proc(super: QTableViewhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QTableView(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QTableView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQTableView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QTableViewnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QTableView, slot: proc(super: QTableViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QTableViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_nativeEvent(self: ptr cQTableView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QTableView_nativeEvent ".} =
  type Cb = proc(super: QTableViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QTableView(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QTableView, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQTableView_virtualbase_metric(self.h, cint(param1))

type QTableViewmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QTableView, slot: proc(super: QTableViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QTableViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_metric(self: ptr cQTableView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTableView_metric ".} =
  type Cb = proc(super: QTableViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QTableView(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QTableView, painter: gen_qpainter.QPainter): void =


  fQTableView_virtualbase_initPainter(self.h, painter.h)

type QTableViewinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QTableView, slot: proc(super: QTableViewinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_initPainter(self: ptr cQTableView, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QTableView_initPainter ".} =
  type Cb = proc(super: QTableViewinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QTableView(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QTableView, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQTableView_virtualbase_redirected(self.h, offset.h))

type QTableViewredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QTableView, slot: proc(super: QTableViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QTableViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_redirected(self: ptr cQTableView, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QTableView_redirected ".} =
  type Cb = proc(super: QTableViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QTableView(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QTableView, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQTableView_virtualbase_sharedPainter(self.h))

type QTableViewsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QTableView, slot: proc(super: QTableViewsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QTableViewsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_sharedPainter(self: ptr cQTableView, slot: int): pointer {.exportc: "miqt_exec_callback_QTableView_sharedPainter ".} =
  type Cb = proc(super: QTableViewsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QTableView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_childEvent(self: QTableView, event: gen_qcoreevent.QChildEvent): void =


  fQTableView_virtualbase_childEvent(self.h, event.h)

type QTableViewchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTableView, slot: proc(super: QTableViewchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_childEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_childEvent ".} =
  type Cb = proc(super: QTableViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTableView(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTableView, event: gen_qcoreevent.QEvent): void =


  fQTableView_virtualbase_customEvent(self.h, event.h)

type QTableViewcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTableView, slot: proc(super: QTableViewcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_customEvent(self: ptr cQTableView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableView_customEvent ".} =
  type Cb = proc(super: QTableViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTableView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTableView, signal: gen_qmetaobject.QMetaMethod): void =


  fQTableView_virtualbase_connectNotify(self.h, signal.h)

type QTableViewconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTableView, slot: proc(super: QTableViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_connectNotify(self: ptr cQTableView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTableView_connectNotify ".} =
  type Cb = proc(super: QTableViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTableView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTableView, signal: gen_qmetaobject.QMetaMethod): void =


  fQTableView_virtualbase_disconnectNotify(self.h, signal.h)

type QTableViewdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTableView, slot: proc(super: QTableViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTableViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableView_disconnectNotify(self: ptr cQTableView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTableView_disconnectNotify ".} =
  type Cb = proc(super: QTableViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTableView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QTableView): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQTableView_staticMetaObject())
proc delete*(self: QTableView) =
  fcQTableView_delete(self.h)
