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
{.compile("gen_qlistwidget.cpp", cflags).}


type QListWidgetItemItemType* = cint
const
  QListWidgetItemType* = 0
  QListWidgetItemUserType* = 1000



import gen_qlistwidget_types
export gen_qlistwidget_types

import
  gen_qabstractitemdelegate,
  gen_qabstractitemmodel,
  gen_qabstractitemview,
  gen_qbrush,
  gen_qcoreevent,
  gen_qdatastream,
  gen_qevent,
  gen_qfont,
  gen_qicon,
  gen_qitemselectionmodel,
  gen_qlistview,
  gen_qmetaobject,
  gen_qmimedata,
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
  gen_qbrush,
  gen_qcoreevent,
  gen_qdatastream,
  gen_qevent,
  gen_qfont,
  gen_qicon,
  gen_qitemselectionmodel,
  gen_qlistview,
  gen_qmetaobject,
  gen_qmimedata,
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

type cQListWidgetItem*{.exportc: "QListWidgetItem", incompleteStruct.} = object
type cQListWidget*{.exportc: "QListWidget", incompleteStruct.} = object

proc fcQListWidgetItem_new(): ptr cQListWidgetItem {.importc: "QListWidgetItem_new".}
proc fcQListWidgetItem_new2(text: struct_miqt_string): ptr cQListWidgetItem {.importc: "QListWidgetItem_new2".}
proc fcQListWidgetItem_new3(icon: pointer, text: struct_miqt_string): ptr cQListWidgetItem {.importc: "QListWidgetItem_new3".}
proc fcQListWidgetItem_new4(other: pointer): ptr cQListWidgetItem {.importc: "QListWidgetItem_new4".}
proc fcQListWidgetItem_new5(listview: pointer): ptr cQListWidgetItem {.importc: "QListWidgetItem_new5".}
proc fcQListWidgetItem_new6(listview: pointer, typeVal: cint): ptr cQListWidgetItem {.importc: "QListWidgetItem_new6".}
proc fcQListWidgetItem_new7(text: struct_miqt_string, listview: pointer): ptr cQListWidgetItem {.importc: "QListWidgetItem_new7".}
proc fcQListWidgetItem_new8(text: struct_miqt_string, listview: pointer, typeVal: cint): ptr cQListWidgetItem {.importc: "QListWidgetItem_new8".}
proc fcQListWidgetItem_new9(icon: pointer, text: struct_miqt_string, listview: pointer): ptr cQListWidgetItem {.importc: "QListWidgetItem_new9".}
proc fcQListWidgetItem_new10(icon: pointer, text: struct_miqt_string, listview: pointer, typeVal: cint): ptr cQListWidgetItem {.importc: "QListWidgetItem_new10".}
proc fcQListWidgetItem_clone(self: pointer, ): pointer {.importc: "QListWidgetItem_clone".}
proc fcQListWidgetItem_listWidget(self: pointer, ): pointer {.importc: "QListWidgetItem_listWidget".}
proc fcQListWidgetItem_setSelected(self: pointer, select: bool): void {.importc: "QListWidgetItem_setSelected".}
proc fcQListWidgetItem_isSelected(self: pointer, ): bool {.importc: "QListWidgetItem_isSelected".}
proc fcQListWidgetItem_setHidden(self: pointer, hide: bool): void {.importc: "QListWidgetItem_setHidden".}
proc fcQListWidgetItem_isHidden(self: pointer, ): bool {.importc: "QListWidgetItem_isHidden".}
proc fcQListWidgetItem_flags(self: pointer, ): cint {.importc: "QListWidgetItem_flags".}
proc fcQListWidgetItem_setFlags(self: pointer, flags: cint): void {.importc: "QListWidgetItem_setFlags".}
proc fcQListWidgetItem_text(self: pointer, ): struct_miqt_string {.importc: "QListWidgetItem_text".}
proc fcQListWidgetItem_setText(self: pointer, text: struct_miqt_string): void {.importc: "QListWidgetItem_setText".}
proc fcQListWidgetItem_icon(self: pointer, ): pointer {.importc: "QListWidgetItem_icon".}
proc fcQListWidgetItem_setIcon(self: pointer, icon: pointer): void {.importc: "QListWidgetItem_setIcon".}
proc fcQListWidgetItem_statusTip(self: pointer, ): struct_miqt_string {.importc: "QListWidgetItem_statusTip".}
proc fcQListWidgetItem_setStatusTip(self: pointer, statusTip: struct_miqt_string): void {.importc: "QListWidgetItem_setStatusTip".}
proc fcQListWidgetItem_toolTip(self: pointer, ): struct_miqt_string {.importc: "QListWidgetItem_toolTip".}
proc fcQListWidgetItem_setToolTip(self: pointer, toolTip: struct_miqt_string): void {.importc: "QListWidgetItem_setToolTip".}
proc fcQListWidgetItem_whatsThis(self: pointer, ): struct_miqt_string {.importc: "QListWidgetItem_whatsThis".}
proc fcQListWidgetItem_setWhatsThis(self: pointer, whatsThis: struct_miqt_string): void {.importc: "QListWidgetItem_setWhatsThis".}
proc fcQListWidgetItem_font(self: pointer, ): pointer {.importc: "QListWidgetItem_font".}
proc fcQListWidgetItem_setFont(self: pointer, font: pointer): void {.importc: "QListWidgetItem_setFont".}
proc fcQListWidgetItem_textAlignment(self: pointer, ): cint {.importc: "QListWidgetItem_textAlignment".}
proc fcQListWidgetItem_setTextAlignment(self: pointer, alignment: cint): void {.importc: "QListWidgetItem_setTextAlignment".}
proc fcQListWidgetItem_setTextAlignmentWithAlignment(self: pointer, alignment: cint): void {.importc: "QListWidgetItem_setTextAlignmentWithAlignment".}
proc fcQListWidgetItem_setTextAlignment2(self: pointer, alignment: cint): void {.importc: "QListWidgetItem_setTextAlignment2".}
proc fcQListWidgetItem_background(self: pointer, ): pointer {.importc: "QListWidgetItem_background".}
proc fcQListWidgetItem_setBackground(self: pointer, brush: pointer): void {.importc: "QListWidgetItem_setBackground".}
proc fcQListWidgetItem_foreground(self: pointer, ): pointer {.importc: "QListWidgetItem_foreground".}
proc fcQListWidgetItem_setForeground(self: pointer, brush: pointer): void {.importc: "QListWidgetItem_setForeground".}
proc fcQListWidgetItem_checkState(self: pointer, ): cint {.importc: "QListWidgetItem_checkState".}
proc fcQListWidgetItem_setCheckState(self: pointer, state: cint): void {.importc: "QListWidgetItem_setCheckState".}
proc fcQListWidgetItem_sizeHint(self: pointer, ): pointer {.importc: "QListWidgetItem_sizeHint".}
proc fcQListWidgetItem_setSizeHint(self: pointer, size: pointer): void {.importc: "QListWidgetItem_setSizeHint".}
proc fcQListWidgetItem_data(self: pointer, role: cint): pointer {.importc: "QListWidgetItem_data".}
proc fcQListWidgetItem_setData(self: pointer, role: cint, value: pointer): void {.importc: "QListWidgetItem_setData".}
proc fcQListWidgetItem_operatorLesser(self: pointer, other: pointer): bool {.importc: "QListWidgetItem_operatorLesser".}
proc fcQListWidgetItem_read(self: pointer, inVal: pointer): void {.importc: "QListWidgetItem_read".}
proc fcQListWidgetItem_write(self: pointer, outVal: pointer): void {.importc: "QListWidgetItem_write".}
proc fcQListWidgetItem_operatorAssign(self: pointer, other: pointer): void {.importc: "QListWidgetItem_operatorAssign".}
proc fcQListWidgetItem_typeX(self: pointer, ): cint {.importc: "QListWidgetItem_type".}
proc fQListWidgetItem_virtualbase_clone(self: pointer, ): pointer{.importc: "QListWidgetItem_virtualbase_clone".}
proc fcQListWidgetItem_override_virtual_clone(self: pointer, slot: int) {.importc: "QListWidgetItem_override_virtual_clone".}
proc fQListWidgetItem_virtualbase_data(self: pointer, role: cint): pointer{.importc: "QListWidgetItem_virtualbase_data".}
proc fcQListWidgetItem_override_virtual_data(self: pointer, slot: int) {.importc: "QListWidgetItem_override_virtual_data".}
proc fQListWidgetItem_virtualbase_setData(self: pointer, role: cint, value: pointer): void{.importc: "QListWidgetItem_virtualbase_setData".}
proc fcQListWidgetItem_override_virtual_setData(self: pointer, slot: int) {.importc: "QListWidgetItem_override_virtual_setData".}
proc fQListWidgetItem_virtualbase_operatorLesser(self: pointer, other: pointer): bool{.importc: "QListWidgetItem_virtualbase_operatorLesser".}
proc fcQListWidgetItem_override_virtual_operatorLesser(self: pointer, slot: int) {.importc: "QListWidgetItem_override_virtual_operatorLesser".}
proc fQListWidgetItem_virtualbase_read(self: pointer, inVal: pointer): void{.importc: "QListWidgetItem_virtualbase_read".}
proc fcQListWidgetItem_override_virtual_read(self: pointer, slot: int) {.importc: "QListWidgetItem_override_virtual_read".}
proc fQListWidgetItem_virtualbase_write(self: pointer, outVal: pointer): void{.importc: "QListWidgetItem_virtualbase_write".}
proc fcQListWidgetItem_override_virtual_write(self: pointer, slot: int) {.importc: "QListWidgetItem_override_virtual_write".}
proc fcQListWidgetItem_delete(self: pointer) {.importc: "QListWidgetItem_delete".}
proc fcQListWidget_new(parent: pointer): ptr cQListWidget {.importc: "QListWidget_new".}
proc fcQListWidget_new2(): ptr cQListWidget {.importc: "QListWidget_new2".}
proc fcQListWidget_metaObject(self: pointer, ): pointer {.importc: "QListWidget_metaObject".}
proc fcQListWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QListWidget_metacast".}
proc fcQListWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QListWidget_metacall".}
proc fcQListWidget_tr(s: cstring): struct_miqt_string {.importc: "QListWidget_tr".}
proc fcQListWidget_setSelectionModel(self: pointer, selectionModel: pointer): void {.importc: "QListWidget_setSelectionModel".}
proc fcQListWidget_item(self: pointer, row: cint): pointer {.importc: "QListWidget_item".}
proc fcQListWidget_row(self: pointer, item: pointer): cint {.importc: "QListWidget_row".}
proc fcQListWidget_insertItem(self: pointer, row: cint, item: pointer): void {.importc: "QListWidget_insertItem".}
proc fcQListWidget_insertItem2(self: pointer, row: cint, label: struct_miqt_string): void {.importc: "QListWidget_insertItem2".}
proc fcQListWidget_insertItems(self: pointer, row: cint, labels: struct_miqt_array): void {.importc: "QListWidget_insertItems".}
proc fcQListWidget_addItem(self: pointer, label: struct_miqt_string): void {.importc: "QListWidget_addItem".}
proc fcQListWidget_addItemWithItem(self: pointer, item: pointer): void {.importc: "QListWidget_addItemWithItem".}
proc fcQListWidget_addItems(self: pointer, labels: struct_miqt_array): void {.importc: "QListWidget_addItems".}
proc fcQListWidget_takeItem(self: pointer, row: cint): pointer {.importc: "QListWidget_takeItem".}
proc fcQListWidget_count(self: pointer, ): cint {.importc: "QListWidget_count".}
proc fcQListWidget_currentItem(self: pointer, ): pointer {.importc: "QListWidget_currentItem".}
proc fcQListWidget_setCurrentItem(self: pointer, item: pointer): void {.importc: "QListWidget_setCurrentItem".}
proc fcQListWidget_setCurrentItem2(self: pointer, item: pointer, command: cint): void {.importc: "QListWidget_setCurrentItem2".}
proc fcQListWidget_currentRow(self: pointer, ): cint {.importc: "QListWidget_currentRow".}
proc fcQListWidget_setCurrentRow(self: pointer, row: cint): void {.importc: "QListWidget_setCurrentRow".}
proc fcQListWidget_setCurrentRow2(self: pointer, row: cint, command: cint): void {.importc: "QListWidget_setCurrentRow2".}
proc fcQListWidget_itemAt(self: pointer, p: pointer): pointer {.importc: "QListWidget_itemAt".}
proc fcQListWidget_itemAt2(self: pointer, x: cint, y: cint): pointer {.importc: "QListWidget_itemAt2".}
proc fcQListWidget_visualItemRect(self: pointer, item: pointer): pointer {.importc: "QListWidget_visualItemRect".}
proc fcQListWidget_sortItems(self: pointer, ): void {.importc: "QListWidget_sortItems".}
proc fcQListWidget_setSortingEnabled(self: pointer, enable: bool): void {.importc: "QListWidget_setSortingEnabled".}
proc fcQListWidget_isSortingEnabled(self: pointer, ): bool {.importc: "QListWidget_isSortingEnabled".}
proc fcQListWidget_editItem(self: pointer, item: pointer): void {.importc: "QListWidget_editItem".}
proc fcQListWidget_openPersistentEditor(self: pointer, item: pointer): void {.importc: "QListWidget_openPersistentEditor".}
proc fcQListWidget_closePersistentEditor(self: pointer, item: pointer): void {.importc: "QListWidget_closePersistentEditor".}
proc fcQListWidget_isPersistentEditorOpen(self: pointer, item: pointer): bool {.importc: "QListWidget_isPersistentEditorOpen".}
proc fcQListWidget_itemWidget(self: pointer, item: pointer): pointer {.importc: "QListWidget_itemWidget".}
proc fcQListWidget_setItemWidget(self: pointer, item: pointer, widget: pointer): void {.importc: "QListWidget_setItemWidget".}
proc fcQListWidget_removeItemWidget(self: pointer, item: pointer): void {.importc: "QListWidget_removeItemWidget".}
proc fcQListWidget_selectedItems(self: pointer, ): struct_miqt_array {.importc: "QListWidget_selectedItems".}
proc fcQListWidget_findItems(self: pointer, text: struct_miqt_string, flags: cint): struct_miqt_array {.importc: "QListWidget_findItems".}
proc fcQListWidget_items(self: pointer, data: pointer): struct_miqt_array {.importc: "QListWidget_items".}
proc fcQListWidget_indexFromItem(self: pointer, item: pointer): pointer {.importc: "QListWidget_indexFromItem".}
proc fcQListWidget_itemFromIndex(self: pointer, index: pointer): pointer {.importc: "QListWidget_itemFromIndex".}
proc fcQListWidget_scrollToItem(self: pointer, item: pointer): void {.importc: "QListWidget_scrollToItem".}
proc fcQListWidget_clear(self: pointer, ): void {.importc: "QListWidget_clear".}
proc fcQListWidget_itemPressed(self: pointer, item: pointer): void {.importc: "QListWidget_itemPressed".}
proc fQListWidget_connect_itemPressed(self: pointer, slot: int) {.importc: "QListWidget_connect_itemPressed".}
proc fcQListWidget_itemClicked(self: pointer, item: pointer): void {.importc: "QListWidget_itemClicked".}
proc fQListWidget_connect_itemClicked(self: pointer, slot: int) {.importc: "QListWidget_connect_itemClicked".}
proc fcQListWidget_itemDoubleClicked(self: pointer, item: pointer): void {.importc: "QListWidget_itemDoubleClicked".}
proc fQListWidget_connect_itemDoubleClicked(self: pointer, slot: int) {.importc: "QListWidget_connect_itemDoubleClicked".}
proc fcQListWidget_itemActivated(self: pointer, item: pointer): void {.importc: "QListWidget_itemActivated".}
proc fQListWidget_connect_itemActivated(self: pointer, slot: int) {.importc: "QListWidget_connect_itemActivated".}
proc fcQListWidget_itemEntered(self: pointer, item: pointer): void {.importc: "QListWidget_itemEntered".}
proc fQListWidget_connect_itemEntered(self: pointer, slot: int) {.importc: "QListWidget_connect_itemEntered".}
proc fcQListWidget_itemChanged(self: pointer, item: pointer): void {.importc: "QListWidget_itemChanged".}
proc fQListWidget_connect_itemChanged(self: pointer, slot: int) {.importc: "QListWidget_connect_itemChanged".}
proc fcQListWidget_currentItemChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QListWidget_currentItemChanged".}
proc fQListWidget_connect_currentItemChanged(self: pointer, slot: int) {.importc: "QListWidget_connect_currentItemChanged".}
proc fcQListWidget_currentTextChanged(self: pointer, currentText: struct_miqt_string): void {.importc: "QListWidget_currentTextChanged".}
proc fQListWidget_connect_currentTextChanged(self: pointer, slot: int) {.importc: "QListWidget_connect_currentTextChanged".}
proc fcQListWidget_currentRowChanged(self: pointer, currentRow: cint): void {.importc: "QListWidget_currentRowChanged".}
proc fQListWidget_connect_currentRowChanged(self: pointer, slot: int) {.importc: "QListWidget_connect_currentRowChanged".}
proc fcQListWidget_itemSelectionChanged(self: pointer, ): void {.importc: "QListWidget_itemSelectionChanged".}
proc fQListWidget_connect_itemSelectionChanged(self: pointer, slot: int) {.importc: "QListWidget_connect_itemSelectionChanged".}
proc fcQListWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QListWidget_tr2".}
proc fcQListWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QListWidget_tr3".}
proc fcQListWidget_sortItems1(self: pointer, order: cint): void {.importc: "QListWidget_sortItems1".}
proc fcQListWidget_scrollToItem2(self: pointer, item: pointer, hint: cint): void {.importc: "QListWidget_scrollToItem2".}
proc fQListWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QListWidget_virtualbase_metacall".}
proc fcQListWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_metacall".}
proc fQListWidget_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void{.importc: "QListWidget_virtualbase_setSelectionModel".}
proc fcQListWidget_override_virtual_setSelectionModel(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_setSelectionModel".}
proc fQListWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_dropEvent".}
proc fcQListWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_dropEvent".}
proc fQListWidget_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QListWidget_virtualbase_event".}
proc fcQListWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_event".}
proc fQListWidget_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QListWidget_virtualbase_mimeTypes".}
proc fcQListWidget_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_mimeTypes".}
proc fQListWidget_virtualbase_mimeData(self: pointer, items: struct_miqt_array): pointer{.importc: "QListWidget_virtualbase_mimeData".}
proc fcQListWidget_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_mimeData".}
proc fQListWidget_virtualbase_dropMimeData(self: pointer, index: cint, data: pointer, action: cint): bool{.importc: "QListWidget_virtualbase_dropMimeData".}
proc fcQListWidget_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_dropMimeData".}
proc fQListWidget_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QListWidget_virtualbase_supportedDropActions".}
proc fcQListWidget_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_supportedDropActions".}
proc fQListWidget_virtualbase_visualRect(self: pointer, index: pointer): pointer{.importc: "QListWidget_virtualbase_visualRect".}
proc fcQListWidget_override_virtual_visualRect(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_visualRect".}
proc fQListWidget_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void{.importc: "QListWidget_virtualbase_scrollTo".}
proc fcQListWidget_override_virtual_scrollTo(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_scrollTo".}
proc fQListWidget_virtualbase_indexAt(self: pointer, p: pointer): pointer{.importc: "QListWidget_virtualbase_indexAt".}
proc fcQListWidget_override_virtual_indexAt(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_indexAt".}
proc fQListWidget_virtualbase_doItemsLayout(self: pointer, ): void{.importc: "QListWidget_virtualbase_doItemsLayout".}
proc fcQListWidget_override_virtual_doItemsLayout(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_doItemsLayout".}
proc fQListWidget_virtualbase_reset(self: pointer, ): void{.importc: "QListWidget_virtualbase_reset".}
proc fcQListWidget_override_virtual_reset(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_reset".}
proc fQListWidget_virtualbase_setRootIndex(self: pointer, index: pointer): void{.importc: "QListWidget_virtualbase_setRootIndex".}
proc fcQListWidget_override_virtual_setRootIndex(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_setRootIndex".}
proc fQListWidget_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QListWidget_virtualbase_scrollContentsBy".}
proc fcQListWidget_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_scrollContentsBy".}
proc fQListWidget_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void{.importc: "QListWidget_virtualbase_dataChanged".}
proc fcQListWidget_override_virtual_dataChanged(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_dataChanged".}
proc fQListWidget_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QListWidget_virtualbase_rowsInserted".}
proc fcQListWidget_override_virtual_rowsInserted(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_rowsInserted".}
proc fQListWidget_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QListWidget_virtualbase_rowsAboutToBeRemoved".}
proc fcQListWidget_override_virtual_rowsAboutToBeRemoved(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_rowsAboutToBeRemoved".}
proc fQListWidget_virtualbase_mouseMoveEvent(self: pointer, e: pointer): void{.importc: "QListWidget_virtualbase_mouseMoveEvent".}
proc fcQListWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_mouseMoveEvent".}
proc fQListWidget_virtualbase_mouseReleaseEvent(self: pointer, e: pointer): void{.importc: "QListWidget_virtualbase_mouseReleaseEvent".}
proc fcQListWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_mouseReleaseEvent".}
proc fQListWidget_virtualbase_wheelEvent(self: pointer, e: pointer): void{.importc: "QListWidget_virtualbase_wheelEvent".}
proc fcQListWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_wheelEvent".}
proc fQListWidget_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QListWidget_virtualbase_timerEvent".}
proc fcQListWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_timerEvent".}
proc fQListWidget_virtualbase_resizeEvent(self: pointer, e: pointer): void{.importc: "QListWidget_virtualbase_resizeEvent".}
proc fcQListWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_resizeEvent".}
proc fQListWidget_virtualbase_dragMoveEvent(self: pointer, e: pointer): void{.importc: "QListWidget_virtualbase_dragMoveEvent".}
proc fcQListWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_dragMoveEvent".}
proc fQListWidget_virtualbase_dragLeaveEvent(self: pointer, e: pointer): void{.importc: "QListWidget_virtualbase_dragLeaveEvent".}
proc fcQListWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_dragLeaveEvent".}
proc fQListWidget_virtualbase_startDrag(self: pointer, supportedActions: cint): void{.importc: "QListWidget_virtualbase_startDrag".}
proc fcQListWidget_override_virtual_startDrag(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_startDrag".}
proc fQListWidget_virtualbase_initViewItemOption(self: pointer, option: pointer): void{.importc: "QListWidget_virtualbase_initViewItemOption".}
proc fcQListWidget_override_virtual_initViewItemOption(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_initViewItemOption".}
proc fQListWidget_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QListWidget_virtualbase_paintEvent".}
proc fcQListWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_paintEvent".}
proc fQListWidget_virtualbase_horizontalOffset(self: pointer, ): cint{.importc: "QListWidget_virtualbase_horizontalOffset".}
proc fcQListWidget_override_virtual_horizontalOffset(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_horizontalOffset".}
proc fQListWidget_virtualbase_verticalOffset(self: pointer, ): cint{.importc: "QListWidget_virtualbase_verticalOffset".}
proc fcQListWidget_override_virtual_verticalOffset(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_verticalOffset".}
proc fQListWidget_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer{.importc: "QListWidget_virtualbase_moveCursor".}
proc fcQListWidget_override_virtual_moveCursor(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_moveCursor".}
proc fQListWidget_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void{.importc: "QListWidget_virtualbase_setSelection".}
proc fcQListWidget_override_virtual_setSelection(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_setSelection".}
proc fQListWidget_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer{.importc: "QListWidget_virtualbase_visualRegionForSelection".}
proc fcQListWidget_override_virtual_visualRegionForSelection(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_visualRegionForSelection".}
proc fQListWidget_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array{.importc: "QListWidget_virtualbase_selectedIndexes".}
proc fcQListWidget_override_virtual_selectedIndexes(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_selectedIndexes".}
proc fQListWidget_virtualbase_updateGeometries(self: pointer, ): void{.importc: "QListWidget_virtualbase_updateGeometries".}
proc fcQListWidget_override_virtual_updateGeometries(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_updateGeometries".}
proc fQListWidget_virtualbase_isIndexHidden(self: pointer, index: pointer): bool{.importc: "QListWidget_virtualbase_isIndexHidden".}
proc fcQListWidget_override_virtual_isIndexHidden(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_isIndexHidden".}
proc fQListWidget_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void{.importc: "QListWidget_virtualbase_selectionChanged".}
proc fcQListWidget_override_virtual_selectionChanged(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_selectionChanged".}
proc fQListWidget_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void{.importc: "QListWidget_virtualbase_currentChanged".}
proc fcQListWidget_override_virtual_currentChanged(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_currentChanged".}
proc fQListWidget_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QListWidget_virtualbase_viewportSizeHint".}
proc fcQListWidget_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_viewportSizeHint".}
proc fQListWidget_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void{.importc: "QListWidget_virtualbase_keyboardSearch".}
proc fcQListWidget_override_virtual_keyboardSearch(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_keyboardSearch".}
proc fQListWidget_virtualbase_sizeHintForRow(self: pointer, row: cint): cint{.importc: "QListWidget_virtualbase_sizeHintForRow".}
proc fcQListWidget_override_virtual_sizeHintForRow(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_sizeHintForRow".}
proc fQListWidget_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint{.importc: "QListWidget_virtualbase_sizeHintForColumn".}
proc fcQListWidget_override_virtual_sizeHintForColumn(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_sizeHintForColumn".}
proc fQListWidget_virtualbase_itemDelegateForIndex(self: pointer, index: pointer): pointer{.importc: "QListWidget_virtualbase_itemDelegateForIndex".}
proc fcQListWidget_override_virtual_itemDelegateForIndex(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_itemDelegateForIndex".}
proc fQListWidget_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QListWidget_virtualbase_inputMethodQuery".}
proc fcQListWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_inputMethodQuery".}
proc fQListWidget_virtualbase_selectAll(self: pointer, ): void{.importc: "QListWidget_virtualbase_selectAll".}
proc fcQListWidget_override_virtual_selectAll(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_selectAll".}
proc fQListWidget_virtualbase_updateEditorData(self: pointer, ): void{.importc: "QListWidget_virtualbase_updateEditorData".}
proc fcQListWidget_override_virtual_updateEditorData(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_updateEditorData".}
proc fQListWidget_virtualbase_updateEditorGeometries(self: pointer, ): void{.importc: "QListWidget_virtualbase_updateEditorGeometries".}
proc fcQListWidget_override_virtual_updateEditorGeometries(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_updateEditorGeometries".}
proc fQListWidget_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void{.importc: "QListWidget_virtualbase_verticalScrollbarAction".}
proc fcQListWidget_override_virtual_verticalScrollbarAction(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_verticalScrollbarAction".}
proc fQListWidget_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void{.importc: "QListWidget_virtualbase_horizontalScrollbarAction".}
proc fcQListWidget_override_virtual_horizontalScrollbarAction(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_horizontalScrollbarAction".}
proc fQListWidget_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QListWidget_virtualbase_verticalScrollbarValueChanged".}
proc fcQListWidget_override_virtual_verticalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_verticalScrollbarValueChanged".}
proc fQListWidget_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QListWidget_virtualbase_horizontalScrollbarValueChanged".}
proc fcQListWidget_override_virtual_horizontalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_horizontalScrollbarValueChanged".}
proc fQListWidget_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void{.importc: "QListWidget_virtualbase_closeEditor".}
proc fcQListWidget_override_virtual_closeEditor(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_closeEditor".}
proc fQListWidget_virtualbase_commitData(self: pointer, editor: pointer): void{.importc: "QListWidget_virtualbase_commitData".}
proc fcQListWidget_override_virtual_commitData(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_commitData".}
proc fQListWidget_virtualbase_editorDestroyed(self: pointer, editor: pointer): void{.importc: "QListWidget_virtualbase_editorDestroyed".}
proc fcQListWidget_override_virtual_editorDestroyed(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_editorDestroyed".}
proc fQListWidget_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool{.importc: "QListWidget_virtualbase_edit2".}
proc fcQListWidget_override_virtual_edit2(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_edit2".}
proc fQListWidget_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint{.importc: "QListWidget_virtualbase_selectionCommand".}
proc fcQListWidget_override_virtual_selectionCommand(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_selectionCommand".}
proc fQListWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QListWidget_virtualbase_focusNextPrevChild".}
proc fcQListWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_focusNextPrevChild".}
proc fQListWidget_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QListWidget_virtualbase_viewportEvent".}
proc fcQListWidget_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_viewportEvent".}
proc fQListWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_mousePressEvent".}
proc fcQListWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_mousePressEvent".}
proc fQListWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQListWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_mouseDoubleClickEvent".}
proc fQListWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_dragEnterEvent".}
proc fcQListWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_dragEnterEvent".}
proc fQListWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_focusInEvent".}
proc fcQListWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_focusInEvent".}
proc fQListWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_focusOutEvent".}
proc fcQListWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_focusOutEvent".}
proc fQListWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_keyPressEvent".}
proc fcQListWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_keyPressEvent".}
proc fQListWidget_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_inputMethodEvent".}
proc fcQListWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_inputMethodEvent".}
proc fQListWidget_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QListWidget_virtualbase_eventFilter".}
proc fcQListWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_eventFilter".}
proc fQListWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QListWidget_virtualbase_minimumSizeHint".}
proc fcQListWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_minimumSizeHint".}
proc fQListWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QListWidget_virtualbase_sizeHint".}
proc fcQListWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_sizeHint".}
proc fQListWidget_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QListWidget_virtualbase_setupViewport".}
proc fcQListWidget_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_setupViewport".}
proc fQListWidget_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QListWidget_virtualbase_contextMenuEvent".}
proc fcQListWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_contextMenuEvent".}
proc fQListWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QListWidget_virtualbase_changeEvent".}
proc fcQListWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_changeEvent".}
proc fQListWidget_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QListWidget_virtualbase_initStyleOption".}
proc fcQListWidget_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_initStyleOption".}
proc fQListWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QListWidget_virtualbase_devType".}
proc fcQListWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_devType".}
proc fQListWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QListWidget_virtualbase_setVisible".}
proc fcQListWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_setVisible".}
proc fQListWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QListWidget_virtualbase_heightForWidth".}
proc fcQListWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_heightForWidth".}
proc fQListWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QListWidget_virtualbase_hasHeightForWidth".}
proc fcQListWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_hasHeightForWidth".}
proc fQListWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QListWidget_virtualbase_paintEngine".}
proc fcQListWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_paintEngine".}
proc fQListWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_keyReleaseEvent".}
proc fcQListWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_keyReleaseEvent".}
proc fQListWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_enterEvent".}
proc fcQListWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_enterEvent".}
proc fQListWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_leaveEvent".}
proc fcQListWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_leaveEvent".}
proc fQListWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_moveEvent".}
proc fcQListWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_moveEvent".}
proc fQListWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_closeEvent".}
proc fcQListWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_closeEvent".}
proc fQListWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_tabletEvent".}
proc fcQListWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_tabletEvent".}
proc fQListWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_actionEvent".}
proc fcQListWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_actionEvent".}
proc fQListWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_showEvent".}
proc fcQListWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_showEvent".}
proc fQListWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_hideEvent".}
proc fcQListWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_hideEvent".}
proc fQListWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QListWidget_virtualbase_nativeEvent".}
proc fcQListWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_nativeEvent".}
proc fQListWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QListWidget_virtualbase_metric".}
proc fcQListWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_metric".}
proc fQListWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QListWidget_virtualbase_initPainter".}
proc fcQListWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_initPainter".}
proc fQListWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QListWidget_virtualbase_redirected".}
proc fcQListWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_redirected".}
proc fQListWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QListWidget_virtualbase_sharedPainter".}
proc fcQListWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_sharedPainter".}
proc fQListWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_childEvent".}
proc fcQListWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_childEvent".}
proc fQListWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QListWidget_virtualbase_customEvent".}
proc fcQListWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_customEvent".}
proc fQListWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QListWidget_virtualbase_connectNotify".}
proc fcQListWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_connectNotify".}
proc fQListWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QListWidget_virtualbase_disconnectNotify".}
proc fcQListWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QListWidget_override_virtual_disconnectNotify".}
proc fcQListWidget_delete(self: pointer) {.importc: "QListWidget_delete".}


func init*(T: type QListWidgetItem, h: ptr cQListWidgetItem): QListWidgetItem =
  T(h: h)
proc create*(T: type QListWidgetItem, ): QListWidgetItem =

  QListWidgetItem.init(fcQListWidgetItem_new())
proc create*(T: type QListWidgetItem, text: string): QListWidgetItem =

  QListWidgetItem.init(fcQListWidgetItem_new2(struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QListWidgetItem, icon: gen_qicon.QIcon, text: string): QListWidgetItem =

  QListWidgetItem.init(fcQListWidgetItem_new3(icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QListWidgetItem, other: QListWidgetItem): QListWidgetItem =

  QListWidgetItem.init(fcQListWidgetItem_new4(other.h))
proc create2*(T: type QListWidgetItem, listview: QListWidget): QListWidgetItem =

  QListWidgetItem.init(fcQListWidgetItem_new5(listview.h))
proc create*(T: type QListWidgetItem, listview: QListWidget, typeVal: cint): QListWidgetItem =

  QListWidgetItem.init(fcQListWidgetItem_new6(listview.h, typeVal))
proc create*(T: type QListWidgetItem, text: string, listview: QListWidget): QListWidgetItem =

  QListWidgetItem.init(fcQListWidgetItem_new7(struct_miqt_string(data: text, len: csize_t(len(text))), listview.h))
proc create*(T: type QListWidgetItem, text: string, listview: QListWidget, typeVal: cint): QListWidgetItem =

  QListWidgetItem.init(fcQListWidgetItem_new8(struct_miqt_string(data: text, len: csize_t(len(text))), listview.h, typeVal))
proc create*(T: type QListWidgetItem, icon: gen_qicon.QIcon, text: string, listview: QListWidget): QListWidgetItem =

  QListWidgetItem.init(fcQListWidgetItem_new9(icon.h, struct_miqt_string(data: text, len: csize_t(len(text))), listview.h))
proc create*(T: type QListWidgetItem, icon: gen_qicon.QIcon, text: string, listview: QListWidget, typeVal: cint): QListWidgetItem =

  QListWidgetItem.init(fcQListWidgetItem_new10(icon.h, struct_miqt_string(data: text, len: csize_t(len(text))), listview.h, typeVal))
proc clone*(self: QListWidgetItem, ): QListWidgetItem =

  QListWidgetItem(h: fcQListWidgetItem_clone(self.h))

proc listWidget*(self: QListWidgetItem, ): QListWidget =

  QListWidget(h: fcQListWidgetItem_listWidget(self.h))

proc setSelected*(self: QListWidgetItem, select: bool): void =

  fcQListWidgetItem_setSelected(self.h, select)

proc isSelected*(self: QListWidgetItem, ): bool =

  fcQListWidgetItem_isSelected(self.h)

proc setHidden*(self: QListWidgetItem, hide: bool): void =

  fcQListWidgetItem_setHidden(self.h, hide)

proc isHidden*(self: QListWidgetItem, ): bool =

  fcQListWidgetItem_isHidden(self.h)

proc flags*(self: QListWidgetItem, ): gen_qnamespace.ItemFlag =

  gen_qnamespace.ItemFlag(fcQListWidgetItem_flags(self.h))

proc setFlags*(self: QListWidgetItem, flags: gen_qnamespace.ItemFlag): void =

  fcQListWidgetItem_setFlags(self.h, cint(flags))

proc text*(self: QListWidgetItem, ): string =

  let v_ms = fcQListWidgetItem_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: QListWidgetItem, text: string): void =

  fcQListWidgetItem_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc icon*(self: QListWidgetItem, ): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQListWidgetItem_icon(self.h))

proc setIcon*(self: QListWidgetItem, icon: gen_qicon.QIcon): void =

  fcQListWidgetItem_setIcon(self.h, icon.h)

proc statusTip*(self: QListWidgetItem, ): string =

  let v_ms = fcQListWidgetItem_statusTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setStatusTip*(self: QListWidgetItem, statusTip: string): void =

  fcQListWidgetItem_setStatusTip(self.h, struct_miqt_string(data: statusTip, len: csize_t(len(statusTip))))

proc toolTip*(self: QListWidgetItem, ): string =

  let v_ms = fcQListWidgetItem_toolTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setToolTip*(self: QListWidgetItem, toolTip: string): void =

  fcQListWidgetItem_setToolTip(self.h, struct_miqt_string(data: toolTip, len: csize_t(len(toolTip))))

proc whatsThis*(self: QListWidgetItem, ): string =

  let v_ms = fcQListWidgetItem_whatsThis(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWhatsThis*(self: QListWidgetItem, whatsThis: string): void =

  fcQListWidgetItem_setWhatsThis(self.h, struct_miqt_string(data: whatsThis, len: csize_t(len(whatsThis))))

proc font*(self: QListWidgetItem, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQListWidgetItem_font(self.h))

proc setFont*(self: QListWidgetItem, font: gen_qfont.QFont): void =

  fcQListWidgetItem_setFont(self.h, font.h)

proc textAlignment*(self: QListWidgetItem, ): cint =

  fcQListWidgetItem_textAlignment(self.h)

proc setTextAlignment*(self: QListWidgetItem, alignment: cint): void =

  fcQListWidgetItem_setTextAlignment(self.h, alignment)

proc setTextAlignmentWithAlignment*(self: QListWidgetItem, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQListWidgetItem_setTextAlignmentWithAlignment(self.h, cint(alignment))

proc setTextAlignment2*(self: QListWidgetItem, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQListWidgetItem_setTextAlignment2(self.h, cint(alignment))

proc background*(self: QListWidgetItem, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQListWidgetItem_background(self.h))

proc setBackground*(self: QListWidgetItem, brush: gen_qbrush.QBrush): void =

  fcQListWidgetItem_setBackground(self.h, brush.h)

proc foreground*(self: QListWidgetItem, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQListWidgetItem_foreground(self.h))

proc setForeground*(self: QListWidgetItem, brush: gen_qbrush.QBrush): void =

  fcQListWidgetItem_setForeground(self.h, brush.h)

proc checkState*(self: QListWidgetItem, ): gen_qnamespace.CheckState =

  gen_qnamespace.CheckState(fcQListWidgetItem_checkState(self.h))

proc setCheckState*(self: QListWidgetItem, state: gen_qnamespace.CheckState): void =

  fcQListWidgetItem_setCheckState(self.h, cint(state))

proc sizeHint*(self: QListWidgetItem, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQListWidgetItem_sizeHint(self.h))

proc setSizeHint*(self: QListWidgetItem, size: gen_qsize.QSize): void =

  fcQListWidgetItem_setSizeHint(self.h, size.h)

proc data*(self: QListWidgetItem, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQListWidgetItem_data(self.h, role))

proc setData*(self: QListWidgetItem, role: cint, value: gen_qvariant.QVariant): void =

  fcQListWidgetItem_setData(self.h, role, value.h)

proc operatorLesser*(self: QListWidgetItem, other: QListWidgetItem): bool =

  fcQListWidgetItem_operatorLesser(self.h, other.h)

proc read*(self: QListWidgetItem, inVal: gen_qdatastream.QDataStream): void =

  fcQListWidgetItem_read(self.h, inVal.h)

proc write*(self: QListWidgetItem, outVal: gen_qdatastream.QDataStream): void =

  fcQListWidgetItem_write(self.h, outVal.h)

proc operatorAssign*(self: QListWidgetItem, other: QListWidgetItem): void =

  fcQListWidgetItem_operatorAssign(self.h, other.h)

proc typeX*(self: QListWidgetItem, ): cint =

  fcQListWidgetItem_typeX(self.h)

proc callVirtualBase_clone(self: QListWidgetItem, ): QListWidgetItem =


  QListWidgetItem(h: fQListWidgetItem_virtualbase_clone(self.h))

type QListWidgetItemcloneBase* = proc(): QListWidgetItem
proc onclone*(self: QListWidgetItem, slot: proc(super: QListWidgetItemcloneBase): QListWidgetItem) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetItemcloneBase): QListWidgetItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidgetItem_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidgetItem_clone(self: ptr cQListWidgetItem, slot: int): pointer {.exportc: "miqt_exec_callback_QListWidgetItem_clone ".} =
  type Cb = proc(super: QListWidgetItemcloneBase): QListWidgetItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QListWidgetItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_data(self: QListWidgetItem, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQListWidgetItem_virtualbase_data(self.h, role))

type QListWidgetItemdataBase* = proc(role: cint): gen_qvariant.QVariant
proc ondata*(self: QListWidgetItem, slot: proc(super: QListWidgetItemdataBase, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetItemdataBase, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidgetItem_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidgetItem_data(self: ptr cQListWidgetItem, slot: int, role: cint): pointer {.exportc: "miqt_exec_callback_QListWidgetItem_data ".} =
  type Cb = proc(super: QListWidgetItemdataBase, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(role: cint): auto =
    callVirtualBase_data(QListWidgetItem(h: self), role)
  let slotval1 = role


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setData(self: QListWidgetItem, role: cint, value: gen_qvariant.QVariant): void =


  fQListWidgetItem_virtualbase_setData(self.h, role, value.h)

type QListWidgetItemsetDataBase* = proc(role: cint, value: gen_qvariant.QVariant): void
proc onsetData*(self: QListWidgetItem, slot: proc(super: QListWidgetItemsetDataBase, role: cint, value: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetItemsetDataBase, role: cint, value: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidgetItem_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidgetItem_setData(self: ptr cQListWidgetItem, slot: int, role: cint, value: pointer): void {.exportc: "miqt_exec_callback_QListWidgetItem_setData ".} =
  type Cb = proc(super: QListWidgetItemsetDataBase, role: cint, value: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(role: cint, value: gen_qvariant.QVariant): auto =
    callVirtualBase_setData(QListWidgetItem(h: self), role, value)
  let slotval1 = role

  let slotval2 = gen_qvariant.QVariant(h: value)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_operatorLesser(self: QListWidgetItem, other: QListWidgetItem): bool =


  fQListWidgetItem_virtualbase_operatorLesser(self.h, other.h)

type QListWidgetItemoperatorLesserBase* = proc(other: QListWidgetItem): bool
proc onoperatorLesser*(self: QListWidgetItem, slot: proc(super: QListWidgetItemoperatorLesserBase, other: QListWidgetItem): bool) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetItemoperatorLesserBase, other: QListWidgetItem): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidgetItem_override_virtual_operatorLesser(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidgetItem_operatorLesser(self: ptr cQListWidgetItem, slot: int, other: pointer): bool {.exportc: "miqt_exec_callback_QListWidgetItem_operatorLesser ".} =
  type Cb = proc(super: QListWidgetItemoperatorLesserBase, other: QListWidgetItem): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: QListWidgetItem): auto =
    callVirtualBase_operatorLesser(QListWidgetItem(h: self), other)
  let slotval1 = QListWidgetItem(h: other)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_read(self: QListWidgetItem, inVal: gen_qdatastream.QDataStream): void =


  fQListWidgetItem_virtualbase_read(self.h, inVal.h)

type QListWidgetItemreadBase* = proc(inVal: gen_qdatastream.QDataStream): void
proc onread*(self: QListWidgetItem, slot: proc(super: QListWidgetItemreadBase, inVal: gen_qdatastream.QDataStream): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetItemreadBase, inVal: gen_qdatastream.QDataStream): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidgetItem_override_virtual_read(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidgetItem_read(self: ptr cQListWidgetItem, slot: int, inVal: pointer): void {.exportc: "miqt_exec_callback_QListWidgetItem_read ".} =
  type Cb = proc(super: QListWidgetItemreadBase, inVal: gen_qdatastream.QDataStream): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(inVal: gen_qdatastream.QDataStream): auto =
    callVirtualBase_read(QListWidgetItem(h: self), inVal)
  let slotval1 = gen_qdatastream.QDataStream(h: inVal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_write(self: QListWidgetItem, outVal: gen_qdatastream.QDataStream): void =


  fQListWidgetItem_virtualbase_write(self.h, outVal.h)

type QListWidgetItemwriteBase* = proc(outVal: gen_qdatastream.QDataStream): void
proc onwrite*(self: QListWidgetItem, slot: proc(super: QListWidgetItemwriteBase, outVal: gen_qdatastream.QDataStream): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetItemwriteBase, outVal: gen_qdatastream.QDataStream): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidgetItem_override_virtual_write(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidgetItem_write(self: ptr cQListWidgetItem, slot: int, outVal: pointer): void {.exportc: "miqt_exec_callback_QListWidgetItem_write ".} =
  type Cb = proc(super: QListWidgetItemwriteBase, outVal: gen_qdatastream.QDataStream): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(outVal: gen_qdatastream.QDataStream): auto =
    callVirtualBase_write(QListWidgetItem(h: self), outVal)
  let slotval1 = gen_qdatastream.QDataStream(h: outVal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QListWidgetItem) =
  fcQListWidgetItem_delete(self.h)

func init*(T: type QListWidget, h: ptr cQListWidget): QListWidget =
  T(h: h)
proc create*(T: type QListWidget, parent: gen_qwidget.QWidget): QListWidget =

  QListWidget.init(fcQListWidget_new(parent.h))
proc create*(T: type QListWidget, ): QListWidget =

  QListWidget.init(fcQListWidget_new2())
proc metaObject*(self: QListWidget, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQListWidget_metaObject(self.h))

proc metacast*(self: QListWidget, param1: cstring): pointer =

  fcQListWidget_metacast(self.h, param1)

proc metacall*(self: QListWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQListWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QListWidget, s: cstring): string =

  let v_ms = fcQListWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSelectionModel*(self: QListWidget, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void =

  fcQListWidget_setSelectionModel(self.h, selectionModel.h)

proc item*(self: QListWidget, row: cint): QListWidgetItem =

  QListWidgetItem(h: fcQListWidget_item(self.h, row))

proc row*(self: QListWidget, item: QListWidgetItem): cint =

  fcQListWidget_row(self.h, item.h)

proc insertItem*(self: QListWidget, row: cint, item: QListWidgetItem): void =

  fcQListWidget_insertItem(self.h, row, item.h)

proc insertItem2*(self: QListWidget, row: cint, label: string): void =

  fcQListWidget_insertItem2(self.h, row, struct_miqt_string(data: label, len: csize_t(len(label))))

proc insertItems*(self: QListWidget, row: cint, labels: seq[string]): void =

  var labels_CArray = newSeq[struct_miqt_string](len(labels))
  for i in 0..<len(labels):
    labels_CArray[i] = struct_miqt_string(data: labels[i], len: csize_t(len(labels[i])))

  fcQListWidget_insertItems(self.h, row, struct_miqt_array(len: csize_t(len(labels)), data: if len(labels) == 0: nil else: addr(labels_CArray[0])))

proc addItem*(self: QListWidget, label: string): void =

  fcQListWidget_addItem(self.h, struct_miqt_string(data: label, len: csize_t(len(label))))

proc addItemWithItem*(self: QListWidget, item: QListWidgetItem): void =

  fcQListWidget_addItemWithItem(self.h, item.h)

proc addItems*(self: QListWidget, labels: seq[string]): void =

  var labels_CArray = newSeq[struct_miqt_string](len(labels))
  for i in 0..<len(labels):
    labels_CArray[i] = struct_miqt_string(data: labels[i], len: csize_t(len(labels[i])))

  fcQListWidget_addItems(self.h, struct_miqt_array(len: csize_t(len(labels)), data: if len(labels) == 0: nil else: addr(labels_CArray[0])))

proc takeItem*(self: QListWidget, row: cint): QListWidgetItem =

  QListWidgetItem(h: fcQListWidget_takeItem(self.h, row))

proc count*(self: QListWidget, ): cint =

  fcQListWidget_count(self.h)

proc currentItem*(self: QListWidget, ): QListWidgetItem =

  QListWidgetItem(h: fcQListWidget_currentItem(self.h))

proc setCurrentItem*(self: QListWidget, item: QListWidgetItem): void =

  fcQListWidget_setCurrentItem(self.h, item.h)

proc setCurrentItem2*(self: QListWidget, item: QListWidgetItem, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void =

  fcQListWidget_setCurrentItem2(self.h, item.h, cint(command))

proc currentRow*(self: QListWidget, ): cint =

  fcQListWidget_currentRow(self.h)

proc setCurrentRow*(self: QListWidget, row: cint): void =

  fcQListWidget_setCurrentRow(self.h, row)

proc setCurrentRow2*(self: QListWidget, row: cint, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void =

  fcQListWidget_setCurrentRow2(self.h, row, cint(command))

proc itemAt*(self: QListWidget, p: gen_qpoint.QPoint): QListWidgetItem =

  QListWidgetItem(h: fcQListWidget_itemAt(self.h, p.h))

proc itemAt2*(self: QListWidget, x: cint, y: cint): QListWidgetItem =

  QListWidgetItem(h: fcQListWidget_itemAt2(self.h, x, y))

proc visualItemRect*(self: QListWidget, item: QListWidgetItem): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQListWidget_visualItemRect(self.h, item.h))

proc sortItems*(self: QListWidget, ): void =

  fcQListWidget_sortItems(self.h)

proc setSortingEnabled*(self: QListWidget, enable: bool): void =

  fcQListWidget_setSortingEnabled(self.h, enable)

proc isSortingEnabled*(self: QListWidget, ): bool =

  fcQListWidget_isSortingEnabled(self.h)

proc editItem*(self: QListWidget, item: QListWidgetItem): void =

  fcQListWidget_editItem(self.h, item.h)

proc openPersistentEditor*(self: QListWidget, item: QListWidgetItem): void =

  fcQListWidget_openPersistentEditor(self.h, item.h)

proc closePersistentEditor*(self: QListWidget, item: QListWidgetItem): void =

  fcQListWidget_closePersistentEditor(self.h, item.h)

proc isPersistentEditorOpen*(self: QListWidget, item: QListWidgetItem): bool =

  fcQListWidget_isPersistentEditorOpen(self.h, item.h)

proc itemWidget*(self: QListWidget, item: QListWidgetItem): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQListWidget_itemWidget(self.h, item.h))

proc setItemWidget*(self: QListWidget, item: QListWidgetItem, widget: gen_qwidget.QWidget): void =

  fcQListWidget_setItemWidget(self.h, item.h, widget.h)

proc removeItemWidget*(self: QListWidget, item: QListWidgetItem): void =

  fcQListWidget_removeItemWidget(self.h, item.h)

proc selectedItems*(self: QListWidget, ): seq[QListWidgetItem] =

  var v_ma = fcQListWidget_selectedItems(self.h)
  var vx_ret = newSeq[QListWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QListWidgetItem(h: v_outCast[i])
  vx_ret

proc findItems*(self: QListWidget, text: string, flags: gen_qnamespace.MatchFlag): seq[QListWidgetItem] =

  var v_ma = fcQListWidget_findItems(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(flags))
  var vx_ret = newSeq[QListWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QListWidgetItem(h: v_outCast[i])
  vx_ret

proc items*(self: QListWidget, data: gen_qmimedata.QMimeData): seq[QListWidgetItem] =

  var v_ma = fcQListWidget_items(self.h, data.h)
  var vx_ret = newSeq[QListWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QListWidgetItem(h: v_outCast[i])
  vx_ret

proc indexFromItem*(self: QListWidget, item: QListWidgetItem): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQListWidget_indexFromItem(self.h, item.h))

proc itemFromIndex*(self: QListWidget, index: gen_qabstractitemmodel.QModelIndex): QListWidgetItem =

  QListWidgetItem(h: fcQListWidget_itemFromIndex(self.h, index.h))

proc scrollToItem*(self: QListWidget, item: QListWidgetItem): void =

  fcQListWidget_scrollToItem(self.h, item.h)

proc clear*(self: QListWidget, ): void =

  fcQListWidget_clear(self.h)

proc itemPressed*(self: QListWidget, item: QListWidgetItem): void =

  fcQListWidget_itemPressed(self.h, item.h)

proc miqt_exec_callback_QListWidget_itemPressed(slot: int, item: pointer) {.exportc.} =
  type Cb = proc(item: QListWidgetItem)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QListWidgetItem(h: item)


  nimfunc[](slotval1)

proc onitemPressed*(self: QListWidget, slot: proc(item: QListWidgetItem)) =
  type Cb = proc(item: QListWidgetItem)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQListWidget_connect_itemPressed(self.h, cast[int](addr tmp[]))
proc itemClicked*(self: QListWidget, item: QListWidgetItem): void =

  fcQListWidget_itemClicked(self.h, item.h)

proc miqt_exec_callback_QListWidget_itemClicked(slot: int, item: pointer) {.exportc.} =
  type Cb = proc(item: QListWidgetItem)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QListWidgetItem(h: item)


  nimfunc[](slotval1)

proc onitemClicked*(self: QListWidget, slot: proc(item: QListWidgetItem)) =
  type Cb = proc(item: QListWidgetItem)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQListWidget_connect_itemClicked(self.h, cast[int](addr tmp[]))
proc itemDoubleClicked*(self: QListWidget, item: QListWidgetItem): void =

  fcQListWidget_itemDoubleClicked(self.h, item.h)

proc miqt_exec_callback_QListWidget_itemDoubleClicked(slot: int, item: pointer) {.exportc.} =
  type Cb = proc(item: QListWidgetItem)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QListWidgetItem(h: item)


  nimfunc[](slotval1)

proc onitemDoubleClicked*(self: QListWidget, slot: proc(item: QListWidgetItem)) =
  type Cb = proc(item: QListWidgetItem)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQListWidget_connect_itemDoubleClicked(self.h, cast[int](addr tmp[]))
proc itemActivated*(self: QListWidget, item: QListWidgetItem): void =

  fcQListWidget_itemActivated(self.h, item.h)

proc miqt_exec_callback_QListWidget_itemActivated(slot: int, item: pointer) {.exportc.} =
  type Cb = proc(item: QListWidgetItem)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QListWidgetItem(h: item)


  nimfunc[](slotval1)

proc onitemActivated*(self: QListWidget, slot: proc(item: QListWidgetItem)) =
  type Cb = proc(item: QListWidgetItem)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQListWidget_connect_itemActivated(self.h, cast[int](addr tmp[]))
proc itemEntered*(self: QListWidget, item: QListWidgetItem): void =

  fcQListWidget_itemEntered(self.h, item.h)

proc miqt_exec_callback_QListWidget_itemEntered(slot: int, item: pointer) {.exportc.} =
  type Cb = proc(item: QListWidgetItem)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QListWidgetItem(h: item)


  nimfunc[](slotval1)

proc onitemEntered*(self: QListWidget, slot: proc(item: QListWidgetItem)) =
  type Cb = proc(item: QListWidgetItem)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQListWidget_connect_itemEntered(self.h, cast[int](addr tmp[]))
proc itemChanged*(self: QListWidget, item: QListWidgetItem): void =

  fcQListWidget_itemChanged(self.h, item.h)

proc miqt_exec_callback_QListWidget_itemChanged(slot: int, item: pointer) {.exportc.} =
  type Cb = proc(item: QListWidgetItem)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QListWidgetItem(h: item)


  nimfunc[](slotval1)

proc onitemChanged*(self: QListWidget, slot: proc(item: QListWidgetItem)) =
  type Cb = proc(item: QListWidgetItem)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQListWidget_connect_itemChanged(self.h, cast[int](addr tmp[]))
proc currentItemChanged*(self: QListWidget, current: QListWidgetItem, previous: QListWidgetItem): void =

  fcQListWidget_currentItemChanged(self.h, current.h, previous.h)

proc miqt_exec_callback_QListWidget_currentItemChanged(slot: int, current: pointer, previous: pointer) {.exportc.} =
  type Cb = proc(current: QListWidgetItem, previous: QListWidgetItem)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QListWidgetItem(h: current)

  let slotval2 = QListWidgetItem(h: previous)


  nimfunc[](slotval1, slotval2)

proc oncurrentItemChanged*(self: QListWidget, slot: proc(current: QListWidgetItem, previous: QListWidgetItem)) =
  type Cb = proc(current: QListWidgetItem, previous: QListWidgetItem)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQListWidget_connect_currentItemChanged(self.h, cast[int](addr tmp[]))
proc currentTextChanged*(self: QListWidget, currentText: string): void =

  fcQListWidget_currentTextChanged(self.h, struct_miqt_string(data: currentText, len: csize_t(len(currentText))))

proc miqt_exec_callback_QListWidget_currentTextChanged(slot: int, currentText: struct_miqt_string) {.exportc.} =
  type Cb = proc(currentText: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vcurrentText_ms = currentText
  let vcurrentTextx_ret = string.fromBytes(toOpenArrayByte(vcurrentText_ms.data, 0, int(vcurrentText_ms.len)-1))
  c_free(vcurrentText_ms.data)
  let slotval1 = vcurrentTextx_ret


  nimfunc[](slotval1)

proc oncurrentTextChanged*(self: QListWidget, slot: proc(currentText: string)) =
  type Cb = proc(currentText: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQListWidget_connect_currentTextChanged(self.h, cast[int](addr tmp[]))
proc currentRowChanged*(self: QListWidget, currentRow: cint): void =

  fcQListWidget_currentRowChanged(self.h, currentRow)

proc miqt_exec_callback_QListWidget_currentRowChanged(slot: int, currentRow: cint) {.exportc.} =
  type Cb = proc(currentRow: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = currentRow


  nimfunc[](slotval1)

proc oncurrentRowChanged*(self: QListWidget, slot: proc(currentRow: cint)) =
  type Cb = proc(currentRow: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQListWidget_connect_currentRowChanged(self.h, cast[int](addr tmp[]))
proc itemSelectionChanged*(self: QListWidget, ): void =

  fcQListWidget_itemSelectionChanged(self.h)

proc miqt_exec_callback_QListWidget_itemSelectionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onitemSelectionChanged*(self: QListWidget, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQListWidget_connect_itemSelectionChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QListWidget, s: cstring, c: cstring): string =

  let v_ms = fcQListWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QListWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQListWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sortItems1*(self: QListWidget, order: gen_qnamespace.SortOrder): void =

  fcQListWidget_sortItems1(self.h, cint(order))

proc scrollToItem2*(self: QListWidget, item: QListWidgetItem, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void =

  fcQListWidget_scrollToItem2(self.h, item.h, cint(hint))

proc callVirtualBase_metacall(self: QListWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQListWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QListWidgetmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QListWidget, slot: proc(super: QListWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_metacall(self: ptr cQListWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QListWidget_metacall ".} =
  type Cb = proc(super: QListWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QListWidget(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setSelectionModel(self: QListWidget, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void =


  fQListWidget_virtualbase_setSelectionModel(self.h, selectionModel.h)

type QListWidgetsetSelectionModelBase* = proc(selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
proc onsetSelectionModel*(self: QListWidget, slot: proc(super: QListWidgetsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_setSelectionModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_setSelectionModel(self: ptr cQListWidget, slot: int, selectionModel: pointer): void {.exportc: "miqt_exec_callback_QListWidget_setSelectionModel ".} =
  type Cb = proc(super: QListWidgetsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selectionModel: gen_qitemselectionmodel.QItemSelectionModel): auto =
    callVirtualBase_setSelectionModel(QListWidget(h: self), selectionModel)
  let slotval1 = gen_qitemselectionmodel.QItemSelectionModel(h: selectionModel)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dropEvent(self: QListWidget, event: gen_qevent.QDropEvent): void =


  fQListWidget_virtualbase_dropEvent(self.h, event.h)

type QListWidgetdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QListWidget, slot: proc(super: QListWidgetdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_dropEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_dropEvent ".} =
  type Cb = proc(super: QListWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QListWidget(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QListWidget, e: gen_qcoreevent.QEvent): bool =


  fQListWidget_virtualbase_event(self.h, e.h)

type QListWidgeteventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QListWidget, slot: proc(super: QListWidgeteventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QListWidgeteventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_event(self: ptr cQListWidget, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QListWidget_event ".} =
  type Cb = proc(super: QListWidgeteventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QListWidget(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mimeTypes(self: QListWidget, ): seq[string] =


  var v_ma = fQListWidget_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QListWidgetmimeTypesBase* = proc(): seq[string]
proc onmimeTypes*(self: QListWidget, slot: proc(super: QListWidgetmimeTypesBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetmimeTypesBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_mimeTypes(self: ptr cQListWidget, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QListWidget_mimeTypes ".} =
  type Cb = proc(super: QListWidgetmimeTypesBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mimeTypes(QListWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_mimeData(self: QListWidget, items: seq[QListWidgetItem]): gen_qmimedata.QMimeData =

  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h


  gen_qmimedata.QMimeData(h: fQListWidget_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0]))))

type QListWidgetmimeDataBase* = proc(items: seq[QListWidgetItem]): gen_qmimedata.QMimeData
proc onmimeData*(self: QListWidget, slot: proc(super: QListWidgetmimeDataBase, items: seq[QListWidgetItem]): gen_qmimedata.QMimeData) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetmimeDataBase, items: seq[QListWidgetItem]): gen_qmimedata.QMimeData
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_mimeData(self: ptr cQListWidget, slot: int, items: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QListWidget_mimeData ".} =
  type Cb = proc(super: QListWidgetmimeDataBase, items: seq[QListWidgetItem]): gen_qmimedata.QMimeData
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(items: seq[QListWidgetItem]): auto =
    callVirtualBase_mimeData(QListWidget(h: self), items)
  var vitems_ma = items
  var vitemsx_ret = newSeq[QListWidgetItem](int(vitems_ma.len))
  let vitems_outCast = cast[ptr UncheckedArray[pointer]](vitems_ma.data)
  for i in 0 ..< vitems_ma.len:
    vitemsx_ret[i] = QListWidgetItem(h: vitems_outCast[i])
  let slotval1 = vitemsx_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_dropMimeData(self: QListWidget, index: cint, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction): bool =


  fQListWidget_virtualbase_dropMimeData(self.h, index, data.h, cint(action))

type QListWidgetdropMimeDataBase* = proc(index: cint, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction): bool
proc ondropMimeData*(self: QListWidget, slot: proc(super: QListWidgetdropMimeDataBase, index: cint, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction): bool) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetdropMimeDataBase, index: cint, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_dropMimeData(self: ptr cQListWidget, slot: int, index: cint, data: pointer, action: cint): bool {.exportc: "miqt_exec_callback_QListWidget_dropMimeData ".} =
  type Cb = proc(super: QListWidgetdropMimeDataBase, index: cint, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: cint, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction): auto =
    callVirtualBase_dropMimeData(QListWidget(h: self), index, data, action)
  let slotval1 = index

  let slotval2 = gen_qmimedata.QMimeData(h: data)

  let slotval3 = gen_qnamespace.DropAction(action)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_supportedDropActions(self: QListWidget, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQListWidget_virtualbase_supportedDropActions(self.h))

type QListWidgetsupportedDropActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDropActions*(self: QListWidget, slot: proc(super: QListWidgetsupportedDropActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetsupportedDropActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_supportedDropActions(self: ptr cQListWidget, slot: int): cint {.exportc: "miqt_exec_callback_QListWidget_supportedDropActions ".} =
  type Cb = proc(super: QListWidgetsupportedDropActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDropActions(QListWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_visualRect(self: QListWidget, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect =


  gen_qrect.QRect(h: fQListWidget_virtualbase_visualRect(self.h, index.h))

type QListWidgetvisualRectBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
proc onvisualRect*(self: QListWidget, slot: proc(super: QListWidgetvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_visualRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_visualRect(self: ptr cQListWidget, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QListWidget_visualRect ".} =
  type Cb = proc(super: QListWidgetvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_visualRect(QListWidget(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_scrollTo(self: QListWidget, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void =


  fQListWidget_virtualbase_scrollTo(self.h, index.h, cint(hint))

type QListWidgetscrollToBase* = proc(index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
proc onscrollTo*(self: QListWidget, slot: proc(super: QListWidgetscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_scrollTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_scrollTo(self: ptr cQListWidget, slot: int, index: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QListWidget_scrollTo ".} =
  type Cb = proc(super: QListWidgetscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): auto =
    callVirtualBase_scrollTo(QListWidget(h: self), index, hint)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemview.QAbstractItemViewScrollHint(hint)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_indexAt(self: QListWidget, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQListWidget_virtualbase_indexAt(self.h, p.h))

type QListWidgetindexAtBase* = proc(p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
proc onindexAt*(self: QListWidget, slot: proc(super: QListWidgetindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_indexAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_indexAt(self: ptr cQListWidget, slot: int, p: pointer): pointer {.exportc: "miqt_exec_callback_QListWidget_indexAt ".} =
  type Cb = proc(super: QListWidgetindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(p: gen_qpoint.QPoint): auto =
    callVirtualBase_indexAt(QListWidget(h: self), p)
  let slotval1 = gen_qpoint.QPoint(h: p)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_doItemsLayout(self: QListWidget, ): void =


  fQListWidget_virtualbase_doItemsLayout(self.h)

type QListWidgetdoItemsLayoutBase* = proc(): void
proc ondoItemsLayout*(self: QListWidget, slot: proc(super: QListWidgetdoItemsLayoutBase): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetdoItemsLayoutBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_doItemsLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_doItemsLayout(self: ptr cQListWidget, slot: int): void {.exportc: "miqt_exec_callback_QListWidget_doItemsLayout ".} =
  type Cb = proc(super: QListWidgetdoItemsLayoutBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_doItemsLayout(QListWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_reset(self: QListWidget, ): void =


  fQListWidget_virtualbase_reset(self.h)

type QListWidgetresetBase* = proc(): void
proc onreset*(self: QListWidget, slot: proc(super: QListWidgetresetBase): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetresetBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_reset(self: ptr cQListWidget, slot: int): void {.exportc: "miqt_exec_callback_QListWidget_reset ".} =
  type Cb = proc(super: QListWidgetresetBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QListWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_setRootIndex(self: QListWidget, index: gen_qabstractitemmodel.QModelIndex): void =


  fQListWidget_virtualbase_setRootIndex(self.h, index.h)

type QListWidgetsetRootIndexBase* = proc(index: gen_qabstractitemmodel.QModelIndex): void
proc onsetRootIndex*(self: QListWidget, slot: proc(super: QListWidgetsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_setRootIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_setRootIndex(self: ptr cQListWidget, slot: int, index: pointer): void {.exportc: "miqt_exec_callback_QListWidget_setRootIndex ".} =
  type Cb = proc(super: QListWidgetsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_setRootIndex(QListWidget(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_scrollContentsBy(self: QListWidget, dx: cint, dy: cint): void =


  fQListWidget_virtualbase_scrollContentsBy(self.h, dx, dy)

type QListWidgetscrollContentsByBase* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: QListWidget, slot: proc(super: QListWidgetscrollContentsByBase, dx: cint, dy: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetscrollContentsByBase, dx: cint, dy: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_scrollContentsBy(self: ptr cQListWidget, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QListWidget_scrollContentsBy ".} =
  type Cb = proc(super: QListWidgetscrollContentsByBase, dx: cint, dy: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(dx: cint, dy: cint): auto =
    callVirtualBase_scrollContentsBy(QListWidget(h: self), dx, dy)
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_dataChanged(self: QListWidget, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void =

  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]


  fQListWidget_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

type QListWidgetdataChangedBase* = proc(topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
proc ondataChanged*(self: QListWidget, slot: proc(super: QListWidgetdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_dataChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_dataChanged(self: ptr cQListWidget, slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.exportc: "miqt_exec_callback_QListWidget_dataChanged ".} =
  type Cb = proc(super: QListWidgetdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): auto =
    callVirtualBase_dataChanged(QListWidget(h: self), topLeft, bottomRight, roles)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_rowsInserted(self: QListWidget, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void =


  fQListWidget_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

type QListWidgetrowsInsertedBase* = proc(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
proc onrowsInserted*(self: QListWidget, slot: proc(super: QListWidgetrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_rowsInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_rowsInserted(self: ptr cQListWidget, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QListWidget_rowsInserted ".} =
  type Cb = proc(super: QListWidgetrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): auto =
    callVirtualBase_rowsInserted(QListWidget(h: self), parent, start, endVal)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_rowsAboutToBeRemoved(self: QListWidget, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void =


  fQListWidget_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

type QListWidgetrowsAboutToBeRemovedBase* = proc(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
proc onrowsAboutToBeRemoved*(self: QListWidget, slot: proc(super: QListWidgetrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_rowsAboutToBeRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_rowsAboutToBeRemoved(self: ptr cQListWidget, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QListWidget_rowsAboutToBeRemoved ".} =
  type Cb = proc(super: QListWidgetrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): auto =
    callVirtualBase_rowsAboutToBeRemoved(QListWidget(h: self), parent, start, endVal)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_mouseMoveEvent(self: QListWidget, e: gen_qevent.QMouseEvent): void =


  fQListWidget_virtualbase_mouseMoveEvent(self.h, e.h)

type QListWidgetmouseMoveEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QListWidget, slot: proc(super: QListWidgetmouseMoveEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetmouseMoveEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_mouseMoveEvent(self: ptr cQListWidget, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListWidget_mouseMoveEvent ".} =
  type Cb = proc(super: QListWidgetmouseMoveEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QListWidget(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QListWidget, e: gen_qevent.QMouseEvent): void =


  fQListWidget_virtualbase_mouseReleaseEvent(self.h, e.h)

type QListWidgetmouseReleaseEventBase* = proc(e: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QListWidget, slot: proc(super: QListWidgetmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_mouseReleaseEvent(self: ptr cQListWidget, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListWidget_mouseReleaseEvent ".} =
  type Cb = proc(super: QListWidgetmouseReleaseEventBase, e: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QListWidget(h: self), e)
  let slotval1 = gen_qevent.QMouseEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QListWidget, e: gen_qevent.QWheelEvent): void =


  fQListWidget_virtualbase_wheelEvent(self.h, e.h)

type QListWidgetwheelEventBase* = proc(e: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QListWidget, slot: proc(super: QListWidgetwheelEventBase, e: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetwheelEventBase, e: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_wheelEvent(self: ptr cQListWidget, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListWidget_wheelEvent ".} =
  type Cb = proc(super: QListWidgetwheelEventBase, e: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QListWidget(h: self), e)
  let slotval1 = gen_qevent.QWheelEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QListWidget, e: gen_qcoreevent.QTimerEvent): void =


  fQListWidget_virtualbase_timerEvent(self.h, e.h)

type QListWidgettimerEventBase* = proc(e: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QListWidget, slot: proc(super: QListWidgettimerEventBase, e: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgettimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_timerEvent(self: ptr cQListWidget, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListWidget_timerEvent ".} =
  type Cb = proc(super: QListWidgettimerEventBase, e: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QListWidget(h: self), e)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QListWidget, e: gen_qevent.QResizeEvent): void =


  fQListWidget_virtualbase_resizeEvent(self.h, e.h)

type QListWidgetresizeEventBase* = proc(e: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QListWidget, slot: proc(super: QListWidgetresizeEventBase, e: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetresizeEventBase, e: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_resizeEvent(self: ptr cQListWidget, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListWidget_resizeEvent ".} =
  type Cb = proc(super: QListWidgetresizeEventBase, e: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QListWidget(h: self), e)
  let slotval1 = gen_qevent.QResizeEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QListWidget, e: gen_qevent.QDragMoveEvent): void =


  fQListWidget_virtualbase_dragMoveEvent(self.h, e.h)

type QListWidgetdragMoveEventBase* = proc(e: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QListWidget, slot: proc(super: QListWidgetdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_dragMoveEvent(self: ptr cQListWidget, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListWidget_dragMoveEvent ".} =
  type Cb = proc(super: QListWidgetdragMoveEventBase, e: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QListWidget(h: self), e)
  let slotval1 = gen_qevent.QDragMoveEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QListWidget, e: gen_qevent.QDragLeaveEvent): void =


  fQListWidget_virtualbase_dragLeaveEvent(self.h, e.h)

type QListWidgetdragLeaveEventBase* = proc(e: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QListWidget, slot: proc(super: QListWidgetdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_dragLeaveEvent(self: ptr cQListWidget, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListWidget_dragLeaveEvent ".} =
  type Cb = proc(super: QListWidgetdragLeaveEventBase, e: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QListWidget(h: self), e)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_startDrag(self: QListWidget, supportedActions: gen_qnamespace.DropAction): void =


  fQListWidget_virtualbase_startDrag(self.h, cint(supportedActions))

type QListWidgetstartDragBase* = proc(supportedActions: gen_qnamespace.DropAction): void
proc onstartDrag*(self: QListWidget, slot: proc(super: QListWidgetstartDragBase, supportedActions: gen_qnamespace.DropAction): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetstartDragBase, supportedActions: gen_qnamespace.DropAction): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_startDrag(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_startDrag(self: ptr cQListWidget, slot: int, supportedActions: cint): void {.exportc: "miqt_exec_callback_QListWidget_startDrag ".} =
  type Cb = proc(super: QListWidgetstartDragBase, supportedActions: gen_qnamespace.DropAction): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(supportedActions: gen_qnamespace.DropAction): auto =
    callVirtualBase_startDrag(QListWidget(h: self), supportedActions)
  let slotval1 = gen_qnamespace.DropAction(supportedActions)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initViewItemOption(self: QListWidget, option: gen_qstyleoption.QStyleOptionViewItem): void =


  fQListWidget_virtualbase_initViewItemOption(self.h, option.h)

type QListWidgetinitViewItemOptionBase* = proc(option: gen_qstyleoption.QStyleOptionViewItem): void
proc oninitViewItemOption*(self: QListWidget, slot: proc(super: QListWidgetinitViewItemOptionBase, option: gen_qstyleoption.QStyleOptionViewItem): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetinitViewItemOptionBase, option: gen_qstyleoption.QStyleOptionViewItem): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_initViewItemOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_initViewItemOption(self: ptr cQListWidget, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QListWidget_initViewItemOption ".} =
  type Cb = proc(super: QListWidgetinitViewItemOptionBase, option: gen_qstyleoption.QStyleOptionViewItem): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionViewItem): auto =
    callVirtualBase_initViewItemOption(QListWidget(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionViewItem(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QListWidget, e: gen_qevent.QPaintEvent): void =


  fQListWidget_virtualbase_paintEvent(self.h, e.h)

type QListWidgetpaintEventBase* = proc(e: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QListWidget, slot: proc(super: QListWidgetpaintEventBase, e: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetpaintEventBase, e: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_paintEvent(self: ptr cQListWidget, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QListWidget_paintEvent ".} =
  type Cb = proc(super: QListWidgetpaintEventBase, e: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QListWidget(h: self), e)
  let slotval1 = gen_qevent.QPaintEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalOffset(self: QListWidget, ): cint =


  fQListWidget_virtualbase_horizontalOffset(self.h)

type QListWidgethorizontalOffsetBase* = proc(): cint
proc onhorizontalOffset*(self: QListWidget, slot: proc(super: QListWidgethorizontalOffsetBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QListWidgethorizontalOffsetBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_horizontalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_horizontalOffset(self: ptr cQListWidget, slot: int): cint {.exportc: "miqt_exec_callback_QListWidget_horizontalOffset ".} =
  type Cb = proc(super: QListWidgethorizontalOffsetBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_horizontalOffset(QListWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_verticalOffset(self: QListWidget, ): cint =


  fQListWidget_virtualbase_verticalOffset(self.h)

type QListWidgetverticalOffsetBase* = proc(): cint
proc onverticalOffset*(self: QListWidget, slot: proc(super: QListWidgetverticalOffsetBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetverticalOffsetBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_verticalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_verticalOffset(self: ptr cQListWidget, slot: int): cint {.exportc: "miqt_exec_callback_QListWidget_verticalOffset ".} =
  type Cb = proc(super: QListWidgetverticalOffsetBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_verticalOffset(QListWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_moveCursor(self: QListWidget, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQListWidget_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

type QListWidgetmoveCursorBase* = proc(cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
proc onmoveCursor*(self: QListWidget, slot: proc(super: QListWidgetmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_moveCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_moveCursor(self: ptr cQListWidget, slot: int, cursorAction: cint, modifiers: cint): pointer {.exportc: "miqt_exec_callback_QListWidget_moveCursor ".} =
  type Cb = proc(super: QListWidgetmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): auto =
    callVirtualBase_moveCursor(QListWidget(h: self), cursorAction, modifiers)
  let slotval1 = gen_qabstractitemview.QAbstractItemViewCursorAction(cursorAction)

  let slotval2 = gen_qnamespace.KeyboardModifier(modifiers)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_setSelection(self: QListWidget, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void =


  fQListWidget_virtualbase_setSelection(self.h, rect.h, cint(command))

type QListWidgetsetSelectionBase* = proc(rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
proc onsetSelection*(self: QListWidget, slot: proc(super: QListWidgetsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_setSelection(self: ptr cQListWidget, slot: int, rect: pointer, command: cint): void {.exportc: "miqt_exec_callback_QListWidget_setSelection ".} =
  type Cb = proc(super: QListWidgetsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): auto =
    callVirtualBase_setSelection(QListWidget(h: self), rect, command)
  let slotval1 = gen_qrect.QRect(h: rect)

  let slotval2 = gen_qitemselectionmodel.QItemSelectionModelSelectionFlag(command)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_visualRegionForSelection(self: QListWidget, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion =


  gen_qregion.QRegion(h: fQListWidget_virtualbase_visualRegionForSelection(self.h, selection.h))

type QListWidgetvisualRegionForSelectionBase* = proc(selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
proc onvisualRegionForSelection*(self: QListWidget, slot: proc(super: QListWidgetvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_visualRegionForSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_visualRegionForSelection(self: ptr cQListWidget, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QListWidget_visualRegionForSelection ".} =
  type Cb = proc(super: QListWidgetvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selection: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_visualRegionForSelection(QListWidget(h: self), selection)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_selectedIndexes(self: QListWidget, ): seq[gen_qabstractitemmodel.QModelIndex] =


  var v_ma = fQListWidget_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

type QListWidgetselectedIndexesBase* = proc(): seq[gen_qabstractitemmodel.QModelIndex]
proc onselectedIndexes*(self: QListWidget, slot: proc(super: QListWidgetselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_selectedIndexes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_selectedIndexes(self: ptr cQListWidget, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QListWidget_selectedIndexes ".} =
  type Cb = proc(super: QListWidgetselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_selectedIndexes(QListWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_updateGeometries(self: QListWidget, ): void =


  fQListWidget_virtualbase_updateGeometries(self.h)

type QListWidgetupdateGeometriesBase* = proc(): void
proc onupdateGeometries*(self: QListWidget, slot: proc(super: QListWidgetupdateGeometriesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetupdateGeometriesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_updateGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_updateGeometries(self: ptr cQListWidget, slot: int): void {.exportc: "miqt_exec_callback_QListWidget_updateGeometries ".} =
  type Cb = proc(super: QListWidgetupdateGeometriesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateGeometries(QListWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_isIndexHidden(self: QListWidget, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQListWidget_virtualbase_isIndexHidden(self.h, index.h)

type QListWidgetisIndexHiddenBase* = proc(index: gen_qabstractitemmodel.QModelIndex): bool
proc onisIndexHidden*(self: QListWidget, slot: proc(super: QListWidgetisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_isIndexHidden(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_isIndexHidden(self: ptr cQListWidget, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QListWidget_isIndexHidden ".} =
  type Cb = proc(super: QListWidgetisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_isIndexHidden(QListWidget(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_selectionChanged(self: QListWidget, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void =


  fQListWidget_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

type QListWidgetselectionChangedBase* = proc(selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
proc onselectionChanged*(self: QListWidget, slot: proc(super: QListWidgetselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_selectionChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_selectionChanged(self: ptr cQListWidget, slot: int, selected: pointer, deselected: pointer): void {.exportc: "miqt_exec_callback_QListWidget_selectionChanged ".} =
  type Cb = proc(super: QListWidgetselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_selectionChanged(QListWidget(h: self), selected, deselected)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel.QItemSelection(h: deselected)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_currentChanged(self: QListWidget, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void =


  fQListWidget_virtualbase_currentChanged(self.h, current.h, previous.h)

type QListWidgetcurrentChangedBase* = proc(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
proc oncurrentChanged*(self: QListWidget, slot: proc(super: QListWidgetcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_currentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_currentChanged(self: ptr cQListWidget, slot: int, current: pointer, previous: pointer): void {.exportc: "miqt_exec_callback_QListWidget_currentChanged ".} =
  type Cb = proc(super: QListWidgetcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_currentChanged(QListWidget(h: self), current, previous)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: previous)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_viewportSizeHint(self: QListWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQListWidget_virtualbase_viewportSizeHint(self.h))

type QListWidgetviewportSizeHintBase* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: QListWidget, slot: proc(super: QListWidgetviewportSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetviewportSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_viewportSizeHint(self: ptr cQListWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QListWidget_viewportSizeHint ".} =
  type Cb = proc(super: QListWidgetviewportSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewportSizeHint(QListWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_keyboardSearch(self: QListWidget, search: string): void =


  fQListWidget_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

type QListWidgetkeyboardSearchBase* = proc(search: string): void
proc onkeyboardSearch*(self: QListWidget, slot: proc(super: QListWidgetkeyboardSearchBase, search: string): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetkeyboardSearchBase, search: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_keyboardSearch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_keyboardSearch(self: ptr cQListWidget, slot: int, search: struct_miqt_string): void {.exportc: "miqt_exec_callback_QListWidget_keyboardSearch ".} =
  type Cb = proc(super: QListWidgetkeyboardSearchBase, search: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(search: string): auto =
    callVirtualBase_keyboardSearch(QListWidget(h: self), search)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sizeHintForRow(self: QListWidget, row: cint): cint =


  fQListWidget_virtualbase_sizeHintForRow(self.h, row)

type QListWidgetsizeHintForRowBase* = proc(row: cint): cint
proc onsizeHintForRow*(self: QListWidget, slot: proc(super: QListWidgetsizeHintForRowBase, row: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetsizeHintForRowBase, row: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_sizeHintForRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_sizeHintForRow(self: ptr cQListWidget, slot: int, row: cint): cint {.exportc: "miqt_exec_callback_QListWidget_sizeHintForRow ".} =
  type Cb = proc(super: QListWidgetsizeHintForRowBase, row: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint): auto =
    callVirtualBase_sizeHintForRow(QListWidget(h: self), row)
  let slotval1 = row


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_sizeHintForColumn(self: QListWidget, column: cint): cint =


  fQListWidget_virtualbase_sizeHintForColumn(self.h, column)

type QListWidgetsizeHintForColumnBase* = proc(column: cint): cint
proc onsizeHintForColumn*(self: QListWidget, slot: proc(super: QListWidgetsizeHintForColumnBase, column: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetsizeHintForColumnBase, column: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_sizeHintForColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_sizeHintForColumn(self: ptr cQListWidget, slot: int, column: cint): cint {.exportc: "miqt_exec_callback_QListWidget_sizeHintForColumn ".} =
  type Cb = proc(super: QListWidgetsizeHintForColumnBase, column: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint): auto =
    callVirtualBase_sizeHintForColumn(QListWidget(h: self), column)
  let slotval1 = column


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_itemDelegateForIndex(self: QListWidget, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemdelegate.QAbstractItemDelegate =


  gen_qabstractitemdelegate.QAbstractItemDelegate(h: fQListWidget_virtualbase_itemDelegateForIndex(self.h, index.h))

type QListWidgetitemDelegateForIndexBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemdelegate.QAbstractItemDelegate
proc onitemDelegateForIndex*(self: QListWidget, slot: proc(super: QListWidgetitemDelegateForIndexBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemdelegate.QAbstractItemDelegate) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetitemDelegateForIndexBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemdelegate.QAbstractItemDelegate
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_itemDelegateForIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_itemDelegateForIndex(self: ptr cQListWidget, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QListWidget_itemDelegateForIndex ".} =
  type Cb = proc(super: QListWidgetitemDelegateForIndexBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemdelegate.QAbstractItemDelegate
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_itemDelegateForIndex(QListWidget(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_inputMethodQuery(self: QListWidget, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQListWidget_virtualbase_inputMethodQuery(self.h, cint(query)))

type QListWidgetinputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QListWidget, slot: proc(super: QListWidgetinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_inputMethodQuery(self: ptr cQListWidget, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QListWidget_inputMethodQuery ".} =
  type Cb = proc(super: QListWidgetinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QListWidget(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_selectAll(self: QListWidget, ): void =


  fQListWidget_virtualbase_selectAll(self.h)

type QListWidgetselectAllBase* = proc(): void
proc onselectAll*(self: QListWidget, slot: proc(super: QListWidgetselectAllBase): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetselectAllBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_selectAll(self: ptr cQListWidget, slot: int): void {.exportc: "miqt_exec_callback_QListWidget_selectAll ".} =
  type Cb = proc(super: QListWidgetselectAllBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_selectAll(QListWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_updateEditorData(self: QListWidget, ): void =


  fQListWidget_virtualbase_updateEditorData(self.h)

type QListWidgetupdateEditorDataBase* = proc(): void
proc onupdateEditorData*(self: QListWidget, slot: proc(super: QListWidgetupdateEditorDataBase): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetupdateEditorDataBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_updateEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_updateEditorData(self: ptr cQListWidget, slot: int): void {.exportc: "miqt_exec_callback_QListWidget_updateEditorData ".} =
  type Cb = proc(super: QListWidgetupdateEditorDataBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateEditorData(QListWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_updateEditorGeometries(self: QListWidget, ): void =


  fQListWidget_virtualbase_updateEditorGeometries(self.h)

type QListWidgetupdateEditorGeometriesBase* = proc(): void
proc onupdateEditorGeometries*(self: QListWidget, slot: proc(super: QListWidgetupdateEditorGeometriesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetupdateEditorGeometriesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_updateEditorGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_updateEditorGeometries(self: ptr cQListWidget, slot: int): void {.exportc: "miqt_exec_callback_QListWidget_updateEditorGeometries ".} =
  type Cb = proc(super: QListWidgetupdateEditorGeometriesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateEditorGeometries(QListWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_verticalScrollbarAction(self: QListWidget, action: cint): void =


  fQListWidget_virtualbase_verticalScrollbarAction(self.h, action)

type QListWidgetverticalScrollbarActionBase* = proc(action: cint): void
proc onverticalScrollbarAction*(self: QListWidget, slot: proc(super: QListWidgetverticalScrollbarActionBase, action: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetverticalScrollbarActionBase, action: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_verticalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_verticalScrollbarAction(self: ptr cQListWidget, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QListWidget_verticalScrollbarAction ".} =
  type Cb = proc(super: QListWidgetverticalScrollbarActionBase, action: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(action: cint): auto =
    callVirtualBase_verticalScrollbarAction(QListWidget(h: self), action)
  let slotval1 = action


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalScrollbarAction(self: QListWidget, action: cint): void =


  fQListWidget_virtualbase_horizontalScrollbarAction(self.h, action)

type QListWidgethorizontalScrollbarActionBase* = proc(action: cint): void
proc onhorizontalScrollbarAction*(self: QListWidget, slot: proc(super: QListWidgethorizontalScrollbarActionBase, action: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgethorizontalScrollbarActionBase, action: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_horizontalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_horizontalScrollbarAction(self: ptr cQListWidget, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QListWidget_horizontalScrollbarAction ".} =
  type Cb = proc(super: QListWidgethorizontalScrollbarActionBase, action: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(action: cint): auto =
    callVirtualBase_horizontalScrollbarAction(QListWidget(h: self), action)
  let slotval1 = action


  nimfunc[](superCall, slotval1)
proc callVirtualBase_verticalScrollbarValueChanged(self: QListWidget, value: cint): void =


  fQListWidget_virtualbase_verticalScrollbarValueChanged(self.h, value)

type QListWidgetverticalScrollbarValueChangedBase* = proc(value: cint): void
proc onverticalScrollbarValueChanged*(self: QListWidget, slot: proc(super: QListWidgetverticalScrollbarValueChangedBase, value: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetverticalScrollbarValueChangedBase, value: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_verticalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_verticalScrollbarValueChanged(self: ptr cQListWidget, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QListWidget_verticalScrollbarValueChanged ".} =
  type Cb = proc(super: QListWidgetverticalScrollbarValueChangedBase, value: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: cint): auto =
    callVirtualBase_verticalScrollbarValueChanged(QListWidget(h: self), value)
  let slotval1 = value


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalScrollbarValueChanged(self: QListWidget, value: cint): void =


  fQListWidget_virtualbase_horizontalScrollbarValueChanged(self.h, value)

type QListWidgethorizontalScrollbarValueChangedBase* = proc(value: cint): void
proc onhorizontalScrollbarValueChanged*(self: QListWidget, slot: proc(super: QListWidgethorizontalScrollbarValueChangedBase, value: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgethorizontalScrollbarValueChangedBase, value: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_horizontalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_horizontalScrollbarValueChanged(self: ptr cQListWidget, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QListWidget_horizontalScrollbarValueChanged ".} =
  type Cb = proc(super: QListWidgethorizontalScrollbarValueChangedBase, value: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: cint): auto =
    callVirtualBase_horizontalScrollbarValueChanged(QListWidget(h: self), value)
  let slotval1 = value


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEditor(self: QListWidget, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void =


  fQListWidget_virtualbase_closeEditor(self.h, editor.h, cint(hint))

type QListWidgetcloseEditorBase* = proc(editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
proc oncloseEditor*(self: QListWidget, slot: proc(super: QListWidgetcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_closeEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_closeEditor(self: ptr cQListWidget, slot: int, editor: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QListWidget_closeEditor ".} =
  type Cb = proc(super: QListWidgetcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): auto =
    callVirtualBase_closeEditor(QListWidget(h: self), editor, hint)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint(hint)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_commitData(self: QListWidget, editor: gen_qwidget.QWidget): void =


  fQListWidget_virtualbase_commitData(self.h, editor.h)

type QListWidgetcommitDataBase* = proc(editor: gen_qwidget.QWidget): void
proc oncommitData*(self: QListWidget, slot: proc(super: QListWidgetcommitDataBase, editor: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetcommitDataBase, editor: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_commitData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_commitData(self: ptr cQListWidget, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QListWidget_commitData ".} =
  type Cb = proc(super: QListWidgetcommitDataBase, editor: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget): auto =
    callVirtualBase_commitData(QListWidget(h: self), editor)
  let slotval1 = gen_qwidget.QWidget(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_editorDestroyed(self: QListWidget, editor: gen_qobject.QObject): void =


  fQListWidget_virtualbase_editorDestroyed(self.h, editor.h)

type QListWidgeteditorDestroyedBase* = proc(editor: gen_qobject.QObject): void
proc oneditorDestroyed*(self: QListWidget, slot: proc(super: QListWidgeteditorDestroyedBase, editor: gen_qobject.QObject): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgeteditorDestroyedBase, editor: gen_qobject.QObject): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_editorDestroyed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_editorDestroyed(self: ptr cQListWidget, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QListWidget_editorDestroyed ".} =
  type Cb = proc(super: QListWidgeteditorDestroyedBase, editor: gen_qobject.QObject): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qobject.QObject): auto =
    callVirtualBase_editorDestroyed(QListWidget(h: self), editor)
  let slotval1 = gen_qobject.QObject(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_edit2(self: QListWidget, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool =


  fQListWidget_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

type QListWidgetedit2Base* = proc(index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
proc onedit2*(self: QListWidget, slot: proc(super: QListWidgetedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_edit2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_edit2(self: ptr cQListWidget, slot: int, index: pointer, trigger: cint, event: pointer): bool {.exportc: "miqt_exec_callback_QListWidget_edit2 ".} =
  type Cb = proc(super: QListWidgetedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_edit2(QListWidget(h: self), index, trigger, event)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemview.QAbstractItemViewEditTrigger(trigger)

  let slotval3 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_selectionCommand(self: QListWidget, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag =


  gen_qitemselectionmodel.QItemSelectionModelSelectionFlag(fQListWidget_virtualbase_selectionCommand(self.h, index.h, event.h))

type QListWidgetselectionCommandBase* = proc(index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
proc onselectionCommand*(self: QListWidget, slot: proc(super: QListWidgetselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_selectionCommand(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_selectionCommand(self: ptr cQListWidget, slot: int, index: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QListWidget_selectionCommand ".} =
  type Cb = proc(super: QListWidgetselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_selectionCommand(QListWidget(h: self), index, event)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  cint(virtualReturn)
proc callVirtualBase_focusNextPrevChild(self: QListWidget, next: bool): bool =


  fQListWidget_virtualbase_focusNextPrevChild(self.h, next)

type QListWidgetfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QListWidget, slot: proc(super: QListWidgetfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_focusNextPrevChild(self: ptr cQListWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QListWidget_focusNextPrevChild ".} =
  type Cb = proc(super: QListWidgetfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QListWidget(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_viewportEvent(self: QListWidget, event: gen_qcoreevent.QEvent): bool =


  fQListWidget_virtualbase_viewportEvent(self.h, event.h)

type QListWidgetviewportEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: QListWidget, slot: proc(super: QListWidgetviewportEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_viewportEvent(self: ptr cQListWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QListWidget_viewportEvent ".} =
  type Cb = proc(super: QListWidgetviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_viewportEvent(QListWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QListWidget, event: gen_qevent.QMouseEvent): void =


  fQListWidget_virtualbase_mousePressEvent(self.h, event.h)

type QListWidgetmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QListWidget, slot: proc(super: QListWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_mousePressEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_mousePressEvent ".} =
  type Cb = proc(super: QListWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QListWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QListWidget, event: gen_qevent.QMouseEvent): void =


  fQListWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QListWidgetmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QListWidget, slot: proc(super: QListWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_mouseDoubleClickEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QListWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QListWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QListWidget, event: gen_qevent.QDragEnterEvent): void =


  fQListWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QListWidgetdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QListWidget, slot: proc(super: QListWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_dragEnterEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_dragEnterEvent ".} =
  type Cb = proc(super: QListWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QListWidget(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QListWidget, event: gen_qevent.QFocusEvent): void =


  fQListWidget_virtualbase_focusInEvent(self.h, event.h)

type QListWidgetfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QListWidget, slot: proc(super: QListWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_focusInEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_focusInEvent ".} =
  type Cb = proc(super: QListWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QListWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QListWidget, event: gen_qevent.QFocusEvent): void =


  fQListWidget_virtualbase_focusOutEvent(self.h, event.h)

type QListWidgetfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QListWidget, slot: proc(super: QListWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_focusOutEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_focusOutEvent ".} =
  type Cb = proc(super: QListWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QListWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QListWidget, event: gen_qevent.QKeyEvent): void =


  fQListWidget_virtualbase_keyPressEvent(self.h, event.h)

type QListWidgetkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QListWidget, slot: proc(super: QListWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_keyPressEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_keyPressEvent ".} =
  type Cb = proc(super: QListWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QListWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QListWidget, event: gen_qevent.QInputMethodEvent): void =


  fQListWidget_virtualbase_inputMethodEvent(self.h, event.h)

type QListWidgetinputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QListWidget, slot: proc(super: QListWidgetinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_inputMethodEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_inputMethodEvent ".} =
  type Cb = proc(super: QListWidgetinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QListWidget(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QListWidget, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQListWidget_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QListWidgeteventFilterBase* = proc(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QListWidget, slot: proc(super: QListWidgeteventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QListWidgeteventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_eventFilter(self: ptr cQListWidget, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QListWidget_eventFilter ".} =
  type Cb = proc(super: QListWidgeteventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QListWidget(h: self), objectVal, event)
  let slotval1 = gen_qobject.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_minimumSizeHint(self: QListWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQListWidget_virtualbase_minimumSizeHint(self.h))

type QListWidgetminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QListWidget, slot: proc(super: QListWidgetminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_minimumSizeHint(self: ptr cQListWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QListWidget_minimumSizeHint ".} =
  type Cb = proc(super: QListWidgetminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QListWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHint(self: QListWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQListWidget_virtualbase_sizeHint(self.h))

type QListWidgetsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QListWidget, slot: proc(super: QListWidgetsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_sizeHint(self: ptr cQListWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QListWidget_sizeHint ".} =
  type Cb = proc(super: QListWidgetsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QListWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setupViewport(self: QListWidget, viewport: gen_qwidget.QWidget): void =


  fQListWidget_virtualbase_setupViewport(self.h, viewport.h)

type QListWidgetsetupViewportBase* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: QListWidget, slot: proc(super: QListWidgetsetupViewportBase, viewport: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_setupViewport(self: ptr cQListWidget, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QListWidget_setupViewport ".} =
  type Cb = proc(super: QListWidgetsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(viewport: gen_qwidget.QWidget): auto =
    callVirtualBase_setupViewport(QListWidget(h: self), viewport)
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QListWidget, param1: gen_qevent.QContextMenuEvent): void =


  fQListWidget_virtualbase_contextMenuEvent(self.h, param1.h)

type QListWidgetcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QListWidget, slot: proc(super: QListWidgetcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_contextMenuEvent(self: ptr cQListWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QListWidget_contextMenuEvent ".} =
  type Cb = proc(super: QListWidgetcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QListWidget(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QListWidget, param1: gen_qcoreevent.QEvent): void =


  fQListWidget_virtualbase_changeEvent(self.h, param1.h)

type QListWidgetchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QListWidget, slot: proc(super: QListWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_changeEvent(self: ptr cQListWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QListWidget_changeEvent ".} =
  type Cb = proc(super: QListWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QListWidget(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initStyleOption(self: QListWidget, option: gen_qstyleoption.QStyleOptionFrame): void =


  fQListWidget_virtualbase_initStyleOption(self.h, option.h)

type QListWidgetinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionFrame): void
proc oninitStyleOption*(self: QListWidget, slot: proc(super: QListWidgetinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_initStyleOption(self: ptr cQListWidget, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QListWidget_initStyleOption ".} =
  type Cb = proc(super: QListWidgetinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionFrame): auto =
    callVirtualBase_initStyleOption(QListWidget(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionFrame(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QListWidget, ): cint =


  fQListWidget_virtualbase_devType(self.h)

type QListWidgetdevTypeBase* = proc(): cint
proc ondevType*(self: QListWidget, slot: proc(super: QListWidgetdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_devType(self: ptr cQListWidget, slot: int): cint {.exportc: "miqt_exec_callback_QListWidget_devType ".} =
  type Cb = proc(super: QListWidgetdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QListWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QListWidget, visible: bool): void =


  fQListWidget_virtualbase_setVisible(self.h, visible)

type QListWidgetsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QListWidget, slot: proc(super: QListWidgetsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_setVisible(self: ptr cQListWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QListWidget_setVisible ".} =
  type Cb = proc(super: QListWidgetsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QListWidget(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QListWidget, param1: cint): cint =


  fQListWidget_virtualbase_heightForWidth(self.h, param1)

type QListWidgetheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QListWidget, slot: proc(super: QListWidgetheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_heightForWidth(self: ptr cQListWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QListWidget_heightForWidth ".} =
  type Cb = proc(super: QListWidgetheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QListWidget(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QListWidget, ): bool =


  fQListWidget_virtualbase_hasHeightForWidth(self.h)

type QListWidgethasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QListWidget, slot: proc(super: QListWidgethasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QListWidgethasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_hasHeightForWidth(self: ptr cQListWidget, slot: int): bool {.exportc: "miqt_exec_callback_QListWidget_hasHeightForWidth ".} =
  type Cb = proc(super: QListWidgethasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QListWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QListWidget, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQListWidget_virtualbase_paintEngine(self.h))

type QListWidgetpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QListWidget, slot: proc(super: QListWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_paintEngine(self: ptr cQListWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QListWidget_paintEngine ".} =
  type Cb = proc(super: QListWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QListWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_keyReleaseEvent(self: QListWidget, event: gen_qevent.QKeyEvent): void =


  fQListWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QListWidgetkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QListWidget, slot: proc(super: QListWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_keyReleaseEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_keyReleaseEvent ".} =
  type Cb = proc(super: QListWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QListWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QListWidget, event: gen_qevent.QEnterEvent): void =


  fQListWidget_virtualbase_enterEvent(self.h, event.h)

type QListWidgetenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QListWidget, slot: proc(super: QListWidgetenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_enterEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_enterEvent ".} =
  type Cb = proc(super: QListWidgetenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QListWidget(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QListWidget, event: gen_qcoreevent.QEvent): void =


  fQListWidget_virtualbase_leaveEvent(self.h, event.h)

type QListWidgetleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QListWidget, slot: proc(super: QListWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_leaveEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_leaveEvent ".} =
  type Cb = proc(super: QListWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QListWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QListWidget, event: gen_qevent.QMoveEvent): void =


  fQListWidget_virtualbase_moveEvent(self.h, event.h)

type QListWidgetmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QListWidget, slot: proc(super: QListWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_moveEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_moveEvent ".} =
  type Cb = proc(super: QListWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QListWidget(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QListWidget, event: gen_qevent.QCloseEvent): void =


  fQListWidget_virtualbase_closeEvent(self.h, event.h)

type QListWidgetcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QListWidget, slot: proc(super: QListWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_closeEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_closeEvent ".} =
  type Cb = proc(super: QListWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QListWidget(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QListWidget, event: gen_qevent.QTabletEvent): void =


  fQListWidget_virtualbase_tabletEvent(self.h, event.h)

type QListWidgettabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QListWidget, slot: proc(super: QListWidgettabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_tabletEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_tabletEvent ".} =
  type Cb = proc(super: QListWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QListWidget(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QListWidget, event: gen_qevent.QActionEvent): void =


  fQListWidget_virtualbase_actionEvent(self.h, event.h)

type QListWidgetactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QListWidget, slot: proc(super: QListWidgetactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_actionEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_actionEvent ".} =
  type Cb = proc(super: QListWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QListWidget(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QListWidget, event: gen_qevent.QShowEvent): void =


  fQListWidget_virtualbase_showEvent(self.h, event.h)

type QListWidgetshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QListWidget, slot: proc(super: QListWidgetshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_showEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_showEvent ".} =
  type Cb = proc(super: QListWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QListWidget(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QListWidget, event: gen_qevent.QHideEvent): void =


  fQListWidget_virtualbase_hideEvent(self.h, event.h)

type QListWidgethideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QListWidget, slot: proc(super: QListWidgethideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_hideEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_hideEvent ".} =
  type Cb = proc(super: QListWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QListWidget(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QListWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQListWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QListWidgetnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QListWidget, slot: proc(super: QListWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_nativeEvent(self: ptr cQListWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QListWidget_nativeEvent ".} =
  type Cb = proc(super: QListWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QListWidget(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QListWidget, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQListWidget_virtualbase_metric(self.h, cint(param1))

type QListWidgetmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QListWidget, slot: proc(super: QListWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_metric(self: ptr cQListWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QListWidget_metric ".} =
  type Cb = proc(super: QListWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QListWidget(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QListWidget, painter: gen_qpainter.QPainter): void =


  fQListWidget_virtualbase_initPainter(self.h, painter.h)

type QListWidgetinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QListWidget, slot: proc(super: QListWidgetinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_initPainter(self: ptr cQListWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QListWidget_initPainter ".} =
  type Cb = proc(super: QListWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QListWidget(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QListWidget, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQListWidget_virtualbase_redirected(self.h, offset.h))

type QListWidgetredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QListWidget, slot: proc(super: QListWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_redirected(self: ptr cQListWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QListWidget_redirected ".} =
  type Cb = proc(super: QListWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QListWidget(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QListWidget, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQListWidget_virtualbase_sharedPainter(self.h))

type QListWidgetsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QListWidget, slot: proc(super: QListWidgetsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_sharedPainter(self: ptr cQListWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QListWidget_sharedPainter ".} =
  type Cb = proc(super: QListWidgetsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QListWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_childEvent(self: QListWidget, event: gen_qcoreevent.QChildEvent): void =


  fQListWidget_virtualbase_childEvent(self.h, event.h)

type QListWidgetchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QListWidget, slot: proc(super: QListWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_childEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_childEvent ".} =
  type Cb = proc(super: QListWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QListWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QListWidget, event: gen_qcoreevent.QEvent): void =


  fQListWidget_virtualbase_customEvent(self.h, event.h)

type QListWidgetcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QListWidget, slot: proc(super: QListWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_customEvent(self: ptr cQListWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QListWidget_customEvent ".} =
  type Cb = proc(super: QListWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QListWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QListWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQListWidget_virtualbase_connectNotify(self.h, signal.h)

type QListWidgetconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QListWidget, slot: proc(super: QListWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_connectNotify(self: ptr cQListWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QListWidget_connectNotify ".} =
  type Cb = proc(super: QListWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QListWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QListWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQListWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QListWidgetdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QListWidget, slot: proc(super: QListWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QListWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQListWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QListWidget_disconnectNotify(self: ptr cQListWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QListWidget_disconnectNotify ".} =
  type Cb = proc(super: QListWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QListWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QListWidget) =
  fcQListWidget_delete(self.h)
