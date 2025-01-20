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
{.compile("gen_qundoview.cpp", cflags).}


import gen_qundoview_types
export gen_qundoview_types

import
  gen_qabstractitemdelegate,
  gen_qabstractitemmodel,
  gen_qabstractitemview,
  gen_qcoreevent,
  gen_qevent,
  gen_qicon,
  gen_qitemselectionmodel,
  gen_qlistview,
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
  gen_qundogroup,
  gen_qundostack,
  gen_qvariant,
  gen_qwidget
export
  gen_qabstractitemdelegate,
  gen_qabstractitemmodel,
  gen_qabstractitemview,
  gen_qcoreevent,
  gen_qevent,
  gen_qicon,
  gen_qitemselectionmodel,
  gen_qlistview,
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
  gen_qundogroup,
  gen_qundostack,
  gen_qvariant,
  gen_qwidget

type cQUndoView*{.exportc: "QUndoView", incompleteStruct.} = object

proc fcQUndoView_new(parent: pointer): ptr cQUndoView {.importc: "QUndoView_new".}
proc fcQUndoView_new2(): ptr cQUndoView {.importc: "QUndoView_new2".}
proc fcQUndoView_new3(stack: pointer): ptr cQUndoView {.importc: "QUndoView_new3".}
proc fcQUndoView_new4(group: pointer): ptr cQUndoView {.importc: "QUndoView_new4".}
proc fcQUndoView_new5(stack: pointer, parent: pointer): ptr cQUndoView {.importc: "QUndoView_new5".}
proc fcQUndoView_new6(group: pointer, parent: pointer): ptr cQUndoView {.importc: "QUndoView_new6".}
proc fcQUndoView_metaObject(self: pointer, ): pointer {.importc: "QUndoView_metaObject".}
proc fcQUndoView_metacast(self: pointer, param1: cstring): pointer {.importc: "QUndoView_metacast".}
proc fcQUndoView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QUndoView_metacall".}
proc fcQUndoView_tr(s: cstring): struct_miqt_string {.importc: "QUndoView_tr".}
proc fcQUndoView_trUtf8(s: cstring): struct_miqt_string {.importc: "QUndoView_trUtf8".}
proc fcQUndoView_stack(self: pointer, ): pointer {.importc: "QUndoView_stack".}
proc fcQUndoView_group(self: pointer, ): pointer {.importc: "QUndoView_group".}
proc fcQUndoView_setEmptyLabel(self: pointer, label: struct_miqt_string): void {.importc: "QUndoView_setEmptyLabel".}
proc fcQUndoView_emptyLabel(self: pointer, ): struct_miqt_string {.importc: "QUndoView_emptyLabel".}
proc fcQUndoView_setCleanIcon(self: pointer, icon: pointer): void {.importc: "QUndoView_setCleanIcon".}
proc fcQUndoView_cleanIcon(self: pointer, ): pointer {.importc: "QUndoView_cleanIcon".}
proc fcQUndoView_setStack(self: pointer, stack: pointer): void {.importc: "QUndoView_setStack".}
proc fcQUndoView_setGroup(self: pointer, group: pointer): void {.importc: "QUndoView_setGroup".}
proc fcQUndoView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QUndoView_tr2".}
proc fcQUndoView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QUndoView_tr3".}
proc fcQUndoView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QUndoView_trUtf82".}
proc fcQUndoView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QUndoView_trUtf83".}
proc fQUndoView_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QUndoView_virtualbase_metaObject".}
proc fcQUndoView_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_metaObject".}
proc fQUndoView_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QUndoView_virtualbase_metacast".}
proc fcQUndoView_override_virtual_metacast(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_metacast".}
proc fQUndoView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QUndoView_virtualbase_metacall".}
proc fcQUndoView_override_virtual_metacall(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_metacall".}
proc fQUndoView_virtualbase_visualRect(self: pointer, index: pointer): pointer{.importc: "QUndoView_virtualbase_visualRect".}
proc fcQUndoView_override_virtual_visualRect(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_visualRect".}
proc fQUndoView_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void{.importc: "QUndoView_virtualbase_scrollTo".}
proc fcQUndoView_override_virtual_scrollTo(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_scrollTo".}
proc fQUndoView_virtualbase_indexAt(self: pointer, p: pointer): pointer{.importc: "QUndoView_virtualbase_indexAt".}
proc fcQUndoView_override_virtual_indexAt(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_indexAt".}
proc fQUndoView_virtualbase_doItemsLayout(self: pointer, ): void{.importc: "QUndoView_virtualbase_doItemsLayout".}
proc fcQUndoView_override_virtual_doItemsLayout(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_doItemsLayout".}
proc fQUndoView_virtualbase_reset(self: pointer, ): void{.importc: "QUndoView_virtualbase_reset".}
proc fcQUndoView_override_virtual_reset(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_reset".}
proc fQUndoView_virtualbase_setRootIndex(self: pointer, index: pointer): void{.importc: "QUndoView_virtualbase_setRootIndex".}
proc fcQUndoView_override_virtual_setRootIndex(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_setRootIndex".}
proc fQUndoView_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QUndoView_virtualbase_event".}
proc fcQUndoView_override_virtual_event(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_event".}
proc fQUndoView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QUndoView_virtualbase_scrollContentsBy".}
proc fcQUndoView_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_scrollContentsBy".}
proc fQUndoView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void{.importc: "QUndoView_virtualbase_dataChanged".}
proc fcQUndoView_override_virtual_dataChanged(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_dataChanged".}
proc fQUndoView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QUndoView_virtualbase_rowsInserted".}
proc fcQUndoView_override_virtual_rowsInserted(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_rowsInserted".}
proc fQUndoView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QUndoView_virtualbase_rowsAboutToBeRemoved".}
proc fcQUndoView_override_virtual_rowsAboutToBeRemoved(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_rowsAboutToBeRemoved".}
proc fQUndoView_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void{.importc: "QUndoView_virtualbase_mouseMoveEvent".}
proc fcQUndoView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_mouseMoveEvent".}
proc fQUndoView_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QUndoView_virtualbase_mouseReleaseEvent".}
proc fcQUndoView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_mouseReleaseEvent".}
proc fQUndoView_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QUndoView_virtualbase_wheelEvent".}
proc fcQUndoView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_wheelEvent".}
proc fQUndoView_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QUndoView_virtualbase_timerEvent".}
proc fcQUndoView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_timerEvent".}
proc fQUndoView_virtualbase_resizeEvent(self: pointer, e: pointer): void{.importc: "QUndoView_virtualbase_resizeEvent".}
proc fcQUndoView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_resizeEvent".}
proc fQUndoView_virtualbase_dragMoveEvent(self: pointer, e: pointer): void{.importc: "QUndoView_virtualbase_dragMoveEvent".}
proc fcQUndoView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_dragMoveEvent".}
proc fQUndoView_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void{.importc: "QUndoView_virtualbase_dragLeaveEvent".}
proc fcQUndoView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_dragLeaveEvent".}
proc fQUndoView_virtualbase_dropEvent(self: pointer, e: pointer): void{.importc: "QUndoView_virtualbase_dropEvent".}
proc fcQUndoView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_dropEvent".}
proc fQUndoView_virtualbase_startDrag(self: pointer, supportedActions: cint): void{.importc: "QUndoView_virtualbase_startDrag".}
proc fcQUndoView_override_virtual_startDrag(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_startDrag".}
proc fQUndoView_virtualbase_viewOptions(self: pointer, ): pointer{.importc: "QUndoView_virtualbase_viewOptions".}
proc fcQUndoView_override_virtual_viewOptions(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_viewOptions".}
proc fQUndoView_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QUndoView_virtualbase_paintEvent".}
proc fcQUndoView_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_paintEvent".}
proc fQUndoView_virtualbase_horizontalOffset(self: pointer, ): cint{.importc: "QUndoView_virtualbase_horizontalOffset".}
proc fcQUndoView_override_virtual_horizontalOffset(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_horizontalOffset".}
proc fQUndoView_virtualbase_verticalOffset(self: pointer, ): cint{.importc: "QUndoView_virtualbase_verticalOffset".}
proc fcQUndoView_override_virtual_verticalOffset(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_verticalOffset".}
proc fQUndoView_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer{.importc: "QUndoView_virtualbase_moveCursor".}
proc fcQUndoView_override_virtual_moveCursor(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_moveCursor".}
proc fQUndoView_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void{.importc: "QUndoView_virtualbase_setSelection".}
proc fcQUndoView_override_virtual_setSelection(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_setSelection".}
proc fQUndoView_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer{.importc: "QUndoView_virtualbase_visualRegionForSelection".}
proc fcQUndoView_override_virtual_visualRegionForSelection(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_visualRegionForSelection".}
proc fQUndoView_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array{.importc: "QUndoView_virtualbase_selectedIndexes".}
proc fcQUndoView_override_virtual_selectedIndexes(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_selectedIndexes".}
proc fQUndoView_virtualbase_updateGeometries(self: pointer, ): void{.importc: "QUndoView_virtualbase_updateGeometries".}
proc fcQUndoView_override_virtual_updateGeometries(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_updateGeometries".}
proc fQUndoView_virtualbase_isIndexHidden(self: pointer, index: pointer): bool{.importc: "QUndoView_virtualbase_isIndexHidden".}
proc fcQUndoView_override_virtual_isIndexHidden(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_isIndexHidden".}
proc fQUndoView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void{.importc: "QUndoView_virtualbase_selectionChanged".}
proc fcQUndoView_override_virtual_selectionChanged(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_selectionChanged".}
proc fQUndoView_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void{.importc: "QUndoView_virtualbase_currentChanged".}
proc fcQUndoView_override_virtual_currentChanged(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_currentChanged".}
proc fQUndoView_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QUndoView_virtualbase_viewportSizeHint".}
proc fcQUndoView_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_viewportSizeHint".}
proc fQUndoView_virtualbase_setModel(self: pointer, model: pointer): void{.importc: "QUndoView_virtualbase_setModel".}
proc fcQUndoView_override_virtual_setModel(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_setModel".}
proc fQUndoView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void{.importc: "QUndoView_virtualbase_setSelectionModel".}
proc fcQUndoView_override_virtual_setSelectionModel(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_setSelectionModel".}
proc fQUndoView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void{.importc: "QUndoView_virtualbase_keyboardSearch".}
proc fcQUndoView_override_virtual_keyboardSearch(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_keyboardSearch".}
proc fQUndoView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint{.importc: "QUndoView_virtualbase_sizeHintForRow".}
proc fcQUndoView_override_virtual_sizeHintForRow(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_sizeHintForRow".}
proc fQUndoView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint{.importc: "QUndoView_virtualbase_sizeHintForColumn".}
proc fcQUndoView_override_virtual_sizeHintForColumn(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_sizeHintForColumn".}
proc fQUndoView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QUndoView_virtualbase_inputMethodQuery".}
proc fcQUndoView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_inputMethodQuery".}
proc fQUndoView_virtualbase_selectAll(self: pointer, ): void{.importc: "QUndoView_virtualbase_selectAll".}
proc fcQUndoView_override_virtual_selectAll(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_selectAll".}
proc fQUndoView_virtualbase_updateEditorData(self: pointer, ): void{.importc: "QUndoView_virtualbase_updateEditorData".}
proc fcQUndoView_override_virtual_updateEditorData(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_updateEditorData".}
proc fQUndoView_virtualbase_updateEditorGeometries(self: pointer, ): void{.importc: "QUndoView_virtualbase_updateEditorGeometries".}
proc fcQUndoView_override_virtual_updateEditorGeometries(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_updateEditorGeometries".}
proc fQUndoView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void{.importc: "QUndoView_virtualbase_verticalScrollbarAction".}
proc fcQUndoView_override_virtual_verticalScrollbarAction(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_verticalScrollbarAction".}
proc fQUndoView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void{.importc: "QUndoView_virtualbase_horizontalScrollbarAction".}
proc fcQUndoView_override_virtual_horizontalScrollbarAction(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_horizontalScrollbarAction".}
proc fQUndoView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QUndoView_virtualbase_verticalScrollbarValueChanged".}
proc fcQUndoView_override_virtual_verticalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_verticalScrollbarValueChanged".}
proc fQUndoView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QUndoView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQUndoView_override_virtual_horizontalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_horizontalScrollbarValueChanged".}
proc fQUndoView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void{.importc: "QUndoView_virtualbase_closeEditor".}
proc fcQUndoView_override_virtual_closeEditor(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_closeEditor".}
proc fQUndoView_virtualbase_commitData(self: pointer, editor: pointer): void{.importc: "QUndoView_virtualbase_commitData".}
proc fcQUndoView_override_virtual_commitData(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_commitData".}
proc fQUndoView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void{.importc: "QUndoView_virtualbase_editorDestroyed".}
proc fcQUndoView_override_virtual_editorDestroyed(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_editorDestroyed".}
proc fQUndoView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool{.importc: "QUndoView_virtualbase_edit2".}
proc fcQUndoView_override_virtual_edit2(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_edit2".}
proc fQUndoView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint{.importc: "QUndoView_virtualbase_selectionCommand".}
proc fcQUndoView_override_virtual_selectionCommand(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_selectionCommand".}
proc fQUndoView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QUndoView_virtualbase_focusNextPrevChild".}
proc fcQUndoView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_focusNextPrevChild".}
proc fQUndoView_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QUndoView_virtualbase_viewportEvent".}
proc fcQUndoView_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_viewportEvent".}
proc fQUndoView_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_mousePressEvent".}
proc fcQUndoView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_mousePressEvent".}
proc fQUndoView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_mouseDoubleClickEvent".}
proc fcQUndoView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_mouseDoubleClickEvent".}
proc fQUndoView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_dragEnterEvent".}
proc fcQUndoView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_dragEnterEvent".}
proc fQUndoView_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_focusInEvent".}
proc fcQUndoView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_focusInEvent".}
proc fQUndoView_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_focusOutEvent".}
proc fcQUndoView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_focusOutEvent".}
proc fQUndoView_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_keyPressEvent".}
proc fcQUndoView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_keyPressEvent".}
proc fQUndoView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_inputMethodEvent".}
proc fcQUndoView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_inputMethodEvent".}
proc fQUndoView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QUndoView_virtualbase_eventFilter".}
proc fcQUndoView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_eventFilter".}
proc fQUndoView_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QUndoView_virtualbase_minimumSizeHint".}
proc fcQUndoView_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_minimumSizeHint".}
proc fQUndoView_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QUndoView_virtualbase_sizeHint".}
proc fcQUndoView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_sizeHint".}
proc fQUndoView_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QUndoView_virtualbase_setupViewport".}
proc fcQUndoView_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_setupViewport".}
proc fQUndoView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QUndoView_virtualbase_contextMenuEvent".}
proc fcQUndoView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_contextMenuEvent".}
proc fQUndoView_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QUndoView_virtualbase_changeEvent".}
proc fcQUndoView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_changeEvent".}
proc fQUndoView_virtualbase_devType(self: pointer, ): cint{.importc: "QUndoView_virtualbase_devType".}
proc fcQUndoView_override_virtual_devType(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_devType".}
proc fQUndoView_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QUndoView_virtualbase_setVisible".}
proc fcQUndoView_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_setVisible".}
proc fQUndoView_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QUndoView_virtualbase_heightForWidth".}
proc fcQUndoView_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_heightForWidth".}
proc fQUndoView_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QUndoView_virtualbase_hasHeightForWidth".}
proc fcQUndoView_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_hasHeightForWidth".}
proc fQUndoView_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QUndoView_virtualbase_paintEngine".}
proc fcQUndoView_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_paintEngine".}
proc fQUndoView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_keyReleaseEvent".}
proc fcQUndoView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_keyReleaseEvent".}
proc fQUndoView_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_enterEvent".}
proc fcQUndoView_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_enterEvent".}
proc fQUndoView_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_leaveEvent".}
proc fcQUndoView_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_leaveEvent".}
proc fQUndoView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_moveEvent".}
proc fcQUndoView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_moveEvent".}
proc fQUndoView_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_closeEvent".}
proc fcQUndoView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_closeEvent".}
proc fQUndoView_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_tabletEvent".}
proc fcQUndoView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_tabletEvent".}
proc fQUndoView_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_actionEvent".}
proc fcQUndoView_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_actionEvent".}
proc fQUndoView_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_showEvent".}
proc fcQUndoView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_showEvent".}
proc fQUndoView_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_hideEvent".}
proc fcQUndoView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_hideEvent".}
proc fQUndoView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QUndoView_virtualbase_nativeEvent".}
proc fcQUndoView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_nativeEvent".}
proc fQUndoView_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QUndoView_virtualbase_metric".}
proc fcQUndoView_override_virtual_metric(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_metric".}
proc fQUndoView_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QUndoView_virtualbase_initPainter".}
proc fcQUndoView_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_initPainter".}
proc fQUndoView_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QUndoView_virtualbase_redirected".}
proc fcQUndoView_override_virtual_redirected(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_redirected".}
proc fQUndoView_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QUndoView_virtualbase_sharedPainter".}
proc fcQUndoView_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_sharedPainter".}
proc fQUndoView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_childEvent".}
proc fcQUndoView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_childEvent".}
proc fQUndoView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QUndoView_virtualbase_customEvent".}
proc fcQUndoView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_customEvent".}
proc fQUndoView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QUndoView_virtualbase_connectNotify".}
proc fcQUndoView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_connectNotify".}
proc fQUndoView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QUndoView_virtualbase_disconnectNotify".}
proc fcQUndoView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QUndoView_override_virtual_disconnectNotify".}
proc fcQUndoView_staticMetaObject(): pointer {.importc: "QUndoView_staticMetaObject".}
proc fcQUndoView_delete(self: pointer) {.importc: "QUndoView_delete".}


func init*(T: type QUndoView, h: ptr cQUndoView): QUndoView =
  T(h: h)
proc create*(T: type QUndoView, parent: gen_qwidget.QWidget): QUndoView =

  QUndoView.init(fcQUndoView_new(parent.h))
proc create*(T: type QUndoView, ): QUndoView =

  QUndoView.init(fcQUndoView_new2())
proc create2*(T: type QUndoView, stack: gen_qundostack.QUndoStack): QUndoView =

  QUndoView.init(fcQUndoView_new3(stack.h))
proc create2*(T: type QUndoView, group: gen_qundogroup.QUndoGroup): QUndoView =

  QUndoView.init(fcQUndoView_new4(group.h))
proc create*(T: type QUndoView, stack: gen_qundostack.QUndoStack, parent: gen_qwidget.QWidget): QUndoView =

  QUndoView.init(fcQUndoView_new5(stack.h, parent.h))
proc create2*(T: type QUndoView, group: gen_qundogroup.QUndoGroup, parent: gen_qwidget.QWidget): QUndoView =

  QUndoView.init(fcQUndoView_new6(group.h, parent.h))
proc metaObject*(self: QUndoView, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQUndoView_metaObject(self.h))

proc metacast*(self: QUndoView, param1: cstring): pointer =

  fcQUndoView_metacast(self.h, param1)

proc metacall*(self: QUndoView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQUndoView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QUndoView, s: cstring): string =

  let v_ms = fcQUndoView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QUndoView, s: cstring): string =

  let v_ms = fcQUndoView_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc stack*(self: QUndoView, ): gen_qundostack.QUndoStack =

  gen_qundostack.QUndoStack(h: fcQUndoView_stack(self.h))

proc group*(self: QUndoView, ): gen_qundogroup.QUndoGroup =

  gen_qundogroup.QUndoGroup(h: fcQUndoView_group(self.h))

proc setEmptyLabel*(self: QUndoView, label: string): void =

  fcQUndoView_setEmptyLabel(self.h, struct_miqt_string(data: label, len: csize_t(len(label))))

proc emptyLabel*(self: QUndoView, ): string =

  let v_ms = fcQUndoView_emptyLabel(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCleanIcon*(self: QUndoView, icon: gen_qicon.QIcon): void =

  fcQUndoView_setCleanIcon(self.h, icon.h)

proc cleanIcon*(self: QUndoView, ): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQUndoView_cleanIcon(self.h))

proc setStack*(self: QUndoView, stack: gen_qundostack.QUndoStack): void =

  fcQUndoView_setStack(self.h, stack.h)

proc setGroup*(self: QUndoView, group: gen_qundogroup.QUndoGroup): void =

  fcQUndoView_setGroup(self.h, group.h)

proc tr2*(_: type QUndoView, s: cstring, c: cstring): string =

  let v_ms = fcQUndoView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QUndoView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQUndoView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QUndoView, s: cstring, c: cstring): string =

  let v_ms = fcQUndoView_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QUndoView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQUndoView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QUndoView, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQUndoView_virtualbase_metaObject(self.h))

type QUndoViewmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QUndoView, slot: proc(super: QUndoViewmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_metaObject(self: ptr cQUndoView, slot: int): pointer {.exportc: "miqt_exec_callback_QUndoView_metaObject ".} =
  type Cb = proc(super: QUndoViewmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QUndoView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QUndoView, param1: cstring): pointer =


  fQUndoView_virtualbase_metacast(self.h, param1)

type QUndoViewmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QUndoView, slot: proc(super: QUndoViewmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_metacast(self: ptr cQUndoView, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QUndoView_metacast ".} =
  type Cb = proc(super: QUndoViewmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QUndoView(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QUndoView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQUndoView_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QUndoViewmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QUndoView, slot: proc(super: QUndoViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_metacall(self: ptr cQUndoView, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QUndoView_metacall ".} =
  type Cb = proc(super: QUndoViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QUndoView(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_visualRect(self: QUndoView, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect =


  gen_qrect.QRect(h: fQUndoView_virtualbase_visualRect(self.h, index.h))

type QUndoViewvisualRectBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
proc onvisualRect*(self: QUndoView, slot: proc(super: QUndoViewvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_visualRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_visualRect(self: ptr cQUndoView, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QUndoView_visualRect ".} =
  type Cb = proc(super: QUndoViewvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_visualRect(QUndoView(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_scrollTo(self: QUndoView, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void =


  fQUndoView_virtualbase_scrollTo(self.h, index.h, cint(hint))

type QUndoViewscrollToBase* = proc(index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
proc onscrollTo*(self: QUndoView, slot: proc(super: QUndoViewscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_scrollTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_scrollTo(self: ptr cQUndoView, slot: int, index: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QUndoView_scrollTo ".} =
  type Cb = proc(super: QUndoViewscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): auto =
    callVirtualBase_scrollTo(QUndoView(h: self), index, hint)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemview.QAbstractItemViewScrollHint(hint)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_indexAt(self: QUndoView, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQUndoView_virtualbase_indexAt(self.h, p.h))

type QUndoViewindexAtBase* = proc(p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
proc onindexAt*(self: QUndoView, slot: proc(super: QUndoViewindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_indexAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_indexAt(self: ptr cQUndoView, slot: int, p: pointer): pointer {.exportc: "miqt_exec_callback_QUndoView_indexAt ".} =
  type Cb = proc(super: QUndoViewindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(p: gen_qpoint.QPoint): auto =
    callVirtualBase_indexAt(QUndoView(h: self), p)
  let slotval1 = gen_qpoint.QPoint(h: p)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_doItemsLayout(self: QUndoView, ): void =


  fQUndoView_virtualbase_doItemsLayout(self.h)

type QUndoViewdoItemsLayoutBase* = proc(): void
proc ondoItemsLayout*(self: QUndoView, slot: proc(super: QUndoViewdoItemsLayoutBase): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewdoItemsLayoutBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_doItemsLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_doItemsLayout(self: ptr cQUndoView, slot: int): void {.exportc: "miqt_exec_callback_QUndoView_doItemsLayout ".} =
  type Cb = proc(super: QUndoViewdoItemsLayoutBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_doItemsLayout(QUndoView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_reset(self: QUndoView, ): void =


  fQUndoView_virtualbase_reset(self.h)

type QUndoViewresetBase* = proc(): void
proc onreset*(self: QUndoView, slot: proc(super: QUndoViewresetBase): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewresetBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_reset(self: ptr cQUndoView, slot: int): void {.exportc: "miqt_exec_callback_QUndoView_reset ".} =
  type Cb = proc(super: QUndoViewresetBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QUndoView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_setRootIndex(self: QUndoView, index: gen_qabstractitemmodel.QModelIndex): void =


  fQUndoView_virtualbase_setRootIndex(self.h, index.h)

type QUndoViewsetRootIndexBase* = proc(index: gen_qabstractitemmodel.QModelIndex): void
proc onsetRootIndex*(self: QUndoView, slot: proc(super: QUndoViewsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_setRootIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_setRootIndex(self: ptr cQUndoView, slot: int, index: pointer): void {.exportc: "miqt_exec_callback_QUndoView_setRootIndex ".} =
  type Cb = proc(super: QUndoViewsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_setRootIndex(QUndoView(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QUndoView, e: gen_qcoreevent.QEvent): bool =


  fQUndoView_virtualbase_event(self.h, e.h)

type QUndoVieweventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QUndoView, slot: proc(super: QUndoVieweventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QUndoVieweventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_event(self: ptr cQUndoView, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QUndoView_event ".} =
  type Cb = proc(super: QUndoVieweventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QUndoView(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_scrollContentsBy(self: QUndoView, dx: cint, dy: cint): void =


  fQUndoView_virtualbase_scrollContentsBy(self.h, dx, dy)

type QUndoViewscrollContentsByBase* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: QUndoView, slot: proc(super: QUndoViewscrollContentsByBase, dx: cint, dy: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewscrollContentsByBase, dx: cint, dy: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_scrollContentsBy(self: ptr cQUndoView, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QUndoView_scrollContentsBy ".} =
  type Cb = proc(super: QUndoViewscrollContentsByBase, dx: cint, dy: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(dx: cint, dy: cint): auto =
    callVirtualBase_scrollContentsBy(QUndoView(h: self), dx, dy)
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_dataChanged(self: QUndoView, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void =

  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]


  fQUndoView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

type QUndoViewdataChangedBase* = proc(topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
proc ondataChanged*(self: QUndoView, slot: proc(super: QUndoViewdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_dataChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_dataChanged(self: ptr cQUndoView, slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.exportc: "miqt_exec_callback_QUndoView_dataChanged ".} =
  type Cb = proc(super: QUndoViewdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): auto =
    callVirtualBase_dataChanged(QUndoView(h: self), topLeft, bottomRight, roles)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_rowsInserted(self: QUndoView, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void =


  fQUndoView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

type QUndoViewrowsInsertedBase* = proc(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
proc onrowsInserted*(self: QUndoView, slot: proc(super: QUndoViewrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_rowsInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_rowsInserted(self: ptr cQUndoView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QUndoView_rowsInserted ".} =
  type Cb = proc(super: QUndoViewrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): auto =
    callVirtualBase_rowsInserted(QUndoView(h: self), parent, start, endVal)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_rowsAboutToBeRemoved(self: QUndoView, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void =


  fQUndoView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

type QUndoViewrowsAboutToBeRemovedBase* = proc(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
proc onrowsAboutToBeRemoved*(self: QUndoView, slot: proc(super: QUndoViewrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_rowsAboutToBeRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_rowsAboutToBeRemoved(self: ptr cQUndoView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QUndoView_rowsAboutToBeRemoved ".} =
  type Cb = proc(super: QUndoViewrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): auto =
    callVirtualBase_rowsAboutToBeRemoved(QUndoView(h: self), parent, start, endVal)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_mouseMoveEvent(self: QUndoView, e: gen_qevent.QMouseEvent): void =


  fQUndoView_virtualbase_mouseMoveEvent(self.h, e.h)

type QUndoViewmouseMoveEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QUndoView, slot: proc(super: QUndoViewmouseMoveEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewmouseMoveEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_mouseMoveEvent(self: ptr cQUndoView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QUndoView_mouseMoveEvent ".} =
  type Cb = proc(super: QUndoViewmouseMoveEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QUndoView(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QUndoView, e: gen_qevent.QMouseEvent): void =


  fQUndoView_virtualbase_mouseReleaseEvent(self.h, e.h)

type QUndoViewmouseReleaseEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QUndoView, slot: proc(super: QUndoViewmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_mouseReleaseEvent(self: ptr cQUndoView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QUndoView_mouseReleaseEvent ".} =
  type Cb = proc(super: QUndoViewmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QUndoView(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QUndoView, e: gen_qevent.QWheelEvent): void =


  fQUndoView_virtualbase_wheelEvent(self.h, e.h)

type QUndoViewwheelEventBase* = proc(e: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QUndoView, slot: proc(super: QUndoViewwheelEventBase, e: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewwheelEventBase, e: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_wheelEvent(self: ptr cQUndoView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QUndoView_wheelEvent ".} =
  type Cb = proc(super: QUndoViewwheelEventBase, e: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QUndoView(h: self), e)
  let slotval1 = gen_qevent.QWheelEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QUndoView, e: gen_qcoreevent.QTimerEvent): void =


  fQUndoView_virtualbase_timerEvent(self.h, e.h)

type QUndoViewtimerEventBase* = proc(e: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QUndoView, slot: proc(super: QUndoViewtimerEventBase, e: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewtimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_timerEvent(self: ptr cQUndoView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QUndoView_timerEvent ".} =
  type Cb = proc(super: QUndoViewtimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QUndoView(h: self), e)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QUndoView, e: gen_qevent.QResizeEvent): void =


  fQUndoView_virtualbase_resizeEvent(self.h, e.h)

type QUndoViewresizeEventBase* = proc(e: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QUndoView, slot: proc(super: QUndoViewresizeEventBase, e: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewresizeEventBase, e: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_resizeEvent(self: ptr cQUndoView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QUndoView_resizeEvent ".} =
  type Cb = proc(super: QUndoViewresizeEventBase, e: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QUndoView(h: self), e)
  let slotval1 = gen_qevent.QResizeEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QUndoView, e: gen_qevent.QDragMoveEvent): void =


  fQUndoView_virtualbase_dragMoveEvent(self.h, e.h)

type QUndoViewdragMoveEventBase* = proc(e: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QUndoView, slot: proc(super: QUndoViewdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_dragMoveEvent(self: ptr cQUndoView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QUndoView_dragMoveEvent ".} =
  type Cb = proc(super: QUndoViewdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QUndoView(h: self), e)
  let slotval1 = gen_qevent.QDragMoveEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QUndoView, e: gen_qevent.QDragLeaveEvent): void =


  fQUndoView_virtualbase_dragLeaveEvent(self.h, e.h)

type QUndoViewdragLeaveEventBase* = proc(e: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QUndoView, slot: proc(super: QUndoViewdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_dragLeaveEvent(self: ptr cQUndoView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QUndoView_dragLeaveEvent ".} =
  type Cb = proc(super: QUndoViewdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QUndoView(h: self), e)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QUndoView, e: gen_qevent.QDropEvent): void =


  fQUndoView_virtualbase_dropEvent(self.h, e.h)

type QUndoViewdropEventBase* = proc(e: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QUndoView, slot: proc(super: QUndoViewdropEventBase, e: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewdropEventBase, e: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_dropEvent(self: ptr cQUndoView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QUndoView_dropEvent ".} =
  type Cb = proc(super: QUndoViewdropEventBase, e: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QUndoView(h: self), e)
  let slotval1 = gen_qevent.QDropEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_startDrag(self: QUndoView, supportedActions: gen_qnamespace.DropAction): void =


  fQUndoView_virtualbase_startDrag(self.h, cint(supportedActions))

type QUndoViewstartDragBase* = proc(supportedActions: gen_qnamespace.DropAction): void
proc onstartDrag*(self: QUndoView, slot: proc(super: QUndoViewstartDragBase, supportedActions: gen_qnamespace.DropAction): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewstartDragBase, supportedActions: gen_qnamespace.DropAction): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_startDrag(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_startDrag(self: ptr cQUndoView, slot: int, supportedActions: cint): void {.exportc: "miqt_exec_callback_QUndoView_startDrag ".} =
  type Cb = proc(super: QUndoViewstartDragBase, supportedActions: gen_qnamespace.DropAction): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(supportedActions: gen_qnamespace.DropAction): auto =
    callVirtualBase_startDrag(QUndoView(h: self), supportedActions)
  let slotval1 = gen_qnamespace.DropAction(supportedActions)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_viewOptions(self: QUndoView, ): gen_qstyleoption.QStyleOptionViewItem =


  gen_qstyleoption.QStyleOptionViewItem(h: fQUndoView_virtualbase_viewOptions(self.h))

type QUndoViewviewOptionsBase* = proc(): gen_qstyleoption.QStyleOptionViewItem
proc onviewOptions*(self: QUndoView, slot: proc(super: QUndoViewviewOptionsBase): gen_qstyleoption.QStyleOptionViewItem) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewviewOptionsBase): gen_qstyleoption.QStyleOptionViewItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_viewOptions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_viewOptions(self: ptr cQUndoView, slot: int): pointer {.exportc: "miqt_exec_callback_QUndoView_viewOptions ".} =
  type Cb = proc(super: QUndoViewviewOptionsBase): gen_qstyleoption.QStyleOptionViewItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewOptions(QUndoView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_paintEvent(self: QUndoView, e: gen_qevent.QPaintEvent): void =


  fQUndoView_virtualbase_paintEvent(self.h, e.h)

type QUndoViewpaintEventBase* = proc(e: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QUndoView, slot: proc(super: QUndoViewpaintEventBase, e: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewpaintEventBase, e: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_paintEvent(self: ptr cQUndoView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QUndoView_paintEvent ".} =
  type Cb = proc(super: QUndoViewpaintEventBase, e: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QUndoView(h: self), e)
  let slotval1 = gen_qevent.QPaintEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalOffset(self: QUndoView, ): cint =


  fQUndoView_virtualbase_horizontalOffset(self.h)

type QUndoViewhorizontalOffsetBase* = proc(): cint
proc onhorizontalOffset*(self: QUndoView, slot: proc(super: QUndoViewhorizontalOffsetBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewhorizontalOffsetBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_horizontalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_horizontalOffset(self: ptr cQUndoView, slot: int): cint {.exportc: "miqt_exec_callback_QUndoView_horizontalOffset ".} =
  type Cb = proc(super: QUndoViewhorizontalOffsetBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_horizontalOffset(QUndoView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_verticalOffset(self: QUndoView, ): cint =


  fQUndoView_virtualbase_verticalOffset(self.h)

type QUndoViewverticalOffsetBase* = proc(): cint
proc onverticalOffset*(self: QUndoView, slot: proc(super: QUndoViewverticalOffsetBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewverticalOffsetBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_verticalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_verticalOffset(self: ptr cQUndoView, slot: int): cint {.exportc: "miqt_exec_callback_QUndoView_verticalOffset ".} =
  type Cb = proc(super: QUndoViewverticalOffsetBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_verticalOffset(QUndoView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_moveCursor(self: QUndoView, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQUndoView_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

type QUndoViewmoveCursorBase* = proc(cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
proc onmoveCursor*(self: QUndoView, slot: proc(super: QUndoViewmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_moveCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_moveCursor(self: ptr cQUndoView, slot: int, cursorAction: cint, modifiers: cint): pointer {.exportc: "miqt_exec_callback_QUndoView_moveCursor ".} =
  type Cb = proc(super: QUndoViewmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): auto =
    callVirtualBase_moveCursor(QUndoView(h: self), cursorAction, modifiers)
  let slotval1 = gen_qabstractitemview.QAbstractItemViewCursorAction(cursorAction)

  let slotval2 = gen_qnamespace.KeyboardModifier(modifiers)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_setSelection(self: QUndoView, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void =


  fQUndoView_virtualbase_setSelection(self.h, rect.h, cint(command))

type QUndoViewsetSelectionBase* = proc(rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
proc onsetSelection*(self: QUndoView, slot: proc(super: QUndoViewsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_setSelection(self: ptr cQUndoView, slot: int, rect: pointer, command: cint): void {.exportc: "miqt_exec_callback_QUndoView_setSelection ".} =
  type Cb = proc(super: QUndoViewsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): auto =
    callVirtualBase_setSelection(QUndoView(h: self), rect, command)
  let slotval1 = gen_qrect.QRect(h: rect)

  let slotval2 = gen_qitemselectionmodel.QItemSelectionModelSelectionFlag(command)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_visualRegionForSelection(self: QUndoView, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion =


  gen_qregion.QRegion(h: fQUndoView_virtualbase_visualRegionForSelection(self.h, selection.h))

type QUndoViewvisualRegionForSelectionBase* = proc(selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
proc onvisualRegionForSelection*(self: QUndoView, slot: proc(super: QUndoViewvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_visualRegionForSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_visualRegionForSelection(self: ptr cQUndoView, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QUndoView_visualRegionForSelection ".} =
  type Cb = proc(super: QUndoViewvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selection: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_visualRegionForSelection(QUndoView(h: self), selection)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_selectedIndexes(self: QUndoView, ): seq[gen_qabstractitemmodel.QModelIndex] =


  var v_ma = fQUndoView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

type QUndoViewselectedIndexesBase* = proc(): seq[gen_qabstractitemmodel.QModelIndex]
proc onselectedIndexes*(self: QUndoView, slot: proc(super: QUndoViewselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_selectedIndexes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_selectedIndexes(self: ptr cQUndoView, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QUndoView_selectedIndexes ".} =
  type Cb = proc(super: QUndoViewselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_selectedIndexes(QUndoView(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_updateGeometries(self: QUndoView, ): void =


  fQUndoView_virtualbase_updateGeometries(self.h)

type QUndoViewupdateGeometriesBase* = proc(): void
proc onupdateGeometries*(self: QUndoView, slot: proc(super: QUndoViewupdateGeometriesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewupdateGeometriesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_updateGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_updateGeometries(self: ptr cQUndoView, slot: int): void {.exportc: "miqt_exec_callback_QUndoView_updateGeometries ".} =
  type Cb = proc(super: QUndoViewupdateGeometriesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateGeometries(QUndoView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_isIndexHidden(self: QUndoView, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQUndoView_virtualbase_isIndexHidden(self.h, index.h)

type QUndoViewisIndexHiddenBase* = proc(index: gen_qabstractitemmodel.QModelIndex): bool
proc onisIndexHidden*(self: QUndoView, slot: proc(super: QUndoViewisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_isIndexHidden(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_isIndexHidden(self: ptr cQUndoView, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QUndoView_isIndexHidden ".} =
  type Cb = proc(super: QUndoViewisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_isIndexHidden(QUndoView(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_selectionChanged(self: QUndoView, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void =


  fQUndoView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

type QUndoViewselectionChangedBase* = proc(selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
proc onselectionChanged*(self: QUndoView, slot: proc(super: QUndoViewselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_selectionChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_selectionChanged(self: ptr cQUndoView, slot: int, selected: pointer, deselected: pointer): void {.exportc: "miqt_exec_callback_QUndoView_selectionChanged ".} =
  type Cb = proc(super: QUndoViewselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_selectionChanged(QUndoView(h: self), selected, deselected)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel.QItemSelection(h: deselected)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_currentChanged(self: QUndoView, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void =


  fQUndoView_virtualbase_currentChanged(self.h, current.h, previous.h)

type QUndoViewcurrentChangedBase* = proc(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
proc oncurrentChanged*(self: QUndoView, slot: proc(super: QUndoViewcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_currentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_currentChanged(self: ptr cQUndoView, slot: int, current: pointer, previous: pointer): void {.exportc: "miqt_exec_callback_QUndoView_currentChanged ".} =
  type Cb = proc(super: QUndoViewcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_currentChanged(QUndoView(h: self), current, previous)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: previous)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_viewportSizeHint(self: QUndoView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQUndoView_virtualbase_viewportSizeHint(self.h))

type QUndoViewviewportSizeHintBase* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: QUndoView, slot: proc(super: QUndoViewviewportSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewviewportSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_viewportSizeHint(self: ptr cQUndoView, slot: int): pointer {.exportc: "miqt_exec_callback_QUndoView_viewportSizeHint ".} =
  type Cb = proc(super: QUndoViewviewportSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewportSizeHint(QUndoView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setModel(self: QUndoView, model: gen_qabstractitemmodel.QAbstractItemModel): void =


  fQUndoView_virtualbase_setModel(self.h, model.h)

type QUndoViewsetModelBase* = proc(model: gen_qabstractitemmodel.QAbstractItemModel): void
proc onsetModel*(self: QUndoView, slot: proc(super: QUndoViewsetModelBase, model: gen_qabstractitemmodel.QAbstractItemModel): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewsetModelBase, model: gen_qabstractitemmodel.QAbstractItemModel): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_setModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_setModel(self: ptr cQUndoView, slot: int, model: pointer): void {.exportc: "miqt_exec_callback_QUndoView_setModel ".} =
  type Cb = proc(super: QUndoViewsetModelBase, model: gen_qabstractitemmodel.QAbstractItemModel): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(model: gen_qabstractitemmodel.QAbstractItemModel): auto =
    callVirtualBase_setModel(QUndoView(h: self), model)
  let slotval1 = gen_qabstractitemmodel.QAbstractItemModel(h: model)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setSelectionModel(self: QUndoView, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void =


  fQUndoView_virtualbase_setSelectionModel(self.h, selectionModel.h)

type QUndoViewsetSelectionModelBase* = proc(selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
proc onsetSelectionModel*(self: QUndoView, slot: proc(super: QUndoViewsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_setSelectionModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_setSelectionModel(self: ptr cQUndoView, slot: int, selectionModel: pointer): void {.exportc: "miqt_exec_callback_QUndoView_setSelectionModel ".} =
  type Cb = proc(super: QUndoViewsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selectionModel: gen_qitemselectionmodel.QItemSelectionModel): auto =
    callVirtualBase_setSelectionModel(QUndoView(h: self), selectionModel)
  let slotval1 = gen_qitemselectionmodel.QItemSelectionModel(h: selectionModel)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyboardSearch(self: QUndoView, search: string): void =


  fQUndoView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

type QUndoViewkeyboardSearchBase* = proc(search: string): void
proc onkeyboardSearch*(self: QUndoView, slot: proc(super: QUndoViewkeyboardSearchBase, search: string): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewkeyboardSearchBase, search: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_keyboardSearch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_keyboardSearch(self: ptr cQUndoView, slot: int, search: struct_miqt_string): void {.exportc: "miqt_exec_callback_QUndoView_keyboardSearch ".} =
  type Cb = proc(super: QUndoViewkeyboardSearchBase, search: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(search: string): auto =
    callVirtualBase_keyboardSearch(QUndoView(h: self), search)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHintForRow(self: QUndoView, row: cint): cint =


  fQUndoView_virtualbase_sizeHintForRow(self.h, row)

type QUndoViewsizeHintForRowBase* = proc(row: cint): cint
proc onsizeHintForRow*(self: QUndoView, slot: proc(super: QUndoViewsizeHintForRowBase, row: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewsizeHintForRowBase, row: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_sizeHintForRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_sizeHintForRow(self: ptr cQUndoView, slot: int, row: cint): cint {.exportc: "miqt_exec_callback_QUndoView_sizeHintForRow ".} =
  type Cb = proc(super: QUndoViewsizeHintForRowBase, row: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint): auto =
    callVirtualBase_sizeHintForRow(QUndoView(h: self), row)
  let slotval1 = row


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_sizeHintForColumn(self: QUndoView, column: cint): cint =


  fQUndoView_virtualbase_sizeHintForColumn(self.h, column)

type QUndoViewsizeHintForColumnBase* = proc(column: cint): cint
proc onsizeHintForColumn*(self: QUndoView, slot: proc(super: QUndoViewsizeHintForColumnBase, column: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewsizeHintForColumnBase, column: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_sizeHintForColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_sizeHintForColumn(self: ptr cQUndoView, slot: int, column: cint): cint {.exportc: "miqt_exec_callback_QUndoView_sizeHintForColumn ".} =
  type Cb = proc(super: QUndoViewsizeHintForColumnBase, column: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint): auto =
    callVirtualBase_sizeHintForColumn(QUndoView(h: self), column)
  let slotval1 = column


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_inputMethodQuery(self: QUndoView, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQUndoView_virtualbase_inputMethodQuery(self.h, cint(query)))

type QUndoViewinputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QUndoView, slot: proc(super: QUndoViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_inputMethodQuery(self: ptr cQUndoView, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QUndoView_inputMethodQuery ".} =
  type Cb = proc(super: QUndoViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QUndoView(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_selectAll(self: QUndoView, ): void =


  fQUndoView_virtualbase_selectAll(self.h)

type QUndoViewselectAllBase* = proc(): void
proc onselectAll*(self: QUndoView, slot: proc(super: QUndoViewselectAllBase): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewselectAllBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_selectAll(self: ptr cQUndoView, slot: int): void {.exportc: "miqt_exec_callback_QUndoView_selectAll ".} =
  type Cb = proc(super: QUndoViewselectAllBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_selectAll(QUndoView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_updateEditorData(self: QUndoView, ): void =


  fQUndoView_virtualbase_updateEditorData(self.h)

type QUndoViewupdateEditorDataBase* = proc(): void
proc onupdateEditorData*(self: QUndoView, slot: proc(super: QUndoViewupdateEditorDataBase): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewupdateEditorDataBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_updateEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_updateEditorData(self: ptr cQUndoView, slot: int): void {.exportc: "miqt_exec_callback_QUndoView_updateEditorData ".} =
  type Cb = proc(super: QUndoViewupdateEditorDataBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateEditorData(QUndoView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_updateEditorGeometries(self: QUndoView, ): void =


  fQUndoView_virtualbase_updateEditorGeometries(self.h)

type QUndoViewupdateEditorGeometriesBase* = proc(): void
proc onupdateEditorGeometries*(self: QUndoView, slot: proc(super: QUndoViewupdateEditorGeometriesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewupdateEditorGeometriesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_updateEditorGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_updateEditorGeometries(self: ptr cQUndoView, slot: int): void {.exportc: "miqt_exec_callback_QUndoView_updateEditorGeometries ".} =
  type Cb = proc(super: QUndoViewupdateEditorGeometriesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateEditorGeometries(QUndoView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_verticalScrollbarAction(self: QUndoView, action: cint): void =


  fQUndoView_virtualbase_verticalScrollbarAction(self.h, action)

type QUndoViewverticalScrollbarActionBase* = proc(action: cint): void
proc onverticalScrollbarAction*(self: QUndoView, slot: proc(super: QUndoViewverticalScrollbarActionBase, action: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewverticalScrollbarActionBase, action: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_verticalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_verticalScrollbarAction(self: ptr cQUndoView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QUndoView_verticalScrollbarAction ".} =
  type Cb = proc(super: QUndoViewverticalScrollbarActionBase, action: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(action: cint): auto =
    callVirtualBase_verticalScrollbarAction(QUndoView(h: self), action)
  let slotval1 = action


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalScrollbarAction(self: QUndoView, action: cint): void =


  fQUndoView_virtualbase_horizontalScrollbarAction(self.h, action)

type QUndoViewhorizontalScrollbarActionBase* = proc(action: cint): void
proc onhorizontalScrollbarAction*(self: QUndoView, slot: proc(super: QUndoViewhorizontalScrollbarActionBase, action: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewhorizontalScrollbarActionBase, action: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_horizontalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_horizontalScrollbarAction(self: ptr cQUndoView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QUndoView_horizontalScrollbarAction ".} =
  type Cb = proc(super: QUndoViewhorizontalScrollbarActionBase, action: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(action: cint): auto =
    callVirtualBase_horizontalScrollbarAction(QUndoView(h: self), action)
  let slotval1 = action


  nimfunc[](superCall, slotval1)
proc callVirtualBase_verticalScrollbarValueChanged(self: QUndoView, value: cint): void =


  fQUndoView_virtualbase_verticalScrollbarValueChanged(self.h, value)

type QUndoViewverticalScrollbarValueChangedBase* = proc(value: cint): void
proc onverticalScrollbarValueChanged*(self: QUndoView, slot: proc(super: QUndoViewverticalScrollbarValueChangedBase, value: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewverticalScrollbarValueChangedBase, value: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_verticalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_verticalScrollbarValueChanged(self: ptr cQUndoView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QUndoView_verticalScrollbarValueChanged ".} =
  type Cb = proc(super: QUndoViewverticalScrollbarValueChangedBase, value: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: cint): auto =
    callVirtualBase_verticalScrollbarValueChanged(QUndoView(h: self), value)
  let slotval1 = value


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalScrollbarValueChanged(self: QUndoView, value: cint): void =


  fQUndoView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

type QUndoViewhorizontalScrollbarValueChangedBase* = proc(value: cint): void
proc onhorizontalScrollbarValueChanged*(self: QUndoView, slot: proc(super: QUndoViewhorizontalScrollbarValueChangedBase, value: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewhorizontalScrollbarValueChangedBase, value: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_horizontalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_horizontalScrollbarValueChanged(self: ptr cQUndoView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QUndoView_horizontalScrollbarValueChanged ".} =
  type Cb = proc(super: QUndoViewhorizontalScrollbarValueChangedBase, value: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: cint): auto =
    callVirtualBase_horizontalScrollbarValueChanged(QUndoView(h: self), value)
  let slotval1 = value


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEditor(self: QUndoView, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void =


  fQUndoView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

type QUndoViewcloseEditorBase* = proc(editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
proc oncloseEditor*(self: QUndoView, slot: proc(super: QUndoViewcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_closeEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_closeEditor(self: ptr cQUndoView, slot: int, editor: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QUndoView_closeEditor ".} =
  type Cb = proc(super: QUndoViewcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): auto =
    callVirtualBase_closeEditor(QUndoView(h: self), editor, hint)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint(hint)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_commitData(self: QUndoView, editor: gen_qwidget.QWidget): void =


  fQUndoView_virtualbase_commitData(self.h, editor.h)

type QUndoViewcommitDataBase* = proc(editor: gen_qwidget.QWidget): void
proc oncommitData*(self: QUndoView, slot: proc(super: QUndoViewcommitDataBase, editor: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewcommitDataBase, editor: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_commitData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_commitData(self: ptr cQUndoView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QUndoView_commitData ".} =
  type Cb = proc(super: QUndoViewcommitDataBase, editor: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget): auto =
    callVirtualBase_commitData(QUndoView(h: self), editor)
  let slotval1 = gen_qwidget.QWidget(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_editorDestroyed(self: QUndoView, editor: gen_qobject.QObject): void =


  fQUndoView_virtualbase_editorDestroyed(self.h, editor.h)

type QUndoVieweditorDestroyedBase* = proc(editor: gen_qobject.QObject): void
proc oneditorDestroyed*(self: QUndoView, slot: proc(super: QUndoVieweditorDestroyedBase, editor: gen_qobject.QObject): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoVieweditorDestroyedBase, editor: gen_qobject.QObject): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_editorDestroyed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_editorDestroyed(self: ptr cQUndoView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QUndoView_editorDestroyed ".} =
  type Cb = proc(super: QUndoVieweditorDestroyedBase, editor: gen_qobject.QObject): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qobject.QObject): auto =
    callVirtualBase_editorDestroyed(QUndoView(h: self), editor)
  let slotval1 = gen_qobject.QObject(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_edit2(self: QUndoView, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool =


  fQUndoView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

type QUndoViewedit2Base* = proc(index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
proc onedit2*(self: QUndoView, slot: proc(super: QUndoViewedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_edit2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_edit2(self: ptr cQUndoView, slot: int, index: pointer, trigger: cint, event: pointer): bool {.exportc: "miqt_exec_callback_QUndoView_edit2 ".} =
  type Cb = proc(super: QUndoViewedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_edit2(QUndoView(h: self), index, trigger, event)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemview.QAbstractItemViewEditTrigger(trigger)

  let slotval3 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_selectionCommand(self: QUndoView, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag =


  gen_qitemselectionmodel.QItemSelectionModelSelectionFlag(fQUndoView_virtualbase_selectionCommand(self.h, index.h, event.h))

type QUndoViewselectionCommandBase* = proc(index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
proc onselectionCommand*(self: QUndoView, slot: proc(super: QUndoViewselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_selectionCommand(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_selectionCommand(self: ptr cQUndoView, slot: int, index: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QUndoView_selectionCommand ".} =
  type Cb = proc(super: QUndoViewselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_selectionCommand(QUndoView(h: self), index, event)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  cint(virtualReturn)
proc callVirtualBase_focusNextPrevChild(self: QUndoView, next: bool): bool =


  fQUndoView_virtualbase_focusNextPrevChild(self.h, next)

type QUndoViewfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QUndoView, slot: proc(super: QUndoViewfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_focusNextPrevChild(self: ptr cQUndoView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QUndoView_focusNextPrevChild ".} =
  type Cb = proc(super: QUndoViewfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QUndoView(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_viewportEvent(self: QUndoView, event: gen_qcoreevent.QEvent): bool =


  fQUndoView_virtualbase_viewportEvent(self.h, event.h)

type QUndoViewviewportEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: QUndoView, slot: proc(super: QUndoViewviewportEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_viewportEvent(self: ptr cQUndoView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QUndoView_viewportEvent ".} =
  type Cb = proc(super: QUndoViewviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_viewportEvent(QUndoView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QUndoView, event: gen_qevent.QMouseEvent): void =


  fQUndoView_virtualbase_mousePressEvent(self.h, event.h)

type QUndoViewmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QUndoView, slot: proc(super: QUndoViewmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_mousePressEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_mousePressEvent ".} =
  type Cb = proc(super: QUndoViewmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QUndoView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QUndoView, event: gen_qevent.QMouseEvent): void =


  fQUndoView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QUndoViewmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QUndoView, slot: proc(super: QUndoViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_mouseDoubleClickEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QUndoViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QUndoView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QUndoView, event: gen_qevent.QDragEnterEvent): void =


  fQUndoView_virtualbase_dragEnterEvent(self.h, event.h)

type QUndoViewdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QUndoView, slot: proc(super: QUndoViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_dragEnterEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_dragEnterEvent ".} =
  type Cb = proc(super: QUndoViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QUndoView(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QUndoView, event: gen_qevent.QFocusEvent): void =


  fQUndoView_virtualbase_focusInEvent(self.h, event.h)

type QUndoViewfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QUndoView, slot: proc(super: QUndoViewfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_focusInEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_focusInEvent ".} =
  type Cb = proc(super: QUndoViewfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QUndoView(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QUndoView, event: gen_qevent.QFocusEvent): void =


  fQUndoView_virtualbase_focusOutEvent(self.h, event.h)

type QUndoViewfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QUndoView, slot: proc(super: QUndoViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_focusOutEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_focusOutEvent ".} =
  type Cb = proc(super: QUndoViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QUndoView(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QUndoView, event: gen_qevent.QKeyEvent): void =


  fQUndoView_virtualbase_keyPressEvent(self.h, event.h)

type QUndoViewkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QUndoView, slot: proc(super: QUndoViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_keyPressEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_keyPressEvent ".} =
  type Cb = proc(super: QUndoViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QUndoView(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QUndoView, event: gen_qevent.QInputMethodEvent): void =


  fQUndoView_virtualbase_inputMethodEvent(self.h, event.h)

type QUndoViewinputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QUndoView, slot: proc(super: QUndoViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_inputMethodEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_inputMethodEvent ".} =
  type Cb = proc(super: QUndoViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QUndoView(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QUndoView, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQUndoView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QUndoVieweventFilterBase* = proc(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QUndoView, slot: proc(super: QUndoVieweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QUndoVieweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_eventFilter(self: ptr cQUndoView, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QUndoView_eventFilter ".} =
  type Cb = proc(super: QUndoVieweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QUndoView(h: self), objectVal, event)
  let slotval1 = gen_qobject.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_minimumSizeHint(self: QUndoView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQUndoView_virtualbase_minimumSizeHint(self.h))

type QUndoViewminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QUndoView, slot: proc(super: QUndoViewminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_minimumSizeHint(self: ptr cQUndoView, slot: int): pointer {.exportc: "miqt_exec_callback_QUndoView_minimumSizeHint ".} =
  type Cb = proc(super: QUndoViewminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QUndoView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHint(self: QUndoView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQUndoView_virtualbase_sizeHint(self.h))

type QUndoViewsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QUndoView, slot: proc(super: QUndoViewsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_sizeHint(self: ptr cQUndoView, slot: int): pointer {.exportc: "miqt_exec_callback_QUndoView_sizeHint ".} =
  type Cb = proc(super: QUndoViewsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QUndoView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setupViewport(self: QUndoView, viewport: gen_qwidget.QWidget): void =


  fQUndoView_virtualbase_setupViewport(self.h, viewport.h)

type QUndoViewsetupViewportBase* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: QUndoView, slot: proc(super: QUndoViewsetupViewportBase, viewport: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_setupViewport(self: ptr cQUndoView, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QUndoView_setupViewport ".} =
  type Cb = proc(super: QUndoViewsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(viewport: gen_qwidget.QWidget): auto =
    callVirtualBase_setupViewport(QUndoView(h: self), viewport)
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QUndoView, param1: gen_qevent.QContextMenuEvent): void =


  fQUndoView_virtualbase_contextMenuEvent(self.h, param1.h)

type QUndoViewcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QUndoView, slot: proc(super: QUndoViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_contextMenuEvent(self: ptr cQUndoView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QUndoView_contextMenuEvent ".} =
  type Cb = proc(super: QUndoViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QUndoView(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QUndoView, param1: gen_qcoreevent.QEvent): void =


  fQUndoView_virtualbase_changeEvent(self.h, param1.h)

type QUndoViewchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QUndoView, slot: proc(super: QUndoViewchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_changeEvent(self: ptr cQUndoView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QUndoView_changeEvent ".} =
  type Cb = proc(super: QUndoViewchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QUndoView(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QUndoView, ): cint =


  fQUndoView_virtualbase_devType(self.h)

type QUndoViewdevTypeBase* = proc(): cint
proc ondevType*(self: QUndoView, slot: proc(super: QUndoViewdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_devType(self: ptr cQUndoView, slot: int): cint {.exportc: "miqt_exec_callback_QUndoView_devType ".} =
  type Cb = proc(super: QUndoViewdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QUndoView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QUndoView, visible: bool): void =


  fQUndoView_virtualbase_setVisible(self.h, visible)

type QUndoViewsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QUndoView, slot: proc(super: QUndoViewsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_setVisible(self: ptr cQUndoView, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QUndoView_setVisible ".} =
  type Cb = proc(super: QUndoViewsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QUndoView(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QUndoView, param1: cint): cint =


  fQUndoView_virtualbase_heightForWidth(self.h, param1)

type QUndoViewheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QUndoView, slot: proc(super: QUndoViewheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_heightForWidth(self: ptr cQUndoView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QUndoView_heightForWidth ".} =
  type Cb = proc(super: QUndoViewheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QUndoView(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QUndoView, ): bool =


  fQUndoView_virtualbase_hasHeightForWidth(self.h)

type QUndoViewhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QUndoView, slot: proc(super: QUndoViewhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_hasHeightForWidth(self: ptr cQUndoView, slot: int): bool {.exportc: "miqt_exec_callback_QUndoView_hasHeightForWidth ".} =
  type Cb = proc(super: QUndoViewhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QUndoView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QUndoView, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQUndoView_virtualbase_paintEngine(self.h))

type QUndoViewpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QUndoView, slot: proc(super: QUndoViewpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_paintEngine(self: ptr cQUndoView, slot: int): pointer {.exportc: "miqt_exec_callback_QUndoView_paintEngine ".} =
  type Cb = proc(super: QUndoViewpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QUndoView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_keyReleaseEvent(self: QUndoView, event: gen_qevent.QKeyEvent): void =


  fQUndoView_virtualbase_keyReleaseEvent(self.h, event.h)

type QUndoViewkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QUndoView, slot: proc(super: QUndoViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_keyReleaseEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_keyReleaseEvent ".} =
  type Cb = proc(super: QUndoViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QUndoView(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QUndoView, event: gen_qcoreevent.QEvent): void =


  fQUndoView_virtualbase_enterEvent(self.h, event.h)

type QUndoViewenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QUndoView, slot: proc(super: QUndoViewenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_enterEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_enterEvent ".} =
  type Cb = proc(super: QUndoViewenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QUndoView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QUndoView, event: gen_qcoreevent.QEvent): void =


  fQUndoView_virtualbase_leaveEvent(self.h, event.h)

type QUndoViewleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QUndoView, slot: proc(super: QUndoViewleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_leaveEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_leaveEvent ".} =
  type Cb = proc(super: QUndoViewleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QUndoView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QUndoView, event: gen_qevent.QMoveEvent): void =


  fQUndoView_virtualbase_moveEvent(self.h, event.h)

type QUndoViewmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QUndoView, slot: proc(super: QUndoViewmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_moveEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_moveEvent ".} =
  type Cb = proc(super: QUndoViewmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QUndoView(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QUndoView, event: gen_qevent.QCloseEvent): void =


  fQUndoView_virtualbase_closeEvent(self.h, event.h)

type QUndoViewcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QUndoView, slot: proc(super: QUndoViewcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_closeEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_closeEvent ".} =
  type Cb = proc(super: QUndoViewcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QUndoView(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QUndoView, event: gen_qevent.QTabletEvent): void =


  fQUndoView_virtualbase_tabletEvent(self.h, event.h)

type QUndoViewtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QUndoView, slot: proc(super: QUndoViewtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_tabletEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_tabletEvent ".} =
  type Cb = proc(super: QUndoViewtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QUndoView(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QUndoView, event: gen_qevent.QActionEvent): void =


  fQUndoView_virtualbase_actionEvent(self.h, event.h)

type QUndoViewactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QUndoView, slot: proc(super: QUndoViewactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_actionEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_actionEvent ".} =
  type Cb = proc(super: QUndoViewactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QUndoView(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QUndoView, event: gen_qevent.QShowEvent): void =


  fQUndoView_virtualbase_showEvent(self.h, event.h)

type QUndoViewshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QUndoView, slot: proc(super: QUndoViewshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_showEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_showEvent ".} =
  type Cb = proc(super: QUndoViewshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QUndoView(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QUndoView, event: gen_qevent.QHideEvent): void =


  fQUndoView_virtualbase_hideEvent(self.h, event.h)

type QUndoViewhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QUndoView, slot: proc(super: QUndoViewhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_hideEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_hideEvent ".} =
  type Cb = proc(super: QUndoViewhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QUndoView(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QUndoView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQUndoView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QUndoViewnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QUndoView, slot: proc(super: QUndoViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_nativeEvent(self: ptr cQUndoView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QUndoView_nativeEvent ".} =
  type Cb = proc(super: QUndoViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QUndoView(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QUndoView, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQUndoView_virtualbase_metric(self.h, cint(param1))

type QUndoViewmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QUndoView, slot: proc(super: QUndoViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_metric(self: ptr cQUndoView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QUndoView_metric ".} =
  type Cb = proc(super: QUndoViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QUndoView(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QUndoView, painter: gen_qpainter.QPainter): void =


  fQUndoView_virtualbase_initPainter(self.h, painter.h)

type QUndoViewinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QUndoView, slot: proc(super: QUndoViewinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_initPainter(self: ptr cQUndoView, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QUndoView_initPainter ".} =
  type Cb = proc(super: QUndoViewinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QUndoView(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QUndoView, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQUndoView_virtualbase_redirected(self.h, offset.h))

type QUndoViewredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QUndoView, slot: proc(super: QUndoViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_redirected(self: ptr cQUndoView, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QUndoView_redirected ".} =
  type Cb = proc(super: QUndoViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QUndoView(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QUndoView, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQUndoView_virtualbase_sharedPainter(self.h))

type QUndoViewsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QUndoView, slot: proc(super: QUndoViewsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_sharedPainter(self: ptr cQUndoView, slot: int): pointer {.exportc: "miqt_exec_callback_QUndoView_sharedPainter ".} =
  type Cb = proc(super: QUndoViewsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QUndoView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_childEvent(self: QUndoView, event: gen_qcoreevent.QChildEvent): void =


  fQUndoView_virtualbase_childEvent(self.h, event.h)

type QUndoViewchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QUndoView, slot: proc(super: QUndoViewchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_childEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_childEvent ".} =
  type Cb = proc(super: QUndoViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QUndoView(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QUndoView, event: gen_qcoreevent.QEvent): void =


  fQUndoView_virtualbase_customEvent(self.h, event.h)

type QUndoViewcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QUndoView, slot: proc(super: QUndoViewcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_customEvent(self: ptr cQUndoView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoView_customEvent ".} =
  type Cb = proc(super: QUndoViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QUndoView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QUndoView, signal: gen_qmetaobject.QMetaMethod): void =


  fQUndoView_virtualbase_connectNotify(self.h, signal.h)

type QUndoViewconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QUndoView, slot: proc(super: QUndoViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_connectNotify(self: ptr cQUndoView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QUndoView_connectNotify ".} =
  type Cb = proc(super: QUndoViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QUndoView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QUndoView, signal: gen_qmetaobject.QMetaMethod): void =


  fQUndoView_virtualbase_disconnectNotify(self.h, signal.h)

type QUndoViewdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QUndoView, slot: proc(super: QUndoViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoView_disconnectNotify(self: ptr cQUndoView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QUndoView_disconnectNotify ".} =
  type Cb = proc(super: QUndoViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QUndoView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QUndoView): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQUndoView_staticMetaObject())
proc delete*(self: QUndoView) =
  fcQUndoView_delete(self.h)
