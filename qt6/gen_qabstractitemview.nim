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
{.compile("gen_qabstractitemview.cpp", cflags).}


type QAbstractItemViewSelectionMode* = cint
const
  QAbstractItemViewNoSelection* = 0
  QAbstractItemViewSingleSelection* = 1
  QAbstractItemViewMultiSelection* = 2
  QAbstractItemViewExtendedSelection* = 3
  QAbstractItemViewContiguousSelection* = 4



type QAbstractItemViewSelectionBehavior* = cint
const
  QAbstractItemViewSelectItems* = 0
  QAbstractItemViewSelectRows* = 1
  QAbstractItemViewSelectColumns* = 2



type QAbstractItemViewScrollHint* = cint
const
  QAbstractItemViewEnsureVisible* = 0
  QAbstractItemViewPositionAtTop* = 1
  QAbstractItemViewPositionAtBottom* = 2
  QAbstractItemViewPositionAtCenter* = 3



type QAbstractItemViewEditTrigger* = cint
const
  QAbstractItemViewNoEditTriggers* = 0
  QAbstractItemViewCurrentChanged* = 1
  QAbstractItemViewDoubleClicked* = 2
  QAbstractItemViewSelectedClicked* = 4
  QAbstractItemViewEditKeyPressed* = 8
  QAbstractItemViewAnyKeyPressed* = 16
  QAbstractItemViewAllEditTriggers* = 31



type QAbstractItemViewScrollMode* = cint
const
  QAbstractItemViewScrollPerItem* = 0
  QAbstractItemViewScrollPerPixel* = 1



type QAbstractItemViewDragDropMode* = cint
const
  QAbstractItemViewNoDragDrop* = 0
  QAbstractItemViewDragOnly* = 1
  QAbstractItemViewDropOnly* = 2
  QAbstractItemViewDragDrop* = 3
  QAbstractItemViewInternalMove* = 4



type QAbstractItemViewCursorAction* = cint
const
  QAbstractItemViewMoveUp* = 0
  QAbstractItemViewMoveDown* = 1
  QAbstractItemViewMoveLeft* = 2
  QAbstractItemViewMoveRight* = 3
  QAbstractItemViewMoveHome* = 4
  QAbstractItemViewMoveEnd* = 5
  QAbstractItemViewMovePageUp* = 6
  QAbstractItemViewMovePageDown* = 7
  QAbstractItemViewMoveNext* = 8
  QAbstractItemViewMovePrevious* = 9



type QAbstractItemViewState* = cint
const
  QAbstractItemViewNoState* = 0
  QAbstractItemViewDraggingState* = 1
  QAbstractItemViewDragSelectingState* = 2
  QAbstractItemViewEditingState* = 3
  QAbstractItemViewExpandingState* = 4
  QAbstractItemViewCollapsingState* = 5
  QAbstractItemViewAnimatingState* = 6



type QAbstractItemViewDropIndicatorPosition* = cint
const
  QAbstractItemViewOnItem* = 0
  QAbstractItemViewAboveItem* = 1
  QAbstractItemViewBelowItem* = 2
  QAbstractItemViewOnViewport* = 3



import gen_qabstractitemview_types
export gen_qabstractitemview_types

import
  gen_qabstractitemdelegate,
  gen_qabstractitemmodel,
  gen_qabstractscrollarea,
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
  gen_qabstractscrollarea,
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

type cQAbstractItemView*{.exportc: "QAbstractItemView", incompleteStruct.} = object

proc fcQAbstractItemView_new(parent: pointer): ptr cQAbstractItemView {.importc: "QAbstractItemView_new".}
proc fcQAbstractItemView_new2(): ptr cQAbstractItemView {.importc: "QAbstractItemView_new2".}
proc fcQAbstractItemView_metaObject(self: pointer, ): pointer {.importc: "QAbstractItemView_metaObject".}
proc fcQAbstractItemView_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractItemView_metacast".}
proc fcQAbstractItemView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractItemView_metacall".}
proc fcQAbstractItemView_tr(s: cstring): struct_miqt_string {.importc: "QAbstractItemView_tr".}
proc fcQAbstractItemView_setModel(self: pointer, model: pointer): void {.importc: "QAbstractItemView_setModel".}
proc fcQAbstractItemView_model(self: pointer, ): pointer {.importc: "QAbstractItemView_model".}
proc fcQAbstractItemView_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QAbstractItemView_setSelectionModel".}
proc fcQAbstractItemView_selectionModel(self: pointer, ): pointer {.importc: "QAbstractItemView_selectionModel".}
proc fcQAbstractItemView_setItemDelegate(self: pointer, delegate: pointer): void {.importc: "QAbstractItemView_setItemDelegate".}
proc fcQAbstractItemView_itemDelegate(self: pointer, ): pointer {.importc: "QAbstractItemView_itemDelegate".}
proc fcQAbstractItemView_setSelectionMode(self: pointer, mode: cint): void {.importc: "QAbstractItemView_setSelectionMode".}
proc fcQAbstractItemView_selectionMode(self: pointer, ): cint {.importc: "QAbstractItemView_selectionMode".}
proc fcQAbstractItemView_setSelectionBehavior(self: pointer, behavior: cint): void {.importc: "QAbstractItemView_setSelectionBehavior".}
proc fcQAbstractItemView_selectionBehavior(self: pointer, ): cint {.importc: "QAbstractItemView_selectionBehavior".}
proc fcQAbstractItemView_currentIndex(self: pointer, ): pointer {.importc: "QAbstractItemView_currentIndex".}
proc fcQAbstractItemView_rootIndex(self: pointer, ): pointer {.importc: "QAbstractItemView_rootIndex".}
proc fcQAbstractItemView_setEditTriggers(self: pointer, triggers: cint): void {.importc: "QAbstractItemView_setEditTriggers".}
proc fcQAbstractItemView_editTriggers(self: pointer, ): cint {.importc: "QAbstractItemView_editTriggers".}
proc fcQAbstractItemView_setVerticalScrollMode(self: pointer, mode: cint): void {.importc: "QAbstractItemView_setVerticalScrollMode".}
proc fcQAbstractItemView_verticalScrollMode(self: pointer, ): cint {.importc: "QAbstractItemView_verticalScrollMode".}
proc fcQAbstractItemView_resetVerticalScrollMode(self: pointer, ): void {.importc: "QAbstractItemView_resetVerticalScrollMode".}
proc fcQAbstractItemView_setHorizontalScrollMode(self: pointer, mode: cint): void {.importc: "QAbstractItemView_setHorizontalScrollMode".}
proc fcQAbstractItemView_horizontalScrollMode(self: pointer, ): cint {.importc: "QAbstractItemView_horizontalScrollMode".}
proc fcQAbstractItemView_resetHorizontalScrollMode(self: pointer, ): void {.importc: "QAbstractItemView_resetHorizontalScrollMode".}
proc fcQAbstractItemView_setAutoScroll(self: pointer, enable: bool): void {.importc: "QAbstractItemView_setAutoScroll".}
proc fcQAbstractItemView_hasAutoScroll(self: pointer, ): bool {.importc: "QAbstractItemView_hasAutoScroll".}
proc fcQAbstractItemView_setAutoScrollMargin(self: pointer, margin: cint): void {.importc: "QAbstractItemView_setAutoScrollMargin".}
proc fcQAbstractItemView_autoScrollMargin(self: pointer, ): cint {.importc: "QAbstractItemView_autoScrollMargin".}
proc fcQAbstractItemView_setTabKeyNavigation(self: pointer, enable: bool): void {.importc: "QAbstractItemView_setTabKeyNavigation".}
proc fcQAbstractItemView_tabKeyNavigation(self: pointer, ): bool {.importc: "QAbstractItemView_tabKeyNavigation".}
proc fcQAbstractItemView_setDropIndicatorShown(self: pointer, enable: bool): void {.importc: "QAbstractItemView_setDropIndicatorShown".}
proc fcQAbstractItemView_showDropIndicator(self: pointer, ): bool {.importc: "QAbstractItemView_showDropIndicator".}
proc fcQAbstractItemView_setDragEnabled(self: pointer, enable: bool): void {.importc: "QAbstractItemView_setDragEnabled".}
proc fcQAbstractItemView_dragEnabled(self: pointer, ): bool {.importc: "QAbstractItemView_dragEnabled".}
proc fcQAbstractItemView_setDragDropOverwriteMode(self: pointer, overwrite: bool): void {.importc: "QAbstractItemView_setDragDropOverwriteMode".}
proc fcQAbstractItemView_dragDropOverwriteMode(self: pointer, ): bool {.importc: "QAbstractItemView_dragDropOverwriteMode".}
proc fcQAbstractItemView_setDragDropMode(self: pointer, behavior: cint): void {.importc: "QAbstractItemView_setDragDropMode".}
proc fcQAbstractItemView_dragDropMode(self: pointer, ): cint {.importc: "QAbstractItemView_dragDropMode".}
proc fcQAbstractItemView_setDefaultDropAction(self: pointer, dropAction: cint): void {.importc: "QAbstractItemView_setDefaultDropAction".}
proc fcQAbstractItemView_defaultDropAction(self: pointer, ): cint {.importc: "QAbstractItemView_defaultDropAction".}
proc fcQAbstractItemView_setAlternatingRowColors(self: pointer, enable: bool): void {.importc: "QAbstractItemView_setAlternatingRowColors".}
proc fcQAbstractItemView_alternatingRowColors(self: pointer, ): bool {.importc: "QAbstractItemView_alternatingRowColors".}
proc fcQAbstractItemView_setIconSize(self: pointer, size: pointer): void {.importc: "QAbstractItemView_setIconSize".}
proc fcQAbstractItemView_iconSize(self: pointer, ): pointer {.importc: "QAbstractItemView_iconSize".}
proc fcQAbstractItemView_setTextElideMode(self: pointer, mode: cint): void {.importc: "QAbstractItemView_setTextElideMode".}
proc fcQAbstractItemView_textElideMode(self: pointer, ): cint {.importc: "QAbstractItemView_textElideMode".}
proc fcQAbstractItemView_keyboardSearch(self: pointer, search: struct_miqt_string): void {.importc: "QAbstractItemView_keyboardSearch".}
proc fcQAbstractItemView_visualRect(self: pointer, index: pointer): pointer {.importc: "QAbstractItemView_visualRect".}
proc fcQAbstractItemView_scrollTo(self: pointer, index: pointer, hint: cint): void {.importc: "QAbstractItemView_scrollTo".}
proc fcQAbstractItemView_indexAt(self: pointer, point: pointer): pointer {.importc: "QAbstractItemView_indexAt".}
proc fcQAbstractItemView_sizeHintForIndex(self: pointer, index: pointer): pointer {.importc: "QAbstractItemView_sizeHintForIndex".}
proc fcQAbstractItemView_sizeHintForRow(self: pointer, row: cint): cint {.importc: "QAbstractItemView_sizeHintForRow".}
proc fcQAbstractItemView_sizeHintForColumn(self: pointer, column: cint): cint {.importc: "QAbstractItemView_sizeHintForColumn".}
proc fcQAbstractItemView_openPersistentEditor(self: pointer, index: pointer): void {.importc: "QAbstractItemView_openPersistentEditor".}
proc fcQAbstractItemView_closePersistentEditor(self: pointer, index: pointer): void {.importc: "QAbstractItemView_closePersistentEditor".}
proc fcQAbstractItemView_isPersistentEditorOpen(self: pointer, index: pointer): bool {.importc: "QAbstractItemView_isPersistentEditorOpen".}
proc fcQAbstractItemView_setIndexWidget(self: pointer, index: pointer, widget: pointer): void {.importc: "QAbstractItemView_setIndexWidget".}
proc fcQAbstractItemView_indexWidget(self: pointer, index: pointer): pointer {.importc: "QAbstractItemView_indexWidget".}
proc fcQAbstractItemView_setItemDelegateForRow(self: pointer, row: cint, delegate: pointer): void {.importc: "QAbstractItemView_setItemDelegateForRow".}
proc fcQAbstractItemView_itemDelegateForRow(self: pointer, row: cint): pointer {.importc: "QAbstractItemView_itemDelegateForRow".}
proc fcQAbstractItemView_setItemDelegateForColumn(self: pointer, column: cint, delegate: pointer): void {.importc: "QAbstractItemView_setItemDelegateForColumn".}
proc fcQAbstractItemView_itemDelegateForColumn(self: pointer, column: cint): pointer {.importc: "QAbstractItemView_itemDelegateForColumn".}
proc fcQAbstractItemView_itemDelegateWithIndex(self: pointer, index: pointer): pointer {.importc: "QAbstractItemView_itemDelegateWithIndex".}
proc fcQAbstractItemView_itemDelegateForIndex(self: pointer, index: pointer): pointer {.importc: "QAbstractItemView_itemDelegateForIndex".}
proc fcQAbstractItemView_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QAbstractItemView_inputMethodQuery".}
proc fcQAbstractItemView_reset(self: pointer, ): void {.importc: "QAbstractItemView_reset".}
proc fcQAbstractItemView_setRootIndex(self: pointer, index: pointer): void {.importc: "QAbstractItemView_setRootIndex".}
proc fcQAbstractItemView_doItemsLayout(self: pointer, ): void {.importc: "QAbstractItemView_doItemsLayout".}
proc fcQAbstractItemView_selectAll(self: pointer, ): void {.importc: "QAbstractItemView_selectAll".}
proc fcQAbstractItemView_edit(self: pointer, index: pointer): void {.importc: "QAbstractItemView_edit".}
proc fcQAbstractItemView_clearSelection(self: pointer, ): void {.importc: "QAbstractItemView_clearSelection".}
proc fcQAbstractItemView_setCurrentIndex(self: pointer, index: pointer): void {.importc: "QAbstractItemView_setCurrentIndex".}
proc fcQAbstractItemView_scrollToTop(self: pointer, ): void {.importc: "QAbstractItemView_scrollToTop".}
proc fcQAbstractItemView_scrollToBottom(self: pointer, ): void {.importc: "QAbstractItemView_scrollToBottom".}
proc fcQAbstractItemView_update(self: pointer, index: pointer): void {.importc: "QAbstractItemView_update".}
proc fcQAbstractItemView_pressed(self: pointer, index: pointer): void {.importc: "QAbstractItemView_pressed".}
proc fQAbstractItemView_connect_pressed(self: pointer, slot: int) {.importc: "QAbstractItemView_connect_pressed".}
proc fcQAbstractItemView_clicked(self: pointer, index: pointer): void {.importc: "QAbstractItemView_clicked".}
proc fQAbstractItemView_connect_clicked(self: pointer, slot: int) {.importc: "QAbstractItemView_connect_clicked".}
proc fcQAbstractItemView_doubleClicked(self: pointer, index: pointer): void {.importc: "QAbstractItemView_doubleClicked".}
proc fQAbstractItemView_connect_doubleClicked(self: pointer, slot: int) {.importc: "QAbstractItemView_connect_doubleClicked".}
proc fcQAbstractItemView_activated(self: pointer, index: pointer): void {.importc: "QAbstractItemView_activated".}
proc fQAbstractItemView_connect_activated(self: pointer, slot: int) {.importc: "QAbstractItemView_connect_activated".}
proc fcQAbstractItemView_entered(self: pointer, index: pointer): void {.importc: "QAbstractItemView_entered".}
proc fQAbstractItemView_connect_entered(self: pointer, slot: int) {.importc: "QAbstractItemView_connect_entered".}
proc fcQAbstractItemView_viewportEntered(self: pointer, ): void {.importc: "QAbstractItemView_viewportEntered".}
proc fQAbstractItemView_connect_viewportEntered(self: pointer, slot: int) {.importc: "QAbstractItemView_connect_viewportEntered".}
proc fcQAbstractItemView_iconSizeChanged(self: pointer, size: pointer): void {.importc: "QAbstractItemView_iconSizeChanged".}
proc fQAbstractItemView_connect_iconSizeChanged(self: pointer, slot: int) {.importc: "QAbstractItemView_connect_iconSizeChanged".}
proc fcQAbstractItemView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractItemView_tr2".}
proc fcQAbstractItemView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractItemView_tr3".}
proc fQAbstractItemView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractItemView_virtualbase_metacall".}
proc fcQAbstractItemView_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_metacall".}
proc fQAbstractItemView_virtualbase_setModel(self: pointer, model: pointer): void{.importc: "QAbstractItemView_virtualbase_setModel".}
proc fcQAbstractItemView_override_virtual_setModel(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_setModel".}
proc fQAbstractItemView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void{.importc: "QAbstractItemView_virtualbase_setSelectionModel".}
proc fcQAbstractItemView_override_virtual_setSelectionModel(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_setSelectionModel".}
proc fQAbstractItemView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void{.importc: "QAbstractItemView_virtualbase_keyboardSearch".}
proc fcQAbstractItemView_override_virtual_keyboardSearch(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_keyboardSearch".}
proc fcQAbstractItemView_override_virtual_visualRect(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_visualRect".}
proc fcQAbstractItemView_override_virtual_scrollTo(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_scrollTo".}
proc fcQAbstractItemView_override_virtual_indexAt(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_indexAt".}
proc fQAbstractItemView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint{.importc: "QAbstractItemView_virtualbase_sizeHintForRow".}
proc fcQAbstractItemView_override_virtual_sizeHintForRow(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_sizeHintForRow".}
proc fQAbstractItemView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint{.importc: "QAbstractItemView_virtualbase_sizeHintForColumn".}
proc fcQAbstractItemView_override_virtual_sizeHintForColumn(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_sizeHintForColumn".}
proc fQAbstractItemView_virtualbase_itemDelegateForIndex(self: pointer, index: pointer): pointer{.importc: "QAbstractItemView_virtualbase_itemDelegateForIndex".}
proc fcQAbstractItemView_override_virtual_itemDelegateForIndex(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_itemDelegateForIndex".}
proc fQAbstractItemView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QAbstractItemView_virtualbase_inputMethodQuery".}
proc fcQAbstractItemView_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_inputMethodQuery".}
proc fQAbstractItemView_virtualbase_reset(self: pointer, ): void{.importc: "QAbstractItemView_virtualbase_reset".}
proc fcQAbstractItemView_override_virtual_reset(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_reset".}
proc fQAbstractItemView_virtualbase_setRootIndex(self: pointer, index: pointer): void{.importc: "QAbstractItemView_virtualbase_setRootIndex".}
proc fcQAbstractItemView_override_virtual_setRootIndex(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_setRootIndex".}
proc fQAbstractItemView_virtualbase_doItemsLayout(self: pointer, ): void{.importc: "QAbstractItemView_virtualbase_doItemsLayout".}
proc fcQAbstractItemView_override_virtual_doItemsLayout(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_doItemsLayout".}
proc fQAbstractItemView_virtualbase_selectAll(self: pointer, ): void{.importc: "QAbstractItemView_virtualbase_selectAll".}
proc fcQAbstractItemView_override_virtual_selectAll(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_selectAll".}
proc fQAbstractItemView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void{.importc: "QAbstractItemView_virtualbase_dataChanged".}
proc fcQAbstractItemView_override_virtual_dataChanged(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_dataChanged".}
proc fQAbstractItemView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QAbstractItemView_virtualbase_rowsInserted".}
proc fcQAbstractItemView_override_virtual_rowsInserted(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_rowsInserted".}
proc fQAbstractItemView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QAbstractItemView_virtualbase_rowsAboutToBeRemoved".}
proc fcQAbstractItemView_override_virtual_rowsAboutToBeRemoved(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_rowsAboutToBeRemoved".}
proc fQAbstractItemView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void{.importc: "QAbstractItemView_virtualbase_selectionChanged".}
proc fcQAbstractItemView_override_virtual_selectionChanged(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_selectionChanged".}
proc fQAbstractItemView_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void{.importc: "QAbstractItemView_virtualbase_currentChanged".}
proc fcQAbstractItemView_override_virtual_currentChanged(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_currentChanged".}
proc fQAbstractItemView_virtualbase_updateEditorData(self: pointer, ): void{.importc: "QAbstractItemView_virtualbase_updateEditorData".}
proc fcQAbstractItemView_override_virtual_updateEditorData(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_updateEditorData".}
proc fQAbstractItemView_virtualbase_updateEditorGeometries(self: pointer, ): void{.importc: "QAbstractItemView_virtualbase_updateEditorGeometries".}
proc fcQAbstractItemView_override_virtual_updateEditorGeometries(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_updateEditorGeometries".}
proc fQAbstractItemView_virtualbase_updateGeometries(self: pointer, ): void{.importc: "QAbstractItemView_virtualbase_updateGeometries".}
proc fcQAbstractItemView_override_virtual_updateGeometries(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_updateGeometries".}
proc fQAbstractItemView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void{.importc: "QAbstractItemView_virtualbase_verticalScrollbarAction".}
proc fcQAbstractItemView_override_virtual_verticalScrollbarAction(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_verticalScrollbarAction".}
proc fQAbstractItemView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void{.importc: "QAbstractItemView_virtualbase_horizontalScrollbarAction".}
proc fcQAbstractItemView_override_virtual_horizontalScrollbarAction(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_horizontalScrollbarAction".}
proc fQAbstractItemView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QAbstractItemView_virtualbase_verticalScrollbarValueChanged".}
proc fcQAbstractItemView_override_virtual_verticalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_verticalScrollbarValueChanged".}
proc fQAbstractItemView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QAbstractItemView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQAbstractItemView_override_virtual_horizontalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_horizontalScrollbarValueChanged".}
proc fQAbstractItemView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void{.importc: "QAbstractItemView_virtualbase_closeEditor".}
proc fcQAbstractItemView_override_virtual_closeEditor(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_closeEditor".}
proc fQAbstractItemView_virtualbase_commitData(self: pointer, editor: pointer): void{.importc: "QAbstractItemView_virtualbase_commitData".}
proc fcQAbstractItemView_override_virtual_commitData(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_commitData".}
proc fQAbstractItemView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void{.importc: "QAbstractItemView_virtualbase_editorDestroyed".}
proc fcQAbstractItemView_override_virtual_editorDestroyed(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_editorDestroyed".}
proc fcQAbstractItemView_override_virtual_moveCursor(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_moveCursor".}
proc fcQAbstractItemView_override_virtual_horizontalOffset(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_horizontalOffset".}
proc fcQAbstractItemView_override_virtual_verticalOffset(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_verticalOffset".}
proc fcQAbstractItemView_override_virtual_isIndexHidden(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_isIndexHidden".}
proc fcQAbstractItemView_override_virtual_setSelection(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_setSelection".}
proc fcQAbstractItemView_override_virtual_visualRegionForSelection(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_visualRegionForSelection".}
proc fQAbstractItemView_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array{.importc: "QAbstractItemView_virtualbase_selectedIndexes".}
proc fcQAbstractItemView_override_virtual_selectedIndexes(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_selectedIndexes".}
proc fQAbstractItemView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool{.importc: "QAbstractItemView_virtualbase_edit2".}
proc fcQAbstractItemView_override_virtual_edit2(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_edit2".}
proc fQAbstractItemView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint{.importc: "QAbstractItemView_virtualbase_selectionCommand".}
proc fcQAbstractItemView_override_virtual_selectionCommand(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_selectionCommand".}
proc fQAbstractItemView_virtualbase_startDrag(self: pointer, supportedActions: cint): void{.importc: "QAbstractItemView_virtualbase_startDrag".}
proc fcQAbstractItemView_override_virtual_startDrag(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_startDrag".}
proc fQAbstractItemView_virtualbase_initViewItemOption(self: pointer, option: pointer): void{.importc: "QAbstractItemView_virtualbase_initViewItemOption".}
proc fcQAbstractItemView_override_virtual_initViewItemOption(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_initViewItemOption".}
proc fQAbstractItemView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QAbstractItemView_virtualbase_focusNextPrevChild".}
proc fcQAbstractItemView_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_focusNextPrevChild".}
proc fQAbstractItemView_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractItemView_virtualbase_event".}
proc fcQAbstractItemView_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_event".}
proc fQAbstractItemView_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QAbstractItemView_virtualbase_viewportEvent".}
proc fcQAbstractItemView_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_viewportEvent".}
proc fQAbstractItemView_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_mousePressEvent".}
proc fcQAbstractItemView_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_mousePressEvent".}
proc fQAbstractItemView_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_mouseMoveEvent".}
proc fcQAbstractItemView_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_mouseMoveEvent".}
proc fQAbstractItemView_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_mouseReleaseEvent".}
proc fcQAbstractItemView_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_mouseReleaseEvent".}
proc fQAbstractItemView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractItemView_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_mouseDoubleClickEvent".}
proc fQAbstractItemView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_dragEnterEvent".}
proc fcQAbstractItemView_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_dragEnterEvent".}
proc fQAbstractItemView_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_dragMoveEvent".}
proc fcQAbstractItemView_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_dragMoveEvent".}
proc fQAbstractItemView_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_dragLeaveEvent".}
proc fcQAbstractItemView_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_dragLeaveEvent".}
proc fQAbstractItemView_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_dropEvent".}
proc fcQAbstractItemView_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_dropEvent".}
proc fQAbstractItemView_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_focusInEvent".}
proc fcQAbstractItemView_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_focusInEvent".}
proc fQAbstractItemView_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_focusOutEvent".}
proc fcQAbstractItemView_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_focusOutEvent".}
proc fQAbstractItemView_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_keyPressEvent".}
proc fcQAbstractItemView_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_keyPressEvent".}
proc fQAbstractItemView_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_resizeEvent".}
proc fcQAbstractItemView_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_resizeEvent".}
proc fQAbstractItemView_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_timerEvent".}
proc fcQAbstractItemView_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_timerEvent".}
proc fQAbstractItemView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_inputMethodEvent".}
proc fcQAbstractItemView_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_inputMethodEvent".}
proc fQAbstractItemView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QAbstractItemView_virtualbase_eventFilter".}
proc fcQAbstractItemView_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_eventFilter".}
proc fQAbstractItemView_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QAbstractItemView_virtualbase_viewportSizeHint".}
proc fcQAbstractItemView_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_viewportSizeHint".}
proc fQAbstractItemView_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QAbstractItemView_virtualbase_minimumSizeHint".}
proc fcQAbstractItemView_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_minimumSizeHint".}
proc fQAbstractItemView_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QAbstractItemView_virtualbase_sizeHint".}
proc fcQAbstractItemView_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_sizeHint".}
proc fQAbstractItemView_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QAbstractItemView_virtualbase_setupViewport".}
proc fcQAbstractItemView_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_setupViewport".}
proc fQAbstractItemView_virtualbase_paintEvent(self: pointer, param1: pointer): void{.importc: "QAbstractItemView_virtualbase_paintEvent".}
proc fcQAbstractItemView_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_paintEvent".}
proc fQAbstractItemView_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QAbstractItemView_virtualbase_wheelEvent".}
proc fcQAbstractItemView_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_wheelEvent".}
proc fQAbstractItemView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QAbstractItemView_virtualbase_contextMenuEvent".}
proc fcQAbstractItemView_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_contextMenuEvent".}
proc fQAbstractItemView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QAbstractItemView_virtualbase_scrollContentsBy".}
proc fcQAbstractItemView_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_scrollContentsBy".}
proc fQAbstractItemView_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QAbstractItemView_virtualbase_changeEvent".}
proc fcQAbstractItemView_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_changeEvent".}
proc fQAbstractItemView_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QAbstractItemView_virtualbase_initStyleOption".}
proc fcQAbstractItemView_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_initStyleOption".}
proc fQAbstractItemView_virtualbase_devType(self: pointer, ): cint{.importc: "QAbstractItemView_virtualbase_devType".}
proc fcQAbstractItemView_override_virtual_devType(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_devType".}
proc fQAbstractItemView_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QAbstractItemView_virtualbase_setVisible".}
proc fcQAbstractItemView_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_setVisible".}
proc fQAbstractItemView_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QAbstractItemView_virtualbase_heightForWidth".}
proc fcQAbstractItemView_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_heightForWidth".}
proc fQAbstractItemView_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QAbstractItemView_virtualbase_hasHeightForWidth".}
proc fcQAbstractItemView_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_hasHeightForWidth".}
proc fQAbstractItemView_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QAbstractItemView_virtualbase_paintEngine".}
proc fcQAbstractItemView_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_paintEngine".}
proc fQAbstractItemView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_keyReleaseEvent".}
proc fcQAbstractItemView_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_keyReleaseEvent".}
proc fQAbstractItemView_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_enterEvent".}
proc fcQAbstractItemView_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_enterEvent".}
proc fQAbstractItemView_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_leaveEvent".}
proc fcQAbstractItemView_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_leaveEvent".}
proc fQAbstractItemView_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_moveEvent".}
proc fcQAbstractItemView_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_moveEvent".}
proc fQAbstractItemView_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_closeEvent".}
proc fcQAbstractItemView_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_closeEvent".}
proc fQAbstractItemView_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_tabletEvent".}
proc fcQAbstractItemView_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_tabletEvent".}
proc fQAbstractItemView_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_actionEvent".}
proc fcQAbstractItemView_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_actionEvent".}
proc fQAbstractItemView_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_showEvent".}
proc fcQAbstractItemView_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_showEvent".}
proc fQAbstractItemView_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_hideEvent".}
proc fcQAbstractItemView_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_hideEvent".}
proc fQAbstractItemView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QAbstractItemView_virtualbase_nativeEvent".}
proc fcQAbstractItemView_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_nativeEvent".}
proc fQAbstractItemView_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QAbstractItemView_virtualbase_metric".}
proc fcQAbstractItemView_override_virtual_metric(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_metric".}
proc fQAbstractItemView_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QAbstractItemView_virtualbase_initPainter".}
proc fcQAbstractItemView_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_initPainter".}
proc fQAbstractItemView_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QAbstractItemView_virtualbase_redirected".}
proc fcQAbstractItemView_override_virtual_redirected(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_redirected".}
proc fQAbstractItemView_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QAbstractItemView_virtualbase_sharedPainter".}
proc fcQAbstractItemView_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_sharedPainter".}
proc fQAbstractItemView_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_childEvent".}
proc fcQAbstractItemView_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_childEvent".}
proc fQAbstractItemView_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemView_virtualbase_customEvent".}
proc fcQAbstractItemView_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_customEvent".}
proc fQAbstractItemView_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractItemView_virtualbase_connectNotify".}
proc fcQAbstractItemView_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_connectNotify".}
proc fQAbstractItemView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractItemView_virtualbase_disconnectNotify".}
proc fcQAbstractItemView_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractItemView_override_virtual_disconnectNotify".}
proc fcQAbstractItemView_staticMetaObject(): pointer {.importc: "QAbstractItemView_staticMetaObject".}
proc fcQAbstractItemView_delete(self: pointer) {.importc: "QAbstractItemView_delete".}


func init*(T: type QAbstractItemView, h: ptr cQAbstractItemView): QAbstractItemView =
  T(h: h)
proc create*(T: type QAbstractItemView, parent: gen_qwidget.QWidget): QAbstractItemView =

  QAbstractItemView.init(fcQAbstractItemView_new(parent.h))
proc create*(T: type QAbstractItemView, ): QAbstractItemView =

  QAbstractItemView.init(fcQAbstractItemView_new2())
proc metaObject*(self: QAbstractItemView, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAbstractItemView_metaObject(self.h))

proc metacast*(self: QAbstractItemView, param1: cstring): pointer =

  fcQAbstractItemView_metacast(self.h, param1)

proc metacall*(self: QAbstractItemView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAbstractItemView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAbstractItemView, s: cstring): string =

  let v_ms = fcQAbstractItemView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setModel*(self: QAbstractItemView, model: gen_qabstractitemmodel.QAbstractItemModel): void =

  fcQAbstractItemView_setModel(self.h, model.h)

proc model*(self: QAbstractItemView, ): gen_qabstractitemmodel.QAbstractItemModel =

  gen_qabstractitemmodel.QAbstractItemModel(h: fcQAbstractItemView_model(self.h))

proc setSelectionModel*(self: QAbstractItemView, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void =

  fcQAbstractItemView_setSelectionModel(self.h, selectionModel.h)

proc selectionModel*(self: QAbstractItemView, ): gen_qitemselectionmodel.QItemSelectionModel =

  gen_qitemselectionmodel.QItemSelectionModel(h: fcQAbstractItemView_selectionModel(self.h))

proc setItemDelegate*(self: QAbstractItemView, delegate: gen_qabstractitemdelegate.QAbstractItemDelegate): void =

  fcQAbstractItemView_setItemDelegate(self.h, delegate.h)

proc itemDelegate*(self: QAbstractItemView, ): gen_qabstractitemdelegate.QAbstractItemDelegate =

  gen_qabstractitemdelegate.QAbstractItemDelegate(h: fcQAbstractItemView_itemDelegate(self.h))

proc setSelectionMode*(self: QAbstractItemView, mode: QAbstractItemViewSelectionMode): void =

  fcQAbstractItemView_setSelectionMode(self.h, cint(mode))

proc selectionMode*(self: QAbstractItemView, ): QAbstractItemViewSelectionMode =

  QAbstractItemViewSelectionMode(fcQAbstractItemView_selectionMode(self.h))

proc setSelectionBehavior*(self: QAbstractItemView, behavior: QAbstractItemViewSelectionBehavior): void =

  fcQAbstractItemView_setSelectionBehavior(self.h, cint(behavior))

proc selectionBehavior*(self: QAbstractItemView, ): QAbstractItemViewSelectionBehavior =

  QAbstractItemViewSelectionBehavior(fcQAbstractItemView_selectionBehavior(self.h))

proc currentIndex*(self: QAbstractItemView, ): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQAbstractItemView_currentIndex(self.h))

proc rootIndex*(self: QAbstractItemView, ): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQAbstractItemView_rootIndex(self.h))

proc setEditTriggers*(self: QAbstractItemView, triggers: QAbstractItemViewEditTrigger): void =

  fcQAbstractItemView_setEditTriggers(self.h, cint(triggers))

proc editTriggers*(self: QAbstractItemView, ): QAbstractItemViewEditTrigger =

  QAbstractItemViewEditTrigger(fcQAbstractItemView_editTriggers(self.h))

proc setVerticalScrollMode*(self: QAbstractItemView, mode: QAbstractItemViewScrollMode): void =

  fcQAbstractItemView_setVerticalScrollMode(self.h, cint(mode))

proc verticalScrollMode*(self: QAbstractItemView, ): QAbstractItemViewScrollMode =

  QAbstractItemViewScrollMode(fcQAbstractItemView_verticalScrollMode(self.h))

proc resetVerticalScrollMode*(self: QAbstractItemView, ): void =

  fcQAbstractItemView_resetVerticalScrollMode(self.h)

proc setHorizontalScrollMode*(self: QAbstractItemView, mode: QAbstractItemViewScrollMode): void =

  fcQAbstractItemView_setHorizontalScrollMode(self.h, cint(mode))

proc horizontalScrollMode*(self: QAbstractItemView, ): QAbstractItemViewScrollMode =

  QAbstractItemViewScrollMode(fcQAbstractItemView_horizontalScrollMode(self.h))

proc resetHorizontalScrollMode*(self: QAbstractItemView, ): void =

  fcQAbstractItemView_resetHorizontalScrollMode(self.h)

proc setAutoScroll*(self: QAbstractItemView, enable: bool): void =

  fcQAbstractItemView_setAutoScroll(self.h, enable)

proc hasAutoScroll*(self: QAbstractItemView, ): bool =

  fcQAbstractItemView_hasAutoScroll(self.h)

proc setAutoScrollMargin*(self: QAbstractItemView, margin: cint): void =

  fcQAbstractItemView_setAutoScrollMargin(self.h, margin)

proc autoScrollMargin*(self: QAbstractItemView, ): cint =

  fcQAbstractItemView_autoScrollMargin(self.h)

proc setTabKeyNavigation*(self: QAbstractItemView, enable: bool): void =

  fcQAbstractItemView_setTabKeyNavigation(self.h, enable)

proc tabKeyNavigation*(self: QAbstractItemView, ): bool =

  fcQAbstractItemView_tabKeyNavigation(self.h)

proc setDropIndicatorShown*(self: QAbstractItemView, enable: bool): void =

  fcQAbstractItemView_setDropIndicatorShown(self.h, enable)

proc showDropIndicator*(self: QAbstractItemView, ): bool =

  fcQAbstractItemView_showDropIndicator(self.h)

proc setDragEnabled*(self: QAbstractItemView, enable: bool): void =

  fcQAbstractItemView_setDragEnabled(self.h, enable)

proc dragEnabled*(self: QAbstractItemView, ): bool =

  fcQAbstractItemView_dragEnabled(self.h)

proc setDragDropOverwriteMode*(self: QAbstractItemView, overwrite: bool): void =

  fcQAbstractItemView_setDragDropOverwriteMode(self.h, overwrite)

proc dragDropOverwriteMode*(self: QAbstractItemView, ): bool =

  fcQAbstractItemView_dragDropOverwriteMode(self.h)

proc setDragDropMode*(self: QAbstractItemView, behavior: QAbstractItemViewDragDropMode): void =

  fcQAbstractItemView_setDragDropMode(self.h, cint(behavior))

proc dragDropMode*(self: QAbstractItemView, ): QAbstractItemViewDragDropMode =

  QAbstractItemViewDragDropMode(fcQAbstractItemView_dragDropMode(self.h))

proc setDefaultDropAction*(self: QAbstractItemView, dropAction: gen_qnamespace.DropAction): void =

  fcQAbstractItemView_setDefaultDropAction(self.h, cint(dropAction))

proc defaultDropAction*(self: QAbstractItemView, ): gen_qnamespace.DropAction =

  gen_qnamespace.DropAction(fcQAbstractItemView_defaultDropAction(self.h))

proc setAlternatingRowColors*(self: QAbstractItemView, enable: bool): void =

  fcQAbstractItemView_setAlternatingRowColors(self.h, enable)

proc alternatingRowColors*(self: QAbstractItemView, ): bool =

  fcQAbstractItemView_alternatingRowColors(self.h)

proc setIconSize*(self: QAbstractItemView, size: gen_qsize.QSize): void =

  fcQAbstractItemView_setIconSize(self.h, size.h)

proc iconSize*(self: QAbstractItemView, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQAbstractItemView_iconSize(self.h))

proc setTextElideMode*(self: QAbstractItemView, mode: gen_qnamespace.TextElideMode): void =

  fcQAbstractItemView_setTextElideMode(self.h, cint(mode))

proc textElideMode*(self: QAbstractItemView, ): gen_qnamespace.TextElideMode =

  gen_qnamespace.TextElideMode(fcQAbstractItemView_textElideMode(self.h))

proc keyboardSearch*(self: QAbstractItemView, search: string): void =

  fcQAbstractItemView_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

proc visualRect*(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQAbstractItemView_visualRect(self.h, index.h))

proc scrollTo*(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex, hint: QAbstractItemViewScrollHint): void =

  fcQAbstractItemView_scrollTo(self.h, index.h, cint(hint))

proc indexAt*(self: QAbstractItemView, point: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQAbstractItemView_indexAt(self.h, point.h))

proc sizeHintForIndex*(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQAbstractItemView_sizeHintForIndex(self.h, index.h))

proc sizeHintForRow*(self: QAbstractItemView, row: cint): cint =

  fcQAbstractItemView_sizeHintForRow(self.h, row)

proc sizeHintForColumn*(self: QAbstractItemView, column: cint): cint =

  fcQAbstractItemView_sizeHintForColumn(self.h, column)

proc openPersistentEditor*(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQAbstractItemView_openPersistentEditor(self.h, index.h)

proc closePersistentEditor*(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQAbstractItemView_closePersistentEditor(self.h, index.h)

proc isPersistentEditorOpen*(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex): bool =

  fcQAbstractItemView_isPersistentEditorOpen(self.h, index.h)

proc setIndexWidget*(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex, widget: gen_qwidget.QWidget): void =

  fcQAbstractItemView_setIndexWidget(self.h, index.h, widget.h)

proc indexWidget*(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQAbstractItemView_indexWidget(self.h, index.h))

proc setItemDelegateForRow*(self: QAbstractItemView, row: cint, delegate: gen_qabstractitemdelegate.QAbstractItemDelegate): void =

  fcQAbstractItemView_setItemDelegateForRow(self.h, row, delegate.h)

proc itemDelegateForRow*(self: QAbstractItemView, row: cint): gen_qabstractitemdelegate.QAbstractItemDelegate =

  gen_qabstractitemdelegate.QAbstractItemDelegate(h: fcQAbstractItemView_itemDelegateForRow(self.h, row))

proc setItemDelegateForColumn*(self: QAbstractItemView, column: cint, delegate: gen_qabstractitemdelegate.QAbstractItemDelegate): void =

  fcQAbstractItemView_setItemDelegateForColumn(self.h, column, delegate.h)

proc itemDelegateForColumn*(self: QAbstractItemView, column: cint): gen_qabstractitemdelegate.QAbstractItemDelegate =

  gen_qabstractitemdelegate.QAbstractItemDelegate(h: fcQAbstractItemView_itemDelegateForColumn(self.h, column))

proc itemDelegateWithIndex*(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemdelegate.QAbstractItemDelegate =

  gen_qabstractitemdelegate.QAbstractItemDelegate(h: fcQAbstractItemView_itemDelegateWithIndex(self.h, index.h))

proc itemDelegateForIndex*(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemdelegate.QAbstractItemDelegate =

  gen_qabstractitemdelegate.QAbstractItemDelegate(h: fcQAbstractItemView_itemDelegateForIndex(self.h, index.h))

proc inputMethodQuery*(self: QAbstractItemView, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQAbstractItemView_inputMethodQuery(self.h, cint(query)))

proc reset*(self: QAbstractItemView, ): void =

  fcQAbstractItemView_reset(self.h)

proc setRootIndex*(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQAbstractItemView_setRootIndex(self.h, index.h)

proc doItemsLayout*(self: QAbstractItemView, ): void =

  fcQAbstractItemView_doItemsLayout(self.h)

proc selectAll*(self: QAbstractItemView, ): void =

  fcQAbstractItemView_selectAll(self.h)

proc edit*(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQAbstractItemView_edit(self.h, index.h)

proc clearSelection*(self: QAbstractItemView, ): void =

  fcQAbstractItemView_clearSelection(self.h)

proc setCurrentIndex*(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQAbstractItemView_setCurrentIndex(self.h, index.h)

proc scrollToTop*(self: QAbstractItemView, ): void =

  fcQAbstractItemView_scrollToTop(self.h)

proc scrollToBottom*(self: QAbstractItemView, ): void =

  fcQAbstractItemView_scrollToBottom(self.h)

proc update*(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQAbstractItemView_update(self.h, index.h)

proc pressed*(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQAbstractItemView_pressed(self.h, index.h)

proc miqt_exec_callback_QAbstractItemView_pressed(slot: int, index: pointer) {.exportc.} =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](slotval1)

proc onpressed*(self: QAbstractItemView, slot: proc(index: gen_qabstractitemmodel.QModelIndex)) =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractItemView_connect_pressed(self.h, cast[int](addr tmp[]))
proc clicked*(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQAbstractItemView_clicked(self.h, index.h)

proc miqt_exec_callback_QAbstractItemView_clicked(slot: int, index: pointer) {.exportc.} =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](slotval1)

proc onclicked*(self: QAbstractItemView, slot: proc(index: gen_qabstractitemmodel.QModelIndex)) =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractItemView_connect_clicked(self.h, cast[int](addr tmp[]))
proc doubleClicked*(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQAbstractItemView_doubleClicked(self.h, index.h)

proc miqt_exec_callback_QAbstractItemView_doubleClicked(slot: int, index: pointer) {.exportc.} =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](slotval1)

proc ondoubleClicked*(self: QAbstractItemView, slot: proc(index: gen_qabstractitemmodel.QModelIndex)) =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractItemView_connect_doubleClicked(self.h, cast[int](addr tmp[]))
proc activated*(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQAbstractItemView_activated(self.h, index.h)

proc miqt_exec_callback_QAbstractItemView_activated(slot: int, index: pointer) {.exportc.} =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](slotval1)

proc onactivated*(self: QAbstractItemView, slot: proc(index: gen_qabstractitemmodel.QModelIndex)) =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractItemView_connect_activated(self.h, cast[int](addr tmp[]))
proc entered*(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQAbstractItemView_entered(self.h, index.h)

proc miqt_exec_callback_QAbstractItemView_entered(slot: int, index: pointer) {.exportc.} =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](slotval1)

proc onentered*(self: QAbstractItemView, slot: proc(index: gen_qabstractitemmodel.QModelIndex)) =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractItemView_connect_entered(self.h, cast[int](addr tmp[]))
proc viewportEntered*(self: QAbstractItemView, ): void =

  fcQAbstractItemView_viewportEntered(self.h)

proc miqt_exec_callback_QAbstractItemView_viewportEntered(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onviewportEntered*(self: QAbstractItemView, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractItemView_connect_viewportEntered(self.h, cast[int](addr tmp[]))
proc iconSizeChanged*(self: QAbstractItemView, size: gen_qsize.QSize): void =

  fcQAbstractItemView_iconSizeChanged(self.h, size.h)

proc miqt_exec_callback_QAbstractItemView_iconSizeChanged(slot: int, size: pointer) {.exportc.} =
  type Cb = proc(size: gen_qsize.QSize)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qsize.QSize(h: size)


  nimfunc[](slotval1)

proc oniconSizeChanged*(self: QAbstractItemView, slot: proc(size: gen_qsize.QSize)) =
  type Cb = proc(size: gen_qsize.QSize)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractItemView_connect_iconSizeChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAbstractItemView, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractItemView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAbstractItemView, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractItemView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QAbstractItemView, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAbstractItemView_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractItemViewmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_metacall(self: ptr cQAbstractItemView, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractItemView_metacall ".} =
  type Cb = proc(super: QAbstractItemViewmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAbstractItemView(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setModel(self: QAbstractItemView, model: gen_qabstractitemmodel.QAbstractItemModel): void =


  fQAbstractItemView_virtualbase_setModel(self.h, model.h)

type QAbstractItemViewsetModelBase* = proc(model: gen_qabstractitemmodel.QAbstractItemModel): void
proc onsetModel*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewsetModelBase, model: gen_qabstractitemmodel.QAbstractItemModel): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewsetModelBase, model: gen_qabstractitemmodel.QAbstractItemModel): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_setModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_setModel(self: ptr cQAbstractItemView, slot: int, model: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_setModel ".} =
  type Cb = proc(super: QAbstractItemViewsetModelBase, model: gen_qabstractitemmodel.QAbstractItemModel): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(model: gen_qabstractitemmodel.QAbstractItemModel): auto =
    callVirtualBase_setModel(QAbstractItemView(h: self), model)
  let slotval1 = gen_qabstractitemmodel.QAbstractItemModel(h: model)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setSelectionModel(self: QAbstractItemView, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void =


  fQAbstractItemView_virtualbase_setSelectionModel(self.h, selectionModel.h)

type QAbstractItemViewsetSelectionModelBase* = proc(selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
proc onsetSelectionModel*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_setSelectionModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_setSelectionModel(self: ptr cQAbstractItemView, slot: int, selectionModel: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_setSelectionModel ".} =
  type Cb = proc(super: QAbstractItemViewsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selectionModel: gen_qitemselectionmodel.QItemSelectionModel): auto =
    callVirtualBase_setSelectionModel(QAbstractItemView(h: self), selectionModel)
  let slotval1 = gen_qitemselectionmodel.QItemSelectionModel(h: selectionModel)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyboardSearch(self: QAbstractItemView, search: string): void =


  fQAbstractItemView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

type QAbstractItemViewkeyboardSearchBase* = proc(search: string): void
proc onkeyboardSearch*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewkeyboardSearchBase, search: string): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewkeyboardSearchBase, search: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_keyboardSearch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_keyboardSearch(self: ptr cQAbstractItemView, slot: int, search: struct_miqt_string): void {.exportc: "miqt_exec_callback_QAbstractItemView_keyboardSearch ".} =
  type Cb = proc(super: QAbstractItemViewkeyboardSearchBase, search: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(search: string): auto =
    callVirtualBase_keyboardSearch(QAbstractItemView(h: self), search)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret


  nimfunc[](superCall, slotval1)
type QAbstractItemViewvisualRectBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
proc onvisualRect*(self: QAbstractItemView, slot: proc(index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_visualRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_visualRect(self: ptr cQAbstractItemView, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_visualRect ".} =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QAbstractItemViewscrollToBase* = proc(index: gen_qabstractitemmodel.QModelIndex, hint: QAbstractItemViewScrollHint): void
proc onscrollTo*(self: QAbstractItemView, slot: proc(index: gen_qabstractitemmodel.QModelIndex, hint: QAbstractItemViewScrollHint): void) =
  # TODO check subclass
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex, hint: QAbstractItemViewScrollHint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_scrollTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_scrollTo(self: ptr cQAbstractItemView, slot: int, index: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_scrollTo ".} =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex, hint: QAbstractItemViewScrollHint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = QAbstractItemViewScrollHint(hint)


  nimfunc[](slotval1, slotval2)
type QAbstractItemViewindexAtBase* = proc(point: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
proc onindexAt*(self: QAbstractItemView, slot: proc(point: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(point: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_indexAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_indexAt(self: ptr cQAbstractItemView, slot: int, point: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_indexAt ".} =
  type Cb = proc(point: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qpoint.QPoint(h: point)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc callVirtualBase_sizeHintForRow(self: QAbstractItemView, row: cint): cint =


  fQAbstractItemView_virtualbase_sizeHintForRow(self.h, row)

type QAbstractItemViewsizeHintForRowBase* = proc(row: cint): cint
proc onsizeHintForRow*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewsizeHintForRowBase, row: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewsizeHintForRowBase, row: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_sizeHintForRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_sizeHintForRow(self: ptr cQAbstractItemView, slot: int, row: cint): cint {.exportc: "miqt_exec_callback_QAbstractItemView_sizeHintForRow ".} =
  type Cb = proc(super: QAbstractItemViewsizeHintForRowBase, row: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint): auto =
    callVirtualBase_sizeHintForRow(QAbstractItemView(h: self), row)
  let slotval1 = row


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_sizeHintForColumn(self: QAbstractItemView, column: cint): cint =


  fQAbstractItemView_virtualbase_sizeHintForColumn(self.h, column)

type QAbstractItemViewsizeHintForColumnBase* = proc(column: cint): cint
proc onsizeHintForColumn*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewsizeHintForColumnBase, column: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewsizeHintForColumnBase, column: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_sizeHintForColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_sizeHintForColumn(self: ptr cQAbstractItemView, slot: int, column: cint): cint {.exportc: "miqt_exec_callback_QAbstractItemView_sizeHintForColumn ".} =
  type Cb = proc(super: QAbstractItemViewsizeHintForColumnBase, column: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint): auto =
    callVirtualBase_sizeHintForColumn(QAbstractItemView(h: self), column)
  let slotval1 = column


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_itemDelegateForIndex(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemdelegate.QAbstractItemDelegate =


  gen_qabstractitemdelegate.QAbstractItemDelegate(h: fQAbstractItemView_virtualbase_itemDelegateForIndex(self.h, index.h))

type QAbstractItemViewitemDelegateForIndexBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemdelegate.QAbstractItemDelegate
proc onitemDelegateForIndex*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewitemDelegateForIndexBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemdelegate.QAbstractItemDelegate) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewitemDelegateForIndexBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemdelegate.QAbstractItemDelegate
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_itemDelegateForIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_itemDelegateForIndex(self: ptr cQAbstractItemView, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_itemDelegateForIndex ".} =
  type Cb = proc(super: QAbstractItemViewitemDelegateForIndexBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemdelegate.QAbstractItemDelegate
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_itemDelegateForIndex(QAbstractItemView(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_inputMethodQuery(self: QAbstractItemView, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQAbstractItemView_virtualbase_inputMethodQuery(self.h, cint(query)))

type QAbstractItemViewinputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_inputMethodQuery(self: ptr cQAbstractItemView, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_inputMethodQuery ".} =
  type Cb = proc(super: QAbstractItemViewinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QAbstractItemView(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_reset(self: QAbstractItemView, ): void =


  fQAbstractItemView_virtualbase_reset(self.h)

type QAbstractItemViewresetBase* = proc(): void
proc onreset*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewresetBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewresetBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_reset(self: ptr cQAbstractItemView, slot: int): void {.exportc: "miqt_exec_callback_QAbstractItemView_reset ".} =
  type Cb = proc(super: QAbstractItemViewresetBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QAbstractItemView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_setRootIndex(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex): void =


  fQAbstractItemView_virtualbase_setRootIndex(self.h, index.h)

type QAbstractItemViewsetRootIndexBase* = proc(index: gen_qabstractitemmodel.QModelIndex): void
proc onsetRootIndex*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_setRootIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_setRootIndex(self: ptr cQAbstractItemView, slot: int, index: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_setRootIndex ".} =
  type Cb = proc(super: QAbstractItemViewsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_setRootIndex(QAbstractItemView(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_doItemsLayout(self: QAbstractItemView, ): void =


  fQAbstractItemView_virtualbase_doItemsLayout(self.h)

type QAbstractItemViewdoItemsLayoutBase* = proc(): void
proc ondoItemsLayout*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewdoItemsLayoutBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewdoItemsLayoutBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_doItemsLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_doItemsLayout(self: ptr cQAbstractItemView, slot: int): void {.exportc: "miqt_exec_callback_QAbstractItemView_doItemsLayout ".} =
  type Cb = proc(super: QAbstractItemViewdoItemsLayoutBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_doItemsLayout(QAbstractItemView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_selectAll(self: QAbstractItemView, ): void =


  fQAbstractItemView_virtualbase_selectAll(self.h)

type QAbstractItemViewselectAllBase* = proc(): void
proc onselectAll*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewselectAllBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewselectAllBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_selectAll(self: ptr cQAbstractItemView, slot: int): void {.exportc: "miqt_exec_callback_QAbstractItemView_selectAll ".} =
  type Cb = proc(super: QAbstractItemViewselectAllBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_selectAll(QAbstractItemView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_dataChanged(self: QAbstractItemView, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void =

  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]


  fQAbstractItemView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

type QAbstractItemViewdataChangedBase* = proc(topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
proc ondataChanged*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_dataChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_dataChanged(self: ptr cQAbstractItemView, slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.exportc: "miqt_exec_callback_QAbstractItemView_dataChanged ".} =
  type Cb = proc(super: QAbstractItemViewdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): auto =
    callVirtualBase_dataChanged(QAbstractItemView(h: self), topLeft, bottomRight, roles)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_rowsInserted(self: QAbstractItemView, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void =


  fQAbstractItemView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

type QAbstractItemViewrowsInsertedBase* = proc(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
proc onrowsInserted*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_rowsInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_rowsInserted(self: ptr cQAbstractItemView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_rowsInserted ".} =
  type Cb = proc(super: QAbstractItemViewrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): auto =
    callVirtualBase_rowsInserted(QAbstractItemView(h: self), parent, start, endVal)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_rowsAboutToBeRemoved(self: QAbstractItemView, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void =


  fQAbstractItemView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

type QAbstractItemViewrowsAboutToBeRemovedBase* = proc(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
proc onrowsAboutToBeRemoved*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_rowsAboutToBeRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_rowsAboutToBeRemoved(self: ptr cQAbstractItemView, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_rowsAboutToBeRemoved ".} =
  type Cb = proc(super: QAbstractItemViewrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): auto =
    callVirtualBase_rowsAboutToBeRemoved(QAbstractItemView(h: self), parent, start, endVal)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_selectionChanged(self: QAbstractItemView, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void =


  fQAbstractItemView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

type QAbstractItemViewselectionChangedBase* = proc(selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
proc onselectionChanged*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_selectionChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_selectionChanged(self: ptr cQAbstractItemView, slot: int, selected: pointer, deselected: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_selectionChanged ".} =
  type Cb = proc(super: QAbstractItemViewselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_selectionChanged(QAbstractItemView(h: self), selected, deselected)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel.QItemSelection(h: deselected)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_currentChanged(self: QAbstractItemView, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void =


  fQAbstractItemView_virtualbase_currentChanged(self.h, current.h, previous.h)

type QAbstractItemViewcurrentChangedBase* = proc(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
proc oncurrentChanged*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_currentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_currentChanged(self: ptr cQAbstractItemView, slot: int, current: pointer, previous: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_currentChanged ".} =
  type Cb = proc(super: QAbstractItemViewcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_currentChanged(QAbstractItemView(h: self), current, previous)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: previous)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_updateEditorData(self: QAbstractItemView, ): void =


  fQAbstractItemView_virtualbase_updateEditorData(self.h)

type QAbstractItemViewupdateEditorDataBase* = proc(): void
proc onupdateEditorData*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewupdateEditorDataBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewupdateEditorDataBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_updateEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_updateEditorData(self: ptr cQAbstractItemView, slot: int): void {.exportc: "miqt_exec_callback_QAbstractItemView_updateEditorData ".} =
  type Cb = proc(super: QAbstractItemViewupdateEditorDataBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateEditorData(QAbstractItemView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_updateEditorGeometries(self: QAbstractItemView, ): void =


  fQAbstractItemView_virtualbase_updateEditorGeometries(self.h)

type QAbstractItemViewupdateEditorGeometriesBase* = proc(): void
proc onupdateEditorGeometries*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewupdateEditorGeometriesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewupdateEditorGeometriesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_updateEditorGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_updateEditorGeometries(self: ptr cQAbstractItemView, slot: int): void {.exportc: "miqt_exec_callback_QAbstractItemView_updateEditorGeometries ".} =
  type Cb = proc(super: QAbstractItemViewupdateEditorGeometriesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateEditorGeometries(QAbstractItemView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_updateGeometries(self: QAbstractItemView, ): void =


  fQAbstractItemView_virtualbase_updateGeometries(self.h)

type QAbstractItemViewupdateGeometriesBase* = proc(): void
proc onupdateGeometries*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewupdateGeometriesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewupdateGeometriesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_updateGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_updateGeometries(self: ptr cQAbstractItemView, slot: int): void {.exportc: "miqt_exec_callback_QAbstractItemView_updateGeometries ".} =
  type Cb = proc(super: QAbstractItemViewupdateGeometriesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateGeometries(QAbstractItemView(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_verticalScrollbarAction(self: QAbstractItemView, action: cint): void =


  fQAbstractItemView_virtualbase_verticalScrollbarAction(self.h, action)

type QAbstractItemViewverticalScrollbarActionBase* = proc(action: cint): void
proc onverticalScrollbarAction*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewverticalScrollbarActionBase, action: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewverticalScrollbarActionBase, action: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_verticalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_verticalScrollbarAction(self: ptr cQAbstractItemView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_verticalScrollbarAction ".} =
  type Cb = proc(super: QAbstractItemViewverticalScrollbarActionBase, action: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(action: cint): auto =
    callVirtualBase_verticalScrollbarAction(QAbstractItemView(h: self), action)
  let slotval1 = action


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalScrollbarAction(self: QAbstractItemView, action: cint): void =


  fQAbstractItemView_virtualbase_horizontalScrollbarAction(self.h, action)

type QAbstractItemViewhorizontalScrollbarActionBase* = proc(action: cint): void
proc onhorizontalScrollbarAction*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewhorizontalScrollbarActionBase, action: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewhorizontalScrollbarActionBase, action: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_horizontalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_horizontalScrollbarAction(self: ptr cQAbstractItemView, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_horizontalScrollbarAction ".} =
  type Cb = proc(super: QAbstractItemViewhorizontalScrollbarActionBase, action: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(action: cint): auto =
    callVirtualBase_horizontalScrollbarAction(QAbstractItemView(h: self), action)
  let slotval1 = action


  nimfunc[](superCall, slotval1)
proc callVirtualBase_verticalScrollbarValueChanged(self: QAbstractItemView, value: cint): void =


  fQAbstractItemView_virtualbase_verticalScrollbarValueChanged(self.h, value)

type QAbstractItemViewverticalScrollbarValueChangedBase* = proc(value: cint): void
proc onverticalScrollbarValueChanged*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewverticalScrollbarValueChangedBase, value: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewverticalScrollbarValueChangedBase, value: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_verticalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_verticalScrollbarValueChanged(self: ptr cQAbstractItemView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_verticalScrollbarValueChanged ".} =
  type Cb = proc(super: QAbstractItemViewverticalScrollbarValueChangedBase, value: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: cint): auto =
    callVirtualBase_verticalScrollbarValueChanged(QAbstractItemView(h: self), value)
  let slotval1 = value


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalScrollbarValueChanged(self: QAbstractItemView, value: cint): void =


  fQAbstractItemView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

type QAbstractItemViewhorizontalScrollbarValueChangedBase* = proc(value: cint): void
proc onhorizontalScrollbarValueChanged*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewhorizontalScrollbarValueChangedBase, value: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewhorizontalScrollbarValueChangedBase, value: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_horizontalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_horizontalScrollbarValueChanged(self: ptr cQAbstractItemView, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_horizontalScrollbarValueChanged ".} =
  type Cb = proc(super: QAbstractItemViewhorizontalScrollbarValueChangedBase, value: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: cint): auto =
    callVirtualBase_horizontalScrollbarValueChanged(QAbstractItemView(h: self), value)
  let slotval1 = value


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEditor(self: QAbstractItemView, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void =


  fQAbstractItemView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

type QAbstractItemViewcloseEditorBase* = proc(editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
proc oncloseEditor*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_closeEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_closeEditor(self: ptr cQAbstractItemView, slot: int, editor: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_closeEditor ".} =
  type Cb = proc(super: QAbstractItemViewcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): auto =
    callVirtualBase_closeEditor(QAbstractItemView(h: self), editor, hint)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint(hint)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_commitData(self: QAbstractItemView, editor: gen_qwidget.QWidget): void =


  fQAbstractItemView_virtualbase_commitData(self.h, editor.h)

type QAbstractItemViewcommitDataBase* = proc(editor: gen_qwidget.QWidget): void
proc oncommitData*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewcommitDataBase, editor: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewcommitDataBase, editor: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_commitData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_commitData(self: ptr cQAbstractItemView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_commitData ".} =
  type Cb = proc(super: QAbstractItemViewcommitDataBase, editor: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget): auto =
    callVirtualBase_commitData(QAbstractItemView(h: self), editor)
  let slotval1 = gen_qwidget.QWidget(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_editorDestroyed(self: QAbstractItemView, editor: gen_qobject.QObject): void =


  fQAbstractItemView_virtualbase_editorDestroyed(self.h, editor.h)

type QAbstractItemVieweditorDestroyedBase* = proc(editor: gen_qobject.QObject): void
proc oneditorDestroyed*(self: QAbstractItemView, slot: proc(super: QAbstractItemVieweditorDestroyedBase, editor: gen_qobject.QObject): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemVieweditorDestroyedBase, editor: gen_qobject.QObject): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_editorDestroyed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_editorDestroyed(self: ptr cQAbstractItemView, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_editorDestroyed ".} =
  type Cb = proc(super: QAbstractItemVieweditorDestroyedBase, editor: gen_qobject.QObject): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qobject.QObject): auto =
    callVirtualBase_editorDestroyed(QAbstractItemView(h: self), editor)
  let slotval1 = gen_qobject.QObject(h: editor)


  nimfunc[](superCall, slotval1)
type QAbstractItemViewmoveCursorBase* = proc(cursorAction: QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
proc onmoveCursor*(self: QAbstractItemView, slot: proc(cursorAction: QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(cursorAction: QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_moveCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_moveCursor(self: ptr cQAbstractItemView, slot: int, cursorAction: cint, modifiers: cint): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_moveCursor ".} =
  type Cb = proc(cursorAction: QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QAbstractItemViewCursorAction(cursorAction)

  let slotval2 = gen_qnamespace.KeyboardModifier(modifiers)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
type QAbstractItemViewhorizontalOffsetBase* = proc(): cint
proc onhorizontalOffset*(self: QAbstractItemView, slot: proc(): cint) =
  # TODO check subclass
  type Cb = proc(): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_horizontalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_horizontalOffset(self: ptr cQAbstractItemView, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractItemView_horizontalOffset ".} =
  type Cb = proc(): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QAbstractItemViewverticalOffsetBase* = proc(): cint
proc onverticalOffset*(self: QAbstractItemView, slot: proc(): cint) =
  # TODO check subclass
  type Cb = proc(): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_verticalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_verticalOffset(self: ptr cQAbstractItemView, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractItemView_verticalOffset ".} =
  type Cb = proc(): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QAbstractItemViewisIndexHiddenBase* = proc(index: gen_qabstractitemmodel.QModelIndex): bool
proc onisIndexHidden*(self: QAbstractItemView, slot: proc(index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_isIndexHidden(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_isIndexHidden(self: ptr cQAbstractItemView, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemView_isIndexHidden ".} =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QAbstractItemViewsetSelectionBase* = proc(rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
proc onsetSelection*(self: QAbstractItemView, slot: proc(rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void) =
  # TODO check subclass
  type Cb = proc(rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_setSelection(self: ptr cQAbstractItemView, slot: int, rect: pointer, command: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_setSelection ".} =
  type Cb = proc(rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qrect.QRect(h: rect)

  let slotval2 = gen_qitemselectionmodel.QItemSelectionModelSelectionFlag(command)


  nimfunc[](slotval1, slotval2)
type QAbstractItemViewvisualRegionForSelectionBase* = proc(selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
proc onvisualRegionForSelection*(self: QAbstractItemView, slot: proc(selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion) =
  # TODO check subclass
  type Cb = proc(selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_visualRegionForSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_visualRegionForSelection(self: ptr cQAbstractItemView, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_visualRegionForSelection ".} =
  type Cb = proc(selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc callVirtualBase_selectedIndexes(self: QAbstractItemView, ): seq[gen_qabstractitemmodel.QModelIndex] =


  var v_ma = fQAbstractItemView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

type QAbstractItemViewselectedIndexesBase* = proc(): seq[gen_qabstractitemmodel.QModelIndex]
proc onselectedIndexes*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_selectedIndexes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_selectedIndexes(self: ptr cQAbstractItemView, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractItemView_selectedIndexes ".} =
  type Cb = proc(super: QAbstractItemViewselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_selectedIndexes(QAbstractItemView(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_edit2(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex, trigger: QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool =


  fQAbstractItemView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

type QAbstractItemViewedit2Base* = proc(index: gen_qabstractitemmodel.QModelIndex, trigger: QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
proc onedit2*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_edit2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_edit2(self: ptr cQAbstractItemView, slot: int, index: pointer, trigger: cint, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemView_edit2 ".} =
  type Cb = proc(super: QAbstractItemViewedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, trigger: QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_edit2(QAbstractItemView(h: self), index, trigger, event)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = QAbstractItemViewEditTrigger(trigger)

  let slotval3 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_selectionCommand(self: QAbstractItemView, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag =


  gen_qitemselectionmodel.QItemSelectionModelSelectionFlag(fQAbstractItemView_virtualbase_selectionCommand(self.h, index.h, event.h))

type QAbstractItemViewselectionCommandBase* = proc(index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
proc onselectionCommand*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_selectionCommand(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_selectionCommand(self: ptr cQAbstractItemView, slot: int, index: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QAbstractItemView_selectionCommand ".} =
  type Cb = proc(super: QAbstractItemViewselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_selectionCommand(QAbstractItemView(h: self), index, event)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  cint(virtualReturn)
proc callVirtualBase_startDrag(self: QAbstractItemView, supportedActions: gen_qnamespace.DropAction): void =


  fQAbstractItemView_virtualbase_startDrag(self.h, cint(supportedActions))

type QAbstractItemViewstartDragBase* = proc(supportedActions: gen_qnamespace.DropAction): void
proc onstartDrag*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewstartDragBase, supportedActions: gen_qnamespace.DropAction): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewstartDragBase, supportedActions: gen_qnamespace.DropAction): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_startDrag(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_startDrag(self: ptr cQAbstractItemView, slot: int, supportedActions: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_startDrag ".} =
  type Cb = proc(super: QAbstractItemViewstartDragBase, supportedActions: gen_qnamespace.DropAction): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(supportedActions: gen_qnamespace.DropAction): auto =
    callVirtualBase_startDrag(QAbstractItemView(h: self), supportedActions)
  let slotval1 = gen_qnamespace.DropAction(supportedActions)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initViewItemOption(self: QAbstractItemView, option: gen_qstyleoption.QStyleOptionViewItem): void =


  fQAbstractItemView_virtualbase_initViewItemOption(self.h, option.h)

type QAbstractItemViewinitViewItemOptionBase* = proc(option: gen_qstyleoption.QStyleOptionViewItem): void
proc oninitViewItemOption*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewinitViewItemOptionBase, option: gen_qstyleoption.QStyleOptionViewItem): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewinitViewItemOptionBase, option: gen_qstyleoption.QStyleOptionViewItem): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_initViewItemOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_initViewItemOption(self: ptr cQAbstractItemView, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_initViewItemOption ".} =
  type Cb = proc(super: QAbstractItemViewinitViewItemOptionBase, option: gen_qstyleoption.QStyleOptionViewItem): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionViewItem): auto =
    callVirtualBase_initViewItemOption(QAbstractItemView(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionViewItem(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusNextPrevChild(self: QAbstractItemView, next: bool): bool =


  fQAbstractItemView_virtualbase_focusNextPrevChild(self.h, next)

type QAbstractItemViewfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_focusNextPrevChild(self: ptr cQAbstractItemView, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QAbstractItemView_focusNextPrevChild ".} =
  type Cb = proc(super: QAbstractItemViewfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QAbstractItemView(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QAbstractItemView, event: gen_qcoreevent.QEvent): bool =


  fQAbstractItemView_virtualbase_event(self.h, event.h)

type QAbstractItemVieweventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAbstractItemView, slot: proc(super: QAbstractItemVieweventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemVieweventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_event(self: ptr cQAbstractItemView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemView_event ".} =
  type Cb = proc(super: QAbstractItemVieweventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAbstractItemView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_viewportEvent(self: QAbstractItemView, event: gen_qcoreevent.QEvent): bool =


  fQAbstractItemView_virtualbase_viewportEvent(self.h, event.h)

type QAbstractItemViewviewportEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewviewportEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_viewportEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemView_viewportEvent ".} =
  type Cb = proc(super: QAbstractItemViewviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_viewportEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QAbstractItemView, event: gen_qevent.QMouseEvent): void =


  fQAbstractItemView_virtualbase_mousePressEvent(self.h, event.h)

type QAbstractItemViewmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_mousePressEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_mousePressEvent ".} =
  type Cb = proc(super: QAbstractItemViewmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QAbstractItemView, event: gen_qevent.QMouseEvent): void =


  fQAbstractItemView_virtualbase_mouseMoveEvent(self.h, event.h)

type QAbstractItemViewmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_mouseMoveEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_mouseMoveEvent ".} =
  type Cb = proc(super: QAbstractItemViewmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QAbstractItemView, event: gen_qevent.QMouseEvent): void =


  fQAbstractItemView_virtualbase_mouseReleaseEvent(self.h, event.h)

type QAbstractItemViewmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_mouseReleaseEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_mouseReleaseEvent ".} =
  type Cb = proc(super: QAbstractItemViewmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QAbstractItemView, event: gen_qevent.QMouseEvent): void =


  fQAbstractItemView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QAbstractItemViewmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_mouseDoubleClickEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QAbstractItemViewmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QAbstractItemView, event: gen_qevent.QDragEnterEvent): void =


  fQAbstractItemView_virtualbase_dragEnterEvent(self.h, event.h)

type QAbstractItemViewdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_dragEnterEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_dragEnterEvent ".} =
  type Cb = proc(super: QAbstractItemViewdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QAbstractItemView, event: gen_qevent.QDragMoveEvent): void =


  fQAbstractItemView_virtualbase_dragMoveEvent(self.h, event.h)

type QAbstractItemViewdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_dragMoveEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_dragMoveEvent ".} =
  type Cb = proc(super: QAbstractItemViewdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QAbstractItemView, event: gen_qevent.QDragLeaveEvent): void =


  fQAbstractItemView_virtualbase_dragLeaveEvent(self.h, event.h)

type QAbstractItemViewdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_dragLeaveEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_dragLeaveEvent ".} =
  type Cb = proc(super: QAbstractItemViewdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QAbstractItemView, event: gen_qevent.QDropEvent): void =


  fQAbstractItemView_virtualbase_dropEvent(self.h, event.h)

type QAbstractItemViewdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_dropEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_dropEvent ".} =
  type Cb = proc(super: QAbstractItemViewdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QAbstractItemView, event: gen_qevent.QFocusEvent): void =


  fQAbstractItemView_virtualbase_focusInEvent(self.h, event.h)

type QAbstractItemViewfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_focusInEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_focusInEvent ".} =
  type Cb = proc(super: QAbstractItemViewfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QAbstractItemView, event: gen_qevent.QFocusEvent): void =


  fQAbstractItemView_virtualbase_focusOutEvent(self.h, event.h)

type QAbstractItemViewfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_focusOutEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_focusOutEvent ".} =
  type Cb = proc(super: QAbstractItemViewfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QAbstractItemView, event: gen_qevent.QKeyEvent): void =


  fQAbstractItemView_virtualbase_keyPressEvent(self.h, event.h)

type QAbstractItemViewkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_keyPressEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_keyPressEvent ".} =
  type Cb = proc(super: QAbstractItemViewkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QAbstractItemView, event: gen_qevent.QResizeEvent): void =


  fQAbstractItemView_virtualbase_resizeEvent(self.h, event.h)

type QAbstractItemViewresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_resizeEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_resizeEvent ".} =
  type Cb = proc(super: QAbstractItemViewresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QAbstractItemView, event: gen_qcoreevent.QTimerEvent): void =


  fQAbstractItemView_virtualbase_timerEvent(self.h, event.h)

type QAbstractItemViewtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_timerEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_timerEvent ".} =
  type Cb = proc(super: QAbstractItemViewtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QAbstractItemView, event: gen_qevent.QInputMethodEvent): void =


  fQAbstractItemView_virtualbase_inputMethodEvent(self.h, event.h)

type QAbstractItemViewinputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_inputMethodEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_inputMethodEvent ".} =
  type Cb = proc(super: QAbstractItemViewinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QAbstractItemView, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAbstractItemView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QAbstractItemVieweventFilterBase* = proc(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAbstractItemView, slot: proc(super: QAbstractItemVieweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemVieweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_eventFilter(self: ptr cQAbstractItemView, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemView_eventFilter ".} =
  type Cb = proc(super: QAbstractItemVieweventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAbstractItemView(h: self), objectVal, event)
  let slotval1 = gen_qobject.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_viewportSizeHint(self: QAbstractItemView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQAbstractItemView_virtualbase_viewportSizeHint(self.h))

type QAbstractItemViewviewportSizeHintBase* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewviewportSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewviewportSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_viewportSizeHint(self: ptr cQAbstractItemView, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_viewportSizeHint ".} =
  type Cb = proc(super: QAbstractItemViewviewportSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewportSizeHint(QAbstractItemView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_minimumSizeHint(self: QAbstractItemView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQAbstractItemView_virtualbase_minimumSizeHint(self.h))

type QAbstractItemViewminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_minimumSizeHint(self: ptr cQAbstractItemView, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_minimumSizeHint ".} =
  type Cb = proc(super: QAbstractItemViewminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QAbstractItemView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHint(self: QAbstractItemView, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQAbstractItemView_virtualbase_sizeHint(self.h))

type QAbstractItemViewsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_sizeHint(self: ptr cQAbstractItemView, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_sizeHint ".} =
  type Cb = proc(super: QAbstractItemViewsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QAbstractItemView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setupViewport(self: QAbstractItemView, viewport: gen_qwidget.QWidget): void =


  fQAbstractItemView_virtualbase_setupViewport(self.h, viewport.h)

type QAbstractItemViewsetupViewportBase* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewsetupViewportBase, viewport: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_setupViewport(self: ptr cQAbstractItemView, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_setupViewport ".} =
  type Cb = proc(super: QAbstractItemViewsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(viewport: gen_qwidget.QWidget): auto =
    callVirtualBase_setupViewport(QAbstractItemView(h: self), viewport)
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QAbstractItemView, param1: gen_qevent.QPaintEvent): void =


  fQAbstractItemView_virtualbase_paintEvent(self.h, param1.h)

type QAbstractItemViewpaintEventBase* = proc(param1: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewpaintEventBase, param1: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_paintEvent(self: ptr cQAbstractItemView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_paintEvent ".} =
  type Cb = proc(super: QAbstractItemViewpaintEventBase, param1: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QAbstractItemView(h: self), param1)
  let slotval1 = gen_qevent.QPaintEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QAbstractItemView, param1: gen_qevent.QWheelEvent): void =


  fQAbstractItemView_virtualbase_wheelEvent(self.h, param1.h)

type QAbstractItemViewwheelEventBase* = proc(param1: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewwheelEventBase, param1: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_wheelEvent(self: ptr cQAbstractItemView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_wheelEvent ".} =
  type Cb = proc(super: QAbstractItemViewwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QAbstractItemView(h: self), param1)
  let slotval1 = gen_qevent.QWheelEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QAbstractItemView, param1: gen_qevent.QContextMenuEvent): void =


  fQAbstractItemView_virtualbase_contextMenuEvent(self.h, param1.h)

type QAbstractItemViewcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_contextMenuEvent(self: ptr cQAbstractItemView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_contextMenuEvent ".} =
  type Cb = proc(super: QAbstractItemViewcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QAbstractItemView(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_scrollContentsBy(self: QAbstractItemView, dx: cint, dy: cint): void =


  fQAbstractItemView_virtualbase_scrollContentsBy(self.h, dx, dy)

type QAbstractItemViewscrollContentsByBase* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewscrollContentsByBase, dx: cint, dy: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewscrollContentsByBase, dx: cint, dy: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_scrollContentsBy(self: ptr cQAbstractItemView, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QAbstractItemView_scrollContentsBy ".} =
  type Cb = proc(super: QAbstractItemViewscrollContentsByBase, dx: cint, dy: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(dx: cint, dy: cint): auto =
    callVirtualBase_scrollContentsBy(QAbstractItemView(h: self), dx, dy)
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_changeEvent(self: QAbstractItemView, param1: gen_qcoreevent.QEvent): void =


  fQAbstractItemView_virtualbase_changeEvent(self.h, param1.h)

type QAbstractItemViewchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_changeEvent(self: ptr cQAbstractItemView, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_changeEvent ".} =
  type Cb = proc(super: QAbstractItemViewchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QAbstractItemView(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initStyleOption(self: QAbstractItemView, option: gen_qstyleoption.QStyleOptionFrame): void =


  fQAbstractItemView_virtualbase_initStyleOption(self.h, option.h)

type QAbstractItemViewinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionFrame): void
proc oninitStyleOption*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_initStyleOption(self: ptr cQAbstractItemView, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_initStyleOption ".} =
  type Cb = proc(super: QAbstractItemViewinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionFrame): auto =
    callVirtualBase_initStyleOption(QAbstractItemView(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionFrame(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QAbstractItemView, ): cint =


  fQAbstractItemView_virtualbase_devType(self.h)

type QAbstractItemViewdevTypeBase* = proc(): cint
proc ondevType*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_devType(self: ptr cQAbstractItemView, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractItemView_devType ".} =
  type Cb = proc(super: QAbstractItemViewdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QAbstractItemView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QAbstractItemView, visible: bool): void =


  fQAbstractItemView_virtualbase_setVisible(self.h, visible)

type QAbstractItemViewsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_setVisible(self: ptr cQAbstractItemView, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QAbstractItemView_setVisible ".} =
  type Cb = proc(super: QAbstractItemViewsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QAbstractItemView(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QAbstractItemView, param1: cint): cint =


  fQAbstractItemView_virtualbase_heightForWidth(self.h, param1)

type QAbstractItemViewheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_heightForWidth(self: ptr cQAbstractItemView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractItemView_heightForWidth ".} =
  type Cb = proc(super: QAbstractItemViewheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QAbstractItemView(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QAbstractItemView, ): bool =


  fQAbstractItemView_virtualbase_hasHeightForWidth(self.h)

type QAbstractItemViewhasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewhasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewhasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_hasHeightForWidth(self: ptr cQAbstractItemView, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractItemView_hasHeightForWidth ".} =
  type Cb = proc(super: QAbstractItemViewhasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QAbstractItemView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QAbstractItemView, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQAbstractItemView_virtualbase_paintEngine(self.h))

type QAbstractItemViewpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_paintEngine(self: ptr cQAbstractItemView, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_paintEngine ".} =
  type Cb = proc(super: QAbstractItemViewpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QAbstractItemView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_keyReleaseEvent(self: QAbstractItemView, event: gen_qevent.QKeyEvent): void =


  fQAbstractItemView_virtualbase_keyReleaseEvent(self.h, event.h)

type QAbstractItemViewkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_keyReleaseEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_keyReleaseEvent ".} =
  type Cb = proc(super: QAbstractItemViewkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QAbstractItemView, event: gen_qevent.QEnterEvent): void =


  fQAbstractItemView_virtualbase_enterEvent(self.h, event.h)

type QAbstractItemViewenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_enterEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_enterEvent ".} =
  type Cb = proc(super: QAbstractItemViewenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QAbstractItemView, event: gen_qcoreevent.QEvent): void =


  fQAbstractItemView_virtualbase_leaveEvent(self.h, event.h)

type QAbstractItemViewleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_leaveEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_leaveEvent ".} =
  type Cb = proc(super: QAbstractItemViewleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QAbstractItemView, event: gen_qevent.QMoveEvent): void =


  fQAbstractItemView_virtualbase_moveEvent(self.h, event.h)

type QAbstractItemViewmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_moveEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_moveEvent ".} =
  type Cb = proc(super: QAbstractItemViewmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QAbstractItemView, event: gen_qevent.QCloseEvent): void =


  fQAbstractItemView_virtualbase_closeEvent(self.h, event.h)

type QAbstractItemViewcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_closeEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_closeEvent ".} =
  type Cb = proc(super: QAbstractItemViewcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QAbstractItemView, event: gen_qevent.QTabletEvent): void =


  fQAbstractItemView_virtualbase_tabletEvent(self.h, event.h)

type QAbstractItemViewtabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewtabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewtabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_tabletEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_tabletEvent ".} =
  type Cb = proc(super: QAbstractItemViewtabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QAbstractItemView, event: gen_qevent.QActionEvent): void =


  fQAbstractItemView_virtualbase_actionEvent(self.h, event.h)

type QAbstractItemViewactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_actionEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_actionEvent ".} =
  type Cb = proc(super: QAbstractItemViewactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QAbstractItemView, event: gen_qevent.QShowEvent): void =


  fQAbstractItemView_virtualbase_showEvent(self.h, event.h)

type QAbstractItemViewshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_showEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_showEvent ".} =
  type Cb = proc(super: QAbstractItemViewshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QAbstractItemView, event: gen_qevent.QHideEvent): void =


  fQAbstractItemView_virtualbase_hideEvent(self.h, event.h)

type QAbstractItemViewhideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewhideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewhideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_hideEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_hideEvent ".} =
  type Cb = proc(super: QAbstractItemViewhideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QAbstractItemView, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQAbstractItemView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QAbstractItemViewnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_nativeEvent(self: ptr cQAbstractItemView, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QAbstractItemView_nativeEvent ".} =
  type Cb = proc(super: QAbstractItemViewnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QAbstractItemView(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QAbstractItemView, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQAbstractItemView_virtualbase_metric(self.h, cint(param1))

type QAbstractItemViewmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_metric(self: ptr cQAbstractItemView, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QAbstractItemView_metric ".} =
  type Cb = proc(super: QAbstractItemViewmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QAbstractItemView(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QAbstractItemView, painter: gen_qpainter.QPainter): void =


  fQAbstractItemView_virtualbase_initPainter(self.h, painter.h)

type QAbstractItemViewinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_initPainter(self: ptr cQAbstractItemView, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_initPainter ".} =
  type Cb = proc(super: QAbstractItemViewinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QAbstractItemView(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QAbstractItemView, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQAbstractItemView_virtualbase_redirected(self.h, offset.h))

type QAbstractItemViewredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_redirected(self: ptr cQAbstractItemView, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_redirected ".} =
  type Cb = proc(super: QAbstractItemViewredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QAbstractItemView(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QAbstractItemView, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQAbstractItemView_virtualbase_sharedPainter(self.h))

type QAbstractItemViewsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_sharedPainter(self: ptr cQAbstractItemView, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractItemView_sharedPainter ".} =
  type Cb = proc(super: QAbstractItemViewsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QAbstractItemView(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_childEvent(self: QAbstractItemView, event: gen_qcoreevent.QChildEvent): void =


  fQAbstractItemView_virtualbase_childEvent(self.h, event.h)

type QAbstractItemViewchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_childEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_childEvent ".} =
  type Cb = proc(super: QAbstractItemViewchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAbstractItemView, event: gen_qcoreevent.QEvent): void =


  fQAbstractItemView_virtualbase_customEvent(self.h, event.h)

type QAbstractItemViewcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_customEvent(self: ptr cQAbstractItemView, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_customEvent ".} =
  type Cb = proc(super: QAbstractItemViewcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAbstractItemView(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAbstractItemView, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractItemView_virtualbase_connectNotify(self.h, signal.h)

type QAbstractItemViewconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_connectNotify(self: ptr cQAbstractItemView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_connectNotify ".} =
  type Cb = proc(super: QAbstractItemViewconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAbstractItemView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAbstractItemView, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractItemView_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractItemViewdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAbstractItemView, slot: proc(super: QAbstractItemViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemView_disconnectNotify(self: ptr cQAbstractItemView, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemView_disconnectNotify ".} =
  type Cb = proc(super: QAbstractItemViewdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAbstractItemView(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAbstractItemView): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAbstractItemView_staticMetaObject())
proc delete*(self: QAbstractItemView) =
  fcQAbstractItemView_delete(self.h)
