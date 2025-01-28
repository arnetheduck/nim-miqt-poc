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
{.compile("gen_qabstractitemview.cpp", cflags).}


type QAbstractItemViewSelectionModeEnum* = distinct cint
template NoSelection*(_: type QAbstractItemViewSelectionModeEnum): untyped = 0
template SingleSelection*(_: type QAbstractItemViewSelectionModeEnum): untyped = 1
template MultiSelection*(_: type QAbstractItemViewSelectionModeEnum): untyped = 2
template ExtendedSelection*(_: type QAbstractItemViewSelectionModeEnum): untyped = 3
template ContiguousSelection*(_: type QAbstractItemViewSelectionModeEnum): untyped = 4


type QAbstractItemViewSelectionBehaviorEnum* = distinct cint
template SelectItems*(_: type QAbstractItemViewSelectionBehaviorEnum): untyped = 0
template SelectRows*(_: type QAbstractItemViewSelectionBehaviorEnum): untyped = 1
template SelectColumns*(_: type QAbstractItemViewSelectionBehaviorEnum): untyped = 2


type QAbstractItemViewScrollHintEnum* = distinct cint
template EnsureVisible*(_: type QAbstractItemViewScrollHintEnum): untyped = 0
template PositionAtTop*(_: type QAbstractItemViewScrollHintEnum): untyped = 1
template PositionAtBottom*(_: type QAbstractItemViewScrollHintEnum): untyped = 2
template PositionAtCenter*(_: type QAbstractItemViewScrollHintEnum): untyped = 3


type QAbstractItemViewEditTriggerEnum* = distinct cint
template NoEditTriggers*(_: type QAbstractItemViewEditTriggerEnum): untyped = 0
template CurrentChanged*(_: type QAbstractItemViewEditTriggerEnum): untyped = 1
template DoubleClicked*(_: type QAbstractItemViewEditTriggerEnum): untyped = 2
template SelectedClicked*(_: type QAbstractItemViewEditTriggerEnum): untyped = 4
template EditKeyPressed*(_: type QAbstractItemViewEditTriggerEnum): untyped = 8
template AnyKeyPressed*(_: type QAbstractItemViewEditTriggerEnum): untyped = 16
template AllEditTriggers*(_: type QAbstractItemViewEditTriggerEnum): untyped = 31


type QAbstractItemViewScrollModeEnum* = distinct cint
template ScrollPerItem*(_: type QAbstractItemViewScrollModeEnum): untyped = 0
template ScrollPerPixel*(_: type QAbstractItemViewScrollModeEnum): untyped = 1


type QAbstractItemViewDragDropModeEnum* = distinct cint
template NoDragDrop*(_: type QAbstractItemViewDragDropModeEnum): untyped = 0
template DragOnly*(_: type QAbstractItemViewDragDropModeEnum): untyped = 1
template DropOnly*(_: type QAbstractItemViewDragDropModeEnum): untyped = 2
template DragDrop*(_: type QAbstractItemViewDragDropModeEnum): untyped = 3
template InternalMove*(_: type QAbstractItemViewDragDropModeEnum): untyped = 4


type QAbstractItemViewCursorActionEnum* = distinct cint
template MoveUp*(_: type QAbstractItemViewCursorActionEnum): untyped = 0
template MoveDown*(_: type QAbstractItemViewCursorActionEnum): untyped = 1
template MoveLeft*(_: type QAbstractItemViewCursorActionEnum): untyped = 2
template MoveRight*(_: type QAbstractItemViewCursorActionEnum): untyped = 3
template MoveHome*(_: type QAbstractItemViewCursorActionEnum): untyped = 4
template MoveEnd*(_: type QAbstractItemViewCursorActionEnum): untyped = 5
template MovePageUp*(_: type QAbstractItemViewCursorActionEnum): untyped = 6
template MovePageDown*(_: type QAbstractItemViewCursorActionEnum): untyped = 7
template MoveNext*(_: type QAbstractItemViewCursorActionEnum): untyped = 8
template MovePrevious*(_: type QAbstractItemViewCursorActionEnum): untyped = 9


type QAbstractItemViewStateEnum* = distinct cint
template NoState*(_: type QAbstractItemViewStateEnum): untyped = 0
template DraggingState*(_: type QAbstractItemViewStateEnum): untyped = 1
template DragSelectingState*(_: type QAbstractItemViewStateEnum): untyped = 2
template EditingState*(_: type QAbstractItemViewStateEnum): untyped = 3
template ExpandingState*(_: type QAbstractItemViewStateEnum): untyped = 4
template CollapsingState*(_: type QAbstractItemViewStateEnum): untyped = 5
template AnimatingState*(_: type QAbstractItemViewStateEnum): untyped = 6


type QAbstractItemViewDropIndicatorPositionEnum* = distinct cint
template OnItem*(_: type QAbstractItemViewDropIndicatorPositionEnum): untyped = 0
template AboveItem*(_: type QAbstractItemViewDropIndicatorPositionEnum): untyped = 1
template BelowItem*(_: type QAbstractItemViewDropIndicatorPositionEnum): untyped = 2
template OnViewport*(_: type QAbstractItemViewDropIndicatorPositionEnum): untyped = 3

import gen_qabstractitemview_types
export gen_qabstractitemview_types

import
  gen_qabstractitemdelegate_types,
  gen_qabstractitemmodel_types,
  gen_qabstractscrollarea,
  gen_qcoreevent_types,
  gen_qevent_types,
  gen_qitemselectionmodel_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qregion_types,
  gen_qsize_types,
  gen_qstyleoption_types,
  gen_qvariant_types,
  gen_qwidget_types
export
  gen_qabstractitemdelegate_types,
  gen_qabstractitemmodel_types,
  gen_qabstractscrollarea,
  gen_qcoreevent_types,
  gen_qevent_types,
  gen_qitemselectionmodel_types,
  gen_qmetaobject_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qpaintdevice_types,
  gen_qpaintengine_types,
  gen_qpainter_types,
  gen_qpoint_types,
  gen_qrect_types,
  gen_qregion_types,
  gen_qsize_types,
  gen_qstyleoption_types,
  gen_qvariant_types,
  gen_qwidget_types

type cQAbstractItemView*{.exportc: "QAbstractItemView", incompleteStruct.} = object

proc fcQAbstractItemView_metaObject(self: pointer, ): pointer {.importc: "QAbstractItemView_metaObject".}
proc fcQAbstractItemView_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractItemView_metacast".}
proc fcQAbstractItemView_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractItemView_metacall".}
proc fcQAbstractItemView_tr(s: cstring): struct_miqt_string {.importc: "QAbstractItemView_tr".}
proc fcQAbstractItemView_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractItemView_trUtf8".}
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
proc fcQAbstractItemView_connect_pressed(self: pointer, slot: int) {.importc: "QAbstractItemView_connect_pressed".}
proc fcQAbstractItemView_clicked(self: pointer, index: pointer): void {.importc: "QAbstractItemView_clicked".}
proc fcQAbstractItemView_connect_clicked(self: pointer, slot: int) {.importc: "QAbstractItemView_connect_clicked".}
proc fcQAbstractItemView_doubleClicked(self: pointer, index: pointer): void {.importc: "QAbstractItemView_doubleClicked".}
proc fcQAbstractItemView_connect_doubleClicked(self: pointer, slot: int) {.importc: "QAbstractItemView_connect_doubleClicked".}
proc fcQAbstractItemView_activated(self: pointer, index: pointer): void {.importc: "QAbstractItemView_activated".}
proc fcQAbstractItemView_connect_activated(self: pointer, slot: int) {.importc: "QAbstractItemView_connect_activated".}
proc fcQAbstractItemView_entered(self: pointer, index: pointer): void {.importc: "QAbstractItemView_entered".}
proc fcQAbstractItemView_connect_entered(self: pointer, slot: int) {.importc: "QAbstractItemView_connect_entered".}
proc fcQAbstractItemView_viewportEntered(self: pointer, ): void {.importc: "QAbstractItemView_viewportEntered".}
proc fcQAbstractItemView_connect_viewportEntered(self: pointer, slot: int) {.importc: "QAbstractItemView_connect_viewportEntered".}
proc fcQAbstractItemView_iconSizeChanged(self: pointer, size: pointer): void {.importc: "QAbstractItemView_iconSizeChanged".}
proc fcQAbstractItemView_connect_iconSizeChanged(self: pointer, slot: int) {.importc: "QAbstractItemView_connect_iconSizeChanged".}
proc fcQAbstractItemView_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractItemView_tr2".}
proc fcQAbstractItemView_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractItemView_tr3".}
proc fcQAbstractItemView_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractItemView_trUtf82".}
proc fcQAbstractItemView_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractItemView_trUtf83".}
type cQAbstractItemViewVTable = object
  destructor*: proc(vtbl: ptr cQAbstractItemViewVTable, self: ptr cQAbstractItemView) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setModel*: proc(vtbl, self: pointer, model: pointer): void {.cdecl, raises: [], gcsafe.}
  setSelectionModel*: proc(vtbl, self: pointer, selectionModel: pointer): void {.cdecl, raises: [], gcsafe.}
  keyboardSearch*: proc(vtbl, self: pointer, search: struct_miqt_string): void {.cdecl, raises: [], gcsafe.}
  visualRect*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  scrollTo*: proc(vtbl, self: pointer, index: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  indexAt*: proc(vtbl, self: pointer, point: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sizeHintForRow*: proc(vtbl, self: pointer, row: cint): cint {.cdecl, raises: [], gcsafe.}
  sizeHintForColumn*: proc(vtbl, self: pointer, column: cint): cint {.cdecl, raises: [], gcsafe.}
  inputMethodQuery*: proc(vtbl, self: pointer, query: cint): pointer {.cdecl, raises: [], gcsafe.}
  reset*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  setRootIndex*: proc(vtbl, self: pointer, index: pointer): void {.cdecl, raises: [], gcsafe.}
  doItemsLayout*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  selectAll*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  dataChanged*: proc(vtbl, self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl, raises: [], gcsafe.}
  rowsInserted*: proc(vtbl, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  rowsAboutToBeRemoved*: proc(vtbl, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl, raises: [], gcsafe.}
  selectionChanged*: proc(vtbl, self: pointer, selected: pointer, deselected: pointer): void {.cdecl, raises: [], gcsafe.}
  currentChanged*: proc(vtbl, self: pointer, current: pointer, previous: pointer): void {.cdecl, raises: [], gcsafe.}
  updateEditorData*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  updateEditorGeometries*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  updateGeometries*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarAction*: proc(vtbl, self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarAction*: proc(vtbl, self: pointer, action: cint): void {.cdecl, raises: [], gcsafe.}
  verticalScrollbarValueChanged*: proc(vtbl, self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  horizontalScrollbarValueChanged*: proc(vtbl, self: pointer, value: cint): void {.cdecl, raises: [], gcsafe.}
  closeEditor*: proc(vtbl, self: pointer, editor: pointer, hint: cint): void {.cdecl, raises: [], gcsafe.}
  commitData*: proc(vtbl, self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  editorDestroyed*: proc(vtbl, self: pointer, editor: pointer): void {.cdecl, raises: [], gcsafe.}
  moveCursor*: proc(vtbl, self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl, raises: [], gcsafe.}
  horizontalOffset*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  verticalOffset*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  isIndexHidden*: proc(vtbl, self: pointer, index: pointer): bool {.cdecl, raises: [], gcsafe.}
  setSelection*: proc(vtbl, self: pointer, rect: pointer, command: cint): void {.cdecl, raises: [], gcsafe.}
  visualRegionForSelection*: proc(vtbl, self: pointer, selection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  selectedIndexes*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  edit*: proc(vtbl, self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  selectionCommand*: proc(vtbl, self: pointer, index: pointer, event: pointer): cint {.cdecl, raises: [], gcsafe.}
  startDrag*: proc(vtbl, self: pointer, supportedActions: cint): void {.cdecl, raises: [], gcsafe.}
  viewOptions*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  focusNextPrevChild*: proc(vtbl, self: pointer, next: bool): bool {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportEvent*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  mousePressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  mouseDoubleClickEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragEnterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragMoveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dragLeaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  dropEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusInEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  focusOutEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  keyPressEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  resizeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  inputMethodEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  viewportSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  minimumSizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  sizeHint*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  setupViewport*: proc(vtbl, self: pointer, viewport: pointer): void {.cdecl, raises: [], gcsafe.}
  paintEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  wheelEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  contextMenuEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  scrollContentsBy*: proc(vtbl, self: pointer, dx: cint, dy: cint): void {.cdecl, raises: [], gcsafe.}
  changeEvent*: proc(vtbl, self: pointer, param1: pointer): void {.cdecl, raises: [], gcsafe.}
  devType*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  setVisible*: proc(vtbl, self: pointer, visible: bool): void {.cdecl, raises: [], gcsafe.}
  heightForWidth*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  hasHeightForWidth*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  paintEngine*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  keyReleaseEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  enterEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  leaveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  moveEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  closeEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  tabletEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  actionEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  showEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  hideEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  nativeEvent*: proc(vtbl, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl, raises: [], gcsafe.}
  metric*: proc(vtbl, self: pointer, param1: cint): cint {.cdecl, raises: [], gcsafe.}
  initPainter*: proc(vtbl, self: pointer, painter: pointer): void {.cdecl, raises: [], gcsafe.}
  redirected*: proc(vtbl, self: pointer, offset: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sharedPainter*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQAbstractItemView_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QAbstractItemView_virtualbase_metaObject".}
proc fcQAbstractItemView_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractItemView_virtualbase_metacast".}
proc fcQAbstractItemView_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractItemView_virtualbase_metacall".}
proc fcQAbstractItemView_virtualbase_setModel(self: pointer, model: pointer): void {.importc: "QAbstractItemView_virtualbase_setModel".}
proc fcQAbstractItemView_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QAbstractItemView_virtualbase_setSelectionModel".}
proc fcQAbstractItemView_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void {.importc: "QAbstractItemView_virtualbase_keyboardSearch".}
proc fcQAbstractItemView_virtualbase_sizeHintForRow(self: pointer, row: cint): cint {.importc: "QAbstractItemView_virtualbase_sizeHintForRow".}
proc fcQAbstractItemView_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint {.importc: "QAbstractItemView_virtualbase_sizeHintForColumn".}
proc fcQAbstractItemView_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer {.importc: "QAbstractItemView_virtualbase_inputMethodQuery".}
proc fcQAbstractItemView_virtualbase_reset(self: pointer, ): void {.importc: "QAbstractItemView_virtualbase_reset".}
proc fcQAbstractItemView_virtualbase_setRootIndex(self: pointer, index: pointer): void {.importc: "QAbstractItemView_virtualbase_setRootIndex".}
proc fcQAbstractItemView_virtualbase_doItemsLayout(self: pointer, ): void {.importc: "QAbstractItemView_virtualbase_doItemsLayout".}
proc fcQAbstractItemView_virtualbase_selectAll(self: pointer, ): void {.importc: "QAbstractItemView_virtualbase_selectAll".}
proc fcQAbstractItemView_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.importc: "QAbstractItemView_virtualbase_dataChanged".}
proc fcQAbstractItemView_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QAbstractItemView_virtualbase_rowsInserted".}
proc fcQAbstractItemView_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void {.importc: "QAbstractItemView_virtualbase_rowsAboutToBeRemoved".}
proc fcQAbstractItemView_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.importc: "QAbstractItemView_virtualbase_selectionChanged".}
proc fcQAbstractItemView_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QAbstractItemView_virtualbase_currentChanged".}
proc fcQAbstractItemView_virtualbase_updateEditorData(self: pointer, ): void {.importc: "QAbstractItemView_virtualbase_updateEditorData".}
proc fcQAbstractItemView_virtualbase_updateEditorGeometries(self: pointer, ): void {.importc: "QAbstractItemView_virtualbase_updateEditorGeometries".}
proc fcQAbstractItemView_virtualbase_updateGeometries(self: pointer, ): void {.importc: "QAbstractItemView_virtualbase_updateGeometries".}
proc fcQAbstractItemView_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void {.importc: "QAbstractItemView_virtualbase_verticalScrollbarAction".}
proc fcQAbstractItemView_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void {.importc: "QAbstractItemView_virtualbase_horizontalScrollbarAction".}
proc fcQAbstractItemView_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QAbstractItemView_virtualbase_verticalScrollbarValueChanged".}
proc fcQAbstractItemView_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void {.importc: "QAbstractItemView_virtualbase_horizontalScrollbarValueChanged".}
proc fcQAbstractItemView_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void {.importc: "QAbstractItemView_virtualbase_closeEditor".}
proc fcQAbstractItemView_virtualbase_commitData(self: pointer, editor: pointer): void {.importc: "QAbstractItemView_virtualbase_commitData".}
proc fcQAbstractItemView_virtualbase_editorDestroyed(self: pointer, editor: pointer): void {.importc: "QAbstractItemView_virtualbase_editorDestroyed".}
proc fcQAbstractItemView_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array {.importc: "QAbstractItemView_virtualbase_selectedIndexes".}
proc fcQAbstractItemView_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool {.importc: "QAbstractItemView_virtualbase_edit2".}
proc fcQAbstractItemView_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint {.importc: "QAbstractItemView_virtualbase_selectionCommand".}
proc fcQAbstractItemView_virtualbase_startDrag(self: pointer, supportedActions: cint): void {.importc: "QAbstractItemView_virtualbase_startDrag".}
proc fcQAbstractItemView_virtualbase_viewOptions(self: pointer, ): pointer {.importc: "QAbstractItemView_virtualbase_viewOptions".}
proc fcQAbstractItemView_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool {.importc: "QAbstractItemView_virtualbase_focusNextPrevChild".}
proc fcQAbstractItemView_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QAbstractItemView_virtualbase_event".}
proc fcQAbstractItemView_virtualbase_viewportEvent(self: pointer, event: pointer): bool {.importc: "QAbstractItemView_virtualbase_viewportEvent".}
proc fcQAbstractItemView_virtualbase_mousePressEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_mousePressEvent".}
proc fcQAbstractItemView_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_mouseMoveEvent".}
proc fcQAbstractItemView_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_mouseReleaseEvent".}
proc fcQAbstractItemView_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_mouseDoubleClickEvent".}
proc fcQAbstractItemView_virtualbase_dragEnterEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_dragEnterEvent".}
proc fcQAbstractItemView_virtualbase_dragMoveEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_dragMoveEvent".}
proc fcQAbstractItemView_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_dragLeaveEvent".}
proc fcQAbstractItemView_virtualbase_dropEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_dropEvent".}
proc fcQAbstractItemView_virtualbase_focusInEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_focusInEvent".}
proc fcQAbstractItemView_virtualbase_focusOutEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_focusOutEvent".}
proc fcQAbstractItemView_virtualbase_keyPressEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_keyPressEvent".}
proc fcQAbstractItemView_virtualbase_resizeEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_resizeEvent".}
proc fcQAbstractItemView_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_timerEvent".}
proc fcQAbstractItemView_virtualbase_inputMethodEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_inputMethodEvent".}
proc fcQAbstractItemView_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool {.importc: "QAbstractItemView_virtualbase_eventFilter".}
proc fcQAbstractItemView_virtualbase_viewportSizeHint(self: pointer, ): pointer {.importc: "QAbstractItemView_virtualbase_viewportSizeHint".}
proc fcQAbstractItemView_virtualbase_minimumSizeHint(self: pointer, ): pointer {.importc: "QAbstractItemView_virtualbase_minimumSizeHint".}
proc fcQAbstractItemView_virtualbase_sizeHint(self: pointer, ): pointer {.importc: "QAbstractItemView_virtualbase_sizeHint".}
proc fcQAbstractItemView_virtualbase_setupViewport(self: pointer, viewport: pointer): void {.importc: "QAbstractItemView_virtualbase_setupViewport".}
proc fcQAbstractItemView_virtualbase_paintEvent(self: pointer, param1: pointer): void {.importc: "QAbstractItemView_virtualbase_paintEvent".}
proc fcQAbstractItemView_virtualbase_wheelEvent(self: pointer, param1: pointer): void {.importc: "QAbstractItemView_virtualbase_wheelEvent".}
proc fcQAbstractItemView_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void {.importc: "QAbstractItemView_virtualbase_contextMenuEvent".}
proc fcQAbstractItemView_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void {.importc: "QAbstractItemView_virtualbase_scrollContentsBy".}
proc fcQAbstractItemView_virtualbase_changeEvent(self: pointer, param1: pointer): void {.importc: "QAbstractItemView_virtualbase_changeEvent".}
proc fcQAbstractItemView_virtualbase_devType(self: pointer, ): cint {.importc: "QAbstractItemView_virtualbase_devType".}
proc fcQAbstractItemView_virtualbase_setVisible(self: pointer, visible: bool): void {.importc: "QAbstractItemView_virtualbase_setVisible".}
proc fcQAbstractItemView_virtualbase_heightForWidth(self: pointer, param1: cint): cint {.importc: "QAbstractItemView_virtualbase_heightForWidth".}
proc fcQAbstractItemView_virtualbase_hasHeightForWidth(self: pointer, ): bool {.importc: "QAbstractItemView_virtualbase_hasHeightForWidth".}
proc fcQAbstractItemView_virtualbase_paintEngine(self: pointer, ): pointer {.importc: "QAbstractItemView_virtualbase_paintEngine".}
proc fcQAbstractItemView_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_keyReleaseEvent".}
proc fcQAbstractItemView_virtualbase_enterEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_enterEvent".}
proc fcQAbstractItemView_virtualbase_leaveEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_leaveEvent".}
proc fcQAbstractItemView_virtualbase_moveEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_moveEvent".}
proc fcQAbstractItemView_virtualbase_closeEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_closeEvent".}
proc fcQAbstractItemView_virtualbase_tabletEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_tabletEvent".}
proc fcQAbstractItemView_virtualbase_actionEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_actionEvent".}
proc fcQAbstractItemView_virtualbase_showEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_showEvent".}
proc fcQAbstractItemView_virtualbase_hideEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_hideEvent".}
proc fcQAbstractItemView_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QAbstractItemView_virtualbase_nativeEvent".}
proc fcQAbstractItemView_virtualbase_metric(self: pointer, param1: cint): cint {.importc: "QAbstractItemView_virtualbase_metric".}
proc fcQAbstractItemView_virtualbase_initPainter(self: pointer, painter: pointer): void {.importc: "QAbstractItemView_virtualbase_initPainter".}
proc fcQAbstractItemView_virtualbase_redirected(self: pointer, offset: pointer): pointer {.importc: "QAbstractItemView_virtualbase_redirected".}
proc fcQAbstractItemView_virtualbase_sharedPainter(self: pointer, ): pointer {.importc: "QAbstractItemView_virtualbase_sharedPainter".}
proc fcQAbstractItemView_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_childEvent".}
proc fcQAbstractItemView_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QAbstractItemView_virtualbase_customEvent".}
proc fcQAbstractItemView_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractItemView_virtualbase_connectNotify".}
proc fcQAbstractItemView_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QAbstractItemView_virtualbase_disconnectNotify".}
proc fcQAbstractItemView_new(vtbl: pointer, parent: pointer): ptr cQAbstractItemView {.importc: "QAbstractItemView_new".}
proc fcQAbstractItemView_new2(vtbl: pointer, ): ptr cQAbstractItemView {.importc: "QAbstractItemView_new2".}
proc fcQAbstractItemView_staticMetaObject(): pointer {.importc: "QAbstractItemView_staticMetaObject".}
proc fcQAbstractItemView_delete(self: pointer) {.importc: "QAbstractItemView_delete".}

proc metaObject*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractItemView_metaObject(self.h))

proc metacast*(self: gen_qabstractitemview_types.QAbstractItemView, param1: cstring): pointer =
  fcQAbstractItemView_metacast(self.h, param1)

proc metacall*(self: gen_qabstractitemview_types.QAbstractItemView, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractItemView_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qabstractitemview_types.QAbstractItemView, s: cstring): string =
  let v_ms = fcQAbstractItemView_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractitemview_types.QAbstractItemView, s: cstring): string =
  let v_ms = fcQAbstractItemView_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setModel*(self: gen_qabstractitemview_types.QAbstractItemView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractItemView_setModel(self.h, model.h)

proc model*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qabstractitemmodel_types.QAbstractItemModel =
  gen_qabstractitemmodel_types.QAbstractItemModel(h: fcQAbstractItemView_model(self.h))

proc setSelectionModel*(self: gen_qabstractitemview_types.QAbstractItemView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQAbstractItemView_setSelectionModel(self.h, selectionModel.h)

proc selectionModel*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qitemselectionmodel_types.QItemSelectionModel =
  gen_qitemselectionmodel_types.QItemSelectionModel(h: fcQAbstractItemView_selectionModel(self.h))

proc setItemDelegate*(self: gen_qabstractitemview_types.QAbstractItemView, delegate: gen_qabstractitemdelegate_types.QAbstractItemDelegate): void =
  fcQAbstractItemView_setItemDelegate(self.h, delegate.h)

proc itemDelegate*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQAbstractItemView_itemDelegate(self.h))

proc setSelectionMode*(self: gen_qabstractitemview_types.QAbstractItemView, mode: cint): void =
  fcQAbstractItemView_setSelectionMode(self.h, cint(mode))

proc selectionMode*(self: gen_qabstractitemview_types.QAbstractItemView, ): cint =
  cint(fcQAbstractItemView_selectionMode(self.h))

proc setSelectionBehavior*(self: gen_qabstractitemview_types.QAbstractItemView, behavior: cint): void =
  fcQAbstractItemView_setSelectionBehavior(self.h, cint(behavior))

proc selectionBehavior*(self: gen_qabstractitemview_types.QAbstractItemView, ): cint =
  cint(fcQAbstractItemView_selectionBehavior(self.h))

proc currentIndex*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemView_currentIndex(self.h))

proc rootIndex*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemView_rootIndex(self.h))

proc setEditTriggers*(self: gen_qabstractitemview_types.QAbstractItemView, triggers: cint): void =
  fcQAbstractItemView_setEditTriggers(self.h, cint(triggers))

proc editTriggers*(self: gen_qabstractitemview_types.QAbstractItemView, ): cint =
  cint(fcQAbstractItemView_editTriggers(self.h))

proc setVerticalScrollMode*(self: gen_qabstractitemview_types.QAbstractItemView, mode: cint): void =
  fcQAbstractItemView_setVerticalScrollMode(self.h, cint(mode))

proc verticalScrollMode*(self: gen_qabstractitemview_types.QAbstractItemView, ): cint =
  cint(fcQAbstractItemView_verticalScrollMode(self.h))

proc resetVerticalScrollMode*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_resetVerticalScrollMode(self.h)

proc setHorizontalScrollMode*(self: gen_qabstractitemview_types.QAbstractItemView, mode: cint): void =
  fcQAbstractItemView_setHorizontalScrollMode(self.h, cint(mode))

proc horizontalScrollMode*(self: gen_qabstractitemview_types.QAbstractItemView, ): cint =
  cint(fcQAbstractItemView_horizontalScrollMode(self.h))

proc resetHorizontalScrollMode*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_resetHorizontalScrollMode(self.h)

proc setAutoScroll*(self: gen_qabstractitemview_types.QAbstractItemView, enable: bool): void =
  fcQAbstractItemView_setAutoScroll(self.h, enable)

proc hasAutoScroll*(self: gen_qabstractitemview_types.QAbstractItemView, ): bool =
  fcQAbstractItemView_hasAutoScroll(self.h)

proc setAutoScrollMargin*(self: gen_qabstractitemview_types.QAbstractItemView, margin: cint): void =
  fcQAbstractItemView_setAutoScrollMargin(self.h, margin)

proc autoScrollMargin*(self: gen_qabstractitemview_types.QAbstractItemView, ): cint =
  fcQAbstractItemView_autoScrollMargin(self.h)

proc setTabKeyNavigation*(self: gen_qabstractitemview_types.QAbstractItemView, enable: bool): void =
  fcQAbstractItemView_setTabKeyNavigation(self.h, enable)

proc tabKeyNavigation*(self: gen_qabstractitemview_types.QAbstractItemView, ): bool =
  fcQAbstractItemView_tabKeyNavigation(self.h)

proc setDropIndicatorShown*(self: gen_qabstractitemview_types.QAbstractItemView, enable: bool): void =
  fcQAbstractItemView_setDropIndicatorShown(self.h, enable)

proc showDropIndicator*(self: gen_qabstractitemview_types.QAbstractItemView, ): bool =
  fcQAbstractItemView_showDropIndicator(self.h)

proc setDragEnabled*(self: gen_qabstractitemview_types.QAbstractItemView, enable: bool): void =
  fcQAbstractItemView_setDragEnabled(self.h, enable)

proc dragEnabled*(self: gen_qabstractitemview_types.QAbstractItemView, ): bool =
  fcQAbstractItemView_dragEnabled(self.h)

proc setDragDropOverwriteMode*(self: gen_qabstractitemview_types.QAbstractItemView, overwrite: bool): void =
  fcQAbstractItemView_setDragDropOverwriteMode(self.h, overwrite)

proc dragDropOverwriteMode*(self: gen_qabstractitemview_types.QAbstractItemView, ): bool =
  fcQAbstractItemView_dragDropOverwriteMode(self.h)

proc setDragDropMode*(self: gen_qabstractitemview_types.QAbstractItemView, behavior: cint): void =
  fcQAbstractItemView_setDragDropMode(self.h, cint(behavior))

proc dragDropMode*(self: gen_qabstractitemview_types.QAbstractItemView, ): cint =
  cint(fcQAbstractItemView_dragDropMode(self.h))

proc setDefaultDropAction*(self: gen_qabstractitemview_types.QAbstractItemView, dropAction: cint): void =
  fcQAbstractItemView_setDefaultDropAction(self.h, cint(dropAction))

proc defaultDropAction*(self: gen_qabstractitemview_types.QAbstractItemView, ): cint =
  cint(fcQAbstractItemView_defaultDropAction(self.h))

proc setAlternatingRowColors*(self: gen_qabstractitemview_types.QAbstractItemView, enable: bool): void =
  fcQAbstractItemView_setAlternatingRowColors(self.h, enable)

proc alternatingRowColors*(self: gen_qabstractitemview_types.QAbstractItemView, ): bool =
  fcQAbstractItemView_alternatingRowColors(self.h)

proc setIconSize*(self: gen_qabstractitemview_types.QAbstractItemView, size: gen_qsize_types.QSize): void =
  fcQAbstractItemView_setIconSize(self.h, size.h)

proc iconSize*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractItemView_iconSize(self.h))

proc setTextElideMode*(self: gen_qabstractitemview_types.QAbstractItemView, mode: cint): void =
  fcQAbstractItemView_setTextElideMode(self.h, cint(mode))

proc textElideMode*(self: gen_qabstractitemview_types.QAbstractItemView, ): cint =
  cint(fcQAbstractItemView_textElideMode(self.h))

proc keyboardSearch*(self: gen_qabstractitemview_types.QAbstractItemView, search: string): void =
  fcQAbstractItemView_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

proc visualRect*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect =
  gen_qrect_types.QRect(h: fcQAbstractItemView_visualRect(self.h, index.h))

proc scrollTo*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void =
  fcQAbstractItemView_scrollTo(self.h, index.h, cint(hint))

proc indexAt*(self: gen_qabstractitemview_types.QAbstractItemView, point: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQAbstractItemView_indexAt(self.h, point.h))

proc sizeHintForIndex*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractItemView_sizeHintForIndex(self.h, index.h))

proc sizeHintForRow*(self: gen_qabstractitemview_types.QAbstractItemView, row: cint): cint =
  fcQAbstractItemView_sizeHintForRow(self.h, row)

proc sizeHintForColumn*(self: gen_qabstractitemview_types.QAbstractItemView, column: cint): cint =
  fcQAbstractItemView_sizeHintForColumn(self.h, column)

proc openPersistentEditor*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_openPersistentEditor(self.h, index.h)

proc closePersistentEditor*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_closePersistentEditor(self.h, index.h)

proc isPersistentEditorOpen*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQAbstractItemView_isPersistentEditorOpen(self.h, index.h)

proc setIndexWidget*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex, widget: gen_qwidget_types.QWidget): void =
  fcQAbstractItemView_setIndexWidget(self.h, index.h, widget.h)

proc indexWidget*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qwidget_types.QWidget =
  gen_qwidget_types.QWidget(h: fcQAbstractItemView_indexWidget(self.h, index.h))

proc setItemDelegateForRow*(self: gen_qabstractitemview_types.QAbstractItemView, row: cint, delegate: gen_qabstractitemdelegate_types.QAbstractItemDelegate): void =
  fcQAbstractItemView_setItemDelegateForRow(self.h, row, delegate.h)

proc itemDelegateForRow*(self: gen_qabstractitemview_types.QAbstractItemView, row: cint): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQAbstractItemView_itemDelegateForRow(self.h, row))

proc setItemDelegateForColumn*(self: gen_qabstractitemview_types.QAbstractItemView, column: cint, delegate: gen_qabstractitemdelegate_types.QAbstractItemDelegate): void =
  fcQAbstractItemView_setItemDelegateForColumn(self.h, column, delegate.h)

proc itemDelegateForColumn*(self: gen_qabstractitemview_types.QAbstractItemView, column: cint): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQAbstractItemView_itemDelegateForColumn(self.h, column))

proc itemDelegate*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemdelegate_types.QAbstractItemDelegate =
  gen_qabstractitemdelegate_types.QAbstractItemDelegate(h: fcQAbstractItemView_itemDelegateWithIndex(self.h, index.h))

proc inputMethodQuery*(self: gen_qabstractitemview_types.QAbstractItemView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractItemView_inputMethodQuery(self.h, cint(query)))

proc reset*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_reset(self.h)

proc setRootIndex*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_setRootIndex(self.h, index.h)

proc doItemsLayout*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_doItemsLayout(self.h)

proc selectAll*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_selectAll(self.h)

proc edit*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_edit(self.h, index.h)

proc clearSelection*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_clearSelection(self.h)

proc setCurrentIndex*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_setCurrentIndex(self.h, index.h)

proc scrollToTop*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_scrollToTop(self.h)

proc scrollToBottom*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_scrollToBottom(self.h)

proc update*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_update(self.h, index.h)

proc pressed*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_pressed(self.h, index.h)

type QAbstractItemViewpressedSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_cQAbstractItemView_pressed(slot: int, index: pointer) {.exportc: "miqt_exec_callback_QAbstractItemView_pressed".} =
  let nimfunc = cast[ptr QAbstractItemViewpressedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  nimfunc[](slotval1)

proc onpressed*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewpressedSlot) =
  var tmp = new QAbstractItemViewpressedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_connect_pressed(self.h, cast[int](addr tmp[]))

proc clicked*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_clicked(self.h, index.h)

type QAbstractItemViewclickedSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_cQAbstractItemView_clicked(slot: int, index: pointer) {.exportc: "miqt_exec_callback_QAbstractItemView_clicked".} =
  let nimfunc = cast[ptr QAbstractItemViewclickedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  nimfunc[](slotval1)

proc onclicked*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewclickedSlot) =
  var tmp = new QAbstractItemViewclickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_connect_clicked(self.h, cast[int](addr tmp[]))

proc doubleClicked*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_doubleClicked(self.h, index.h)

type QAbstractItemViewdoubleClickedSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_cQAbstractItemView_doubleClicked(slot: int, index: pointer) {.exportc: "miqt_exec_callback_QAbstractItemView_doubleClicked".} =
  let nimfunc = cast[ptr QAbstractItemViewdoubleClickedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  nimfunc[](slotval1)

proc ondoubleClicked*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewdoubleClickedSlot) =
  var tmp = new QAbstractItemViewdoubleClickedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_connect_doubleClicked(self.h, cast[int](addr tmp[]))

proc activated*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_activated(self.h, index.h)

type QAbstractItemViewactivatedSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_cQAbstractItemView_activated(slot: int, index: pointer) {.exportc: "miqt_exec_callback_QAbstractItemView_activated".} =
  let nimfunc = cast[ptr QAbstractItemViewactivatedSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  nimfunc[](slotval1)

proc onactivated*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewactivatedSlot) =
  var tmp = new QAbstractItemViewactivatedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_connect_activated(self.h, cast[int](addr tmp[]))

proc entered*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_entered(self.h, index.h)

type QAbstractItemViewenteredSlot* = proc(index: gen_qabstractitemmodel_types.QModelIndex)
proc miqt_exec_callback_cQAbstractItemView_entered(slot: int, index: pointer) {.exportc: "miqt_exec_callback_QAbstractItemView_entered".} =
  let nimfunc = cast[ptr QAbstractItemViewenteredSlot](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)

  nimfunc[](slotval1)

proc onentered*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewenteredSlot) =
  var tmp = new QAbstractItemViewenteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_connect_entered(self.h, cast[int](addr tmp[]))

proc viewportEntered*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_viewportEntered(self.h)

type QAbstractItemViewviewportEnteredSlot* = proc()
proc miqt_exec_callback_cQAbstractItemView_viewportEntered(slot: int) {.exportc: "miqt_exec_callback_QAbstractItemView_viewportEntered".} =
  let nimfunc = cast[ptr QAbstractItemViewviewportEnteredSlot](cast[pointer](slot))
  nimfunc[]()

proc onviewportEntered*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewviewportEnteredSlot) =
  var tmp = new QAbstractItemViewviewportEnteredSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_connect_viewportEntered(self.h, cast[int](addr tmp[]))

proc iconSizeChanged*(self: gen_qabstractitemview_types.QAbstractItemView, size: gen_qsize_types.QSize): void =
  fcQAbstractItemView_iconSizeChanged(self.h, size.h)

type QAbstractItemViewiconSizeChangedSlot* = proc(size: gen_qsize_types.QSize)
proc miqt_exec_callback_cQAbstractItemView_iconSizeChanged(slot: int, size: pointer) {.exportc: "miqt_exec_callback_QAbstractItemView_iconSizeChanged".} =
  let nimfunc = cast[ptr QAbstractItemViewiconSizeChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qsize_types.QSize(h: size)

  nimfunc[](slotval1)

proc oniconSizeChanged*(self: gen_qabstractitemview_types.QAbstractItemView, slot: QAbstractItemViewiconSizeChangedSlot) =
  var tmp = new QAbstractItemViewiconSizeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemView_connect_iconSizeChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qabstractitemview_types.QAbstractItemView, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractItemView_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qabstractitemview_types.QAbstractItemView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractItemView_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractitemview_types.QAbstractItemView, s: cstring, c: cstring): string =
  let v_ms = fcQAbstractItemView_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qabstractitemview_types.QAbstractItemView, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQAbstractItemView_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QAbstractItemViewmetaObjectProc* = proc(self: QAbstractItemView): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QAbstractItemViewmetacastProc* = proc(self: QAbstractItemView, param1: cstring): pointer {.raises: [], gcsafe.}
type QAbstractItemViewmetacallProc* = proc(self: QAbstractItemView, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QAbstractItemViewsetModelProc* = proc(self: QAbstractItemView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void {.raises: [], gcsafe.}
type QAbstractItemViewsetSelectionModelProc* = proc(self: QAbstractItemView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void {.raises: [], gcsafe.}
type QAbstractItemViewkeyboardSearchProc* = proc(self: QAbstractItemView, search: string): void {.raises: [], gcsafe.}
type QAbstractItemViewvisualRectProc* = proc(self: QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): gen_qrect_types.QRect {.raises: [], gcsafe.}
type QAbstractItemViewscrollToProc* = proc(self: QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex, hint: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewindexAtProc* = proc(self: QAbstractItemView, point: gen_qpoint_types.QPoint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QAbstractItemViewsizeHintForRowProc* = proc(self: QAbstractItemView, row: cint): cint {.raises: [], gcsafe.}
type QAbstractItemViewsizeHintForColumnProc* = proc(self: QAbstractItemView, column: cint): cint {.raises: [], gcsafe.}
type QAbstractItemViewinputMethodQueryProc* = proc(self: QAbstractItemView, query: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QAbstractItemViewresetProc* = proc(self: QAbstractItemView): void {.raises: [], gcsafe.}
type QAbstractItemViewsetRootIndexProc* = proc(self: QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QAbstractItemViewdoItemsLayoutProc* = proc(self: QAbstractItemView): void {.raises: [], gcsafe.}
type QAbstractItemViewselectAllProc* = proc(self: QAbstractItemView): void {.raises: [], gcsafe.}
type QAbstractItemViewdataChangedProc* = proc(self: QAbstractItemView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void {.raises: [], gcsafe.}
type QAbstractItemViewrowsInsertedProc* = proc(self: QAbstractItemView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewrowsAboutToBeRemovedProc* = proc(self: QAbstractItemView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewselectionChangedProc* = proc(self: QAbstractItemView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void {.raises: [], gcsafe.}
type QAbstractItemViewcurrentChangedProc* = proc(self: QAbstractItemView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QAbstractItemViewupdateEditorDataProc* = proc(self: QAbstractItemView): void {.raises: [], gcsafe.}
type QAbstractItemViewupdateEditorGeometriesProc* = proc(self: QAbstractItemView): void {.raises: [], gcsafe.}
type QAbstractItemViewupdateGeometriesProc* = proc(self: QAbstractItemView): void {.raises: [], gcsafe.}
type QAbstractItemViewverticalScrollbarActionProc* = proc(self: QAbstractItemView, action: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewhorizontalScrollbarActionProc* = proc(self: QAbstractItemView, action: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewverticalScrollbarValueChangedProc* = proc(self: QAbstractItemView, value: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewhorizontalScrollbarValueChangedProc* = proc(self: QAbstractItemView, value: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewcloseEditorProc* = proc(self: QAbstractItemView, editor: gen_qwidget_types.QWidget, hint: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewcommitDataProc* = proc(self: QAbstractItemView, editor: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QAbstractItemVieweditorDestroyedProc* = proc(self: QAbstractItemView, editor: gen_qobject_types.QObject): void {.raises: [], gcsafe.}
type QAbstractItemViewmoveCursorProc* = proc(self: QAbstractItemView, cursorAction: cint, modifiers: cint): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QAbstractItemViewhorizontalOffsetProc* = proc(self: QAbstractItemView): cint {.raises: [], gcsafe.}
type QAbstractItemViewverticalOffsetProc* = proc(self: QAbstractItemView): cint {.raises: [], gcsafe.}
type QAbstractItemViewisIndexHiddenProc* = proc(self: QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QAbstractItemViewsetSelectionProc* = proc(self: QAbstractItemView, rect: gen_qrect_types.QRect, command: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewvisualRegionForSelectionProc* = proc(self: QAbstractItemView, selection: gen_qitemselectionmodel_types.QItemSelection): gen_qregion_types.QRegion {.raises: [], gcsafe.}
type QAbstractItemViewselectedIndexesProc* = proc(self: QAbstractItemView): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QAbstractItemVieweditProc* = proc(self: QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractItemViewselectionCommandProc* = proc(self: QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint {.raises: [], gcsafe.}
type QAbstractItemViewstartDragProc* = proc(self: QAbstractItemView, supportedActions: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewviewOptionsProc* = proc(self: QAbstractItemView): gen_qstyleoption_types.QStyleOptionViewItem {.raises: [], gcsafe.}
type QAbstractItemViewfocusNextPrevChildProc* = proc(self: QAbstractItemView, next: bool): bool {.raises: [], gcsafe.}
type QAbstractItemVieweventProc* = proc(self: QAbstractItemView, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractItemViewviewportEventProc* = proc(self: QAbstractItemView, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractItemViewmousePressEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewmouseMoveEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewmouseReleaseEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewmouseDoubleClickEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QMouseEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewdragEnterEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QDragEnterEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewdragMoveEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QDragMoveEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewdragLeaveEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QDragLeaveEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewdropEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QDropEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewfocusInEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewfocusOutEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QFocusEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewkeyPressEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewresizeEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QResizeEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewtimerEventProc* = proc(self: QAbstractItemView, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewinputMethodEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QInputMethodEvent): void {.raises: [], gcsafe.}
type QAbstractItemVieweventFilterProc* = proc(self: QAbstractItemView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QAbstractItemViewviewportSizeHintProc* = proc(self: QAbstractItemView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractItemViewminimumSizeHintProc* = proc(self: QAbstractItemView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractItemViewsizeHintProc* = proc(self: QAbstractItemView): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QAbstractItemViewsetupViewportProc* = proc(self: QAbstractItemView, viewport: gen_qwidget_types.QWidget): void {.raises: [], gcsafe.}
type QAbstractItemViewpaintEventProc* = proc(self: QAbstractItemView, param1: gen_qevent_types.QPaintEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewwheelEventProc* = proc(self: QAbstractItemView, param1: gen_qevent_types.QWheelEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewcontextMenuEventProc* = proc(self: QAbstractItemView, param1: gen_qevent_types.QContextMenuEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewscrollContentsByProc* = proc(self: QAbstractItemView, dx: cint, dy: cint): void {.raises: [], gcsafe.}
type QAbstractItemViewchangeEventProc* = proc(self: QAbstractItemView, param1: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewdevTypeProc* = proc(self: QAbstractItemView): cint {.raises: [], gcsafe.}
type QAbstractItemViewsetVisibleProc* = proc(self: QAbstractItemView, visible: bool): void {.raises: [], gcsafe.}
type QAbstractItemViewheightForWidthProc* = proc(self: QAbstractItemView, param1: cint): cint {.raises: [], gcsafe.}
type QAbstractItemViewhasHeightForWidthProc* = proc(self: QAbstractItemView): bool {.raises: [], gcsafe.}
type QAbstractItemViewpaintEngineProc* = proc(self: QAbstractItemView): gen_qpaintengine_types.QPaintEngine {.raises: [], gcsafe.}
type QAbstractItemViewkeyReleaseEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QKeyEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewenterEventProc* = proc(self: QAbstractItemView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewleaveEventProc* = proc(self: QAbstractItemView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewmoveEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QMoveEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewcloseEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QCloseEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewtabletEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QTabletEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewactionEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QActionEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewshowEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QShowEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewhideEventProc* = proc(self: QAbstractItemView, event: gen_qevent_types.QHideEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewnativeEventProc* = proc(self: QAbstractItemView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool {.raises: [], gcsafe.}
type QAbstractItemViewmetricProc* = proc(self: QAbstractItemView, param1: cint): cint {.raises: [], gcsafe.}
type QAbstractItemViewinitPainterProc* = proc(self: QAbstractItemView, painter: gen_qpainter_types.QPainter): void {.raises: [], gcsafe.}
type QAbstractItemViewredirectedProc* = proc(self: QAbstractItemView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice {.raises: [], gcsafe.}
type QAbstractItemViewsharedPainterProc* = proc(self: QAbstractItemView): gen_qpainter_types.QPainter {.raises: [], gcsafe.}
type QAbstractItemViewchildEventProc* = proc(self: QAbstractItemView, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewcustomEventProc* = proc(self: QAbstractItemView, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QAbstractItemViewconnectNotifyProc* = proc(self: QAbstractItemView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractItemViewdisconnectNotifyProc* = proc(self: QAbstractItemView, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QAbstractItemViewVTable* = object
  vtbl: cQAbstractItemViewVTable
  metaObject*: QAbstractItemViewmetaObjectProc
  metacast*: QAbstractItemViewmetacastProc
  metacall*: QAbstractItemViewmetacallProc
  setModel*: QAbstractItemViewsetModelProc
  setSelectionModel*: QAbstractItemViewsetSelectionModelProc
  keyboardSearch*: QAbstractItemViewkeyboardSearchProc
  visualRect*: QAbstractItemViewvisualRectProc
  scrollTo*: QAbstractItemViewscrollToProc
  indexAt*: QAbstractItemViewindexAtProc
  sizeHintForRow*: QAbstractItemViewsizeHintForRowProc
  sizeHintForColumn*: QAbstractItemViewsizeHintForColumnProc
  inputMethodQuery*: QAbstractItemViewinputMethodQueryProc
  reset*: QAbstractItemViewresetProc
  setRootIndex*: QAbstractItemViewsetRootIndexProc
  doItemsLayout*: QAbstractItemViewdoItemsLayoutProc
  selectAll*: QAbstractItemViewselectAllProc
  dataChanged*: QAbstractItemViewdataChangedProc
  rowsInserted*: QAbstractItemViewrowsInsertedProc
  rowsAboutToBeRemoved*: QAbstractItemViewrowsAboutToBeRemovedProc
  selectionChanged*: QAbstractItemViewselectionChangedProc
  currentChanged*: QAbstractItemViewcurrentChangedProc
  updateEditorData*: QAbstractItemViewupdateEditorDataProc
  updateEditorGeometries*: QAbstractItemViewupdateEditorGeometriesProc
  updateGeometries*: QAbstractItemViewupdateGeometriesProc
  verticalScrollbarAction*: QAbstractItemViewverticalScrollbarActionProc
  horizontalScrollbarAction*: QAbstractItemViewhorizontalScrollbarActionProc
  verticalScrollbarValueChanged*: QAbstractItemViewverticalScrollbarValueChangedProc
  horizontalScrollbarValueChanged*: QAbstractItemViewhorizontalScrollbarValueChangedProc
  closeEditor*: QAbstractItemViewcloseEditorProc
  commitData*: QAbstractItemViewcommitDataProc
  editorDestroyed*: QAbstractItemVieweditorDestroyedProc
  moveCursor*: QAbstractItemViewmoveCursorProc
  horizontalOffset*: QAbstractItemViewhorizontalOffsetProc
  verticalOffset*: QAbstractItemViewverticalOffsetProc
  isIndexHidden*: QAbstractItemViewisIndexHiddenProc
  setSelection*: QAbstractItemViewsetSelectionProc
  visualRegionForSelection*: QAbstractItemViewvisualRegionForSelectionProc
  selectedIndexes*: QAbstractItemViewselectedIndexesProc
  edit*: QAbstractItemVieweditProc
  selectionCommand*: QAbstractItemViewselectionCommandProc
  startDrag*: QAbstractItemViewstartDragProc
  viewOptions*: QAbstractItemViewviewOptionsProc
  focusNextPrevChild*: QAbstractItemViewfocusNextPrevChildProc
  event*: QAbstractItemVieweventProc
  viewportEvent*: QAbstractItemViewviewportEventProc
  mousePressEvent*: QAbstractItemViewmousePressEventProc
  mouseMoveEvent*: QAbstractItemViewmouseMoveEventProc
  mouseReleaseEvent*: QAbstractItemViewmouseReleaseEventProc
  mouseDoubleClickEvent*: QAbstractItemViewmouseDoubleClickEventProc
  dragEnterEvent*: QAbstractItemViewdragEnterEventProc
  dragMoveEvent*: QAbstractItemViewdragMoveEventProc
  dragLeaveEvent*: QAbstractItemViewdragLeaveEventProc
  dropEvent*: QAbstractItemViewdropEventProc
  focusInEvent*: QAbstractItemViewfocusInEventProc
  focusOutEvent*: QAbstractItemViewfocusOutEventProc
  keyPressEvent*: QAbstractItemViewkeyPressEventProc
  resizeEvent*: QAbstractItemViewresizeEventProc
  timerEvent*: QAbstractItemViewtimerEventProc
  inputMethodEvent*: QAbstractItemViewinputMethodEventProc
  eventFilter*: QAbstractItemVieweventFilterProc
  viewportSizeHint*: QAbstractItemViewviewportSizeHintProc
  minimumSizeHint*: QAbstractItemViewminimumSizeHintProc
  sizeHint*: QAbstractItemViewsizeHintProc
  setupViewport*: QAbstractItemViewsetupViewportProc
  paintEvent*: QAbstractItemViewpaintEventProc
  wheelEvent*: QAbstractItemViewwheelEventProc
  contextMenuEvent*: QAbstractItemViewcontextMenuEventProc
  scrollContentsBy*: QAbstractItemViewscrollContentsByProc
  changeEvent*: QAbstractItemViewchangeEventProc
  devType*: QAbstractItemViewdevTypeProc
  setVisible*: QAbstractItemViewsetVisibleProc
  heightForWidth*: QAbstractItemViewheightForWidthProc
  hasHeightForWidth*: QAbstractItemViewhasHeightForWidthProc
  paintEngine*: QAbstractItemViewpaintEngineProc
  keyReleaseEvent*: QAbstractItemViewkeyReleaseEventProc
  enterEvent*: QAbstractItemViewenterEventProc
  leaveEvent*: QAbstractItemViewleaveEventProc
  moveEvent*: QAbstractItemViewmoveEventProc
  closeEvent*: QAbstractItemViewcloseEventProc
  tabletEvent*: QAbstractItemViewtabletEventProc
  actionEvent*: QAbstractItemViewactionEventProc
  showEvent*: QAbstractItemViewshowEventProc
  hideEvent*: QAbstractItemViewhideEventProc
  nativeEvent*: QAbstractItemViewnativeEventProc
  metric*: QAbstractItemViewmetricProc
  initPainter*: QAbstractItemViewinitPainterProc
  redirected*: QAbstractItemViewredirectedProc
  sharedPainter*: QAbstractItemViewsharedPainterProc
  childEvent*: QAbstractItemViewchildEventProc
  customEvent*: QAbstractItemViewcustomEventProc
  connectNotify*: QAbstractItemViewconnectNotifyProc
  disconnectNotify*: QAbstractItemViewdisconnectNotifyProc
proc QAbstractItemViewmetaObject*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractItemView_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQAbstractItemView_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QAbstractItemViewmetacast*(self: gen_qabstractitemview_types.QAbstractItemView, param1: cstring): pointer =
  fcQAbstractItemView_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQAbstractItemView_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QAbstractItemViewmetacall*(self: gen_qabstractitemview_types.QAbstractItemView, param1: cint, param2: cint, param3: pointer): cint =
  fcQAbstractItemView_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQAbstractItemView_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractItemViewsetModel*(self: gen_qabstractitemview_types.QAbstractItemView, model: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQAbstractItemView_virtualbase_setModel(self.h, model.h)

proc miqt_exec_callback_cQAbstractItemView_setModel(vtbl: pointer, self: pointer, model: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: model)
  vtbl[].setModel(self, slotval1)

proc QAbstractItemViewsetSelectionModel*(self: gen_qabstractitemview_types.QAbstractItemView, selectionModel: gen_qitemselectionmodel_types.QItemSelectionModel): void =
  fcQAbstractItemView_virtualbase_setSelectionModel(self.h, selectionModel.h)

proc miqt_exec_callback_cQAbstractItemView_setSelectionModel(vtbl: pointer, self: pointer, selectionModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelectionModel(h: selectionModel)
  vtbl[].setSelectionModel(self, slotval1)

proc QAbstractItemViewkeyboardSearch*(self: gen_qabstractitemview_types.QAbstractItemView, search: string): void =
  fcQAbstractItemView_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

proc miqt_exec_callback_cQAbstractItemView_keyboardSearch(vtbl: pointer, self: pointer, search: struct_miqt_string): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret
  vtbl[].keyboardSearch(self, slotval1)

proc miqt_exec_callback_cQAbstractItemView_visualRect(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let virtualReturn = vtbl[].visualRect(self, slotval1)
  virtualReturn.h

proc miqt_exec_callback_cQAbstractItemView_scrollTo(vtbl: pointer, self: pointer, index: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = cint(hint)
  vtbl[].scrollTo(self, slotval1, slotval2)

proc miqt_exec_callback_cQAbstractItemView_indexAt(vtbl: pointer, self: pointer, point: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: point)
  let virtualReturn = vtbl[].indexAt(self, slotval1)
  virtualReturn.h

proc QAbstractItemViewsizeHintForRow*(self: gen_qabstractitemview_types.QAbstractItemView, row: cint): cint =
  fcQAbstractItemView_virtualbase_sizeHintForRow(self.h, row)

proc miqt_exec_callback_cQAbstractItemView_sizeHintForRow(vtbl: pointer, self: pointer, row: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = row
  let virtualReturn = vtbl[].sizeHintForRow(self, slotval1)
  virtualReturn

proc QAbstractItemViewsizeHintForColumn*(self: gen_qabstractitemview_types.QAbstractItemView, column: cint): cint =
  fcQAbstractItemView_virtualbase_sizeHintForColumn(self.h, column)

proc miqt_exec_callback_cQAbstractItemView_sizeHintForColumn(vtbl: pointer, self: pointer, column: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = column
  let virtualReturn = vtbl[].sizeHintForColumn(self, slotval1)
  virtualReturn

proc QAbstractItemViewinputMethodQuery*(self: gen_qabstractitemview_types.QAbstractItemView, query: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQAbstractItemView_virtualbase_inputMethodQuery(self.h, cint(query)))

proc miqt_exec_callback_cQAbstractItemView_inputMethodQuery(vtbl: pointer, self: pointer, query: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = cint(query)
  let virtualReturn = vtbl[].inputMethodQuery(self, slotval1)
  virtualReturn.h

proc QAbstractItemViewreset*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_virtualbase_reset(self.h)

proc miqt_exec_callback_cQAbstractItemView_reset(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  vtbl[].reset(self)

proc QAbstractItemViewsetRootIndex*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_virtualbase_setRootIndex(self.h, index.h)

proc miqt_exec_callback_cQAbstractItemView_setRootIndex(vtbl: pointer, self: pointer, index: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  vtbl[].setRootIndex(self, slotval1)

proc QAbstractItemViewdoItemsLayout*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_virtualbase_doItemsLayout(self.h)

proc miqt_exec_callback_cQAbstractItemView_doItemsLayout(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  vtbl[].doItemsLayout(self)

proc QAbstractItemViewselectAll*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_virtualbase_selectAll(self.h)

proc miqt_exec_callback_cQAbstractItemView_selectAll(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  vtbl[].selectAll(self)

proc QAbstractItemViewdataChanged*(self: gen_qabstractitemview_types.QAbstractItemView, topLeft: gen_qabstractitemmodel_types.QModelIndex, bottomRight: gen_qabstractitemmodel_types.QModelIndex, roles: seq[cint]): void =
  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fcQAbstractItemView_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

proc miqt_exec_callback_cQAbstractItemView_dataChanged(vtbl: pointer, self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: topLeft)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: bottomRight)
  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret
  vtbl[].dataChanged(self, slotval1, slotval2, slotval3)

proc QAbstractItemViewrowsInserted*(self: gen_qabstractitemview_types.QAbstractItemView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQAbstractItemView_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

proc miqt_exec_callback_cQAbstractItemView_rowsInserted(vtbl: pointer, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsInserted(self, slotval1, slotval2, slotval3)

proc QAbstractItemViewrowsAboutToBeRemoved*(self: gen_qabstractitemview_types.QAbstractItemView, parent: gen_qabstractitemmodel_types.QModelIndex, start: cint, endVal: cint): void =
  fcQAbstractItemView_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

proc miqt_exec_callback_cQAbstractItemView_rowsAboutToBeRemoved(vtbl: pointer, self: pointer, parent: pointer, start: cint, endVal: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let slotval2 = start
  let slotval3 = endVal
  vtbl[].rowsAboutToBeRemoved(self, slotval1, slotval2, slotval3)

proc QAbstractItemViewselectionChanged*(self: gen_qabstractitemview_types.QAbstractItemView, selected: gen_qitemselectionmodel_types.QItemSelection, deselected: gen_qitemselectionmodel_types.QItemSelection): void =
  fcQAbstractItemView_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

proc miqt_exec_callback_cQAbstractItemView_selectionChanged(vtbl: pointer, self: pointer, selected: pointer, deselected: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selected)
  let slotval2 = gen_qitemselectionmodel_types.QItemSelection(h: deselected)
  vtbl[].selectionChanged(self, slotval1, slotval2)

proc QAbstractItemViewcurrentChanged*(self: gen_qabstractitemview_types.QAbstractItemView, current: gen_qabstractitemmodel_types.QModelIndex, previous: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQAbstractItemView_virtualbase_currentChanged(self.h, current.h, previous.h)

proc miqt_exec_callback_cQAbstractItemView_currentChanged(vtbl: pointer, self: pointer, current: pointer, previous: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: current)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: previous)
  vtbl[].currentChanged(self, slotval1, slotval2)

proc QAbstractItemViewupdateEditorData*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_virtualbase_updateEditorData(self.h)

proc miqt_exec_callback_cQAbstractItemView_updateEditorData(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  vtbl[].updateEditorData(self)

proc QAbstractItemViewupdateEditorGeometries*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_virtualbase_updateEditorGeometries(self.h)

proc miqt_exec_callback_cQAbstractItemView_updateEditorGeometries(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  vtbl[].updateEditorGeometries(self)

proc QAbstractItemViewupdateGeometries*(self: gen_qabstractitemview_types.QAbstractItemView, ): void =
  fcQAbstractItemView_virtualbase_updateGeometries(self.h)

proc miqt_exec_callback_cQAbstractItemView_updateGeometries(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  vtbl[].updateGeometries(self)

proc QAbstractItemViewverticalScrollbarAction*(self: gen_qabstractitemview_types.QAbstractItemView, action: cint): void =
  fcQAbstractItemView_virtualbase_verticalScrollbarAction(self.h, action)

proc miqt_exec_callback_cQAbstractItemView_verticalScrollbarAction(vtbl: pointer, self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = action
  vtbl[].verticalScrollbarAction(self, slotval1)

proc QAbstractItemViewhorizontalScrollbarAction*(self: gen_qabstractitemview_types.QAbstractItemView, action: cint): void =
  fcQAbstractItemView_virtualbase_horizontalScrollbarAction(self.h, action)

proc miqt_exec_callback_cQAbstractItemView_horizontalScrollbarAction(vtbl: pointer, self: pointer, action: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = action
  vtbl[].horizontalScrollbarAction(self, slotval1)

proc QAbstractItemViewverticalScrollbarValueChanged*(self: gen_qabstractitemview_types.QAbstractItemView, value: cint): void =
  fcQAbstractItemView_virtualbase_verticalScrollbarValueChanged(self.h, value)

proc miqt_exec_callback_cQAbstractItemView_verticalScrollbarValueChanged(vtbl: pointer, self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = value
  vtbl[].verticalScrollbarValueChanged(self, slotval1)

proc QAbstractItemViewhorizontalScrollbarValueChanged*(self: gen_qabstractitemview_types.QAbstractItemView, value: cint): void =
  fcQAbstractItemView_virtualbase_horizontalScrollbarValueChanged(self.h, value)

proc miqt_exec_callback_cQAbstractItemView_horizontalScrollbarValueChanged(vtbl: pointer, self: pointer, value: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = value
  vtbl[].horizontalScrollbarValueChanged(self, slotval1)

proc QAbstractItemViewcloseEditor*(self: gen_qabstractitemview_types.QAbstractItemView, editor: gen_qwidget_types.QWidget, hint: cint): void =
  fcQAbstractItemView_virtualbase_closeEditor(self.h, editor.h, cint(hint))

proc miqt_exec_callback_cQAbstractItemView_closeEditor(vtbl: pointer, self: pointer, editor: pointer, hint: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  let slotval2 = cint(hint)
  vtbl[].closeEditor(self, slotval1, slotval2)

proc QAbstractItemViewcommitData*(self: gen_qabstractitemview_types.QAbstractItemView, editor: gen_qwidget_types.QWidget): void =
  fcQAbstractItemView_virtualbase_commitData(self.h, editor.h)

proc miqt_exec_callback_cQAbstractItemView_commitData(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: editor)
  vtbl[].commitData(self, slotval1)

proc QAbstractItemVieweditorDestroyed*(self: gen_qabstractitemview_types.QAbstractItemView, editor: gen_qobject_types.QObject): void =
  fcQAbstractItemView_virtualbase_editorDestroyed(self.h, editor.h)

proc miqt_exec_callback_cQAbstractItemView_editorDestroyed(vtbl: pointer, self: pointer, editor: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: editor)
  vtbl[].editorDestroyed(self, slotval1)

proc miqt_exec_callback_cQAbstractItemView_moveCursor(vtbl: pointer, self: pointer, cursorAction: cint, modifiers: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = cint(cursorAction)
  let slotval2 = cint(modifiers)
  let virtualReturn = vtbl[].moveCursor(self, slotval1, slotval2)
  virtualReturn.h

proc miqt_exec_callback_cQAbstractItemView_horizontalOffset(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let virtualReturn = vtbl[].horizontalOffset(self)
  virtualReturn

proc miqt_exec_callback_cQAbstractItemView_verticalOffset(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let virtualReturn = vtbl[].verticalOffset(self)
  virtualReturn

proc miqt_exec_callback_cQAbstractItemView_isIndexHidden(vtbl: pointer, self: pointer, index: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let virtualReturn = vtbl[].isIndexHidden(self, slotval1)
  virtualReturn

proc miqt_exec_callback_cQAbstractItemView_setSelection(vtbl: pointer, self: pointer, rect: pointer, command: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qrect_types.QRect(h: rect)
  let slotval2 = cint(command)
  vtbl[].setSelection(self, slotval1, slotval2)

proc miqt_exec_callback_cQAbstractItemView_visualRegionForSelection(vtbl: pointer, self: pointer, selection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: selection)
  let virtualReturn = vtbl[].visualRegionForSelection(self, slotval1)
  virtualReturn.h

proc QAbstractItemViewselectedIndexes*(self: gen_qabstractitemview_types.QAbstractItemView, ): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQAbstractItemView_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc miqt_exec_callback_cQAbstractItemView_selectedIndexes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let virtualReturn = vtbl[].selectedIndexes(self)
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QAbstractItemViewedit*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex, trigger: cint, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractItemView_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

proc miqt_exec_callback_cQAbstractItemView_edit2(vtbl: pointer, self: pointer, index: pointer, trigger: cint, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = cint(trigger)
  let slotval3 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].edit(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractItemViewselectionCommand*(self: gen_qabstractitemview_types.QAbstractItemView, index: gen_qabstractitemmodel_types.QModelIndex, event: gen_qcoreevent_types.QEvent): cint =
  cint(fcQAbstractItemView_virtualbase_selectionCommand(self.h, index.h, event.h))

proc miqt_exec_callback_cQAbstractItemView_selectionCommand(vtbl: pointer, self: pointer, index: pointer, event: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].selectionCommand(self, slotval1, slotval2)
  cint(virtualReturn)

proc QAbstractItemViewstartDrag*(self: gen_qabstractitemview_types.QAbstractItemView, supportedActions: cint): void =
  fcQAbstractItemView_virtualbase_startDrag(self.h, cint(supportedActions))

proc miqt_exec_callback_cQAbstractItemView_startDrag(vtbl: pointer, self: pointer, supportedActions: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = cint(supportedActions)
  vtbl[].startDrag(self, slotval1)

proc QAbstractItemViewviewOptions*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qstyleoption_types.QStyleOptionViewItem =
  gen_qstyleoption_types.QStyleOptionViewItem(h: fcQAbstractItemView_virtualbase_viewOptions(self.h))

proc miqt_exec_callback_cQAbstractItemView_viewOptions(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let virtualReturn = vtbl[].viewOptions(self)
  virtualReturn.h

proc QAbstractItemViewfocusNextPrevChild*(self: gen_qabstractitemview_types.QAbstractItemView, next: bool): bool =
  fcQAbstractItemView_virtualbase_focusNextPrevChild(self.h, next)

proc miqt_exec_callback_cQAbstractItemView_focusNextPrevChild(vtbl: pointer, self: pointer, next: bool): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = next
  let virtualReturn = vtbl[].focusNextPrevChild(self, slotval1)
  virtualReturn

proc QAbstractItemViewevent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractItemView_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QAbstractItemViewviewportEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractItemView_virtualbase_viewportEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_viewportEvent(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].viewportEvent(self, slotval1)
  virtualReturn

proc QAbstractItemViewmousePressEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractItemView_virtualbase_mousePressEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_mousePressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mousePressEvent(self, slotval1)

proc QAbstractItemViewmouseMoveEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractItemView_virtualbase_mouseMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_mouseMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseMoveEvent(self, slotval1)

proc QAbstractItemViewmouseReleaseEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractItemView_virtualbase_mouseReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_mouseReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseReleaseEvent(self, slotval1)

proc QAbstractItemViewmouseDoubleClickEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QMouseEvent): void =
  fcQAbstractItemView_virtualbase_mouseDoubleClickEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_mouseDoubleClickEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QMouseEvent(h: event)
  vtbl[].mouseDoubleClickEvent(self, slotval1)

proc QAbstractItemViewdragEnterEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QDragEnterEvent): void =
  fcQAbstractItemView_virtualbase_dragEnterEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_dragEnterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QDragEnterEvent(h: event)
  vtbl[].dragEnterEvent(self, slotval1)

proc QAbstractItemViewdragMoveEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QDragMoveEvent): void =
  fcQAbstractItemView_virtualbase_dragMoveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_dragMoveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QDragMoveEvent(h: event)
  vtbl[].dragMoveEvent(self, slotval1)

proc QAbstractItemViewdragLeaveEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QDragLeaveEvent): void =
  fcQAbstractItemView_virtualbase_dragLeaveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_dragLeaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QDragLeaveEvent(h: event)
  vtbl[].dragLeaveEvent(self, slotval1)

proc QAbstractItemViewdropEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QDropEvent): void =
  fcQAbstractItemView_virtualbase_dropEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_dropEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QDropEvent(h: event)
  vtbl[].dropEvent(self, slotval1)

proc QAbstractItemViewfocusInEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractItemView_virtualbase_focusInEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_focusInEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusInEvent(self, slotval1)

proc QAbstractItemViewfocusOutEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QFocusEvent): void =
  fcQAbstractItemView_virtualbase_focusOutEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_focusOutEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QFocusEvent(h: event)
  vtbl[].focusOutEvent(self, slotval1)

proc QAbstractItemViewkeyPressEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QKeyEvent): void =
  fcQAbstractItemView_virtualbase_keyPressEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_keyPressEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyPressEvent(self, slotval1)

proc QAbstractItemViewresizeEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QResizeEvent): void =
  fcQAbstractItemView_virtualbase_resizeEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_resizeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QResizeEvent(h: event)
  vtbl[].resizeEvent(self, slotval1)

proc QAbstractItemViewtimerEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQAbstractItemView_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QAbstractItemViewinputMethodEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QInputMethodEvent): void =
  fcQAbstractItemView_virtualbase_inputMethodEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_inputMethodEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QInputMethodEvent(h: event)
  vtbl[].inputMethodEvent(self, slotval1)

proc QAbstractItemVieweventFilter*(self: gen_qabstractitemview_types.QAbstractItemView, objectVal: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQAbstractItemView_virtualbase_eventFilter(self.h, objectVal.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_eventFilter(vtbl: pointer, self: pointer, objectVal: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qobject_types.QObject(h: objectVal)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QAbstractItemViewviewportSizeHint*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractItemView_virtualbase_viewportSizeHint(self.h))

proc miqt_exec_callback_cQAbstractItemView_viewportSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let virtualReturn = vtbl[].viewportSizeHint(self)
  virtualReturn.h

proc QAbstractItemViewminimumSizeHint*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractItemView_virtualbase_minimumSizeHint(self.h))

proc miqt_exec_callback_cQAbstractItemView_minimumSizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let virtualReturn = vtbl[].minimumSizeHint(self)
  virtualReturn.h

proc QAbstractItemViewsizeHint*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQAbstractItemView_virtualbase_sizeHint(self.h))

proc miqt_exec_callback_cQAbstractItemView_sizeHint(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let virtualReturn = vtbl[].sizeHint(self)
  virtualReturn.h

proc QAbstractItemViewsetupViewport*(self: gen_qabstractitemview_types.QAbstractItemView, viewport: gen_qwidget_types.QWidget): void =
  fcQAbstractItemView_virtualbase_setupViewport(self.h, viewport.h)

proc miqt_exec_callback_cQAbstractItemView_setupViewport(vtbl: pointer, self: pointer, viewport: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qwidget_types.QWidget(h: viewport)
  vtbl[].setupViewport(self, slotval1)

proc QAbstractItemViewpaintEvent*(self: gen_qabstractitemview_types.QAbstractItemView, param1: gen_qevent_types.QPaintEvent): void =
  fcQAbstractItemView_virtualbase_paintEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractItemView_paintEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QPaintEvent(h: param1)
  vtbl[].paintEvent(self, slotval1)

proc QAbstractItemViewwheelEvent*(self: gen_qabstractitemview_types.QAbstractItemView, param1: gen_qevent_types.QWheelEvent): void =
  fcQAbstractItemView_virtualbase_wheelEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractItemView_wheelEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QWheelEvent(h: param1)
  vtbl[].wheelEvent(self, slotval1)

proc QAbstractItemViewcontextMenuEvent*(self: gen_qabstractitemview_types.QAbstractItemView, param1: gen_qevent_types.QContextMenuEvent): void =
  fcQAbstractItemView_virtualbase_contextMenuEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractItemView_contextMenuEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QContextMenuEvent(h: param1)
  vtbl[].contextMenuEvent(self, slotval1)

proc QAbstractItemViewscrollContentsBy*(self: gen_qabstractitemview_types.QAbstractItemView, dx: cint, dy: cint): void =
  fcQAbstractItemView_virtualbase_scrollContentsBy(self.h, dx, dy)

proc miqt_exec_callback_cQAbstractItemView_scrollContentsBy(vtbl: pointer, self: pointer, dx: cint, dy: cint): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = dx
  let slotval2 = dy
  vtbl[].scrollContentsBy(self, slotval1, slotval2)

proc QAbstractItemViewchangeEvent*(self: gen_qabstractitemview_types.QAbstractItemView, param1: gen_qcoreevent_types.QEvent): void =
  fcQAbstractItemView_virtualbase_changeEvent(self.h, param1.h)

proc miqt_exec_callback_cQAbstractItemView_changeEvent(vtbl: pointer, self: pointer, param1: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: param1)
  vtbl[].changeEvent(self, slotval1)

proc QAbstractItemViewdevType*(self: gen_qabstractitemview_types.QAbstractItemView, ): cint =
  fcQAbstractItemView_virtualbase_devType(self.h)

proc miqt_exec_callback_cQAbstractItemView_devType(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let virtualReturn = vtbl[].devType(self)
  virtualReturn

proc QAbstractItemViewsetVisible*(self: gen_qabstractitemview_types.QAbstractItemView, visible: bool): void =
  fcQAbstractItemView_virtualbase_setVisible(self.h, visible)

proc miqt_exec_callback_cQAbstractItemView_setVisible(vtbl: pointer, self: pointer, visible: bool): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = visible
  vtbl[].setVisible(self, slotval1)

proc QAbstractItemViewheightForWidth*(self: gen_qabstractitemview_types.QAbstractItemView, param1: cint): cint =
  fcQAbstractItemView_virtualbase_heightForWidth(self.h, param1)

proc miqt_exec_callback_cQAbstractItemView_heightForWidth(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = param1
  let virtualReturn = vtbl[].heightForWidth(self, slotval1)
  virtualReturn

proc QAbstractItemViewhasHeightForWidth*(self: gen_qabstractitemview_types.QAbstractItemView, ): bool =
  fcQAbstractItemView_virtualbase_hasHeightForWidth(self.h)

proc miqt_exec_callback_cQAbstractItemView_hasHeightForWidth(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let virtualReturn = vtbl[].hasHeightForWidth(self)
  virtualReturn

proc QAbstractItemViewpaintEngine*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qpaintengine_types.QPaintEngine =
  gen_qpaintengine_types.QPaintEngine(h: fcQAbstractItemView_virtualbase_paintEngine(self.h))

proc miqt_exec_callback_cQAbstractItemView_paintEngine(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let virtualReturn = vtbl[].paintEngine(self)
  virtualReturn.h

proc QAbstractItemViewkeyReleaseEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QKeyEvent): void =
  fcQAbstractItemView_virtualbase_keyReleaseEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_keyReleaseEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QKeyEvent(h: event)
  vtbl[].keyReleaseEvent(self, slotval1)

proc QAbstractItemViewenterEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractItemView_virtualbase_enterEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_enterEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].enterEvent(self, slotval1)

proc QAbstractItemViewleaveEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractItemView_virtualbase_leaveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_leaveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].leaveEvent(self, slotval1)

proc QAbstractItemViewmoveEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QMoveEvent): void =
  fcQAbstractItemView_virtualbase_moveEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_moveEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QMoveEvent(h: event)
  vtbl[].moveEvent(self, slotval1)

proc QAbstractItemViewcloseEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QCloseEvent): void =
  fcQAbstractItemView_virtualbase_closeEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_closeEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QCloseEvent(h: event)
  vtbl[].closeEvent(self, slotval1)

proc QAbstractItemViewtabletEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QTabletEvent): void =
  fcQAbstractItemView_virtualbase_tabletEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_tabletEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QTabletEvent(h: event)
  vtbl[].tabletEvent(self, slotval1)

proc QAbstractItemViewactionEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QActionEvent): void =
  fcQAbstractItemView_virtualbase_actionEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_actionEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QActionEvent(h: event)
  vtbl[].actionEvent(self, slotval1)

proc QAbstractItemViewshowEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QShowEvent): void =
  fcQAbstractItemView_virtualbase_showEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_showEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QShowEvent(h: event)
  vtbl[].showEvent(self, slotval1)

proc QAbstractItemViewhideEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qevent_types.QHideEvent): void =
  fcQAbstractItemView_virtualbase_hideEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_hideEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qevent_types.QHideEvent(h: event)
  vtbl[].hideEvent(self, slotval1)

proc QAbstractItemViewnativeEvent*(self: gen_qabstractitemview_types.QAbstractItemView, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =
  fcQAbstractItemView_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

proc miqt_exec_callback_cQAbstractItemView_nativeEvent(vtbl: pointer, self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret
  let slotval2 = message
  let slotval3 = resultVal
  let virtualReturn = vtbl[].nativeEvent(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QAbstractItemViewmetric*(self: gen_qabstractitemview_types.QAbstractItemView, param1: cint): cint =
  fcQAbstractItemView_virtualbase_metric(self.h, cint(param1))

proc miqt_exec_callback_cQAbstractItemView_metric(vtbl: pointer, self: pointer, param1: cint): cint {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = cint(param1)
  let virtualReturn = vtbl[].metric(self, slotval1)
  virtualReturn

proc QAbstractItemViewinitPainter*(self: gen_qabstractitemview_types.QAbstractItemView, painter: gen_qpainter_types.QPainter): void =
  fcQAbstractItemView_virtualbase_initPainter(self.h, painter.h)

proc miqt_exec_callback_cQAbstractItemView_initPainter(vtbl: pointer, self: pointer, painter: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qpainter_types.QPainter(h: painter)
  vtbl[].initPainter(self, slotval1)

proc QAbstractItemViewredirected*(self: gen_qabstractitemview_types.QAbstractItemView, offset: gen_qpoint_types.QPoint): gen_qpaintdevice_types.QPaintDevice =
  gen_qpaintdevice_types.QPaintDevice(h: fcQAbstractItemView_virtualbase_redirected(self.h, offset.h))

proc miqt_exec_callback_cQAbstractItemView_redirected(vtbl: pointer, self: pointer, offset: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qpoint_types.QPoint(h: offset)
  let virtualReturn = vtbl[].redirected(self, slotval1)
  virtualReturn.h

proc QAbstractItemViewsharedPainter*(self: gen_qabstractitemview_types.QAbstractItemView, ): gen_qpainter_types.QPainter =
  gen_qpainter_types.QPainter(h: fcQAbstractItemView_virtualbase_sharedPainter(self.h))

proc miqt_exec_callback_cQAbstractItemView_sharedPainter(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let virtualReturn = vtbl[].sharedPainter(self)
  virtualReturn.h

proc QAbstractItemViewchildEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qcoreevent_types.QChildEvent): void =
  fcQAbstractItemView_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QAbstractItemViewcustomEvent*(self: gen_qabstractitemview_types.QAbstractItemView, event: gen_qcoreevent_types.QEvent): void =
  fcQAbstractItemView_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQAbstractItemView_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QAbstractItemViewconnectNotify*(self: gen_qabstractitemview_types.QAbstractItemView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractItemView_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractItemView_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QAbstractItemViewdisconnectNotify*(self: gen_qabstractitemview_types.QAbstractItemView, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQAbstractItemView_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQAbstractItemView_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QAbstractItemViewVTable](vtbl)
  let self = QAbstractItemView(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qabstractitemview_types.QAbstractItemView,
    parent: gen_qwidget_types.QWidget,
    vtbl: ref QAbstractItemViewVTable = nil): gen_qabstractitemview_types.QAbstractItemView =
  let vtbl = if vtbl == nil: new QAbstractItemViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractItemViewVTable, _: ptr cQAbstractItemView) {.cdecl.} =
    let vtbl = cast[ref QAbstractItemViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractItemView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractItemView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractItemView_metacall
  if not isNil(vtbl.setModel):
    vtbl[].vtbl.setModel = miqt_exec_callback_cQAbstractItemView_setModel
  if not isNil(vtbl.setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQAbstractItemView_setSelectionModel
  if not isNil(vtbl.keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQAbstractItemView_keyboardSearch
  if not isNil(vtbl.visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQAbstractItemView_visualRect
  if not isNil(vtbl.scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQAbstractItemView_scrollTo
  if not isNil(vtbl.indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQAbstractItemView_indexAt
  if not isNil(vtbl.sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQAbstractItemView_sizeHintForRow
  if not isNil(vtbl.sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQAbstractItemView_sizeHintForColumn
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQAbstractItemView_inputMethodQuery
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQAbstractItemView_reset
  if not isNil(vtbl.setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQAbstractItemView_setRootIndex
  if not isNil(vtbl.doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQAbstractItemView_doItemsLayout
  if not isNil(vtbl.selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQAbstractItemView_selectAll
  if not isNil(vtbl.dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQAbstractItemView_dataChanged
  if not isNil(vtbl.rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQAbstractItemView_rowsInserted
  if not isNil(vtbl.rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQAbstractItemView_rowsAboutToBeRemoved
  if not isNil(vtbl.selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQAbstractItemView_selectionChanged
  if not isNil(vtbl.currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQAbstractItemView_currentChanged
  if not isNil(vtbl.updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQAbstractItemView_updateEditorData
  if not isNil(vtbl.updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQAbstractItemView_updateEditorGeometries
  if not isNil(vtbl.updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQAbstractItemView_updateGeometries
  if not isNil(vtbl.verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQAbstractItemView_verticalScrollbarAction
  if not isNil(vtbl.horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQAbstractItemView_horizontalScrollbarAction
  if not isNil(vtbl.verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQAbstractItemView_verticalScrollbarValueChanged
  if not isNil(vtbl.horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQAbstractItemView_horizontalScrollbarValueChanged
  if not isNil(vtbl.closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQAbstractItemView_closeEditor
  if not isNil(vtbl.commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQAbstractItemView_commitData
  if not isNil(vtbl.editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQAbstractItemView_editorDestroyed
  if not isNil(vtbl.moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQAbstractItemView_moveCursor
  if not isNil(vtbl.horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQAbstractItemView_horizontalOffset
  if not isNil(vtbl.verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQAbstractItemView_verticalOffset
  if not isNil(vtbl.isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQAbstractItemView_isIndexHidden
  if not isNil(vtbl.setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQAbstractItemView_setSelection
  if not isNil(vtbl.visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQAbstractItemView_visualRegionForSelection
  if not isNil(vtbl.selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQAbstractItemView_selectedIndexes
  if not isNil(vtbl.edit):
    vtbl[].vtbl.edit = miqt_exec_callback_cQAbstractItemView_edit2
  if not isNil(vtbl.selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQAbstractItemView_selectionCommand
  if not isNil(vtbl.startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQAbstractItemView_startDrag
  if not isNil(vtbl.viewOptions):
    vtbl[].vtbl.viewOptions = miqt_exec_callback_cQAbstractItemView_viewOptions
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQAbstractItemView_focusNextPrevChild
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractItemView_event
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQAbstractItemView_viewportEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQAbstractItemView_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQAbstractItemView_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQAbstractItemView_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQAbstractItemView_mouseDoubleClickEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQAbstractItemView_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQAbstractItemView_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQAbstractItemView_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQAbstractItemView_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQAbstractItemView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQAbstractItemView_focusOutEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQAbstractItemView_keyPressEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQAbstractItemView_resizeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractItemView_timerEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQAbstractItemView_inputMethodEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractItemView_eventFilter
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQAbstractItemView_viewportSizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQAbstractItemView_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQAbstractItemView_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQAbstractItemView_setupViewport
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQAbstractItemView_paintEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQAbstractItemView_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQAbstractItemView_contextMenuEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQAbstractItemView_scrollContentsBy
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQAbstractItemView_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQAbstractItemView_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQAbstractItemView_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQAbstractItemView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQAbstractItemView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQAbstractItemView_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQAbstractItemView_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQAbstractItemView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQAbstractItemView_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQAbstractItemView_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQAbstractItemView_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQAbstractItemView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQAbstractItemView_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQAbstractItemView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQAbstractItemView_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQAbstractItemView_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQAbstractItemView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQAbstractItemView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQAbstractItemView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQAbstractItemView_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractItemView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractItemView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractItemView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractItemView_disconnectNotify
  gen_qabstractitemview_types.QAbstractItemView(h: fcQAbstractItemView_new(addr(vtbl[]), parent.h))

proc create*(T: type gen_qabstractitemview_types.QAbstractItemView,
    vtbl: ref QAbstractItemViewVTable = nil): gen_qabstractitemview_types.QAbstractItemView =
  let vtbl = if vtbl == nil: new QAbstractItemViewVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQAbstractItemViewVTable, _: ptr cQAbstractItemView) {.cdecl.} =
    let vtbl = cast[ref QAbstractItemViewVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQAbstractItemView_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQAbstractItemView_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQAbstractItemView_metacall
  if not isNil(vtbl.setModel):
    vtbl[].vtbl.setModel = miqt_exec_callback_cQAbstractItemView_setModel
  if not isNil(vtbl.setSelectionModel):
    vtbl[].vtbl.setSelectionModel = miqt_exec_callback_cQAbstractItemView_setSelectionModel
  if not isNil(vtbl.keyboardSearch):
    vtbl[].vtbl.keyboardSearch = miqt_exec_callback_cQAbstractItemView_keyboardSearch
  if not isNil(vtbl.visualRect):
    vtbl[].vtbl.visualRect = miqt_exec_callback_cQAbstractItemView_visualRect
  if not isNil(vtbl.scrollTo):
    vtbl[].vtbl.scrollTo = miqt_exec_callback_cQAbstractItemView_scrollTo
  if not isNil(vtbl.indexAt):
    vtbl[].vtbl.indexAt = miqt_exec_callback_cQAbstractItemView_indexAt
  if not isNil(vtbl.sizeHintForRow):
    vtbl[].vtbl.sizeHintForRow = miqt_exec_callback_cQAbstractItemView_sizeHintForRow
  if not isNil(vtbl.sizeHintForColumn):
    vtbl[].vtbl.sizeHintForColumn = miqt_exec_callback_cQAbstractItemView_sizeHintForColumn
  if not isNil(vtbl.inputMethodQuery):
    vtbl[].vtbl.inputMethodQuery = miqt_exec_callback_cQAbstractItemView_inputMethodQuery
  if not isNil(vtbl.reset):
    vtbl[].vtbl.reset = miqt_exec_callback_cQAbstractItemView_reset
  if not isNil(vtbl.setRootIndex):
    vtbl[].vtbl.setRootIndex = miqt_exec_callback_cQAbstractItemView_setRootIndex
  if not isNil(vtbl.doItemsLayout):
    vtbl[].vtbl.doItemsLayout = miqt_exec_callback_cQAbstractItemView_doItemsLayout
  if not isNil(vtbl.selectAll):
    vtbl[].vtbl.selectAll = miqt_exec_callback_cQAbstractItemView_selectAll
  if not isNil(vtbl.dataChanged):
    vtbl[].vtbl.dataChanged = miqt_exec_callback_cQAbstractItemView_dataChanged
  if not isNil(vtbl.rowsInserted):
    vtbl[].vtbl.rowsInserted = miqt_exec_callback_cQAbstractItemView_rowsInserted
  if not isNil(vtbl.rowsAboutToBeRemoved):
    vtbl[].vtbl.rowsAboutToBeRemoved = miqt_exec_callback_cQAbstractItemView_rowsAboutToBeRemoved
  if not isNil(vtbl.selectionChanged):
    vtbl[].vtbl.selectionChanged = miqt_exec_callback_cQAbstractItemView_selectionChanged
  if not isNil(vtbl.currentChanged):
    vtbl[].vtbl.currentChanged = miqt_exec_callback_cQAbstractItemView_currentChanged
  if not isNil(vtbl.updateEditorData):
    vtbl[].vtbl.updateEditorData = miqt_exec_callback_cQAbstractItemView_updateEditorData
  if not isNil(vtbl.updateEditorGeometries):
    vtbl[].vtbl.updateEditorGeometries = miqt_exec_callback_cQAbstractItemView_updateEditorGeometries
  if not isNil(vtbl.updateGeometries):
    vtbl[].vtbl.updateGeometries = miqt_exec_callback_cQAbstractItemView_updateGeometries
  if not isNil(vtbl.verticalScrollbarAction):
    vtbl[].vtbl.verticalScrollbarAction = miqt_exec_callback_cQAbstractItemView_verticalScrollbarAction
  if not isNil(vtbl.horizontalScrollbarAction):
    vtbl[].vtbl.horizontalScrollbarAction = miqt_exec_callback_cQAbstractItemView_horizontalScrollbarAction
  if not isNil(vtbl.verticalScrollbarValueChanged):
    vtbl[].vtbl.verticalScrollbarValueChanged = miqt_exec_callback_cQAbstractItemView_verticalScrollbarValueChanged
  if not isNil(vtbl.horizontalScrollbarValueChanged):
    vtbl[].vtbl.horizontalScrollbarValueChanged = miqt_exec_callback_cQAbstractItemView_horizontalScrollbarValueChanged
  if not isNil(vtbl.closeEditor):
    vtbl[].vtbl.closeEditor = miqt_exec_callback_cQAbstractItemView_closeEditor
  if not isNil(vtbl.commitData):
    vtbl[].vtbl.commitData = miqt_exec_callback_cQAbstractItemView_commitData
  if not isNil(vtbl.editorDestroyed):
    vtbl[].vtbl.editorDestroyed = miqt_exec_callback_cQAbstractItemView_editorDestroyed
  if not isNil(vtbl.moveCursor):
    vtbl[].vtbl.moveCursor = miqt_exec_callback_cQAbstractItemView_moveCursor
  if not isNil(vtbl.horizontalOffset):
    vtbl[].vtbl.horizontalOffset = miqt_exec_callback_cQAbstractItemView_horizontalOffset
  if not isNil(vtbl.verticalOffset):
    vtbl[].vtbl.verticalOffset = miqt_exec_callback_cQAbstractItemView_verticalOffset
  if not isNil(vtbl.isIndexHidden):
    vtbl[].vtbl.isIndexHidden = miqt_exec_callback_cQAbstractItemView_isIndexHidden
  if not isNil(vtbl.setSelection):
    vtbl[].vtbl.setSelection = miqt_exec_callback_cQAbstractItemView_setSelection
  if not isNil(vtbl.visualRegionForSelection):
    vtbl[].vtbl.visualRegionForSelection = miqt_exec_callback_cQAbstractItemView_visualRegionForSelection
  if not isNil(vtbl.selectedIndexes):
    vtbl[].vtbl.selectedIndexes = miqt_exec_callback_cQAbstractItemView_selectedIndexes
  if not isNil(vtbl.edit):
    vtbl[].vtbl.edit = miqt_exec_callback_cQAbstractItemView_edit2
  if not isNil(vtbl.selectionCommand):
    vtbl[].vtbl.selectionCommand = miqt_exec_callback_cQAbstractItemView_selectionCommand
  if not isNil(vtbl.startDrag):
    vtbl[].vtbl.startDrag = miqt_exec_callback_cQAbstractItemView_startDrag
  if not isNil(vtbl.viewOptions):
    vtbl[].vtbl.viewOptions = miqt_exec_callback_cQAbstractItemView_viewOptions
  if not isNil(vtbl.focusNextPrevChild):
    vtbl[].vtbl.focusNextPrevChild = miqt_exec_callback_cQAbstractItemView_focusNextPrevChild
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQAbstractItemView_event
  if not isNil(vtbl.viewportEvent):
    vtbl[].vtbl.viewportEvent = miqt_exec_callback_cQAbstractItemView_viewportEvent
  if not isNil(vtbl.mousePressEvent):
    vtbl[].vtbl.mousePressEvent = miqt_exec_callback_cQAbstractItemView_mousePressEvent
  if not isNil(vtbl.mouseMoveEvent):
    vtbl[].vtbl.mouseMoveEvent = miqt_exec_callback_cQAbstractItemView_mouseMoveEvent
  if not isNil(vtbl.mouseReleaseEvent):
    vtbl[].vtbl.mouseReleaseEvent = miqt_exec_callback_cQAbstractItemView_mouseReleaseEvent
  if not isNil(vtbl.mouseDoubleClickEvent):
    vtbl[].vtbl.mouseDoubleClickEvent = miqt_exec_callback_cQAbstractItemView_mouseDoubleClickEvent
  if not isNil(vtbl.dragEnterEvent):
    vtbl[].vtbl.dragEnterEvent = miqt_exec_callback_cQAbstractItemView_dragEnterEvent
  if not isNil(vtbl.dragMoveEvent):
    vtbl[].vtbl.dragMoveEvent = miqt_exec_callback_cQAbstractItemView_dragMoveEvent
  if not isNil(vtbl.dragLeaveEvent):
    vtbl[].vtbl.dragLeaveEvent = miqt_exec_callback_cQAbstractItemView_dragLeaveEvent
  if not isNil(vtbl.dropEvent):
    vtbl[].vtbl.dropEvent = miqt_exec_callback_cQAbstractItemView_dropEvent
  if not isNil(vtbl.focusInEvent):
    vtbl[].vtbl.focusInEvent = miqt_exec_callback_cQAbstractItemView_focusInEvent
  if not isNil(vtbl.focusOutEvent):
    vtbl[].vtbl.focusOutEvent = miqt_exec_callback_cQAbstractItemView_focusOutEvent
  if not isNil(vtbl.keyPressEvent):
    vtbl[].vtbl.keyPressEvent = miqt_exec_callback_cQAbstractItemView_keyPressEvent
  if not isNil(vtbl.resizeEvent):
    vtbl[].vtbl.resizeEvent = miqt_exec_callback_cQAbstractItemView_resizeEvent
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQAbstractItemView_timerEvent
  if not isNil(vtbl.inputMethodEvent):
    vtbl[].vtbl.inputMethodEvent = miqt_exec_callback_cQAbstractItemView_inputMethodEvent
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQAbstractItemView_eventFilter
  if not isNil(vtbl.viewportSizeHint):
    vtbl[].vtbl.viewportSizeHint = miqt_exec_callback_cQAbstractItemView_viewportSizeHint
  if not isNil(vtbl.minimumSizeHint):
    vtbl[].vtbl.minimumSizeHint = miqt_exec_callback_cQAbstractItemView_minimumSizeHint
  if not isNil(vtbl.sizeHint):
    vtbl[].vtbl.sizeHint = miqt_exec_callback_cQAbstractItemView_sizeHint
  if not isNil(vtbl.setupViewport):
    vtbl[].vtbl.setupViewport = miqt_exec_callback_cQAbstractItemView_setupViewport
  if not isNil(vtbl.paintEvent):
    vtbl[].vtbl.paintEvent = miqt_exec_callback_cQAbstractItemView_paintEvent
  if not isNil(vtbl.wheelEvent):
    vtbl[].vtbl.wheelEvent = miqt_exec_callback_cQAbstractItemView_wheelEvent
  if not isNil(vtbl.contextMenuEvent):
    vtbl[].vtbl.contextMenuEvent = miqt_exec_callback_cQAbstractItemView_contextMenuEvent
  if not isNil(vtbl.scrollContentsBy):
    vtbl[].vtbl.scrollContentsBy = miqt_exec_callback_cQAbstractItemView_scrollContentsBy
  if not isNil(vtbl.changeEvent):
    vtbl[].vtbl.changeEvent = miqt_exec_callback_cQAbstractItemView_changeEvent
  if not isNil(vtbl.devType):
    vtbl[].vtbl.devType = miqt_exec_callback_cQAbstractItemView_devType
  if not isNil(vtbl.setVisible):
    vtbl[].vtbl.setVisible = miqt_exec_callback_cQAbstractItemView_setVisible
  if not isNil(vtbl.heightForWidth):
    vtbl[].vtbl.heightForWidth = miqt_exec_callback_cQAbstractItemView_heightForWidth
  if not isNil(vtbl.hasHeightForWidth):
    vtbl[].vtbl.hasHeightForWidth = miqt_exec_callback_cQAbstractItemView_hasHeightForWidth
  if not isNil(vtbl.paintEngine):
    vtbl[].vtbl.paintEngine = miqt_exec_callback_cQAbstractItemView_paintEngine
  if not isNil(vtbl.keyReleaseEvent):
    vtbl[].vtbl.keyReleaseEvent = miqt_exec_callback_cQAbstractItemView_keyReleaseEvent
  if not isNil(vtbl.enterEvent):
    vtbl[].vtbl.enterEvent = miqt_exec_callback_cQAbstractItemView_enterEvent
  if not isNil(vtbl.leaveEvent):
    vtbl[].vtbl.leaveEvent = miqt_exec_callback_cQAbstractItemView_leaveEvent
  if not isNil(vtbl.moveEvent):
    vtbl[].vtbl.moveEvent = miqt_exec_callback_cQAbstractItemView_moveEvent
  if not isNil(vtbl.closeEvent):
    vtbl[].vtbl.closeEvent = miqt_exec_callback_cQAbstractItemView_closeEvent
  if not isNil(vtbl.tabletEvent):
    vtbl[].vtbl.tabletEvent = miqt_exec_callback_cQAbstractItemView_tabletEvent
  if not isNil(vtbl.actionEvent):
    vtbl[].vtbl.actionEvent = miqt_exec_callback_cQAbstractItemView_actionEvent
  if not isNil(vtbl.showEvent):
    vtbl[].vtbl.showEvent = miqt_exec_callback_cQAbstractItemView_showEvent
  if not isNil(vtbl.hideEvent):
    vtbl[].vtbl.hideEvent = miqt_exec_callback_cQAbstractItemView_hideEvent
  if not isNil(vtbl.nativeEvent):
    vtbl[].vtbl.nativeEvent = miqt_exec_callback_cQAbstractItemView_nativeEvent
  if not isNil(vtbl.metric):
    vtbl[].vtbl.metric = miqt_exec_callback_cQAbstractItemView_metric
  if not isNil(vtbl.initPainter):
    vtbl[].vtbl.initPainter = miqt_exec_callback_cQAbstractItemView_initPainter
  if not isNil(vtbl.redirected):
    vtbl[].vtbl.redirected = miqt_exec_callback_cQAbstractItemView_redirected
  if not isNil(vtbl.sharedPainter):
    vtbl[].vtbl.sharedPainter = miqt_exec_callback_cQAbstractItemView_sharedPainter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQAbstractItemView_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQAbstractItemView_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQAbstractItemView_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQAbstractItemView_disconnectNotify
  gen_qabstractitemview_types.QAbstractItemView(h: fcQAbstractItemView_new2(addr(vtbl[]), ))

proc staticMetaObject*(_: type gen_qabstractitemview_types.QAbstractItemView): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQAbstractItemView_staticMetaObject())
proc delete*(self: gen_qabstractitemview_types.QAbstractItemView) =
  fcQAbstractItemView_delete(self.h)
