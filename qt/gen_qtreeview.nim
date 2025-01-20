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
{.compile("gen_qtreeview.cpp", cflags).}


import gen_qtreeview_types
export gen_qtreeview_types

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

type cQTreeView*{.exportc: "QTreeView", incompleteStruct.} = object

proc fcQTreeView_new(parent: pointer): ptr cQTreeView {.importc: "QTreeView_new".}
proc fcQTreeView_new2(): ptr cQTreeView {.importc: "QTreeView_new2".}
proc fcQTreeView_metaObject(self: pointer, ): pointer {.importc: "QTreeView_metaObject".}
proc fcQTreeView_metacast(self: pointer, param1: cstring): pointer {.importc: "QTreeView_metacast".}
proc fcQTreeView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTreeView_metacall".}
proc fcQTreeView_tr(s: cstring): struct_miqt_string {.importc: "QTreeView_tr".}
proc fcQTreeView_trUtf8(s: cstring): struct_miqt_string {.importc: "QTreeView_trUtf8".}
proc fcQTreeView_setModel(self: pointer, model: pointer): void {.importc: "QTreeView_setModel".}
proc fcQTreeView_setRootIndex(self: pointer, index: pointer): void {.importc: "QTreeView_setRootIndex".}
proc fcQTreeView_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QTreeView_setSelectionModel".}
proc fcQTreeView_header(self: pointer, ): pointer {.importc: "QTreeView_header".}
proc fcQTreeView_setHeader(self: pointer, header: pointer): void {.importc: "QTreeView_setHeader".}
proc fcQTreeView_autoExpandDelay(self: pointer, ): cint {.importc: "QTreeView_autoExpandDelay".}
proc fcQTreeView_setAutoExpandDelay(self: pointer, delay: cint): void {.importc: "QTreeView_setAutoExpandDelay".}
proc fcQTreeView_indentation(self: pointer, ): cint {.importc: "QTreeView_indentation".}
proc fcQTreeView_setIndentation(self: pointer, i: cint): void {.importc: "QTreeView_setIndentation".}
proc fcQTreeView_resetIndentation(self: pointer, ): void {.importc: "QTreeView_resetIndentation".}
proc fcQTreeView_rootIsDecorated(self: pointer, ): bool {.importc: "QTreeView_rootIsDecorated".}
proc fcQTreeView_setRootIsDecorated(self: pointer, show: bool): void {.importc: "QTreeView_setRootIsDecorated".}
proc fcQTreeView_uniformRowHeights(self: pointer, ): bool {.importc: "QTreeView_uniformRowHeights".}
proc fcQTreeView_setUniformRowHeights(self: pointer, uniform: bool): void {.importc: "QTreeView_setUniformRowHeights".}
proc fcQTreeView_itemsExpandable(self: pointer, ): bool {.importc: "QTreeView_itemsExpandable".}
proc fcQTreeView_setItemsExpandable(self: pointer, enable: bool): void {.importc: "QTreeView_setItemsExpandable".}
proc fcQTreeView_expandsOnDoubleClick(self: pointer, ): bool {.importc: "QTreeView_expandsOnDoubleClick".}
proc fcQTreeView_setExpandsOnDoubleClick(self: pointer, enable: bool): void {.importc: "QTreeView_setExpandsOnDoubleClick".}
proc fcQTreeView_columnViewportPosition(self: pointer, column: cint): cint {.importc: "QTreeView_columnViewportPosition".}
proc fcQTreeView_columnWidth(self: pointer, column: cint): cint {.importc: "QTreeView_columnWidth".}
proc fcQTreeView_setColumnWidth(self: pointer, column: cint, width: cint): void {.importc: "QTreeView_setColumnWidth".}
proc fcQTreeView_columnAt(self: pointer, x: cint): cint {.importc: "QTreeView_columnAt".}
proc fcQTreeView_isColumnHidden(self: pointer, column: cint): bool {.importc: "QTreeView_isColumnHidden".}
proc fcQTreeView_setColumnHidden(self: pointer, column: cint, hide: bool): void {.importc: "QTreeView_setColumnHidden".}
proc fcQTreeView_isHeaderHidden(self: pointer, ): bool {.importc: "QTreeView_isHeaderHidden".}
proc fcQTreeView_setHeaderHidden(self: pointer, hide: bool): void {.importc: "QTreeView_setHeaderHidden".}
proc fcQTreeView_isRowHidden(self: pointer, row: cint, parent: pointer): bool {.importc: "QTreeView_isRowHidden".}
proc fcQTreeView_setRowHidden(self: pointer, row: cint, parent: pointer, hide: bool): void {.importc: "QTreeView_setRowHidden".}
proc fcQTreeView_isFirstColumnSpanned(self: pointer, row: cint, parent: pointer): bool {.importc: "QTreeView_isFirstColumnSpanned".}
proc fcQTreeView_setFirstColumnSpanned(self: pointer, row: cint, parent: pointer, span: bool): void {.importc: "QTreeView_setFirstColumnSpanned".}
proc fcQTreeView_isExpanded(self: pointer, index: pointer): bool {.importc: "QTreeView_isExpanded".}
proc fcQTreeView_setExpanded(self: pointer, index: pointer, expand: bool): void {.importc: "QTreeView_setExpanded".}
proc fcQTreeView_setSortingEnabled(self: pointer, enable: bool): void {.importc: "QTreeView_setSortingEnabled".}
proc fcQTreeView_isSortingEnabled(self: pointer, ): bool {.importc: "QTreeView_isSortingEnabled".}
proc fcQTreeView_setAnimated(self: pointer, enable: bool): void {.importc: "QTreeView_setAnimated".}
proc fcQTreeView_isAnimated(self: pointer, ): bool {.importc: "QTreeView_isAnimated".}
proc fcQTreeView_setAllColumnsShowFocus(self: pointer, enable: bool): void {.importc: "QTreeView_setAllColumnsShowFocus".}
proc fcQTreeView_allColumnsShowFocus(self: pointer, ): bool {.importc: "QTreeView_allColumnsShowFocus".}
proc fcQTreeView_setWordWrap(self: pointer, on: bool): void {.importc: "QTreeView_setWordWrap".}
proc fcQTreeView_wordWrap(self: pointer, ): bool {.importc: "QTreeView_wordWrap".}
proc fcQTreeView_setTreePosition(self: pointer, logicalIndex: cint): void {.importc: "QTreeView_setTreePosition".}
proc fcQTreeView_treePosition(self: pointer, ): cint {.importc: "QTreeView_treePosition".}
proc fcQTreeView_keyboardSearch(self: pointer, search: struct_miqt_string): void {.importc: "QTreeView_keyboardSearch".}
proc fcQTreeView_visualRect(self: pointer, index: pointer): pointer {.importc: "QTreeView_visualRect".}
proc fcQTreeView_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QTreeView_scrollTo".}
proc fcQTreeView_indexAt(self: pointer, p: pointer): pointer {.importc: "QTreeView_indexAt".}
proc fcQTreeView_indexAbove(self: pointer, index: pointer): pointer {.importc: "QTreeView_indexAbove".}
proc fcQTreeView_indexBelow(self: pointer, index: pointer): pointer {.importc: "QTreeView_indexBelow".}
proc fcQTreeView_doItemsLayout(self: pointer, ): void {.importc: "QTreeView_doItemsLayout".}
proc fcQTreeView_reset(self: pointer, ): void {.importc: "QTreeView_reset".}
proc fcQTreeView_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.importc: "QTreeView_dataChanged".}
proc fcQTreeView_selectAll(self: pointer, ): void {.importc: "QTreeView_selectAll".}
proc fcQTreeView_expanded(self: pointer, index: pointer): void {.importc: "QTreeView_expanded".}
proc fQTreeView_connect_expanded(self: pointer, slot: int) {.importc: "QTreeView_connect_expanded".}
proc fcQTreeView_collapsed(self: pointer, index: pointer): void {.importc: "QTreeView_collapsed".}
proc fQTreeView_connect_collapsed(self: pointer, slot: int) {.importc: "QTreeView_connect_collapsed".}
proc fcQTreeView_hideColumn(self: pointer, column: cint): void {.importc: "QTreeView_hideColumn".}
proc fcQTreeView_showColumn(self: pointer, column: cint): void {.importc: "QTreeView_showColumn".}
proc fcQTreeView_expand(self: pointer, index: pointer): void {.importc: "QTreeView_expand".}
proc fcQTreeView_collapse(self: pointer, index: pointer): void {.importc: "QTreeView_collapse".}
proc fcQTreeView_resizeColumnToContents(self: pointer, column: cint): void {.importc: "QTreeView_resizeColumnToContents".}
proc fcQTreeView_sortByColumn(self: pointer, column: cint): void {.importc: "QTreeView_sortByColumn".}
proc fcQTreeView_sortByColumn2(self: pointer, column: cint, order: cint): void {.importc: "QTreeView_sortByColumn2".}
proc fcQTreeView_expandAll(self: pointer, ): void {.importc: "QTreeView_expandAll".}
proc fcQTreeView_expandRecursively(self: pointer, index: pointer): void {.importc: "QTreeView_expandRecursively".}
proc fcQTreeView_collapseAll(self: pointer, ): void {.importc: "QTreeView_collapseAll".}
proc fcQTreeView_expandToDepth(self: pointer, depth: cint): void {.importc: "QTreeView_expandToDepth".}
proc fcQTreeView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTreeView_tr2".}
proc fcQTreeView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTreeView_tr3".}
proc fcQTreeView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTreeView_trUtf82".}
proc fcQTreeView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTreeView_trUtf83".}
proc fcQTreeView_expandRecursively2(self: pointer, index: pointer, depth: cint): void {.importc: "QTreeView_expandRecursively2".}
proc fQTreeView_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTreeView_virtualbase_metaObject".}
proc fcQTreeView_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_metaObject".}
proc fQTreeView_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTreeView_virtualbase_metacast".}
proc fcQTreeView_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_metacast".}
proc fQTreeView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTreeView_virtualbase_metacall".}
proc fcQTreeView_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_metacall".}
proc fQTreeView_virtualbase_setModel(self: pointer, model: pointer): void{.importc: "QTreeView_virtualbase_setModel".}
proc fcQTreeView_override_virtual_setModel(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_setModel".}
proc fQTreeView_virtualbase_setRootIndex(self: pointer, index: pointer): void{.importc: "QTreeView_virtualbase_setRootIndex".}
proc fcQTreeView_override_virtual_setRootIndex(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_setRootIndex".}
proc fQTreeView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void{.importc: "QTreeView_virtualbase_setSelectionModel".}
proc fcQTreeView_override_virtual_setSelectionModel(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_setSelectionModel".}
proc fQTreeView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void{.importc: "QTreeView_virtualbase_keyboardSearch".}
proc fcQTreeView_override_virtual_keyboardSearch(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_keyboardSearch".}
proc fQTreeView_virtualbase_visualRect(self: pointer, index: pointer): pointer{.importc: "QTreeView_virtualbase_visualRect".}
proc fcQTreeView_override_virtual_visualRect(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_visualRect".}
proc fQTreeView_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void{.importc: "QTreeView_virtualbase_scrollTo".}
proc fcQTreeView_override_virtual_scrollTo(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_scrollTo".}
proc fQTreeView_virtualbase_indexAt(self: pointer, p: pointer): pointer{.importc: "QTreeView_virtualbase_indexAt".}
proc fcQTreeView_override_virtual_indexAt(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_indexAt".}
proc fQTreeView_virtualbase_doItemsLayout(self: pointer, ): void{.importc: "QTreeView_virtualbase_doItemsLayout".}
proc fcQTreeView_override_virtual_doItemsLayout(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_doItemsLayout".}
proc fQTreeView_virtualbase_reset(self: pointer, ): void{.importc: "QTreeView_virtualbase_reset".}
proc fcQTreeView_override_virtual_reset(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_reset".}
proc fQTreeView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void{.importc: "QTreeView_virtualbase_dataChanged".}
proc fcQTreeView_override_virtual_dataChanged(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_dataChanged".}
proc fQTreeView_virtualbase_selectAll(self: pointer, ): void{.importc: "QTreeView_virtualbase_selectAll".}
proc fcQTreeView_override_virtual_selectAll(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_selectAll".}
proc fQTreeView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QTreeView_virtualbase_verticalScrollbarValueChanged".}
proc fcQTreeView_override_virtual_verticalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_verticalScrollbarValueChanged".}
proc fQTreeView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QTreeView_virtualbase_scrollContentsBy".}
proc fcQTreeView_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_scrollContentsBy".}
proc fQTreeView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QTreeView_virtualbase_rowsInserted".}
proc fcQTreeView_override_virtual_rowsInserted(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_rowsInserted".}
proc fQTreeView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QTreeView_virtualbase_rowsAboutToBeRemoved".}
proc fcQTreeView_override_virtual_rowsAboutToBeRemoved(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_rowsAboutToBeRemoved".}
proc fQTreeView_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer{.importc: "QTreeView_virtualbase_moveCursor".}
proc fcQTreeView_override_virtual_moveCursor(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_moveCursor".}
proc fQTreeView_virtualbase_horizontalOffset(self: pointer, ): cint{.importc: "QTreeView_virtualbase_horizontalOffset".}
proc fcQTreeView_override_virtual_horizontalOffset(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_horizontalOffset".}
proc fQTreeView_virtualbase_verticalOffset(self: pointer, ): cint{.importc: "QTreeView_virtualbase_verticalOffset".}
proc fcQTreeView_override_virtual_verticalOffset(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_verticalOffset".}
proc fQTreeView_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void{.importc: "QTreeView_virtualbase_setSelection".}
proc fcQTreeView_override_virtual_setSelection(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_setSelection".}
proc fQTreeView_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer{.importc: "QTreeView_virtualbase_visualRegionForSelection".}
proc fcQTreeView_override_virtual_visualRegionForSelection(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_visualRegionForSelection".}
proc fQTreeView_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array{.importc: "QTreeView_virtualbase_selectedIndexes".}
proc fcQTreeView_override_virtual_selectedIndexes(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_selectedIndexes".}
proc fQTreeView_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_timerEvent".}
proc fcQTreeView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_timerEvent".}
proc fQTreeView_virtualbase_paintEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_paintEvent".}
proc fcQTreeView_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_paintEvent".}
proc fQTreeView_virtualbase_drawRow(self: pointer, painter: pointer, options: pointer, index: pointer): void{.importc: "QTreeView_virtualbase_drawRow".}
proc fcQTreeView_override_virtual_drawRow(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_drawRow".}
proc fQTreeView_virtualbase_drawBranches(self: pointer, painter: pointer, rect: pointer, index: pointer): void{.importc: "QTreeView_virtualbase_drawBranches".}
proc fcQTreeView_override_virtual_drawBranches(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_drawBranches".}
proc fQTreeView_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_mousePressEvent".}
proc fcQTreeView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_mousePressEvent".}
proc fQTreeView_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_mouseReleaseEvent".}
proc fcQTreeView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_mouseReleaseEvent".}
proc fQTreeView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_mouseDoubleClickEvent".}
proc fcQTreeView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_mouseDoubleClickEvent".}
proc fQTreeView_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_mouseMoveEvent".}
proc fcQTreeView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_mouseMoveEvent".}
proc fQTreeView_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_keyPressEvent".}
proc fcQTreeView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_keyPressEvent".}
proc fQTreeView_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_dragMoveEvent".}
proc fcQTreeView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_dragMoveEvent".}
proc fQTreeView_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QTreeView_virtualbase_viewportEvent".}
proc fcQTreeView_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_viewportEvent".}
proc fQTreeView_virtualbase_updateGeometries(self: pointer, ): void{.importc: "QTreeView_virtualbase_updateGeometries".}
proc fcQTreeView_override_virtual_updateGeometries(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_updateGeometries".}
proc fQTreeView_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QTreeView_virtualbase_viewportSizeHint".}
proc fcQTreeView_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_viewportSizeHint".}
proc fQTreeView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint{.importc: "QTreeView_virtualbase_sizeHintForColumn".}
proc fcQTreeView_override_virtual_sizeHintForColumn(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_sizeHintForColumn".}
proc fQTreeView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void{.importc: "QTreeView_virtualbase_horizontalScrollbarAction".}
proc fcQTreeView_override_virtual_horizontalScrollbarAction(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_horizontalScrollbarAction".}
proc fQTreeView_virtualbase_isIndexHidden(self: pointer, index: pointer): bool{.importc: "QTreeView_virtualbase_isIndexHidden".}
proc fcQTreeView_override_virtual_isIndexHidden(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_isIndexHidden".}
proc fQTreeView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void{.importc: "QTreeView_virtualbase_selectionChanged".}
proc fcQTreeView_override_virtual_selectionChanged(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_selectionChanged".}
proc fQTreeView_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void{.importc: "QTreeView_virtualbase_currentChanged".}
proc fcQTreeView_override_virtual_currentChanged(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_currentChanged".}
proc fQTreeView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint{.importc: "QTreeView_virtualbase_sizeHintForRow".}
proc fcQTreeView_override_virtual_sizeHintForRow(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_sizeHintForRow".}
proc fQTreeView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QTreeView_virtualbase_inputMethodQuery".}
proc fcQTreeView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_inputMethodQuery".}
proc fQTreeView_virtualbase_updateEditorData(self: pointer, ): void{.importc: "QTreeView_virtualbase_updateEditorData".}
proc fcQTreeView_override_virtual_updateEditorData(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_updateEditorData".}
proc fQTreeView_virtualbase_updateEditorGeometries(self: pointer, ): void{.importc: "QTreeView_virtualbase_updateEditorGeometries".}
proc fcQTreeView_override_virtual_updateEditorGeometries(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_updateEditorGeometries".}
proc fQTreeView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void{.importc: "QTreeView_virtualbase_verticalScrollbarAction".}
proc fcQTreeView_override_virtual_verticalScrollbarAction(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_verticalScrollbarAction".}
proc fQTreeView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QTreeView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQTreeView_override_virtual_horizontalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_horizontalScrollbarValueChanged".}
proc fQTreeView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void{.importc: "QTreeView_virtualbase_closeEditor".}
proc fcQTreeView_override_virtual_closeEditor(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_closeEditor".}
proc fQTreeView_virtualbase_commitData(self: pointer, editor: pointer): void{.importc: "QTreeView_virtualbase_commitData".}
proc fcQTreeView_override_virtual_commitData(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_commitData".}
proc fQTreeView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void{.importc: "QTreeView_virtualbase_editorDestroyed".}
proc fcQTreeView_override_virtual_editorDestroyed(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_editorDestroyed".}
proc fQTreeView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool{.importc: "QTreeView_virtualbase_edit2".}
proc fcQTreeView_override_virtual_edit2(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_edit2".}
proc fQTreeView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint{.importc: "QTreeView_virtualbase_selectionCommand".}
proc fcQTreeView_override_virtual_selectionCommand(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_selectionCommand".}
proc fQTreeView_virtualbase_startDrag(self: pointer, supportedActions: cint): void{.importc: "QTreeView_virtualbase_startDrag".}
proc fcQTreeView_override_virtual_startDrag(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_startDrag".}
proc fQTreeView_virtualbase_viewOptions(self: pointer, ): pointer{.importc: "QTreeView_virtualbase_viewOptions".}
proc fcQTreeView_override_virtual_viewOptions(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_viewOptions".}
proc fQTreeView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QTreeView_virtualbase_focusNextPrevChild".}
proc fcQTreeView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_focusNextPrevChild".}
proc fQTreeView_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTreeView_virtualbase_event".}
proc fcQTreeView_override_virtual_event(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_event".}
proc fQTreeView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_dragEnterEvent".}
proc fcQTreeView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_dragEnterEvent".}
proc fQTreeView_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_dragLeaveEvent".}
proc fcQTreeView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_dragLeaveEvent".}
proc fQTreeView_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_dropEvent".}
proc fcQTreeView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_dropEvent".}
proc fQTreeView_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_focusInEvent".}
proc fcQTreeView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_focusInEvent".}
proc fQTreeView_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_focusOutEvent".}
proc fcQTreeView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_focusOutEvent".}
proc fQTreeView_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_resizeEvent".}
proc fcQTreeView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_resizeEvent".}
proc fQTreeView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_inputMethodEvent".}
proc fcQTreeView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_inputMethodEvent".}
proc fQTreeView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QTreeView_virtualbase_eventFilter".}
proc fcQTreeView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_eventFilter".}
proc fQTreeView_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QTreeView_virtualbase_minimumSizeHint".}
proc fcQTreeView_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_minimumSizeHint".}
proc fQTreeView_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QTreeView_virtualbase_sizeHint".}
proc fcQTreeView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_sizeHint".}
proc fQTreeView_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QTreeView_virtualbase_setupViewport".}
proc fcQTreeView_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_setupViewport".}
proc fQTreeView_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QTreeView_virtualbase_wheelEvent".}
proc fcQTreeView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_wheelEvent".}
proc fQTreeView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QTreeView_virtualbase_contextMenuEvent".}
proc fcQTreeView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_contextMenuEvent".}
proc fQTreeView_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QTreeView_virtualbase_changeEvent".}
proc fcQTreeView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_changeEvent".}
proc fQTreeView_virtualbase_devType(self: pointer, ): cint{.importc: "QTreeView_virtualbase_devType".}
proc fcQTreeView_override_virtual_devType(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_devType".}
proc fQTreeView_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QTreeView_virtualbase_setVisible".}
proc fcQTreeView_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_setVisible".}
proc fQTreeView_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QTreeView_virtualbase_heightForWidth".}
proc fcQTreeView_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_heightForWidth".}
proc fQTreeView_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QTreeView_virtualbase_hasHeightForWidth".}
proc fcQTreeView_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_hasHeightForWidth".}
proc fQTreeView_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QTreeView_virtualbase_paintEngine".}
proc fcQTreeView_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_paintEngine".}
proc fQTreeView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_keyReleaseEvent".}
proc fcQTreeView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_keyReleaseEvent".}
proc fQTreeView_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_enterEvent".}
proc fcQTreeView_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_enterEvent".}
proc fQTreeView_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_leaveEvent".}
proc fcQTreeView_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_leaveEvent".}
proc fQTreeView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_moveEvent".}
proc fcQTreeView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_moveEvent".}
proc fQTreeView_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_closeEvent".}
proc fcQTreeView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_closeEvent".}
proc fQTreeView_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_tabletEvent".}
proc fcQTreeView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_tabletEvent".}
proc fQTreeView_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_actionEvent".}
proc fcQTreeView_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_actionEvent".}
proc fQTreeView_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_showEvent".}
proc fcQTreeView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_showEvent".}
proc fQTreeView_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_hideEvent".}
proc fcQTreeView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_hideEvent".}
proc fQTreeView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QTreeView_virtualbase_nativeEvent".}
proc fcQTreeView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_nativeEvent".}
proc fQTreeView_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QTreeView_virtualbase_metric".}
proc fcQTreeView_override_virtual_metric(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_metric".}
proc fQTreeView_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QTreeView_virtualbase_initPainter".}
proc fcQTreeView_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_initPainter".}
proc fQTreeView_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QTreeView_virtualbase_redirected".}
proc fcQTreeView_override_virtual_redirected(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_redirected".}
proc fQTreeView_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QTreeView_virtualbase_sharedPainter".}
proc fcQTreeView_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_sharedPainter".}
proc fQTreeView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_childEvent".}
proc fcQTreeView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_childEvent".}
proc fQTreeView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTreeView_virtualbase_customEvent".}
proc fcQTreeView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_customEvent".}
proc fQTreeView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTreeView_virtualbase_connectNotify".}
proc fcQTreeView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_connectNotify".}
proc fQTreeView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTreeView_virtualbase_disconnectNotify".}
proc fcQTreeView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTreeView_override_virtual_disconnectNotify".}
proc fcQTreeView_staticMetaObject(): pointer {.importc: "QTreeView_staticMetaObject".}
proc fcQTreeView_delete(self: pointer) {.importc: "QTreeView_delete".}


func init*(T: type QTreeView, h: ptr cQTreeView): QTreeView =
  T(h: h)
proc create*(T: type QTreeView, parent: gen_qwidget.QWidget): QTreeView =

  QTreeView.init(fcQTreeView_new(parent.h))
proc create*(T: type QTreeView, ): QTreeView =

  QTreeView.init(fcQTreeView_new2())
proc metaObject*(self: QTreeView, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTreeView_metaObject(self.h))

proc metacast*(self: QTreeView, param1: cstring): pointer =

  fcQTreeView_metacast(self.h, param1)

proc metacall*(self: QTreeView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTreeView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTreeView, s: cstring): string =

  let v_ms = fcQTreeView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QTreeView, s: cstring): string =

  let v_ms = fcQTreeView_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setModel*(self: QTreeView, model: gen_qabstractitemmodel.QAbstractItemModel): void =

  fcQTreeView_setModel(self.h, model.h)

proc setRootIndex*(self: QTreeView, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQTreeView_setRootIndex(self.h, index.h)

proc setSelectionModel*(self: QTreeView, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void =

  fcQTreeView_setSelectionModel(self.h, selectionModel.h)

proc header*(self: QTreeView, ): gen_qheaderview.QHeaderView =

  gen_qheaderview.QHeaderView(h: fcQTreeView_header(self.h))

proc setHeader*(self: QTreeView, header: gen_qheaderview.QHeaderView): void =

  fcQTreeView_setHeader(self.h, header.h)

proc autoExpandDelay*(self: QTreeView, ): cint =

  fcQTreeView_autoExpandDelay(self.h)

proc setAutoExpandDelay*(self: QTreeView, delay: cint): void =

  fcQTreeView_setAutoExpandDelay(self.h, delay)

proc indentation*(self: QTreeView, ): cint =

  fcQTreeView_indentation(self.h)

proc setIndentation*(self: QTreeView, i: cint): void =

  fcQTreeView_setIndentation(self.h, i)

proc resetIndentation*(self: QTreeView, ): void =

  fcQTreeView_resetIndentation(self.h)

proc rootIsDecorated*(self: QTreeView, ): bool =

  fcQTreeView_rootIsDecorated(self.h)

proc setRootIsDecorated*(self: QTreeView, show: bool): void =

  fcQTreeView_setRootIsDecorated(self.h, show)

proc uniformRowHeights*(self: QTreeView, ): bool =

  fcQTreeView_uniformRowHeights(self.h)

proc setUniformRowHeights*(self: QTreeView, uniform: bool): void =

  fcQTreeView_setUniformRowHeights(self.h, uniform)

proc itemsExpandable*(self: QTreeView, ): bool =

  fcQTreeView_itemsExpandable(self.h)

proc setItemsExpandable*(self: QTreeView, enable: bool): void =

  fcQTreeView_setItemsExpandable(self.h, enable)

proc expandsOnDoubleClick*(self: QTreeView, ): bool =

  fcQTreeView_expandsOnDoubleClick(self.h)

proc setExpandsOnDoubleClick*(self: QTreeView, enable: bool): void =

  fcQTreeView_setExpandsOnDoubleClick(self.h, enable)

proc columnViewportPosition*(self: QTreeView, column: cint): cint =

  fcQTreeView_columnViewportPosition(self.h, column)

proc columnWidth*(self: QTreeView, column: cint): cint =

  fcQTreeView_columnWidth(self.h, column)

proc setColumnWidth*(self: QTreeView, column: cint, width: cint): void =

  fcQTreeView_setColumnWidth(self.h, column, width)

proc columnAt*(self: QTreeView, x: cint): cint =

  fcQTreeView_columnAt(self.h, x)

proc isColumnHidden*(self: QTreeView, column: cint): bool =

  fcQTreeView_isColumnHidden(self.h, column)

proc setColumnHidden*(self: QTreeView, column: cint, hide: bool): void =

  fcQTreeView_setColumnHidden(self.h, column, hide)

proc isHeaderHidden*(self: QTreeView, ): bool =

  fcQTreeView_isHeaderHidden(self.h)

proc setHeaderHidden*(self: QTreeView, hide: bool): void =

  fcQTreeView_setHeaderHidden(self.h, hide)

proc isRowHidden*(self: QTreeView, row: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQTreeView_isRowHidden(self.h, row, parent.h)

proc setRowHidden*(self: QTreeView, row: cint, parent: gen_qabstractitemmodel.QModelIndex, hide: bool): void =

  fcQTreeView_setRowHidden(self.h, row, parent.h, hide)

proc isFirstColumnSpanned*(self: QTreeView, row: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQTreeView_isFirstColumnSpanned(self.h, row, parent.h)

proc setFirstColumnSpanned*(self: QTreeView, row: cint, parent: gen_qabstractitemmodel.QModelIndex, span: bool): void =

  fcQTreeView_setFirstColumnSpanned(self.h, row, parent.h, span)

proc isExpanded*(self: QTreeView, index: gen_qabstractitemmodel.QModelIndex): bool =

  fcQTreeView_isExpanded(self.h, index.h)

proc setExpanded*(self: QTreeView, index: gen_qabstractitemmodel.QModelIndex, expand: bool): void =

  fcQTreeView_setExpanded(self.h, index.h, expand)

proc setSortingEnabled*(self: QTreeView, enable: bool): void =

  fcQTreeView_setSortingEnabled(self.h, enable)

proc isSortingEnabled*(self: QTreeView, ): bool =

  fcQTreeView_isSortingEnabled(self.h)

proc setAnimated*(self: QTreeView, enable: bool): void =

  fcQTreeView_setAnimated(self.h, enable)

proc isAnimated*(self: QTreeView, ): bool =

  fcQTreeView_isAnimated(self.h)

proc setAllColumnsShowFocus*(self: QTreeView, enable: bool): void =

  fcQTreeView_setAllColumnsShowFocus(self.h, enable)

proc allColumnsShowFocus*(self: QTreeView, ): bool =

  fcQTreeView_allColumnsShowFocus(self.h)

proc setWordWrap*(self: QTreeView, on: bool): void =

  fcQTreeView_setWordWrap(self.h, on)

proc wordWrap*(self: QTreeView, ): bool =

  fcQTreeView_wordWrap(self.h)

proc setTreePosition*(self: QTreeView, logicalIndex: cint): void =

  fcQTreeView_setTreePosition(self.h, logicalIndex)

proc treePosition*(self: QTreeView, ): cint =

  fcQTreeView_treePosition(self.h)

proc keyboardSearch*(self: QTreeView, search: string): void =

  fcQTreeView_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

proc visualRect*(self: QTreeView, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQTreeView_visualRect(self.h, index.h))

proc scrollTo*(self: QTreeView, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void =

  fcQTreeView_scrollTo(self.h, index.h, cint(hint))

proc indexAt*(self: QTreeView, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQTreeView_indexAt(self.h, p.h))

proc indexAbove*(self: QTreeView, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQTreeView_indexAbove(self.h, index.h))

proc indexBelow*(self: QTreeView, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQTreeView_indexBelow(self.h, index.h))

proc doItemsLayout*(self: QTreeView, ): void =

  fcQTreeView_doItemsLayout(self.h)

proc reset*(self: QTreeView, ): void =

  fcQTreeView_reset(self.h)

proc dataChanged*(self: QTreeView, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void =

  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fcQTreeView_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

proc selectAll*(self: QTreeView, ): void =

  fcQTreeView_selectAll(self.h)

proc expanded*(self: QTreeView, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQTreeView_expanded(self.h, index.h)

proc miqt_exec_callback_QTreeView_expanded(slot: int, index: pointer) {.exportc.} =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](slotval1)

proc onexpanded*(self: QTreeView, slot: proc(index: gen_qabstractitemmodel.QModelIndex)) =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTreeView_connect_expanded(self.h, cast[int](addr tmp[]))
proc collapsed*(self: QTreeView, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQTreeView_collapsed(self.h, index.h)

proc miqt_exec_callback_QTreeView_collapsed(slot: int, index: pointer) {.exportc.} =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](slotval1)

proc oncollapsed*(self: QTreeView, slot: proc(index: gen_qabstractitemmodel.QModelIndex)) =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTreeView_connect_collapsed(self.h, cast[int](addr tmp[]))
proc hideColumn*(self: QTreeView, column: cint): void =

  fcQTreeView_hideColumn(self.h, column)

proc showColumn*(self: QTreeView, column: cint): void =

  fcQTreeView_showColumn(self.h, column)

proc expand*(self: QTreeView, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQTreeView_expand(self.h, index.h)

proc collapse*(self: QTreeView, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQTreeView_collapse(self.h, index.h)

proc resizeColumnToContents*(self: QTreeView, column: cint): void =

  fcQTreeView_resizeColumnToContents(self.h, column)

proc sortByColumn*(self: QTreeView, column: cint): void =

  fcQTreeView_sortByColumn(self.h, column)

proc sortByColumn2*(self: QTreeView, column: cint, order: gen_qnamespace.SortOrder): void =

  fcQTreeView_sortByColumn2(self.h, column, cint(order))

proc expandAll*(self: QTreeView, ): void =

  fcQTreeView_expandAll(self.h)

proc expandRecursively*(self: QTreeView, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQTreeView_expandRecursively(self.h, index.h)

proc collapseAll*(self: QTreeView, ): void =

  fcQTreeView_collapseAll(self.h)

proc expandToDepth*(self: QTreeView, depth: cint): void =

  fcQTreeView_expandToDepth(self.h, depth)

proc tr2*(_: type QTreeView, s: cstring, c: cstring): string =

  let v_ms = fcQTreeView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTreeView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTreeView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QTreeView, s: cstring, c: cstring): string =

  let v_ms = fcQTreeView_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QTreeView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTreeView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc expandRecursively2*(self: QTreeView, index: gen_qabstractitemmodel.QModelIndex, depth: cint): void =

  fcQTreeView_expandRecursively2(self.h, index.h, depth)

proc callVirtualBase_metaObject(self: QTreeView, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQTreeView_virtualbase_metaObject(self.h))

type QTreeViewmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QTreeView, slot: proc(super: QTreeViewmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_metaObject(self: ptr cQTreeView, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeView_metaObject ".} =
  type Cb = proc(super: QTreeViewmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QTreeView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QTreeView, param1: cstring): pointer =


  fQTreeView_virtualbase_metacast(self.h, param1)

type QTreeViewmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QTreeView, slot: proc(super: QTreeViewmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_metacast(self: ptr cQTreeView, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTreeView_metacast ".} =
  type Cb = proc(super: QTreeViewmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QTreeView(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QTreeView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTreeView_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTreeViewmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTreeView, slot: proc(super: QTreeViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_metacall(self: ptr cQTreeView, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTreeView_metacall ".} =
  type Cb = proc(super: QTreeViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTreeView(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setModel(self: QTreeView, model: gen_qabstractitemmodel.QAbstractItemModel): void =


  fQTreeView_virtualbase_setModel(self.h, model.h)

type QTreeViewsetModelBase* = proc(model: gen_qabstractitemmodel.QAbstractItemModel): void
proc onsetModel*(self: QTreeView, slot: proc(super: QTreeViewsetModelBase, model: gen_qabstractitemmodel.QAbstractItemModel): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewsetModelBase, model: gen_qabstractitemmodel.QAbstractItemModel): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_setModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_setModel(self: ptr cQTreeView, slot: int, model: pointer): void {.exportc: "miqt_exec_callback_QTreeView_setModel ".} =
  type Cb = proc(super: QTreeViewsetModelBase, model: gen_qabstractitemmodel.QAbstractItemModel): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(model: gen_qabstractitemmodel.QAbstractItemModel): auto =
    callVirtualBase_setModel(QTreeView(h: self), model)
  let slotval1 = gen_qabstractitemmodel.QAbstractItemModel(h: model)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setRootIndex(self: QTreeView, index: gen_qabstractitemmodel.QModelIndex): void =


  fQTreeView_virtualbase_setRootIndex(self.h, index.h)

type QTreeViewsetRootIndexBase* = proc(index: gen_qabstractitemmodel.QModelIndex): void
proc onsetRootIndex*(self: QTreeView, slot: proc(super: QTreeViewsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_setRootIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_setRootIndex(self: ptr cQTreeView, slot: int, index: pointer): void {.exportc: "miqt_exec_callback_QTreeView_setRootIndex ".} =
  type Cb = proc(super: QTreeViewsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_setRootIndex(QTreeView(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setSelectionModel(self: QTreeView, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void =


  fQTreeView_virtualbase_setSelectionModel(self.h, selectionModel.h)

type QTreeViewsetSelectionModelBase* = proc(selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
proc onsetSelectionModel*(self: QTreeView, slot: proc(super: QTreeViewsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_setSelectionModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_setSelectionModel(self: ptr cQTreeView, slot: int, selectionModel: pointer): void {.exportc: "miqt_exec_callback_QTreeView_setSelectionModel ".} =
  type Cb = proc(super: QTreeViewsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selectionModel: gen_qitemselectionmodel.QItemSelectionModel): auto =
    callVirtualBase_setSelectionModel(QTreeView(h: self), selectionModel)
  let slotval1 = gen_qitemselectionmodel.QItemSelectionModel(h: selectionModel)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyboardSearch(self: QTreeView, search: string): void =


  fQTreeView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

type QTreeViewkeyboardSearchBase* = proc(search: string): void
proc onkeyboardSearch*(self: QTreeView, slot: proc(super: QTreeViewkeyboardSearchBase, search: string): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewkeyboardSearchBase, search: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_keyboardSearch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_keyboardSearch(self: ptr cQTreeView, slot: int, search: struct_miqt_string): void {.exportc: "miqt_exec_callback_QTreeView_keyboardSearch ".} =
  type Cb = proc(super: QTreeViewkeyboardSearchBase, search: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(search: string): auto =
    callVirtualBase_keyboardSearch(QTreeView(h: self), search)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_visualRect(self: QTreeView, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect =


  gen_qrect.QRect(h: fQTreeView_virtualbase_visualRect(self.h, index.h))

type QTreeViewvisualRectBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
proc onvisualRect*(self: QTreeView, slot: proc(super: QTreeViewvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_visualRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_visualRect(self: ptr cQTreeView, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QTreeView_visualRect ".} =
  type Cb = proc(super: QTreeViewvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_visualRect(QTreeView(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_scrollTo(self: QTreeView, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void =


  fQTreeView_virtualbase_scrollTo(self.h, index.h, cint(hint))

type QTreeViewscrollToBase* = proc(index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
proc onscrollTo*(self: QTreeView, slot: proc(super: QTreeViewscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_scrollTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_scrollTo(self: ptr cQTreeView, slot: int, index: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QTreeView_scrollTo ".} =
  type Cb = proc(super: QTreeViewscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): auto =
    callVirtualBase_scrollTo(QTreeView(h: self), index, hint)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemview.QAbstractItemViewScrollHint(hint)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_indexAt(self: QTreeView, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQTreeView_virtualbase_indexAt(self.h, p.h))

type QTreeViewindexAtBase* = proc(p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
proc onindexAt*(self: QTreeView, slot: proc(super: QTreeViewindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_indexAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_indexAt(self: ptr cQTreeView, slot: int, p: pointer): pointer {.exportc: "miqt_exec_callback_QTreeView_indexAt ".} =
  type Cb = proc(super: QTreeViewindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(p: gen_qpoint.QPoint): auto =
    callVirtualBase_indexAt(QTreeView(h: self), p)
  let slotval1 = gen_qpoint.QPoint(h: p)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_doItemsLayout(self: QTreeView, ): void =


  fQTreeView_virtualbase_doItemsLayout(self.h)

type QTreeViewdoItemsLayoutBase* = proc(): void
proc ondoItemsLayout*(self: QTreeView, slot: proc(super: QTreeViewdoItemsLayoutBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewdoItemsLayoutBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_doItemsLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_doItemsLayout(self: ptr cQTreeView, slot: int): void {.exportc: "miqt_exec_callback_QTreeView_doItemsLayout ".} =
  type Cb = proc(super: QTreeViewdoItemsLayoutBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_doItemsLayout(QTreeView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_reset(self: QTreeView, ): void =


  fQTreeView_virtualbase_reset(self.h)

type QTreeViewresetBase* = proc(): void
proc onreset*(self: QTreeView, slot: proc(super: QTreeViewresetBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewresetBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_reset(self: ptr cQTreeView, slot: int): void {.exportc: "miqt_exec_callback_QTreeView_reset ".} =
  type Cb = proc(super: QTreeViewresetBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QTreeView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_dataChanged(self: QTreeView, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void =

  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]


  fQTreeView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

type QTreeViewdataChangedBase* = proc(topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
proc ondataChanged*(self: QTreeView, slot: proc(super: QTreeViewdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_dataChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_dataChanged(self: ptr cQTreeView, slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.exportc: "miqt_exec_callback_QTreeView_dataChanged ".} =
  type Cb = proc(super: QTreeViewdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): auto =
    callVirtualBase_dataChanged(QTreeView(h: self), topLeft, bottomRight, roles)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_selectAll(self: QTreeView, ): void =


  fQTreeView_virtualbase_selectAll(self.h)

type QTreeViewselectAllBase* = proc(): void
proc onselectAll*(self: QTreeView, slot: proc(super: QTreeViewselectAllBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewselectAllBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_selectAll(self: ptr cQTreeView, slot: int): void {.exportc: "miqt_exec_callback_QTreeView_selectAll ".} =
  type Cb = proc(super: QTreeViewselectAllBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_selectAll(QTreeView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_verticalScrollbarValueChanged(self: QTreeView, value: cint): void =


  fQTreeView_virtualbase_verticalScrollbarValueChanged(self.h, value)

type QTreeViewverticalScrollbarValueChangedBase* = proc(value: cint): void
proc onverticalScrollbarValueChanged*(self: QTreeView, slot: proc(super: QTreeViewverticalScrollbarValueChangedBase, value: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewverticalScrollbarValueChangedBase, value: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_verticalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_verticalScrollbarValueChanged(self: ptr cQTreeView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QTreeView_verticalScrollbarValueChanged ".} =
  type Cb = proc(super: QTreeViewverticalScrollbarValueChangedBase, value: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: cint): auto =
    callVirtualBase_verticalScrollbarValueChanged(QTreeView(h: self), value)
  let slotval1 = value


  nimfunc[](superCall, slotval1)
proc callVirtualBase_scrollContentsBy(self: QTreeView, dx: cint, dy: cint): void =


  fQTreeView_virtualbase_scrollContentsBy(self.h, dx, dy)

type QTreeViewscrollContentsByBase* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: QTreeView, slot: proc(super: QTreeViewscrollContentsByBase, dx: cint, dy: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewscrollContentsByBase, dx: cint, dy: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_scrollContentsBy(self: ptr cQTreeView, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QTreeView_scrollContentsBy ".} =
  type Cb = proc(super: QTreeViewscrollContentsByBase, dx: cint, dy: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(dx: cint, dy: cint): auto =
    callVirtualBase_scrollContentsBy(QTreeView(h: self), dx, dy)
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_rowsInserted(self: QTreeView, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void =


  fQTreeView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

type QTreeViewrowsInsertedBase* = proc(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
proc onrowsInserted*(self: QTreeView, slot: proc(super: QTreeViewrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_rowsInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_rowsInserted(self: ptr cQTreeView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QTreeView_rowsInserted ".} =
  type Cb = proc(super: QTreeViewrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): auto =
    callVirtualBase_rowsInserted(QTreeView(h: self), parent, start, endVal)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_rowsAboutToBeRemoved(self: QTreeView, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void =


  fQTreeView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

type QTreeViewrowsAboutToBeRemovedBase* = proc(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
proc onrowsAboutToBeRemoved*(self: QTreeView, slot: proc(super: QTreeViewrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_rowsAboutToBeRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_rowsAboutToBeRemoved(self: ptr cQTreeView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QTreeView_rowsAboutToBeRemoved ".} =
  type Cb = proc(super: QTreeViewrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): auto =
    callVirtualBase_rowsAboutToBeRemoved(QTreeView(h: self), parent, start, endVal)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_moveCursor(self: QTreeView, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQTreeView_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

type QTreeViewmoveCursorBase* = proc(cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
proc onmoveCursor*(self: QTreeView, slot: proc(super: QTreeViewmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_moveCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_moveCursor(self: ptr cQTreeView, slot: int, cursorAction: cint, modifiers: cint): pointer {.exportc: "miqt_exec_callback_QTreeView_moveCursor ".} =
  type Cb = proc(super: QTreeViewmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): auto =
    callVirtualBase_moveCursor(QTreeView(h: self), cursorAction, modifiers)
  let slotval1 = gen_qabstractitemview.QAbstractItemViewCursorAction(cursorAction)

  let slotval2 = gen_qnamespace.KeyboardModifier(modifiers)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_horizontalOffset(self: QTreeView, ): cint =


  fQTreeView_virtualbase_horizontalOffset(self.h)

type QTreeViewhorizontalOffsetBase* = proc(): cint
proc onhorizontalOffset*(self: QTreeView, slot: proc(super: QTreeViewhorizontalOffsetBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewhorizontalOffsetBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_horizontalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_horizontalOffset(self: ptr cQTreeView, slot: int): cint {.exportc: "miqt_exec_callback_QTreeView_horizontalOffset ".} =
  type Cb = proc(super: QTreeViewhorizontalOffsetBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_horizontalOffset(QTreeView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_verticalOffset(self: QTreeView, ): cint =


  fQTreeView_virtualbase_verticalOffset(self.h)

type QTreeViewverticalOffsetBase* = proc(): cint
proc onverticalOffset*(self: QTreeView, slot: proc(super: QTreeViewverticalOffsetBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewverticalOffsetBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_verticalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_verticalOffset(self: ptr cQTreeView, slot: int): cint {.exportc: "miqt_exec_callback_QTreeView_verticalOffset ".} =
  type Cb = proc(super: QTreeViewverticalOffsetBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_verticalOffset(QTreeView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setSelection(self: QTreeView, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void =


  fQTreeView_virtualbase_setSelection(self.h, rect.h, cint(command))

type QTreeViewsetSelectionBase* = proc(rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
proc onsetSelection*(self: QTreeView, slot: proc(super: QTreeViewsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_setSelection(self: ptr cQTreeView, slot: int, rect: pointer, command: cint): void {.exportc: "miqt_exec_callback_QTreeView_setSelection ".} =
  type Cb = proc(super: QTreeViewsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): auto =
    callVirtualBase_setSelection(QTreeView(h: self), rect, command)
  let slotval1 = gen_qrect.QRect(h: rect)

  let slotval2 = gen_qitemselectionmodel.QItemSelectionModelSelectionFlag(command)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_visualRegionForSelection(self: QTreeView, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion =


  gen_qregion.QRegion(h: fQTreeView_virtualbase_visualRegionForSelection(self.h, selection.h))

type QTreeViewvisualRegionForSelectionBase* = proc(selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
proc onvisualRegionForSelection*(self: QTreeView, slot: proc(super: QTreeViewvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_visualRegionForSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_visualRegionForSelection(self: ptr cQTreeView, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QTreeView_visualRegionForSelection ".} =
  type Cb = proc(super: QTreeViewvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selection: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_visualRegionForSelection(QTreeView(h: self), selection)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_selectedIndexes(self: QTreeView, ): seq[gen_qabstractitemmodel.QModelIndex] =


  var v_ma = fQTreeView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

type QTreeViewselectedIndexesBase* = proc(): seq[gen_qabstractitemmodel.QModelIndex]
proc onselectedIndexes*(self: QTreeView, slot: proc(super: QTreeViewselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_selectedIndexes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_selectedIndexes(self: ptr cQTreeView, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QTreeView_selectedIndexes ".} =
  type Cb = proc(super: QTreeViewselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_selectedIndexes(QTreeView(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_timerEvent(self: QTreeView, event: gen_qcoreevent.QTimerEvent): void =


  fQTreeView_virtualbase_timerEvent(self.h, event.h)

type QTreeViewtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTreeView, slot: proc(super: QTreeViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_timerEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_timerEvent ".} =
  type Cb = proc(super: QTreeViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTreeView(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QTreeView, event: gen_qevent.QPaintEvent): void =


  fQTreeView_virtualbase_paintEvent(self.h, event.h)

type QTreeViewpaintEventBase* = proc(event: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QTreeView, slot: proc(super: QTreeViewpaintEventBase, event: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewpaintEventBase, event: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_paintEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_paintEvent ".} =
  type Cb = proc(super: QTreeViewpaintEventBase, event: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QTreeView(h: self), event)
  let slotval1 = gen_qevent.QPaintEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_drawRow(self: QTreeView, painter: gen_qpainter.QPainter, options: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void =


  fQTreeView_virtualbase_drawRow(self.h, painter.h, options.h, index.h)

type QTreeViewdrawRowBase* = proc(painter: gen_qpainter.QPainter, options: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
proc ondrawRow*(self: QTreeView, slot: proc(super: QTreeViewdrawRowBase, painter: gen_qpainter.QPainter, options: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewdrawRowBase, painter: gen_qpainter.QPainter, options: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_drawRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_drawRow(self: ptr cQTreeView, slot: int, painter: pointer, options: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QTreeView_drawRow ".} =
  type Cb = proc(super: QTreeViewdrawRowBase, painter: gen_qpainter.QPainter, options: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, options: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_drawRow(QTreeView(h: self), painter, options, index)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionViewItem(h: options)

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_drawBranches(self: QTreeView, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, index: gen_qabstractitemmodel.QModelIndex): void =


  fQTreeView_virtualbase_drawBranches(self.h, painter.h, rect.h, index.h)

type QTreeViewdrawBranchesBase* = proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, index: gen_qabstractitemmodel.QModelIndex): void
proc ondrawBranches*(self: QTreeView, slot: proc(super: QTreeViewdrawBranchesBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewdrawBranchesBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_drawBranches(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_drawBranches(self: ptr cQTreeView, slot: int, painter: pointer, rect: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QTreeView_drawBranches ".} =
  type Cb = proc(super: QTreeViewdrawBranchesBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_drawBranches(QTreeView(h: self), painter, rect, index)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qrect.QRect(h: rect)

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_mousePressEvent(self: QTreeView, event: gen_qevent.QMouseEvent): void =


  fQTreeView_virtualbase_mousePressEvent(self.h, event.h)

type QTreeViewmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QTreeView, slot: proc(super: QTreeViewmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_mousePressEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_mousePressEvent ".} =
  type Cb = proc(super: QTreeViewmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QTreeView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QTreeView, event: gen_qevent.QMouseEvent): void =


  fQTreeView_virtualbase_mouseReleaseEvent(self.h, event.h)

type QTreeViewmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QTreeView, slot: proc(super: QTreeViewmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_mouseReleaseEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_mouseReleaseEvent ".} =
  type Cb = proc(super: QTreeViewmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QTreeView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QTreeView, event: gen_qevent.QMouseEvent): void =


  fQTreeView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QTreeViewmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QTreeView, slot: proc(super: QTreeViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_mouseDoubleClickEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QTreeViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QTreeView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QTreeView, event: gen_qevent.QMouseEvent): void =


  fQTreeView_virtualbase_mouseMoveEvent(self.h, event.h)

type QTreeViewmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QTreeView, slot: proc(super: QTreeViewmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_mouseMoveEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_mouseMoveEvent ".} =
  type Cb = proc(super: QTreeViewmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QTreeView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QTreeView, event: gen_qevent.QKeyEvent): void =


  fQTreeView_virtualbase_keyPressEvent(self.h, event.h)

type QTreeViewkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QTreeView, slot: proc(super: QTreeViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_keyPressEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_keyPressEvent ".} =
  type Cb = proc(super: QTreeViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QTreeView(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QTreeView, event: gen_qevent.QDragMoveEvent): void =


  fQTreeView_virtualbase_dragMoveEvent(self.h, event.h)

type QTreeViewdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QTreeView, slot: proc(super: QTreeViewdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_dragMoveEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_dragMoveEvent ".} =
  type Cb = proc(super: QTreeViewdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QTreeView(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_viewportEvent(self: QTreeView, event: gen_qcoreevent.QEvent): bool =


  fQTreeView_virtualbase_viewportEvent(self.h, event.h)

type QTreeViewviewportEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: QTreeView, slot: proc(super: QTreeViewviewportEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_viewportEvent(self: ptr cQTreeView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTreeView_viewportEvent ".} =
  type Cb = proc(super: QTreeViewviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_viewportEvent(QTreeView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_updateGeometries(self: QTreeView, ): void =


  fQTreeView_virtualbase_updateGeometries(self.h)

type QTreeViewupdateGeometriesBase* = proc(): void
proc onupdateGeometries*(self: QTreeView, slot: proc(super: QTreeViewupdateGeometriesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewupdateGeometriesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_updateGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_updateGeometries(self: ptr cQTreeView, slot: int): void {.exportc: "miqt_exec_callback_QTreeView_updateGeometries ".} =
  type Cb = proc(super: QTreeViewupdateGeometriesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateGeometries(QTreeView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_viewportSizeHint(self: QTreeView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTreeView_virtualbase_viewportSizeHint(self.h))

type QTreeViewviewportSizeHintBase* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: QTreeView, slot: proc(super: QTreeViewviewportSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewviewportSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_viewportSizeHint(self: ptr cQTreeView, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeView_viewportSizeHint ".} =
  type Cb = proc(super: QTreeViewviewportSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewportSizeHint(QTreeView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHintForColumn(self: QTreeView, column: cint): cint =


  fQTreeView_virtualbase_sizeHintForColumn(self.h, column)

type QTreeViewsizeHintForColumnBase* = proc(column: cint): cint
proc onsizeHintForColumn*(self: QTreeView, slot: proc(super: QTreeViewsizeHintForColumnBase, column: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewsizeHintForColumnBase, column: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_sizeHintForColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_sizeHintForColumn(self: ptr cQTreeView, slot: int, column: cint): cint {.exportc: "miqt_exec_callback_QTreeView_sizeHintForColumn ".} =
  type Cb = proc(super: QTreeViewsizeHintForColumnBase, column: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint): auto =
    callVirtualBase_sizeHintForColumn(QTreeView(h: self), column)
  let slotval1 = column


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_horizontalScrollbarAction(self: QTreeView, action: cint): void =


  fQTreeView_virtualbase_horizontalScrollbarAction(self.h, action)

type QTreeViewhorizontalScrollbarActionBase* = proc(action: cint): void
proc onhorizontalScrollbarAction*(self: QTreeView, slot: proc(super: QTreeViewhorizontalScrollbarActionBase, action: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewhorizontalScrollbarActionBase, action: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_horizontalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_horizontalScrollbarAction(self: ptr cQTreeView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QTreeView_horizontalScrollbarAction ".} =
  type Cb = proc(super: QTreeViewhorizontalScrollbarActionBase, action: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(action: cint): auto =
    callVirtualBase_horizontalScrollbarAction(QTreeView(h: self), action)
  let slotval1 = action


  nimfunc[](superCall, slotval1)
proc callVirtualBase_isIndexHidden(self: QTreeView, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQTreeView_virtualbase_isIndexHidden(self.h, index.h)

type QTreeViewisIndexHiddenBase* = proc(index: gen_qabstractitemmodel.QModelIndex): bool
proc onisIndexHidden*(self: QTreeView, slot: proc(super: QTreeViewisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_isIndexHidden(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_isIndexHidden(self: ptr cQTreeView, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QTreeView_isIndexHidden ".} =
  type Cb = proc(super: QTreeViewisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_isIndexHidden(QTreeView(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_selectionChanged(self: QTreeView, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void =


  fQTreeView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

type QTreeViewselectionChangedBase* = proc(selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
proc onselectionChanged*(self: QTreeView, slot: proc(super: QTreeViewselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_selectionChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_selectionChanged(self: ptr cQTreeView, slot: int, selected: pointer, deselected: pointer): void {.exportc: "miqt_exec_callback_QTreeView_selectionChanged ".} =
  type Cb = proc(super: QTreeViewselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_selectionChanged(QTreeView(h: self), selected, deselected)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel.QItemSelection(h: deselected)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_currentChanged(self: QTreeView, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void =


  fQTreeView_virtualbase_currentChanged(self.h, current.h, previous.h)

type QTreeViewcurrentChangedBase* = proc(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
proc oncurrentChanged*(self: QTreeView, slot: proc(super: QTreeViewcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_currentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_currentChanged(self: ptr cQTreeView, slot: int, current: pointer, previous: pointer): void {.exportc: "miqt_exec_callback_QTreeView_currentChanged ".} =
  type Cb = proc(super: QTreeViewcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_currentChanged(QTreeView(h: self), current, previous)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: previous)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_sizeHintForRow(self: QTreeView, row: cint): cint =


  fQTreeView_virtualbase_sizeHintForRow(self.h, row)

type QTreeViewsizeHintForRowBase* = proc(row: cint): cint
proc onsizeHintForRow*(self: QTreeView, slot: proc(super: QTreeViewsizeHintForRowBase, row: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewsizeHintForRowBase, row: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_sizeHintForRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_sizeHintForRow(self: ptr cQTreeView, slot: int, row: cint): cint {.exportc: "miqt_exec_callback_QTreeView_sizeHintForRow ".} =
  type Cb = proc(super: QTreeViewsizeHintForRowBase, row: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint): auto =
    callVirtualBase_sizeHintForRow(QTreeView(h: self), row)
  let slotval1 = row


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_inputMethodQuery(self: QTreeView, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQTreeView_virtualbase_inputMethodQuery(self.h, cint(query)))

type QTreeViewinputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QTreeView, slot: proc(super: QTreeViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_inputMethodQuery(self: ptr cQTreeView, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QTreeView_inputMethodQuery ".} =
  type Cb = proc(super: QTreeViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QTreeView(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_updateEditorData(self: QTreeView, ): void =


  fQTreeView_virtualbase_updateEditorData(self.h)

type QTreeViewupdateEditorDataBase* = proc(): void
proc onupdateEditorData*(self: QTreeView, slot: proc(super: QTreeViewupdateEditorDataBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewupdateEditorDataBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_updateEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_updateEditorData(self: ptr cQTreeView, slot: int): void {.exportc: "miqt_exec_callback_QTreeView_updateEditorData ".} =
  type Cb = proc(super: QTreeViewupdateEditorDataBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateEditorData(QTreeView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_updateEditorGeometries(self: QTreeView, ): void =


  fQTreeView_virtualbase_updateEditorGeometries(self.h)

type QTreeViewupdateEditorGeometriesBase* = proc(): void
proc onupdateEditorGeometries*(self: QTreeView, slot: proc(super: QTreeViewupdateEditorGeometriesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewupdateEditorGeometriesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_updateEditorGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_updateEditorGeometries(self: ptr cQTreeView, slot: int): void {.exportc: "miqt_exec_callback_QTreeView_updateEditorGeometries ".} =
  type Cb = proc(super: QTreeViewupdateEditorGeometriesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateEditorGeometries(QTreeView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_verticalScrollbarAction(self: QTreeView, action: cint): void =


  fQTreeView_virtualbase_verticalScrollbarAction(self.h, action)

type QTreeViewverticalScrollbarActionBase* = proc(action: cint): void
proc onverticalScrollbarAction*(self: QTreeView, slot: proc(super: QTreeViewverticalScrollbarActionBase, action: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewverticalScrollbarActionBase, action: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_verticalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_verticalScrollbarAction(self: ptr cQTreeView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QTreeView_verticalScrollbarAction ".} =
  type Cb = proc(super: QTreeViewverticalScrollbarActionBase, action: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(action: cint): auto =
    callVirtualBase_verticalScrollbarAction(QTreeView(h: self), action)
  let slotval1 = action


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalScrollbarValueChanged(self: QTreeView, value: cint): void =


  fQTreeView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

type QTreeViewhorizontalScrollbarValueChangedBase* = proc(value: cint): void
proc onhorizontalScrollbarValueChanged*(self: QTreeView, slot: proc(super: QTreeViewhorizontalScrollbarValueChangedBase, value: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewhorizontalScrollbarValueChangedBase, value: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_horizontalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_horizontalScrollbarValueChanged(self: ptr cQTreeView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QTreeView_horizontalScrollbarValueChanged ".} =
  type Cb = proc(super: QTreeViewhorizontalScrollbarValueChangedBase, value: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: cint): auto =
    callVirtualBase_horizontalScrollbarValueChanged(QTreeView(h: self), value)
  let slotval1 = value


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEditor(self: QTreeView, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void =


  fQTreeView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

type QTreeViewcloseEditorBase* = proc(editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
proc oncloseEditor*(self: QTreeView, slot: proc(super: QTreeViewcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_closeEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_closeEditor(self: ptr cQTreeView, slot: int, editor: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QTreeView_closeEditor ".} =
  type Cb = proc(super: QTreeViewcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): auto =
    callVirtualBase_closeEditor(QTreeView(h: self), editor, hint)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint(hint)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_commitData(self: QTreeView, editor: gen_qwidget.QWidget): void =


  fQTreeView_virtualbase_commitData(self.h, editor.h)

type QTreeViewcommitDataBase* = proc(editor: gen_qwidget.QWidget): void
proc oncommitData*(self: QTreeView, slot: proc(super: QTreeViewcommitDataBase, editor: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewcommitDataBase, editor: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_commitData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_commitData(self: ptr cQTreeView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QTreeView_commitData ".} =
  type Cb = proc(super: QTreeViewcommitDataBase, editor: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget): auto =
    callVirtualBase_commitData(QTreeView(h: self), editor)
  let slotval1 = gen_qwidget.QWidget(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_editorDestroyed(self: QTreeView, editor: gen_qobject.QObject): void =


  fQTreeView_virtualbase_editorDestroyed(self.h, editor.h)

type QTreeVieweditorDestroyedBase* = proc(editor: gen_qobject.QObject): void
proc oneditorDestroyed*(self: QTreeView, slot: proc(super: QTreeVieweditorDestroyedBase, editor: gen_qobject.QObject): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeVieweditorDestroyedBase, editor: gen_qobject.QObject): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_editorDestroyed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_editorDestroyed(self: ptr cQTreeView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QTreeView_editorDestroyed ".} =
  type Cb = proc(super: QTreeVieweditorDestroyedBase, editor: gen_qobject.QObject): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qobject.QObject): auto =
    callVirtualBase_editorDestroyed(QTreeView(h: self), editor)
  let slotval1 = gen_qobject.QObject(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_edit2(self: QTreeView, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool =


  fQTreeView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

type QTreeViewedit2Base* = proc(index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
proc onedit2*(self: QTreeView, slot: proc(super: QTreeViewedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_edit2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_edit2(self: ptr cQTreeView, slot: int, index: pointer, trigger: cint, event: pointer): bool {.exportc: "miqt_exec_callback_QTreeView_edit2 ".} =
  type Cb = proc(super: QTreeViewedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_edit2(QTreeView(h: self), index, trigger, event)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemview.QAbstractItemViewEditTrigger(trigger)

  let slotval3 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_selectionCommand(self: QTreeView, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag =


  gen_qitemselectionmodel.QItemSelectionModelSelectionFlag(fQTreeView_virtualbase_selectionCommand(self.h, index.h, event.h))

type QTreeViewselectionCommandBase* = proc(index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
proc onselectionCommand*(self: QTreeView, slot: proc(super: QTreeViewselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_selectionCommand(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_selectionCommand(self: ptr cQTreeView, slot: int, index: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QTreeView_selectionCommand ".} =
  type Cb = proc(super: QTreeViewselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_selectionCommand(QTreeView(h: self), index, event)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  cint(virtualReturn)
proc callVirtualBase_startDrag(self: QTreeView, supportedActions: gen_qnamespace.DropAction): void =


  fQTreeView_virtualbase_startDrag(self.h, cint(supportedActions))

type QTreeViewstartDragBase* = proc(supportedActions: gen_qnamespace.DropAction): void
proc onstartDrag*(self: QTreeView, slot: proc(super: QTreeViewstartDragBase, supportedActions: gen_qnamespace.DropAction): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewstartDragBase, supportedActions: gen_qnamespace.DropAction): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_startDrag(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_startDrag(self: ptr cQTreeView, slot: int, supportedActions: cint): void {.exportc: "miqt_exec_callback_QTreeView_startDrag ".} =
  type Cb = proc(super: QTreeViewstartDragBase, supportedActions: gen_qnamespace.DropAction): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(supportedActions: gen_qnamespace.DropAction): auto =
    callVirtualBase_startDrag(QTreeView(h: self), supportedActions)
  let slotval1 = gen_qnamespace.DropAction(supportedActions)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_viewOptions(self: QTreeView, ): gen_qstyleoption.QStyleOptionViewItem =


  gen_qstyleoption.QStyleOptionViewItem(h: fQTreeView_virtualbase_viewOptions(self.h))

type QTreeViewviewOptionsBase* = proc(): gen_qstyleoption.QStyleOptionViewItem
proc onviewOptions*(self: QTreeView, slot: proc(super: QTreeViewviewOptionsBase): gen_qstyleoption.QStyleOptionViewItem) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewviewOptionsBase): gen_qstyleoption.QStyleOptionViewItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_viewOptions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_viewOptions(self: ptr cQTreeView, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeView_viewOptions ".} =
  type Cb = proc(super: QTreeViewviewOptionsBase): gen_qstyleoption.QStyleOptionViewItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewOptions(QTreeView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QTreeView, next: bool): bool =


  fQTreeView_virtualbase_focusNextPrevChild(self.h, next)

type QTreeViewfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QTreeView, slot: proc(super: QTreeViewfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_focusNextPrevChild(self: ptr cQTreeView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QTreeView_focusNextPrevChild ".} =
  type Cb = proc(super: QTreeViewfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QTreeView(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QTreeView, event: gen_qcoreevent.QEvent): bool =


  fQTreeView_virtualbase_event(self.h, event.h)

type QTreeVieweventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTreeView, slot: proc(super: QTreeVieweventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTreeVieweventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_event(self: ptr cQTreeView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTreeView_event ".} =
  type Cb = proc(super: QTreeVieweventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTreeView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_dragEnterEvent(self: QTreeView, event: gen_qevent.QDragEnterEvent): void =


  fQTreeView_virtualbase_dragEnterEvent(self.h, event.h)

type QTreeViewdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QTreeView, slot: proc(super: QTreeViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_dragEnterEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_dragEnterEvent ".} =
  type Cb = proc(super: QTreeViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QTreeView(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QTreeView, event: gen_qevent.QDragLeaveEvent): void =


  fQTreeView_virtualbase_dragLeaveEvent(self.h, event.h)

type QTreeViewdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QTreeView, slot: proc(super: QTreeViewdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_dragLeaveEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_dragLeaveEvent ".} =
  type Cb = proc(super: QTreeViewdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QTreeView(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QTreeView, event: gen_qevent.QDropEvent): void =


  fQTreeView_virtualbase_dropEvent(self.h, event.h)

type QTreeViewdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QTreeView, slot: proc(super: QTreeViewdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_dropEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_dropEvent ".} =
  type Cb = proc(super: QTreeViewdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QTreeView(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QTreeView, event: gen_qevent.QFocusEvent): void =


  fQTreeView_virtualbase_focusInEvent(self.h, event.h)

type QTreeViewfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QTreeView, slot: proc(super: QTreeViewfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_focusInEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_focusInEvent ".} =
  type Cb = proc(super: QTreeViewfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QTreeView(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QTreeView, event: gen_qevent.QFocusEvent): void =


  fQTreeView_virtualbase_focusOutEvent(self.h, event.h)

type QTreeViewfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QTreeView, slot: proc(super: QTreeViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_focusOutEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_focusOutEvent ".} =
  type Cb = proc(super: QTreeViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QTreeView(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QTreeView, event: gen_qevent.QResizeEvent): void =


  fQTreeView_virtualbase_resizeEvent(self.h, event.h)

type QTreeViewresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QTreeView, slot: proc(super: QTreeViewresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_resizeEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_resizeEvent ".} =
  type Cb = proc(super: QTreeViewresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QTreeView(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QTreeView, event: gen_qevent.QInputMethodEvent): void =


  fQTreeView_virtualbase_inputMethodEvent(self.h, event.h)

type QTreeViewinputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QTreeView, slot: proc(super: QTreeViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_inputMethodEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_inputMethodEvent ".} =
  type Cb = proc(super: QTreeViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QTreeView(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QTreeView, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQTreeView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QTreeVieweventFilterBase* = proc(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTreeView, slot: proc(super: QTreeVieweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTreeVieweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_eventFilter(self: ptr cQTreeView, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTreeView_eventFilter ".} =
  type Cb = proc(super: QTreeVieweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTreeView(h: self), objectVal, event)
  let slotval1 = gen_qobject.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_minimumSizeHint(self: QTreeView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTreeView_virtualbase_minimumSizeHint(self.h))

type QTreeViewminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QTreeView, slot: proc(super: QTreeViewminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_minimumSizeHint(self: ptr cQTreeView, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeView_minimumSizeHint ".} =
  type Cb = proc(super: QTreeViewminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QTreeView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHint(self: QTreeView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTreeView_virtualbase_sizeHint(self.h))

type QTreeViewsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QTreeView, slot: proc(super: QTreeViewsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_sizeHint(self: ptr cQTreeView, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeView_sizeHint ".} =
  type Cb = proc(super: QTreeViewsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QTreeView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setupViewport(self: QTreeView, viewport: gen_qwidget.QWidget): void =


  fQTreeView_virtualbase_setupViewport(self.h, viewport.h)

type QTreeViewsetupViewportBase* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: QTreeView, slot: proc(super: QTreeViewsetupViewportBase, viewport: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_setupViewport(self: ptr cQTreeView, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QTreeView_setupViewport ".} =
  type Cb = proc(super: QTreeViewsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(viewport: gen_qwidget.QWidget): auto =
    callVirtualBase_setupViewport(QTreeView(h: self), viewport)
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QTreeView, param1: gen_qevent.QWheelEvent): void =


  fQTreeView_virtualbase_wheelEvent(self.h, param1.h)

type QTreeViewwheelEventBase* = proc(param1: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QTreeView, slot: proc(super: QTreeViewwheelEventBase, param1: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_wheelEvent(self: ptr cQTreeView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTreeView_wheelEvent ".} =
  type Cb = proc(super: QTreeViewwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QTreeView(h: self), param1)
  let slotval1 = gen_qevent.QWheelEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QTreeView, param1: gen_qevent.QContextMenuEvent): void =


  fQTreeView_virtualbase_contextMenuEvent(self.h, param1.h)

type QTreeViewcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QTreeView, slot: proc(super: QTreeViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_contextMenuEvent(self: ptr cQTreeView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTreeView_contextMenuEvent ".} =
  type Cb = proc(super: QTreeViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QTreeView(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QTreeView, param1: gen_qcoreevent.QEvent): void =


  fQTreeView_virtualbase_changeEvent(self.h, param1.h)

type QTreeViewchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QTreeView, slot: proc(super: QTreeViewchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_changeEvent(self: ptr cQTreeView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTreeView_changeEvent ".} =
  type Cb = proc(super: QTreeViewchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QTreeView(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QTreeView, ): cint =


  fQTreeView_virtualbase_devType(self.h)

type QTreeViewdevTypeBase* = proc(): cint
proc ondevType*(self: QTreeView, slot: proc(super: QTreeViewdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_devType(self: ptr cQTreeView, slot: int): cint {.exportc: "miqt_exec_callback_QTreeView_devType ".} =
  type Cb = proc(super: QTreeViewdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QTreeView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QTreeView, visible: bool): void =


  fQTreeView_virtualbase_setVisible(self.h, visible)

type QTreeViewsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QTreeView, slot: proc(super: QTreeViewsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_setVisible(self: ptr cQTreeView, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QTreeView_setVisible ".} =
  type Cb = proc(super: QTreeViewsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QTreeView(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QTreeView, param1: cint): cint =


  fQTreeView_virtualbase_heightForWidth(self.h, param1)

type QTreeViewheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QTreeView, slot: proc(super: QTreeViewheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_heightForWidth(self: ptr cQTreeView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTreeView_heightForWidth ".} =
  type Cb = proc(super: QTreeViewheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QTreeView(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QTreeView, ): bool =


  fQTreeView_virtualbase_hasHeightForWidth(self.h)

type QTreeViewhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QTreeView, slot: proc(super: QTreeViewhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_hasHeightForWidth(self: ptr cQTreeView, slot: int): bool {.exportc: "miqt_exec_callback_QTreeView_hasHeightForWidth ".} =
  type Cb = proc(super: QTreeViewhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QTreeView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QTreeView, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQTreeView_virtualbase_paintEngine(self.h))

type QTreeViewpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QTreeView, slot: proc(super: QTreeViewpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_paintEngine(self: ptr cQTreeView, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeView_paintEngine ".} =
  type Cb = proc(super: QTreeViewpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QTreeView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_keyReleaseEvent(self: QTreeView, event: gen_qevent.QKeyEvent): void =


  fQTreeView_virtualbase_keyReleaseEvent(self.h, event.h)

type QTreeViewkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QTreeView, slot: proc(super: QTreeViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_keyReleaseEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_keyReleaseEvent ".} =
  type Cb = proc(super: QTreeViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QTreeView(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QTreeView, event: gen_qcoreevent.QEvent): void =


  fQTreeView_virtualbase_enterEvent(self.h, event.h)

type QTreeViewenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QTreeView, slot: proc(super: QTreeViewenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_enterEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_enterEvent ".} =
  type Cb = proc(super: QTreeViewenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QTreeView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QTreeView, event: gen_qcoreevent.QEvent): void =


  fQTreeView_virtualbase_leaveEvent(self.h, event.h)

type QTreeViewleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QTreeView, slot: proc(super: QTreeViewleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_leaveEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_leaveEvent ".} =
  type Cb = proc(super: QTreeViewleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QTreeView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QTreeView, event: gen_qevent.QMoveEvent): void =


  fQTreeView_virtualbase_moveEvent(self.h, event.h)

type QTreeViewmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QTreeView, slot: proc(super: QTreeViewmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_moveEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_moveEvent ".} =
  type Cb = proc(super: QTreeViewmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QTreeView(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QTreeView, event: gen_qevent.QCloseEvent): void =


  fQTreeView_virtualbase_closeEvent(self.h, event.h)

type QTreeViewcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QTreeView, slot: proc(super: QTreeViewcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_closeEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_closeEvent ".} =
  type Cb = proc(super: QTreeViewcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QTreeView(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QTreeView, event: gen_qevent.QTabletEvent): void =


  fQTreeView_virtualbase_tabletEvent(self.h, event.h)

type QTreeViewtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QTreeView, slot: proc(super: QTreeViewtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_tabletEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_tabletEvent ".} =
  type Cb = proc(super: QTreeViewtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QTreeView(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QTreeView, event: gen_qevent.QActionEvent): void =


  fQTreeView_virtualbase_actionEvent(self.h, event.h)

type QTreeViewactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QTreeView, slot: proc(super: QTreeViewactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_actionEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_actionEvent ".} =
  type Cb = proc(super: QTreeViewactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QTreeView(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QTreeView, event: gen_qevent.QShowEvent): void =


  fQTreeView_virtualbase_showEvent(self.h, event.h)

type QTreeViewshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QTreeView, slot: proc(super: QTreeViewshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_showEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_showEvent ".} =
  type Cb = proc(super: QTreeViewshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QTreeView(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QTreeView, event: gen_qevent.QHideEvent): void =


  fQTreeView_virtualbase_hideEvent(self.h, event.h)

type QTreeViewhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QTreeView, slot: proc(super: QTreeViewhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_hideEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_hideEvent ".} =
  type Cb = proc(super: QTreeViewhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QTreeView(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QTreeView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQTreeView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QTreeViewnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QTreeView, slot: proc(super: QTreeViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_nativeEvent(self: ptr cQTreeView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QTreeView_nativeEvent ".} =
  type Cb = proc(super: QTreeViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QTreeView(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QTreeView, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQTreeView_virtualbase_metric(self.h, cint(param1))

type QTreeViewmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QTreeView, slot: proc(super: QTreeViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_metric(self: ptr cQTreeView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTreeView_metric ".} =
  type Cb = proc(super: QTreeViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QTreeView(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QTreeView, painter: gen_qpainter.QPainter): void =


  fQTreeView_virtualbase_initPainter(self.h, painter.h)

type QTreeViewinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QTreeView, slot: proc(super: QTreeViewinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_initPainter(self: ptr cQTreeView, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QTreeView_initPainter ".} =
  type Cb = proc(super: QTreeViewinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QTreeView(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QTreeView, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQTreeView_virtualbase_redirected(self.h, offset.h))

type QTreeViewredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QTreeView, slot: proc(super: QTreeViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_redirected(self: ptr cQTreeView, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QTreeView_redirected ".} =
  type Cb = proc(super: QTreeViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QTreeView(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QTreeView, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQTreeView_virtualbase_sharedPainter(self.h))

type QTreeViewsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QTreeView, slot: proc(super: QTreeViewsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_sharedPainter(self: ptr cQTreeView, slot: int): pointer {.exportc: "miqt_exec_callback_QTreeView_sharedPainter ".} =
  type Cb = proc(super: QTreeViewsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QTreeView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_childEvent(self: QTreeView, event: gen_qcoreevent.QChildEvent): void =


  fQTreeView_virtualbase_childEvent(self.h, event.h)

type QTreeViewchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTreeView, slot: proc(super: QTreeViewchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_childEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_childEvent ".} =
  type Cb = proc(super: QTreeViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTreeView(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTreeView, event: gen_qcoreevent.QEvent): void =


  fQTreeView_virtualbase_customEvent(self.h, event.h)

type QTreeViewcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTreeView, slot: proc(super: QTreeViewcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_customEvent(self: ptr cQTreeView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTreeView_customEvent ".} =
  type Cb = proc(super: QTreeViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTreeView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTreeView, signal: gen_qmetaobject.QMetaMethod): void =


  fQTreeView_virtualbase_connectNotify(self.h, signal.h)

type QTreeViewconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTreeView, slot: proc(super: QTreeViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_connectNotify(self: ptr cQTreeView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTreeView_connectNotify ".} =
  type Cb = proc(super: QTreeViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTreeView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTreeView, signal: gen_qmetaobject.QMetaMethod): void =


  fQTreeView_virtualbase_disconnectNotify(self.h, signal.h)

type QTreeViewdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTreeView, slot: proc(super: QTreeViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTreeViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTreeView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTreeView_disconnectNotify(self: ptr cQTreeView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTreeView_disconnectNotify ".} =
  type Cb = proc(super: QTreeViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTreeView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QTreeView): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQTreeView_staticMetaObject())
proc delete*(self: QTreeView) =
  fcQTreeView_delete(self.h)
