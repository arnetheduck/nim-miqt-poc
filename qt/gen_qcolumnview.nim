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
{.compile("gen_qcolumnview.cpp", cflags).}


import gen_qcolumnview_types
export gen_qcolumnview_types

import
  gen_qabstractitemdelegate,
  gen_qabstractitemmodel,
  gen_qabstractitemview,
  gen_qcoreevent,
  gen_qevent,
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

type cQColumnView*{.exportc: "QColumnView", incompleteStruct.} = object

proc fcQColumnView_new(parent: pointer): ptr cQColumnView {.importc: "QColumnView_new".}
proc fcQColumnView_new2(): ptr cQColumnView {.importc: "QColumnView_new2".}
proc fcQColumnView_metaObject(self: pointer, ): pointer {.importc: "QColumnView_metaObject".}
proc fcQColumnView_metacast(self: pointer, param1: cstring): pointer {.importc: "QColumnView_metacast".}
proc fcQColumnView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QColumnView_metacall".}
proc fcQColumnView_tr(s: cstring): struct_miqt_string {.importc: "QColumnView_tr".}
proc fcQColumnView_trUtf8(s: cstring): struct_miqt_string {.importc: "QColumnView_trUtf8".}
proc fcQColumnView_updatePreviewWidget(self: pointer, index: pointer): void {.importc: "QColumnView_updatePreviewWidget".}
proc fQColumnView_connect_updatePreviewWidget(self: pointer, slot: int) {.importc: "QColumnView_connect_updatePreviewWidget".}
proc fcQColumnView_indexAt(self: pointer, point: pointer): pointer {.importc: "QColumnView_indexAt".}
proc fcQColumnView_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QColumnView_scrollTo".}
proc fcQColumnView_sizeHint(self: pointer, ): pointer {.importc: "QColumnView_sizeHint".}
proc fcQColumnView_visualRect(self: pointer, index: pointer): pointer {.importc: "QColumnView_visualRect".}
proc fcQColumnView_setModel(self: pointer, model: pointer): void {.importc: "QColumnView_setModel".}
proc fcQColumnView_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QColumnView_setSelectionModel".}
proc fcQColumnView_setRootIndex(self: pointer, index: pointer): void {.importc: "QColumnView_setRootIndex".}
proc fcQColumnView_selectAll(self: pointer, ): void {.importc: "QColumnView_selectAll".}
proc fcQColumnView_setResizeGripsVisible(self: pointer, visible: bool): void {.importc: "QColumnView_setResizeGripsVisible".}
proc fcQColumnView_resizeGripsVisible(self: pointer, ): bool {.importc: "QColumnView_resizeGripsVisible".}
proc fcQColumnView_previewWidget(self: pointer, ): pointer {.importc: "QColumnView_previewWidget".}
proc fcQColumnView_setPreviewWidget(self: pointer, widget: pointer): void {.importc: "QColumnView_setPreviewWidget".}
proc fcQColumnView_setColumnWidths(self: pointer, list: struct_miqt_array): void {.importc: "QColumnView_setColumnWidths".}
proc fcQColumnView_columnWidths(self: pointer, ): struct_miqt_array {.importc: "QColumnView_columnWidths".}
proc fcQColumnView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QColumnView_tr2".}
proc fcQColumnView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QColumnView_tr3".}
proc fcQColumnView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QColumnView_trUtf82".}
proc fcQColumnView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QColumnView_trUtf83".}
proc fQColumnView_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QColumnView_virtualbase_metaObject".}
proc fcQColumnView_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_metaObject".}
proc fQColumnView_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QColumnView_virtualbase_metacast".}
proc fcQColumnView_override_virtual_metacast(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_metacast".}
proc fQColumnView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QColumnView_virtualbase_metacall".}
proc fcQColumnView_override_virtual_metacall(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_metacall".}
proc fQColumnView_virtualbase_indexAt(self: pointer, point: pointer): pointer{.importc: "QColumnView_virtualbase_indexAt".}
proc fcQColumnView_override_virtual_indexAt(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_indexAt".}
proc fQColumnView_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void{.importc: "QColumnView_virtualbase_scrollTo".}
proc fcQColumnView_override_virtual_scrollTo(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_scrollTo".}
proc fQColumnView_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QColumnView_virtualbase_sizeHint".}
proc fcQColumnView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_sizeHint".}
proc fQColumnView_virtualbase_visualRect(self: pointer, index: pointer): pointer{.importc: "QColumnView_virtualbase_visualRect".}
proc fcQColumnView_override_virtual_visualRect(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_visualRect".}
proc fQColumnView_virtualbase_setModel(self: pointer, model: pointer): void{.importc: "QColumnView_virtualbase_setModel".}
proc fcQColumnView_override_virtual_setModel(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_setModel".}
proc fQColumnView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void{.importc: "QColumnView_virtualbase_setSelectionModel".}
proc fcQColumnView_override_virtual_setSelectionModel(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_setSelectionModel".}
proc fQColumnView_virtualbase_setRootIndex(self: pointer, index: pointer): void{.importc: "QColumnView_virtualbase_setRootIndex".}
proc fcQColumnView_override_virtual_setRootIndex(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_setRootIndex".}
proc fQColumnView_virtualbase_selectAll(self: pointer, ): void{.importc: "QColumnView_virtualbase_selectAll".}
proc fcQColumnView_override_virtual_selectAll(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_selectAll".}
proc fQColumnView_virtualbase_isIndexHidden(self: pointer, index: pointer): bool{.importc: "QColumnView_virtualbase_isIndexHidden".}
proc fcQColumnView_override_virtual_isIndexHidden(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_isIndexHidden".}
proc fQColumnView_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer{.importc: "QColumnView_virtualbase_moveCursor".}
proc fcQColumnView_override_virtual_moveCursor(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_moveCursor".}
proc fQColumnView_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_resizeEvent".}
proc fcQColumnView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_resizeEvent".}
proc fQColumnView_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void{.importc: "QColumnView_virtualbase_setSelection".}
proc fcQColumnView_override_virtual_setSelection(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_setSelection".}
proc fQColumnView_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer{.importc: "QColumnView_virtualbase_visualRegionForSelection".}
proc fcQColumnView_override_virtual_visualRegionForSelection(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_visualRegionForSelection".}
proc fQColumnView_virtualbase_horizontalOffset(self: pointer, ): cint{.importc: "QColumnView_virtualbase_horizontalOffset".}
proc fcQColumnView_override_virtual_horizontalOffset(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_horizontalOffset".}
proc fQColumnView_virtualbase_verticalOffset(self: pointer, ): cint{.importc: "QColumnView_virtualbase_verticalOffset".}
proc fcQColumnView_override_virtual_verticalOffset(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_verticalOffset".}
proc fQColumnView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QColumnView_virtualbase_rowsInserted".}
proc fcQColumnView_override_virtual_rowsInserted(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_rowsInserted".}
proc fQColumnView_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void{.importc: "QColumnView_virtualbase_currentChanged".}
proc fcQColumnView_override_virtual_currentChanged(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_currentChanged".}
proc fQColumnView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QColumnView_virtualbase_scrollContentsBy".}
proc fcQColumnView_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_scrollContentsBy".}
proc fQColumnView_virtualbase_createColumn(self: pointer, rootIndex: pointer): pointer{.importc: "QColumnView_virtualbase_createColumn".}
proc fcQColumnView_override_virtual_createColumn(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_createColumn".}
proc fQColumnView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void{.importc: "QColumnView_virtualbase_keyboardSearch".}
proc fcQColumnView_override_virtual_keyboardSearch(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_keyboardSearch".}
proc fQColumnView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint{.importc: "QColumnView_virtualbase_sizeHintForRow".}
proc fcQColumnView_override_virtual_sizeHintForRow(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_sizeHintForRow".}
proc fQColumnView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint{.importc: "QColumnView_virtualbase_sizeHintForColumn".}
proc fcQColumnView_override_virtual_sizeHintForColumn(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_sizeHintForColumn".}
proc fQColumnView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QColumnView_virtualbase_inputMethodQuery".}
proc fcQColumnView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_inputMethodQuery".}
proc fQColumnView_virtualbase_reset(self: pointer, ): void{.importc: "QColumnView_virtualbase_reset".}
proc fcQColumnView_override_virtual_reset(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_reset".}
proc fQColumnView_virtualbase_doItemsLayout(self: pointer, ): void{.importc: "QColumnView_virtualbase_doItemsLayout".}
proc fcQColumnView_override_virtual_doItemsLayout(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_doItemsLayout".}
proc fQColumnView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void{.importc: "QColumnView_virtualbase_dataChanged".}
proc fcQColumnView_override_virtual_dataChanged(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_dataChanged".}
proc fQColumnView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QColumnView_virtualbase_rowsAboutToBeRemoved".}
proc fcQColumnView_override_virtual_rowsAboutToBeRemoved(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_rowsAboutToBeRemoved".}
proc fQColumnView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void{.importc: "QColumnView_virtualbase_selectionChanged".}
proc fcQColumnView_override_virtual_selectionChanged(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_selectionChanged".}
proc fQColumnView_virtualbase_updateEditorData(self: pointer, ): void{.importc: "QColumnView_virtualbase_updateEditorData".}
proc fcQColumnView_override_virtual_updateEditorData(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_updateEditorData".}
proc fQColumnView_virtualbase_updateEditorGeometries(self: pointer, ): void{.importc: "QColumnView_virtualbase_updateEditorGeometries".}
proc fcQColumnView_override_virtual_updateEditorGeometries(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_updateEditorGeometries".}
proc fQColumnView_virtualbase_updateGeometries(self: pointer, ): void{.importc: "QColumnView_virtualbase_updateGeometries".}
proc fcQColumnView_override_virtual_updateGeometries(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_updateGeometries".}
proc fQColumnView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void{.importc: "QColumnView_virtualbase_verticalScrollbarAction".}
proc fcQColumnView_override_virtual_verticalScrollbarAction(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_verticalScrollbarAction".}
proc fQColumnView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void{.importc: "QColumnView_virtualbase_horizontalScrollbarAction".}
proc fcQColumnView_override_virtual_horizontalScrollbarAction(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_horizontalScrollbarAction".}
proc fQColumnView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QColumnView_virtualbase_verticalScrollbarValueChanged".}
proc fcQColumnView_override_virtual_verticalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_verticalScrollbarValueChanged".}
proc fQColumnView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QColumnView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQColumnView_override_virtual_horizontalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_horizontalScrollbarValueChanged".}
proc fQColumnView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void{.importc: "QColumnView_virtualbase_closeEditor".}
proc fcQColumnView_override_virtual_closeEditor(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_closeEditor".}
proc fQColumnView_virtualbase_commitData(self: pointer, editor: pointer): void{.importc: "QColumnView_virtualbase_commitData".}
proc fcQColumnView_override_virtual_commitData(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_commitData".}
proc fQColumnView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void{.importc: "QColumnView_virtualbase_editorDestroyed".}
proc fcQColumnView_override_virtual_editorDestroyed(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_editorDestroyed".}
proc fQColumnView_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array{.importc: "QColumnView_virtualbase_selectedIndexes".}
proc fcQColumnView_override_virtual_selectedIndexes(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_selectedIndexes".}
proc fQColumnView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool{.importc: "QColumnView_virtualbase_edit2".}
proc fcQColumnView_override_virtual_edit2(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_edit2".}
proc fQColumnView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint{.importc: "QColumnView_virtualbase_selectionCommand".}
proc fcQColumnView_override_virtual_selectionCommand(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_selectionCommand".}
proc fQColumnView_virtualbase_startDrag(self: pointer, supportedActions: cint): void{.importc: "QColumnView_virtualbase_startDrag".}
proc fcQColumnView_override_virtual_startDrag(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_startDrag".}
proc fQColumnView_virtualbase_viewOptions(self: pointer, ): pointer{.importc: "QColumnView_virtualbase_viewOptions".}
proc fcQColumnView_override_virtual_viewOptions(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_viewOptions".}
proc fQColumnView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QColumnView_virtualbase_focusNextPrevChild".}
proc fcQColumnView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_focusNextPrevChild".}
proc fQColumnView_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QColumnView_virtualbase_event".}
proc fcQColumnView_override_virtual_event(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_event".}
proc fQColumnView_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QColumnView_virtualbase_viewportEvent".}
proc fcQColumnView_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_viewportEvent".}
proc fQColumnView_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_mousePressEvent".}
proc fcQColumnView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_mousePressEvent".}
proc fQColumnView_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_mouseMoveEvent".}
proc fcQColumnView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_mouseMoveEvent".}
proc fQColumnView_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_mouseReleaseEvent".}
proc fcQColumnView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_mouseReleaseEvent".}
proc fQColumnView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_mouseDoubleClickEvent".}
proc fcQColumnView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_mouseDoubleClickEvent".}
proc fQColumnView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_dragEnterEvent".}
proc fcQColumnView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_dragEnterEvent".}
proc fQColumnView_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_dragMoveEvent".}
proc fcQColumnView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_dragMoveEvent".}
proc fQColumnView_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_dragLeaveEvent".}
proc fcQColumnView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_dragLeaveEvent".}
proc fQColumnView_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_dropEvent".}
proc fcQColumnView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_dropEvent".}
proc fQColumnView_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_focusInEvent".}
proc fcQColumnView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_focusInEvent".}
proc fQColumnView_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_focusOutEvent".}
proc fcQColumnView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_focusOutEvent".}
proc fQColumnView_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_keyPressEvent".}
proc fcQColumnView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_keyPressEvent".}
proc fQColumnView_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_timerEvent".}
proc fcQColumnView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_timerEvent".}
proc fQColumnView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_inputMethodEvent".}
proc fcQColumnView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_inputMethodEvent".}
proc fQColumnView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QColumnView_virtualbase_eventFilter".}
proc fcQColumnView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_eventFilter".}
proc fQColumnView_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QColumnView_virtualbase_viewportSizeHint".}
proc fcQColumnView_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_viewportSizeHint".}
proc fQColumnView_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QColumnView_virtualbase_minimumSizeHint".}
proc fcQColumnView_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_minimumSizeHint".}
proc fQColumnView_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QColumnView_virtualbase_setupViewport".}
proc fcQColumnView_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_setupViewport".}
proc fQColumnView_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QColumnView_virtualbase_paintEvent".}
proc fcQColumnView_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_paintEvent".}
proc fQColumnView_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QColumnView_virtualbase_wheelEvent".}
proc fcQColumnView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_wheelEvent".}
proc fQColumnView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QColumnView_virtualbase_contextMenuEvent".}
proc fcQColumnView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_contextMenuEvent".}
proc fQColumnView_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QColumnView_virtualbase_changeEvent".}
proc fcQColumnView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_changeEvent".}
proc fQColumnView_virtualbase_devType(self: pointer, ): cint{.importc: "QColumnView_virtualbase_devType".}
proc fcQColumnView_override_virtual_devType(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_devType".}
proc fQColumnView_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QColumnView_virtualbase_setVisible".}
proc fcQColumnView_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_setVisible".}
proc fQColumnView_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QColumnView_virtualbase_heightForWidth".}
proc fcQColumnView_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_heightForWidth".}
proc fQColumnView_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QColumnView_virtualbase_hasHeightForWidth".}
proc fcQColumnView_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_hasHeightForWidth".}
proc fQColumnView_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QColumnView_virtualbase_paintEngine".}
proc fcQColumnView_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_paintEngine".}
proc fQColumnView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_keyReleaseEvent".}
proc fcQColumnView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_keyReleaseEvent".}
proc fQColumnView_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_enterEvent".}
proc fcQColumnView_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_enterEvent".}
proc fQColumnView_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_leaveEvent".}
proc fcQColumnView_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_leaveEvent".}
proc fQColumnView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_moveEvent".}
proc fcQColumnView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_moveEvent".}
proc fQColumnView_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_closeEvent".}
proc fcQColumnView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_closeEvent".}
proc fQColumnView_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_tabletEvent".}
proc fcQColumnView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_tabletEvent".}
proc fQColumnView_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_actionEvent".}
proc fcQColumnView_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_actionEvent".}
proc fQColumnView_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_showEvent".}
proc fcQColumnView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_showEvent".}
proc fQColumnView_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_hideEvent".}
proc fcQColumnView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_hideEvent".}
proc fQColumnView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QColumnView_virtualbase_nativeEvent".}
proc fcQColumnView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_nativeEvent".}
proc fQColumnView_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QColumnView_virtualbase_metric".}
proc fcQColumnView_override_virtual_metric(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_metric".}
proc fQColumnView_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QColumnView_virtualbase_initPainter".}
proc fcQColumnView_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_initPainter".}
proc fQColumnView_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QColumnView_virtualbase_redirected".}
proc fcQColumnView_override_virtual_redirected(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_redirected".}
proc fQColumnView_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QColumnView_virtualbase_sharedPainter".}
proc fcQColumnView_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_sharedPainter".}
proc fQColumnView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_childEvent".}
proc fcQColumnView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_childEvent".}
proc fQColumnView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QColumnView_virtualbase_customEvent".}
proc fcQColumnView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_customEvent".}
proc fQColumnView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QColumnView_virtualbase_connectNotify".}
proc fcQColumnView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_connectNotify".}
proc fQColumnView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QColumnView_virtualbase_disconnectNotify".}
proc fcQColumnView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QColumnView_override_virtual_disconnectNotify".}
proc fcQColumnView_staticMetaObject(): pointer {.importc: "QColumnView_staticMetaObject".}
proc fcQColumnView_delete(self: pointer) {.importc: "QColumnView_delete".}


func init*(T: type QColumnView, h: ptr cQColumnView): QColumnView =
  T(h: h)
proc create*(T: type QColumnView, parent: gen_qwidget.QWidget): QColumnView =

  QColumnView.init(fcQColumnView_new(parent.h))
proc create*(T: type QColumnView, ): QColumnView =

  QColumnView.init(fcQColumnView_new2())
proc metaObject*(self: QColumnView, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQColumnView_metaObject(self.h))

proc metacast*(self: QColumnView, param1: cstring): pointer =

  fcQColumnView_metacast(self.h, param1)

proc metacall*(self: QColumnView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQColumnView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QColumnView, s: cstring): string =

  let v_ms = fcQColumnView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QColumnView, s: cstring): string =

  let v_ms = fcQColumnView_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc updatePreviewWidget*(self: QColumnView, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQColumnView_updatePreviewWidget(self.h, index.h)

proc miqt_exec_callback_QColumnView_updatePreviewWidget(slot: int, index: pointer) {.exportc.} =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](slotval1)

proc onupdatePreviewWidget*(self: QColumnView, slot: proc(index: gen_qabstractitemmodel.QModelIndex)) =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQColumnView_connect_updatePreviewWidget(self.h, cast[int](addr tmp[]))
proc indexAt*(self: QColumnView, point: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQColumnView_indexAt(self.h, point.h))

proc scrollTo*(self: QColumnView, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void =

  fcQColumnView_scrollTo(self.h, index.h, cint(hint))

proc sizeHint*(self: QColumnView, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQColumnView_sizeHint(self.h))

proc visualRect*(self: QColumnView, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQColumnView_visualRect(self.h, index.h))

proc setModel*(self: QColumnView, model: gen_qabstractitemmodel.QAbstractItemModel): void =

  fcQColumnView_setModel(self.h, model.h)

proc setSelectionModel*(self: QColumnView, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void =

  fcQColumnView_setSelectionModel(self.h, selectionModel.h)

proc setRootIndex*(self: QColumnView, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQColumnView_setRootIndex(self.h, index.h)

proc selectAll*(self: QColumnView, ): void =

  fcQColumnView_selectAll(self.h)

proc setResizeGripsVisible*(self: QColumnView, visible: bool): void =

  fcQColumnView_setResizeGripsVisible(self.h, visible)

proc resizeGripsVisible*(self: QColumnView, ): bool =

  fcQColumnView_resizeGripsVisible(self.h)

proc previewWidget*(self: QColumnView, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQColumnView_previewWidget(self.h))

proc setPreviewWidget*(self: QColumnView, widget: gen_qwidget.QWidget): void =

  fcQColumnView_setPreviewWidget(self.h, widget.h)

proc setColumnWidths*(self: QColumnView, list: seq[cint]): void =

  var list_CArray = newSeq[cint](len(list))
  for i in 0..<len(list):
    list_CArray[i] = list[i]

  fcQColumnView_setColumnWidths(self.h, struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])))

proc columnWidths*(self: QColumnView, ): seq[cint] =

  var v_ma = fcQColumnView_columnWidths(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc tr2*(_: type QColumnView, s: cstring, c: cstring): string =

  let v_ms = fcQColumnView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QColumnView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQColumnView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QColumnView, s: cstring, c: cstring): string =

  let v_ms = fcQColumnView_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QColumnView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQColumnView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QColumnView, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQColumnView_virtualbase_metaObject(self.h))

type QColumnViewmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QColumnView, slot: proc(super: QColumnViewmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_metaObject(self: ptr cQColumnView, slot: int): pointer {.exportc: "miqt_exec_callback_QColumnView_metaObject ".} =
  type Cb = proc(super: QColumnViewmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QColumnView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QColumnView, param1: cstring): pointer =


  fQColumnView_virtualbase_metacast(self.h, param1)

type QColumnViewmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QColumnView, slot: proc(super: QColumnViewmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_metacast(self: ptr cQColumnView, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QColumnView_metacast ".} =
  type Cb = proc(super: QColumnViewmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QColumnView(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QColumnView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQColumnView_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QColumnViewmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QColumnView, slot: proc(super: QColumnViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_metacall(self: ptr cQColumnView, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QColumnView_metacall ".} =
  type Cb = proc(super: QColumnViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QColumnView(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_indexAt(self: QColumnView, point: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQColumnView_virtualbase_indexAt(self.h, point.h))

type QColumnViewindexAtBase* = proc(point: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
proc onindexAt*(self: QColumnView, slot: proc(super: QColumnViewindexAtBase, point: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewindexAtBase, point: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_indexAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_indexAt(self: ptr cQColumnView, slot: int, point: pointer): pointer {.exportc: "miqt_exec_callback_QColumnView_indexAt ".} =
  type Cb = proc(super: QColumnViewindexAtBase, point: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(point: gen_qpoint.QPoint): auto =
    callVirtualBase_indexAt(QColumnView(h: self), point)
  let slotval1 = gen_qpoint.QPoint(h: point)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_scrollTo(self: QColumnView, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void =


  fQColumnView_virtualbase_scrollTo(self.h, index.h, cint(hint))

type QColumnViewscrollToBase* = proc(index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
proc onscrollTo*(self: QColumnView, slot: proc(super: QColumnViewscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_scrollTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_scrollTo(self: ptr cQColumnView, slot: int, index: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QColumnView_scrollTo ".} =
  type Cb = proc(super: QColumnViewscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): auto =
    callVirtualBase_scrollTo(QColumnView(h: self), index, hint)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemview.QAbstractItemViewScrollHint(hint)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_sizeHint(self: QColumnView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQColumnView_virtualbase_sizeHint(self.h))

type QColumnViewsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QColumnView, slot: proc(super: QColumnViewsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_sizeHint(self: ptr cQColumnView, slot: int): pointer {.exportc: "miqt_exec_callback_QColumnView_sizeHint ".} =
  type Cb = proc(super: QColumnViewsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QColumnView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_visualRect(self: QColumnView, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect =


  gen_qrect.QRect(h: fQColumnView_virtualbase_visualRect(self.h, index.h))

type QColumnViewvisualRectBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
proc onvisualRect*(self: QColumnView, slot: proc(super: QColumnViewvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_visualRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_visualRect(self: ptr cQColumnView, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QColumnView_visualRect ".} =
  type Cb = proc(super: QColumnViewvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_visualRect(QColumnView(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setModel(self: QColumnView, model: gen_qabstractitemmodel.QAbstractItemModel): void =


  fQColumnView_virtualbase_setModel(self.h, model.h)

type QColumnViewsetModelBase* = proc(model: gen_qabstractitemmodel.QAbstractItemModel): void
proc onsetModel*(self: QColumnView, slot: proc(super: QColumnViewsetModelBase, model: gen_qabstractitemmodel.QAbstractItemModel): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewsetModelBase, model: gen_qabstractitemmodel.QAbstractItemModel): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_setModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_setModel(self: ptr cQColumnView, slot: int, model: pointer): void {.exportc: "miqt_exec_callback_QColumnView_setModel ".} =
  type Cb = proc(super: QColumnViewsetModelBase, model: gen_qabstractitemmodel.QAbstractItemModel): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(model: gen_qabstractitemmodel.QAbstractItemModel): auto =
    callVirtualBase_setModel(QColumnView(h: self), model)
  let slotval1 = gen_qabstractitemmodel.QAbstractItemModel(h: model)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setSelectionModel(self: QColumnView, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void =


  fQColumnView_virtualbase_setSelectionModel(self.h, selectionModel.h)

type QColumnViewsetSelectionModelBase* = proc(selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
proc onsetSelectionModel*(self: QColumnView, slot: proc(super: QColumnViewsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_setSelectionModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_setSelectionModel(self: ptr cQColumnView, slot: int, selectionModel: pointer): void {.exportc: "miqt_exec_callback_QColumnView_setSelectionModel ".} =
  type Cb = proc(super: QColumnViewsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selectionModel: gen_qitemselectionmodel.QItemSelectionModel): auto =
    callVirtualBase_setSelectionModel(QColumnView(h: self), selectionModel)
  let slotval1 = gen_qitemselectionmodel.QItemSelectionModel(h: selectionModel)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setRootIndex(self: QColumnView, index: gen_qabstractitemmodel.QModelIndex): void =


  fQColumnView_virtualbase_setRootIndex(self.h, index.h)

type QColumnViewsetRootIndexBase* = proc(index: gen_qabstractitemmodel.QModelIndex): void
proc onsetRootIndex*(self: QColumnView, slot: proc(super: QColumnViewsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_setRootIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_setRootIndex(self: ptr cQColumnView, slot: int, index: pointer): void {.exportc: "miqt_exec_callback_QColumnView_setRootIndex ".} =
  type Cb = proc(super: QColumnViewsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_setRootIndex(QColumnView(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_selectAll(self: QColumnView, ): void =


  fQColumnView_virtualbase_selectAll(self.h)

type QColumnViewselectAllBase* = proc(): void
proc onselectAll*(self: QColumnView, slot: proc(super: QColumnViewselectAllBase): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewselectAllBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_selectAll(self: ptr cQColumnView, slot: int): void {.exportc: "miqt_exec_callback_QColumnView_selectAll ".} =
  type Cb = proc(super: QColumnViewselectAllBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_selectAll(QColumnView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_isIndexHidden(self: QColumnView, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQColumnView_virtualbase_isIndexHidden(self.h, index.h)

type QColumnViewisIndexHiddenBase* = proc(index: gen_qabstractitemmodel.QModelIndex): bool
proc onisIndexHidden*(self: QColumnView, slot: proc(super: QColumnViewisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_isIndexHidden(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_isIndexHidden(self: ptr cQColumnView, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QColumnView_isIndexHidden ".} =
  type Cb = proc(super: QColumnViewisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_isIndexHidden(QColumnView(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_moveCursor(self: QColumnView, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQColumnView_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

type QColumnViewmoveCursorBase* = proc(cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
proc onmoveCursor*(self: QColumnView, slot: proc(super: QColumnViewmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_moveCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_moveCursor(self: ptr cQColumnView, slot: int, cursorAction: cint, modifiers: cint): pointer {.exportc: "miqt_exec_callback_QColumnView_moveCursor ".} =
  type Cb = proc(super: QColumnViewmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): auto =
    callVirtualBase_moveCursor(QColumnView(h: self), cursorAction, modifiers)
  let slotval1 = gen_qabstractitemview.QAbstractItemViewCursorAction(cursorAction)

  let slotval2 = gen_qnamespace.KeyboardModifier(modifiers)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_resizeEvent(self: QColumnView, event: gen_qevent.QResizeEvent): void =


  fQColumnView_virtualbase_resizeEvent(self.h, event.h)

type QColumnViewresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QColumnView, slot: proc(super: QColumnViewresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_resizeEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_resizeEvent ".} =
  type Cb = proc(super: QColumnViewresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QColumnView(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setSelection(self: QColumnView, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void =


  fQColumnView_virtualbase_setSelection(self.h, rect.h, cint(command))

type QColumnViewsetSelectionBase* = proc(rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
proc onsetSelection*(self: QColumnView, slot: proc(super: QColumnViewsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_setSelection(self: ptr cQColumnView, slot: int, rect: pointer, command: cint): void {.exportc: "miqt_exec_callback_QColumnView_setSelection ".} =
  type Cb = proc(super: QColumnViewsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): auto =
    callVirtualBase_setSelection(QColumnView(h: self), rect, command)
  let slotval1 = gen_qrect.QRect(h: rect)

  let slotval2 = gen_qitemselectionmodel.QItemSelectionModelSelectionFlag(command)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_visualRegionForSelection(self: QColumnView, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion =


  gen_qregion.QRegion(h: fQColumnView_virtualbase_visualRegionForSelection(self.h, selection.h))

type QColumnViewvisualRegionForSelectionBase* = proc(selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
proc onvisualRegionForSelection*(self: QColumnView, slot: proc(super: QColumnViewvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_visualRegionForSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_visualRegionForSelection(self: ptr cQColumnView, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QColumnView_visualRegionForSelection ".} =
  type Cb = proc(super: QColumnViewvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selection: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_visualRegionForSelection(QColumnView(h: self), selection)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_horizontalOffset(self: QColumnView, ): cint =


  fQColumnView_virtualbase_horizontalOffset(self.h)

type QColumnViewhorizontalOffsetBase* = proc(): cint
proc onhorizontalOffset*(self: QColumnView, slot: proc(super: QColumnViewhorizontalOffsetBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewhorizontalOffsetBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_horizontalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_horizontalOffset(self: ptr cQColumnView, slot: int): cint {.exportc: "miqt_exec_callback_QColumnView_horizontalOffset ".} =
  type Cb = proc(super: QColumnViewhorizontalOffsetBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_horizontalOffset(QColumnView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_verticalOffset(self: QColumnView, ): cint =


  fQColumnView_virtualbase_verticalOffset(self.h)

type QColumnViewverticalOffsetBase* = proc(): cint
proc onverticalOffset*(self: QColumnView, slot: proc(super: QColumnViewverticalOffsetBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewverticalOffsetBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_verticalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_verticalOffset(self: ptr cQColumnView, slot: int): cint {.exportc: "miqt_exec_callback_QColumnView_verticalOffset ".} =
  type Cb = proc(super: QColumnViewverticalOffsetBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_verticalOffset(QColumnView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_rowsInserted(self: QColumnView, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void =


  fQColumnView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

type QColumnViewrowsInsertedBase* = proc(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
proc onrowsInserted*(self: QColumnView, slot: proc(super: QColumnViewrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_rowsInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_rowsInserted(self: ptr cQColumnView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QColumnView_rowsInserted ".} =
  type Cb = proc(super: QColumnViewrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): auto =
    callVirtualBase_rowsInserted(QColumnView(h: self), parent, start, endVal)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_currentChanged(self: QColumnView, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void =


  fQColumnView_virtualbase_currentChanged(self.h, current.h, previous.h)

type QColumnViewcurrentChangedBase* = proc(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
proc oncurrentChanged*(self: QColumnView, slot: proc(super: QColumnViewcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_currentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_currentChanged(self: ptr cQColumnView, slot: int, current: pointer, previous: pointer): void {.exportc: "miqt_exec_callback_QColumnView_currentChanged ".} =
  type Cb = proc(super: QColumnViewcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_currentChanged(QColumnView(h: self), current, previous)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: previous)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_scrollContentsBy(self: QColumnView, dx: cint, dy: cint): void =


  fQColumnView_virtualbase_scrollContentsBy(self.h, dx, dy)

type QColumnViewscrollContentsByBase* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: QColumnView, slot: proc(super: QColumnViewscrollContentsByBase, dx: cint, dy: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewscrollContentsByBase, dx: cint, dy: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_scrollContentsBy(self: ptr cQColumnView, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QColumnView_scrollContentsBy ".} =
  type Cb = proc(super: QColumnViewscrollContentsByBase, dx: cint, dy: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(dx: cint, dy: cint): auto =
    callVirtualBase_scrollContentsBy(QColumnView(h: self), dx, dy)
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_createColumn(self: QColumnView, rootIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemview.QAbstractItemView =


  gen_qabstractitemview.QAbstractItemView(h: fQColumnView_virtualbase_createColumn(self.h, rootIndex.h))

type QColumnViewcreateColumnBase* = proc(rootIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemview.QAbstractItemView
proc oncreateColumn*(self: QColumnView, slot: proc(super: QColumnViewcreateColumnBase, rootIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemview.QAbstractItemView) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewcreateColumnBase, rootIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemview.QAbstractItemView
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_createColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_createColumn(self: ptr cQColumnView, slot: int, rootIndex: pointer): pointer {.exportc: "miqt_exec_callback_QColumnView_createColumn ".} =
  type Cb = proc(super: QColumnViewcreateColumnBase, rootIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemview.QAbstractItemView
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rootIndex: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_createColumn(QColumnView(h: self), rootIndex)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: rootIndex)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_keyboardSearch(self: QColumnView, search: string): void =


  fQColumnView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

type QColumnViewkeyboardSearchBase* = proc(search: string): void
proc onkeyboardSearch*(self: QColumnView, slot: proc(super: QColumnViewkeyboardSearchBase, search: string): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewkeyboardSearchBase, search: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_keyboardSearch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_keyboardSearch(self: ptr cQColumnView, slot: int, search: struct_miqt_string): void {.exportc: "miqt_exec_callback_QColumnView_keyboardSearch ".} =
  type Cb = proc(super: QColumnViewkeyboardSearchBase, search: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(search: string): auto =
    callVirtualBase_keyboardSearch(QColumnView(h: self), search)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHintForRow(self: QColumnView, row: cint): cint =


  fQColumnView_virtualbase_sizeHintForRow(self.h, row)

type QColumnViewsizeHintForRowBase* = proc(row: cint): cint
proc onsizeHintForRow*(self: QColumnView, slot: proc(super: QColumnViewsizeHintForRowBase, row: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewsizeHintForRowBase, row: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_sizeHintForRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_sizeHintForRow(self: ptr cQColumnView, slot: int, row: cint): cint {.exportc: "miqt_exec_callback_QColumnView_sizeHintForRow ".} =
  type Cb = proc(super: QColumnViewsizeHintForRowBase, row: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint): auto =
    callVirtualBase_sizeHintForRow(QColumnView(h: self), row)
  let slotval1 = row


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_sizeHintForColumn(self: QColumnView, column: cint): cint =


  fQColumnView_virtualbase_sizeHintForColumn(self.h, column)

type QColumnViewsizeHintForColumnBase* = proc(column: cint): cint
proc onsizeHintForColumn*(self: QColumnView, slot: proc(super: QColumnViewsizeHintForColumnBase, column: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewsizeHintForColumnBase, column: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_sizeHintForColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_sizeHintForColumn(self: ptr cQColumnView, slot: int, column: cint): cint {.exportc: "miqt_exec_callback_QColumnView_sizeHintForColumn ".} =
  type Cb = proc(super: QColumnViewsizeHintForColumnBase, column: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint): auto =
    callVirtualBase_sizeHintForColumn(QColumnView(h: self), column)
  let slotval1 = column


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_inputMethodQuery(self: QColumnView, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQColumnView_virtualbase_inputMethodQuery(self.h, cint(query)))

type QColumnViewinputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QColumnView, slot: proc(super: QColumnViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_inputMethodQuery(self: ptr cQColumnView, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QColumnView_inputMethodQuery ".} =
  type Cb = proc(super: QColumnViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QColumnView(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_reset(self: QColumnView, ): void =


  fQColumnView_virtualbase_reset(self.h)

type QColumnViewresetBase* = proc(): void
proc onreset*(self: QColumnView, slot: proc(super: QColumnViewresetBase): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewresetBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_reset(self: ptr cQColumnView, slot: int): void {.exportc: "miqt_exec_callback_QColumnView_reset ".} =
  type Cb = proc(super: QColumnViewresetBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QColumnView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_doItemsLayout(self: QColumnView, ): void =


  fQColumnView_virtualbase_doItemsLayout(self.h)

type QColumnViewdoItemsLayoutBase* = proc(): void
proc ondoItemsLayout*(self: QColumnView, slot: proc(super: QColumnViewdoItemsLayoutBase): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewdoItemsLayoutBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_doItemsLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_doItemsLayout(self: ptr cQColumnView, slot: int): void {.exportc: "miqt_exec_callback_QColumnView_doItemsLayout ".} =
  type Cb = proc(super: QColumnViewdoItemsLayoutBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_doItemsLayout(QColumnView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_dataChanged(self: QColumnView, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void =

  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]


  fQColumnView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

type QColumnViewdataChangedBase* = proc(topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
proc ondataChanged*(self: QColumnView, slot: proc(super: QColumnViewdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_dataChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_dataChanged(self: ptr cQColumnView, slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.exportc: "miqt_exec_callback_QColumnView_dataChanged ".} =
  type Cb = proc(super: QColumnViewdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): auto =
    callVirtualBase_dataChanged(QColumnView(h: self), topLeft, bottomRight, roles)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_rowsAboutToBeRemoved(self: QColumnView, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void =


  fQColumnView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

type QColumnViewrowsAboutToBeRemovedBase* = proc(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
proc onrowsAboutToBeRemoved*(self: QColumnView, slot: proc(super: QColumnViewrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_rowsAboutToBeRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_rowsAboutToBeRemoved(self: ptr cQColumnView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QColumnView_rowsAboutToBeRemoved ".} =
  type Cb = proc(super: QColumnViewrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): auto =
    callVirtualBase_rowsAboutToBeRemoved(QColumnView(h: self), parent, start, endVal)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_selectionChanged(self: QColumnView, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void =


  fQColumnView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

type QColumnViewselectionChangedBase* = proc(selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
proc onselectionChanged*(self: QColumnView, slot: proc(super: QColumnViewselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_selectionChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_selectionChanged(self: ptr cQColumnView, slot: int, selected: pointer, deselected: pointer): void {.exportc: "miqt_exec_callback_QColumnView_selectionChanged ".} =
  type Cb = proc(super: QColumnViewselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_selectionChanged(QColumnView(h: self), selected, deselected)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel.QItemSelection(h: deselected)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_updateEditorData(self: QColumnView, ): void =


  fQColumnView_virtualbase_updateEditorData(self.h)

type QColumnViewupdateEditorDataBase* = proc(): void
proc onupdateEditorData*(self: QColumnView, slot: proc(super: QColumnViewupdateEditorDataBase): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewupdateEditorDataBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_updateEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_updateEditorData(self: ptr cQColumnView, slot: int): void {.exportc: "miqt_exec_callback_QColumnView_updateEditorData ".} =
  type Cb = proc(super: QColumnViewupdateEditorDataBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateEditorData(QColumnView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_updateEditorGeometries(self: QColumnView, ): void =


  fQColumnView_virtualbase_updateEditorGeometries(self.h)

type QColumnViewupdateEditorGeometriesBase* = proc(): void
proc onupdateEditorGeometries*(self: QColumnView, slot: proc(super: QColumnViewupdateEditorGeometriesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewupdateEditorGeometriesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_updateEditorGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_updateEditorGeometries(self: ptr cQColumnView, slot: int): void {.exportc: "miqt_exec_callback_QColumnView_updateEditorGeometries ".} =
  type Cb = proc(super: QColumnViewupdateEditorGeometriesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateEditorGeometries(QColumnView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_updateGeometries(self: QColumnView, ): void =


  fQColumnView_virtualbase_updateGeometries(self.h)

type QColumnViewupdateGeometriesBase* = proc(): void
proc onupdateGeometries*(self: QColumnView, slot: proc(super: QColumnViewupdateGeometriesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewupdateGeometriesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_updateGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_updateGeometries(self: ptr cQColumnView, slot: int): void {.exportc: "miqt_exec_callback_QColumnView_updateGeometries ".} =
  type Cb = proc(super: QColumnViewupdateGeometriesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateGeometries(QColumnView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_verticalScrollbarAction(self: QColumnView, action: cint): void =


  fQColumnView_virtualbase_verticalScrollbarAction(self.h, action)

type QColumnViewverticalScrollbarActionBase* = proc(action: cint): void
proc onverticalScrollbarAction*(self: QColumnView, slot: proc(super: QColumnViewverticalScrollbarActionBase, action: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewverticalScrollbarActionBase, action: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_verticalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_verticalScrollbarAction(self: ptr cQColumnView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QColumnView_verticalScrollbarAction ".} =
  type Cb = proc(super: QColumnViewverticalScrollbarActionBase, action: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(action: cint): auto =
    callVirtualBase_verticalScrollbarAction(QColumnView(h: self), action)
  let slotval1 = action


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalScrollbarAction(self: QColumnView, action: cint): void =


  fQColumnView_virtualbase_horizontalScrollbarAction(self.h, action)

type QColumnViewhorizontalScrollbarActionBase* = proc(action: cint): void
proc onhorizontalScrollbarAction*(self: QColumnView, slot: proc(super: QColumnViewhorizontalScrollbarActionBase, action: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewhorizontalScrollbarActionBase, action: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_horizontalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_horizontalScrollbarAction(self: ptr cQColumnView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QColumnView_horizontalScrollbarAction ".} =
  type Cb = proc(super: QColumnViewhorizontalScrollbarActionBase, action: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(action: cint): auto =
    callVirtualBase_horizontalScrollbarAction(QColumnView(h: self), action)
  let slotval1 = action


  nimfunc[](superCall, slotval1)
proc callVirtualBase_verticalScrollbarValueChanged(self: QColumnView, value: cint): void =


  fQColumnView_virtualbase_verticalScrollbarValueChanged(self.h, value)

type QColumnViewverticalScrollbarValueChangedBase* = proc(value: cint): void
proc onverticalScrollbarValueChanged*(self: QColumnView, slot: proc(super: QColumnViewverticalScrollbarValueChangedBase, value: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewverticalScrollbarValueChangedBase, value: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_verticalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_verticalScrollbarValueChanged(self: ptr cQColumnView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QColumnView_verticalScrollbarValueChanged ".} =
  type Cb = proc(super: QColumnViewverticalScrollbarValueChangedBase, value: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: cint): auto =
    callVirtualBase_verticalScrollbarValueChanged(QColumnView(h: self), value)
  let slotval1 = value


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalScrollbarValueChanged(self: QColumnView, value: cint): void =


  fQColumnView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

type QColumnViewhorizontalScrollbarValueChangedBase* = proc(value: cint): void
proc onhorizontalScrollbarValueChanged*(self: QColumnView, slot: proc(super: QColumnViewhorizontalScrollbarValueChangedBase, value: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewhorizontalScrollbarValueChangedBase, value: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_horizontalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_horizontalScrollbarValueChanged(self: ptr cQColumnView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QColumnView_horizontalScrollbarValueChanged ".} =
  type Cb = proc(super: QColumnViewhorizontalScrollbarValueChangedBase, value: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: cint): auto =
    callVirtualBase_horizontalScrollbarValueChanged(QColumnView(h: self), value)
  let slotval1 = value


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEditor(self: QColumnView, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void =


  fQColumnView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

type QColumnViewcloseEditorBase* = proc(editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
proc oncloseEditor*(self: QColumnView, slot: proc(super: QColumnViewcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_closeEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_closeEditor(self: ptr cQColumnView, slot: int, editor: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QColumnView_closeEditor ".} =
  type Cb = proc(super: QColumnViewcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): auto =
    callVirtualBase_closeEditor(QColumnView(h: self), editor, hint)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint(hint)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_commitData(self: QColumnView, editor: gen_qwidget.QWidget): void =


  fQColumnView_virtualbase_commitData(self.h, editor.h)

type QColumnViewcommitDataBase* = proc(editor: gen_qwidget.QWidget): void
proc oncommitData*(self: QColumnView, slot: proc(super: QColumnViewcommitDataBase, editor: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewcommitDataBase, editor: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_commitData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_commitData(self: ptr cQColumnView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QColumnView_commitData ".} =
  type Cb = proc(super: QColumnViewcommitDataBase, editor: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget): auto =
    callVirtualBase_commitData(QColumnView(h: self), editor)
  let slotval1 = gen_qwidget.QWidget(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_editorDestroyed(self: QColumnView, editor: gen_qobject.QObject): void =


  fQColumnView_virtualbase_editorDestroyed(self.h, editor.h)

type QColumnVieweditorDestroyedBase* = proc(editor: gen_qobject.QObject): void
proc oneditorDestroyed*(self: QColumnView, slot: proc(super: QColumnVieweditorDestroyedBase, editor: gen_qobject.QObject): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnVieweditorDestroyedBase, editor: gen_qobject.QObject): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_editorDestroyed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_editorDestroyed(self: ptr cQColumnView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QColumnView_editorDestroyed ".} =
  type Cb = proc(super: QColumnVieweditorDestroyedBase, editor: gen_qobject.QObject): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qobject.QObject): auto =
    callVirtualBase_editorDestroyed(QColumnView(h: self), editor)
  let slotval1 = gen_qobject.QObject(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_selectedIndexes(self: QColumnView, ): seq[gen_qabstractitemmodel.QModelIndex] =


  var v_ma = fQColumnView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

type QColumnViewselectedIndexesBase* = proc(): seq[gen_qabstractitemmodel.QModelIndex]
proc onselectedIndexes*(self: QColumnView, slot: proc(super: QColumnViewselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_selectedIndexes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_selectedIndexes(self: ptr cQColumnView, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QColumnView_selectedIndexes ".} =
  type Cb = proc(super: QColumnViewselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_selectedIndexes(QColumnView(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_edit2(self: QColumnView, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool =


  fQColumnView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

type QColumnViewedit2Base* = proc(index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
proc onedit2*(self: QColumnView, slot: proc(super: QColumnViewedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_edit2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_edit2(self: ptr cQColumnView, slot: int, index: pointer, trigger: cint, event: pointer): bool {.exportc: "miqt_exec_callback_QColumnView_edit2 ".} =
  type Cb = proc(super: QColumnViewedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_edit2(QColumnView(h: self), index, trigger, event)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemview.QAbstractItemViewEditTrigger(trigger)

  let slotval3 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_selectionCommand(self: QColumnView, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag =


  gen_qitemselectionmodel.QItemSelectionModelSelectionFlag(fQColumnView_virtualbase_selectionCommand(self.h, index.h, event.h))

type QColumnViewselectionCommandBase* = proc(index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
proc onselectionCommand*(self: QColumnView, slot: proc(super: QColumnViewselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_selectionCommand(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_selectionCommand(self: ptr cQColumnView, slot: int, index: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QColumnView_selectionCommand ".} =
  type Cb = proc(super: QColumnViewselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_selectionCommand(QColumnView(h: self), index, event)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  cint(virtualReturn)
proc callVirtualBase_startDrag(self: QColumnView, supportedActions: gen_qnamespace.DropAction): void =


  fQColumnView_virtualbase_startDrag(self.h, cint(supportedActions))

type QColumnViewstartDragBase* = proc(supportedActions: gen_qnamespace.DropAction): void
proc onstartDrag*(self: QColumnView, slot: proc(super: QColumnViewstartDragBase, supportedActions: gen_qnamespace.DropAction): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewstartDragBase, supportedActions: gen_qnamespace.DropAction): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_startDrag(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_startDrag(self: ptr cQColumnView, slot: int, supportedActions: cint): void {.exportc: "miqt_exec_callback_QColumnView_startDrag ".} =
  type Cb = proc(super: QColumnViewstartDragBase, supportedActions: gen_qnamespace.DropAction): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(supportedActions: gen_qnamespace.DropAction): auto =
    callVirtualBase_startDrag(QColumnView(h: self), supportedActions)
  let slotval1 = gen_qnamespace.DropAction(supportedActions)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_viewOptions(self: QColumnView, ): gen_qstyleoption.QStyleOptionViewItem =


  gen_qstyleoption.QStyleOptionViewItem(h: fQColumnView_virtualbase_viewOptions(self.h))

type QColumnViewviewOptionsBase* = proc(): gen_qstyleoption.QStyleOptionViewItem
proc onviewOptions*(self: QColumnView, slot: proc(super: QColumnViewviewOptionsBase): gen_qstyleoption.QStyleOptionViewItem) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewviewOptionsBase): gen_qstyleoption.QStyleOptionViewItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_viewOptions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_viewOptions(self: ptr cQColumnView, slot: int): pointer {.exportc: "miqt_exec_callback_QColumnView_viewOptions ".} =
  type Cb = proc(super: QColumnViewviewOptionsBase): gen_qstyleoption.QStyleOptionViewItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewOptions(QColumnView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QColumnView, next: bool): bool =


  fQColumnView_virtualbase_focusNextPrevChild(self.h, next)

type QColumnViewfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QColumnView, slot: proc(super: QColumnViewfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_focusNextPrevChild(self: ptr cQColumnView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QColumnView_focusNextPrevChild ".} =
  type Cb = proc(super: QColumnViewfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QColumnView(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QColumnView, event: gen_qcoreevent.QEvent): bool =


  fQColumnView_virtualbase_event(self.h, event.h)

type QColumnVieweventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QColumnView, slot: proc(super: QColumnVieweventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QColumnVieweventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_event(self: ptr cQColumnView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QColumnView_event ".} =
  type Cb = proc(super: QColumnVieweventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QColumnView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_viewportEvent(self: QColumnView, event: gen_qcoreevent.QEvent): bool =


  fQColumnView_virtualbase_viewportEvent(self.h, event.h)

type QColumnViewviewportEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: QColumnView, slot: proc(super: QColumnViewviewportEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_viewportEvent(self: ptr cQColumnView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QColumnView_viewportEvent ".} =
  type Cb = proc(super: QColumnViewviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_viewportEvent(QColumnView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QColumnView, event: gen_qevent.QMouseEvent): void =


  fQColumnView_virtualbase_mousePressEvent(self.h, event.h)

type QColumnViewmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QColumnView, slot: proc(super: QColumnViewmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_mousePressEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_mousePressEvent ".} =
  type Cb = proc(super: QColumnViewmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QColumnView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QColumnView, event: gen_qevent.QMouseEvent): void =


  fQColumnView_virtualbase_mouseMoveEvent(self.h, event.h)

type QColumnViewmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QColumnView, slot: proc(super: QColumnViewmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_mouseMoveEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_mouseMoveEvent ".} =
  type Cb = proc(super: QColumnViewmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QColumnView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QColumnView, event: gen_qevent.QMouseEvent): void =


  fQColumnView_virtualbase_mouseReleaseEvent(self.h, event.h)

type QColumnViewmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QColumnView, slot: proc(super: QColumnViewmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_mouseReleaseEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_mouseReleaseEvent ".} =
  type Cb = proc(super: QColumnViewmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QColumnView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QColumnView, event: gen_qevent.QMouseEvent): void =


  fQColumnView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QColumnViewmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QColumnView, slot: proc(super: QColumnViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_mouseDoubleClickEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QColumnViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QColumnView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QColumnView, event: gen_qevent.QDragEnterEvent): void =


  fQColumnView_virtualbase_dragEnterEvent(self.h, event.h)

type QColumnViewdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QColumnView, slot: proc(super: QColumnViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_dragEnterEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_dragEnterEvent ".} =
  type Cb = proc(super: QColumnViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QColumnView(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QColumnView, event: gen_qevent.QDragMoveEvent): void =


  fQColumnView_virtualbase_dragMoveEvent(self.h, event.h)

type QColumnViewdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QColumnView, slot: proc(super: QColumnViewdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_dragMoveEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_dragMoveEvent ".} =
  type Cb = proc(super: QColumnViewdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QColumnView(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QColumnView, event: gen_qevent.QDragLeaveEvent): void =


  fQColumnView_virtualbase_dragLeaveEvent(self.h, event.h)

type QColumnViewdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QColumnView, slot: proc(super: QColumnViewdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_dragLeaveEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_dragLeaveEvent ".} =
  type Cb = proc(super: QColumnViewdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QColumnView(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QColumnView, event: gen_qevent.QDropEvent): void =


  fQColumnView_virtualbase_dropEvent(self.h, event.h)

type QColumnViewdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QColumnView, slot: proc(super: QColumnViewdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_dropEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_dropEvent ".} =
  type Cb = proc(super: QColumnViewdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QColumnView(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QColumnView, event: gen_qevent.QFocusEvent): void =


  fQColumnView_virtualbase_focusInEvent(self.h, event.h)

type QColumnViewfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QColumnView, slot: proc(super: QColumnViewfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_focusInEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_focusInEvent ".} =
  type Cb = proc(super: QColumnViewfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QColumnView(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QColumnView, event: gen_qevent.QFocusEvent): void =


  fQColumnView_virtualbase_focusOutEvent(self.h, event.h)

type QColumnViewfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QColumnView, slot: proc(super: QColumnViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_focusOutEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_focusOutEvent ".} =
  type Cb = proc(super: QColumnViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QColumnView(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QColumnView, event: gen_qevent.QKeyEvent): void =


  fQColumnView_virtualbase_keyPressEvent(self.h, event.h)

type QColumnViewkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QColumnView, slot: proc(super: QColumnViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_keyPressEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_keyPressEvent ".} =
  type Cb = proc(super: QColumnViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QColumnView(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QColumnView, event: gen_qcoreevent.QTimerEvent): void =


  fQColumnView_virtualbase_timerEvent(self.h, event.h)

type QColumnViewtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QColumnView, slot: proc(super: QColumnViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_timerEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_timerEvent ".} =
  type Cb = proc(super: QColumnViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QColumnView(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QColumnView, event: gen_qevent.QInputMethodEvent): void =


  fQColumnView_virtualbase_inputMethodEvent(self.h, event.h)

type QColumnViewinputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QColumnView, slot: proc(super: QColumnViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_inputMethodEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_inputMethodEvent ".} =
  type Cb = proc(super: QColumnViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QColumnView(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QColumnView, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQColumnView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QColumnVieweventFilterBase* = proc(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QColumnView, slot: proc(super: QColumnVieweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QColumnVieweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_eventFilter(self: ptr cQColumnView, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QColumnView_eventFilter ".} =
  type Cb = proc(super: QColumnVieweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QColumnView(h: self), objectVal, event)
  let slotval1 = gen_qobject.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_viewportSizeHint(self: QColumnView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQColumnView_virtualbase_viewportSizeHint(self.h))

type QColumnViewviewportSizeHintBase* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: QColumnView, slot: proc(super: QColumnViewviewportSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewviewportSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_viewportSizeHint(self: ptr cQColumnView, slot: int): pointer {.exportc: "miqt_exec_callback_QColumnView_viewportSizeHint ".} =
  type Cb = proc(super: QColumnViewviewportSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewportSizeHint(QColumnView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QColumnView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQColumnView_virtualbase_minimumSizeHint(self.h))

type QColumnViewminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QColumnView, slot: proc(super: QColumnViewminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_minimumSizeHint(self: ptr cQColumnView, slot: int): pointer {.exportc: "miqt_exec_callback_QColumnView_minimumSizeHint ".} =
  type Cb = proc(super: QColumnViewminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QColumnView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setupViewport(self: QColumnView, viewport: gen_qwidget.QWidget): void =


  fQColumnView_virtualbase_setupViewport(self.h, viewport.h)

type QColumnViewsetupViewportBase* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: QColumnView, slot: proc(super: QColumnViewsetupViewportBase, viewport: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_setupViewport(self: ptr cQColumnView, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QColumnView_setupViewport ".} =
  type Cb = proc(super: QColumnViewsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(viewport: gen_qwidget.QWidget): auto =
    callVirtualBase_setupViewport(QColumnView(h: self), viewport)
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QColumnView, param1: gen_qevent.QPaintEvent): void =


  fQColumnView_virtualbase_paintEvent(self.h, param1.h)

type QColumnViewpaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QColumnView, slot: proc(super: QColumnViewpaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_paintEvent(self: ptr cQColumnView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QColumnView_paintEvent ".} =
  type Cb = proc(super: QColumnViewpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QColumnView(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QColumnView, param1: gen_qevent.QWheelEvent): void =


  fQColumnView_virtualbase_wheelEvent(self.h, param1.h)

type QColumnViewwheelEventBase* = proc(param1: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QColumnView, slot: proc(super: QColumnViewwheelEventBase, param1: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_wheelEvent(self: ptr cQColumnView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QColumnView_wheelEvent ".} =
  type Cb = proc(super: QColumnViewwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QColumnView(h: self), param1)
  let slotval1 = gen_qevent.QWheelEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QColumnView, param1: gen_qevent.QContextMenuEvent): void =


  fQColumnView_virtualbase_contextMenuEvent(self.h, param1.h)

type QColumnViewcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QColumnView, slot: proc(super: QColumnViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_contextMenuEvent(self: ptr cQColumnView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QColumnView_contextMenuEvent ".} =
  type Cb = proc(super: QColumnViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QColumnView(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QColumnView, param1: gen_qcoreevent.QEvent): void =


  fQColumnView_virtualbase_changeEvent(self.h, param1.h)

type QColumnViewchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QColumnView, slot: proc(super: QColumnViewchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_changeEvent(self: ptr cQColumnView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QColumnView_changeEvent ".} =
  type Cb = proc(super: QColumnViewchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QColumnView(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QColumnView, ): cint =


  fQColumnView_virtualbase_devType(self.h)

type QColumnViewdevTypeBase* = proc(): cint
proc ondevType*(self: QColumnView, slot: proc(super: QColumnViewdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_devType(self: ptr cQColumnView, slot: int): cint {.exportc: "miqt_exec_callback_QColumnView_devType ".} =
  type Cb = proc(super: QColumnViewdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QColumnView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QColumnView, visible: bool): void =


  fQColumnView_virtualbase_setVisible(self.h, visible)

type QColumnViewsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QColumnView, slot: proc(super: QColumnViewsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_setVisible(self: ptr cQColumnView, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QColumnView_setVisible ".} =
  type Cb = proc(super: QColumnViewsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QColumnView(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QColumnView, param1: cint): cint =


  fQColumnView_virtualbase_heightForWidth(self.h, param1)

type QColumnViewheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QColumnView, slot: proc(super: QColumnViewheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_heightForWidth(self: ptr cQColumnView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QColumnView_heightForWidth ".} =
  type Cb = proc(super: QColumnViewheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QColumnView(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QColumnView, ): bool =


  fQColumnView_virtualbase_hasHeightForWidth(self.h)

type QColumnViewhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QColumnView, slot: proc(super: QColumnViewhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_hasHeightForWidth(self: ptr cQColumnView, slot: int): bool {.exportc: "miqt_exec_callback_QColumnView_hasHeightForWidth ".} =
  type Cb = proc(super: QColumnViewhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QColumnView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QColumnView, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQColumnView_virtualbase_paintEngine(self.h))

type QColumnViewpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QColumnView, slot: proc(super: QColumnViewpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_paintEngine(self: ptr cQColumnView, slot: int): pointer {.exportc: "miqt_exec_callback_QColumnView_paintEngine ".} =
  type Cb = proc(super: QColumnViewpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QColumnView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_keyReleaseEvent(self: QColumnView, event: gen_qevent.QKeyEvent): void =


  fQColumnView_virtualbase_keyReleaseEvent(self.h, event.h)

type QColumnViewkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QColumnView, slot: proc(super: QColumnViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_keyReleaseEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_keyReleaseEvent ".} =
  type Cb = proc(super: QColumnViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QColumnView(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QColumnView, event: gen_qcoreevent.QEvent): void =


  fQColumnView_virtualbase_enterEvent(self.h, event.h)

type QColumnViewenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QColumnView, slot: proc(super: QColumnViewenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_enterEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_enterEvent ".} =
  type Cb = proc(super: QColumnViewenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QColumnView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QColumnView, event: gen_qcoreevent.QEvent): void =


  fQColumnView_virtualbase_leaveEvent(self.h, event.h)

type QColumnViewleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QColumnView, slot: proc(super: QColumnViewleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_leaveEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_leaveEvent ".} =
  type Cb = proc(super: QColumnViewleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QColumnView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QColumnView, event: gen_qevent.QMoveEvent): void =


  fQColumnView_virtualbase_moveEvent(self.h, event.h)

type QColumnViewmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QColumnView, slot: proc(super: QColumnViewmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_moveEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_moveEvent ".} =
  type Cb = proc(super: QColumnViewmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QColumnView(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QColumnView, event: gen_qevent.QCloseEvent): void =


  fQColumnView_virtualbase_closeEvent(self.h, event.h)

type QColumnViewcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QColumnView, slot: proc(super: QColumnViewcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_closeEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_closeEvent ".} =
  type Cb = proc(super: QColumnViewcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QColumnView(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QColumnView, event: gen_qevent.QTabletEvent): void =


  fQColumnView_virtualbase_tabletEvent(self.h, event.h)

type QColumnViewtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QColumnView, slot: proc(super: QColumnViewtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_tabletEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_tabletEvent ".} =
  type Cb = proc(super: QColumnViewtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QColumnView(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QColumnView, event: gen_qevent.QActionEvent): void =


  fQColumnView_virtualbase_actionEvent(self.h, event.h)

type QColumnViewactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QColumnView, slot: proc(super: QColumnViewactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_actionEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_actionEvent ".} =
  type Cb = proc(super: QColumnViewactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QColumnView(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QColumnView, event: gen_qevent.QShowEvent): void =


  fQColumnView_virtualbase_showEvent(self.h, event.h)

type QColumnViewshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QColumnView, slot: proc(super: QColumnViewshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_showEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_showEvent ".} =
  type Cb = proc(super: QColumnViewshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QColumnView(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QColumnView, event: gen_qevent.QHideEvent): void =


  fQColumnView_virtualbase_hideEvent(self.h, event.h)

type QColumnViewhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QColumnView, slot: proc(super: QColumnViewhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_hideEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_hideEvent ".} =
  type Cb = proc(super: QColumnViewhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QColumnView(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QColumnView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQColumnView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QColumnViewnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QColumnView, slot: proc(super: QColumnViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_nativeEvent(self: ptr cQColumnView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QColumnView_nativeEvent ".} =
  type Cb = proc(super: QColumnViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QColumnView(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QColumnView, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQColumnView_virtualbase_metric(self.h, cint(param1))

type QColumnViewmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QColumnView, slot: proc(super: QColumnViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_metric(self: ptr cQColumnView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QColumnView_metric ".} =
  type Cb = proc(super: QColumnViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QColumnView(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QColumnView, painter: gen_qpainter.QPainter): void =


  fQColumnView_virtualbase_initPainter(self.h, painter.h)

type QColumnViewinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QColumnView, slot: proc(super: QColumnViewinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_initPainter(self: ptr cQColumnView, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QColumnView_initPainter ".} =
  type Cb = proc(super: QColumnViewinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QColumnView(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QColumnView, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQColumnView_virtualbase_redirected(self.h, offset.h))

type QColumnViewredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QColumnView, slot: proc(super: QColumnViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_redirected(self: ptr cQColumnView, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QColumnView_redirected ".} =
  type Cb = proc(super: QColumnViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QColumnView(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QColumnView, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQColumnView_virtualbase_sharedPainter(self.h))

type QColumnViewsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QColumnView, slot: proc(super: QColumnViewsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_sharedPainter(self: ptr cQColumnView, slot: int): pointer {.exportc: "miqt_exec_callback_QColumnView_sharedPainter ".} =
  type Cb = proc(super: QColumnViewsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QColumnView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_childEvent(self: QColumnView, event: gen_qcoreevent.QChildEvent): void =


  fQColumnView_virtualbase_childEvent(self.h, event.h)

type QColumnViewchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QColumnView, slot: proc(super: QColumnViewchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_childEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_childEvent ".} =
  type Cb = proc(super: QColumnViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QColumnView(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QColumnView, event: gen_qcoreevent.QEvent): void =


  fQColumnView_virtualbase_customEvent(self.h, event.h)

type QColumnViewcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QColumnView, slot: proc(super: QColumnViewcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_customEvent(self: ptr cQColumnView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QColumnView_customEvent ".} =
  type Cb = proc(super: QColumnViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QColumnView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QColumnView, signal: gen_qmetaobject.QMetaMethod): void =


  fQColumnView_virtualbase_connectNotify(self.h, signal.h)

type QColumnViewconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QColumnView, slot: proc(super: QColumnViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_connectNotify(self: ptr cQColumnView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QColumnView_connectNotify ".} =
  type Cb = proc(super: QColumnViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QColumnView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QColumnView, signal: gen_qmetaobject.QMetaMethod): void =


  fQColumnView_virtualbase_disconnectNotify(self.h, signal.h)

type QColumnViewdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QColumnView, slot: proc(super: QColumnViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QColumnViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQColumnView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QColumnView_disconnectNotify(self: ptr cQColumnView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QColumnView_disconnectNotify ".} =
  type Cb = proc(super: QColumnViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QColumnView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QColumnView): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQColumnView_staticMetaObject())
proc delete*(self: QColumnView) =
  fcQColumnView_delete(self.h)
