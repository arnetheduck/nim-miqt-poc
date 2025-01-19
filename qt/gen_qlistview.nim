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
{.compile("gen_qlistview.cpp", cflags).}


type QListViewMovement* = cint
const
  QListViewStatic* = 0
  QListViewFree* = 1
  QListViewSnap* = 2



type QListViewFlow* = cint
const
  QListViewLeftToRight* = 0
  QListViewTopToBottom* = 1



type QListViewResizeMode* = cint
const
  QListViewFixed* = 0
  QListViewAdjust* = 1



type QListViewLayoutMode* = cint
const
  QListViewSinglePass* = 0
  QListViewBatched* = 1



type QListViewViewMode* = cint
const
  QListViewListMode* = 0
  QListViewIconMode* = 1



import gen_qlistview_types
export gen_qlistview_types

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

type cQListView*{.exportc: "QListView", incompleteStruct.} = object

proc fcQListView_new(parent: pointer): ptr cQListView {.importc: "QListView_new".}
proc fcQListView_new2(): ptr cQListView {.importc: "QListView_new2".}
proc fcQListView_metaObject(self: pointer, ): pointer {.importc: "QListView_metaObject".}
proc fcQListView_metacast(self: pointer, param1: cstring): pointer {.importc: "QListView_metacast".}
proc fcQListView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QListView_metacall".}
proc fcQListView_tr(s: cstring): struct_miqt_string {.importc: "QListView_tr".}
proc fcQListView_trUtf8(s: cstring): struct_miqt_string {.importc: "QListView_trUtf8".}
proc fcQListView_setMovement(self: pointer, movement: cint): void {.importc: "QListView_setMovement".}
proc fcQListView_movement(self: pointer, ): cint {.importc: "QListView_movement".}
proc fcQListView_setFlow(self: pointer, flow: cint): void {.importc: "QListView_setFlow".}
proc fcQListView_flow(self: pointer, ): cint {.importc: "QListView_flow".}
proc fcQListView_setWrapping(self: pointer, enable: bool): void {.importc: "QListView_setWrapping".}
proc fcQListView_isWrapping(self: pointer, ): bool {.importc: "QListView_isWrapping".}
proc fcQListView_setResizeMode(self: pointer, mode: cint): void {.importc: "QListView_setResizeMode".}
proc fcQListView_resizeMode(self: pointer, ): cint {.importc: "QListView_resizeMode".}
proc fcQListView_setLayoutMode(self: pointer, mode: cint): void {.importc: "QListView_setLayoutMode".}
proc fcQListView_layoutMode(self: pointer, ): cint {.importc: "QListView_layoutMode".}
proc fcQListView_setSpacing(self: pointer, space: cint): void {.importc: "QListView_setSpacing".}
proc fcQListView_spacing(self: pointer, ): cint {.importc: "QListView_spacing".}
proc fcQListView_setBatchSize(self: pointer, batchSize: cint): void {.importc: "QListView_setBatchSize".}
proc fcQListView_batchSize(self: pointer, ): cint {.importc: "QListView_batchSize".}
proc fcQListView_setGridSize(self: pointer, size: pointer): void {.importc: "QListView_setGridSize".}
proc fcQListView_gridSize(self: pointer, ): pointer {.importc: "QListView_gridSize".}
proc fcQListView_setViewMode(self: pointer, mode: cint): void {.importc: "QListView_setViewMode".}
proc fcQListView_viewMode(self: pointer, ): cint {.importc: "QListView_viewMode".}
proc fcQListView_clearPropertyFlags(self: pointer, ): void {.importc: "QListView_clearPropertyFlags".}
proc fcQListView_isRowHidden(self: pointer, row: cint): bool {.importc: "QListView_isRowHidden".}
proc fcQListView_setRowHidden(self: pointer, row: cint, hide: bool): void {.importc: "QListView_setRowHidden".}
proc fcQListView_setModelColumn(self: pointer, column: cint): void {.importc: "QListView_setModelColumn".}
proc fcQListView_modelColumn(self: pointer, ): cint {.importc: "QListView_modelColumn".}
proc fcQListView_setUniformItemSizes(self: pointer, enable: bool): void {.importc: "QListView_setUniformItemSizes".}
proc fcQListView_uniformItemSizes(self: pointer, ): bool {.importc: "QListView_uniformItemSizes".}
proc fcQListView_setWordWrap(self: pointer, on: bool): void {.importc: "QListView_setWordWrap".}
proc fcQListView_wordWrap(self: pointer, ): bool {.importc: "QListView_wordWrap".}
proc fcQListView_setSelectionRectVisible(self: pointer, show: bool): void {.importc: "QListView_setSelectionRectVisible".}
proc fcQListView_isSelectionRectVisible(self: pointer, ): bool {.importc: "QListView_isSelectionRectVisible".}
proc fcQListView_setItemAlignment(self: pointer, alignment: cint): void {.importc: "QListView_setItemAlignment".}
proc fcQListView_itemAlignment(self: pointer, ): cint {.importc: "QListView_itemAlignment".}
proc fcQListView_visualRect(self: pointer, index: pointer): pointer {.importc: "QListView_visualRect".}
proc fcQListView_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QListView_scrollTo".}
proc fcQListView_indexAt(self: pointer, p: pointer): pointer {.importc: "QListView_indexAt".}
proc fcQListView_doItemsLayout(self: pointer, ): void {.importc: "QListView_doItemsLayout".}
proc fcQListView_reset(self: pointer, ): void {.importc: "QListView_reset".}
proc fcQListView_setRootIndex(self: pointer, index: pointer): void {.importc: "QListView_setRootIndex".}
proc fcQListView_indexesMoved(self: pointer, indexes: struct_miqt_array): void {.importc: "QListView_indexesMoved".}
proc fQListView_connect_indexesMoved(self: pointer, slot: int) {.importc: "QListView_connect_indexesMoved".}
proc fcQListView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QListView_tr2".}
proc fcQListView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QListView_tr3".}
proc fcQListView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QListView_trUtf82".}
proc fcQListView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QListView_trUtf83".}
proc fQListView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QListView_virtualbase_metacall".}
proc fcQListView_override_virtual_metacall(self: pointer, slot: int) {.importc: "QListView_override_virtual_metacall".}
proc fQListView_virtualbase_visualRect(self: pointer, index: pointer): pointer{.importc: "QListView_virtualbase_visualRect".}
proc fcQListView_override_virtual_visualRect(self: pointer, slot: int) {.importc: "QListView_override_virtual_visualRect".}
proc fQListView_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void{.importc: "QListView_virtualbase_scrollTo".}
proc fcQListView_override_virtual_scrollTo(self: pointer, slot: int) {.importc: "QListView_override_virtual_scrollTo".}
proc fQListView_virtualbase_indexAt(self: pointer, p: pointer): pointer{.importc: "QListView_virtualbase_indexAt".}
proc fcQListView_override_virtual_indexAt(self: pointer, slot: int) {.importc: "QListView_override_virtual_indexAt".}
proc fQListView_virtualbase_doItemsLayout(self: pointer, ): void{.importc: "QListView_virtualbase_doItemsLayout".}
proc fcQListView_override_virtual_doItemsLayout(self: pointer, slot: int) {.importc: "QListView_override_virtual_doItemsLayout".}
proc fQListView_virtualbase_reset(self: pointer, ): void{.importc: "QListView_virtualbase_reset".}
proc fcQListView_override_virtual_reset(self: pointer, slot: int) {.importc: "QListView_override_virtual_reset".}
proc fQListView_virtualbase_setRootIndex(self: pointer, index: pointer): void{.importc: "QListView_virtualbase_setRootIndex".}
proc fcQListView_override_virtual_setRootIndex(self: pointer, slot: int) {.importc: "QListView_override_virtual_setRootIndex".}
proc fQListView_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QListView_virtualbase_event".}
proc fcQListView_override_virtual_event(self: pointer, slot: int) {.importc: "QListView_override_virtual_event".}
proc fQListView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QListView_virtualbase_scrollContentsBy".}
proc fcQListView_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QListView_override_virtual_scrollContentsBy".}
proc fQListView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void{.importc: "QListView_virtualbase_dataChanged".}
proc fcQListView_override_virtual_dataChanged(self: pointer, slot: int) {.importc: "QListView_override_virtual_dataChanged".}
proc fQListView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QListView_virtualbase_rowsInserted".}
proc fcQListView_override_virtual_rowsInserted(self: pointer, slot: int) {.importc: "QListView_override_virtual_rowsInserted".}
proc fQListView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QListView_virtualbase_rowsAboutToBeRemoved".}
proc fcQListView_override_virtual_rowsAboutToBeRemoved(self: pointer, slot: int) {.importc: "QListView_override_virtual_rowsAboutToBeRemoved".}
proc fQListView_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void{.importc: "QListView_virtualbase_mouseMoveEvent".}
proc fcQListView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_mouseMoveEvent".}
proc fQListView_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QListView_virtualbase_mouseReleaseEvent".}
proc fcQListView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_mouseReleaseEvent".}
proc fQListView_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QListView_virtualbase_wheelEvent".}
proc fcQListView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_wheelEvent".}
proc fQListView_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QListView_virtualbase_timerEvent".}
proc fcQListView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_timerEvent".}
proc fQListView_virtualbase_resizeEvent(self: pointer, e: pointer): void{.importc: "QListView_virtualbase_resizeEvent".}
proc fcQListView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_resizeEvent".}
proc fQListView_virtualbase_dragMoveEvent(self: pointer, e: pointer): void{.importc: "QListView_virtualbase_dragMoveEvent".}
proc fcQListView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_dragMoveEvent".}
proc fQListView_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void{.importc: "QListView_virtualbase_dragLeaveEvent".}
proc fcQListView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_dragLeaveEvent".}
proc fQListView_virtualbase_dropEvent(self: pointer, e: pointer): void{.importc: "QListView_virtualbase_dropEvent".}
proc fcQListView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_dropEvent".}
proc fQListView_virtualbase_startDrag(self: pointer, supportedActions: cint): void{.importc: "QListView_virtualbase_startDrag".}
proc fcQListView_override_virtual_startDrag(self: pointer, slot: int) {.importc: "QListView_override_virtual_startDrag".}
proc fQListView_virtualbase_viewOptions(self: pointer, ): pointer{.importc: "QListView_virtualbase_viewOptions".}
proc fcQListView_override_virtual_viewOptions(self: pointer, slot: int) {.importc: "QListView_override_virtual_viewOptions".}
proc fQListView_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QListView_virtualbase_paintEvent".}
proc fcQListView_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_paintEvent".}
proc fQListView_virtualbase_horizontalOffset(self: pointer, ): cint{.importc: "QListView_virtualbase_horizontalOffset".}
proc fcQListView_override_virtual_horizontalOffset(self: pointer, slot: int) {.importc: "QListView_override_virtual_horizontalOffset".}
proc fQListView_virtualbase_verticalOffset(self: pointer, ): cint{.importc: "QListView_virtualbase_verticalOffset".}
proc fcQListView_override_virtual_verticalOffset(self: pointer, slot: int) {.importc: "QListView_override_virtual_verticalOffset".}
proc fQListView_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer{.importc: "QListView_virtualbase_moveCursor".}
proc fcQListView_override_virtual_moveCursor(self: pointer, slot: int) {.importc: "QListView_override_virtual_moveCursor".}
proc fQListView_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void{.importc: "QListView_virtualbase_setSelection".}
proc fcQListView_override_virtual_setSelection(self: pointer, slot: int) {.importc: "QListView_override_virtual_setSelection".}
proc fQListView_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer{.importc: "QListView_virtualbase_visualRegionForSelection".}
proc fcQListView_override_virtual_visualRegionForSelection(self: pointer, slot: int) {.importc: "QListView_override_virtual_visualRegionForSelection".}
proc fQListView_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array{.importc: "QListView_virtualbase_selectedIndexes".}
proc fcQListView_override_virtual_selectedIndexes(self: pointer, slot: int) {.importc: "QListView_override_virtual_selectedIndexes".}
proc fQListView_virtualbase_updateGeometries(self: pointer, ): void{.importc: "QListView_virtualbase_updateGeometries".}
proc fcQListView_override_virtual_updateGeometries(self: pointer, slot: int) {.importc: "QListView_override_virtual_updateGeometries".}
proc fQListView_virtualbase_isIndexHidden(self: pointer, index: pointer): bool{.importc: "QListView_virtualbase_isIndexHidden".}
proc fcQListView_override_virtual_isIndexHidden(self: pointer, slot: int) {.importc: "QListView_override_virtual_isIndexHidden".}
proc fQListView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void{.importc: "QListView_virtualbase_selectionChanged".}
proc fcQListView_override_virtual_selectionChanged(self: pointer, slot: int) {.importc: "QListView_override_virtual_selectionChanged".}
proc fQListView_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void{.importc: "QListView_virtualbase_currentChanged".}
proc fcQListView_override_virtual_currentChanged(self: pointer, slot: int) {.importc: "QListView_override_virtual_currentChanged".}
proc fQListView_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QListView_virtualbase_viewportSizeHint".}
proc fcQListView_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QListView_override_virtual_viewportSizeHint".}
proc fQListView_virtualbase_setModel(self: pointer, model: pointer): void{.importc: "QListView_virtualbase_setModel".}
proc fcQListView_override_virtual_setModel(self: pointer, slot: int) {.importc: "QListView_override_virtual_setModel".}
proc fQListView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void{.importc: "QListView_virtualbase_setSelectionModel".}
proc fcQListView_override_virtual_setSelectionModel(self: pointer, slot: int) {.importc: "QListView_override_virtual_setSelectionModel".}
proc fQListView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void{.importc: "QListView_virtualbase_keyboardSearch".}
proc fcQListView_override_virtual_keyboardSearch(self: pointer, slot: int) {.importc: "QListView_override_virtual_keyboardSearch".}
proc fQListView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint{.importc: "QListView_virtualbase_sizeHintForRow".}
proc fcQListView_override_virtual_sizeHintForRow(self: pointer, slot: int) {.importc: "QListView_override_virtual_sizeHintForRow".}
proc fQListView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint{.importc: "QListView_virtualbase_sizeHintForColumn".}
proc fcQListView_override_virtual_sizeHintForColumn(self: pointer, slot: int) {.importc: "QListView_override_virtual_sizeHintForColumn".}
proc fQListView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QListView_virtualbase_inputMethodQuery".}
proc fcQListView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QListView_override_virtual_inputMethodQuery".}
proc fQListView_virtualbase_selectAll(self: pointer, ): void{.importc: "QListView_virtualbase_selectAll".}
proc fcQListView_override_virtual_selectAll(self: pointer, slot: int) {.importc: "QListView_override_virtual_selectAll".}
proc fQListView_virtualbase_updateEditorData(self: pointer, ): void{.importc: "QListView_virtualbase_updateEditorData".}
proc fcQListView_override_virtual_updateEditorData(self: pointer, slot: int) {.importc: "QListView_override_virtual_updateEditorData".}
proc fQListView_virtualbase_updateEditorGeometries(self: pointer, ): void{.importc: "QListView_virtualbase_updateEditorGeometries".}
proc fcQListView_override_virtual_updateEditorGeometries(self: pointer, slot: int) {.importc: "QListView_override_virtual_updateEditorGeometries".}
proc fQListView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void{.importc: "QListView_virtualbase_verticalScrollbarAction".}
proc fcQListView_override_virtual_verticalScrollbarAction(self: pointer, slot: int) {.importc: "QListView_override_virtual_verticalScrollbarAction".}
proc fQListView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void{.importc: "QListView_virtualbase_horizontalScrollbarAction".}
proc fcQListView_override_virtual_horizontalScrollbarAction(self: pointer, slot: int) {.importc: "QListView_override_virtual_horizontalScrollbarAction".}
proc fQListView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QListView_virtualbase_verticalScrollbarValueChanged".}
proc fcQListView_override_virtual_verticalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QListView_override_virtual_verticalScrollbarValueChanged".}
proc fQListView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QListView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQListView_override_virtual_horizontalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QListView_override_virtual_horizontalScrollbarValueChanged".}
proc fQListView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void{.importc: "QListView_virtualbase_closeEditor".}
proc fcQListView_override_virtual_closeEditor(self: pointer, slot: int) {.importc: "QListView_override_virtual_closeEditor".}
proc fQListView_virtualbase_commitData(self: pointer, editor: pointer): void{.importc: "QListView_virtualbase_commitData".}
proc fcQListView_override_virtual_commitData(self: pointer, slot: int) {.importc: "QListView_override_virtual_commitData".}
proc fQListView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void{.importc: "QListView_virtualbase_editorDestroyed".}
proc fcQListView_override_virtual_editorDestroyed(self: pointer, slot: int) {.importc: "QListView_override_virtual_editorDestroyed".}
proc fQListView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool{.importc: "QListView_virtualbase_edit2".}
proc fcQListView_override_virtual_edit2(self: pointer, slot: int) {.importc: "QListView_override_virtual_edit2".}
proc fQListView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint{.importc: "QListView_virtualbase_selectionCommand".}
proc fcQListView_override_virtual_selectionCommand(self: pointer, slot: int) {.importc: "QListView_override_virtual_selectionCommand".}
proc fQListView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QListView_virtualbase_focusNextPrevChild".}
proc fcQListView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QListView_override_virtual_focusNextPrevChild".}
proc fQListView_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QListView_virtualbase_viewportEvent".}
proc fcQListView_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_viewportEvent".}
proc fQListView_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_mousePressEvent".}
proc fcQListView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_mousePressEvent".}
proc fQListView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_mouseDoubleClickEvent".}
proc fcQListView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_mouseDoubleClickEvent".}
proc fQListView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_dragEnterEvent".}
proc fcQListView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_dragEnterEvent".}
proc fQListView_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_focusInEvent".}
proc fcQListView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_focusInEvent".}
proc fQListView_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_focusOutEvent".}
proc fcQListView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_focusOutEvent".}
proc fQListView_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_keyPressEvent".}
proc fcQListView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_keyPressEvent".}
proc fQListView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_inputMethodEvent".}
proc fcQListView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_inputMethodEvent".}
proc fQListView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QListView_virtualbase_eventFilter".}
proc fcQListView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QListView_override_virtual_eventFilter".}
proc fQListView_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QListView_virtualbase_minimumSizeHint".}
proc fcQListView_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QListView_override_virtual_minimumSizeHint".}
proc fQListView_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QListView_virtualbase_sizeHint".}
proc fcQListView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QListView_override_virtual_sizeHint".}
proc fQListView_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QListView_virtualbase_setupViewport".}
proc fcQListView_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QListView_override_virtual_setupViewport".}
proc fQListView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QListView_virtualbase_contextMenuEvent".}
proc fcQListView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_contextMenuEvent".}
proc fQListView_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QListView_virtualbase_changeEvent".}
proc fcQListView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_changeEvent".}
proc fQListView_virtualbase_devType(self: pointer, ): cint{.importc: "QListView_virtualbase_devType".}
proc fcQListView_override_virtual_devType(self: pointer, slot: int) {.importc: "QListView_override_virtual_devType".}
proc fQListView_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QListView_virtualbase_setVisible".}
proc fcQListView_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QListView_override_virtual_setVisible".}
proc fQListView_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QListView_virtualbase_heightForWidth".}
proc fcQListView_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QListView_override_virtual_heightForWidth".}
proc fQListView_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QListView_virtualbase_hasHeightForWidth".}
proc fcQListView_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QListView_override_virtual_hasHeightForWidth".}
proc fQListView_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QListView_virtualbase_paintEngine".}
proc fcQListView_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QListView_override_virtual_paintEngine".}
proc fQListView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_keyReleaseEvent".}
proc fcQListView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_keyReleaseEvent".}
proc fQListView_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_enterEvent".}
proc fcQListView_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_enterEvent".}
proc fQListView_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_leaveEvent".}
proc fcQListView_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_leaveEvent".}
proc fQListView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_moveEvent".}
proc fcQListView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_moveEvent".}
proc fQListView_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_closeEvent".}
proc fcQListView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_closeEvent".}
proc fQListView_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_tabletEvent".}
proc fcQListView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_tabletEvent".}
proc fQListView_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_actionEvent".}
proc fcQListView_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_actionEvent".}
proc fQListView_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_showEvent".}
proc fcQListView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_showEvent".}
proc fQListView_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_hideEvent".}
proc fcQListView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_hideEvent".}
proc fQListView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QListView_virtualbase_nativeEvent".}
proc fcQListView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_nativeEvent".}
proc fQListView_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QListView_virtualbase_metric".}
proc fcQListView_override_virtual_metric(self: pointer, slot: int) {.importc: "QListView_override_virtual_metric".}
proc fQListView_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QListView_virtualbase_initPainter".}
proc fcQListView_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QListView_override_virtual_initPainter".}
proc fQListView_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QListView_virtualbase_redirected".}
proc fcQListView_override_virtual_redirected(self: pointer, slot: int) {.importc: "QListView_override_virtual_redirected".}
proc fQListView_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QListView_virtualbase_sharedPainter".}
proc fcQListView_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QListView_override_virtual_sharedPainter".}
proc fQListView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_childEvent".}
proc fcQListView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_childEvent".}
proc fQListView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QListView_virtualbase_customEvent".}
proc fcQListView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QListView_override_virtual_customEvent".}
proc fQListView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QListView_virtualbase_connectNotify".}
proc fcQListView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QListView_override_virtual_connectNotify".}
proc fQListView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QListView_virtualbase_disconnectNotify".}
proc fcQListView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QListView_override_virtual_disconnectNotify".}
proc fcQListView_staticMetaObject(): pointer {.importc: "QListView_staticMetaObject".}
proc fcQListView_delete(self: pointer) {.importc: "QListView_delete".}


func init*(T: type QListView, h: ptr cQListView): QListView =
  T(h: h)
proc create*(T: type QListView, parent: gen_qwidget.QWidget): QListView =

  QListView.init(fcQListView_new(parent.h))
proc create*(T: type QListView, ): QListView =

  QListView.init(fcQListView_new2())
proc metaObject*(self: QListView, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQListView_metaObject(self.h))

proc metacast*(self: QListView, param1: cstring): pointer =

  fcQListView_metacast(self.h, param1)

proc metacall*(self: QListView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQListView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QListView, s: cstring): string =

  let v_ms = fcQListView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QListView, s: cstring): string =

  let v_ms = fcQListView_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setMovement*(self: QListView, movement: QListViewMovement): void =

  fcQListView_setMovement(self.h, cint(movement))

proc movement*(self: QListView, ): QListViewMovement =

  QListViewMovement(fcQListView_movement(self.h))

proc setFlow*(self: QListView, flow: QListViewFlow): void =

  fcQListView_setFlow(self.h, cint(flow))

proc flow*(self: QListView, ): QListViewFlow =

  QListViewFlow(fcQListView_flow(self.h))

proc setWrapping*(self: QListView, enable: bool): void =

  fcQListView_setWrapping(self.h, enable)

proc isWrapping*(self: QListView, ): bool =

  fcQListView_isWrapping(self.h)

proc setResizeMode*(self: QListView, mode: QListViewResizeMode): void =

  fcQListView_setResizeMode(self.h, cint(mode))

proc resizeMode*(self: QListView, ): QListViewResizeMode =

  QListViewResizeMode(fcQListView_resizeMode(self.h))

proc setLayoutMode*(self: QListView, mode: QListViewLayoutMode): void =

  fcQListView_setLayoutMode(self.h, cint(mode))

proc layoutMode*(self: QListView, ): QListViewLayoutMode =

  QListViewLayoutMode(fcQListView_layoutMode(self.h))

proc setSpacing*(self: QListView, space: cint): void =

  fcQListView_setSpacing(self.h, space)

proc spacing*(self: QListView, ): cint =

  fcQListView_spacing(self.h)

proc setBatchSize*(self: QListView, batchSize: cint): void =

  fcQListView_setBatchSize(self.h, batchSize)

proc batchSize*(self: QListView, ): cint =

  fcQListView_batchSize(self.h)

proc setGridSize*(self: QListView, size: gen_qsize.QSize): void =

  fcQListView_setGridSize(self.h, size.h)

proc gridSize*(self: QListView, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQListView_gridSize(self.h))

proc setViewMode*(self: QListView, mode: QListViewViewMode): void =

  fcQListView_setViewMode(self.h, cint(mode))

proc viewMode*(self: QListView, ): QListViewViewMode =

  QListViewViewMode(fcQListView_viewMode(self.h))

proc clearPropertyFlags*(self: QListView, ): void =

  fcQListView_clearPropertyFlags(self.h)

proc isRowHidden*(self: QListView, row: cint): bool =

  fcQListView_isRowHidden(self.h, row)

proc setRowHidden*(self: QListView, row: cint, hide: bool): void =

  fcQListView_setRowHidden(self.h, row, hide)

proc setModelColumn*(self: QListView, column: cint): void =

  fcQListView_setModelColumn(self.h, column)

proc modelColumn*(self: QListView, ): cint =

  fcQListView_modelColumn(self.h)

proc setUniformItemSizes*(self: QListView, enable: bool): void =

  fcQListView_setUniformItemSizes(self.h, enable)

proc uniformItemSizes*(self: QListView, ): bool =

  fcQListView_uniformItemSizes(self.h)

proc setWordWrap*(self: QListView, on: bool): void =

  fcQListView_setWordWrap(self.h, on)

proc wordWrap*(self: QListView, ): bool =

  fcQListView_wordWrap(self.h)

proc setSelectionRectVisible*(self: QListView, show: bool): void =

  fcQListView_setSelectionRectVisible(self.h, show)

proc isSelectionRectVisible*(self: QListView, ): bool =

  fcQListView_isSelectionRectVisible(self.h)

proc setItemAlignment*(self: QListView, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQListView_setItemAlignment(self.h, cint(alignment))

proc itemAlignment*(self: QListView, ): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQListView_itemAlignment(self.h))

proc visualRect*(self: QListView, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQListView_visualRect(self.h, index.h))

proc scrollTo*(self: QListView, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void =

  fcQListView_scrollTo(self.h, index.h, cint(hint))

proc indexAt*(self: QListView, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQListView_indexAt(self.h, p.h))

proc doItemsLayout*(self: QListView, ): void =

  fcQListView_doItemsLayout(self.h)

proc reset*(self: QListView, ): void =

  fcQListView_reset(self.h)

proc setRootIndex*(self: QListView, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQListView_setRootIndex(self.h, index.h)

proc indexesMoved*(self: QListView, indexes: seq[gen_qabstractitemmodel.QModelIndex]): void =

  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  fcQListView_indexesMoved(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0])))

proc miqt_exec_callback_QListView_indexesMoved(slot: int, indexes: struct_miqt_array) {.exportc.} =
  type Cb = proc(indexes: seq[gen_qabstractitemmodel.QModelIndex])
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  nimfunc[](slotval1)

proc onindexesMoved*(self: QListView, slot: proc(indexes: seq[gen_qabstractitemmodel.QModelIndex])) =
  type Cb = proc(indexes: seq[gen_qabstractitemmodel.QModelIndex])
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQListView_connect_indexesMoved(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QListView, s: cstring, c: cstring): string =

  let v_ms = fcQListView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QListView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQListView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QListView, s: cstring, c: cstring): string =

  let v_ms = fcQListView_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QListView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQListView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QListView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQListView_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QListViewmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QListView, slot: proc(super: QListViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QListViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_metacall(self: ptr cQListView, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QListView_metacall ".} =
  type Cb = proc(super: QListViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QListView(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_visualRect(self: QListView, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect =


  gen_qrect.QRect(h: fQListView_virtualbase_visualRect(self.h, index.h))

type QListViewvisualRectBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
proc onvisualRect*(self: QListView, slot: proc(super: QListViewvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QListViewvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_visualRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_visualRect(self: ptr cQListView, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QListView_visualRect ".} =
  type Cb = proc(super: QListViewvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_visualRect(QListView(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_scrollTo(self: QListView, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void =


  fQListView_virtualbase_scrollTo(self.h, index.h, cint(hint))

type QListViewscrollToBase* = proc(index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
proc onscrollTo*(self: QListView, slot: proc(super: QListViewscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_scrollTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_scrollTo(self: ptr cQListView, slot: int, index: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QListView_scrollTo ".} =
  type Cb = proc(super: QListViewscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): auto =
    callVirtualBase_scrollTo(QListView(h: self), index, hint)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemview.QAbstractItemViewScrollHint(hint)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_indexAt(self: QListView, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQListView_virtualbase_indexAt(self.h, p.h))

type QListViewindexAtBase* = proc(p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
proc onindexAt*(self: QListView, slot: proc(super: QListViewindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QListViewindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_indexAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_indexAt(self: ptr cQListView, slot: int, p: pointer): pointer {.exportc: "miqt_exec_callback_QListView_indexAt ".} =
  type Cb = proc(super: QListViewindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(p: gen_qpoint.QPoint): auto =
    callVirtualBase_indexAt(QListView(h: self), p)
  let slotval1 = gen_qpoint.QPoint(h: p)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_doItemsLayout(self: QListView, ): void =


  fQListView_virtualbase_doItemsLayout(self.h)

type QListViewdoItemsLayoutBase* = proc(): void
proc ondoItemsLayout*(self: QListView, slot: proc(super: QListViewdoItemsLayoutBase): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewdoItemsLayoutBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_doItemsLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_doItemsLayout(self: ptr cQListView, slot: int): void {.exportc: "miqt_exec_callback_QListView_doItemsLayout ".} =
  type Cb = proc(super: QListViewdoItemsLayoutBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_doItemsLayout(QListView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_reset(self: QListView, ): void =


  fQListView_virtualbase_reset(self.h)

type QListViewresetBase* = proc(): void
proc onreset*(self: QListView, slot: proc(super: QListViewresetBase): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewresetBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_reset(self: ptr cQListView, slot: int): void {.exportc: "miqt_exec_callback_QListView_reset ".} =
  type Cb = proc(super: QListViewresetBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QListView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_setRootIndex(self: QListView, index: gen_qabstractitemmodel.QModelIndex): void =


  fQListView_virtualbase_setRootIndex(self.h, index.h)

type QListViewsetRootIndexBase* = proc(index: gen_qabstractitemmodel.QModelIndex): void
proc onsetRootIndex*(self: QListView, slot: proc(super: QListViewsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_setRootIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_setRootIndex(self: ptr cQListView, slot: int, index: pointer): void {.exportc: "miqt_exec_callback_QListView_setRootIndex ".} =
  type Cb = proc(super: QListViewsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_setRootIndex(QListView(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QListView, e: gen_qcoreevent.QEvent): bool =


  fQListView_virtualbase_event(self.h, e.h)

type QListVieweventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QListView, slot: proc(super: QListVieweventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QListVieweventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_event(self: ptr cQListView, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QListView_event ".} =
  type Cb = proc(super: QListVieweventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QListView(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_scrollContentsBy(self: QListView, dx: cint, dy: cint): void =


  fQListView_virtualbase_scrollContentsBy(self.h, dx, dy)

type QListViewscrollContentsByBase* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: QListView, slot: proc(super: QListViewscrollContentsByBase, dx: cint, dy: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewscrollContentsByBase, dx: cint, dy: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_scrollContentsBy(self: ptr cQListView, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QListView_scrollContentsBy ".} =
  type Cb = proc(super: QListViewscrollContentsByBase, dx: cint, dy: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(dx: cint, dy: cint): auto =
    callVirtualBase_scrollContentsBy(QListView(h: self), dx, dy)
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_dataChanged(self: QListView, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void =

  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]


  fQListView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

type QListViewdataChangedBase* = proc(topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
proc ondataChanged*(self: QListView, slot: proc(super: QListViewdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_dataChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_dataChanged(self: ptr cQListView, slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.exportc: "miqt_exec_callback_QListView_dataChanged ".} =
  type Cb = proc(super: QListViewdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): auto =
    callVirtualBase_dataChanged(QListView(h: self), topLeft, bottomRight, roles)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_rowsInserted(self: QListView, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void =


  fQListView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

type QListViewrowsInsertedBase* = proc(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
proc onrowsInserted*(self: QListView, slot: proc(super: QListViewrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_rowsInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_rowsInserted(self: ptr cQListView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QListView_rowsInserted ".} =
  type Cb = proc(super: QListViewrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): auto =
    callVirtualBase_rowsInserted(QListView(h: self), parent, start, endVal)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_rowsAboutToBeRemoved(self: QListView, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void =


  fQListView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

type QListViewrowsAboutToBeRemovedBase* = proc(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
proc onrowsAboutToBeRemoved*(self: QListView, slot: proc(super: QListViewrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_rowsAboutToBeRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_rowsAboutToBeRemoved(self: ptr cQListView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QListView_rowsAboutToBeRemoved ".} =
  type Cb = proc(super: QListViewrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): auto =
    callVirtualBase_rowsAboutToBeRemoved(QListView(h: self), parent, start, endVal)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_mouseMoveEvent(self: QListView, e: gen_qevent.QMouseEvent): void =


  fQListView_virtualbase_mouseMoveEvent(self.h, e.h)

type QListViewmouseMoveEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QListView, slot: proc(super: QListViewmouseMoveEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewmouseMoveEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_mouseMoveEvent(self: ptr cQListView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListView_mouseMoveEvent ".} =
  type Cb = proc(super: QListViewmouseMoveEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QListView(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QListView, e: gen_qevent.QMouseEvent): void =


  fQListView_virtualbase_mouseReleaseEvent(self.h, e.h)

type QListViewmouseReleaseEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QListView, slot: proc(super: QListViewmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_mouseReleaseEvent(self: ptr cQListView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListView_mouseReleaseEvent ".} =
  type Cb = proc(super: QListViewmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QListView(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QListView, e: gen_qevent.QWheelEvent): void =


  fQListView_virtualbase_wheelEvent(self.h, e.h)

type QListViewwheelEventBase* = proc(e: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QListView, slot: proc(super: QListViewwheelEventBase, e: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewwheelEventBase, e: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_wheelEvent(self: ptr cQListView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListView_wheelEvent ".} =
  type Cb = proc(super: QListViewwheelEventBase, e: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QListView(h: self), e)
  let slotval1 = gen_qevent.QWheelEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QListView, e: gen_qcoreevent.QTimerEvent): void =


  fQListView_virtualbase_timerEvent(self.h, e.h)

type QListViewtimerEventBase* = proc(e: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QListView, slot: proc(super: QListViewtimerEventBase, e: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewtimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_timerEvent(self: ptr cQListView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListView_timerEvent ".} =
  type Cb = proc(super: QListViewtimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QListView(h: self), e)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QListView, e: gen_qevent.QResizeEvent): void =


  fQListView_virtualbase_resizeEvent(self.h, e.h)

type QListViewresizeEventBase* = proc(e: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QListView, slot: proc(super: QListViewresizeEventBase, e: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewresizeEventBase, e: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_resizeEvent(self: ptr cQListView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListView_resizeEvent ".} =
  type Cb = proc(super: QListViewresizeEventBase, e: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QListView(h: self), e)
  let slotval1 = gen_qevent.QResizeEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QListView, e: gen_qevent.QDragMoveEvent): void =


  fQListView_virtualbase_dragMoveEvent(self.h, e.h)

type QListViewdragMoveEventBase* = proc(e: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QListView, slot: proc(super: QListViewdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_dragMoveEvent(self: ptr cQListView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListView_dragMoveEvent ".} =
  type Cb = proc(super: QListViewdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QListView(h: self), e)
  let slotval1 = gen_qevent.QDragMoveEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QListView, e: gen_qevent.QDragLeaveEvent): void =


  fQListView_virtualbase_dragLeaveEvent(self.h, e.h)

type QListViewdragLeaveEventBase* = proc(e: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QListView, slot: proc(super: QListViewdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_dragLeaveEvent(self: ptr cQListView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListView_dragLeaveEvent ".} =
  type Cb = proc(super: QListViewdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QListView(h: self), e)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QListView, e: gen_qevent.QDropEvent): void =


  fQListView_virtualbase_dropEvent(self.h, e.h)

type QListViewdropEventBase* = proc(e: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QListView, slot: proc(super: QListViewdropEventBase, e: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewdropEventBase, e: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_dropEvent(self: ptr cQListView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListView_dropEvent ".} =
  type Cb = proc(super: QListViewdropEventBase, e: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QListView(h: self), e)
  let slotval1 = gen_qevent.QDropEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_startDrag(self: QListView, supportedActions: gen_qnamespace.DropAction): void =


  fQListView_virtualbase_startDrag(self.h, cint(supportedActions))

type QListViewstartDragBase* = proc(supportedActions: gen_qnamespace.DropAction): void
proc onstartDrag*(self: QListView, slot: proc(super: QListViewstartDragBase, supportedActions: gen_qnamespace.DropAction): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewstartDragBase, supportedActions: gen_qnamespace.DropAction): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_startDrag(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_startDrag(self: ptr cQListView, slot: int, supportedActions: cint): void {.exportc: "miqt_exec_callback_QListView_startDrag ".} =
  type Cb = proc(super: QListViewstartDragBase, supportedActions: gen_qnamespace.DropAction): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(supportedActions: gen_qnamespace.DropAction): auto =
    callVirtualBase_startDrag(QListView(h: self), supportedActions)
  let slotval1 = gen_qnamespace.DropAction(supportedActions)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_viewOptions(self: QListView, ): gen_qstyleoption.QStyleOptionViewItem =


  gen_qstyleoption.QStyleOptionViewItem(h: fQListView_virtualbase_viewOptions(self.h))

type QListViewviewOptionsBase* = proc(): gen_qstyleoption.QStyleOptionViewItem
proc onviewOptions*(self: QListView, slot: proc(super: QListViewviewOptionsBase): gen_qstyleoption.QStyleOptionViewItem) =
  # TODO check subclass
  type Cb = proc(super: QListViewviewOptionsBase): gen_qstyleoption.QStyleOptionViewItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_viewOptions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_viewOptions(self: ptr cQListView, slot: int): pointer {.exportc: "miqt_exec_callback_QListView_viewOptions ".} =
  type Cb = proc(super: QListViewviewOptionsBase): gen_qstyleoption.QStyleOptionViewItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewOptions(QListView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_paintEvent(self: QListView, e: gen_qevent.QPaintEvent): void =


  fQListView_virtualbase_paintEvent(self.h, e.h)

type QListViewpaintEventBase* = proc(e: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QListView, slot: proc(super: QListViewpaintEventBase, e: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewpaintEventBase, e: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_paintEvent(self: ptr cQListView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListView_paintEvent ".} =
  type Cb = proc(super: QListViewpaintEventBase, e: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QListView(h: self), e)
  let slotval1 = gen_qevent.QPaintEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalOffset(self: QListView, ): cint =


  fQListView_virtualbase_horizontalOffset(self.h)

type QListViewhorizontalOffsetBase* = proc(): cint
proc onhorizontalOffset*(self: QListView, slot: proc(super: QListViewhorizontalOffsetBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QListViewhorizontalOffsetBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_horizontalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_horizontalOffset(self: ptr cQListView, slot: int): cint {.exportc: "miqt_exec_callback_QListView_horizontalOffset ".} =
  type Cb = proc(super: QListViewhorizontalOffsetBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_horizontalOffset(QListView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_verticalOffset(self: QListView, ): cint =


  fQListView_virtualbase_verticalOffset(self.h)

type QListViewverticalOffsetBase* = proc(): cint
proc onverticalOffset*(self: QListView, slot: proc(super: QListViewverticalOffsetBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QListViewverticalOffsetBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_verticalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_verticalOffset(self: ptr cQListView, slot: int): cint {.exportc: "miqt_exec_callback_QListView_verticalOffset ".} =
  type Cb = proc(super: QListViewverticalOffsetBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_verticalOffset(QListView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_moveCursor(self: QListView, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQListView_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

type QListViewmoveCursorBase* = proc(cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
proc onmoveCursor*(self: QListView, slot: proc(super: QListViewmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QListViewmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_moveCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_moveCursor(self: ptr cQListView, slot: int, cursorAction: cint, modifiers: cint): pointer {.exportc: "miqt_exec_callback_QListView_moveCursor ".} =
  type Cb = proc(super: QListViewmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): auto =
    callVirtualBase_moveCursor(QListView(h: self), cursorAction, modifiers)
  let slotval1 = gen_qabstractitemview.QAbstractItemViewCursorAction(cursorAction)

  let slotval2 = gen_qnamespace.KeyboardModifier(modifiers)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_setSelection(self: QListView, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void =


  fQListView_virtualbase_setSelection(self.h, rect.h, cint(command))

type QListViewsetSelectionBase* = proc(rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
proc onsetSelection*(self: QListView, slot: proc(super: QListViewsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_setSelection(self: ptr cQListView, slot: int, rect: pointer, command: cint): void {.exportc: "miqt_exec_callback_QListView_setSelection ".} =
  type Cb = proc(super: QListViewsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): auto =
    callVirtualBase_setSelection(QListView(h: self), rect, command)
  let slotval1 = gen_qrect.QRect(h: rect)

  let slotval2 = gen_qitemselectionmodel.QItemSelectionModelSelectionFlag(command)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_visualRegionForSelection(self: QListView, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion =


  gen_qregion.QRegion(h: fQListView_virtualbase_visualRegionForSelection(self.h, selection.h))

type QListViewvisualRegionForSelectionBase* = proc(selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
proc onvisualRegionForSelection*(self: QListView, slot: proc(super: QListViewvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion) =
  # TODO check subclass
  type Cb = proc(super: QListViewvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_visualRegionForSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_visualRegionForSelection(self: ptr cQListView, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QListView_visualRegionForSelection ".} =
  type Cb = proc(super: QListViewvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selection: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_visualRegionForSelection(QListView(h: self), selection)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_selectedIndexes(self: QListView, ): seq[gen_qabstractitemmodel.QModelIndex] =


  var v_ma = fQListView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

type QListViewselectedIndexesBase* = proc(): seq[gen_qabstractitemmodel.QModelIndex]
proc onselectedIndexes*(self: QListView, slot: proc(super: QListViewselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QListViewselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_selectedIndexes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_selectedIndexes(self: ptr cQListView, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QListView_selectedIndexes ".} =
  type Cb = proc(super: QListViewselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_selectedIndexes(QListView(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_updateGeometries(self: QListView, ): void =


  fQListView_virtualbase_updateGeometries(self.h)

type QListViewupdateGeometriesBase* = proc(): void
proc onupdateGeometries*(self: QListView, slot: proc(super: QListViewupdateGeometriesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewupdateGeometriesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_updateGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_updateGeometries(self: ptr cQListView, slot: int): void {.exportc: "miqt_exec_callback_QListView_updateGeometries ".} =
  type Cb = proc(super: QListViewupdateGeometriesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateGeometries(QListView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_isIndexHidden(self: QListView, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQListView_virtualbase_isIndexHidden(self.h, index.h)

type QListViewisIndexHiddenBase* = proc(index: gen_qabstractitemmodel.QModelIndex): bool
proc onisIndexHidden*(self: QListView, slot: proc(super: QListViewisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QListViewisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_isIndexHidden(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_isIndexHidden(self: ptr cQListView, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QListView_isIndexHidden ".} =
  type Cb = proc(super: QListViewisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_isIndexHidden(QListView(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_selectionChanged(self: QListView, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void =


  fQListView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

type QListViewselectionChangedBase* = proc(selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
proc onselectionChanged*(self: QListView, slot: proc(super: QListViewselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_selectionChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_selectionChanged(self: ptr cQListView, slot: int, selected: pointer, deselected: pointer): void {.exportc: "miqt_exec_callback_QListView_selectionChanged ".} =
  type Cb = proc(super: QListViewselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_selectionChanged(QListView(h: self), selected, deselected)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel.QItemSelection(h: deselected)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_currentChanged(self: QListView, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void =


  fQListView_virtualbase_currentChanged(self.h, current.h, previous.h)

type QListViewcurrentChangedBase* = proc(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
proc oncurrentChanged*(self: QListView, slot: proc(super: QListViewcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_currentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_currentChanged(self: ptr cQListView, slot: int, current: pointer, previous: pointer): void {.exportc: "miqt_exec_callback_QListView_currentChanged ".} =
  type Cb = proc(super: QListViewcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_currentChanged(QListView(h: self), current, previous)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: previous)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_viewportSizeHint(self: QListView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQListView_virtualbase_viewportSizeHint(self.h))

type QListViewviewportSizeHintBase* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: QListView, slot: proc(super: QListViewviewportSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QListViewviewportSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_viewportSizeHint(self: ptr cQListView, slot: int): pointer {.exportc: "miqt_exec_callback_QListView_viewportSizeHint ".} =
  type Cb = proc(super: QListViewviewportSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewportSizeHint(QListView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setModel(self: QListView, model: gen_qabstractitemmodel.QAbstractItemModel): void =


  fQListView_virtualbase_setModel(self.h, model.h)

type QListViewsetModelBase* = proc(model: gen_qabstractitemmodel.QAbstractItemModel): void
proc onsetModel*(self: QListView, slot: proc(super: QListViewsetModelBase, model: gen_qabstractitemmodel.QAbstractItemModel): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewsetModelBase, model: gen_qabstractitemmodel.QAbstractItemModel): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_setModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_setModel(self: ptr cQListView, slot: int, model: pointer): void {.exportc: "miqt_exec_callback_QListView_setModel ".} =
  type Cb = proc(super: QListViewsetModelBase, model: gen_qabstractitemmodel.QAbstractItemModel): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(model: gen_qabstractitemmodel.QAbstractItemModel): auto =
    callVirtualBase_setModel(QListView(h: self), model)
  let slotval1 = gen_qabstractitemmodel.QAbstractItemModel(h: model)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setSelectionModel(self: QListView, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void =


  fQListView_virtualbase_setSelectionModel(self.h, selectionModel.h)

type QListViewsetSelectionModelBase* = proc(selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
proc onsetSelectionModel*(self: QListView, slot: proc(super: QListViewsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_setSelectionModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_setSelectionModel(self: ptr cQListView, slot: int, selectionModel: pointer): void {.exportc: "miqt_exec_callback_QListView_setSelectionModel ".} =
  type Cb = proc(super: QListViewsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selectionModel: gen_qitemselectionmodel.QItemSelectionModel): auto =
    callVirtualBase_setSelectionModel(QListView(h: self), selectionModel)
  let slotval1 = gen_qitemselectionmodel.QItemSelectionModel(h: selectionModel)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyboardSearch(self: QListView, search: string): void =


  fQListView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

type QListViewkeyboardSearchBase* = proc(search: string): void
proc onkeyboardSearch*(self: QListView, slot: proc(super: QListViewkeyboardSearchBase, search: string): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewkeyboardSearchBase, search: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_keyboardSearch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_keyboardSearch(self: ptr cQListView, slot: int, search: struct_miqt_string): void {.exportc: "miqt_exec_callback_QListView_keyboardSearch ".} =
  type Cb = proc(super: QListViewkeyboardSearchBase, search: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(search: string): auto =
    callVirtualBase_keyboardSearch(QListView(h: self), search)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHintForRow(self: QListView, row: cint): cint =


  fQListView_virtualbase_sizeHintForRow(self.h, row)

type QListViewsizeHintForRowBase* = proc(row: cint): cint
proc onsizeHintForRow*(self: QListView, slot: proc(super: QListViewsizeHintForRowBase, row: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QListViewsizeHintForRowBase, row: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_sizeHintForRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_sizeHintForRow(self: ptr cQListView, slot: int, row: cint): cint {.exportc: "miqt_exec_callback_QListView_sizeHintForRow ".} =
  type Cb = proc(super: QListViewsizeHintForRowBase, row: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint): auto =
    callVirtualBase_sizeHintForRow(QListView(h: self), row)
  let slotval1 = row


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_sizeHintForColumn(self: QListView, column: cint): cint =


  fQListView_virtualbase_sizeHintForColumn(self.h, column)

type QListViewsizeHintForColumnBase* = proc(column: cint): cint
proc onsizeHintForColumn*(self: QListView, slot: proc(super: QListViewsizeHintForColumnBase, column: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QListViewsizeHintForColumnBase, column: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_sizeHintForColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_sizeHintForColumn(self: ptr cQListView, slot: int, column: cint): cint {.exportc: "miqt_exec_callback_QListView_sizeHintForColumn ".} =
  type Cb = proc(super: QListViewsizeHintForColumnBase, column: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint): auto =
    callVirtualBase_sizeHintForColumn(QListView(h: self), column)
  let slotval1 = column


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_inputMethodQuery(self: QListView, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQListView_virtualbase_inputMethodQuery(self.h, cint(query)))

type QListViewinputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QListView, slot: proc(super: QListViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QListViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_inputMethodQuery(self: ptr cQListView, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QListView_inputMethodQuery ".} =
  type Cb = proc(super: QListViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QListView(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_selectAll(self: QListView, ): void =


  fQListView_virtualbase_selectAll(self.h)

type QListViewselectAllBase* = proc(): void
proc onselectAll*(self: QListView, slot: proc(super: QListViewselectAllBase): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewselectAllBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_selectAll(self: ptr cQListView, slot: int): void {.exportc: "miqt_exec_callback_QListView_selectAll ".} =
  type Cb = proc(super: QListViewselectAllBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_selectAll(QListView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_updateEditorData(self: QListView, ): void =


  fQListView_virtualbase_updateEditorData(self.h)

type QListViewupdateEditorDataBase* = proc(): void
proc onupdateEditorData*(self: QListView, slot: proc(super: QListViewupdateEditorDataBase): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewupdateEditorDataBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_updateEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_updateEditorData(self: ptr cQListView, slot: int): void {.exportc: "miqt_exec_callback_QListView_updateEditorData ".} =
  type Cb = proc(super: QListViewupdateEditorDataBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateEditorData(QListView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_updateEditorGeometries(self: QListView, ): void =


  fQListView_virtualbase_updateEditorGeometries(self.h)

type QListViewupdateEditorGeometriesBase* = proc(): void
proc onupdateEditorGeometries*(self: QListView, slot: proc(super: QListViewupdateEditorGeometriesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewupdateEditorGeometriesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_updateEditorGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_updateEditorGeometries(self: ptr cQListView, slot: int): void {.exportc: "miqt_exec_callback_QListView_updateEditorGeometries ".} =
  type Cb = proc(super: QListViewupdateEditorGeometriesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateEditorGeometries(QListView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_verticalScrollbarAction(self: QListView, action: cint): void =


  fQListView_virtualbase_verticalScrollbarAction(self.h, action)

type QListViewverticalScrollbarActionBase* = proc(action: cint): void
proc onverticalScrollbarAction*(self: QListView, slot: proc(super: QListViewverticalScrollbarActionBase, action: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewverticalScrollbarActionBase, action: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_verticalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_verticalScrollbarAction(self: ptr cQListView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QListView_verticalScrollbarAction ".} =
  type Cb = proc(super: QListViewverticalScrollbarActionBase, action: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(action: cint): auto =
    callVirtualBase_verticalScrollbarAction(QListView(h: self), action)
  let slotval1 = action


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalScrollbarAction(self: QListView, action: cint): void =


  fQListView_virtualbase_horizontalScrollbarAction(self.h, action)

type QListViewhorizontalScrollbarActionBase* = proc(action: cint): void
proc onhorizontalScrollbarAction*(self: QListView, slot: proc(super: QListViewhorizontalScrollbarActionBase, action: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewhorizontalScrollbarActionBase, action: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_horizontalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_horizontalScrollbarAction(self: ptr cQListView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QListView_horizontalScrollbarAction ".} =
  type Cb = proc(super: QListViewhorizontalScrollbarActionBase, action: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(action: cint): auto =
    callVirtualBase_horizontalScrollbarAction(QListView(h: self), action)
  let slotval1 = action


  nimfunc[](superCall, slotval1)
proc callVirtualBase_verticalScrollbarValueChanged(self: QListView, value: cint): void =


  fQListView_virtualbase_verticalScrollbarValueChanged(self.h, value)

type QListViewverticalScrollbarValueChangedBase* = proc(value: cint): void
proc onverticalScrollbarValueChanged*(self: QListView, slot: proc(super: QListViewverticalScrollbarValueChangedBase, value: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewverticalScrollbarValueChangedBase, value: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_verticalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_verticalScrollbarValueChanged(self: ptr cQListView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QListView_verticalScrollbarValueChanged ".} =
  type Cb = proc(super: QListViewverticalScrollbarValueChangedBase, value: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: cint): auto =
    callVirtualBase_verticalScrollbarValueChanged(QListView(h: self), value)
  let slotval1 = value


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalScrollbarValueChanged(self: QListView, value: cint): void =


  fQListView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

type QListViewhorizontalScrollbarValueChangedBase* = proc(value: cint): void
proc onhorizontalScrollbarValueChanged*(self: QListView, slot: proc(super: QListViewhorizontalScrollbarValueChangedBase, value: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewhorizontalScrollbarValueChangedBase, value: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_horizontalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_horizontalScrollbarValueChanged(self: ptr cQListView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QListView_horizontalScrollbarValueChanged ".} =
  type Cb = proc(super: QListViewhorizontalScrollbarValueChangedBase, value: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: cint): auto =
    callVirtualBase_horizontalScrollbarValueChanged(QListView(h: self), value)
  let slotval1 = value


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEditor(self: QListView, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void =


  fQListView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

type QListViewcloseEditorBase* = proc(editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
proc oncloseEditor*(self: QListView, slot: proc(super: QListViewcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_closeEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_closeEditor(self: ptr cQListView, slot: int, editor: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QListView_closeEditor ".} =
  type Cb = proc(super: QListViewcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): auto =
    callVirtualBase_closeEditor(QListView(h: self), editor, hint)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint(hint)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_commitData(self: QListView, editor: gen_qwidget.QWidget): void =


  fQListView_virtualbase_commitData(self.h, editor.h)

type QListViewcommitDataBase* = proc(editor: gen_qwidget.QWidget): void
proc oncommitData*(self: QListView, slot: proc(super: QListViewcommitDataBase, editor: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewcommitDataBase, editor: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_commitData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_commitData(self: ptr cQListView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QListView_commitData ".} =
  type Cb = proc(super: QListViewcommitDataBase, editor: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget): auto =
    callVirtualBase_commitData(QListView(h: self), editor)
  let slotval1 = gen_qwidget.QWidget(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_editorDestroyed(self: QListView, editor: gen_qobject.QObject): void =


  fQListView_virtualbase_editorDestroyed(self.h, editor.h)

type QListVieweditorDestroyedBase* = proc(editor: gen_qobject.QObject): void
proc oneditorDestroyed*(self: QListView, slot: proc(super: QListVieweditorDestroyedBase, editor: gen_qobject.QObject): void) =
  # TODO check subclass
  type Cb = proc(super: QListVieweditorDestroyedBase, editor: gen_qobject.QObject): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_editorDestroyed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_editorDestroyed(self: ptr cQListView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QListView_editorDestroyed ".} =
  type Cb = proc(super: QListVieweditorDestroyedBase, editor: gen_qobject.QObject): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qobject.QObject): auto =
    callVirtualBase_editorDestroyed(QListView(h: self), editor)
  let slotval1 = gen_qobject.QObject(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_edit2(self: QListView, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool =


  fQListView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

type QListViewedit2Base* = proc(index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
proc onedit2*(self: QListView, slot: proc(super: QListViewedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QListViewedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_edit2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_edit2(self: ptr cQListView, slot: int, index: pointer, trigger: cint, event: pointer): bool {.exportc: "miqt_exec_callback_QListView_edit2 ".} =
  type Cb = proc(super: QListViewedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_edit2(QListView(h: self), index, trigger, event)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemview.QAbstractItemViewEditTrigger(trigger)

  let slotval3 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_selectionCommand(self: QListView, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag =


  gen_qitemselectionmodel.QItemSelectionModelSelectionFlag(fQListView_virtualbase_selectionCommand(self.h, index.h, event.h))

type QListViewselectionCommandBase* = proc(index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
proc onselectionCommand*(self: QListView, slot: proc(super: QListViewselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag) =
  # TODO check subclass
  type Cb = proc(super: QListViewselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_selectionCommand(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_selectionCommand(self: ptr cQListView, slot: int, index: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QListView_selectionCommand ".} =
  type Cb = proc(super: QListViewselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_selectionCommand(QListView(h: self), index, event)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  cint(virtualReturn)
proc callVirtualBase_focusNextPrevChild(self: QListView, next: bool): bool =


  fQListView_virtualbase_focusNextPrevChild(self.h, next)

type QListViewfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QListView, slot: proc(super: QListViewfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QListViewfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_focusNextPrevChild(self: ptr cQListView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QListView_focusNextPrevChild ".} =
  type Cb = proc(super: QListViewfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QListView(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_viewportEvent(self: QListView, event: gen_qcoreevent.QEvent): bool =


  fQListView_virtualbase_viewportEvent(self.h, event.h)

type QListViewviewportEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: QListView, slot: proc(super: QListViewviewportEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QListViewviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_viewportEvent(self: ptr cQListView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QListView_viewportEvent ".} =
  type Cb = proc(super: QListViewviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_viewportEvent(QListView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QListView, event: gen_qevent.QMouseEvent): void =


  fQListView_virtualbase_mousePressEvent(self.h, event.h)

type QListViewmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QListView, slot: proc(super: QListViewmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_mousePressEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_mousePressEvent ".} =
  type Cb = proc(super: QListViewmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QListView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QListView, event: gen_qevent.QMouseEvent): void =


  fQListView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QListViewmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QListView, slot: proc(super: QListViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_mouseDoubleClickEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QListViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QListView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QListView, event: gen_qevent.QDragEnterEvent): void =


  fQListView_virtualbase_dragEnterEvent(self.h, event.h)

type QListViewdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QListView, slot: proc(super: QListViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_dragEnterEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_dragEnterEvent ".} =
  type Cb = proc(super: QListViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QListView(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QListView, event: gen_qevent.QFocusEvent): void =


  fQListView_virtualbase_focusInEvent(self.h, event.h)

type QListViewfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QListView, slot: proc(super: QListViewfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_focusInEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_focusInEvent ".} =
  type Cb = proc(super: QListViewfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QListView(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QListView, event: gen_qevent.QFocusEvent): void =


  fQListView_virtualbase_focusOutEvent(self.h, event.h)

type QListViewfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QListView, slot: proc(super: QListViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_focusOutEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_focusOutEvent ".} =
  type Cb = proc(super: QListViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QListView(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QListView, event: gen_qevent.QKeyEvent): void =


  fQListView_virtualbase_keyPressEvent(self.h, event.h)

type QListViewkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QListView, slot: proc(super: QListViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_keyPressEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_keyPressEvent ".} =
  type Cb = proc(super: QListViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QListView(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QListView, event: gen_qevent.QInputMethodEvent): void =


  fQListView_virtualbase_inputMethodEvent(self.h, event.h)

type QListViewinputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QListView, slot: proc(super: QListViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_inputMethodEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_inputMethodEvent ".} =
  type Cb = proc(super: QListViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QListView(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QListView, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQListView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QListVieweventFilterBase* = proc(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QListView, slot: proc(super: QListVieweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QListVieweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_eventFilter(self: ptr cQListView, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QListView_eventFilter ".} =
  type Cb = proc(super: QListVieweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QListView(h: self), objectVal, event)
  let slotval1 = gen_qobject.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_minimumSizeHint(self: QListView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQListView_virtualbase_minimumSizeHint(self.h))

type QListViewminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QListView, slot: proc(super: QListViewminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QListViewminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_minimumSizeHint(self: ptr cQListView, slot: int): pointer {.exportc: "miqt_exec_callback_QListView_minimumSizeHint ".} =
  type Cb = proc(super: QListViewminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QListView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHint(self: QListView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQListView_virtualbase_sizeHint(self.h))

type QListViewsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QListView, slot: proc(super: QListViewsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QListViewsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_sizeHint(self: ptr cQListView, slot: int): pointer {.exportc: "miqt_exec_callback_QListView_sizeHint ".} =
  type Cb = proc(super: QListViewsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QListView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setupViewport(self: QListView, viewport: gen_qwidget.QWidget): void =


  fQListView_virtualbase_setupViewport(self.h, viewport.h)

type QListViewsetupViewportBase* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: QListView, slot: proc(super: QListViewsetupViewportBase, viewport: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_setupViewport(self: ptr cQListView, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QListView_setupViewport ".} =
  type Cb = proc(super: QListViewsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(viewport: gen_qwidget.QWidget): auto =
    callVirtualBase_setupViewport(QListView(h: self), viewport)
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QListView, param1: gen_qevent.QContextMenuEvent): void =


  fQListView_virtualbase_contextMenuEvent(self.h, param1.h)

type QListViewcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QListView, slot: proc(super: QListViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_contextMenuEvent(self: ptr cQListView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QListView_contextMenuEvent ".} =
  type Cb = proc(super: QListViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QListView(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QListView, param1: gen_qcoreevent.QEvent): void =


  fQListView_virtualbase_changeEvent(self.h, param1.h)

type QListViewchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QListView, slot: proc(super: QListViewchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_changeEvent(self: ptr cQListView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QListView_changeEvent ".} =
  type Cb = proc(super: QListViewchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QListView(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QListView, ): cint =


  fQListView_virtualbase_devType(self.h)

type QListViewdevTypeBase* = proc(): cint
proc ondevType*(self: QListView, slot: proc(super: QListViewdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QListViewdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_devType(self: ptr cQListView, slot: int): cint {.exportc: "miqt_exec_callback_QListView_devType ".} =
  type Cb = proc(super: QListViewdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QListView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QListView, visible: bool): void =


  fQListView_virtualbase_setVisible(self.h, visible)

type QListViewsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QListView, slot: proc(super: QListViewsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_setVisible(self: ptr cQListView, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QListView_setVisible ".} =
  type Cb = proc(super: QListViewsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QListView(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QListView, param1: cint): cint =


  fQListView_virtualbase_heightForWidth(self.h, param1)

type QListViewheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QListView, slot: proc(super: QListViewheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QListViewheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_heightForWidth(self: ptr cQListView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QListView_heightForWidth ".} =
  type Cb = proc(super: QListViewheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QListView(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QListView, ): bool =


  fQListView_virtualbase_hasHeightForWidth(self.h)

type QListViewhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QListView, slot: proc(super: QListViewhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QListViewhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_hasHeightForWidth(self: ptr cQListView, slot: int): bool {.exportc: "miqt_exec_callback_QListView_hasHeightForWidth ".} =
  type Cb = proc(super: QListViewhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QListView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QListView, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQListView_virtualbase_paintEngine(self.h))

type QListViewpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QListView, slot: proc(super: QListViewpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QListViewpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_paintEngine(self: ptr cQListView, slot: int): pointer {.exportc: "miqt_exec_callback_QListView_paintEngine ".} =
  type Cb = proc(super: QListViewpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QListView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_keyReleaseEvent(self: QListView, event: gen_qevent.QKeyEvent): void =


  fQListView_virtualbase_keyReleaseEvent(self.h, event.h)

type QListViewkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QListView, slot: proc(super: QListViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_keyReleaseEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_keyReleaseEvent ".} =
  type Cb = proc(super: QListViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QListView(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QListView, event: gen_qcoreevent.QEvent): void =


  fQListView_virtualbase_enterEvent(self.h, event.h)

type QListViewenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QListView, slot: proc(super: QListViewenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_enterEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_enterEvent ".} =
  type Cb = proc(super: QListViewenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QListView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QListView, event: gen_qcoreevent.QEvent): void =


  fQListView_virtualbase_leaveEvent(self.h, event.h)

type QListViewleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QListView, slot: proc(super: QListViewleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_leaveEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_leaveEvent ".} =
  type Cb = proc(super: QListViewleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QListView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QListView, event: gen_qevent.QMoveEvent): void =


  fQListView_virtualbase_moveEvent(self.h, event.h)

type QListViewmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QListView, slot: proc(super: QListViewmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_moveEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_moveEvent ".} =
  type Cb = proc(super: QListViewmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QListView(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QListView, event: gen_qevent.QCloseEvent): void =


  fQListView_virtualbase_closeEvent(self.h, event.h)

type QListViewcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QListView, slot: proc(super: QListViewcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_closeEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_closeEvent ".} =
  type Cb = proc(super: QListViewcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QListView(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QListView, event: gen_qevent.QTabletEvent): void =


  fQListView_virtualbase_tabletEvent(self.h, event.h)

type QListViewtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QListView, slot: proc(super: QListViewtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_tabletEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_tabletEvent ".} =
  type Cb = proc(super: QListViewtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QListView(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QListView, event: gen_qevent.QActionEvent): void =


  fQListView_virtualbase_actionEvent(self.h, event.h)

type QListViewactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QListView, slot: proc(super: QListViewactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_actionEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_actionEvent ".} =
  type Cb = proc(super: QListViewactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QListView(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QListView, event: gen_qevent.QShowEvent): void =


  fQListView_virtualbase_showEvent(self.h, event.h)

type QListViewshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QListView, slot: proc(super: QListViewshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_showEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_showEvent ".} =
  type Cb = proc(super: QListViewshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QListView(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QListView, event: gen_qevent.QHideEvent): void =


  fQListView_virtualbase_hideEvent(self.h, event.h)

type QListViewhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QListView, slot: proc(super: QListViewhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_hideEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_hideEvent ".} =
  type Cb = proc(super: QListViewhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QListView(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QListView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQListView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QListViewnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QListView, slot: proc(super: QListViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QListViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_nativeEvent(self: ptr cQListView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QListView_nativeEvent ".} =
  type Cb = proc(super: QListViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QListView(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QListView, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQListView_virtualbase_metric(self.h, cint(param1))

type QListViewmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QListView, slot: proc(super: QListViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QListViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_metric(self: ptr cQListView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QListView_metric ".} =
  type Cb = proc(super: QListViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QListView(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QListView, painter: gen_qpainter.QPainter): void =


  fQListView_virtualbase_initPainter(self.h, painter.h)

type QListViewinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QListView, slot: proc(super: QListViewinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_initPainter(self: ptr cQListView, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QListView_initPainter ".} =
  type Cb = proc(super: QListViewinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QListView(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QListView, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQListView_virtualbase_redirected(self.h, offset.h))

type QListViewredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QListView, slot: proc(super: QListViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QListViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_redirected(self: ptr cQListView, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QListView_redirected ".} =
  type Cb = proc(super: QListViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QListView(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QListView, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQListView_virtualbase_sharedPainter(self.h))

type QListViewsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QListView, slot: proc(super: QListViewsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QListViewsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_sharedPainter(self: ptr cQListView, slot: int): pointer {.exportc: "miqt_exec_callback_QListView_sharedPainter ".} =
  type Cb = proc(super: QListViewsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QListView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_childEvent(self: QListView, event: gen_qcoreevent.QChildEvent): void =


  fQListView_virtualbase_childEvent(self.h, event.h)

type QListViewchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QListView, slot: proc(super: QListViewchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_childEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_childEvent ".} =
  type Cb = proc(super: QListViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QListView(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QListView, event: gen_qcoreevent.QEvent): void =


  fQListView_virtualbase_customEvent(self.h, event.h)

type QListViewcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QListView, slot: proc(super: QListViewcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_customEvent(self: ptr cQListView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListView_customEvent ".} =
  type Cb = proc(super: QListViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QListView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QListView, signal: gen_qmetaobject.QMetaMethod): void =


  fQListView_virtualbase_connectNotify(self.h, signal.h)

type QListViewconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QListView, slot: proc(super: QListViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_connectNotify(self: ptr cQListView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QListView_connectNotify ".} =
  type Cb = proc(super: QListViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QListView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QListView, signal: gen_qmetaobject.QMetaMethod): void =


  fQListView_virtualbase_disconnectNotify(self.h, signal.h)

type QListViewdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QListView, slot: proc(super: QListViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QListViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListView_disconnectNotify(self: ptr cQListView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QListView_disconnectNotify ".} =
  type Cb = proc(super: QListViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QListView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QListView): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQListView_staticMetaObject())
proc delete*(self: QListView) =
  fcQListView_delete(self.h)
