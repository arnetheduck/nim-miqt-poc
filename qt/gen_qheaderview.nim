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
{.compile("gen_qheaderview.cpp", cflags).}


type QHeaderViewResizeMode* = cint
const
  QHeaderViewInteractive* = 0
  QHeaderViewStretch* = 1
  QHeaderViewFixed* = 2
  QHeaderViewResizeToContents* = 3
  QHeaderViewCustom* = 2



import gen_qheaderview_types
export gen_qheaderview_types

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

type cQHeaderView*{.exportc: "QHeaderView", incompleteStruct.} = object

proc fcQHeaderView_new(orientation: cint): ptr cQHeaderView {.importc: "QHeaderView_new".}
proc fcQHeaderView_new2(orientation: cint, parent: pointer): ptr cQHeaderView {.importc: "QHeaderView_new2".}
proc fcQHeaderView_metaObject(self: pointer, ): pointer {.importc: "QHeaderView_metaObject".}
proc fcQHeaderView_metacast(self: pointer, param1: cstring): pointer {.importc: "QHeaderView_metacast".}
proc fcQHeaderView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QHeaderView_metacall".}
proc fcQHeaderView_tr(s: cstring): struct_miqt_string {.importc: "QHeaderView_tr".}
proc fcQHeaderView_trUtf8(s: cstring): struct_miqt_string {.importc: "QHeaderView_trUtf8".}
proc fcQHeaderView_setModel(self: pointer, model: pointer): void {.importc: "QHeaderView_setModel".}
proc fcQHeaderView_orientation(self: pointer, ): cint {.importc: "QHeaderView_orientation".}
proc fcQHeaderView_offset(self: pointer, ): cint {.importc: "QHeaderView_offset".}
proc fcQHeaderView_length(self: pointer, ): cint {.importc: "QHeaderView_length".}
proc fcQHeaderView_sizeHint(self: pointer, ): pointer {.importc: "QHeaderView_sizeHint".}
proc fcQHeaderView_setVisible(self: pointer, v: bool): void {.importc: "QHeaderView_setVisible".}
proc fcQHeaderView_sectionSizeHint(self: pointer, logicalIndex: cint): cint {.importc: "QHeaderView_sectionSizeHint".}
proc fcQHeaderView_visualIndexAt(self: pointer, position: cint): cint {.importc: "QHeaderView_visualIndexAt".}
proc fcQHeaderView_logicalIndexAt(self: pointer, position: cint): cint {.importc: "QHeaderView_logicalIndexAt".}
proc fcQHeaderView_logicalIndexAt2(self: pointer, x: cint, y: cint): cint {.importc: "QHeaderView_logicalIndexAt2".}
proc fcQHeaderView_logicalIndexAtWithPos(self: pointer, pos: pointer): cint {.importc: "QHeaderView_logicalIndexAtWithPos".}
proc fcQHeaderView_sectionSize(self: pointer, logicalIndex: cint): cint {.importc: "QHeaderView_sectionSize".}
proc fcQHeaderView_sectionPosition(self: pointer, logicalIndex: cint): cint {.importc: "QHeaderView_sectionPosition".}
proc fcQHeaderView_sectionViewportPosition(self: pointer, logicalIndex: cint): cint {.importc: "QHeaderView_sectionViewportPosition".}
proc fcQHeaderView_moveSection(self: pointer, fromVal: cint, to: cint): void {.importc: "QHeaderView_moveSection".}
proc fcQHeaderView_swapSections(self: pointer, first: cint, second: cint): void {.importc: "QHeaderView_swapSections".}
proc fcQHeaderView_resizeSection(self: pointer, logicalIndex: cint, size: cint): void {.importc: "QHeaderView_resizeSection".}
proc fcQHeaderView_resizeSections(self: pointer, mode: cint): void {.importc: "QHeaderView_resizeSections".}
proc fcQHeaderView_isSectionHidden(self: pointer, logicalIndex: cint): bool {.importc: "QHeaderView_isSectionHidden".}
proc fcQHeaderView_setSectionHidden(self: pointer, logicalIndex: cint, hide: bool): void {.importc: "QHeaderView_setSectionHidden".}
proc fcQHeaderView_hiddenSectionCount(self: pointer, ): cint {.importc: "QHeaderView_hiddenSectionCount".}
proc fcQHeaderView_hideSection(self: pointer, logicalIndex: cint): void {.importc: "QHeaderView_hideSection".}
proc fcQHeaderView_showSection(self: pointer, logicalIndex: cint): void {.importc: "QHeaderView_showSection".}
proc fcQHeaderView_count(self: pointer, ): cint {.importc: "QHeaderView_count".}
proc fcQHeaderView_visualIndex(self: pointer, logicalIndex: cint): cint {.importc: "QHeaderView_visualIndex".}
proc fcQHeaderView_logicalIndex(self: pointer, visualIndex: cint): cint {.importc: "QHeaderView_logicalIndex".}
proc fcQHeaderView_setSectionsMovable(self: pointer, movable: bool): void {.importc: "QHeaderView_setSectionsMovable".}
proc fcQHeaderView_sectionsMovable(self: pointer, ): bool {.importc: "QHeaderView_sectionsMovable".}
proc fcQHeaderView_setFirstSectionMovable(self: pointer, movable: bool): void {.importc: "QHeaderView_setFirstSectionMovable".}
proc fcQHeaderView_isFirstSectionMovable(self: pointer, ): bool {.importc: "QHeaderView_isFirstSectionMovable".}
proc fcQHeaderView_setSectionsClickable(self: pointer, clickable: bool): void {.importc: "QHeaderView_setSectionsClickable".}
proc fcQHeaderView_sectionsClickable(self: pointer, ): bool {.importc: "QHeaderView_sectionsClickable".}
proc fcQHeaderView_setHighlightSections(self: pointer, highlight: bool): void {.importc: "QHeaderView_setHighlightSections".}
proc fcQHeaderView_highlightSections(self: pointer, ): bool {.importc: "QHeaderView_highlightSections".}
proc fcQHeaderView_sectionResizeMode(self: pointer, logicalIndex: cint): cint {.importc: "QHeaderView_sectionResizeMode".}
proc fcQHeaderView_setSectionResizeMode(self: pointer, mode: cint): void {.importc: "QHeaderView_setSectionResizeMode".}
proc fcQHeaderView_setSectionResizeMode2(self: pointer, logicalIndex: cint, mode: cint): void {.importc: "QHeaderView_setSectionResizeMode2".}
proc fcQHeaderView_setResizeContentsPrecision(self: pointer, precision: cint): void {.importc: "QHeaderView_setResizeContentsPrecision".}
proc fcQHeaderView_resizeContentsPrecision(self: pointer, ): cint {.importc: "QHeaderView_resizeContentsPrecision".}
proc fcQHeaderView_stretchSectionCount(self: pointer, ): cint {.importc: "QHeaderView_stretchSectionCount".}
proc fcQHeaderView_setSortIndicatorShown(self: pointer, show: bool): void {.importc: "QHeaderView_setSortIndicatorShown".}
proc fcQHeaderView_isSortIndicatorShown(self: pointer, ): bool {.importc: "QHeaderView_isSortIndicatorShown".}
proc fcQHeaderView_setSortIndicator(self: pointer, logicalIndex: cint, order: cint): void {.importc: "QHeaderView_setSortIndicator".}
proc fcQHeaderView_sortIndicatorSection(self: pointer, ): cint {.importc: "QHeaderView_sortIndicatorSection".}
proc fcQHeaderView_sortIndicatorOrder(self: pointer, ): cint {.importc: "QHeaderView_sortIndicatorOrder".}
proc fcQHeaderView_stretchLastSection(self: pointer, ): bool {.importc: "QHeaderView_stretchLastSection".}
proc fcQHeaderView_setStretchLastSection(self: pointer, stretch: bool): void {.importc: "QHeaderView_setStretchLastSection".}
proc fcQHeaderView_cascadingSectionResizes(self: pointer, ): bool {.importc: "QHeaderView_cascadingSectionResizes".}
proc fcQHeaderView_setCascadingSectionResizes(self: pointer, enable: bool): void {.importc: "QHeaderView_setCascadingSectionResizes".}
proc fcQHeaderView_defaultSectionSize(self: pointer, ): cint {.importc: "QHeaderView_defaultSectionSize".}
proc fcQHeaderView_setDefaultSectionSize(self: pointer, size: cint): void {.importc: "QHeaderView_setDefaultSectionSize".}
proc fcQHeaderView_resetDefaultSectionSize(self: pointer, ): void {.importc: "QHeaderView_resetDefaultSectionSize".}
proc fcQHeaderView_minimumSectionSize(self: pointer, ): cint {.importc: "QHeaderView_minimumSectionSize".}
proc fcQHeaderView_setMinimumSectionSize(self: pointer, size: cint): void {.importc: "QHeaderView_setMinimumSectionSize".}
proc fcQHeaderView_maximumSectionSize(self: pointer, ): cint {.importc: "QHeaderView_maximumSectionSize".}
proc fcQHeaderView_setMaximumSectionSize(self: pointer, size: cint): void {.importc: "QHeaderView_setMaximumSectionSize".}
proc fcQHeaderView_defaultAlignment(self: pointer, ): cint {.importc: "QHeaderView_defaultAlignment".}
proc fcQHeaderView_setDefaultAlignment(self: pointer, alignment: cint): void {.importc: "QHeaderView_setDefaultAlignment".}
proc fcQHeaderView_doItemsLayout(self: pointer, ): void {.importc: "QHeaderView_doItemsLayout".}
proc fcQHeaderView_sectionsMoved(self: pointer, ): bool {.importc: "QHeaderView_sectionsMoved".}
proc fcQHeaderView_sectionsHidden(self: pointer, ): bool {.importc: "QHeaderView_sectionsHidden".}
proc fcQHeaderView_saveState(self: pointer, ): struct_miqt_string {.importc: "QHeaderView_saveState".}
proc fcQHeaderView_restoreState(self: pointer, state: struct_miqt_string): bool {.importc: "QHeaderView_restoreState".}
proc fcQHeaderView_reset(self: pointer, ): void {.importc: "QHeaderView_reset".}
proc fcQHeaderView_setOffset(self: pointer, offset: cint): void {.importc: "QHeaderView_setOffset".}
proc fcQHeaderView_setOffsetToSectionPosition(self: pointer, visualIndex: cint): void {.importc: "QHeaderView_setOffsetToSectionPosition".}
proc fcQHeaderView_setOffsetToLastSection(self: pointer, ): void {.importc: "QHeaderView_setOffsetToLastSection".}
proc fcQHeaderView_headerDataChanged(self: pointer, orientation: cint, logicalFirst: cint, logicalLast: cint): void {.importc: "QHeaderView_headerDataChanged".}
proc fcQHeaderView_sectionMoved(self: pointer, logicalIndex: cint, oldVisualIndex: cint, newVisualIndex: cint): void {.importc: "QHeaderView_sectionMoved".}
proc fQHeaderView_connect_sectionMoved(self: pointer, slot: int) {.importc: "QHeaderView_connect_sectionMoved".}
proc fcQHeaderView_sectionResized(self: pointer, logicalIndex: cint, oldSize: cint, newSize: cint): void {.importc: "QHeaderView_sectionResized".}
proc fQHeaderView_connect_sectionResized(self: pointer, slot: int) {.importc: "QHeaderView_connect_sectionResized".}
proc fcQHeaderView_sectionPressed(self: pointer, logicalIndex: cint): void {.importc: "QHeaderView_sectionPressed".}
proc fQHeaderView_connect_sectionPressed(self: pointer, slot: int) {.importc: "QHeaderView_connect_sectionPressed".}
proc fcQHeaderView_sectionClicked(self: pointer, logicalIndex: cint): void {.importc: "QHeaderView_sectionClicked".}
proc fQHeaderView_connect_sectionClicked(self: pointer, slot: int) {.importc: "QHeaderView_connect_sectionClicked".}
proc fcQHeaderView_sectionEntered(self: pointer, logicalIndex: cint): void {.importc: "QHeaderView_sectionEntered".}
proc fQHeaderView_connect_sectionEntered(self: pointer, slot: int) {.importc: "QHeaderView_connect_sectionEntered".}
proc fcQHeaderView_sectionDoubleClicked(self: pointer, logicalIndex: cint): void {.importc: "QHeaderView_sectionDoubleClicked".}
proc fQHeaderView_connect_sectionDoubleClicked(self: pointer, slot: int) {.importc: "QHeaderView_connect_sectionDoubleClicked".}
proc fcQHeaderView_sectionCountChanged(self: pointer, oldCount: cint, newCount: cint): void {.importc: "QHeaderView_sectionCountChanged".}
proc fQHeaderView_connect_sectionCountChanged(self: pointer, slot: int) {.importc: "QHeaderView_connect_sectionCountChanged".}
proc fcQHeaderView_sectionHandleDoubleClicked(self: pointer, logicalIndex: cint): void {.importc: "QHeaderView_sectionHandleDoubleClicked".}
proc fQHeaderView_connect_sectionHandleDoubleClicked(self: pointer, slot: int) {.importc: "QHeaderView_connect_sectionHandleDoubleClicked".}
proc fcQHeaderView_geometriesChanged(self: pointer, ): void {.importc: "QHeaderView_geometriesChanged".}
proc fQHeaderView_connect_geometriesChanged(self: pointer, slot: int) {.importc: "QHeaderView_connect_geometriesChanged".}
proc fcQHeaderView_sortIndicatorChanged(self: pointer, logicalIndex: cint, order: cint): void {.importc: "QHeaderView_sortIndicatorChanged".}
proc fQHeaderView_connect_sortIndicatorChanged(self: pointer, slot: int) {.importc: "QHeaderView_connect_sortIndicatorChanged".}
proc fcQHeaderView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QHeaderView_tr2".}
proc fcQHeaderView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHeaderView_tr3".}
proc fcQHeaderView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QHeaderView_trUtf82".}
proc fcQHeaderView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHeaderView_trUtf83".}
proc fQHeaderView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QHeaderView_virtualbase_metacall".}
proc fcQHeaderView_override_virtual_metacall(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_metacall".}
proc fQHeaderView_virtualbase_setModel(self: pointer, model: pointer): void{.importc: "QHeaderView_virtualbase_setModel".}
proc fcQHeaderView_override_virtual_setModel(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_setModel".}
proc fQHeaderView_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QHeaderView_virtualbase_sizeHint".}
proc fcQHeaderView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_sizeHint".}
proc fQHeaderView_virtualbase_setVisible(self: pointer, v: bool): void{.importc: "QHeaderView_virtualbase_setVisible".}
proc fcQHeaderView_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_setVisible".}
proc fQHeaderView_virtualbase_doItemsLayout(self: pointer, ): void{.importc: "QHeaderView_virtualbase_doItemsLayout".}
proc fcQHeaderView_override_virtual_doItemsLayout(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_doItemsLayout".}
proc fQHeaderView_virtualbase_reset(self: pointer, ): void{.importc: "QHeaderView_virtualbase_reset".}
proc fcQHeaderView_override_virtual_reset(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_reset".}
proc fQHeaderView_virtualbase_currentChanged(self: pointer, current: pointer, old: pointer): void{.importc: "QHeaderView_virtualbase_currentChanged".}
proc fcQHeaderView_override_virtual_currentChanged(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_currentChanged".}
proc fQHeaderView_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QHeaderView_virtualbase_event".}
proc fcQHeaderView_override_virtual_event(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_event".}
proc fQHeaderView_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QHeaderView_virtualbase_paintEvent".}
proc fcQHeaderView_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_paintEvent".}
proc fQHeaderView_virtualbase_mousePressEvent(self: pointer, e: pointer): void{.importc: "QHeaderView_virtualbase_mousePressEvent".}
proc fcQHeaderView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_mousePressEvent".}
proc fQHeaderView_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void{.importc: "QHeaderView_virtualbase_mouseMoveEvent".}
proc fcQHeaderView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_mouseMoveEvent".}
proc fQHeaderView_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QHeaderView_virtualbase_mouseReleaseEvent".}
proc fcQHeaderView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_mouseReleaseEvent".}
proc fQHeaderView_virtualbase_mouseDoubleClickEvent(self: pointer, e: pointer): void{.importc: "QHeaderView_virtualbase_mouseDoubleClickEvent".}
proc fcQHeaderView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_mouseDoubleClickEvent".}
proc fQHeaderView_virtualbase_viewportEvent(self: pointer, e: pointer): bool{.importc: "QHeaderView_virtualbase_viewportEvent".}
proc fcQHeaderView_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_viewportEvent".}
proc fQHeaderView_virtualbase_paintSection(self: pointer, painter: pointer, rect: pointer, logicalIndex: cint): void{.importc: "QHeaderView_virtualbase_paintSection".}
proc fcQHeaderView_override_virtual_paintSection(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_paintSection".}
proc fQHeaderView_virtualbase_sectionSizeFromContents(self: pointer, logicalIndex: cint): pointer{.importc: "QHeaderView_virtualbase_sectionSizeFromContents".}
proc fcQHeaderView_override_virtual_sectionSizeFromContents(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_sectionSizeFromContents".}
proc fQHeaderView_virtualbase_horizontalOffset(self: pointer, ): cint{.importc: "QHeaderView_virtualbase_horizontalOffset".}
proc fcQHeaderView_override_virtual_horizontalOffset(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_horizontalOffset".}
proc fQHeaderView_virtualbase_verticalOffset(self: pointer, ): cint{.importc: "QHeaderView_virtualbase_verticalOffset".}
proc fcQHeaderView_override_virtual_verticalOffset(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_verticalOffset".}
proc fQHeaderView_virtualbase_updateGeometries(self: pointer, ): void{.importc: "QHeaderView_virtualbase_updateGeometries".}
proc fcQHeaderView_override_virtual_updateGeometries(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_updateGeometries".}
proc fQHeaderView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QHeaderView_virtualbase_scrollContentsBy".}
proc fcQHeaderView_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_scrollContentsBy".}
proc fQHeaderView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void{.importc: "QHeaderView_virtualbase_dataChanged".}
proc fcQHeaderView_override_virtual_dataChanged(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_dataChanged".}
proc fQHeaderView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QHeaderView_virtualbase_rowsInserted".}
proc fcQHeaderView_override_virtual_rowsInserted(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_rowsInserted".}
proc fQHeaderView_virtualbase_visualRect(self: pointer, index: pointer): pointer{.importc: "QHeaderView_virtualbase_visualRect".}
proc fcQHeaderView_override_virtual_visualRect(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_visualRect".}
proc fQHeaderView_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void{.importc: "QHeaderView_virtualbase_scrollTo".}
proc fcQHeaderView_override_virtual_scrollTo(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_scrollTo".}
proc fQHeaderView_virtualbase_indexAt(self: pointer, p: pointer): pointer{.importc: "QHeaderView_virtualbase_indexAt".}
proc fcQHeaderView_override_virtual_indexAt(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_indexAt".}
proc fQHeaderView_virtualbase_isIndexHidden(self: pointer, index: pointer): bool{.importc: "QHeaderView_virtualbase_isIndexHidden".}
proc fcQHeaderView_override_virtual_isIndexHidden(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_isIndexHidden".}
proc fQHeaderView_virtualbase_moveCursor(self: pointer, param1: cint, param2: cint): pointer{.importc: "QHeaderView_virtualbase_moveCursor".}
proc fcQHeaderView_override_virtual_moveCursor(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_moveCursor".}
proc fQHeaderView_virtualbase_setSelection(self: pointer, rect: pointer, flags: cint): void{.importc: "QHeaderView_virtualbase_setSelection".}
proc fcQHeaderView_override_virtual_setSelection(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_setSelection".}
proc fQHeaderView_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer{.importc: "QHeaderView_virtualbase_visualRegionForSelection".}
proc fcQHeaderView_override_virtual_visualRegionForSelection(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_visualRegionForSelection".}
proc fQHeaderView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void{.importc: "QHeaderView_virtualbase_setSelectionModel".}
proc fcQHeaderView_override_virtual_setSelectionModel(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_setSelectionModel".}
proc fQHeaderView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void{.importc: "QHeaderView_virtualbase_keyboardSearch".}
proc fcQHeaderView_override_virtual_keyboardSearch(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_keyboardSearch".}
proc fQHeaderView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint{.importc: "QHeaderView_virtualbase_sizeHintForRow".}
proc fcQHeaderView_override_virtual_sizeHintForRow(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_sizeHintForRow".}
proc fQHeaderView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint{.importc: "QHeaderView_virtualbase_sizeHintForColumn".}
proc fcQHeaderView_override_virtual_sizeHintForColumn(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_sizeHintForColumn".}
proc fQHeaderView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QHeaderView_virtualbase_inputMethodQuery".}
proc fcQHeaderView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_inputMethodQuery".}
proc fQHeaderView_virtualbase_setRootIndex(self: pointer, index: pointer): void{.importc: "QHeaderView_virtualbase_setRootIndex".}
proc fcQHeaderView_override_virtual_setRootIndex(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_setRootIndex".}
proc fQHeaderView_virtualbase_selectAll(self: pointer, ): void{.importc: "QHeaderView_virtualbase_selectAll".}
proc fcQHeaderView_override_virtual_selectAll(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_selectAll".}
proc fQHeaderView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QHeaderView_virtualbase_rowsAboutToBeRemoved".}
proc fcQHeaderView_override_virtual_rowsAboutToBeRemoved(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_rowsAboutToBeRemoved".}
proc fQHeaderView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void{.importc: "QHeaderView_virtualbase_selectionChanged".}
proc fcQHeaderView_override_virtual_selectionChanged(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_selectionChanged".}
proc fQHeaderView_virtualbase_updateEditorData(self: pointer, ): void{.importc: "QHeaderView_virtualbase_updateEditorData".}
proc fcQHeaderView_override_virtual_updateEditorData(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_updateEditorData".}
proc fQHeaderView_virtualbase_updateEditorGeometries(self: pointer, ): void{.importc: "QHeaderView_virtualbase_updateEditorGeometries".}
proc fcQHeaderView_override_virtual_updateEditorGeometries(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_updateEditorGeometries".}
proc fQHeaderView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void{.importc: "QHeaderView_virtualbase_verticalScrollbarAction".}
proc fcQHeaderView_override_virtual_verticalScrollbarAction(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_verticalScrollbarAction".}
proc fQHeaderView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void{.importc: "QHeaderView_virtualbase_horizontalScrollbarAction".}
proc fcQHeaderView_override_virtual_horizontalScrollbarAction(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_horizontalScrollbarAction".}
proc fQHeaderView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QHeaderView_virtualbase_verticalScrollbarValueChanged".}
proc fcQHeaderView_override_virtual_verticalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_verticalScrollbarValueChanged".}
proc fQHeaderView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QHeaderView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQHeaderView_override_virtual_horizontalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_horizontalScrollbarValueChanged".}
proc fQHeaderView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void{.importc: "QHeaderView_virtualbase_closeEditor".}
proc fcQHeaderView_override_virtual_closeEditor(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_closeEditor".}
proc fQHeaderView_virtualbase_commitData(self: pointer, editor: pointer): void{.importc: "QHeaderView_virtualbase_commitData".}
proc fcQHeaderView_override_virtual_commitData(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_commitData".}
proc fQHeaderView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void{.importc: "QHeaderView_virtualbase_editorDestroyed".}
proc fcQHeaderView_override_virtual_editorDestroyed(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_editorDestroyed".}
proc fQHeaderView_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array{.importc: "QHeaderView_virtualbase_selectedIndexes".}
proc fcQHeaderView_override_virtual_selectedIndexes(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_selectedIndexes".}
proc fQHeaderView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool{.importc: "QHeaderView_virtualbase_edit2".}
proc fcQHeaderView_override_virtual_edit2(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_edit2".}
proc fQHeaderView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint{.importc: "QHeaderView_virtualbase_selectionCommand".}
proc fcQHeaderView_override_virtual_selectionCommand(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_selectionCommand".}
proc fQHeaderView_virtualbase_startDrag(self: pointer, supportedActions: cint): void{.importc: "QHeaderView_virtualbase_startDrag".}
proc fcQHeaderView_override_virtual_startDrag(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_startDrag".}
proc fQHeaderView_virtualbase_viewOptions(self: pointer, ): pointer{.importc: "QHeaderView_virtualbase_viewOptions".}
proc fcQHeaderView_override_virtual_viewOptions(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_viewOptions".}
proc fQHeaderView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QHeaderView_virtualbase_focusNextPrevChild".}
proc fcQHeaderView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_focusNextPrevChild".}
proc fQHeaderView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_dragEnterEvent".}
proc fcQHeaderView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_dragEnterEvent".}
proc fQHeaderView_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_dragMoveEvent".}
proc fcQHeaderView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_dragMoveEvent".}
proc fQHeaderView_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_dragLeaveEvent".}
proc fcQHeaderView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_dragLeaveEvent".}
proc fQHeaderView_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_dropEvent".}
proc fcQHeaderView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_dropEvent".}
proc fQHeaderView_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_focusInEvent".}
proc fcQHeaderView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_focusInEvent".}
proc fQHeaderView_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_focusOutEvent".}
proc fcQHeaderView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_focusOutEvent".}
proc fQHeaderView_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_keyPressEvent".}
proc fcQHeaderView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_keyPressEvent".}
proc fQHeaderView_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_resizeEvent".}
proc fcQHeaderView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_resizeEvent".}
proc fQHeaderView_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_timerEvent".}
proc fcQHeaderView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_timerEvent".}
proc fQHeaderView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_inputMethodEvent".}
proc fcQHeaderView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_inputMethodEvent".}
proc fQHeaderView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QHeaderView_virtualbase_eventFilter".}
proc fcQHeaderView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_eventFilter".}
proc fQHeaderView_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QHeaderView_virtualbase_viewportSizeHint".}
proc fcQHeaderView_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_viewportSizeHint".}
proc fQHeaderView_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QHeaderView_virtualbase_minimumSizeHint".}
proc fcQHeaderView_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_minimumSizeHint".}
proc fQHeaderView_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QHeaderView_virtualbase_setupViewport".}
proc fcQHeaderView_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_setupViewport".}
proc fQHeaderView_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QHeaderView_virtualbase_wheelEvent".}
proc fcQHeaderView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_wheelEvent".}
proc fQHeaderView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QHeaderView_virtualbase_contextMenuEvent".}
proc fcQHeaderView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_contextMenuEvent".}
proc fQHeaderView_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QHeaderView_virtualbase_changeEvent".}
proc fcQHeaderView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_changeEvent".}
proc fQHeaderView_virtualbase_devType(self: pointer, ): cint{.importc: "QHeaderView_virtualbase_devType".}
proc fcQHeaderView_override_virtual_devType(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_devType".}
proc fQHeaderView_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QHeaderView_virtualbase_heightForWidth".}
proc fcQHeaderView_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_heightForWidth".}
proc fQHeaderView_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QHeaderView_virtualbase_hasHeightForWidth".}
proc fcQHeaderView_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_hasHeightForWidth".}
proc fQHeaderView_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QHeaderView_virtualbase_paintEngine".}
proc fcQHeaderView_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_paintEngine".}
proc fQHeaderView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_keyReleaseEvent".}
proc fcQHeaderView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_keyReleaseEvent".}
proc fQHeaderView_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_enterEvent".}
proc fcQHeaderView_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_enterEvent".}
proc fQHeaderView_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_leaveEvent".}
proc fcQHeaderView_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_leaveEvent".}
proc fQHeaderView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_moveEvent".}
proc fcQHeaderView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_moveEvent".}
proc fQHeaderView_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_closeEvent".}
proc fcQHeaderView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_closeEvent".}
proc fQHeaderView_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_tabletEvent".}
proc fcQHeaderView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_tabletEvent".}
proc fQHeaderView_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_actionEvent".}
proc fcQHeaderView_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_actionEvent".}
proc fQHeaderView_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_showEvent".}
proc fcQHeaderView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_showEvent".}
proc fQHeaderView_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_hideEvent".}
proc fcQHeaderView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_hideEvent".}
proc fQHeaderView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool{.importc: "QHeaderView_virtualbase_nativeEvent".}
proc fcQHeaderView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_nativeEvent".}
proc fQHeaderView_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QHeaderView_virtualbase_metric".}
proc fcQHeaderView_override_virtual_metric(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_metric".}
proc fQHeaderView_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QHeaderView_virtualbase_initPainter".}
proc fcQHeaderView_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_initPainter".}
proc fQHeaderView_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QHeaderView_virtualbase_redirected".}
proc fcQHeaderView_override_virtual_redirected(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_redirected".}
proc fQHeaderView_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QHeaderView_virtualbase_sharedPainter".}
proc fcQHeaderView_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_sharedPainter".}
proc fQHeaderView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_childEvent".}
proc fcQHeaderView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_childEvent".}
proc fQHeaderView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QHeaderView_virtualbase_customEvent".}
proc fcQHeaderView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_customEvent".}
proc fQHeaderView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QHeaderView_virtualbase_connectNotify".}
proc fcQHeaderView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_connectNotify".}
proc fQHeaderView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QHeaderView_virtualbase_disconnectNotify".}
proc fcQHeaderView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QHeaderView_override_virtual_disconnectNotify".}
proc fcQHeaderView_delete(self: pointer) {.importc: "QHeaderView_delete".}


func init*(T: type QHeaderView, h: ptr cQHeaderView): QHeaderView =
  T(h: h)
proc create*(T: type QHeaderView, orientation: gen_qnamespace.Orientation): QHeaderView =

  QHeaderView.init(fcQHeaderView_new(cint(orientation)))
proc create*(T: type QHeaderView, orientation: gen_qnamespace.Orientation, parent: gen_qwidget.QWidget): QHeaderView =

  QHeaderView.init(fcQHeaderView_new2(cint(orientation), parent.h))
proc metaObject*(self: QHeaderView, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQHeaderView_metaObject(self.h))

proc metacast*(self: QHeaderView, param1: cstring): pointer =

  fcQHeaderView_metacast(self.h, param1)

proc metacall*(self: QHeaderView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQHeaderView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QHeaderView, s: cstring): string =

  let v_ms = fcQHeaderView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QHeaderView, s: cstring): string =

  let v_ms = fcQHeaderView_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setModel*(self: QHeaderView, model: gen_qabstractitemmodel.QAbstractItemModel): void =

  fcQHeaderView_setModel(self.h, model.h)

proc orientation*(self: QHeaderView, ): gen_qnamespace.Orientation =

  gen_qnamespace.Orientation(fcQHeaderView_orientation(self.h))

proc offset*(self: QHeaderView, ): cint =

  fcQHeaderView_offset(self.h)

proc length*(self: QHeaderView, ): cint =

  fcQHeaderView_length(self.h)

proc sizeHint*(self: QHeaderView, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQHeaderView_sizeHint(self.h))

proc setVisible*(self: QHeaderView, v: bool): void =

  fcQHeaderView_setVisible(self.h, v)

proc sectionSizeHint*(self: QHeaderView, logicalIndex: cint): cint =

  fcQHeaderView_sectionSizeHint(self.h, logicalIndex)

proc visualIndexAt*(self: QHeaderView, position: cint): cint =

  fcQHeaderView_visualIndexAt(self.h, position)

proc logicalIndexAt*(self: QHeaderView, position: cint): cint =

  fcQHeaderView_logicalIndexAt(self.h, position)

proc logicalIndexAt2*(self: QHeaderView, x: cint, y: cint): cint =

  fcQHeaderView_logicalIndexAt2(self.h, x, y)

proc logicalIndexAtWithPos*(self: QHeaderView, pos: gen_qpoint.QPoint): cint =

  fcQHeaderView_logicalIndexAtWithPos(self.h, pos.h)

proc sectionSize*(self: QHeaderView, logicalIndex: cint): cint =

  fcQHeaderView_sectionSize(self.h, logicalIndex)

proc sectionPosition*(self: QHeaderView, logicalIndex: cint): cint =

  fcQHeaderView_sectionPosition(self.h, logicalIndex)

proc sectionViewportPosition*(self: QHeaderView, logicalIndex: cint): cint =

  fcQHeaderView_sectionViewportPosition(self.h, logicalIndex)

proc moveSection*(self: QHeaderView, fromVal: cint, to: cint): void =

  fcQHeaderView_moveSection(self.h, fromVal, to)

proc swapSections*(self: QHeaderView, first: cint, second: cint): void =

  fcQHeaderView_swapSections(self.h, first, second)

proc resizeSection*(self: QHeaderView, logicalIndex: cint, size: cint): void =

  fcQHeaderView_resizeSection(self.h, logicalIndex, size)

proc resizeSections*(self: QHeaderView, mode: QHeaderViewResizeMode): void =

  fcQHeaderView_resizeSections(self.h, cint(mode))

proc isSectionHidden*(self: QHeaderView, logicalIndex: cint): bool =

  fcQHeaderView_isSectionHidden(self.h, logicalIndex)

proc setSectionHidden*(self: QHeaderView, logicalIndex: cint, hide: bool): void =

  fcQHeaderView_setSectionHidden(self.h, logicalIndex, hide)

proc hiddenSectionCount*(self: QHeaderView, ): cint =

  fcQHeaderView_hiddenSectionCount(self.h)

proc hideSection*(self: QHeaderView, logicalIndex: cint): void =

  fcQHeaderView_hideSection(self.h, logicalIndex)

proc showSection*(self: QHeaderView, logicalIndex: cint): void =

  fcQHeaderView_showSection(self.h, logicalIndex)

proc count*(self: QHeaderView, ): cint =

  fcQHeaderView_count(self.h)

proc visualIndex*(self: QHeaderView, logicalIndex: cint): cint =

  fcQHeaderView_visualIndex(self.h, logicalIndex)

proc logicalIndex*(self: QHeaderView, visualIndex: cint): cint =

  fcQHeaderView_logicalIndex(self.h, visualIndex)

proc setSectionsMovable*(self: QHeaderView, movable: bool): void =

  fcQHeaderView_setSectionsMovable(self.h, movable)

proc sectionsMovable*(self: QHeaderView, ): bool =

  fcQHeaderView_sectionsMovable(self.h)

proc setFirstSectionMovable*(self: QHeaderView, movable: bool): void =

  fcQHeaderView_setFirstSectionMovable(self.h, movable)

proc isFirstSectionMovable*(self: QHeaderView, ): bool =

  fcQHeaderView_isFirstSectionMovable(self.h)

proc setSectionsClickable*(self: QHeaderView, clickable: bool): void =

  fcQHeaderView_setSectionsClickable(self.h, clickable)

proc sectionsClickable*(self: QHeaderView, ): bool =

  fcQHeaderView_sectionsClickable(self.h)

proc setHighlightSections*(self: QHeaderView, highlight: bool): void =

  fcQHeaderView_setHighlightSections(self.h, highlight)

proc highlightSections*(self: QHeaderView, ): bool =

  fcQHeaderView_highlightSections(self.h)

proc sectionResizeMode*(self: QHeaderView, logicalIndex: cint): QHeaderViewResizeMode =

  QHeaderViewResizeMode(fcQHeaderView_sectionResizeMode(self.h, logicalIndex))

proc setSectionResizeMode*(self: QHeaderView, mode: QHeaderViewResizeMode): void =

  fcQHeaderView_setSectionResizeMode(self.h, cint(mode))

proc setSectionResizeMode2*(self: QHeaderView, logicalIndex: cint, mode: QHeaderViewResizeMode): void =

  fcQHeaderView_setSectionResizeMode2(self.h, logicalIndex, cint(mode))

proc setResizeContentsPrecision*(self: QHeaderView, precision: cint): void =

  fcQHeaderView_setResizeContentsPrecision(self.h, precision)

proc resizeContentsPrecision*(self: QHeaderView, ): cint =

  fcQHeaderView_resizeContentsPrecision(self.h)

proc stretchSectionCount*(self: QHeaderView, ): cint =

  fcQHeaderView_stretchSectionCount(self.h)

proc setSortIndicatorShown*(self: QHeaderView, show: bool): void =

  fcQHeaderView_setSortIndicatorShown(self.h, show)

proc isSortIndicatorShown*(self: QHeaderView, ): bool =

  fcQHeaderView_isSortIndicatorShown(self.h)

proc setSortIndicator*(self: QHeaderView, logicalIndex: cint, order: gen_qnamespace.SortOrder): void =

  fcQHeaderView_setSortIndicator(self.h, logicalIndex, cint(order))

proc sortIndicatorSection*(self: QHeaderView, ): cint =

  fcQHeaderView_sortIndicatorSection(self.h)

proc sortIndicatorOrder*(self: QHeaderView, ): gen_qnamespace.SortOrder =

  gen_qnamespace.SortOrder(fcQHeaderView_sortIndicatorOrder(self.h))

proc stretchLastSection*(self: QHeaderView, ): bool =

  fcQHeaderView_stretchLastSection(self.h)

proc setStretchLastSection*(self: QHeaderView, stretch: bool): void =

  fcQHeaderView_setStretchLastSection(self.h, stretch)

proc cascadingSectionResizes*(self: QHeaderView, ): bool =

  fcQHeaderView_cascadingSectionResizes(self.h)

proc setCascadingSectionResizes*(self: QHeaderView, enable: bool): void =

  fcQHeaderView_setCascadingSectionResizes(self.h, enable)

proc defaultSectionSize*(self: QHeaderView, ): cint =

  fcQHeaderView_defaultSectionSize(self.h)

proc setDefaultSectionSize*(self: QHeaderView, size: cint): void =

  fcQHeaderView_setDefaultSectionSize(self.h, size)

proc resetDefaultSectionSize*(self: QHeaderView, ): void =

  fcQHeaderView_resetDefaultSectionSize(self.h)

proc minimumSectionSize*(self: QHeaderView, ): cint =

  fcQHeaderView_minimumSectionSize(self.h)

proc setMinimumSectionSize*(self: QHeaderView, size: cint): void =

  fcQHeaderView_setMinimumSectionSize(self.h, size)

proc maximumSectionSize*(self: QHeaderView, ): cint =

  fcQHeaderView_maximumSectionSize(self.h)

proc setMaximumSectionSize*(self: QHeaderView, size: cint): void =

  fcQHeaderView_setMaximumSectionSize(self.h, size)

proc defaultAlignment*(self: QHeaderView, ): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQHeaderView_defaultAlignment(self.h))

proc setDefaultAlignment*(self: QHeaderView, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQHeaderView_setDefaultAlignment(self.h, cint(alignment))

proc doItemsLayout*(self: QHeaderView, ): void =

  fcQHeaderView_doItemsLayout(self.h)

proc sectionsMoved*(self: QHeaderView, ): bool =

  fcQHeaderView_sectionsMoved(self.h)

proc sectionsHidden*(self: QHeaderView, ): bool =

  fcQHeaderView_sectionsHidden(self.h)

proc saveState*(self: QHeaderView, ): seq[byte] =

  var v_bytearray = fcQHeaderView_saveState(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc restoreState*(self: QHeaderView, state: seq[byte]): bool =

  fcQHeaderView_restoreState(self.h, struct_miqt_string(data: cast[cstring](if len(state) == 0: nil else: unsafeAddr state[0]), len: csize_t(len(state))))

proc reset*(self: QHeaderView, ): void =

  fcQHeaderView_reset(self.h)

proc setOffset*(self: QHeaderView, offset: cint): void =

  fcQHeaderView_setOffset(self.h, offset)

proc setOffsetToSectionPosition*(self: QHeaderView, visualIndex: cint): void =

  fcQHeaderView_setOffsetToSectionPosition(self.h, visualIndex)

proc setOffsetToLastSection*(self: QHeaderView, ): void =

  fcQHeaderView_setOffsetToLastSection(self.h)

proc headerDataChanged*(self: QHeaderView, orientation: gen_qnamespace.Orientation, logicalFirst: cint, logicalLast: cint): void =

  fcQHeaderView_headerDataChanged(self.h, cint(orientation), logicalFirst, logicalLast)

proc sectionMoved*(self: QHeaderView, logicalIndex: cint, oldVisualIndex: cint, newVisualIndex: cint): void =

  fcQHeaderView_sectionMoved(self.h, logicalIndex, oldVisualIndex, newVisualIndex)

proc miqt_exec_callback_QHeaderView_sectionMoved(slot: int, logicalIndex: cint, oldVisualIndex: cint, newVisualIndex: cint) {.exportc.} =
  type Cb = proc(logicalIndex: cint, oldVisualIndex: cint, newVisualIndex: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = logicalIndex

  let slotval2 = oldVisualIndex

  let slotval3 = newVisualIndex


  nimfunc[](slotval1, slotval2, slotval3)

proc onsectionMoved*(self: QHeaderView, slot: proc(logicalIndex: cint, oldVisualIndex: cint, newVisualIndex: cint)) =
  type Cb = proc(logicalIndex: cint, oldVisualIndex: cint, newVisualIndex: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQHeaderView_connect_sectionMoved(self.h, cast[int](addr tmp[]))
proc sectionResized*(self: QHeaderView, logicalIndex: cint, oldSize: cint, newSize: cint): void =

  fcQHeaderView_sectionResized(self.h, logicalIndex, oldSize, newSize)

proc miqt_exec_callback_QHeaderView_sectionResized(slot: int, logicalIndex: cint, oldSize: cint, newSize: cint) {.exportc.} =
  type Cb = proc(logicalIndex: cint, oldSize: cint, newSize: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = logicalIndex

  let slotval2 = oldSize

  let slotval3 = newSize


  nimfunc[](slotval1, slotval2, slotval3)

proc onsectionResized*(self: QHeaderView, slot: proc(logicalIndex: cint, oldSize: cint, newSize: cint)) =
  type Cb = proc(logicalIndex: cint, oldSize: cint, newSize: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQHeaderView_connect_sectionResized(self.h, cast[int](addr tmp[]))
proc sectionPressed*(self: QHeaderView, logicalIndex: cint): void =

  fcQHeaderView_sectionPressed(self.h, logicalIndex)

proc miqt_exec_callback_QHeaderView_sectionPressed(slot: int, logicalIndex: cint) {.exportc.} =
  type Cb = proc(logicalIndex: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = logicalIndex


  nimfunc[](slotval1)

proc onsectionPressed*(self: QHeaderView, slot: proc(logicalIndex: cint)) =
  type Cb = proc(logicalIndex: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQHeaderView_connect_sectionPressed(self.h, cast[int](addr tmp[]))
proc sectionClicked*(self: QHeaderView, logicalIndex: cint): void =

  fcQHeaderView_sectionClicked(self.h, logicalIndex)

proc miqt_exec_callback_QHeaderView_sectionClicked(slot: int, logicalIndex: cint) {.exportc.} =
  type Cb = proc(logicalIndex: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = logicalIndex


  nimfunc[](slotval1)

proc onsectionClicked*(self: QHeaderView, slot: proc(logicalIndex: cint)) =
  type Cb = proc(logicalIndex: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQHeaderView_connect_sectionClicked(self.h, cast[int](addr tmp[]))
proc sectionEntered*(self: QHeaderView, logicalIndex: cint): void =

  fcQHeaderView_sectionEntered(self.h, logicalIndex)

proc miqt_exec_callback_QHeaderView_sectionEntered(slot: int, logicalIndex: cint) {.exportc.} =
  type Cb = proc(logicalIndex: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = logicalIndex


  nimfunc[](slotval1)

proc onsectionEntered*(self: QHeaderView, slot: proc(logicalIndex: cint)) =
  type Cb = proc(logicalIndex: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQHeaderView_connect_sectionEntered(self.h, cast[int](addr tmp[]))
proc sectionDoubleClicked*(self: QHeaderView, logicalIndex: cint): void =

  fcQHeaderView_sectionDoubleClicked(self.h, logicalIndex)

proc miqt_exec_callback_QHeaderView_sectionDoubleClicked(slot: int, logicalIndex: cint) {.exportc.} =
  type Cb = proc(logicalIndex: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = logicalIndex


  nimfunc[](slotval1)

proc onsectionDoubleClicked*(self: QHeaderView, slot: proc(logicalIndex: cint)) =
  type Cb = proc(logicalIndex: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQHeaderView_connect_sectionDoubleClicked(self.h, cast[int](addr tmp[]))
proc sectionCountChanged*(self: QHeaderView, oldCount: cint, newCount: cint): void =

  fcQHeaderView_sectionCountChanged(self.h, oldCount, newCount)

proc miqt_exec_callback_QHeaderView_sectionCountChanged(slot: int, oldCount: cint, newCount: cint) {.exportc.} =
  type Cb = proc(oldCount: cint, newCount: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = oldCount

  let slotval2 = newCount


  nimfunc[](slotval1, slotval2)

proc onsectionCountChanged*(self: QHeaderView, slot: proc(oldCount: cint, newCount: cint)) =
  type Cb = proc(oldCount: cint, newCount: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQHeaderView_connect_sectionCountChanged(self.h, cast[int](addr tmp[]))
proc sectionHandleDoubleClicked*(self: QHeaderView, logicalIndex: cint): void =

  fcQHeaderView_sectionHandleDoubleClicked(self.h, logicalIndex)

proc miqt_exec_callback_QHeaderView_sectionHandleDoubleClicked(slot: int, logicalIndex: cint) {.exportc.} =
  type Cb = proc(logicalIndex: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = logicalIndex


  nimfunc[](slotval1)

proc onsectionHandleDoubleClicked*(self: QHeaderView, slot: proc(logicalIndex: cint)) =
  type Cb = proc(logicalIndex: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQHeaderView_connect_sectionHandleDoubleClicked(self.h, cast[int](addr tmp[]))
proc geometriesChanged*(self: QHeaderView, ): void =

  fcQHeaderView_geometriesChanged(self.h)

proc miqt_exec_callback_QHeaderView_geometriesChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ongeometriesChanged*(self: QHeaderView, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQHeaderView_connect_geometriesChanged(self.h, cast[int](addr tmp[]))
proc sortIndicatorChanged*(self: QHeaderView, logicalIndex: cint, order: gen_qnamespace.SortOrder): void =

  fcQHeaderView_sortIndicatorChanged(self.h, logicalIndex, cint(order))

proc miqt_exec_callback_QHeaderView_sortIndicatorChanged(slot: int, logicalIndex: cint, order: cint) {.exportc.} =
  type Cb = proc(logicalIndex: cint, order: gen_qnamespace.SortOrder)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = logicalIndex

  let slotval2 = gen_qnamespace.SortOrder(order)


  nimfunc[](slotval1, slotval2)

proc onsortIndicatorChanged*(self: QHeaderView, slot: proc(logicalIndex: cint, order: gen_qnamespace.SortOrder)) =
  type Cb = proc(logicalIndex: cint, order: gen_qnamespace.SortOrder)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQHeaderView_connect_sortIndicatorChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QHeaderView, s: cstring, c: cstring): string =

  let v_ms = fcQHeaderView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QHeaderView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQHeaderView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QHeaderView, s: cstring, c: cstring): string =

  let v_ms = fcQHeaderView_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QHeaderView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQHeaderView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QHeaderView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQHeaderView_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QHeaderViewmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QHeaderView, slot: proc(super: QHeaderViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_metacall(self: ptr cQHeaderView, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QHeaderView_metacall ".} =
  type Cb = proc(super: QHeaderViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QHeaderView(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setModel(self: QHeaderView, model: gen_qabstractitemmodel.QAbstractItemModel): void =


  fQHeaderView_virtualbase_setModel(self.h, model.h)

type QHeaderViewsetModelBase* = proc(model: gen_qabstractitemmodel.QAbstractItemModel): void
proc onsetModel*(self: QHeaderView, slot: proc(super: QHeaderViewsetModelBase, model: gen_qabstractitemmodel.QAbstractItemModel): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewsetModelBase, model: gen_qabstractitemmodel.QAbstractItemModel): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_setModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_setModel(self: ptr cQHeaderView, slot: int, model: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_setModel ".} =
  type Cb = proc(super: QHeaderViewsetModelBase, model: gen_qabstractitemmodel.QAbstractItemModel): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(model: gen_qabstractitemmodel.QAbstractItemModel): auto =
    callVirtualBase_setModel(QHeaderView(h: self), model)
  let slotval1 = gen_qabstractitemmodel.QAbstractItemModel(h: model)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHint(self: QHeaderView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQHeaderView_virtualbase_sizeHint(self.h))

type QHeaderViewsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QHeaderView, slot: proc(super: QHeaderViewsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_sizeHint(self: ptr cQHeaderView, slot: int): pointer {.exportc: "miqt_exec_callback_QHeaderView_sizeHint ".} =
  type Cb = proc(super: QHeaderViewsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QHeaderView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setVisible(self: QHeaderView, v: bool): void =


  fQHeaderView_virtualbase_setVisible(self.h, v)

type QHeaderViewsetVisibleBase* = proc(v: bool): void
proc onsetVisible*(self: QHeaderView, slot: proc(super: QHeaderViewsetVisibleBase, v: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewsetVisibleBase, v: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_setVisible(self: ptr cQHeaderView, slot: int, v: bool): void {.exportc: "miqt_exec_callback_QHeaderView_setVisible ".} =
  type Cb = proc(super: QHeaderViewsetVisibleBase, v: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(v: bool): auto =
    callVirtualBase_setVisible(QHeaderView(h: self), v)
  let slotval1 = v


  nimfunc[](superCall, slotval1)
proc callVirtualBase_doItemsLayout(self: QHeaderView, ): void =


  fQHeaderView_virtualbase_doItemsLayout(self.h)

type QHeaderViewdoItemsLayoutBase* = proc(): void
proc ondoItemsLayout*(self: QHeaderView, slot: proc(super: QHeaderViewdoItemsLayoutBase): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewdoItemsLayoutBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_doItemsLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_doItemsLayout(self: ptr cQHeaderView, slot: int): void {.exportc: "miqt_exec_callback_QHeaderView_doItemsLayout ".} =
  type Cb = proc(super: QHeaderViewdoItemsLayoutBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_doItemsLayout(QHeaderView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_reset(self: QHeaderView, ): void =


  fQHeaderView_virtualbase_reset(self.h)

type QHeaderViewresetBase* = proc(): void
proc onreset*(self: QHeaderView, slot: proc(super: QHeaderViewresetBase): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewresetBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_reset(self: ptr cQHeaderView, slot: int): void {.exportc: "miqt_exec_callback_QHeaderView_reset ".} =
  type Cb = proc(super: QHeaderViewresetBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QHeaderView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_currentChanged(self: QHeaderView, current: gen_qabstractitemmodel.QModelIndex, old: gen_qabstractitemmodel.QModelIndex): void =


  fQHeaderView_virtualbase_currentChanged(self.h, current.h, old.h)

type QHeaderViewcurrentChangedBase* = proc(current: gen_qabstractitemmodel.QModelIndex, old: gen_qabstractitemmodel.QModelIndex): void
proc oncurrentChanged*(self: QHeaderView, slot: proc(super: QHeaderViewcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, old: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, old: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_currentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_currentChanged(self: ptr cQHeaderView, slot: int, current: pointer, old: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_currentChanged ".} =
  type Cb = proc(super: QHeaderViewcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, old: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(current: gen_qabstractitemmodel.QModelIndex, old: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_currentChanged(QHeaderView(h: self), current, old)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: old)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_event(self: QHeaderView, e: gen_qcoreevent.QEvent): bool =


  fQHeaderView_virtualbase_event(self.h, e.h)

type QHeaderVieweventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QHeaderView, slot: proc(super: QHeaderVieweventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QHeaderVieweventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_event(self: ptr cQHeaderView, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QHeaderView_event ".} =
  type Cb = proc(super: QHeaderVieweventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QHeaderView(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paintEvent(self: QHeaderView, e: gen_qevent.QPaintEvent): void =


  fQHeaderView_virtualbase_paintEvent(self.h, e.h)

type QHeaderViewpaintEventBase* = proc(e: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QHeaderView, slot: proc(super: QHeaderViewpaintEventBase, e: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewpaintEventBase, e: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_paintEvent(self: ptr cQHeaderView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_paintEvent ".} =
  type Cb = proc(super: QHeaderViewpaintEventBase, e: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QHeaderView(h: self), e)
  let slotval1 = gen_qevent.QPaintEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mousePressEvent(self: QHeaderView, e: gen_qevent.QMouseEvent): void =


  fQHeaderView_virtualbase_mousePressEvent(self.h, e.h)

type QHeaderViewmousePressEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QHeaderView, slot: proc(super: QHeaderViewmousePressEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewmousePressEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_mousePressEvent(self: ptr cQHeaderView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_mousePressEvent ".} =
  type Cb = proc(super: QHeaderViewmousePressEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QHeaderView(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QHeaderView, e: gen_qevent.QMouseEvent): void =


  fQHeaderView_virtualbase_mouseMoveEvent(self.h, e.h)

type QHeaderViewmouseMoveEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QHeaderView, slot: proc(super: QHeaderViewmouseMoveEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewmouseMoveEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_mouseMoveEvent(self: ptr cQHeaderView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_mouseMoveEvent ".} =
  type Cb = proc(super: QHeaderViewmouseMoveEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QHeaderView(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QHeaderView, e: gen_qevent.QMouseEvent): void =


  fQHeaderView_virtualbase_mouseReleaseEvent(self.h, e.h)

type QHeaderViewmouseReleaseEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QHeaderView, slot: proc(super: QHeaderViewmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_mouseReleaseEvent(self: ptr cQHeaderView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_mouseReleaseEvent ".} =
  type Cb = proc(super: QHeaderViewmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QHeaderView(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QHeaderView, e: gen_qevent.QMouseEvent): void =


  fQHeaderView_virtualbase_mouseDoubleClickEvent(self.h, e.h)

type QHeaderViewmouseDoubleClickEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QHeaderView, slot: proc(super: QHeaderViewmouseDoubleClickEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewmouseDoubleClickEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_mouseDoubleClickEvent(self: ptr cQHeaderView, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QHeaderViewmouseDoubleClickEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QHeaderView(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_viewportEvent(self: QHeaderView, e: gen_qcoreevent.QEvent): bool =


  fQHeaderView_virtualbase_viewportEvent(self.h, e.h)

type QHeaderViewviewportEventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: QHeaderView, slot: proc(super: QHeaderViewviewportEventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewviewportEventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_viewportEvent(self: ptr cQHeaderView, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QHeaderView_viewportEvent ".} =
  type Cb = proc(super: QHeaderViewviewportEventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_viewportEvent(QHeaderView(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_paintSection(self: QHeaderView, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, logicalIndex: cint): void =


  fQHeaderView_virtualbase_paintSection(self.h, painter.h, rect.h, logicalIndex)

type QHeaderViewpaintSectionBase* = proc(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, logicalIndex: cint): void
proc onpaintSection*(self: QHeaderView, slot: proc(super: QHeaderViewpaintSectionBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, logicalIndex: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewpaintSectionBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, logicalIndex: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_paintSection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_paintSection(self: ptr cQHeaderView, slot: int, painter: pointer, rect: pointer, logicalIndex: cint): void {.exportc: "miqt_exec_callback_QHeaderView_paintSection ".} =
  type Cb = proc(super: QHeaderViewpaintSectionBase, painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, logicalIndex: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, rect: gen_qrect.QRect, logicalIndex: cint): auto =
    callVirtualBase_paintSection(QHeaderView(h: self), painter, rect, logicalIndex)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qrect.QRect(h: rect)

  let slotval3 = logicalIndex


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_sectionSizeFromContents(self: QHeaderView, logicalIndex: cint): gen_qsize.QSize =


  gen_qsize.QSize(h: fQHeaderView_virtualbase_sectionSizeFromContents(self.h, logicalIndex))

type QHeaderViewsectionSizeFromContentsBase* = proc(logicalIndex: cint): gen_qsize.QSize
proc onsectionSizeFromContents*(self: QHeaderView, slot: proc(super: QHeaderViewsectionSizeFromContentsBase, logicalIndex: cint): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewsectionSizeFromContentsBase, logicalIndex: cint): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_sectionSizeFromContents(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_sectionSizeFromContents(self: ptr cQHeaderView, slot: int, logicalIndex: cint): pointer {.exportc: "miqt_exec_callback_QHeaderView_sectionSizeFromContents ".} =
  type Cb = proc(super: QHeaderViewsectionSizeFromContentsBase, logicalIndex: cint): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(logicalIndex: cint): auto =
    callVirtualBase_sectionSizeFromContents(QHeaderView(h: self), logicalIndex)
  let slotval1 = logicalIndex


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_horizontalOffset(self: QHeaderView, ): cint =


  fQHeaderView_virtualbase_horizontalOffset(self.h)

type QHeaderViewhorizontalOffsetBase* = proc(): cint
proc onhorizontalOffset*(self: QHeaderView, slot: proc(super: QHeaderViewhorizontalOffsetBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewhorizontalOffsetBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_horizontalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_horizontalOffset(self: ptr cQHeaderView, slot: int): cint {.exportc: "miqt_exec_callback_QHeaderView_horizontalOffset ".} =
  type Cb = proc(super: QHeaderViewhorizontalOffsetBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_horizontalOffset(QHeaderView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_verticalOffset(self: QHeaderView, ): cint =


  fQHeaderView_virtualbase_verticalOffset(self.h)

type QHeaderViewverticalOffsetBase* = proc(): cint
proc onverticalOffset*(self: QHeaderView, slot: proc(super: QHeaderViewverticalOffsetBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewverticalOffsetBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_verticalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_verticalOffset(self: ptr cQHeaderView, slot: int): cint {.exportc: "miqt_exec_callback_QHeaderView_verticalOffset ".} =
  type Cb = proc(super: QHeaderViewverticalOffsetBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_verticalOffset(QHeaderView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_updateGeometries(self: QHeaderView, ): void =


  fQHeaderView_virtualbase_updateGeometries(self.h)

type QHeaderViewupdateGeometriesBase* = proc(): void
proc onupdateGeometries*(self: QHeaderView, slot: proc(super: QHeaderViewupdateGeometriesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewupdateGeometriesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_updateGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_updateGeometries(self: ptr cQHeaderView, slot: int): void {.exportc: "miqt_exec_callback_QHeaderView_updateGeometries ".} =
  type Cb = proc(super: QHeaderViewupdateGeometriesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateGeometries(QHeaderView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_scrollContentsBy(self: QHeaderView, dx: cint, dy: cint): void =


  fQHeaderView_virtualbase_scrollContentsBy(self.h, dx, dy)

type QHeaderViewscrollContentsByBase* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: QHeaderView, slot: proc(super: QHeaderViewscrollContentsByBase, dx: cint, dy: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewscrollContentsByBase, dx: cint, dy: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_scrollContentsBy(self: ptr cQHeaderView, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QHeaderView_scrollContentsBy ".} =
  type Cb = proc(super: QHeaderViewscrollContentsByBase, dx: cint, dy: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(dx: cint, dy: cint): auto =
    callVirtualBase_scrollContentsBy(QHeaderView(h: self), dx, dy)
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_dataChanged(self: QHeaderView, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void =

  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]


  fQHeaderView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

type QHeaderViewdataChangedBase* = proc(topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
proc ondataChanged*(self: QHeaderView, slot: proc(super: QHeaderViewdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_dataChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_dataChanged(self: ptr cQHeaderView, slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.exportc: "miqt_exec_callback_QHeaderView_dataChanged ".} =
  type Cb = proc(super: QHeaderViewdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): auto =
    callVirtualBase_dataChanged(QHeaderView(h: self), topLeft, bottomRight, roles)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_rowsInserted(self: QHeaderView, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void =


  fQHeaderView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

type QHeaderViewrowsInsertedBase* = proc(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
proc onrowsInserted*(self: QHeaderView, slot: proc(super: QHeaderViewrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_rowsInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_rowsInserted(self: ptr cQHeaderView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QHeaderView_rowsInserted ".} =
  type Cb = proc(super: QHeaderViewrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): auto =
    callVirtualBase_rowsInserted(QHeaderView(h: self), parent, start, endVal)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_visualRect(self: QHeaderView, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect =


  gen_qrect.QRect(h: fQHeaderView_virtualbase_visualRect(self.h, index.h))

type QHeaderViewvisualRectBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
proc onvisualRect*(self: QHeaderView, slot: proc(super: QHeaderViewvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_visualRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_visualRect(self: ptr cQHeaderView, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QHeaderView_visualRect ".} =
  type Cb = proc(super: QHeaderViewvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_visualRect(QHeaderView(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_scrollTo(self: QHeaderView, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void =


  fQHeaderView_virtualbase_scrollTo(self.h, index.h, cint(hint))

type QHeaderViewscrollToBase* = proc(index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
proc onscrollTo*(self: QHeaderView, slot: proc(super: QHeaderViewscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_scrollTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_scrollTo(self: ptr cQHeaderView, slot: int, index: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QHeaderView_scrollTo ".} =
  type Cb = proc(super: QHeaderViewscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): auto =
    callVirtualBase_scrollTo(QHeaderView(h: self), index, hint)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemview.QAbstractItemViewScrollHint(hint)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_indexAt(self: QHeaderView, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQHeaderView_virtualbase_indexAt(self.h, p.h))

type QHeaderViewindexAtBase* = proc(p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
proc onindexAt*(self: QHeaderView, slot: proc(super: QHeaderViewindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_indexAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_indexAt(self: ptr cQHeaderView, slot: int, p: pointer): pointer {.exportc: "miqt_exec_callback_QHeaderView_indexAt ".} =
  type Cb = proc(super: QHeaderViewindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(p: gen_qpoint.QPoint): auto =
    callVirtualBase_indexAt(QHeaderView(h: self), p)
  let slotval1 = gen_qpoint.QPoint(h: p)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_isIndexHidden(self: QHeaderView, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQHeaderView_virtualbase_isIndexHidden(self.h, index.h)

type QHeaderViewisIndexHiddenBase* = proc(index: gen_qabstractitemmodel.QModelIndex): bool
proc onisIndexHidden*(self: QHeaderView, slot: proc(super: QHeaderViewisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_isIndexHidden(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_isIndexHidden(self: ptr cQHeaderView, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QHeaderView_isIndexHidden ".} =
  type Cb = proc(super: QHeaderViewisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_isIndexHidden(QHeaderView(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_moveCursor(self: QHeaderView, param1: gen_qabstractitemview.QAbstractItemViewCursorAction, param2: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQHeaderView_virtualbase_moveCursor(self.h, cint(param1), cint(param2)))

type QHeaderViewmoveCursorBase* = proc(param1: gen_qabstractitemview.QAbstractItemViewCursorAction, param2: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
proc onmoveCursor*(self: QHeaderView, slot: proc(super: QHeaderViewmoveCursorBase, param1: gen_qabstractitemview.QAbstractItemViewCursorAction, param2: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewmoveCursorBase, param1: gen_qabstractitemview.QAbstractItemViewCursorAction, param2: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_moveCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_moveCursor(self: ptr cQHeaderView, slot: int, param1: cint, param2: cint): pointer {.exportc: "miqt_exec_callback_QHeaderView_moveCursor ".} =
  type Cb = proc(super: QHeaderViewmoveCursorBase, param1: gen_qabstractitemview.QAbstractItemViewCursorAction, param2: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qabstractitemview.QAbstractItemViewCursorAction, param2: gen_qnamespace.KeyboardModifier): auto =
    callVirtualBase_moveCursor(QHeaderView(h: self), param1, param2)
  let slotval1 = gen_qabstractitemview.QAbstractItemViewCursorAction(param1)

  let slotval2 = gen_qnamespace.KeyboardModifier(param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_setSelection(self: QHeaderView, rect: gen_qrect.QRect, flags: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void =


  fQHeaderView_virtualbase_setSelection(self.h, rect.h, cint(flags))

type QHeaderViewsetSelectionBase* = proc(rect: gen_qrect.QRect, flags: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
proc onsetSelection*(self: QHeaderView, slot: proc(super: QHeaderViewsetSelectionBase, rect: gen_qrect.QRect, flags: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewsetSelectionBase, rect: gen_qrect.QRect, flags: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_setSelection(self: ptr cQHeaderView, slot: int, rect: pointer, flags: cint): void {.exportc: "miqt_exec_callback_QHeaderView_setSelection ".} =
  type Cb = proc(super: QHeaderViewsetSelectionBase, rect: gen_qrect.QRect, flags: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rect: gen_qrect.QRect, flags: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): auto =
    callVirtualBase_setSelection(QHeaderView(h: self), rect, flags)
  let slotval1 = gen_qrect.QRect(h: rect)

  let slotval2 = gen_qitemselectionmodel.QItemSelectionModelSelectionFlag(flags)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_visualRegionForSelection(self: QHeaderView, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion =


  gen_qregion.QRegion(h: fQHeaderView_virtualbase_visualRegionForSelection(self.h, selection.h))

type QHeaderViewvisualRegionForSelectionBase* = proc(selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
proc onvisualRegionForSelection*(self: QHeaderView, slot: proc(super: QHeaderViewvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_visualRegionForSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_visualRegionForSelection(self: ptr cQHeaderView, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QHeaderView_visualRegionForSelection ".} =
  type Cb = proc(super: QHeaderViewvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selection: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_visualRegionForSelection(QHeaderView(h: self), selection)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setSelectionModel(self: QHeaderView, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void =


  fQHeaderView_virtualbase_setSelectionModel(self.h, selectionModel.h)

type QHeaderViewsetSelectionModelBase* = proc(selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
proc onsetSelectionModel*(self: QHeaderView, slot: proc(super: QHeaderViewsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_setSelectionModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_setSelectionModel(self: ptr cQHeaderView, slot: int, selectionModel: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_setSelectionModel ".} =
  type Cb = proc(super: QHeaderViewsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selectionModel: gen_qitemselectionmodel.QItemSelectionModel): auto =
    callVirtualBase_setSelectionModel(QHeaderView(h: self), selectionModel)
  let slotval1 = gen_qitemselectionmodel.QItemSelectionModel(h: selectionModel)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyboardSearch(self: QHeaderView, search: string): void =


  fQHeaderView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

type QHeaderViewkeyboardSearchBase* = proc(search: string): void
proc onkeyboardSearch*(self: QHeaderView, slot: proc(super: QHeaderViewkeyboardSearchBase, search: string): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewkeyboardSearchBase, search: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_keyboardSearch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_keyboardSearch(self: ptr cQHeaderView, slot: int, search: struct_miqt_string): void {.exportc: "miqt_exec_callback_QHeaderView_keyboardSearch ".} =
  type Cb = proc(super: QHeaderViewkeyboardSearchBase, search: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(search: string): auto =
    callVirtualBase_keyboardSearch(QHeaderView(h: self), search)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHintForRow(self: QHeaderView, row: cint): cint =


  fQHeaderView_virtualbase_sizeHintForRow(self.h, row)

type QHeaderViewsizeHintForRowBase* = proc(row: cint): cint
proc onsizeHintForRow*(self: QHeaderView, slot: proc(super: QHeaderViewsizeHintForRowBase, row: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewsizeHintForRowBase, row: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_sizeHintForRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_sizeHintForRow(self: ptr cQHeaderView, slot: int, row: cint): cint {.exportc: "miqt_exec_callback_QHeaderView_sizeHintForRow ".} =
  type Cb = proc(super: QHeaderViewsizeHintForRowBase, row: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint): auto =
    callVirtualBase_sizeHintForRow(QHeaderView(h: self), row)
  let slotval1 = row


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_sizeHintForColumn(self: QHeaderView, column: cint): cint =


  fQHeaderView_virtualbase_sizeHintForColumn(self.h, column)

type QHeaderViewsizeHintForColumnBase* = proc(column: cint): cint
proc onsizeHintForColumn*(self: QHeaderView, slot: proc(super: QHeaderViewsizeHintForColumnBase, column: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewsizeHintForColumnBase, column: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_sizeHintForColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_sizeHintForColumn(self: ptr cQHeaderView, slot: int, column: cint): cint {.exportc: "miqt_exec_callback_QHeaderView_sizeHintForColumn ".} =
  type Cb = proc(super: QHeaderViewsizeHintForColumnBase, column: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint): auto =
    callVirtualBase_sizeHintForColumn(QHeaderView(h: self), column)
  let slotval1 = column


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_inputMethodQuery(self: QHeaderView, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQHeaderView_virtualbase_inputMethodQuery(self.h, cint(query)))

type QHeaderViewinputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QHeaderView, slot: proc(super: QHeaderViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_inputMethodQuery(self: ptr cQHeaderView, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QHeaderView_inputMethodQuery ".} =
  type Cb = proc(super: QHeaderViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QHeaderView(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setRootIndex(self: QHeaderView, index: gen_qabstractitemmodel.QModelIndex): void =


  fQHeaderView_virtualbase_setRootIndex(self.h, index.h)

type QHeaderViewsetRootIndexBase* = proc(index: gen_qabstractitemmodel.QModelIndex): void
proc onsetRootIndex*(self: QHeaderView, slot: proc(super: QHeaderViewsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_setRootIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_setRootIndex(self: ptr cQHeaderView, slot: int, index: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_setRootIndex ".} =
  type Cb = proc(super: QHeaderViewsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_setRootIndex(QHeaderView(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_selectAll(self: QHeaderView, ): void =


  fQHeaderView_virtualbase_selectAll(self.h)

type QHeaderViewselectAllBase* = proc(): void
proc onselectAll*(self: QHeaderView, slot: proc(super: QHeaderViewselectAllBase): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewselectAllBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_selectAll(self: ptr cQHeaderView, slot: int): void {.exportc: "miqt_exec_callback_QHeaderView_selectAll ".} =
  type Cb = proc(super: QHeaderViewselectAllBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_selectAll(QHeaderView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_rowsAboutToBeRemoved(self: QHeaderView, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void =


  fQHeaderView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

type QHeaderViewrowsAboutToBeRemovedBase* = proc(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
proc onrowsAboutToBeRemoved*(self: QHeaderView, slot: proc(super: QHeaderViewrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_rowsAboutToBeRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_rowsAboutToBeRemoved(self: ptr cQHeaderView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QHeaderView_rowsAboutToBeRemoved ".} =
  type Cb = proc(super: QHeaderViewrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): auto =
    callVirtualBase_rowsAboutToBeRemoved(QHeaderView(h: self), parent, start, endVal)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_selectionChanged(self: QHeaderView, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void =


  fQHeaderView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

type QHeaderViewselectionChangedBase* = proc(selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
proc onselectionChanged*(self: QHeaderView, slot: proc(super: QHeaderViewselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_selectionChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_selectionChanged(self: ptr cQHeaderView, slot: int, selected: pointer, deselected: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_selectionChanged ".} =
  type Cb = proc(super: QHeaderViewselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_selectionChanged(QHeaderView(h: self), selected, deselected)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel.QItemSelection(h: deselected)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_updateEditorData(self: QHeaderView, ): void =


  fQHeaderView_virtualbase_updateEditorData(self.h)

type QHeaderViewupdateEditorDataBase* = proc(): void
proc onupdateEditorData*(self: QHeaderView, slot: proc(super: QHeaderViewupdateEditorDataBase): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewupdateEditorDataBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_updateEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_updateEditorData(self: ptr cQHeaderView, slot: int): void {.exportc: "miqt_exec_callback_QHeaderView_updateEditorData ".} =
  type Cb = proc(super: QHeaderViewupdateEditorDataBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateEditorData(QHeaderView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_updateEditorGeometries(self: QHeaderView, ): void =


  fQHeaderView_virtualbase_updateEditorGeometries(self.h)

type QHeaderViewupdateEditorGeometriesBase* = proc(): void
proc onupdateEditorGeometries*(self: QHeaderView, slot: proc(super: QHeaderViewupdateEditorGeometriesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewupdateEditorGeometriesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_updateEditorGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_updateEditorGeometries(self: ptr cQHeaderView, slot: int): void {.exportc: "miqt_exec_callback_QHeaderView_updateEditorGeometries ".} =
  type Cb = proc(super: QHeaderViewupdateEditorGeometriesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateEditorGeometries(QHeaderView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_verticalScrollbarAction(self: QHeaderView, action: cint): void =


  fQHeaderView_virtualbase_verticalScrollbarAction(self.h, action)

type QHeaderViewverticalScrollbarActionBase* = proc(action: cint): void
proc onverticalScrollbarAction*(self: QHeaderView, slot: proc(super: QHeaderViewverticalScrollbarActionBase, action: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewverticalScrollbarActionBase, action: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_verticalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_verticalScrollbarAction(self: ptr cQHeaderView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QHeaderView_verticalScrollbarAction ".} =
  type Cb = proc(super: QHeaderViewverticalScrollbarActionBase, action: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(action: cint): auto =
    callVirtualBase_verticalScrollbarAction(QHeaderView(h: self), action)
  let slotval1 = action


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalScrollbarAction(self: QHeaderView, action: cint): void =


  fQHeaderView_virtualbase_horizontalScrollbarAction(self.h, action)

type QHeaderViewhorizontalScrollbarActionBase* = proc(action: cint): void
proc onhorizontalScrollbarAction*(self: QHeaderView, slot: proc(super: QHeaderViewhorizontalScrollbarActionBase, action: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewhorizontalScrollbarActionBase, action: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_horizontalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_horizontalScrollbarAction(self: ptr cQHeaderView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QHeaderView_horizontalScrollbarAction ".} =
  type Cb = proc(super: QHeaderViewhorizontalScrollbarActionBase, action: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(action: cint): auto =
    callVirtualBase_horizontalScrollbarAction(QHeaderView(h: self), action)
  let slotval1 = action


  nimfunc[](superCall, slotval1)
proc callVirtualBase_verticalScrollbarValueChanged(self: QHeaderView, value: cint): void =


  fQHeaderView_virtualbase_verticalScrollbarValueChanged(self.h, value)

type QHeaderViewverticalScrollbarValueChangedBase* = proc(value: cint): void
proc onverticalScrollbarValueChanged*(self: QHeaderView, slot: proc(super: QHeaderViewverticalScrollbarValueChangedBase, value: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewverticalScrollbarValueChangedBase, value: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_verticalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_verticalScrollbarValueChanged(self: ptr cQHeaderView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QHeaderView_verticalScrollbarValueChanged ".} =
  type Cb = proc(super: QHeaderViewverticalScrollbarValueChangedBase, value: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: cint): auto =
    callVirtualBase_verticalScrollbarValueChanged(QHeaderView(h: self), value)
  let slotval1 = value


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalScrollbarValueChanged(self: QHeaderView, value: cint): void =


  fQHeaderView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

type QHeaderViewhorizontalScrollbarValueChangedBase* = proc(value: cint): void
proc onhorizontalScrollbarValueChanged*(self: QHeaderView, slot: proc(super: QHeaderViewhorizontalScrollbarValueChangedBase, value: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewhorizontalScrollbarValueChangedBase, value: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_horizontalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_horizontalScrollbarValueChanged(self: ptr cQHeaderView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QHeaderView_horizontalScrollbarValueChanged ".} =
  type Cb = proc(super: QHeaderViewhorizontalScrollbarValueChangedBase, value: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: cint): auto =
    callVirtualBase_horizontalScrollbarValueChanged(QHeaderView(h: self), value)
  let slotval1 = value


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEditor(self: QHeaderView, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void =


  fQHeaderView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

type QHeaderViewcloseEditorBase* = proc(editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
proc oncloseEditor*(self: QHeaderView, slot: proc(super: QHeaderViewcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_closeEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_closeEditor(self: ptr cQHeaderView, slot: int, editor: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QHeaderView_closeEditor ".} =
  type Cb = proc(super: QHeaderViewcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): auto =
    callVirtualBase_closeEditor(QHeaderView(h: self), editor, hint)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint(hint)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_commitData(self: QHeaderView, editor: gen_qwidget.QWidget): void =


  fQHeaderView_virtualbase_commitData(self.h, editor.h)

type QHeaderViewcommitDataBase* = proc(editor: gen_qwidget.QWidget): void
proc oncommitData*(self: QHeaderView, slot: proc(super: QHeaderViewcommitDataBase, editor: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewcommitDataBase, editor: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_commitData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_commitData(self: ptr cQHeaderView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_commitData ".} =
  type Cb = proc(super: QHeaderViewcommitDataBase, editor: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget): auto =
    callVirtualBase_commitData(QHeaderView(h: self), editor)
  let slotval1 = gen_qwidget.QWidget(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_editorDestroyed(self: QHeaderView, editor: gen_qobject.QObject): void =


  fQHeaderView_virtualbase_editorDestroyed(self.h, editor.h)

type QHeaderVieweditorDestroyedBase* = proc(editor: gen_qobject.QObject): void
proc oneditorDestroyed*(self: QHeaderView, slot: proc(super: QHeaderVieweditorDestroyedBase, editor: gen_qobject.QObject): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderVieweditorDestroyedBase, editor: gen_qobject.QObject): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_editorDestroyed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_editorDestroyed(self: ptr cQHeaderView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_editorDestroyed ".} =
  type Cb = proc(super: QHeaderVieweditorDestroyedBase, editor: gen_qobject.QObject): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qobject.QObject): auto =
    callVirtualBase_editorDestroyed(QHeaderView(h: self), editor)
  let slotval1 = gen_qobject.QObject(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_selectedIndexes(self: QHeaderView, ): seq[gen_qabstractitemmodel.QModelIndex] =


  var v_ma = fQHeaderView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

type QHeaderViewselectedIndexesBase* = proc(): seq[gen_qabstractitemmodel.QModelIndex]
proc onselectedIndexes*(self: QHeaderView, slot: proc(super: QHeaderViewselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_selectedIndexes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_selectedIndexes(self: ptr cQHeaderView, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QHeaderView_selectedIndexes ".} =
  type Cb = proc(super: QHeaderViewselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_selectedIndexes(QHeaderView(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_edit2(self: QHeaderView, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool =


  fQHeaderView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

type QHeaderViewedit2Base* = proc(index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
proc onedit2*(self: QHeaderView, slot: proc(super: QHeaderViewedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_edit2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_edit2(self: ptr cQHeaderView, slot: int, index: pointer, trigger: cint, event: pointer): bool {.exportc: "miqt_exec_callback_QHeaderView_edit2 ".} =
  type Cb = proc(super: QHeaderViewedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_edit2(QHeaderView(h: self), index, trigger, event)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemview.QAbstractItemViewEditTrigger(trigger)

  let slotval3 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_selectionCommand(self: QHeaderView, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag =


  gen_qitemselectionmodel.QItemSelectionModelSelectionFlag(fQHeaderView_virtualbase_selectionCommand(self.h, index.h, event.h))

type QHeaderViewselectionCommandBase* = proc(index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
proc onselectionCommand*(self: QHeaderView, slot: proc(super: QHeaderViewselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_selectionCommand(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_selectionCommand(self: ptr cQHeaderView, slot: int, index: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QHeaderView_selectionCommand ".} =
  type Cb = proc(super: QHeaderViewselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_selectionCommand(QHeaderView(h: self), index, event)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  cint(virtualReturn)
proc callVirtualBase_startDrag(self: QHeaderView, supportedActions: gen_qnamespace.DropAction): void =


  fQHeaderView_virtualbase_startDrag(self.h, cint(supportedActions))

type QHeaderViewstartDragBase* = proc(supportedActions: gen_qnamespace.DropAction): void
proc onstartDrag*(self: QHeaderView, slot: proc(super: QHeaderViewstartDragBase, supportedActions: gen_qnamespace.DropAction): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewstartDragBase, supportedActions: gen_qnamespace.DropAction): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_startDrag(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_startDrag(self: ptr cQHeaderView, slot: int, supportedActions: cint): void {.exportc: "miqt_exec_callback_QHeaderView_startDrag ".} =
  type Cb = proc(super: QHeaderViewstartDragBase, supportedActions: gen_qnamespace.DropAction): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(supportedActions: gen_qnamespace.DropAction): auto =
    callVirtualBase_startDrag(QHeaderView(h: self), supportedActions)
  let slotval1 = gen_qnamespace.DropAction(supportedActions)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_viewOptions(self: QHeaderView, ): gen_qstyleoption.QStyleOptionViewItem =


  gen_qstyleoption.QStyleOptionViewItem(h: fQHeaderView_virtualbase_viewOptions(self.h))

type QHeaderViewviewOptionsBase* = proc(): gen_qstyleoption.QStyleOptionViewItem
proc onviewOptions*(self: QHeaderView, slot: proc(super: QHeaderViewviewOptionsBase): gen_qstyleoption.QStyleOptionViewItem) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewviewOptionsBase): gen_qstyleoption.QStyleOptionViewItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_viewOptions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_viewOptions(self: ptr cQHeaderView, slot: int): pointer {.exportc: "miqt_exec_callback_QHeaderView_viewOptions ".} =
  type Cb = proc(super: QHeaderViewviewOptionsBase): gen_qstyleoption.QStyleOptionViewItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewOptions(QHeaderView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_focusNextPrevChild(self: QHeaderView, next: bool): bool =


  fQHeaderView_virtualbase_focusNextPrevChild(self.h, next)

type QHeaderViewfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QHeaderView, slot: proc(super: QHeaderViewfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_focusNextPrevChild(self: ptr cQHeaderView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QHeaderView_focusNextPrevChild ".} =
  type Cb = proc(super: QHeaderViewfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QHeaderView(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_dragEnterEvent(self: QHeaderView, event: gen_qevent.QDragEnterEvent): void =


  fQHeaderView_virtualbase_dragEnterEvent(self.h, event.h)

type QHeaderViewdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QHeaderView, slot: proc(super: QHeaderViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_dragEnterEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_dragEnterEvent ".} =
  type Cb = proc(super: QHeaderViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QHeaderView(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QHeaderView, event: gen_qevent.QDragMoveEvent): void =


  fQHeaderView_virtualbase_dragMoveEvent(self.h, event.h)

type QHeaderViewdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QHeaderView, slot: proc(super: QHeaderViewdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_dragMoveEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_dragMoveEvent ".} =
  type Cb = proc(super: QHeaderViewdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QHeaderView(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QHeaderView, event: gen_qevent.QDragLeaveEvent): void =


  fQHeaderView_virtualbase_dragLeaveEvent(self.h, event.h)

type QHeaderViewdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QHeaderView, slot: proc(super: QHeaderViewdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_dragLeaveEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_dragLeaveEvent ".} =
  type Cb = proc(super: QHeaderViewdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QHeaderView(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QHeaderView, event: gen_qevent.QDropEvent): void =


  fQHeaderView_virtualbase_dropEvent(self.h, event.h)

type QHeaderViewdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QHeaderView, slot: proc(super: QHeaderViewdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_dropEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_dropEvent ".} =
  type Cb = proc(super: QHeaderViewdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QHeaderView(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QHeaderView, event: gen_qevent.QFocusEvent): void =


  fQHeaderView_virtualbase_focusInEvent(self.h, event.h)

type QHeaderViewfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QHeaderView, slot: proc(super: QHeaderViewfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_focusInEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_focusInEvent ".} =
  type Cb = proc(super: QHeaderViewfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QHeaderView(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QHeaderView, event: gen_qevent.QFocusEvent): void =


  fQHeaderView_virtualbase_focusOutEvent(self.h, event.h)

type QHeaderViewfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QHeaderView, slot: proc(super: QHeaderViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_focusOutEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_focusOutEvent ".} =
  type Cb = proc(super: QHeaderViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QHeaderView(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QHeaderView, event: gen_qevent.QKeyEvent): void =


  fQHeaderView_virtualbase_keyPressEvent(self.h, event.h)

type QHeaderViewkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QHeaderView, slot: proc(super: QHeaderViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_keyPressEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_keyPressEvent ".} =
  type Cb = proc(super: QHeaderViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QHeaderView(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QHeaderView, event: gen_qevent.QResizeEvent): void =


  fQHeaderView_virtualbase_resizeEvent(self.h, event.h)

type QHeaderViewresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QHeaderView, slot: proc(super: QHeaderViewresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_resizeEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_resizeEvent ".} =
  type Cb = proc(super: QHeaderViewresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QHeaderView(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QHeaderView, event: gen_qcoreevent.QTimerEvent): void =


  fQHeaderView_virtualbase_timerEvent(self.h, event.h)

type QHeaderViewtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QHeaderView, slot: proc(super: QHeaderViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_timerEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_timerEvent ".} =
  type Cb = proc(super: QHeaderViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QHeaderView(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QHeaderView, event: gen_qevent.QInputMethodEvent): void =


  fQHeaderView_virtualbase_inputMethodEvent(self.h, event.h)

type QHeaderViewinputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QHeaderView, slot: proc(super: QHeaderViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_inputMethodEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_inputMethodEvent ".} =
  type Cb = proc(super: QHeaderViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QHeaderView(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QHeaderView, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQHeaderView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QHeaderVieweventFilterBase* = proc(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QHeaderView, slot: proc(super: QHeaderVieweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QHeaderVieweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_eventFilter(self: ptr cQHeaderView, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QHeaderView_eventFilter ".} =
  type Cb = proc(super: QHeaderVieweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QHeaderView(h: self), objectVal, event)
  let slotval1 = gen_qobject.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_viewportSizeHint(self: QHeaderView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQHeaderView_virtualbase_viewportSizeHint(self.h))

type QHeaderViewviewportSizeHintBase* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: QHeaderView, slot: proc(super: QHeaderViewviewportSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewviewportSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_viewportSizeHint(self: ptr cQHeaderView, slot: int): pointer {.exportc: "miqt_exec_callback_QHeaderView_viewportSizeHint ".} =
  type Cb = proc(super: QHeaderViewviewportSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewportSizeHint(QHeaderView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QHeaderView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQHeaderView_virtualbase_minimumSizeHint(self.h))

type QHeaderViewminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QHeaderView, slot: proc(super: QHeaderViewminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_minimumSizeHint(self: ptr cQHeaderView, slot: int): pointer {.exportc: "miqt_exec_callback_QHeaderView_minimumSizeHint ".} =
  type Cb = proc(super: QHeaderViewminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QHeaderView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setupViewport(self: QHeaderView, viewport: gen_qwidget.QWidget): void =


  fQHeaderView_virtualbase_setupViewport(self.h, viewport.h)

type QHeaderViewsetupViewportBase* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: QHeaderView, slot: proc(super: QHeaderViewsetupViewportBase, viewport: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_setupViewport(self: ptr cQHeaderView, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_setupViewport ".} =
  type Cb = proc(super: QHeaderViewsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(viewport: gen_qwidget.QWidget): auto =
    callVirtualBase_setupViewport(QHeaderView(h: self), viewport)
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QHeaderView, param1: gen_qevent.QWheelEvent): void =


  fQHeaderView_virtualbase_wheelEvent(self.h, param1.h)

type QHeaderViewwheelEventBase* = proc(param1: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QHeaderView, slot: proc(super: QHeaderViewwheelEventBase, param1: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_wheelEvent(self: ptr cQHeaderView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_wheelEvent ".} =
  type Cb = proc(super: QHeaderViewwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QHeaderView(h: self), param1)
  let slotval1 = gen_qevent.QWheelEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QHeaderView, param1: gen_qevent.QContextMenuEvent): void =


  fQHeaderView_virtualbase_contextMenuEvent(self.h, param1.h)

type QHeaderViewcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QHeaderView, slot: proc(super: QHeaderViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_contextMenuEvent(self: ptr cQHeaderView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_contextMenuEvent ".} =
  type Cb = proc(super: QHeaderViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QHeaderView(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QHeaderView, param1: gen_qcoreevent.QEvent): void =


  fQHeaderView_virtualbase_changeEvent(self.h, param1.h)

type QHeaderViewchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QHeaderView, slot: proc(super: QHeaderViewchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_changeEvent(self: ptr cQHeaderView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_changeEvent ".} =
  type Cb = proc(super: QHeaderViewchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QHeaderView(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QHeaderView, ): cint =


  fQHeaderView_virtualbase_devType(self.h)

type QHeaderViewdevTypeBase* = proc(): cint
proc ondevType*(self: QHeaderView, slot: proc(super: QHeaderViewdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_devType(self: ptr cQHeaderView, slot: int): cint {.exportc: "miqt_exec_callback_QHeaderView_devType ".} =
  type Cb = proc(super: QHeaderViewdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QHeaderView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_heightForWidth(self: QHeaderView, param1: cint): cint =


  fQHeaderView_virtualbase_heightForWidth(self.h, param1)

type QHeaderViewheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QHeaderView, slot: proc(super: QHeaderViewheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_heightForWidth(self: ptr cQHeaderView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QHeaderView_heightForWidth ".} =
  type Cb = proc(super: QHeaderViewheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QHeaderView(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QHeaderView, ): bool =


  fQHeaderView_virtualbase_hasHeightForWidth(self.h)

type QHeaderViewhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QHeaderView, slot: proc(super: QHeaderViewhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_hasHeightForWidth(self: ptr cQHeaderView, slot: int): bool {.exportc: "miqt_exec_callback_QHeaderView_hasHeightForWidth ".} =
  type Cb = proc(super: QHeaderViewhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QHeaderView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QHeaderView, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQHeaderView_virtualbase_paintEngine(self.h))

type QHeaderViewpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QHeaderView, slot: proc(super: QHeaderViewpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_paintEngine(self: ptr cQHeaderView, slot: int): pointer {.exportc: "miqt_exec_callback_QHeaderView_paintEngine ".} =
  type Cb = proc(super: QHeaderViewpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QHeaderView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_keyReleaseEvent(self: QHeaderView, event: gen_qevent.QKeyEvent): void =


  fQHeaderView_virtualbase_keyReleaseEvent(self.h, event.h)

type QHeaderViewkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QHeaderView, slot: proc(super: QHeaderViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_keyReleaseEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_keyReleaseEvent ".} =
  type Cb = proc(super: QHeaderViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QHeaderView(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QHeaderView, event: gen_qcoreevent.QEvent): void =


  fQHeaderView_virtualbase_enterEvent(self.h, event.h)

type QHeaderViewenterEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onenterEvent*(self: QHeaderView, slot: proc(super: QHeaderViewenterEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewenterEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_enterEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_enterEvent ".} =
  type Cb = proc(super: QHeaderViewenterEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_enterEvent(QHeaderView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QHeaderView, event: gen_qcoreevent.QEvent): void =


  fQHeaderView_virtualbase_leaveEvent(self.h, event.h)

type QHeaderViewleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QHeaderView, slot: proc(super: QHeaderViewleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_leaveEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_leaveEvent ".} =
  type Cb = proc(super: QHeaderViewleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QHeaderView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QHeaderView, event: gen_qevent.QMoveEvent): void =


  fQHeaderView_virtualbase_moveEvent(self.h, event.h)

type QHeaderViewmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QHeaderView, slot: proc(super: QHeaderViewmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_moveEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_moveEvent ".} =
  type Cb = proc(super: QHeaderViewmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QHeaderView(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QHeaderView, event: gen_qevent.QCloseEvent): void =


  fQHeaderView_virtualbase_closeEvent(self.h, event.h)

type QHeaderViewcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QHeaderView, slot: proc(super: QHeaderViewcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_closeEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_closeEvent ".} =
  type Cb = proc(super: QHeaderViewcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QHeaderView(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QHeaderView, event: gen_qevent.QTabletEvent): void =


  fQHeaderView_virtualbase_tabletEvent(self.h, event.h)

type QHeaderViewtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QHeaderView, slot: proc(super: QHeaderViewtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_tabletEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_tabletEvent ".} =
  type Cb = proc(super: QHeaderViewtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QHeaderView(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QHeaderView, event: gen_qevent.QActionEvent): void =


  fQHeaderView_virtualbase_actionEvent(self.h, event.h)

type QHeaderViewactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QHeaderView, slot: proc(super: QHeaderViewactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_actionEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_actionEvent ".} =
  type Cb = proc(super: QHeaderViewactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QHeaderView(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QHeaderView, event: gen_qevent.QShowEvent): void =


  fQHeaderView_virtualbase_showEvent(self.h, event.h)

type QHeaderViewshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QHeaderView, slot: proc(super: QHeaderViewshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_showEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_showEvent ".} =
  type Cb = proc(super: QHeaderViewshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QHeaderView(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QHeaderView, event: gen_qevent.QHideEvent): void =


  fQHeaderView_virtualbase_hideEvent(self.h, event.h)

type QHeaderViewhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QHeaderView, slot: proc(super: QHeaderViewhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_hideEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_hideEvent ".} =
  type Cb = proc(super: QHeaderViewhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QHeaderView(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QHeaderView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =


  fQHeaderView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QHeaderViewnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEvent*(self: QHeaderView, slot: proc(super: QHeaderViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_nativeEvent(self: ptr cQHeaderView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QHeaderView_nativeEvent ".} =
  type Cb = proc(super: QHeaderViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr clong): auto =
    callVirtualBase_nativeEvent(QHeaderView(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QHeaderView, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQHeaderView_virtualbase_metric(self.h, cint(param1))

type QHeaderViewmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QHeaderView, slot: proc(super: QHeaderViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_metric(self: ptr cQHeaderView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QHeaderView_metric ".} =
  type Cb = proc(super: QHeaderViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QHeaderView(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QHeaderView, painter: gen_qpainter.QPainter): void =


  fQHeaderView_virtualbase_initPainter(self.h, painter.h)

type QHeaderViewinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QHeaderView, slot: proc(super: QHeaderViewinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_initPainter(self: ptr cQHeaderView, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_initPainter ".} =
  type Cb = proc(super: QHeaderViewinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QHeaderView(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QHeaderView, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQHeaderView_virtualbase_redirected(self.h, offset.h))

type QHeaderViewredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QHeaderView, slot: proc(super: QHeaderViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_redirected(self: ptr cQHeaderView, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QHeaderView_redirected ".} =
  type Cb = proc(super: QHeaderViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QHeaderView(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QHeaderView, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQHeaderView_virtualbase_sharedPainter(self.h))

type QHeaderViewsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QHeaderView, slot: proc(super: QHeaderViewsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_sharedPainter(self: ptr cQHeaderView, slot: int): pointer {.exportc: "miqt_exec_callback_QHeaderView_sharedPainter ".} =
  type Cb = proc(super: QHeaderViewsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QHeaderView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_childEvent(self: QHeaderView, event: gen_qcoreevent.QChildEvent): void =


  fQHeaderView_virtualbase_childEvent(self.h, event.h)

type QHeaderViewchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QHeaderView, slot: proc(super: QHeaderViewchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_childEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_childEvent ".} =
  type Cb = proc(super: QHeaderViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QHeaderView(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QHeaderView, event: gen_qcoreevent.QEvent): void =


  fQHeaderView_virtualbase_customEvent(self.h, event.h)

type QHeaderViewcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QHeaderView, slot: proc(super: QHeaderViewcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_customEvent(self: ptr cQHeaderView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_customEvent ".} =
  type Cb = proc(super: QHeaderViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QHeaderView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QHeaderView, signal: gen_qmetaobject.QMetaMethod): void =


  fQHeaderView_virtualbase_connectNotify(self.h, signal.h)

type QHeaderViewconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QHeaderView, slot: proc(super: QHeaderViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_connectNotify(self: ptr cQHeaderView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_connectNotify ".} =
  type Cb = proc(super: QHeaderViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QHeaderView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QHeaderView, signal: gen_qmetaobject.QMetaMethod): void =


  fQHeaderView_virtualbase_disconnectNotify(self.h, signal.h)

type QHeaderViewdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QHeaderView, slot: proc(super: QHeaderViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QHeaderViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHeaderView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHeaderView_disconnectNotify(self: ptr cQHeaderView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QHeaderView_disconnectNotify ".} =
  type Cb = proc(super: QHeaderViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QHeaderView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QHeaderView) =
  fcQHeaderView_delete(self.h)
