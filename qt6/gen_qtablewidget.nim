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
{.compile("gen_qtablewidget.cpp", cflags).}


type QTableWidgetItemItemType* = cint
const
  QTableWidgetItemType* = 0
  QTableWidgetItemUserType* = 1000



import gen_qtablewidget_types
export gen_qtablewidget_types

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
  gen_qtableview,
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
  gen_qtableview,
  gen_qvariant,
  gen_qwidget

type cQTableWidgetSelectionRange*{.exportc: "QTableWidgetSelectionRange", incompleteStruct.} = object
type cQTableWidgetItem*{.exportc: "QTableWidgetItem", incompleteStruct.} = object
type cQTableWidget*{.exportc: "QTableWidget", incompleteStruct.} = object

proc fcQTableWidgetSelectionRange_new(): ptr cQTableWidgetSelectionRange {.importc: "QTableWidgetSelectionRange_new".}
proc fcQTableWidgetSelectionRange_new2(top: cint, left: cint, bottom: cint, right: cint): ptr cQTableWidgetSelectionRange {.importc: "QTableWidgetSelectionRange_new2".}
proc fcQTableWidgetSelectionRange_topRow(self: pointer, ): cint {.importc: "QTableWidgetSelectionRange_topRow".}
proc fcQTableWidgetSelectionRange_bottomRow(self: pointer, ): cint {.importc: "QTableWidgetSelectionRange_bottomRow".}
proc fcQTableWidgetSelectionRange_leftColumn(self: pointer, ): cint {.importc: "QTableWidgetSelectionRange_leftColumn".}
proc fcQTableWidgetSelectionRange_rightColumn(self: pointer, ): cint {.importc: "QTableWidgetSelectionRange_rightColumn".}
proc fcQTableWidgetSelectionRange_rowCount(self: pointer, ): cint {.importc: "QTableWidgetSelectionRange_rowCount".}
proc fcQTableWidgetSelectionRange_columnCount(self: pointer, ): cint {.importc: "QTableWidgetSelectionRange_columnCount".}
proc fcQTableWidgetSelectionRange_delete(self: pointer) {.importc: "QTableWidgetSelectionRange_delete".}
proc fcQTableWidgetItem_new(): ptr cQTableWidgetItem {.importc: "QTableWidgetItem_new".}
proc fcQTableWidgetItem_new2(text: struct_miqt_string): ptr cQTableWidgetItem {.importc: "QTableWidgetItem_new2".}
proc fcQTableWidgetItem_new3(icon: pointer, text: struct_miqt_string): ptr cQTableWidgetItem {.importc: "QTableWidgetItem_new3".}
proc fcQTableWidgetItem_new4(other: pointer): ptr cQTableWidgetItem {.importc: "QTableWidgetItem_new4".}
proc fcQTableWidgetItem_new5(typeVal: cint): ptr cQTableWidgetItem {.importc: "QTableWidgetItem_new5".}
proc fcQTableWidgetItem_new6(text: struct_miqt_string, typeVal: cint): ptr cQTableWidgetItem {.importc: "QTableWidgetItem_new6".}
proc fcQTableWidgetItem_new7(icon: pointer, text: struct_miqt_string, typeVal: cint): ptr cQTableWidgetItem {.importc: "QTableWidgetItem_new7".}
proc fcQTableWidgetItem_clone(self: pointer, ): pointer {.importc: "QTableWidgetItem_clone".}
proc fcQTableWidgetItem_tableWidget(self: pointer, ): pointer {.importc: "QTableWidgetItem_tableWidget".}
proc fcQTableWidgetItem_row(self: pointer, ): cint {.importc: "QTableWidgetItem_row".}
proc fcQTableWidgetItem_column(self: pointer, ): cint {.importc: "QTableWidgetItem_column".}
proc fcQTableWidgetItem_setSelected(self: pointer, select: bool): void {.importc: "QTableWidgetItem_setSelected".}
proc fcQTableWidgetItem_isSelected(self: pointer, ): bool {.importc: "QTableWidgetItem_isSelected".}
proc fcQTableWidgetItem_flags(self: pointer, ): cint {.importc: "QTableWidgetItem_flags".}
proc fcQTableWidgetItem_setFlags(self: pointer, flags: cint): void {.importc: "QTableWidgetItem_setFlags".}
proc fcQTableWidgetItem_text(self: pointer, ): struct_miqt_string {.importc: "QTableWidgetItem_text".}
proc fcQTableWidgetItem_setText(self: pointer, text: struct_miqt_string): void {.importc: "QTableWidgetItem_setText".}
proc fcQTableWidgetItem_icon(self: pointer, ): pointer {.importc: "QTableWidgetItem_icon".}
proc fcQTableWidgetItem_setIcon(self: pointer, icon: pointer): void {.importc: "QTableWidgetItem_setIcon".}
proc fcQTableWidgetItem_statusTip(self: pointer, ): struct_miqt_string {.importc: "QTableWidgetItem_statusTip".}
proc fcQTableWidgetItem_setStatusTip(self: pointer, statusTip: struct_miqt_string): void {.importc: "QTableWidgetItem_setStatusTip".}
proc fcQTableWidgetItem_toolTip(self: pointer, ): struct_miqt_string {.importc: "QTableWidgetItem_toolTip".}
proc fcQTableWidgetItem_setToolTip(self: pointer, toolTip: struct_miqt_string): void {.importc: "QTableWidgetItem_setToolTip".}
proc fcQTableWidgetItem_whatsThis(self: pointer, ): struct_miqt_string {.importc: "QTableWidgetItem_whatsThis".}
proc fcQTableWidgetItem_setWhatsThis(self: pointer, whatsThis: struct_miqt_string): void {.importc: "QTableWidgetItem_setWhatsThis".}
proc fcQTableWidgetItem_font(self: pointer, ): pointer {.importc: "QTableWidgetItem_font".}
proc fcQTableWidgetItem_setFont(self: pointer, font: pointer): void {.importc: "QTableWidgetItem_setFont".}
proc fcQTableWidgetItem_textAlignment(self: pointer, ): cint {.importc: "QTableWidgetItem_textAlignment".}
proc fcQTableWidgetItem_setTextAlignment(self: pointer, alignment: cint): void {.importc: "QTableWidgetItem_setTextAlignment".}
proc fcQTableWidgetItem_setTextAlignmentWithAlignment(self: pointer, alignment: cint): void {.importc: "QTableWidgetItem_setTextAlignmentWithAlignment".}
proc fcQTableWidgetItem_setTextAlignment2(self: pointer, alignment: cint): void {.importc: "QTableWidgetItem_setTextAlignment2".}
proc fcQTableWidgetItem_background(self: pointer, ): pointer {.importc: "QTableWidgetItem_background".}
proc fcQTableWidgetItem_setBackground(self: pointer, brush: pointer): void {.importc: "QTableWidgetItem_setBackground".}
proc fcQTableWidgetItem_foreground(self: pointer, ): pointer {.importc: "QTableWidgetItem_foreground".}
proc fcQTableWidgetItem_setForeground(self: pointer, brush: pointer): void {.importc: "QTableWidgetItem_setForeground".}
proc fcQTableWidgetItem_checkState(self: pointer, ): cint {.importc: "QTableWidgetItem_checkState".}
proc fcQTableWidgetItem_setCheckState(self: pointer, state: cint): void {.importc: "QTableWidgetItem_setCheckState".}
proc fcQTableWidgetItem_sizeHint(self: pointer, ): pointer {.importc: "QTableWidgetItem_sizeHint".}
proc fcQTableWidgetItem_setSizeHint(self: pointer, size: pointer): void {.importc: "QTableWidgetItem_setSizeHint".}
proc fcQTableWidgetItem_data(self: pointer, role: cint): pointer {.importc: "QTableWidgetItem_data".}
proc fcQTableWidgetItem_setData(self: pointer, role: cint, value: pointer): void {.importc: "QTableWidgetItem_setData".}
proc fcQTableWidgetItem_operatorLesser(self: pointer, other: pointer): bool {.importc: "QTableWidgetItem_operatorLesser".}
proc fcQTableWidgetItem_read(self: pointer, inVal: pointer): void {.importc: "QTableWidgetItem_read".}
proc fcQTableWidgetItem_write(self: pointer, outVal: pointer): void {.importc: "QTableWidgetItem_write".}
proc fcQTableWidgetItem_operatorAssign(self: pointer, other: pointer): void {.importc: "QTableWidgetItem_operatorAssign".}
proc fcQTableWidgetItem_typeX(self: pointer, ): cint {.importc: "QTableWidgetItem_type".}
proc fQTableWidgetItem_virtualbase_clone(self: pointer, ): pointer{.importc: "QTableWidgetItem_virtualbase_clone".}
proc fcQTableWidgetItem_override_virtual_clone(self: pointer, slot: int) {.importc: "QTableWidgetItem_override_virtual_clone".}
proc fQTableWidgetItem_virtualbase_data(self: pointer, role: cint): pointer{.importc: "QTableWidgetItem_virtualbase_data".}
proc fcQTableWidgetItem_override_virtual_data(self: pointer, slot: int) {.importc: "QTableWidgetItem_override_virtual_data".}
proc fQTableWidgetItem_virtualbase_setData(self: pointer, role: cint, value: pointer): void{.importc: "QTableWidgetItem_virtualbase_setData".}
proc fcQTableWidgetItem_override_virtual_setData(self: pointer, slot: int) {.importc: "QTableWidgetItem_override_virtual_setData".}
proc fQTableWidgetItem_virtualbase_operatorLesser(self: pointer, other: pointer): bool{.importc: "QTableWidgetItem_virtualbase_operatorLesser".}
proc fcQTableWidgetItem_override_virtual_operatorLesser(self: pointer, slot: int) {.importc: "QTableWidgetItem_override_virtual_operatorLesser".}
proc fQTableWidgetItem_virtualbase_read(self: pointer, inVal: pointer): void{.importc: "QTableWidgetItem_virtualbase_read".}
proc fcQTableWidgetItem_override_virtual_read(self: pointer, slot: int) {.importc: "QTableWidgetItem_override_virtual_read".}
proc fQTableWidgetItem_virtualbase_write(self: pointer, outVal: pointer): void{.importc: "QTableWidgetItem_virtualbase_write".}
proc fcQTableWidgetItem_override_virtual_write(self: pointer, slot: int) {.importc: "QTableWidgetItem_override_virtual_write".}
proc fcQTableWidgetItem_delete(self: pointer) {.importc: "QTableWidgetItem_delete".}
proc fcQTableWidget_new(parent: pointer): ptr cQTableWidget {.importc: "QTableWidget_new".}
proc fcQTableWidget_new2(): ptr cQTableWidget {.importc: "QTableWidget_new2".}
proc fcQTableWidget_new3(rows: cint, columns: cint): ptr cQTableWidget {.importc: "QTableWidget_new3".}
proc fcQTableWidget_new4(rows: cint, columns: cint, parent: pointer): ptr cQTableWidget {.importc: "QTableWidget_new4".}
proc fcQTableWidget_metaObject(self: pointer, ): pointer {.importc: "QTableWidget_metaObject".}
proc fcQTableWidget_metacast(self: pointer, param1: cstring): pointer {.importc: "QTableWidget_metacast".}
proc fcQTableWidget_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTableWidget_metacall".}
proc fcQTableWidget_tr(s: cstring): struct_miqt_string {.importc: "QTableWidget_tr".}
proc fcQTableWidget_setRowCount(self: pointer, rows: cint): void {.importc: "QTableWidget_setRowCount".}
proc fcQTableWidget_rowCount(self: pointer, ): cint {.importc: "QTableWidget_rowCount".}
proc fcQTableWidget_setColumnCount(self: pointer, columns: cint): void {.importc: "QTableWidget_setColumnCount".}
proc fcQTableWidget_columnCount(self: pointer, ): cint {.importc: "QTableWidget_columnCount".}
proc fcQTableWidget_row(self: pointer, item: pointer): cint {.importc: "QTableWidget_row".}
proc fcQTableWidget_column(self: pointer, item: pointer): cint {.importc: "QTableWidget_column".}
proc fcQTableWidget_item(self: pointer, row: cint, column: cint): pointer {.importc: "QTableWidget_item".}
proc fcQTableWidget_setItem(self: pointer, row: cint, column: cint, item: pointer): void {.importc: "QTableWidget_setItem".}
proc fcQTableWidget_takeItem(self: pointer, row: cint, column: cint): pointer {.importc: "QTableWidget_takeItem".}
proc fcQTableWidget_items(self: pointer, data: pointer): struct_miqt_array {.importc: "QTableWidget_items".}
proc fcQTableWidget_indexFromItem(self: pointer, item: pointer): pointer {.importc: "QTableWidget_indexFromItem".}
proc fcQTableWidget_itemFromIndex(self: pointer, index: pointer): pointer {.importc: "QTableWidget_itemFromIndex".}
proc fcQTableWidget_verticalHeaderItem(self: pointer, row: cint): pointer {.importc: "QTableWidget_verticalHeaderItem".}
proc fcQTableWidget_setVerticalHeaderItem(self: pointer, row: cint, item: pointer): void {.importc: "QTableWidget_setVerticalHeaderItem".}
proc fcQTableWidget_takeVerticalHeaderItem(self: pointer, row: cint): pointer {.importc: "QTableWidget_takeVerticalHeaderItem".}
proc fcQTableWidget_horizontalHeaderItem(self: pointer, column: cint): pointer {.importc: "QTableWidget_horizontalHeaderItem".}
proc fcQTableWidget_setHorizontalHeaderItem(self: pointer, column: cint, item: pointer): void {.importc: "QTableWidget_setHorizontalHeaderItem".}
proc fcQTableWidget_takeHorizontalHeaderItem(self: pointer, column: cint): pointer {.importc: "QTableWidget_takeHorizontalHeaderItem".}
proc fcQTableWidget_setVerticalHeaderLabels(self: pointer, labels: struct_miqt_array): void {.importc: "QTableWidget_setVerticalHeaderLabels".}
proc fcQTableWidget_setHorizontalHeaderLabels(self: pointer, labels: struct_miqt_array): void {.importc: "QTableWidget_setHorizontalHeaderLabels".}
proc fcQTableWidget_currentRow(self: pointer, ): cint {.importc: "QTableWidget_currentRow".}
proc fcQTableWidget_currentColumn(self: pointer, ): cint {.importc: "QTableWidget_currentColumn".}
proc fcQTableWidget_currentItem(self: pointer, ): pointer {.importc: "QTableWidget_currentItem".}
proc fcQTableWidget_setCurrentItem(self: pointer, item: pointer): void {.importc: "QTableWidget_setCurrentItem".}
proc fcQTableWidget_setCurrentItem2(self: pointer, item: pointer, command: cint): void {.importc: "QTableWidget_setCurrentItem2".}
proc fcQTableWidget_setCurrentCell(self: pointer, row: cint, column: cint): void {.importc: "QTableWidget_setCurrentCell".}
proc fcQTableWidget_setCurrentCell2(self: pointer, row: cint, column: cint, command: cint): void {.importc: "QTableWidget_setCurrentCell2".}
proc fcQTableWidget_sortItems(self: pointer, column: cint): void {.importc: "QTableWidget_sortItems".}
proc fcQTableWidget_setSortingEnabled(self: pointer, enable: bool): void {.importc: "QTableWidget_setSortingEnabled".}
proc fcQTableWidget_isSortingEnabled(self: pointer, ): bool {.importc: "QTableWidget_isSortingEnabled".}
proc fcQTableWidget_editItem(self: pointer, item: pointer): void {.importc: "QTableWidget_editItem".}
proc fcQTableWidget_openPersistentEditor(self: pointer, item: pointer): void {.importc: "QTableWidget_openPersistentEditor".}
proc fcQTableWidget_closePersistentEditor(self: pointer, item: pointer): void {.importc: "QTableWidget_closePersistentEditor".}
proc fcQTableWidget_isPersistentEditorOpen(self: pointer, item: pointer): bool {.importc: "QTableWidget_isPersistentEditorOpen".}
proc fcQTableWidget_cellWidget(self: pointer, row: cint, column: cint): pointer {.importc: "QTableWidget_cellWidget".}
proc fcQTableWidget_setCellWidget(self: pointer, row: cint, column: cint, widget: pointer): void {.importc: "QTableWidget_setCellWidget".}
proc fcQTableWidget_removeCellWidget(self: pointer, row: cint, column: cint): void {.importc: "QTableWidget_removeCellWidget".}
proc fcQTableWidget_setRangeSelected(self: pointer, range: pointer, select: bool): void {.importc: "QTableWidget_setRangeSelected".}
proc fcQTableWidget_selectedRanges(self: pointer, ): struct_miqt_array {.importc: "QTableWidget_selectedRanges".}
proc fcQTableWidget_selectedItems(self: pointer, ): struct_miqt_array {.importc: "QTableWidget_selectedItems".}
proc fcQTableWidget_findItems(self: pointer, text: struct_miqt_string, flags: cint): struct_miqt_array {.importc: "QTableWidget_findItems".}
proc fcQTableWidget_visualRow(self: pointer, logicalRow: cint): cint {.importc: "QTableWidget_visualRow".}
proc fcQTableWidget_visualColumn(self: pointer, logicalColumn: cint): cint {.importc: "QTableWidget_visualColumn".}
proc fcQTableWidget_itemAt(self: pointer, p: pointer): pointer {.importc: "QTableWidget_itemAt".}
proc fcQTableWidget_itemAt2(self: pointer, x: cint, y: cint): pointer {.importc: "QTableWidget_itemAt2".}
proc fcQTableWidget_visualItemRect(self: pointer, item: pointer): pointer {.importc: "QTableWidget_visualItemRect".}
proc fcQTableWidget_itemPrototype(self: pointer, ): pointer {.importc: "QTableWidget_itemPrototype".}
proc fcQTableWidget_setItemPrototype(self: pointer, item: pointer): void {.importc: "QTableWidget_setItemPrototype".}
proc fcQTableWidget_scrollToItem(self: pointer, item: pointer): void {.importc: "QTableWidget_scrollToItem".}
proc fcQTableWidget_insertRow(self: pointer, row: cint): void {.importc: "QTableWidget_insertRow".}
proc fcQTableWidget_insertColumn(self: pointer, column: cint): void {.importc: "QTableWidget_insertColumn".}
proc fcQTableWidget_removeRow(self: pointer, row: cint): void {.importc: "QTableWidget_removeRow".}
proc fcQTableWidget_removeColumn(self: pointer, column: cint): void {.importc: "QTableWidget_removeColumn".}
proc fcQTableWidget_clear(self: pointer, ): void {.importc: "QTableWidget_clear".}
proc fcQTableWidget_clearContents(self: pointer, ): void {.importc: "QTableWidget_clearContents".}
proc fcQTableWidget_itemPressed(self: pointer, item: pointer): void {.importc: "QTableWidget_itemPressed".}
proc fQTableWidget_connect_itemPressed(self: pointer, slot: int) {.importc: "QTableWidget_connect_itemPressed".}
proc fcQTableWidget_itemClicked(self: pointer, item: pointer): void {.importc: "QTableWidget_itemClicked".}
proc fQTableWidget_connect_itemClicked(self: pointer, slot: int) {.importc: "QTableWidget_connect_itemClicked".}
proc fcQTableWidget_itemDoubleClicked(self: pointer, item: pointer): void {.importc: "QTableWidget_itemDoubleClicked".}
proc fQTableWidget_connect_itemDoubleClicked(self: pointer, slot: int) {.importc: "QTableWidget_connect_itemDoubleClicked".}
proc fcQTableWidget_itemActivated(self: pointer, item: pointer): void {.importc: "QTableWidget_itemActivated".}
proc fQTableWidget_connect_itemActivated(self: pointer, slot: int) {.importc: "QTableWidget_connect_itemActivated".}
proc fcQTableWidget_itemEntered(self: pointer, item: pointer): void {.importc: "QTableWidget_itemEntered".}
proc fQTableWidget_connect_itemEntered(self: pointer, slot: int) {.importc: "QTableWidget_connect_itemEntered".}
proc fcQTableWidget_itemChanged(self: pointer, item: pointer): void {.importc: "QTableWidget_itemChanged".}
proc fQTableWidget_connect_itemChanged(self: pointer, slot: int) {.importc: "QTableWidget_connect_itemChanged".}
proc fcQTableWidget_currentItemChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QTableWidget_currentItemChanged".}
proc fQTableWidget_connect_currentItemChanged(self: pointer, slot: int) {.importc: "QTableWidget_connect_currentItemChanged".}
proc fcQTableWidget_itemSelectionChanged(self: pointer, ): void {.importc: "QTableWidget_itemSelectionChanged".}
proc fQTableWidget_connect_itemSelectionChanged(self: pointer, slot: int) {.importc: "QTableWidget_connect_itemSelectionChanged".}
proc fcQTableWidget_cellPressed(self: pointer, row: cint, column: cint): void {.importc: "QTableWidget_cellPressed".}
proc fQTableWidget_connect_cellPressed(self: pointer, slot: int) {.importc: "QTableWidget_connect_cellPressed".}
proc fcQTableWidget_cellClicked(self: pointer, row: cint, column: cint): void {.importc: "QTableWidget_cellClicked".}
proc fQTableWidget_connect_cellClicked(self: pointer, slot: int) {.importc: "QTableWidget_connect_cellClicked".}
proc fcQTableWidget_cellDoubleClicked(self: pointer, row: cint, column: cint): void {.importc: "QTableWidget_cellDoubleClicked".}
proc fQTableWidget_connect_cellDoubleClicked(self: pointer, slot: int) {.importc: "QTableWidget_connect_cellDoubleClicked".}
proc fcQTableWidget_cellActivated(self: pointer, row: cint, column: cint): void {.importc: "QTableWidget_cellActivated".}
proc fQTableWidget_connect_cellActivated(self: pointer, slot: int) {.importc: "QTableWidget_connect_cellActivated".}
proc fcQTableWidget_cellEntered(self: pointer, row: cint, column: cint): void {.importc: "QTableWidget_cellEntered".}
proc fQTableWidget_connect_cellEntered(self: pointer, slot: int) {.importc: "QTableWidget_connect_cellEntered".}
proc fcQTableWidget_cellChanged(self: pointer, row: cint, column: cint): void {.importc: "QTableWidget_cellChanged".}
proc fQTableWidget_connect_cellChanged(self: pointer, slot: int) {.importc: "QTableWidget_connect_cellChanged".}
proc fcQTableWidget_currentCellChanged(self: pointer, currentRow: cint, currentColumn: cint, previousRow: cint, previousColumn: cint): void {.importc: "QTableWidget_currentCellChanged".}
proc fQTableWidget_connect_currentCellChanged(self: pointer, slot: int) {.importc: "QTableWidget_connect_currentCellChanged".}
proc fcQTableWidget_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTableWidget_tr2".}
proc fcQTableWidget_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTableWidget_tr3".}
proc fcQTableWidget_sortItems2(self: pointer, column: cint, order: cint): void {.importc: "QTableWidget_sortItems2".}
proc fcQTableWidget_scrollToItem2(self: pointer, item: pointer, hint: cint): void {.importc: "QTableWidget_scrollToItem2".}
proc fQTableWidget_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTableWidget_virtualbase_metaObject".}
proc fcQTableWidget_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_metaObject".}
proc fQTableWidget_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTableWidget_virtualbase_metacast".}
proc fcQTableWidget_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_metacast".}
proc fQTableWidget_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTableWidget_virtualbase_metacall".}
proc fcQTableWidget_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_metacall".}
proc fQTableWidget_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QTableWidget_virtualbase_event".}
proc fcQTableWidget_override_virtual_event(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_event".}
proc fQTableWidget_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QTableWidget_virtualbase_mimeTypes".}
proc fcQTableWidget_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_mimeTypes".}
proc fQTableWidget_virtualbase_mimeData(self: pointer, items: struct_miqt_array): pointer{.importc: "QTableWidget_virtualbase_mimeData".}
proc fcQTableWidget_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_mimeData".}
proc fQTableWidget_virtualbase_dropMimeData(self: pointer, row: cint, column: cint, data: pointer, action: cint): bool{.importc: "QTableWidget_virtualbase_dropMimeData".}
proc fcQTableWidget_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_dropMimeData".}
proc fQTableWidget_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QTableWidget_virtualbase_supportedDropActions".}
proc fcQTableWidget_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_supportedDropActions".}
proc fQTableWidget_virtualbase_dropEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_dropEvent".}
proc fcQTableWidget_override_virtual_dropEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_dropEvent".}
proc fQTableWidget_virtualbase_setRootIndex(self: pointer, index: pointer): void{.importc: "QTableWidget_virtualbase_setRootIndex".}
proc fcQTableWidget_override_virtual_setRootIndex(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_setRootIndex".}
proc fQTableWidget_virtualbase_setSelectionModel(self: pointer, selectionModel: pointer): void{.importc: "QTableWidget_virtualbase_setSelectionModel".}
proc fcQTableWidget_override_virtual_setSelectionModel(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_setSelectionModel".}
proc fQTableWidget_virtualbase_doItemsLayout(self: pointer, ): void{.importc: "QTableWidget_virtualbase_doItemsLayout".}
proc fcQTableWidget_override_virtual_doItemsLayout(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_doItemsLayout".}
proc fQTableWidget_virtualbase_visualRect(self: pointer, index: pointer): pointer{.importc: "QTableWidget_virtualbase_visualRect".}
proc fcQTableWidget_override_virtual_visualRect(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_visualRect".}
proc fQTableWidget_virtualbase_scrollTo(self: pointer, index: pointer, hint: cint): void{.importc: "QTableWidget_virtualbase_scrollTo".}
proc fcQTableWidget_override_virtual_scrollTo(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_scrollTo".}
proc fQTableWidget_virtualbase_indexAt(self: pointer, p: pointer): pointer{.importc: "QTableWidget_virtualbase_indexAt".}
proc fcQTableWidget_override_virtual_indexAt(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_indexAt".}
proc fQTableWidget_virtualbase_scrollContentsBy(self: pointer, dx: cint, dy: cint): void{.importc: "QTableWidget_virtualbase_scrollContentsBy".}
proc fcQTableWidget_override_virtual_scrollContentsBy(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_scrollContentsBy".}
proc fQTableWidget_virtualbase_initViewItemOption(self: pointer, option: pointer): void{.importc: "QTableWidget_virtualbase_initViewItemOption".}
proc fcQTableWidget_override_virtual_initViewItemOption(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_initViewItemOption".}
proc fQTableWidget_virtualbase_paintEvent(self: pointer, e: pointer): void{.importc: "QTableWidget_virtualbase_paintEvent".}
proc fcQTableWidget_override_virtual_paintEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_paintEvent".}
proc fQTableWidget_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_timerEvent".}
proc fcQTableWidget_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_timerEvent".}
proc fQTableWidget_virtualbase_horizontalOffset(self: pointer, ): cint{.importc: "QTableWidget_virtualbase_horizontalOffset".}
proc fcQTableWidget_override_virtual_horizontalOffset(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_horizontalOffset".}
proc fQTableWidget_virtualbase_verticalOffset(self: pointer, ): cint{.importc: "QTableWidget_virtualbase_verticalOffset".}
proc fcQTableWidget_override_virtual_verticalOffset(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_verticalOffset".}
proc fQTableWidget_virtualbase_moveCursor(self: pointer, cursorAction: cint, modifiers: cint): pointer{.importc: "QTableWidget_virtualbase_moveCursor".}
proc fcQTableWidget_override_virtual_moveCursor(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_moveCursor".}
proc fQTableWidget_virtualbase_setSelection(self: pointer, rect: pointer, command: cint): void{.importc: "QTableWidget_virtualbase_setSelection".}
proc fcQTableWidget_override_virtual_setSelection(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_setSelection".}
proc fQTableWidget_virtualbase_visualRegionForSelection(self: pointer, selection: pointer): pointer{.importc: "QTableWidget_virtualbase_visualRegionForSelection".}
proc fcQTableWidget_override_virtual_visualRegionForSelection(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_visualRegionForSelection".}
proc fQTableWidget_virtualbase_selectedIndexes(self: pointer, ): struct_miqt_array{.importc: "QTableWidget_virtualbase_selectedIndexes".}
proc fcQTableWidget_override_virtual_selectedIndexes(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_selectedIndexes".}
proc fQTableWidget_virtualbase_updateGeometries(self: pointer, ): void{.importc: "QTableWidget_virtualbase_updateGeometries".}
proc fcQTableWidget_override_virtual_updateGeometries(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_updateGeometries".}
proc fQTableWidget_virtualbase_viewportSizeHint(self: pointer, ): pointer{.importc: "QTableWidget_virtualbase_viewportSizeHint".}
proc fcQTableWidget_override_virtual_viewportSizeHint(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_viewportSizeHint".}
proc fQTableWidget_virtualbase_sizeHintForRow(self: pointer, row: cint): cint{.importc: "QTableWidget_virtualbase_sizeHintForRow".}
proc fcQTableWidget_override_virtual_sizeHintForRow(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_sizeHintForRow".}
proc fQTableWidget_virtualbase_sizeHintForColumn(self: pointer, column: cint): cint{.importc: "QTableWidget_virtualbase_sizeHintForColumn".}
proc fcQTableWidget_override_virtual_sizeHintForColumn(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_sizeHintForColumn".}
proc fQTableWidget_virtualbase_verticalScrollbarAction(self: pointer, action: cint): void{.importc: "QTableWidget_virtualbase_verticalScrollbarAction".}
proc fcQTableWidget_override_virtual_verticalScrollbarAction(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_verticalScrollbarAction".}
proc fQTableWidget_virtualbase_horizontalScrollbarAction(self: pointer, action: cint): void{.importc: "QTableWidget_virtualbase_horizontalScrollbarAction".}
proc fcQTableWidget_override_virtual_horizontalScrollbarAction(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_horizontalScrollbarAction".}
proc fQTableWidget_virtualbase_isIndexHidden(self: pointer, index: pointer): bool{.importc: "QTableWidget_virtualbase_isIndexHidden".}
proc fcQTableWidget_override_virtual_isIndexHidden(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_isIndexHidden".}
proc fQTableWidget_virtualbase_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void{.importc: "QTableWidget_virtualbase_selectionChanged".}
proc fcQTableWidget_override_virtual_selectionChanged(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_selectionChanged".}
proc fQTableWidget_virtualbase_currentChanged(self: pointer, current: pointer, previous: pointer): void{.importc: "QTableWidget_virtualbase_currentChanged".}
proc fcQTableWidget_override_virtual_currentChanged(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_currentChanged".}
proc fQTableWidget_virtualbase_keyboardSearch(self: pointer, search: struct_miqt_string): void{.importc: "QTableWidget_virtualbase_keyboardSearch".}
proc fcQTableWidget_override_virtual_keyboardSearch(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_keyboardSearch".}
proc fQTableWidget_virtualbase_itemDelegateForIndex(self: pointer, index: pointer): pointer{.importc: "QTableWidget_virtualbase_itemDelegateForIndex".}
proc fcQTableWidget_override_virtual_itemDelegateForIndex(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_itemDelegateForIndex".}
proc fQTableWidget_virtualbase_inputMethodQuery(self: pointer, query: cint): pointer{.importc: "QTableWidget_virtualbase_inputMethodQuery".}
proc fcQTableWidget_override_virtual_inputMethodQuery(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_inputMethodQuery".}
proc fQTableWidget_virtualbase_reset(self: pointer, ): void{.importc: "QTableWidget_virtualbase_reset".}
proc fcQTableWidget_override_virtual_reset(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_reset".}
proc fQTableWidget_virtualbase_selectAll(self: pointer, ): void{.importc: "QTableWidget_virtualbase_selectAll".}
proc fcQTableWidget_override_virtual_selectAll(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_selectAll".}
proc fQTableWidget_virtualbase_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void{.importc: "QTableWidget_virtualbase_dataChanged".}
proc fcQTableWidget_override_virtual_dataChanged(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_dataChanged".}
proc fQTableWidget_virtualbase_rowsInserted(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QTableWidget_virtualbase_rowsInserted".}
proc fcQTableWidget_override_virtual_rowsInserted(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_rowsInserted".}
proc fQTableWidget_virtualbase_rowsAboutToBeRemoved(self: pointer, parent: pointer, start: cint, endVal: cint): void{.importc: "QTableWidget_virtualbase_rowsAboutToBeRemoved".}
proc fcQTableWidget_override_virtual_rowsAboutToBeRemoved(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_rowsAboutToBeRemoved".}
proc fQTableWidget_virtualbase_updateEditorData(self: pointer, ): void{.importc: "QTableWidget_virtualbase_updateEditorData".}
proc fcQTableWidget_override_virtual_updateEditorData(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_updateEditorData".}
proc fQTableWidget_virtualbase_updateEditorGeometries(self: pointer, ): void{.importc: "QTableWidget_virtualbase_updateEditorGeometries".}
proc fcQTableWidget_override_virtual_updateEditorGeometries(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_updateEditorGeometries".}
proc fQTableWidget_virtualbase_verticalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QTableWidget_virtualbase_verticalScrollbarValueChanged".}
proc fcQTableWidget_override_virtual_verticalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_verticalScrollbarValueChanged".}
proc fQTableWidget_virtualbase_horizontalScrollbarValueChanged(self: pointer, value: cint): void{.importc: "QTableWidget_virtualbase_horizontalScrollbarValueChanged".}
proc fcQTableWidget_override_virtual_horizontalScrollbarValueChanged(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_horizontalScrollbarValueChanged".}
proc fQTableWidget_virtualbase_closeEditor(self: pointer, editor: pointer, hint: cint): void{.importc: "QTableWidget_virtualbase_closeEditor".}
proc fcQTableWidget_override_virtual_closeEditor(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_closeEditor".}
proc fQTableWidget_virtualbase_commitData(self: pointer, editor: pointer): void{.importc: "QTableWidget_virtualbase_commitData".}
proc fcQTableWidget_override_virtual_commitData(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_commitData".}
proc fQTableWidget_virtualbase_editorDestroyed(self: pointer, editor: pointer): void{.importc: "QTableWidget_virtualbase_editorDestroyed".}
proc fcQTableWidget_override_virtual_editorDestroyed(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_editorDestroyed".}
proc fQTableWidget_virtualbase_edit2(self: pointer, index: pointer, trigger: cint, event: pointer): bool{.importc: "QTableWidget_virtualbase_edit2".}
proc fcQTableWidget_override_virtual_edit2(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_edit2".}
proc fQTableWidget_virtualbase_selectionCommand(self: pointer, index: pointer, event: pointer): cint{.importc: "QTableWidget_virtualbase_selectionCommand".}
proc fcQTableWidget_override_virtual_selectionCommand(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_selectionCommand".}
proc fQTableWidget_virtualbase_startDrag(self: pointer, supportedActions: cint): void{.importc: "QTableWidget_virtualbase_startDrag".}
proc fcQTableWidget_override_virtual_startDrag(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_startDrag".}
proc fQTableWidget_virtualbase_focusNextPrevChild(self: pointer, next: bool): bool{.importc: "QTableWidget_virtualbase_focusNextPrevChild".}
proc fcQTableWidget_override_virtual_focusNextPrevChild(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_focusNextPrevChild".}
proc fQTableWidget_virtualbase_viewportEvent(self: pointer, event: pointer): bool{.importc: "QTableWidget_virtualbase_viewportEvent".}
proc fcQTableWidget_override_virtual_viewportEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_viewportEvent".}
proc fQTableWidget_virtualbase_mousePressEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_mousePressEvent".}
proc fcQTableWidget_override_virtual_mousePressEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_mousePressEvent".}
proc fQTableWidget_virtualbase_mouseMoveEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_mouseMoveEvent".}
proc fcQTableWidget_override_virtual_mouseMoveEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_mouseMoveEvent".}
proc fQTableWidget_virtualbase_mouseReleaseEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_mouseReleaseEvent".}
proc fcQTableWidget_override_virtual_mouseReleaseEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_mouseReleaseEvent".}
proc fQTableWidget_virtualbase_mouseDoubleClickEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_mouseDoubleClickEvent".}
proc fcQTableWidget_override_virtual_mouseDoubleClickEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_mouseDoubleClickEvent".}
proc fQTableWidget_virtualbase_dragEnterEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_dragEnterEvent".}
proc fcQTableWidget_override_virtual_dragEnterEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_dragEnterEvent".}
proc fQTableWidget_virtualbase_dragMoveEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_dragMoveEvent".}
proc fcQTableWidget_override_virtual_dragMoveEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_dragMoveEvent".}
proc fQTableWidget_virtualbase_dragLeaveEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_dragLeaveEvent".}
proc fcQTableWidget_override_virtual_dragLeaveEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_dragLeaveEvent".}
proc fQTableWidget_virtualbase_focusInEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_focusInEvent".}
proc fcQTableWidget_override_virtual_focusInEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_focusInEvent".}
proc fQTableWidget_virtualbase_focusOutEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_focusOutEvent".}
proc fcQTableWidget_override_virtual_focusOutEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_focusOutEvent".}
proc fQTableWidget_virtualbase_keyPressEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_keyPressEvent".}
proc fcQTableWidget_override_virtual_keyPressEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_keyPressEvent".}
proc fQTableWidget_virtualbase_resizeEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_resizeEvent".}
proc fcQTableWidget_override_virtual_resizeEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_resizeEvent".}
proc fQTableWidget_virtualbase_inputMethodEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_inputMethodEvent".}
proc fcQTableWidget_override_virtual_inputMethodEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_inputMethodEvent".}
proc fQTableWidget_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QTableWidget_virtualbase_eventFilter".}
proc fcQTableWidget_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_eventFilter".}
proc fQTableWidget_virtualbase_minimumSizeHint(self: pointer, ): pointer{.importc: "QTableWidget_virtualbase_minimumSizeHint".}
proc fcQTableWidget_override_virtual_minimumSizeHint(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_minimumSizeHint".}
proc fQTableWidget_virtualbase_sizeHint(self: pointer, ): pointer{.importc: "QTableWidget_virtualbase_sizeHint".}
proc fcQTableWidget_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_sizeHint".}
proc fQTableWidget_virtualbase_setupViewport(self: pointer, viewport: pointer): void{.importc: "QTableWidget_virtualbase_setupViewport".}
proc fcQTableWidget_override_virtual_setupViewport(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_setupViewport".}
proc fQTableWidget_virtualbase_wheelEvent(self: pointer, param1: pointer): void{.importc: "QTableWidget_virtualbase_wheelEvent".}
proc fcQTableWidget_override_virtual_wheelEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_wheelEvent".}
proc fQTableWidget_virtualbase_contextMenuEvent(self: pointer, param1: pointer): void{.importc: "QTableWidget_virtualbase_contextMenuEvent".}
proc fcQTableWidget_override_virtual_contextMenuEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_contextMenuEvent".}
proc fQTableWidget_virtualbase_changeEvent(self: pointer, param1: pointer): void{.importc: "QTableWidget_virtualbase_changeEvent".}
proc fcQTableWidget_override_virtual_changeEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_changeEvent".}
proc fQTableWidget_virtualbase_initStyleOption(self: pointer, option: pointer): void{.importc: "QTableWidget_virtualbase_initStyleOption".}
proc fcQTableWidget_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_initStyleOption".}
proc fQTableWidget_virtualbase_devType(self: pointer, ): cint{.importc: "QTableWidget_virtualbase_devType".}
proc fcQTableWidget_override_virtual_devType(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_devType".}
proc fQTableWidget_virtualbase_setVisible(self: pointer, visible: bool): void{.importc: "QTableWidget_virtualbase_setVisible".}
proc fcQTableWidget_override_virtual_setVisible(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_setVisible".}
proc fQTableWidget_virtualbase_heightForWidth(self: pointer, param1: cint): cint{.importc: "QTableWidget_virtualbase_heightForWidth".}
proc fcQTableWidget_override_virtual_heightForWidth(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_heightForWidth".}
proc fQTableWidget_virtualbase_hasHeightForWidth(self: pointer, ): bool{.importc: "QTableWidget_virtualbase_hasHeightForWidth".}
proc fcQTableWidget_override_virtual_hasHeightForWidth(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_hasHeightForWidth".}
proc fQTableWidget_virtualbase_paintEngine(self: pointer, ): pointer{.importc: "QTableWidget_virtualbase_paintEngine".}
proc fcQTableWidget_override_virtual_paintEngine(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_paintEngine".}
proc fQTableWidget_virtualbase_keyReleaseEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_keyReleaseEvent".}
proc fcQTableWidget_override_virtual_keyReleaseEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_keyReleaseEvent".}
proc fQTableWidget_virtualbase_enterEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_enterEvent".}
proc fcQTableWidget_override_virtual_enterEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_enterEvent".}
proc fQTableWidget_virtualbase_leaveEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_leaveEvent".}
proc fcQTableWidget_override_virtual_leaveEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_leaveEvent".}
proc fQTableWidget_virtualbase_moveEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_moveEvent".}
proc fcQTableWidget_override_virtual_moveEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_moveEvent".}
proc fQTableWidget_virtualbase_closeEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_closeEvent".}
proc fcQTableWidget_override_virtual_closeEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_closeEvent".}
proc fQTableWidget_virtualbase_tabletEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_tabletEvent".}
proc fcQTableWidget_override_virtual_tabletEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_tabletEvent".}
proc fQTableWidget_virtualbase_actionEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_actionEvent".}
proc fcQTableWidget_override_virtual_actionEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_actionEvent".}
proc fQTableWidget_virtualbase_showEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_showEvent".}
proc fcQTableWidget_override_virtual_showEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_showEvent".}
proc fQTableWidget_virtualbase_hideEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_hideEvent".}
proc fcQTableWidget_override_virtual_hideEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_hideEvent".}
proc fQTableWidget_virtualbase_nativeEvent(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool{.importc: "QTableWidget_virtualbase_nativeEvent".}
proc fcQTableWidget_override_virtual_nativeEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_nativeEvent".}
proc fQTableWidget_virtualbase_metric(self: pointer, param1: cint): cint{.importc: "QTableWidget_virtualbase_metric".}
proc fcQTableWidget_override_virtual_metric(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_metric".}
proc fQTableWidget_virtualbase_initPainter(self: pointer, painter: pointer): void{.importc: "QTableWidget_virtualbase_initPainter".}
proc fcQTableWidget_override_virtual_initPainter(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_initPainter".}
proc fQTableWidget_virtualbase_redirected(self: pointer, offset: pointer): pointer{.importc: "QTableWidget_virtualbase_redirected".}
proc fcQTableWidget_override_virtual_redirected(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_redirected".}
proc fQTableWidget_virtualbase_sharedPainter(self: pointer, ): pointer{.importc: "QTableWidget_virtualbase_sharedPainter".}
proc fcQTableWidget_override_virtual_sharedPainter(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_sharedPainter".}
proc fQTableWidget_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_childEvent".}
proc fcQTableWidget_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_childEvent".}
proc fQTableWidget_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTableWidget_virtualbase_customEvent".}
proc fcQTableWidget_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_customEvent".}
proc fQTableWidget_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTableWidget_virtualbase_connectNotify".}
proc fcQTableWidget_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_connectNotify".}
proc fQTableWidget_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTableWidget_virtualbase_disconnectNotify".}
proc fcQTableWidget_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTableWidget_override_virtual_disconnectNotify".}
proc fcQTableWidget_staticMetaObject(): pointer {.importc: "QTableWidget_staticMetaObject".}
proc fcQTableWidget_delete(self: pointer) {.importc: "QTableWidget_delete".}


func init*(T: type QTableWidgetSelectionRange, h: ptr cQTableWidgetSelectionRange): QTableWidgetSelectionRange =
  T(h: h)
proc create*(T: type QTableWidgetSelectionRange, ): QTableWidgetSelectionRange =

  QTableWidgetSelectionRange.init(fcQTableWidgetSelectionRange_new())
proc create*(T: type QTableWidgetSelectionRange, top: cint, left: cint, bottom: cint, right: cint): QTableWidgetSelectionRange =

  QTableWidgetSelectionRange.init(fcQTableWidgetSelectionRange_new2(top, left, bottom, right))
proc topRow*(self: QTableWidgetSelectionRange, ): cint =

  fcQTableWidgetSelectionRange_topRow(self.h)

proc bottomRow*(self: QTableWidgetSelectionRange, ): cint =

  fcQTableWidgetSelectionRange_bottomRow(self.h)

proc leftColumn*(self: QTableWidgetSelectionRange, ): cint =

  fcQTableWidgetSelectionRange_leftColumn(self.h)

proc rightColumn*(self: QTableWidgetSelectionRange, ): cint =

  fcQTableWidgetSelectionRange_rightColumn(self.h)

proc rowCount*(self: QTableWidgetSelectionRange, ): cint =

  fcQTableWidgetSelectionRange_rowCount(self.h)

proc columnCount*(self: QTableWidgetSelectionRange, ): cint =

  fcQTableWidgetSelectionRange_columnCount(self.h)

proc delete*(self: QTableWidgetSelectionRange) =
  fcQTableWidgetSelectionRange_delete(self.h)

func init*(T: type QTableWidgetItem, h: ptr cQTableWidgetItem): QTableWidgetItem =
  T(h: h)
proc create*(T: type QTableWidgetItem, ): QTableWidgetItem =

  QTableWidgetItem.init(fcQTableWidgetItem_new())
proc create*(T: type QTableWidgetItem, text: string): QTableWidgetItem =

  QTableWidgetItem.init(fcQTableWidgetItem_new2(struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QTableWidgetItem, icon: gen_qicon.QIcon, text: string): QTableWidgetItem =

  QTableWidgetItem.init(fcQTableWidgetItem_new3(icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QTableWidgetItem, other: QTableWidgetItem): QTableWidgetItem =

  QTableWidgetItem.init(fcQTableWidgetItem_new4(other.h))
proc create*(T: type QTableWidgetItem, typeVal: cint): QTableWidgetItem =

  QTableWidgetItem.init(fcQTableWidgetItem_new5(typeVal))
proc create*(T: type QTableWidgetItem, text: string, typeVal: cint): QTableWidgetItem =

  QTableWidgetItem.init(fcQTableWidgetItem_new6(struct_miqt_string(data: text, len: csize_t(len(text))), typeVal))
proc create*(T: type QTableWidgetItem, icon: gen_qicon.QIcon, text: string, typeVal: cint): QTableWidgetItem =

  QTableWidgetItem.init(fcQTableWidgetItem_new7(icon.h, struct_miqt_string(data: text, len: csize_t(len(text))), typeVal))
proc clone*(self: QTableWidgetItem, ): QTableWidgetItem =

  QTableWidgetItem(h: fcQTableWidgetItem_clone(self.h))

proc tableWidget*(self: QTableWidgetItem, ): QTableWidget =

  QTableWidget(h: fcQTableWidgetItem_tableWidget(self.h))

proc row*(self: QTableWidgetItem, ): cint =

  fcQTableWidgetItem_row(self.h)

proc column*(self: QTableWidgetItem, ): cint =

  fcQTableWidgetItem_column(self.h)

proc setSelected*(self: QTableWidgetItem, select: bool): void =

  fcQTableWidgetItem_setSelected(self.h, select)

proc isSelected*(self: QTableWidgetItem, ): bool =

  fcQTableWidgetItem_isSelected(self.h)

proc flags*(self: QTableWidgetItem, ): gen_qnamespace.ItemFlag =

  gen_qnamespace.ItemFlag(fcQTableWidgetItem_flags(self.h))

proc setFlags*(self: QTableWidgetItem, flags: gen_qnamespace.ItemFlag): void =

  fcQTableWidgetItem_setFlags(self.h, cint(flags))

proc text*(self: QTableWidgetItem, ): string =

  let v_ms = fcQTableWidgetItem_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: QTableWidgetItem, text: string): void =

  fcQTableWidgetItem_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc icon*(self: QTableWidgetItem, ): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQTableWidgetItem_icon(self.h))

proc setIcon*(self: QTableWidgetItem, icon: gen_qicon.QIcon): void =

  fcQTableWidgetItem_setIcon(self.h, icon.h)

proc statusTip*(self: QTableWidgetItem, ): string =

  let v_ms = fcQTableWidgetItem_statusTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setStatusTip*(self: QTableWidgetItem, statusTip: string): void =

  fcQTableWidgetItem_setStatusTip(self.h, struct_miqt_string(data: statusTip, len: csize_t(len(statusTip))))

proc toolTip*(self: QTableWidgetItem, ): string =

  let v_ms = fcQTableWidgetItem_toolTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setToolTip*(self: QTableWidgetItem, toolTip: string): void =

  fcQTableWidgetItem_setToolTip(self.h, struct_miqt_string(data: toolTip, len: csize_t(len(toolTip))))

proc whatsThis*(self: QTableWidgetItem, ): string =

  let v_ms = fcQTableWidgetItem_whatsThis(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWhatsThis*(self: QTableWidgetItem, whatsThis: string): void =

  fcQTableWidgetItem_setWhatsThis(self.h, struct_miqt_string(data: whatsThis, len: csize_t(len(whatsThis))))

proc font*(self: QTableWidgetItem, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQTableWidgetItem_font(self.h))

proc setFont*(self: QTableWidgetItem, font: gen_qfont.QFont): void =

  fcQTableWidgetItem_setFont(self.h, font.h)

proc textAlignment*(self: QTableWidgetItem, ): cint =

  fcQTableWidgetItem_textAlignment(self.h)

proc setTextAlignment*(self: QTableWidgetItem, alignment: cint): void =

  fcQTableWidgetItem_setTextAlignment(self.h, alignment)

proc setTextAlignmentWithAlignment*(self: QTableWidgetItem, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQTableWidgetItem_setTextAlignmentWithAlignment(self.h, cint(alignment))

proc setTextAlignment2*(self: QTableWidgetItem, alignment: gen_qnamespace.AlignmentFlag): void =

  fcQTableWidgetItem_setTextAlignment2(self.h, cint(alignment))

proc background*(self: QTableWidgetItem, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQTableWidgetItem_background(self.h))

proc setBackground*(self: QTableWidgetItem, brush: gen_qbrush.QBrush): void =

  fcQTableWidgetItem_setBackground(self.h, brush.h)

proc foreground*(self: QTableWidgetItem, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQTableWidgetItem_foreground(self.h))

proc setForeground*(self: QTableWidgetItem, brush: gen_qbrush.QBrush): void =

  fcQTableWidgetItem_setForeground(self.h, brush.h)

proc checkState*(self: QTableWidgetItem, ): gen_qnamespace.CheckState =

  gen_qnamespace.CheckState(fcQTableWidgetItem_checkState(self.h))

proc setCheckState*(self: QTableWidgetItem, state: gen_qnamespace.CheckState): void =

  fcQTableWidgetItem_setCheckState(self.h, cint(state))

proc sizeHint*(self: QTableWidgetItem, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQTableWidgetItem_sizeHint(self.h))

proc setSizeHint*(self: QTableWidgetItem, size: gen_qsize.QSize): void =

  fcQTableWidgetItem_setSizeHint(self.h, size.h)

proc data*(self: QTableWidgetItem, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQTableWidgetItem_data(self.h, role))

proc setData*(self: QTableWidgetItem, role: cint, value: gen_qvariant.QVariant): void =

  fcQTableWidgetItem_setData(self.h, role, value.h)

proc operatorLesser*(self: QTableWidgetItem, other: QTableWidgetItem): bool =

  fcQTableWidgetItem_operatorLesser(self.h, other.h)

proc read*(self: QTableWidgetItem, inVal: gen_qdatastream.QDataStream): void =

  fcQTableWidgetItem_read(self.h, inVal.h)

proc write*(self: QTableWidgetItem, outVal: gen_qdatastream.QDataStream): void =

  fcQTableWidgetItem_write(self.h, outVal.h)

proc operatorAssign*(self: QTableWidgetItem, other: QTableWidgetItem): void =

  fcQTableWidgetItem_operatorAssign(self.h, other.h)

proc typeX*(self: QTableWidgetItem, ): cint =

  fcQTableWidgetItem_typeX(self.h)

proc callVirtualBase_clone(self: QTableWidgetItem, ): QTableWidgetItem =


  QTableWidgetItem(h: fQTableWidgetItem_virtualbase_clone(self.h))

type QTableWidgetItemcloneBase* = proc(): QTableWidgetItem
proc onclone*(self: QTableWidgetItem, slot: proc(super: QTableWidgetItemcloneBase): QTableWidgetItem) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetItemcloneBase): QTableWidgetItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidgetItem_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidgetItem_clone(self: ptr cQTableWidgetItem, slot: int): pointer {.exportc: "miqt_exec_callback_QTableWidgetItem_clone ".} =
  type Cb = proc(super: QTableWidgetItemcloneBase): QTableWidgetItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QTableWidgetItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_data(self: QTableWidgetItem, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQTableWidgetItem_virtualbase_data(self.h, role))

type QTableWidgetItemdataBase* = proc(role: cint): gen_qvariant.QVariant
proc ondata*(self: QTableWidgetItem, slot: proc(super: QTableWidgetItemdataBase, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetItemdataBase, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidgetItem_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidgetItem_data(self: ptr cQTableWidgetItem, slot: int, role: cint): pointer {.exportc: "miqt_exec_callback_QTableWidgetItem_data ".} =
  type Cb = proc(super: QTableWidgetItemdataBase, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(role: cint): auto =
    callVirtualBase_data(QTableWidgetItem(h: self), role)
  let slotval1 = role


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_setData(self: QTableWidgetItem, role: cint, value: gen_qvariant.QVariant): void =


  fQTableWidgetItem_virtualbase_setData(self.h, role, value.h)

type QTableWidgetItemsetDataBase* = proc(role: cint, value: gen_qvariant.QVariant): void
proc onsetData*(self: QTableWidgetItem, slot: proc(super: QTableWidgetItemsetDataBase, role: cint, value: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetItemsetDataBase, role: cint, value: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidgetItem_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidgetItem_setData(self: ptr cQTableWidgetItem, slot: int, role: cint, value: pointer): void {.exportc: "miqt_exec_callback_QTableWidgetItem_setData ".} =
  type Cb = proc(super: QTableWidgetItemsetDataBase, role: cint, value: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(role: cint, value: gen_qvariant.QVariant): auto =
    callVirtualBase_setData(QTableWidgetItem(h: self), role, value)
  let slotval1 = role

  let slotval2 = gen_qvariant.QVariant(h: value)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_operatorLesser(self: QTableWidgetItem, other: QTableWidgetItem): bool =


  fQTableWidgetItem_virtualbase_operatorLesser(self.h, other.h)

type QTableWidgetItemoperatorLesserBase* = proc(other: QTableWidgetItem): bool
proc onoperatorLesser*(self: QTableWidgetItem, slot: proc(super: QTableWidgetItemoperatorLesserBase, other: QTableWidgetItem): bool) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetItemoperatorLesserBase, other: QTableWidgetItem): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidgetItem_override_virtual_operatorLesser(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidgetItem_operatorLesser(self: ptr cQTableWidgetItem, slot: int, other: pointer): bool {.exportc: "miqt_exec_callback_QTableWidgetItem_operatorLesser ".} =
  type Cb = proc(super: QTableWidgetItemoperatorLesserBase, other: QTableWidgetItem): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: QTableWidgetItem): auto =
    callVirtualBase_operatorLesser(QTableWidgetItem(h: self), other)
  let slotval1 = QTableWidgetItem(h: other)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_read(self: QTableWidgetItem, inVal: gen_qdatastream.QDataStream): void =


  fQTableWidgetItem_virtualbase_read(self.h, inVal.h)

type QTableWidgetItemreadBase* = proc(inVal: gen_qdatastream.QDataStream): void
proc onread*(self: QTableWidgetItem, slot: proc(super: QTableWidgetItemreadBase, inVal: gen_qdatastream.QDataStream): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetItemreadBase, inVal: gen_qdatastream.QDataStream): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidgetItem_override_virtual_read(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidgetItem_read(self: ptr cQTableWidgetItem, slot: int, inVal: pointer): void {.exportc: "miqt_exec_callback_QTableWidgetItem_read ".} =
  type Cb = proc(super: QTableWidgetItemreadBase, inVal: gen_qdatastream.QDataStream): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(inVal: gen_qdatastream.QDataStream): auto =
    callVirtualBase_read(QTableWidgetItem(h: self), inVal)
  let slotval1 = gen_qdatastream.QDataStream(h: inVal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_write(self: QTableWidgetItem, outVal: gen_qdatastream.QDataStream): void =


  fQTableWidgetItem_virtualbase_write(self.h, outVal.h)

type QTableWidgetItemwriteBase* = proc(outVal: gen_qdatastream.QDataStream): void
proc onwrite*(self: QTableWidgetItem, slot: proc(super: QTableWidgetItemwriteBase, outVal: gen_qdatastream.QDataStream): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetItemwriteBase, outVal: gen_qdatastream.QDataStream): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidgetItem_override_virtual_write(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidgetItem_write(self: ptr cQTableWidgetItem, slot: int, outVal: pointer): void {.exportc: "miqt_exec_callback_QTableWidgetItem_write ".} =
  type Cb = proc(super: QTableWidgetItemwriteBase, outVal: gen_qdatastream.QDataStream): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(outVal: gen_qdatastream.QDataStream): auto =
    callVirtualBase_write(QTableWidgetItem(h: self), outVal)
  let slotval1 = gen_qdatastream.QDataStream(h: outVal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QTableWidgetItem) =
  fcQTableWidgetItem_delete(self.h)

func init*(T: type QTableWidget, h: ptr cQTableWidget): QTableWidget =
  T(h: h)
proc create*(T: type QTableWidget, parent: gen_qwidget.QWidget): QTableWidget =

  QTableWidget.init(fcQTableWidget_new(parent.h))
proc create*(T: type QTableWidget, ): QTableWidget =

  QTableWidget.init(fcQTableWidget_new2())
proc create*(T: type QTableWidget, rows: cint, columns: cint): QTableWidget =

  QTableWidget.init(fcQTableWidget_new3(rows, columns))
proc create*(T: type QTableWidget, rows: cint, columns: cint, parent: gen_qwidget.QWidget): QTableWidget =

  QTableWidget.init(fcQTableWidget_new4(rows, columns, parent.h))
proc metaObject*(self: QTableWidget, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTableWidget_metaObject(self.h))

proc metacast*(self: QTableWidget, param1: cstring): pointer =

  fcQTableWidget_metacast(self.h, param1)

proc metacall*(self: QTableWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTableWidget_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTableWidget, s: cstring): string =

  let v_ms = fcQTableWidget_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setRowCount*(self: QTableWidget, rows: cint): void =

  fcQTableWidget_setRowCount(self.h, rows)

proc rowCount*(self: QTableWidget, ): cint =

  fcQTableWidget_rowCount(self.h)

proc setColumnCount*(self: QTableWidget, columns: cint): void =

  fcQTableWidget_setColumnCount(self.h, columns)

proc columnCount*(self: QTableWidget, ): cint =

  fcQTableWidget_columnCount(self.h)

proc row*(self: QTableWidget, item: QTableWidgetItem): cint =

  fcQTableWidget_row(self.h, item.h)

proc column*(self: QTableWidget, item: QTableWidgetItem): cint =

  fcQTableWidget_column(self.h, item.h)

proc item*(self: QTableWidget, row: cint, column: cint): QTableWidgetItem =

  QTableWidgetItem(h: fcQTableWidget_item(self.h, row, column))

proc setItem*(self: QTableWidget, row: cint, column: cint, item: QTableWidgetItem): void =

  fcQTableWidget_setItem(self.h, row, column, item.h)

proc takeItem*(self: QTableWidget, row: cint, column: cint): QTableWidgetItem =

  QTableWidgetItem(h: fcQTableWidget_takeItem(self.h, row, column))

proc items*(self: QTableWidget, data: gen_qmimedata.QMimeData): seq[QTableWidgetItem] =

  var v_ma = fcQTableWidget_items(self.h, data.h)
  var vx_ret = newSeq[QTableWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QTableWidgetItem(h: v_outCast[i])
  vx_ret

proc indexFromItem*(self: QTableWidget, item: QTableWidgetItem): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQTableWidget_indexFromItem(self.h, item.h))

proc itemFromIndex*(self: QTableWidget, index: gen_qabstractitemmodel.QModelIndex): QTableWidgetItem =

  QTableWidgetItem(h: fcQTableWidget_itemFromIndex(self.h, index.h))

proc verticalHeaderItem*(self: QTableWidget, row: cint): QTableWidgetItem =

  QTableWidgetItem(h: fcQTableWidget_verticalHeaderItem(self.h, row))

proc setVerticalHeaderItem*(self: QTableWidget, row: cint, item: QTableWidgetItem): void =

  fcQTableWidget_setVerticalHeaderItem(self.h, row, item.h)

proc takeVerticalHeaderItem*(self: QTableWidget, row: cint): QTableWidgetItem =

  QTableWidgetItem(h: fcQTableWidget_takeVerticalHeaderItem(self.h, row))

proc horizontalHeaderItem*(self: QTableWidget, column: cint): QTableWidgetItem =

  QTableWidgetItem(h: fcQTableWidget_horizontalHeaderItem(self.h, column))

proc setHorizontalHeaderItem*(self: QTableWidget, column: cint, item: QTableWidgetItem): void =

  fcQTableWidget_setHorizontalHeaderItem(self.h, column, item.h)

proc takeHorizontalHeaderItem*(self: QTableWidget, column: cint): QTableWidgetItem =

  QTableWidgetItem(h: fcQTableWidget_takeHorizontalHeaderItem(self.h, column))

proc setVerticalHeaderLabels*(self: QTableWidget, labels: seq[string]): void =

  var labels_CArray = newSeq[struct_miqt_string](len(labels))
  for i in 0..<len(labels):
    labels_CArray[i] = struct_miqt_string(data: labels[i], len: csize_t(len(labels[i])))

  fcQTableWidget_setVerticalHeaderLabels(self.h, struct_miqt_array(len: csize_t(len(labels)), data: if len(labels) == 0: nil else: addr(labels_CArray[0])))

proc setHorizontalHeaderLabels*(self: QTableWidget, labels: seq[string]): void =

  var labels_CArray = newSeq[struct_miqt_string](len(labels))
  for i in 0..<len(labels):
    labels_CArray[i] = struct_miqt_string(data: labels[i], len: csize_t(len(labels[i])))

  fcQTableWidget_setHorizontalHeaderLabels(self.h, struct_miqt_array(len: csize_t(len(labels)), data: if len(labels) == 0: nil else: addr(labels_CArray[0])))

proc currentRow*(self: QTableWidget, ): cint =

  fcQTableWidget_currentRow(self.h)

proc currentColumn*(self: QTableWidget, ): cint =

  fcQTableWidget_currentColumn(self.h)

proc currentItem*(self: QTableWidget, ): QTableWidgetItem =

  QTableWidgetItem(h: fcQTableWidget_currentItem(self.h))

proc setCurrentItem*(self: QTableWidget, item: QTableWidgetItem): void =

  fcQTableWidget_setCurrentItem(self.h, item.h)

proc setCurrentItem2*(self: QTableWidget, item: QTableWidgetItem, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void =

  fcQTableWidget_setCurrentItem2(self.h, item.h, cint(command))

proc setCurrentCell*(self: QTableWidget, row: cint, column: cint): void =

  fcQTableWidget_setCurrentCell(self.h, row, column)

proc setCurrentCell2*(self: QTableWidget, row: cint, column: cint, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void =

  fcQTableWidget_setCurrentCell2(self.h, row, column, cint(command))

proc sortItems*(self: QTableWidget, column: cint): void =

  fcQTableWidget_sortItems(self.h, column)

proc setSortingEnabled*(self: QTableWidget, enable: bool): void =

  fcQTableWidget_setSortingEnabled(self.h, enable)

proc isSortingEnabled*(self: QTableWidget, ): bool =

  fcQTableWidget_isSortingEnabled(self.h)

proc editItem*(self: QTableWidget, item: QTableWidgetItem): void =

  fcQTableWidget_editItem(self.h, item.h)

proc openPersistentEditor*(self: QTableWidget, item: QTableWidgetItem): void =

  fcQTableWidget_openPersistentEditor(self.h, item.h)

proc closePersistentEditor*(self: QTableWidget, item: QTableWidgetItem): void =

  fcQTableWidget_closePersistentEditor(self.h, item.h)

proc isPersistentEditorOpen*(self: QTableWidget, item: QTableWidgetItem): bool =

  fcQTableWidget_isPersistentEditorOpen(self.h, item.h)

proc cellWidget*(self: QTableWidget, row: cint, column: cint): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQTableWidget_cellWidget(self.h, row, column))

proc setCellWidget*(self: QTableWidget, row: cint, column: cint, widget: gen_qwidget.QWidget): void =

  fcQTableWidget_setCellWidget(self.h, row, column, widget.h)

proc removeCellWidget*(self: QTableWidget, row: cint, column: cint): void =

  fcQTableWidget_removeCellWidget(self.h, row, column)

proc setRangeSelected*(self: QTableWidget, range: QTableWidgetSelectionRange, select: bool): void =

  fcQTableWidget_setRangeSelected(self.h, range.h, select)

proc selectedRanges*(self: QTableWidget, ): seq[QTableWidgetSelectionRange] =

  var v_ma = fcQTableWidget_selectedRanges(self.h)
  var vx_ret = newSeq[QTableWidgetSelectionRange](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QTableWidgetSelectionRange(h: v_outCast[i])
  vx_ret

proc selectedItems*(self: QTableWidget, ): seq[QTableWidgetItem] =

  var v_ma = fcQTableWidget_selectedItems(self.h)
  var vx_ret = newSeq[QTableWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QTableWidgetItem(h: v_outCast[i])
  vx_ret

proc findItems*(self: QTableWidget, text: string, flags: gen_qnamespace.MatchFlag): seq[QTableWidgetItem] =

  var v_ma = fcQTableWidget_findItems(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(flags))
  var vx_ret = newSeq[QTableWidgetItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QTableWidgetItem(h: v_outCast[i])
  vx_ret

proc visualRow*(self: QTableWidget, logicalRow: cint): cint =

  fcQTableWidget_visualRow(self.h, logicalRow)

proc visualColumn*(self: QTableWidget, logicalColumn: cint): cint =

  fcQTableWidget_visualColumn(self.h, logicalColumn)

proc itemAt*(self: QTableWidget, p: gen_qpoint.QPoint): QTableWidgetItem =

  QTableWidgetItem(h: fcQTableWidget_itemAt(self.h, p.h))

proc itemAt2*(self: QTableWidget, x: cint, y: cint): QTableWidgetItem =

  QTableWidgetItem(h: fcQTableWidget_itemAt2(self.h, x, y))

proc visualItemRect*(self: QTableWidget, item: QTableWidgetItem): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQTableWidget_visualItemRect(self.h, item.h))

proc itemPrototype*(self: QTableWidget, ): QTableWidgetItem =

  QTableWidgetItem(h: fcQTableWidget_itemPrototype(self.h))

proc setItemPrototype*(self: QTableWidget, item: QTableWidgetItem): void =

  fcQTableWidget_setItemPrototype(self.h, item.h)

proc scrollToItem*(self: QTableWidget, item: QTableWidgetItem): void =

  fcQTableWidget_scrollToItem(self.h, item.h)

proc insertRow*(self: QTableWidget, row: cint): void =

  fcQTableWidget_insertRow(self.h, row)

proc insertColumn*(self: QTableWidget, column: cint): void =

  fcQTableWidget_insertColumn(self.h, column)

proc removeRow*(self: QTableWidget, row: cint): void =

  fcQTableWidget_removeRow(self.h, row)

proc removeColumn*(self: QTableWidget, column: cint): void =

  fcQTableWidget_removeColumn(self.h, column)

proc clear*(self: QTableWidget, ): void =

  fcQTableWidget_clear(self.h)

proc clearContents*(self: QTableWidget, ): void =

  fcQTableWidget_clearContents(self.h)

proc itemPressed*(self: QTableWidget, item: QTableWidgetItem): void =

  fcQTableWidget_itemPressed(self.h, item.h)

proc miqt_exec_callback_QTableWidget_itemPressed(slot: int, item: pointer) {.exportc.} =
  type Cb = proc(item: QTableWidgetItem)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QTableWidgetItem(h: item)


  nimfunc[](slotval1)

proc onitemPressed*(self: QTableWidget, slot: proc(item: QTableWidgetItem)) =
  type Cb = proc(item: QTableWidgetItem)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTableWidget_connect_itemPressed(self.h, cast[int](addr tmp[]))
proc itemClicked*(self: QTableWidget, item: QTableWidgetItem): void =

  fcQTableWidget_itemClicked(self.h, item.h)

proc miqt_exec_callback_QTableWidget_itemClicked(slot: int, item: pointer) {.exportc.} =
  type Cb = proc(item: QTableWidgetItem)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QTableWidgetItem(h: item)


  nimfunc[](slotval1)

proc onitemClicked*(self: QTableWidget, slot: proc(item: QTableWidgetItem)) =
  type Cb = proc(item: QTableWidgetItem)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTableWidget_connect_itemClicked(self.h, cast[int](addr tmp[]))
proc itemDoubleClicked*(self: QTableWidget, item: QTableWidgetItem): void =

  fcQTableWidget_itemDoubleClicked(self.h, item.h)

proc miqt_exec_callback_QTableWidget_itemDoubleClicked(slot: int, item: pointer) {.exportc.} =
  type Cb = proc(item: QTableWidgetItem)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QTableWidgetItem(h: item)


  nimfunc[](slotval1)

proc onitemDoubleClicked*(self: QTableWidget, slot: proc(item: QTableWidgetItem)) =
  type Cb = proc(item: QTableWidgetItem)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTableWidget_connect_itemDoubleClicked(self.h, cast[int](addr tmp[]))
proc itemActivated*(self: QTableWidget, item: QTableWidgetItem): void =

  fcQTableWidget_itemActivated(self.h, item.h)

proc miqt_exec_callback_QTableWidget_itemActivated(slot: int, item: pointer) {.exportc.} =
  type Cb = proc(item: QTableWidgetItem)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QTableWidgetItem(h: item)


  nimfunc[](slotval1)

proc onitemActivated*(self: QTableWidget, slot: proc(item: QTableWidgetItem)) =
  type Cb = proc(item: QTableWidgetItem)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTableWidget_connect_itemActivated(self.h, cast[int](addr tmp[]))
proc itemEntered*(self: QTableWidget, item: QTableWidgetItem): void =

  fcQTableWidget_itemEntered(self.h, item.h)

proc miqt_exec_callback_QTableWidget_itemEntered(slot: int, item: pointer) {.exportc.} =
  type Cb = proc(item: QTableWidgetItem)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QTableWidgetItem(h: item)


  nimfunc[](slotval1)

proc onitemEntered*(self: QTableWidget, slot: proc(item: QTableWidgetItem)) =
  type Cb = proc(item: QTableWidgetItem)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTableWidget_connect_itemEntered(self.h, cast[int](addr tmp[]))
proc itemChanged*(self: QTableWidget, item: QTableWidgetItem): void =

  fcQTableWidget_itemChanged(self.h, item.h)

proc miqt_exec_callback_QTableWidget_itemChanged(slot: int, item: pointer) {.exportc.} =
  type Cb = proc(item: QTableWidgetItem)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QTableWidgetItem(h: item)


  nimfunc[](slotval1)

proc onitemChanged*(self: QTableWidget, slot: proc(item: QTableWidgetItem)) =
  type Cb = proc(item: QTableWidgetItem)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTableWidget_connect_itemChanged(self.h, cast[int](addr tmp[]))
proc currentItemChanged*(self: QTableWidget, current: QTableWidgetItem, previous: QTableWidgetItem): void =

  fcQTableWidget_currentItemChanged(self.h, current.h, previous.h)

proc miqt_exec_callback_QTableWidget_currentItemChanged(slot: int, current: pointer, previous: pointer) {.exportc.} =
  type Cb = proc(current: QTableWidgetItem, previous: QTableWidgetItem)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QTableWidgetItem(h: current)

  let slotval2 = QTableWidgetItem(h: previous)


  nimfunc[](slotval1, slotval2)

proc oncurrentItemChanged*(self: QTableWidget, slot: proc(current: QTableWidgetItem, previous: QTableWidgetItem)) =
  type Cb = proc(current: QTableWidgetItem, previous: QTableWidgetItem)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTableWidget_connect_currentItemChanged(self.h, cast[int](addr tmp[]))
proc itemSelectionChanged*(self: QTableWidget, ): void =

  fcQTableWidget_itemSelectionChanged(self.h)

proc miqt_exec_callback_QTableWidget_itemSelectionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onitemSelectionChanged*(self: QTableWidget, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTableWidget_connect_itemSelectionChanged(self.h, cast[int](addr tmp[]))
proc cellPressed*(self: QTableWidget, row: cint, column: cint): void =

  fcQTableWidget_cellPressed(self.h, row, column)

proc miqt_exec_callback_QTableWidget_cellPressed(slot: int, row: cint, column: cint) {.exportc.} =
  type Cb = proc(row: cint, column: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column


  nimfunc[](slotval1, slotval2)

proc oncellPressed*(self: QTableWidget, slot: proc(row: cint, column: cint)) =
  type Cb = proc(row: cint, column: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTableWidget_connect_cellPressed(self.h, cast[int](addr tmp[]))
proc cellClicked*(self: QTableWidget, row: cint, column: cint): void =

  fcQTableWidget_cellClicked(self.h, row, column)

proc miqt_exec_callback_QTableWidget_cellClicked(slot: int, row: cint, column: cint) {.exportc.} =
  type Cb = proc(row: cint, column: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column


  nimfunc[](slotval1, slotval2)

proc oncellClicked*(self: QTableWidget, slot: proc(row: cint, column: cint)) =
  type Cb = proc(row: cint, column: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTableWidget_connect_cellClicked(self.h, cast[int](addr tmp[]))
proc cellDoubleClicked*(self: QTableWidget, row: cint, column: cint): void =

  fcQTableWidget_cellDoubleClicked(self.h, row, column)

proc miqt_exec_callback_QTableWidget_cellDoubleClicked(slot: int, row: cint, column: cint) {.exportc.} =
  type Cb = proc(row: cint, column: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column


  nimfunc[](slotval1, slotval2)

proc oncellDoubleClicked*(self: QTableWidget, slot: proc(row: cint, column: cint)) =
  type Cb = proc(row: cint, column: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTableWidget_connect_cellDoubleClicked(self.h, cast[int](addr tmp[]))
proc cellActivated*(self: QTableWidget, row: cint, column: cint): void =

  fcQTableWidget_cellActivated(self.h, row, column)

proc miqt_exec_callback_QTableWidget_cellActivated(slot: int, row: cint, column: cint) {.exportc.} =
  type Cb = proc(row: cint, column: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column


  nimfunc[](slotval1, slotval2)

proc oncellActivated*(self: QTableWidget, slot: proc(row: cint, column: cint)) =
  type Cb = proc(row: cint, column: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTableWidget_connect_cellActivated(self.h, cast[int](addr tmp[]))
proc cellEntered*(self: QTableWidget, row: cint, column: cint): void =

  fcQTableWidget_cellEntered(self.h, row, column)

proc miqt_exec_callback_QTableWidget_cellEntered(slot: int, row: cint, column: cint) {.exportc.} =
  type Cb = proc(row: cint, column: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column


  nimfunc[](slotval1, slotval2)

proc oncellEntered*(self: QTableWidget, slot: proc(row: cint, column: cint)) =
  type Cb = proc(row: cint, column: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTableWidget_connect_cellEntered(self.h, cast[int](addr tmp[]))
proc cellChanged*(self: QTableWidget, row: cint, column: cint): void =

  fcQTableWidget_cellChanged(self.h, row, column)

proc miqt_exec_callback_QTableWidget_cellChanged(slot: int, row: cint, column: cint) {.exportc.} =
  type Cb = proc(row: cint, column: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column


  nimfunc[](slotval1, slotval2)

proc oncellChanged*(self: QTableWidget, slot: proc(row: cint, column: cint)) =
  type Cb = proc(row: cint, column: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTableWidget_connect_cellChanged(self.h, cast[int](addr tmp[]))
proc currentCellChanged*(self: QTableWidget, currentRow: cint, currentColumn: cint, previousRow: cint, previousColumn: cint): void =

  fcQTableWidget_currentCellChanged(self.h, currentRow, currentColumn, previousRow, previousColumn)

proc miqt_exec_callback_QTableWidget_currentCellChanged(slot: int, currentRow: cint, currentColumn: cint, previousRow: cint, previousColumn: cint) {.exportc.} =
  type Cb = proc(currentRow: cint, currentColumn: cint, previousRow: cint, previousColumn: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = currentRow

  let slotval2 = currentColumn

  let slotval3 = previousRow

  let slotval4 = previousColumn


  nimfunc[](slotval1, slotval2, slotval3, slotval4)

proc oncurrentCellChanged*(self: QTableWidget, slot: proc(currentRow: cint, currentColumn: cint, previousRow: cint, previousColumn: cint)) =
  type Cb = proc(currentRow: cint, currentColumn: cint, previousRow: cint, previousColumn: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTableWidget_connect_currentCellChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QTableWidget, s: cstring, c: cstring): string =

  let v_ms = fcQTableWidget_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTableWidget, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTableWidget_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sortItems2*(self: QTableWidget, column: cint, order: gen_qnamespace.SortOrder): void =

  fcQTableWidget_sortItems2(self.h, column, cint(order))

proc scrollToItem2*(self: QTableWidget, item: QTableWidgetItem, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void =

  fcQTableWidget_scrollToItem2(self.h, item.h, cint(hint))

proc callVirtualBase_metaObject(self: QTableWidget, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQTableWidget_virtualbase_metaObject(self.h))

type QTableWidgetmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QTableWidget, slot: proc(super: QTableWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_metaObject(self: ptr cQTableWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTableWidget_metaObject ".} =
  type Cb = proc(super: QTableWidgetmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QTableWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QTableWidget, param1: cstring): pointer =


  fQTableWidget_virtualbase_metacast(self.h, param1)

type QTableWidgetmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QTableWidget, slot: proc(super: QTableWidgetmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_metacast(self: ptr cQTableWidget, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTableWidget_metacast ".} =
  type Cb = proc(super: QTableWidgetmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QTableWidget(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QTableWidget, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTableWidget_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTableWidgetmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTableWidget, slot: proc(super: QTableWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_metacall(self: ptr cQTableWidget, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTableWidget_metacall ".} =
  type Cb = proc(super: QTableWidgetmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTableWidget(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QTableWidget, e: gen_qcoreevent.QEvent): bool =


  fQTableWidget_virtualbase_event(self.h, e.h)

type QTableWidgeteventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTableWidget, slot: proc(super: QTableWidgeteventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgeteventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_event(self: ptr cQTableWidget, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QTableWidget_event ".} =
  type Cb = proc(super: QTableWidgeteventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTableWidget(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mimeTypes(self: QTableWidget, ): seq[string] =


  var v_ma = fQTableWidget_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QTableWidgetmimeTypesBase* = proc(): seq[string]
proc onmimeTypes*(self: QTableWidget, slot: proc(super: QTableWidgetmimeTypesBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetmimeTypesBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_mimeTypes(self: ptr cQTableWidget, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QTableWidget_mimeTypes ".} =
  type Cb = proc(super: QTableWidgetmimeTypesBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mimeTypes(QTableWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_mimeData(self: QTableWidget, items: seq[QTableWidgetItem]): gen_qmimedata.QMimeData =

  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h


  gen_qmimedata.QMimeData(h: fQTableWidget_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0]))))

type QTableWidgetmimeDataBase* = proc(items: seq[QTableWidgetItem]): gen_qmimedata.QMimeData
proc onmimeData*(self: QTableWidget, slot: proc(super: QTableWidgetmimeDataBase, items: seq[QTableWidgetItem]): gen_qmimedata.QMimeData) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetmimeDataBase, items: seq[QTableWidgetItem]): gen_qmimedata.QMimeData
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_mimeData(self: ptr cQTableWidget, slot: int, items: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QTableWidget_mimeData ".} =
  type Cb = proc(super: QTableWidgetmimeDataBase, items: seq[QTableWidgetItem]): gen_qmimedata.QMimeData
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(items: seq[QTableWidgetItem]): auto =
    callVirtualBase_mimeData(QTableWidget(h: self), items)
  var vitems_ma = items
  var vitemsx_ret = newSeq[QTableWidgetItem](int(vitems_ma.len))
  let vitems_outCast = cast[ptr UncheckedArray[pointer]](vitems_ma.data)
  for i in 0 ..< vitems_ma.len:
    vitemsx_ret[i] = QTableWidgetItem(h: vitems_outCast[i])
  let slotval1 = vitemsx_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_dropMimeData(self: QTableWidget, row: cint, column: cint, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction): bool =


  fQTableWidget_virtualbase_dropMimeData(self.h, row, column, data.h, cint(action))

type QTableWidgetdropMimeDataBase* = proc(row: cint, column: cint, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction): bool
proc ondropMimeData*(self: QTableWidget, slot: proc(super: QTableWidgetdropMimeDataBase, row: cint, column: cint, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction): bool) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetdropMimeDataBase, row: cint, column: cint, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_dropMimeData(self: ptr cQTableWidget, slot: int, row: cint, column: cint, data: pointer, action: cint): bool {.exportc: "miqt_exec_callback_QTableWidget_dropMimeData ".} =
  type Cb = proc(super: QTableWidgetdropMimeDataBase, row: cint, column: cint, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction): auto =
    callVirtualBase_dropMimeData(QTableWidget(h: self), row, column, data, action)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qmimedata.QMimeData(h: data)

  let slotval4 = gen_qnamespace.DropAction(action)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_supportedDropActions(self: QTableWidget, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQTableWidget_virtualbase_supportedDropActions(self.h))

type QTableWidgetsupportedDropActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDropActions*(self: QTableWidget, slot: proc(super: QTableWidgetsupportedDropActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetsupportedDropActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_supportedDropActions(self: ptr cQTableWidget, slot: int): cint {.exportc: "miqt_exec_callback_QTableWidget_supportedDropActions ".} =
  type Cb = proc(super: QTableWidgetsupportedDropActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDropActions(QTableWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_dropEvent(self: QTableWidget, event: gen_qevent.QDropEvent): void =


  fQTableWidget_virtualbase_dropEvent(self.h, event.h)

type QTableWidgetdropEventBase* = proc(event: gen_qevent.QDropEvent): void
proc ondropEvent*(self: QTableWidget, slot: proc(super: QTableWidgetdropEventBase, event: gen_qevent.QDropEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_dropEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_dropEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_dropEvent ".} =
  type Cb = proc(super: QTableWidgetdropEventBase, event: gen_qevent.QDropEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDropEvent): auto =
    callVirtualBase_dropEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qevent.QDropEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setRootIndex(self: QTableWidget, index: gen_qabstractitemmodel.QModelIndex): void =


  fQTableWidget_virtualbase_setRootIndex(self.h, index.h)

type QTableWidgetsetRootIndexBase* = proc(index: gen_qabstractitemmodel.QModelIndex): void
proc onsetRootIndex*(self: QTableWidget, slot: proc(super: QTableWidgetsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_setRootIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_setRootIndex(self: ptr cQTableWidget, slot: int, index: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_setRootIndex ".} =
  type Cb = proc(super: QTableWidgetsetRootIndexBase, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_setRootIndex(QTableWidget(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setSelectionModel(self: QTableWidget, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void =


  fQTableWidget_virtualbase_setSelectionModel(self.h, selectionModel.h)

type QTableWidgetsetSelectionModelBase* = proc(selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
proc onsetSelectionModel*(self: QTableWidget, slot: proc(super: QTableWidgetsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_setSelectionModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_setSelectionModel(self: ptr cQTableWidget, slot: int, selectionModel: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_setSelectionModel ".} =
  type Cb = proc(super: QTableWidgetsetSelectionModelBase, selectionModel: gen_qitemselectionmodel.QItemSelectionModel): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selectionModel: gen_qitemselectionmodel.QItemSelectionModel): auto =
    callVirtualBase_setSelectionModel(QTableWidget(h: self), selectionModel)
  let slotval1 = gen_qitemselectionmodel.QItemSelectionModel(h: selectionModel)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_doItemsLayout(self: QTableWidget, ): void =


  fQTableWidget_virtualbase_doItemsLayout(self.h)

type QTableWidgetdoItemsLayoutBase* = proc(): void
proc ondoItemsLayout*(self: QTableWidget, slot: proc(super: QTableWidgetdoItemsLayoutBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetdoItemsLayoutBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_doItemsLayout(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_doItemsLayout(self: ptr cQTableWidget, slot: int): void {.exportc: "miqt_exec_callback_QTableWidget_doItemsLayout ".} =
  type Cb = proc(super: QTableWidgetdoItemsLayoutBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_doItemsLayout(QTableWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_visualRect(self: QTableWidget, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect =


  gen_qrect.QRect(h: fQTableWidget_virtualbase_visualRect(self.h, index.h))

type QTableWidgetvisualRectBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
proc onvisualRect*(self: QTableWidget, slot: proc(super: QTableWidgetvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_visualRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_visualRect(self: ptr cQTableWidget, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QTableWidget_visualRect ".} =
  type Cb = proc(super: QTableWidgetvisualRectBase, index: gen_qabstractitemmodel.QModelIndex): gen_qrect.QRect
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_visualRect(QTableWidget(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_scrollTo(self: QTableWidget, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void =


  fQTableWidget_virtualbase_scrollTo(self.h, index.h, cint(hint))

type QTableWidgetscrollToBase* = proc(index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
proc onscrollTo*(self: QTableWidget, slot: proc(super: QTableWidgetscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_scrollTo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_scrollTo(self: ptr cQTableWidget, slot: int, index: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QTableWidget_scrollTo ".} =
  type Cb = proc(super: QTableWidgetscrollToBase, index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, hint: gen_qabstractitemview.QAbstractItemViewScrollHint): auto =
    callVirtualBase_scrollTo(QTableWidget(h: self), index, hint)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemview.QAbstractItemViewScrollHint(hint)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_indexAt(self: QTableWidget, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQTableWidget_virtualbase_indexAt(self.h, p.h))

type QTableWidgetindexAtBase* = proc(p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
proc onindexAt*(self: QTableWidget, slot: proc(super: QTableWidgetindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_indexAt(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_indexAt(self: ptr cQTableWidget, slot: int, p: pointer): pointer {.exportc: "miqt_exec_callback_QTableWidget_indexAt ".} =
  type Cb = proc(super: QTableWidgetindexAtBase, p: gen_qpoint.QPoint): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(p: gen_qpoint.QPoint): auto =
    callVirtualBase_indexAt(QTableWidget(h: self), p)
  let slotval1 = gen_qpoint.QPoint(h: p)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_scrollContentsBy(self: QTableWidget, dx: cint, dy: cint): void =


  fQTableWidget_virtualbase_scrollContentsBy(self.h, dx, dy)

type QTableWidgetscrollContentsByBase* = proc(dx: cint, dy: cint): void
proc onscrollContentsBy*(self: QTableWidget, slot: proc(super: QTableWidgetscrollContentsByBase, dx: cint, dy: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetscrollContentsByBase, dx: cint, dy: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_scrollContentsBy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_scrollContentsBy(self: ptr cQTableWidget, slot: int, dx: cint, dy: cint): void {.exportc: "miqt_exec_callback_QTableWidget_scrollContentsBy ".} =
  type Cb = proc(super: QTableWidgetscrollContentsByBase, dx: cint, dy: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(dx: cint, dy: cint): auto =
    callVirtualBase_scrollContentsBy(QTableWidget(h: self), dx, dy)
  let slotval1 = dx

  let slotval2 = dy


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_initViewItemOption(self: QTableWidget, option: gen_qstyleoption.QStyleOptionViewItem): void =


  fQTableWidget_virtualbase_initViewItemOption(self.h, option.h)

type QTableWidgetinitViewItemOptionBase* = proc(option: gen_qstyleoption.QStyleOptionViewItem): void
proc oninitViewItemOption*(self: QTableWidget, slot: proc(super: QTableWidgetinitViewItemOptionBase, option: gen_qstyleoption.QStyleOptionViewItem): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetinitViewItemOptionBase, option: gen_qstyleoption.QStyleOptionViewItem): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_initViewItemOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_initViewItemOption(self: ptr cQTableWidget, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_initViewItemOption ".} =
  type Cb = proc(super: QTableWidgetinitViewItemOptionBase, option: gen_qstyleoption.QStyleOptionViewItem): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionViewItem): auto =
    callVirtualBase_initViewItemOption(QTableWidget(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionViewItem(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_paintEvent(self: QTableWidget, e: gen_qevent.QPaintEvent): void =


  fQTableWidget_virtualbase_paintEvent(self.h, e.h)

type QTableWidgetpaintEventBase* = proc(e: gen_qevent.QPaintEvent): void
proc onpaintEvent*(self: QTableWidget, slot: proc(super: QTableWidgetpaintEventBase, e: gen_qevent.QPaintEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetpaintEventBase, e: gen_qevent.QPaintEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_paintEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_paintEvent(self: ptr cQTableWidget, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_paintEvent ".} =
  type Cb = proc(super: QTableWidgetpaintEventBase, e: gen_qevent.QPaintEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qevent.QPaintEvent): auto =
    callVirtualBase_paintEvent(QTableWidget(h: self), e)
  let slotval1 = gen_qevent.QPaintEvent(h: e)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_timerEvent(self: QTableWidget, event: gen_qcoreevent.QTimerEvent): void =


  fQTableWidget_virtualbase_timerEvent(self.h, event.h)

type QTableWidgettimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTableWidget, slot: proc(super: QTableWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_timerEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_timerEvent ".} =
  type Cb = proc(super: QTableWidgettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalOffset(self: QTableWidget, ): cint =


  fQTableWidget_virtualbase_horizontalOffset(self.h)

type QTableWidgethorizontalOffsetBase* = proc(): cint
proc onhorizontalOffset*(self: QTableWidget, slot: proc(super: QTableWidgethorizontalOffsetBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgethorizontalOffsetBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_horizontalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_horizontalOffset(self: ptr cQTableWidget, slot: int): cint {.exportc: "miqt_exec_callback_QTableWidget_horizontalOffset ".} =
  type Cb = proc(super: QTableWidgethorizontalOffsetBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_horizontalOffset(QTableWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_verticalOffset(self: QTableWidget, ): cint =


  fQTableWidget_virtualbase_verticalOffset(self.h)

type QTableWidgetverticalOffsetBase* = proc(): cint
proc onverticalOffset*(self: QTableWidget, slot: proc(super: QTableWidgetverticalOffsetBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetverticalOffsetBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_verticalOffset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_verticalOffset(self: ptr cQTableWidget, slot: int): cint {.exportc: "miqt_exec_callback_QTableWidget_verticalOffset ".} =
  type Cb = proc(super: QTableWidgetverticalOffsetBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_verticalOffset(QTableWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_moveCursor(self: QTableWidget, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQTableWidget_virtualbase_moveCursor(self.h, cint(cursorAction), cint(modifiers)))

type QTableWidgetmoveCursorBase* = proc(cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
proc onmoveCursor*(self: QTableWidget, slot: proc(super: QTableWidgetmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_moveCursor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_moveCursor(self: ptr cQTableWidget, slot: int, cursorAction: cint, modifiers: cint): pointer {.exportc: "miqt_exec_callback_QTableWidget_moveCursor ".} =
  type Cb = proc(super: QTableWidgetmoveCursorBase, cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(cursorAction: gen_qabstractitemview.QAbstractItemViewCursorAction, modifiers: gen_qnamespace.KeyboardModifier): auto =
    callVirtualBase_moveCursor(QTableWidget(h: self), cursorAction, modifiers)
  let slotval1 = gen_qabstractitemview.QAbstractItemViewCursorAction(cursorAction)

  let slotval2 = gen_qnamespace.KeyboardModifier(modifiers)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_setSelection(self: QTableWidget, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void =


  fQTableWidget_virtualbase_setSelection(self.h, rect.h, cint(command))

type QTableWidgetsetSelectionBase* = proc(rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
proc onsetSelection*(self: QTableWidget, slot: proc(super: QTableWidgetsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_setSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_setSelection(self: ptr cQTableWidget, slot: int, rect: pointer, command: cint): void {.exportc: "miqt_exec_callback_QTableWidget_setSelection ".} =
  type Cb = proc(super: QTableWidgetsetSelectionBase, rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rect: gen_qrect.QRect, command: gen_qitemselectionmodel.QItemSelectionModelSelectionFlag): auto =
    callVirtualBase_setSelection(QTableWidget(h: self), rect, command)
  let slotval1 = gen_qrect.QRect(h: rect)

  let slotval2 = gen_qitemselectionmodel.QItemSelectionModelSelectionFlag(command)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_visualRegionForSelection(self: QTableWidget, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion =


  gen_qregion.QRegion(h: fQTableWidget_virtualbase_visualRegionForSelection(self.h, selection.h))

type QTableWidgetvisualRegionForSelectionBase* = proc(selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
proc onvisualRegionForSelection*(self: QTableWidget, slot: proc(super: QTableWidgetvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_visualRegionForSelection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_visualRegionForSelection(self: ptr cQTableWidget, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QTableWidget_visualRegionForSelection ".} =
  type Cb = proc(super: QTableWidgetvisualRegionForSelectionBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qregion.QRegion
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selection: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_visualRegionForSelection(QTableWidget(h: self), selection)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_selectedIndexes(self: QTableWidget, ): seq[gen_qabstractitemmodel.QModelIndex] =


  var v_ma = fQTableWidget_virtualbase_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

type QTableWidgetselectedIndexesBase* = proc(): seq[gen_qabstractitemmodel.QModelIndex]
proc onselectedIndexes*(self: QTableWidget, slot: proc(super: QTableWidgetselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_selectedIndexes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_selectedIndexes(self: ptr cQTableWidget, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QTableWidget_selectedIndexes ".} =
  type Cb = proc(super: QTableWidgetselectedIndexesBase): seq[gen_qabstractitemmodel.QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_selectedIndexes(QTableWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_updateGeometries(self: QTableWidget, ): void =


  fQTableWidget_virtualbase_updateGeometries(self.h)

type QTableWidgetupdateGeometriesBase* = proc(): void
proc onupdateGeometries*(self: QTableWidget, slot: proc(super: QTableWidgetupdateGeometriesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetupdateGeometriesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_updateGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_updateGeometries(self: ptr cQTableWidget, slot: int): void {.exportc: "miqt_exec_callback_QTableWidget_updateGeometries ".} =
  type Cb = proc(super: QTableWidgetupdateGeometriesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateGeometries(QTableWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_viewportSizeHint(self: QTableWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTableWidget_virtualbase_viewportSizeHint(self.h))

type QTableWidgetviewportSizeHintBase* = proc(): gen_qsize.QSize
proc onviewportSizeHint*(self: QTableWidget, slot: proc(super: QTableWidgetviewportSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetviewportSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_viewportSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_viewportSizeHint(self: ptr cQTableWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTableWidget_viewportSizeHint ".} =
  type Cb = proc(super: QTableWidgetviewportSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_viewportSizeHint(QTableWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHintForRow(self: QTableWidget, row: cint): cint =


  fQTableWidget_virtualbase_sizeHintForRow(self.h, row)

type QTableWidgetsizeHintForRowBase* = proc(row: cint): cint
proc onsizeHintForRow*(self: QTableWidget, slot: proc(super: QTableWidgetsizeHintForRowBase, row: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetsizeHintForRowBase, row: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_sizeHintForRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_sizeHintForRow(self: ptr cQTableWidget, slot: int, row: cint): cint {.exportc: "miqt_exec_callback_QTableWidget_sizeHintForRow ".} =
  type Cb = proc(super: QTableWidgetsizeHintForRowBase, row: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint): auto =
    callVirtualBase_sizeHintForRow(QTableWidget(h: self), row)
  let slotval1 = row


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_sizeHintForColumn(self: QTableWidget, column: cint): cint =


  fQTableWidget_virtualbase_sizeHintForColumn(self.h, column)

type QTableWidgetsizeHintForColumnBase* = proc(column: cint): cint
proc onsizeHintForColumn*(self: QTableWidget, slot: proc(super: QTableWidgetsizeHintForColumnBase, column: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetsizeHintForColumnBase, column: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_sizeHintForColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_sizeHintForColumn(self: ptr cQTableWidget, slot: int, column: cint): cint {.exportc: "miqt_exec_callback_QTableWidget_sizeHintForColumn ".} =
  type Cb = proc(super: QTableWidgetsizeHintForColumnBase, column: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint): auto =
    callVirtualBase_sizeHintForColumn(QTableWidget(h: self), column)
  let slotval1 = column


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_verticalScrollbarAction(self: QTableWidget, action: cint): void =


  fQTableWidget_virtualbase_verticalScrollbarAction(self.h, action)

type QTableWidgetverticalScrollbarActionBase* = proc(action: cint): void
proc onverticalScrollbarAction*(self: QTableWidget, slot: proc(super: QTableWidgetverticalScrollbarActionBase, action: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetverticalScrollbarActionBase, action: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_verticalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_verticalScrollbarAction(self: ptr cQTableWidget, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QTableWidget_verticalScrollbarAction ".} =
  type Cb = proc(super: QTableWidgetverticalScrollbarActionBase, action: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(action: cint): auto =
    callVirtualBase_verticalScrollbarAction(QTableWidget(h: self), action)
  let slotval1 = action


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalScrollbarAction(self: QTableWidget, action: cint): void =


  fQTableWidget_virtualbase_horizontalScrollbarAction(self.h, action)

type QTableWidgethorizontalScrollbarActionBase* = proc(action: cint): void
proc onhorizontalScrollbarAction*(self: QTableWidget, slot: proc(super: QTableWidgethorizontalScrollbarActionBase, action: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgethorizontalScrollbarActionBase, action: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_horizontalScrollbarAction(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_horizontalScrollbarAction(self: ptr cQTableWidget, slot: int, action: cint): void {.exportc: "miqt_exec_callback_QTableWidget_horizontalScrollbarAction ".} =
  type Cb = proc(super: QTableWidgethorizontalScrollbarActionBase, action: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(action: cint): auto =
    callVirtualBase_horizontalScrollbarAction(QTableWidget(h: self), action)
  let slotval1 = action


  nimfunc[](superCall, slotval1)
proc callVirtualBase_isIndexHidden(self: QTableWidget, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQTableWidget_virtualbase_isIndexHidden(self.h, index.h)

type QTableWidgetisIndexHiddenBase* = proc(index: gen_qabstractitemmodel.QModelIndex): bool
proc onisIndexHidden*(self: QTableWidget, slot: proc(super: QTableWidgetisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_isIndexHidden(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_isIndexHidden(self: ptr cQTableWidget, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QTableWidget_isIndexHidden ".} =
  type Cb = proc(super: QTableWidgetisIndexHiddenBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_isIndexHidden(QTableWidget(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_selectionChanged(self: QTableWidget, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void =


  fQTableWidget_virtualbase_selectionChanged(self.h, selected.h, deselected.h)

type QTableWidgetselectionChangedBase* = proc(selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
proc onselectionChanged*(self: QTableWidget, slot: proc(super: QTableWidgetselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_selectionChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_selectionChanged(self: ptr cQTableWidget, slot: int, selected: pointer, deselected: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_selectionChanged ".} =
  type Cb = proc(super: QTableWidgetselectionChangedBase, selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selected: gen_qitemselectionmodel.QItemSelection, deselected: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_selectionChanged(QTableWidget(h: self), selected, deselected)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selected)

  let slotval2 = gen_qitemselectionmodel.QItemSelection(h: deselected)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_currentChanged(self: QTableWidget, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void =


  fQTableWidget_virtualbase_currentChanged(self.h, current.h, previous.h)

type QTableWidgetcurrentChangedBase* = proc(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
proc oncurrentChanged*(self: QTableWidget, slot: proc(super: QTableWidgetcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_currentChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_currentChanged(self: ptr cQTableWidget, slot: int, current: pointer, previous: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_currentChanged ".} =
  type Cb = proc(super: QTableWidgetcurrentChangedBase, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_currentChanged(QTableWidget(h: self), current, previous)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: previous)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_keyboardSearch(self: QTableWidget, search: string): void =


  fQTableWidget_virtualbase_keyboardSearch(self.h, struct_miqt_string(data: search, len: csize_t(len(search))))

type QTableWidgetkeyboardSearchBase* = proc(search: string): void
proc onkeyboardSearch*(self: QTableWidget, slot: proc(super: QTableWidgetkeyboardSearchBase, search: string): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetkeyboardSearchBase, search: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_keyboardSearch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_keyboardSearch(self: ptr cQTableWidget, slot: int, search: struct_miqt_string): void {.exportc: "miqt_exec_callback_QTableWidget_keyboardSearch ".} =
  type Cb = proc(super: QTableWidgetkeyboardSearchBase, search: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(search: string): auto =
    callVirtualBase_keyboardSearch(QTableWidget(h: self), search)
  let vsearch_ms = search
  let vsearchx_ret = string.fromBytes(toOpenArrayByte(vsearch_ms.data, 0, int(vsearch_ms.len)-1))
  c_free(vsearch_ms.data)
  let slotval1 = vsearchx_ret


  nimfunc[](superCall, slotval1)
proc callVirtualBase_itemDelegateForIndex(self: QTableWidget, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemdelegate.QAbstractItemDelegate =


  gen_qabstractitemdelegate.QAbstractItemDelegate(h: fQTableWidget_virtualbase_itemDelegateForIndex(self.h, index.h))

type QTableWidgetitemDelegateForIndexBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemdelegate.QAbstractItemDelegate
proc onitemDelegateForIndex*(self: QTableWidget, slot: proc(super: QTableWidgetitemDelegateForIndexBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemdelegate.QAbstractItemDelegate) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetitemDelegateForIndexBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemdelegate.QAbstractItemDelegate
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_itemDelegateForIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_itemDelegateForIndex(self: ptr cQTableWidget, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QTableWidget_itemDelegateForIndex ".} =
  type Cb = proc(super: QTableWidgetitemDelegateForIndexBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemdelegate.QAbstractItemDelegate
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_itemDelegateForIndex(QTableWidget(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_inputMethodQuery(self: QTableWidget, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQTableWidget_virtualbase_inputMethodQuery(self.h, cint(query)))

type QTableWidgetinputMethodQueryBase* = proc(query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
proc oninputMethodQuery*(self: QTableWidget, slot: proc(super: QTableWidgetinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_inputMethodQuery(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_inputMethodQuery(self: ptr cQTableWidget, slot: int, query: cint): pointer {.exportc: "miqt_exec_callback_QTableWidget_inputMethodQuery ".} =
  type Cb = proc(super: QTableWidgetinputMethodQueryBase, query: gen_qnamespace.InputMethodQuery): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(query: gen_qnamespace.InputMethodQuery): auto =
    callVirtualBase_inputMethodQuery(QTableWidget(h: self), query)
  let slotval1 = gen_qnamespace.InputMethodQuery(query)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_reset(self: QTableWidget, ): void =


  fQTableWidget_virtualbase_reset(self.h)

type QTableWidgetresetBase* = proc(): void
proc onreset*(self: QTableWidget, slot: proc(super: QTableWidgetresetBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetresetBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_reset(self: ptr cQTableWidget, slot: int): void {.exportc: "miqt_exec_callback_QTableWidget_reset ".} =
  type Cb = proc(super: QTableWidgetresetBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QTableWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_selectAll(self: QTableWidget, ): void =


  fQTableWidget_virtualbase_selectAll(self.h)

type QTableWidgetselectAllBase* = proc(): void
proc onselectAll*(self: QTableWidget, slot: proc(super: QTableWidgetselectAllBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetselectAllBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_selectAll(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_selectAll(self: ptr cQTableWidget, slot: int): void {.exportc: "miqt_exec_callback_QTableWidget_selectAll ".} =
  type Cb = proc(super: QTableWidgetselectAllBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_selectAll(QTableWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_dataChanged(self: QTableWidget, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void =

  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]


  fQTableWidget_virtualbase_dataChanged(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

type QTableWidgetdataChangedBase* = proc(topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
proc ondataChanged*(self: QTableWidget, slot: proc(super: QTableWidgetdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_dataChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_dataChanged(self: ptr cQTableWidget, slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.exportc: "miqt_exec_callback_QTableWidget_dataChanged ".} =
  type Cb = proc(super: QTableWidgetdataChangedBase, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex, roles: seq[cint]): auto =
    callVirtualBase_dataChanged(QTableWidget(h: self), topLeft, bottomRight, roles)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: topLeft)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_rowsInserted(self: QTableWidget, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void =


  fQTableWidget_virtualbase_rowsInserted(self.h, parent.h, start, endVal)

type QTableWidgetrowsInsertedBase* = proc(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
proc onrowsInserted*(self: QTableWidget, slot: proc(super: QTableWidgetrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_rowsInserted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_rowsInserted(self: ptr cQTableWidget, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QTableWidget_rowsInserted ".} =
  type Cb = proc(super: QTableWidgetrowsInsertedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): auto =
    callVirtualBase_rowsInserted(QTableWidget(h: self), parent, start, endVal)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_rowsAboutToBeRemoved(self: QTableWidget, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void =


  fQTableWidget_virtualbase_rowsAboutToBeRemoved(self.h, parent.h, start, endVal)

type QTableWidgetrowsAboutToBeRemovedBase* = proc(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
proc onrowsAboutToBeRemoved*(self: QTableWidget, slot: proc(super: QTableWidgetrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_rowsAboutToBeRemoved(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_rowsAboutToBeRemoved(self: ptr cQTableWidget, slot: int, parent: pointer, start: cint, endVal: cint): void {.exportc: "miqt_exec_callback_QTableWidget_rowsAboutToBeRemoved ".} =
  type Cb = proc(super: QTableWidgetrowsAboutToBeRemovedBase, parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex, start: cint, endVal: cint): auto =
    callVirtualBase_rowsAboutToBeRemoved(QTableWidget(h: self), parent, start, endVal)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)

  let slotval2 = start

  let slotval3 = endVal


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_updateEditorData(self: QTableWidget, ): void =


  fQTableWidget_virtualbase_updateEditorData(self.h)

type QTableWidgetupdateEditorDataBase* = proc(): void
proc onupdateEditorData*(self: QTableWidget, slot: proc(super: QTableWidgetupdateEditorDataBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetupdateEditorDataBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_updateEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_updateEditorData(self: ptr cQTableWidget, slot: int): void {.exportc: "miqt_exec_callback_QTableWidget_updateEditorData ".} =
  type Cb = proc(super: QTableWidgetupdateEditorDataBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateEditorData(QTableWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_updateEditorGeometries(self: QTableWidget, ): void =


  fQTableWidget_virtualbase_updateEditorGeometries(self.h)

type QTableWidgetupdateEditorGeometriesBase* = proc(): void
proc onupdateEditorGeometries*(self: QTableWidget, slot: proc(super: QTableWidgetupdateEditorGeometriesBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetupdateEditorGeometriesBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_updateEditorGeometries(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_updateEditorGeometries(self: ptr cQTableWidget, slot: int): void {.exportc: "miqt_exec_callback_QTableWidget_updateEditorGeometries ".} =
  type Cb = proc(super: QTableWidgetupdateEditorGeometriesBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_updateEditorGeometries(QTableWidget(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_verticalScrollbarValueChanged(self: QTableWidget, value: cint): void =


  fQTableWidget_virtualbase_verticalScrollbarValueChanged(self.h, value)

type QTableWidgetverticalScrollbarValueChangedBase* = proc(value: cint): void
proc onverticalScrollbarValueChanged*(self: QTableWidget, slot: proc(super: QTableWidgetverticalScrollbarValueChangedBase, value: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetverticalScrollbarValueChangedBase, value: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_verticalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_verticalScrollbarValueChanged(self: ptr cQTableWidget, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QTableWidget_verticalScrollbarValueChanged ".} =
  type Cb = proc(super: QTableWidgetverticalScrollbarValueChangedBase, value: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: cint): auto =
    callVirtualBase_verticalScrollbarValueChanged(QTableWidget(h: self), value)
  let slotval1 = value


  nimfunc[](superCall, slotval1)
proc callVirtualBase_horizontalScrollbarValueChanged(self: QTableWidget, value: cint): void =


  fQTableWidget_virtualbase_horizontalScrollbarValueChanged(self.h, value)

type QTableWidgethorizontalScrollbarValueChangedBase* = proc(value: cint): void
proc onhorizontalScrollbarValueChanged*(self: QTableWidget, slot: proc(super: QTableWidgethorizontalScrollbarValueChangedBase, value: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgethorizontalScrollbarValueChangedBase, value: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_horizontalScrollbarValueChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_horizontalScrollbarValueChanged(self: ptr cQTableWidget, slot: int, value: cint): void {.exportc: "miqt_exec_callback_QTableWidget_horizontalScrollbarValueChanged ".} =
  type Cb = proc(super: QTableWidgethorizontalScrollbarValueChangedBase, value: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: cint): auto =
    callVirtualBase_horizontalScrollbarValueChanged(QTableWidget(h: self), value)
  let slotval1 = value


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEditor(self: QTableWidget, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void =


  fQTableWidget_virtualbase_closeEditor(self.h, editor.h, cint(hint))

type QTableWidgetcloseEditorBase* = proc(editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
proc oncloseEditor*(self: QTableWidget, slot: proc(super: QTableWidgetcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_closeEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_closeEditor(self: ptr cQTableWidget, slot: int, editor: pointer, hint: cint): void {.exportc: "miqt_exec_callback_QTableWidget_closeEditor ".} =
  type Cb = proc(super: QTableWidgetcloseEditorBase, editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, hint: gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint): auto =
    callVirtualBase_closeEditor(QTableWidget(h: self), editor, hint)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qabstractitemdelegate.QAbstractItemDelegateEndEditHint(hint)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_commitData(self: QTableWidget, editor: gen_qwidget.QWidget): void =


  fQTableWidget_virtualbase_commitData(self.h, editor.h)

type QTableWidgetcommitDataBase* = proc(editor: gen_qwidget.QWidget): void
proc oncommitData*(self: QTableWidget, slot: proc(super: QTableWidgetcommitDataBase, editor: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetcommitDataBase, editor: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_commitData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_commitData(self: ptr cQTableWidget, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_commitData ".} =
  type Cb = proc(super: QTableWidgetcommitDataBase, editor: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget): auto =
    callVirtualBase_commitData(QTableWidget(h: self), editor)
  let slotval1 = gen_qwidget.QWidget(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_editorDestroyed(self: QTableWidget, editor: gen_qobject.QObject): void =


  fQTableWidget_virtualbase_editorDestroyed(self.h, editor.h)

type QTableWidgeteditorDestroyedBase* = proc(editor: gen_qobject.QObject): void
proc oneditorDestroyed*(self: QTableWidget, slot: proc(super: QTableWidgeteditorDestroyedBase, editor: gen_qobject.QObject): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgeteditorDestroyedBase, editor: gen_qobject.QObject): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_editorDestroyed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_editorDestroyed(self: ptr cQTableWidget, slot: int, editor: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_editorDestroyed ".} =
  type Cb = proc(super: QTableWidgeteditorDestroyedBase, editor: gen_qobject.QObject): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qobject.QObject): auto =
    callVirtualBase_editorDestroyed(QTableWidget(h: self), editor)
  let slotval1 = gen_qobject.QObject(h: editor)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_edit2(self: QTableWidget, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool =


  fQTableWidget_virtualbase_edit2(self.h, index.h, cint(trigger), event.h)

type QTableWidgetedit2Base* = proc(index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
proc onedit2*(self: QTableWidget, slot: proc(super: QTableWidgetedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_edit2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_edit2(self: ptr cQTableWidget, slot: int, index: pointer, trigger: cint, event: pointer): bool {.exportc: "miqt_exec_callback_QTableWidget_edit2 ".} =
  type Cb = proc(super: QTableWidgetedit2Base, index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, trigger: gen_qabstractitemview.QAbstractItemViewEditTrigger, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_edit2(QTableWidget(h: self), index, trigger, event)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemview.QAbstractItemViewEditTrigger(trigger)

  let slotval3 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_selectionCommand(self: QTableWidget, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag =


  gen_qitemselectionmodel.QItemSelectionModelSelectionFlag(fQTableWidget_virtualbase_selectionCommand(self.h, index.h, event.h))

type QTableWidgetselectionCommandBase* = proc(index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
proc onselectionCommand*(self: QTableWidget, slot: proc(super: QTableWidgetselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_selectionCommand(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_selectionCommand(self: ptr cQTableWidget, slot: int, index: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QTableWidget_selectionCommand ".} =
  type Cb = proc(super: QTableWidgetselectionCommandBase, index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): gen_qitemselectionmodel.QItemSelectionModelSelectionFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_selectionCommand(QTableWidget(h: self), index, event)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  cint(virtualReturn)
proc callVirtualBase_startDrag(self: QTableWidget, supportedActions: gen_qnamespace.DropAction): void =


  fQTableWidget_virtualbase_startDrag(self.h, cint(supportedActions))

type QTableWidgetstartDragBase* = proc(supportedActions: gen_qnamespace.DropAction): void
proc onstartDrag*(self: QTableWidget, slot: proc(super: QTableWidgetstartDragBase, supportedActions: gen_qnamespace.DropAction): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetstartDragBase, supportedActions: gen_qnamespace.DropAction): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_startDrag(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_startDrag(self: ptr cQTableWidget, slot: int, supportedActions: cint): void {.exportc: "miqt_exec_callback_QTableWidget_startDrag ".} =
  type Cb = proc(super: QTableWidgetstartDragBase, supportedActions: gen_qnamespace.DropAction): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(supportedActions: gen_qnamespace.DropAction): auto =
    callVirtualBase_startDrag(QTableWidget(h: self), supportedActions)
  let slotval1 = gen_qnamespace.DropAction(supportedActions)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusNextPrevChild(self: QTableWidget, next: bool): bool =


  fQTableWidget_virtualbase_focusNextPrevChild(self.h, next)

type QTableWidgetfocusNextPrevChildBase* = proc(next: bool): bool
proc onfocusNextPrevChild*(self: QTableWidget, slot: proc(super: QTableWidgetfocusNextPrevChildBase, next: bool): bool) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetfocusNextPrevChildBase, next: bool): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_focusNextPrevChild(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_focusNextPrevChild(self: ptr cQTableWidget, slot: int, next: bool): bool {.exportc: "miqt_exec_callback_QTableWidget_focusNextPrevChild ".} =
  type Cb = proc(super: QTableWidgetfocusNextPrevChildBase, next: bool): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(next: bool): auto =
    callVirtualBase_focusNextPrevChild(QTableWidget(h: self), next)
  let slotval1 = next


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_viewportEvent(self: QTableWidget, event: gen_qcoreevent.QEvent): bool =


  fQTableWidget_virtualbase_viewportEvent(self.h, event.h)

type QTableWidgetviewportEventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onviewportEvent*(self: QTableWidget, slot: proc(super: QTableWidgetviewportEventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_viewportEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_viewportEvent(self: ptr cQTableWidget, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTableWidget_viewportEvent ".} =
  type Cb = proc(super: QTableWidgetviewportEventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_viewportEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mousePressEvent(self: QTableWidget, event: gen_qevent.QMouseEvent): void =


  fQTableWidget_virtualbase_mousePressEvent(self.h, event.h)

type QTableWidgetmousePressEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmousePressEvent*(self: QTableWidget, slot: proc(super: QTableWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_mousePressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_mousePressEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_mousePressEvent ".} =
  type Cb = proc(super: QTableWidgetmousePressEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mousePressEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseMoveEvent(self: QTableWidget, event: gen_qevent.QMouseEvent): void =


  fQTableWidget_virtualbase_mouseMoveEvent(self.h, event.h)

type QTableWidgetmouseMoveEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseMoveEvent*(self: QTableWidget, slot: proc(super: QTableWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_mouseMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_mouseMoveEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_mouseMoveEvent ".} =
  type Cb = proc(super: QTableWidgetmouseMoveEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseMoveEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseReleaseEvent(self: QTableWidget, event: gen_qevent.QMouseEvent): void =


  fQTableWidget_virtualbase_mouseReleaseEvent(self.h, event.h)

type QTableWidgetmouseReleaseEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseReleaseEvent*(self: QTableWidget, slot: proc(super: QTableWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_mouseReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_mouseReleaseEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_mouseReleaseEvent ".} =
  type Cb = proc(super: QTableWidgetmouseReleaseEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseReleaseEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mouseDoubleClickEvent(self: QTableWidget, event: gen_qevent.QMouseEvent): void =


  fQTableWidget_virtualbase_mouseDoubleClickEvent(self.h, event.h)

type QTableWidgetmouseDoubleClickEventBase* = proc(event: gen_qevent.QMouseEvent): void
proc onmouseDoubleClickEvent*(self: QTableWidget, slot: proc(super: QTableWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_mouseDoubleClickEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_mouseDoubleClickEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_mouseDoubleClickEvent ".} =
  type Cb = proc(super: QTableWidgetmouseDoubleClickEventBase, event: gen_qevent.QMouseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMouseEvent): auto =
    callVirtualBase_mouseDoubleClickEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qevent.QMouseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragEnterEvent(self: QTableWidget, event: gen_qevent.QDragEnterEvent): void =


  fQTableWidget_virtualbase_dragEnterEvent(self.h, event.h)

type QTableWidgetdragEnterEventBase* = proc(event: gen_qevent.QDragEnterEvent): void
proc ondragEnterEvent*(self: QTableWidget, slot: proc(super: QTableWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_dragEnterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_dragEnterEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_dragEnterEvent ".} =
  type Cb = proc(super: QTableWidgetdragEnterEventBase, event: gen_qevent.QDragEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragEnterEvent): auto =
    callVirtualBase_dragEnterEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qevent.QDragEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragMoveEvent(self: QTableWidget, event: gen_qevent.QDragMoveEvent): void =


  fQTableWidget_virtualbase_dragMoveEvent(self.h, event.h)

type QTableWidgetdragMoveEventBase* = proc(event: gen_qevent.QDragMoveEvent): void
proc ondragMoveEvent*(self: QTableWidget, slot: proc(super: QTableWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_dragMoveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_dragMoveEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_dragMoveEvent ".} =
  type Cb = proc(super: QTableWidgetdragMoveEventBase, event: gen_qevent.QDragMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragMoveEvent): auto =
    callVirtualBase_dragMoveEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qevent.QDragMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_dragLeaveEvent(self: QTableWidget, event: gen_qevent.QDragLeaveEvent): void =


  fQTableWidget_virtualbase_dragLeaveEvent(self.h, event.h)

type QTableWidgetdragLeaveEventBase* = proc(event: gen_qevent.QDragLeaveEvent): void
proc ondragLeaveEvent*(self: QTableWidget, slot: proc(super: QTableWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_dragLeaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_dragLeaveEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_dragLeaveEvent ".} =
  type Cb = proc(super: QTableWidgetdragLeaveEventBase, event: gen_qevent.QDragLeaveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QDragLeaveEvent): auto =
    callVirtualBase_dragLeaveEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qevent.QDragLeaveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusInEvent(self: QTableWidget, event: gen_qevent.QFocusEvent): void =


  fQTableWidget_virtualbase_focusInEvent(self.h, event.h)

type QTableWidgetfocusInEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusInEvent*(self: QTableWidget, slot: proc(super: QTableWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_focusInEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_focusInEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_focusInEvent ".} =
  type Cb = proc(super: QTableWidgetfocusInEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusInEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_focusOutEvent(self: QTableWidget, event: gen_qevent.QFocusEvent): void =


  fQTableWidget_virtualbase_focusOutEvent(self.h, event.h)

type QTableWidgetfocusOutEventBase* = proc(event: gen_qevent.QFocusEvent): void
proc onfocusOutEvent*(self: QTableWidget, slot: proc(super: QTableWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_focusOutEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_focusOutEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_focusOutEvent ".} =
  type Cb = proc(super: QTableWidgetfocusOutEventBase, event: gen_qevent.QFocusEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QFocusEvent): auto =
    callVirtualBase_focusOutEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qevent.QFocusEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_keyPressEvent(self: QTableWidget, event: gen_qevent.QKeyEvent): void =


  fQTableWidget_virtualbase_keyPressEvent(self.h, event.h)

type QTableWidgetkeyPressEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyPressEvent*(self: QTableWidget, slot: proc(super: QTableWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_keyPressEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_keyPressEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_keyPressEvent ".} =
  type Cb = proc(super: QTableWidgetkeyPressEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyPressEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_resizeEvent(self: QTableWidget, event: gen_qevent.QResizeEvent): void =


  fQTableWidget_virtualbase_resizeEvent(self.h, event.h)

type QTableWidgetresizeEventBase* = proc(event: gen_qevent.QResizeEvent): void
proc onresizeEvent*(self: QTableWidget, slot: proc(super: QTableWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_resizeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_resizeEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_resizeEvent ".} =
  type Cb = proc(super: QTableWidgetresizeEventBase, event: gen_qevent.QResizeEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QResizeEvent): auto =
    callVirtualBase_resizeEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qevent.QResizeEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_inputMethodEvent(self: QTableWidget, event: gen_qevent.QInputMethodEvent): void =


  fQTableWidget_virtualbase_inputMethodEvent(self.h, event.h)

type QTableWidgetinputMethodEventBase* = proc(event: gen_qevent.QInputMethodEvent): void
proc oninputMethodEvent*(self: QTableWidget, slot: proc(super: QTableWidgetinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_inputMethodEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_inputMethodEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_inputMethodEvent ".} =
  type Cb = proc(super: QTableWidgetinputMethodEventBase, event: gen_qevent.QInputMethodEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QInputMethodEvent): auto =
    callVirtualBase_inputMethodEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qevent.QInputMethodEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QTableWidget, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQTableWidget_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QTableWidgeteventFilterBase* = proc(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTableWidget, slot: proc(super: QTableWidgeteventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgeteventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_eventFilter(self: ptr cQTableWidget, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTableWidget_eventFilter ".} =
  type Cb = proc(super: QTableWidgeteventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTableWidget(h: self), objectVal, event)
  let slotval1 = gen_qobject.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_minimumSizeHint(self: QTableWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTableWidget_virtualbase_minimumSizeHint(self.h))

type QTableWidgetminimumSizeHintBase* = proc(): gen_qsize.QSize
proc onminimumSizeHint*(self: QTableWidget, slot: proc(super: QTableWidgetminimumSizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetminimumSizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_minimumSizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_minimumSizeHint(self: ptr cQTableWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTableWidget_minimumSizeHint ".} =
  type Cb = proc(super: QTableWidgetminimumSizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_minimumSizeHint(QTableWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_sizeHint(self: QTableWidget, ): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTableWidget_virtualbase_sizeHint(self.h))

type QTableWidgetsizeHintBase* = proc(): gen_qsize.QSize
proc onsizeHint*(self: QTableWidget, slot: proc(super: QTableWidgetsizeHintBase): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetsizeHintBase): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_sizeHint(self: ptr cQTableWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTableWidget_sizeHint ".} =
  type Cb = proc(super: QTableWidgetsizeHintBase): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sizeHint(QTableWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setupViewport(self: QTableWidget, viewport: gen_qwidget.QWidget): void =


  fQTableWidget_virtualbase_setupViewport(self.h, viewport.h)

type QTableWidgetsetupViewportBase* = proc(viewport: gen_qwidget.QWidget): void
proc onsetupViewport*(self: QTableWidget, slot: proc(super: QTableWidgetsetupViewportBase, viewport: gen_qwidget.QWidget): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_setupViewport(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_setupViewport(self: ptr cQTableWidget, slot: int, viewport: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_setupViewport ".} =
  type Cb = proc(super: QTableWidgetsetupViewportBase, viewport: gen_qwidget.QWidget): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(viewport: gen_qwidget.QWidget): auto =
    callVirtualBase_setupViewport(QTableWidget(h: self), viewport)
  let slotval1 = gen_qwidget.QWidget(h: viewport)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_wheelEvent(self: QTableWidget, param1: gen_qevent.QWheelEvent): void =


  fQTableWidget_virtualbase_wheelEvent(self.h, param1.h)

type QTableWidgetwheelEventBase* = proc(param1: gen_qevent.QWheelEvent): void
proc onwheelEvent*(self: QTableWidget, slot: proc(super: QTableWidgetwheelEventBase, param1: gen_qevent.QWheelEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_wheelEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_wheelEvent(self: ptr cQTableWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_wheelEvent ".} =
  type Cb = proc(super: QTableWidgetwheelEventBase, param1: gen_qevent.QWheelEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QWheelEvent): auto =
    callVirtualBase_wheelEvent(QTableWidget(h: self), param1)
  let slotval1 = gen_qevent.QWheelEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextMenuEvent(self: QTableWidget, param1: gen_qevent.QContextMenuEvent): void =


  fQTableWidget_virtualbase_contextMenuEvent(self.h, param1.h)

type QTableWidgetcontextMenuEventBase* = proc(param1: gen_qevent.QContextMenuEvent): void
proc oncontextMenuEvent*(self: QTableWidget, slot: proc(super: QTableWidgetcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_contextMenuEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_contextMenuEvent(self: ptr cQTableWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_contextMenuEvent ".} =
  type Cb = proc(super: QTableWidgetcontextMenuEventBase, param1: gen_qevent.QContextMenuEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qevent.QContextMenuEvent): auto =
    callVirtualBase_contextMenuEvent(QTableWidget(h: self), param1)
  let slotval1 = gen_qevent.QContextMenuEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_changeEvent(self: QTableWidget, param1: gen_qcoreevent.QEvent): void =


  fQTableWidget_virtualbase_changeEvent(self.h, param1.h)

type QTableWidgetchangeEventBase* = proc(param1: gen_qcoreevent.QEvent): void
proc onchangeEvent*(self: QTableWidget, slot: proc(super: QTableWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_changeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_changeEvent(self: ptr cQTableWidget, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_changeEvent ".} =
  type Cb = proc(super: QTableWidgetchangeEventBase, param1: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_changeEvent(QTableWidget(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_initStyleOption(self: QTableWidget, option: gen_qstyleoption.QStyleOptionFrame): void =


  fQTableWidget_virtualbase_initStyleOption(self.h, option.h)

type QTableWidgetinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionFrame): void
proc oninitStyleOption*(self: QTableWidget, slot: proc(super: QTableWidgetinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_initStyleOption(self: ptr cQTableWidget, slot: int, option: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_initStyleOption ".} =
  type Cb = proc(super: QTableWidgetinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionFrame): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionFrame): auto =
    callVirtualBase_initStyleOption(QTableWidget(h: self), option)
  let slotval1 = gen_qstyleoption.QStyleOptionFrame(h: option)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_devType(self: QTableWidget, ): cint =


  fQTableWidget_virtualbase_devType(self.h)

type QTableWidgetdevTypeBase* = proc(): cint
proc ondevType*(self: QTableWidget, slot: proc(super: QTableWidgetdevTypeBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetdevTypeBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_devType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_devType(self: ptr cQTableWidget, slot: int): cint {.exportc: "miqt_exec_callback_QTableWidget_devType ".} =
  type Cb = proc(super: QTableWidgetdevTypeBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_devType(QTableWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setVisible(self: QTableWidget, visible: bool): void =


  fQTableWidget_virtualbase_setVisible(self.h, visible)

type QTableWidgetsetVisibleBase* = proc(visible: bool): void
proc onsetVisible*(self: QTableWidget, slot: proc(super: QTableWidgetsetVisibleBase, visible: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetsetVisibleBase, visible: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_setVisible(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_setVisible(self: ptr cQTableWidget, slot: int, visible: bool): void {.exportc: "miqt_exec_callback_QTableWidget_setVisible ".} =
  type Cb = proc(super: QTableWidgetsetVisibleBase, visible: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(visible: bool): auto =
    callVirtualBase_setVisible(QTableWidget(h: self), visible)
  let slotval1 = visible


  nimfunc[](superCall, slotval1)
proc callVirtualBase_heightForWidth(self: QTableWidget, param1: cint): cint =


  fQTableWidget_virtualbase_heightForWidth(self.h, param1)

type QTableWidgetheightForWidthBase* = proc(param1: cint): cint
proc onheightForWidth*(self: QTableWidget, slot: proc(super: QTableWidgetheightForWidthBase, param1: cint): cint) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetheightForWidthBase, param1: cint): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_heightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_heightForWidth(self: ptr cQTableWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTableWidget_heightForWidth ".} =
  type Cb = proc(super: QTableWidgetheightForWidthBase, param1: cint): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_heightForWidth(QTableWidget(h: self), param1)
  let slotval1 = param1


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasHeightForWidth(self: QTableWidget, ): bool =


  fQTableWidget_virtualbase_hasHeightForWidth(self.h)

type QTableWidgethasHeightForWidthBase* = proc(): bool
proc onhasHeightForWidth*(self: QTableWidget, slot: proc(super: QTableWidgethasHeightForWidthBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgethasHeightForWidthBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_hasHeightForWidth(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_hasHeightForWidth(self: ptr cQTableWidget, slot: int): bool {.exportc: "miqt_exec_callback_QTableWidget_hasHeightForWidth ".} =
  type Cb = proc(super: QTableWidgethasHeightForWidthBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasHeightForWidth(QTableWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_paintEngine(self: QTableWidget, ): gen_qpaintengine.QPaintEngine =


  gen_qpaintengine.QPaintEngine(h: fQTableWidget_virtualbase_paintEngine(self.h))

type QTableWidgetpaintEngineBase* = proc(): gen_qpaintengine.QPaintEngine
proc onpaintEngine*(self: QTableWidget, slot: proc(super: QTableWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_paintEngine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_paintEngine(self: ptr cQTableWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTableWidget_paintEngine ".} =
  type Cb = proc(super: QTableWidgetpaintEngineBase): gen_qpaintengine.QPaintEngine
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintEngine(QTableWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_keyReleaseEvent(self: QTableWidget, event: gen_qevent.QKeyEvent): void =


  fQTableWidget_virtualbase_keyReleaseEvent(self.h, event.h)

type QTableWidgetkeyReleaseEventBase* = proc(event: gen_qevent.QKeyEvent): void
proc onkeyReleaseEvent*(self: QTableWidget, slot: proc(super: QTableWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_keyReleaseEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_keyReleaseEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_keyReleaseEvent ".} =
  type Cb = proc(super: QTableWidgetkeyReleaseEventBase, event: gen_qevent.QKeyEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QKeyEvent): auto =
    callVirtualBase_keyReleaseEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qevent.QKeyEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_enterEvent(self: QTableWidget, event: gen_qevent.QEnterEvent): void =


  fQTableWidget_virtualbase_enterEvent(self.h, event.h)

type QTableWidgetenterEventBase* = proc(event: gen_qevent.QEnterEvent): void
proc onenterEvent*(self: QTableWidget, slot: proc(super: QTableWidgetenterEventBase, event: gen_qevent.QEnterEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetenterEventBase, event: gen_qevent.QEnterEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_enterEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_enterEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_enterEvent ".} =
  type Cb = proc(super: QTableWidgetenterEventBase, event: gen_qevent.QEnterEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QEnterEvent): auto =
    callVirtualBase_enterEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qevent.QEnterEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_leaveEvent(self: QTableWidget, event: gen_qcoreevent.QEvent): void =


  fQTableWidget_virtualbase_leaveEvent(self.h, event.h)

type QTableWidgetleaveEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc onleaveEvent*(self: QTableWidget, slot: proc(super: QTableWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_leaveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_leaveEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_leaveEvent ".} =
  type Cb = proc(super: QTableWidgetleaveEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_leaveEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_moveEvent(self: QTableWidget, event: gen_qevent.QMoveEvent): void =


  fQTableWidget_virtualbase_moveEvent(self.h, event.h)

type QTableWidgetmoveEventBase* = proc(event: gen_qevent.QMoveEvent): void
proc onmoveEvent*(self: QTableWidget, slot: proc(super: QTableWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_moveEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_moveEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_moveEvent ".} =
  type Cb = proc(super: QTableWidgetmoveEventBase, event: gen_qevent.QMoveEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QMoveEvent): auto =
    callVirtualBase_moveEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qevent.QMoveEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_closeEvent(self: QTableWidget, event: gen_qevent.QCloseEvent): void =


  fQTableWidget_virtualbase_closeEvent(self.h, event.h)

type QTableWidgetcloseEventBase* = proc(event: gen_qevent.QCloseEvent): void
proc oncloseEvent*(self: QTableWidget, slot: proc(super: QTableWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_closeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_closeEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_closeEvent ".} =
  type Cb = proc(super: QTableWidgetcloseEventBase, event: gen_qevent.QCloseEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QCloseEvent): auto =
    callVirtualBase_closeEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qevent.QCloseEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_tabletEvent(self: QTableWidget, event: gen_qevent.QTabletEvent): void =


  fQTableWidget_virtualbase_tabletEvent(self.h, event.h)

type QTableWidgettabletEventBase* = proc(event: gen_qevent.QTabletEvent): void
proc ontabletEvent*(self: QTableWidget, slot: proc(super: QTableWidgettabletEventBase, event: gen_qevent.QTabletEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_tabletEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_tabletEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_tabletEvent ".} =
  type Cb = proc(super: QTableWidgettabletEventBase, event: gen_qevent.QTabletEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QTabletEvent): auto =
    callVirtualBase_tabletEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qevent.QTabletEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_actionEvent(self: QTableWidget, event: gen_qevent.QActionEvent): void =


  fQTableWidget_virtualbase_actionEvent(self.h, event.h)

type QTableWidgetactionEventBase* = proc(event: gen_qevent.QActionEvent): void
proc onactionEvent*(self: QTableWidget, slot: proc(super: QTableWidgetactionEventBase, event: gen_qevent.QActionEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_actionEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_actionEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_actionEvent ".} =
  type Cb = proc(super: QTableWidgetactionEventBase, event: gen_qevent.QActionEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QActionEvent): auto =
    callVirtualBase_actionEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qevent.QActionEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_showEvent(self: QTableWidget, event: gen_qevent.QShowEvent): void =


  fQTableWidget_virtualbase_showEvent(self.h, event.h)

type QTableWidgetshowEventBase* = proc(event: gen_qevent.QShowEvent): void
proc onshowEvent*(self: QTableWidget, slot: proc(super: QTableWidgetshowEventBase, event: gen_qevent.QShowEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_showEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_showEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_showEvent ".} =
  type Cb = proc(super: QTableWidgetshowEventBase, event: gen_qevent.QShowEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QShowEvent): auto =
    callVirtualBase_showEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qevent.QShowEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hideEvent(self: QTableWidget, event: gen_qevent.QHideEvent): void =


  fQTableWidget_virtualbase_hideEvent(self.h, event.h)

type QTableWidgethideEventBase* = proc(event: gen_qevent.QHideEvent): void
proc onhideEvent*(self: QTableWidget, slot: proc(super: QTableWidgethideEventBase, event: gen_qevent.QHideEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_hideEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_hideEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_hideEvent ".} =
  type Cb = proc(super: QTableWidgethideEventBase, event: gen_qevent.QHideEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHideEvent): auto =
    callVirtualBase_hideEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qevent.QHideEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_nativeEvent(self: QTableWidget, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool =


  fQTableWidget_virtualbase_nativeEvent(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QTableWidgetnativeEventBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
proc onnativeEvent*(self: QTableWidget, slot: proc(super: QTableWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_nativeEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_nativeEvent(self: ptr cQTableWidget, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr uint): bool {.exportc: "miqt_exec_callback_QTableWidget_nativeEvent ".} =
  type Cb = proc(super: QTableWidgetnativeEventBase, eventType: seq[byte], message: pointer, resultVal: ptr uint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(eventType: seq[byte], message: pointer, resultVal: ptr uint): auto =
    callVirtualBase_nativeEvent(QTableWidget(h: self), eventType, message, resultVal)
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_metric(self: QTableWidget, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint =


  fQTableWidget_virtualbase_metric(self.h, cint(param1))

type QTableWidgetmetricBase* = proc(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
proc onmetric*(self: QTableWidget, slot: proc(super: QTableWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_metric(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_metric(self: ptr cQTableWidget, slot: int, param1: cint): cint {.exportc: "miqt_exec_callback_QTableWidget_metric ".} =
  type Cb = proc(super: QTableWidgetmetricBase, param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qpaintdevice.QPaintDevicePaintDeviceMetric): auto =
    callVirtualBase_metric(QTableWidget(h: self), param1)
  let slotval1 = gen_qpaintdevice.QPaintDevicePaintDeviceMetric(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_initPainter(self: QTableWidget, painter: gen_qpainter.QPainter): void =


  fQTableWidget_virtualbase_initPainter(self.h, painter.h)

type QTableWidgetinitPainterBase* = proc(painter: gen_qpainter.QPainter): void
proc oninitPainter*(self: QTableWidget, slot: proc(super: QTableWidgetinitPainterBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_initPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_initPainter(self: ptr cQTableWidget, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_initPainter ".} =
  type Cb = proc(super: QTableWidgetinitPainterBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_initPainter(QTableWidget(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_redirected(self: QTableWidget, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice =


  gen_qpaintdevice.QPaintDevice(h: fQTableWidget_virtualbase_redirected(self.h, offset.h))

type QTableWidgetredirectedBase* = proc(offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
proc onredirected*(self: QTableWidget, slot: proc(super: QTableWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_redirected(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_redirected(self: ptr cQTableWidget, slot: int, offset: pointer): pointer {.exportc: "miqt_exec_callback_QTableWidget_redirected ".} =
  type Cb = proc(super: QTableWidgetredirectedBase, offset: gen_qpoint.QPoint): gen_qpaintdevice.QPaintDevice
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: gen_qpoint.QPoint): auto =
    callVirtualBase_redirected(QTableWidget(h: self), offset)
  let slotval1 = gen_qpoint.QPoint(h: offset)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sharedPainter(self: QTableWidget, ): gen_qpainter.QPainter =


  gen_qpainter.QPainter(h: fQTableWidget_virtualbase_sharedPainter(self.h))

type QTableWidgetsharedPainterBase* = proc(): gen_qpainter.QPainter
proc onsharedPainter*(self: QTableWidget, slot: proc(super: QTableWidgetsharedPainterBase): gen_qpainter.QPainter) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetsharedPainterBase): gen_qpainter.QPainter
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_sharedPainter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_sharedPainter(self: ptr cQTableWidget, slot: int): pointer {.exportc: "miqt_exec_callback_QTableWidget_sharedPainter ".} =
  type Cb = proc(super: QTableWidgetsharedPainterBase): gen_qpainter.QPainter
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_sharedPainter(QTableWidget(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_childEvent(self: QTableWidget, event: gen_qcoreevent.QChildEvent): void =


  fQTableWidget_virtualbase_childEvent(self.h, event.h)

type QTableWidgetchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTableWidget, slot: proc(super: QTableWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_childEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_childEvent ".} =
  type Cb = proc(super: QTableWidgetchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTableWidget, event: gen_qcoreevent.QEvent): void =


  fQTableWidget_virtualbase_customEvent(self.h, event.h)

type QTableWidgetcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTableWidget, slot: proc(super: QTableWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_customEvent(self: ptr cQTableWidget, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_customEvent ".} =
  type Cb = proc(super: QTableWidgetcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTableWidget(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTableWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQTableWidget_virtualbase_connectNotify(self.h, signal.h)

type QTableWidgetconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTableWidget, slot: proc(super: QTableWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_connectNotify(self: ptr cQTableWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_connectNotify ".} =
  type Cb = proc(super: QTableWidgetconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTableWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTableWidget, signal: gen_qmetaobject.QMetaMethod): void =


  fQTableWidget_virtualbase_disconnectNotify(self.h, signal.h)

type QTableWidgetdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTableWidget, slot: proc(super: QTableWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTableWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTableWidget_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTableWidget_disconnectNotify(self: ptr cQTableWidget, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTableWidget_disconnectNotify ".} =
  type Cb = proc(super: QTableWidgetdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTableWidget(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QTableWidget): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQTableWidget_staticMetaObject())
proc delete*(self: QTableWidget) =
  fcQTableWidget_delete(self.h)
