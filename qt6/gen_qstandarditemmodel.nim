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
{.compile("gen_qstandarditemmodel.cpp", cflags).}


type QStandardItemItemType* = cint
const
  QStandardItemType* = 0
  QStandardItemUserType* = 1000



import gen_qstandarditemmodel_types
export gen_qstandarditemmodel_types

import
  gen_qabstractitemmodel,
  gen_qbrush,
  gen_qcoreevent,
  gen_qdatastream,
  gen_qfont,
  gen_qicon,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qvariant,
  std/tables
export
  gen_qabstractitemmodel,
  gen_qbrush,
  gen_qcoreevent,
  gen_qdatastream,
  gen_qfont,
  gen_qicon,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qvariant

type cQStandardItem*{.exportc: "QStandardItem", incompleteStruct.} = object
type cQStandardItemModel*{.exportc: "QStandardItemModel", incompleteStruct.} = object

proc fcQStandardItem_new(): ptr cQStandardItem {.importc: "QStandardItem_new".}
proc fcQStandardItem_new2(text: struct_miqt_string): ptr cQStandardItem {.importc: "QStandardItem_new2".}
proc fcQStandardItem_new3(icon: pointer, text: struct_miqt_string): ptr cQStandardItem {.importc: "QStandardItem_new3".}
proc fcQStandardItem_new4(rows: cint): ptr cQStandardItem {.importc: "QStandardItem_new4".}
proc fcQStandardItem_new5(rows: cint, columns: cint): ptr cQStandardItem {.importc: "QStandardItem_new5".}
proc fcQStandardItem_data(self: pointer, role: cint): pointer {.importc: "QStandardItem_data".}
proc fcQStandardItem_multiData(self: pointer, roleDataSpan: pointer): void {.importc: "QStandardItem_multiData".}
proc fcQStandardItem_setData(self: pointer, value: pointer, role: cint): void {.importc: "QStandardItem_setData".}
proc fcQStandardItem_clearData(self: pointer, ): void {.importc: "QStandardItem_clearData".}
proc fcQStandardItem_text(self: pointer, ): struct_miqt_string {.importc: "QStandardItem_text".}
proc fcQStandardItem_setText(self: pointer, text: struct_miqt_string): void {.importc: "QStandardItem_setText".}
proc fcQStandardItem_icon(self: pointer, ): pointer {.importc: "QStandardItem_icon".}
proc fcQStandardItem_setIcon(self: pointer, icon: pointer): void {.importc: "QStandardItem_setIcon".}
proc fcQStandardItem_toolTip(self: pointer, ): struct_miqt_string {.importc: "QStandardItem_toolTip".}
proc fcQStandardItem_setToolTip(self: pointer, toolTip: struct_miqt_string): void {.importc: "QStandardItem_setToolTip".}
proc fcQStandardItem_statusTip(self: pointer, ): struct_miqt_string {.importc: "QStandardItem_statusTip".}
proc fcQStandardItem_setStatusTip(self: pointer, statusTip: struct_miqt_string): void {.importc: "QStandardItem_setStatusTip".}
proc fcQStandardItem_whatsThis(self: pointer, ): struct_miqt_string {.importc: "QStandardItem_whatsThis".}
proc fcQStandardItem_setWhatsThis(self: pointer, whatsThis: struct_miqt_string): void {.importc: "QStandardItem_setWhatsThis".}
proc fcQStandardItem_sizeHint(self: pointer, ): pointer {.importc: "QStandardItem_sizeHint".}
proc fcQStandardItem_setSizeHint(self: pointer, sizeHint: pointer): void {.importc: "QStandardItem_setSizeHint".}
proc fcQStandardItem_font(self: pointer, ): pointer {.importc: "QStandardItem_font".}
proc fcQStandardItem_setFont(self: pointer, font: pointer): void {.importc: "QStandardItem_setFont".}
proc fcQStandardItem_textAlignment(self: pointer, ): cint {.importc: "QStandardItem_textAlignment".}
proc fcQStandardItem_setTextAlignment(self: pointer, textAlignment: cint): void {.importc: "QStandardItem_setTextAlignment".}
proc fcQStandardItem_background(self: pointer, ): pointer {.importc: "QStandardItem_background".}
proc fcQStandardItem_setBackground(self: pointer, brush: pointer): void {.importc: "QStandardItem_setBackground".}
proc fcQStandardItem_foreground(self: pointer, ): pointer {.importc: "QStandardItem_foreground".}
proc fcQStandardItem_setForeground(self: pointer, brush: pointer): void {.importc: "QStandardItem_setForeground".}
proc fcQStandardItem_checkState(self: pointer, ): cint {.importc: "QStandardItem_checkState".}
proc fcQStandardItem_setCheckState(self: pointer, checkState: cint): void {.importc: "QStandardItem_setCheckState".}
proc fcQStandardItem_accessibleText(self: pointer, ): struct_miqt_string {.importc: "QStandardItem_accessibleText".}
proc fcQStandardItem_setAccessibleText(self: pointer, accessibleText: struct_miqt_string): void {.importc: "QStandardItem_setAccessibleText".}
proc fcQStandardItem_accessibleDescription(self: pointer, ): struct_miqt_string {.importc: "QStandardItem_accessibleDescription".}
proc fcQStandardItem_setAccessibleDescription(self: pointer, accessibleDescription: struct_miqt_string): void {.importc: "QStandardItem_setAccessibleDescription".}
proc fcQStandardItem_flags(self: pointer, ): cint {.importc: "QStandardItem_flags".}
proc fcQStandardItem_setFlags(self: pointer, flags: cint): void {.importc: "QStandardItem_setFlags".}
proc fcQStandardItem_isEnabled(self: pointer, ): bool {.importc: "QStandardItem_isEnabled".}
proc fcQStandardItem_setEnabled(self: pointer, enabled: bool): void {.importc: "QStandardItem_setEnabled".}
proc fcQStandardItem_isEditable(self: pointer, ): bool {.importc: "QStandardItem_isEditable".}
proc fcQStandardItem_setEditable(self: pointer, editable: bool): void {.importc: "QStandardItem_setEditable".}
proc fcQStandardItem_isSelectable(self: pointer, ): bool {.importc: "QStandardItem_isSelectable".}
proc fcQStandardItem_setSelectable(self: pointer, selectable: bool): void {.importc: "QStandardItem_setSelectable".}
proc fcQStandardItem_isCheckable(self: pointer, ): bool {.importc: "QStandardItem_isCheckable".}
proc fcQStandardItem_setCheckable(self: pointer, checkable: bool): void {.importc: "QStandardItem_setCheckable".}
proc fcQStandardItem_isAutoTristate(self: pointer, ): bool {.importc: "QStandardItem_isAutoTristate".}
proc fcQStandardItem_setAutoTristate(self: pointer, tristate: bool): void {.importc: "QStandardItem_setAutoTristate".}
proc fcQStandardItem_isUserTristate(self: pointer, ): bool {.importc: "QStandardItem_isUserTristate".}
proc fcQStandardItem_setUserTristate(self: pointer, tristate: bool): void {.importc: "QStandardItem_setUserTristate".}
proc fcQStandardItem_isDragEnabled(self: pointer, ): bool {.importc: "QStandardItem_isDragEnabled".}
proc fcQStandardItem_setDragEnabled(self: pointer, dragEnabled: bool): void {.importc: "QStandardItem_setDragEnabled".}
proc fcQStandardItem_isDropEnabled(self: pointer, ): bool {.importc: "QStandardItem_isDropEnabled".}
proc fcQStandardItem_setDropEnabled(self: pointer, dropEnabled: bool): void {.importc: "QStandardItem_setDropEnabled".}
proc fcQStandardItem_parent(self: pointer, ): pointer {.importc: "QStandardItem_parent".}
proc fcQStandardItem_row(self: pointer, ): cint {.importc: "QStandardItem_row".}
proc fcQStandardItem_column(self: pointer, ): cint {.importc: "QStandardItem_column".}
proc fcQStandardItem_index(self: pointer, ): pointer {.importc: "QStandardItem_index".}
proc fcQStandardItem_model(self: pointer, ): pointer {.importc: "QStandardItem_model".}
proc fcQStandardItem_rowCount(self: pointer, ): cint {.importc: "QStandardItem_rowCount".}
proc fcQStandardItem_setRowCount(self: pointer, rows: cint): void {.importc: "QStandardItem_setRowCount".}
proc fcQStandardItem_columnCount(self: pointer, ): cint {.importc: "QStandardItem_columnCount".}
proc fcQStandardItem_setColumnCount(self: pointer, columns: cint): void {.importc: "QStandardItem_setColumnCount".}
proc fcQStandardItem_hasChildren(self: pointer, ): bool {.importc: "QStandardItem_hasChildren".}
proc fcQStandardItem_child(self: pointer, row: cint): pointer {.importc: "QStandardItem_child".}
proc fcQStandardItem_setChild(self: pointer, row: cint, column: cint, item: pointer): void {.importc: "QStandardItem_setChild".}
proc fcQStandardItem_setChild2(self: pointer, row: cint, item: pointer): void {.importc: "QStandardItem_setChild2".}
proc fcQStandardItem_insertRow(self: pointer, row: cint, items: struct_miqt_array): void {.importc: "QStandardItem_insertRow".}
proc fcQStandardItem_insertColumn(self: pointer, column: cint, items: struct_miqt_array): void {.importc: "QStandardItem_insertColumn".}
proc fcQStandardItem_insertRows(self: pointer, row: cint, items: struct_miqt_array): void {.importc: "QStandardItem_insertRows".}
proc fcQStandardItem_insertRows2(self: pointer, row: cint, count: cint): void {.importc: "QStandardItem_insertRows2".}
proc fcQStandardItem_insertColumns(self: pointer, column: cint, count: cint): void {.importc: "QStandardItem_insertColumns".}
proc fcQStandardItem_removeRow(self: pointer, row: cint): void {.importc: "QStandardItem_removeRow".}
proc fcQStandardItem_removeColumn(self: pointer, column: cint): void {.importc: "QStandardItem_removeColumn".}
proc fcQStandardItem_removeRows(self: pointer, row: cint, count: cint): void {.importc: "QStandardItem_removeRows".}
proc fcQStandardItem_removeColumns(self: pointer, column: cint, count: cint): void {.importc: "QStandardItem_removeColumns".}
proc fcQStandardItem_appendRow(self: pointer, items: struct_miqt_array): void {.importc: "QStandardItem_appendRow".}
proc fcQStandardItem_appendRows(self: pointer, items: struct_miqt_array): void {.importc: "QStandardItem_appendRows".}
proc fcQStandardItem_appendColumn(self: pointer, items: struct_miqt_array): void {.importc: "QStandardItem_appendColumn".}
proc fcQStandardItem_insertRow2(self: pointer, row: cint, item: pointer): void {.importc: "QStandardItem_insertRow2".}
proc fcQStandardItem_appendRowWithItem(self: pointer, item: pointer): void {.importc: "QStandardItem_appendRowWithItem".}
proc fcQStandardItem_takeChild(self: pointer, row: cint): pointer {.importc: "QStandardItem_takeChild".}
proc fcQStandardItem_takeRow(self: pointer, row: cint): struct_miqt_array {.importc: "QStandardItem_takeRow".}
proc fcQStandardItem_takeColumn(self: pointer, column: cint): struct_miqt_array {.importc: "QStandardItem_takeColumn".}
proc fcQStandardItem_sortChildren(self: pointer, column: cint): void {.importc: "QStandardItem_sortChildren".}
proc fcQStandardItem_clone(self: pointer, ): pointer {.importc: "QStandardItem_clone".}
proc fcQStandardItem_typeX(self: pointer, ): cint {.importc: "QStandardItem_type".}
proc fcQStandardItem_read(self: pointer, inVal: pointer): void {.importc: "QStandardItem_read".}
proc fcQStandardItem_write(self: pointer, outVal: pointer): void {.importc: "QStandardItem_write".}
proc fcQStandardItem_operatorLesser(self: pointer, other: pointer): bool {.importc: "QStandardItem_operatorLesser".}
proc fcQStandardItem_child2(self: pointer, row: cint, column: cint): pointer {.importc: "QStandardItem_child2".}
proc fcQStandardItem_takeChild2(self: pointer, row: cint, column: cint): pointer {.importc: "QStandardItem_takeChild2".}
proc fcQStandardItem_sortChildren2(self: pointer, column: cint, order: cint): void {.importc: "QStandardItem_sortChildren2".}
proc fQStandardItem_virtualbase_data(self: pointer, role: cint): pointer{.importc: "QStandardItem_virtualbase_data".}
proc fcQStandardItem_override_virtual_data(self: pointer, slot: int) {.importc: "QStandardItem_override_virtual_data".}
proc fQStandardItem_virtualbase_multiData(self: pointer, roleDataSpan: pointer): void{.importc: "QStandardItem_virtualbase_multiData".}
proc fcQStandardItem_override_virtual_multiData(self: pointer, slot: int) {.importc: "QStandardItem_override_virtual_multiData".}
proc fQStandardItem_virtualbase_setData(self: pointer, value: pointer, role: cint): void{.importc: "QStandardItem_virtualbase_setData".}
proc fcQStandardItem_override_virtual_setData(self: pointer, slot: int) {.importc: "QStandardItem_override_virtual_setData".}
proc fQStandardItem_virtualbase_clone(self: pointer, ): pointer{.importc: "QStandardItem_virtualbase_clone".}
proc fcQStandardItem_override_virtual_clone(self: pointer, slot: int) {.importc: "QStandardItem_override_virtual_clone".}
proc fQStandardItem_virtualbase_type(self: pointer, ): cint{.importc: "QStandardItem_virtualbase_type".}
proc fcQStandardItem_override_virtual_typeX(self: pointer, slot: int) {.importc: "QStandardItem_override_virtual_type".}
proc fQStandardItem_virtualbase_read(self: pointer, inVal: pointer): void{.importc: "QStandardItem_virtualbase_read".}
proc fcQStandardItem_override_virtual_read(self: pointer, slot: int) {.importc: "QStandardItem_override_virtual_read".}
proc fQStandardItem_virtualbase_write(self: pointer, outVal: pointer): void{.importc: "QStandardItem_virtualbase_write".}
proc fcQStandardItem_override_virtual_write(self: pointer, slot: int) {.importc: "QStandardItem_override_virtual_write".}
proc fQStandardItem_virtualbase_operatorLesser(self: pointer, other: pointer): bool{.importc: "QStandardItem_virtualbase_operatorLesser".}
proc fcQStandardItem_override_virtual_operatorLesser(self: pointer, slot: int) {.importc: "QStandardItem_override_virtual_operatorLesser".}
proc fcQStandardItem_delete(self: pointer) {.importc: "QStandardItem_delete".}
proc fcQStandardItemModel_new(): ptr cQStandardItemModel {.importc: "QStandardItemModel_new".}
proc fcQStandardItemModel_new2(rows: cint, columns: cint): ptr cQStandardItemModel {.importc: "QStandardItemModel_new2".}
proc fcQStandardItemModel_new3(parent: pointer): ptr cQStandardItemModel {.importc: "QStandardItemModel_new3".}
proc fcQStandardItemModel_new4(rows: cint, columns: cint, parent: pointer): ptr cQStandardItemModel {.importc: "QStandardItemModel_new4".}
proc fcQStandardItemModel_metaObject(self: pointer, ): pointer {.importc: "QStandardItemModel_metaObject".}
proc fcQStandardItemModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QStandardItemModel_metacast".}
proc fcQStandardItemModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStandardItemModel_metacall".}
proc fcQStandardItemModel_tr(s: cstring): struct_miqt_string {.importc: "QStandardItemModel_tr".}
proc fcQStandardItemModel_setItemRoleNames(self: pointer, roleNames: struct_miqt_map): void {.importc: "QStandardItemModel_setItemRoleNames".}
proc fcQStandardItemModel_roleNames(self: pointer, ): struct_miqt_map {.importc: "QStandardItemModel_roleNames".}
proc fcQStandardItemModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QStandardItemModel_index".}
proc fcQStandardItemModel_parent(self: pointer, child: pointer): pointer {.importc: "QStandardItemModel_parent".}
proc fcQStandardItemModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QStandardItemModel_rowCount".}
proc fcQStandardItemModel_columnCount(self: pointer, parent: pointer): cint {.importc: "QStandardItemModel_columnCount".}
proc fcQStandardItemModel_hasChildren(self: pointer, parent: pointer): bool {.importc: "QStandardItemModel_hasChildren".}
proc fcQStandardItemModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QStandardItemModel_data".}
proc fcQStandardItemModel_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void {.importc: "QStandardItemModel_multiData".}
proc fcQStandardItemModel_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QStandardItemModel_setData".}
proc fcQStandardItemModel_clearItemData(self: pointer, index: pointer): bool {.importc: "QStandardItemModel_clearItemData".}
proc fcQStandardItemModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QStandardItemModel_headerData".}
proc fcQStandardItemModel_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QStandardItemModel_setHeaderData".}
proc fcQStandardItemModel_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QStandardItemModel_insertRows".}
proc fcQStandardItemModel_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QStandardItemModel_insertColumns".}
proc fcQStandardItemModel_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QStandardItemModel_removeRows".}
proc fcQStandardItemModel_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QStandardItemModel_removeColumns".}
proc fcQStandardItemModel_flags(self: pointer, index: pointer): cint {.importc: "QStandardItemModel_flags".}
proc fcQStandardItemModel_supportedDropActions(self: pointer, ): cint {.importc: "QStandardItemModel_supportedDropActions".}
proc fcQStandardItemModel_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QStandardItemModel_itemData".}
proc fcQStandardItemModel_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QStandardItemModel_setItemData".}
proc fcQStandardItemModel_clear(self: pointer, ): void {.importc: "QStandardItemModel_clear".}
proc fcQStandardItemModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QStandardItemModel_sort".}
proc fcQStandardItemModel_itemFromIndex(self: pointer, index: pointer): pointer {.importc: "QStandardItemModel_itemFromIndex".}
proc fcQStandardItemModel_indexFromItem(self: pointer, item: pointer): pointer {.importc: "QStandardItemModel_indexFromItem".}
proc fcQStandardItemModel_item(self: pointer, row: cint): pointer {.importc: "QStandardItemModel_item".}
proc fcQStandardItemModel_setItem(self: pointer, row: cint, column: cint, item: pointer): void {.importc: "QStandardItemModel_setItem".}
proc fcQStandardItemModel_setItem2(self: pointer, row: cint, item: pointer): void {.importc: "QStandardItemModel_setItem2".}
proc fcQStandardItemModel_invisibleRootItem(self: pointer, ): pointer {.importc: "QStandardItemModel_invisibleRootItem".}
proc fcQStandardItemModel_horizontalHeaderItem(self: pointer, column: cint): pointer {.importc: "QStandardItemModel_horizontalHeaderItem".}
proc fcQStandardItemModel_setHorizontalHeaderItem(self: pointer, column: cint, item: pointer): void {.importc: "QStandardItemModel_setHorizontalHeaderItem".}
proc fcQStandardItemModel_verticalHeaderItem(self: pointer, row: cint): pointer {.importc: "QStandardItemModel_verticalHeaderItem".}
proc fcQStandardItemModel_setVerticalHeaderItem(self: pointer, row: cint, item: pointer): void {.importc: "QStandardItemModel_setVerticalHeaderItem".}
proc fcQStandardItemModel_setHorizontalHeaderLabels(self: pointer, labels: struct_miqt_array): void {.importc: "QStandardItemModel_setHorizontalHeaderLabels".}
proc fcQStandardItemModel_setVerticalHeaderLabels(self: pointer, labels: struct_miqt_array): void {.importc: "QStandardItemModel_setVerticalHeaderLabels".}
proc fcQStandardItemModel_setRowCount(self: pointer, rows: cint): void {.importc: "QStandardItemModel_setRowCount".}
proc fcQStandardItemModel_setColumnCount(self: pointer, columns: cint): void {.importc: "QStandardItemModel_setColumnCount".}
proc fcQStandardItemModel_appendRow(self: pointer, items: struct_miqt_array): void {.importc: "QStandardItemModel_appendRow".}
proc fcQStandardItemModel_appendColumn(self: pointer, items: struct_miqt_array): void {.importc: "QStandardItemModel_appendColumn".}
proc fcQStandardItemModel_appendRowWithItem(self: pointer, item: pointer): void {.importc: "QStandardItemModel_appendRowWithItem".}
proc fcQStandardItemModel_insertRow(self: pointer, row: cint, items: struct_miqt_array): void {.importc: "QStandardItemModel_insertRow".}
proc fcQStandardItemModel_insertColumn(self: pointer, column: cint, items: struct_miqt_array): void {.importc: "QStandardItemModel_insertColumn".}
proc fcQStandardItemModel_insertRow2(self: pointer, row: cint, item: pointer): void {.importc: "QStandardItemModel_insertRow2".}
proc fcQStandardItemModel_insertRowWithRow(self: pointer, row: cint): bool {.importc: "QStandardItemModel_insertRowWithRow".}
proc fcQStandardItemModel_insertColumnWithColumn(self: pointer, column: cint): bool {.importc: "QStandardItemModel_insertColumnWithColumn".}
proc fcQStandardItemModel_takeItem(self: pointer, row: cint): pointer {.importc: "QStandardItemModel_takeItem".}
proc fcQStandardItemModel_takeRow(self: pointer, row: cint): struct_miqt_array {.importc: "QStandardItemModel_takeRow".}
proc fcQStandardItemModel_takeColumn(self: pointer, column: cint): struct_miqt_array {.importc: "QStandardItemModel_takeColumn".}
proc fcQStandardItemModel_takeHorizontalHeaderItem(self: pointer, column: cint): pointer {.importc: "QStandardItemModel_takeHorizontalHeaderItem".}
proc fcQStandardItemModel_takeVerticalHeaderItem(self: pointer, row: cint): pointer {.importc: "QStandardItemModel_takeVerticalHeaderItem".}
proc fcQStandardItemModel_itemPrototype(self: pointer, ): pointer {.importc: "QStandardItemModel_itemPrototype".}
proc fcQStandardItemModel_setItemPrototype(self: pointer, item: pointer): void {.importc: "QStandardItemModel_setItemPrototype".}
proc fcQStandardItemModel_findItems(self: pointer, text: struct_miqt_string): struct_miqt_array {.importc: "QStandardItemModel_findItems".}
proc fcQStandardItemModel_sortRole(self: pointer, ): cint {.importc: "QStandardItemModel_sortRole".}
proc fcQStandardItemModel_setSortRole(self: pointer, role: cint): void {.importc: "QStandardItemModel_setSortRole".}
proc fcQStandardItemModel_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QStandardItemModel_mimeTypes".}
proc fcQStandardItemModel_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QStandardItemModel_mimeData".}
proc fcQStandardItemModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QStandardItemModel_dropMimeData".}
proc fcQStandardItemModel_itemChanged(self: pointer, item: pointer): void {.importc: "QStandardItemModel_itemChanged".}
proc fQStandardItemModel_connect_itemChanged(self: pointer, slot: int) {.importc: "QStandardItemModel_connect_itemChanged".}
proc fcQStandardItemModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStandardItemModel_tr2".}
proc fcQStandardItemModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStandardItemModel_tr3".}
proc fcQStandardItemModel_item2(self: pointer, row: cint, column: cint): pointer {.importc: "QStandardItemModel_item2".}
proc fcQStandardItemModel_insertRow22(self: pointer, row: cint, parent: pointer): bool {.importc: "QStandardItemModel_insertRow22".}
proc fcQStandardItemModel_insertColumn2(self: pointer, column: cint, parent: pointer): bool {.importc: "QStandardItemModel_insertColumn2".}
proc fcQStandardItemModel_takeItem2(self: pointer, row: cint, column: cint): pointer {.importc: "QStandardItemModel_takeItem2".}
proc fcQStandardItemModel_findItems2(self: pointer, text: struct_miqt_string, flags: cint): struct_miqt_array {.importc: "QStandardItemModel_findItems2".}
proc fcQStandardItemModel_findItems3(self: pointer, text: struct_miqt_string, flags: cint, column: cint): struct_miqt_array {.importc: "QStandardItemModel_findItems3".}
proc fQStandardItemModel_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QStandardItemModel_virtualbase_metaObject".}
proc fcQStandardItemModel_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_metaObject".}
proc fQStandardItemModel_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QStandardItemModel_virtualbase_metacast".}
proc fcQStandardItemModel_override_virtual_metacast(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_metacast".}
proc fQStandardItemModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QStandardItemModel_virtualbase_metacall".}
proc fcQStandardItemModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_metacall".}
proc fQStandardItemModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QStandardItemModel_virtualbase_roleNames".}
proc fcQStandardItemModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_roleNames".}
proc fQStandardItemModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer{.importc: "QStandardItemModel_virtualbase_index".}
proc fcQStandardItemModel_override_virtual_index(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_index".}
proc fQStandardItemModel_virtualbase_parent(self: pointer, child: pointer): pointer{.importc: "QStandardItemModel_virtualbase_parent".}
proc fcQStandardItemModel_override_virtual_parent(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_parent".}
proc fQStandardItemModel_virtualbase_rowCount(self: pointer, parent: pointer): cint{.importc: "QStandardItemModel_virtualbase_rowCount".}
proc fcQStandardItemModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_rowCount".}
proc fQStandardItemModel_virtualbase_columnCount(self: pointer, parent: pointer): cint{.importc: "QStandardItemModel_virtualbase_columnCount".}
proc fcQStandardItemModel_override_virtual_columnCount(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_columnCount".}
proc fQStandardItemModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool{.importc: "QStandardItemModel_virtualbase_hasChildren".}
proc fcQStandardItemModel_override_virtual_hasChildren(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_hasChildren".}
proc fQStandardItemModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer{.importc: "QStandardItemModel_virtualbase_data".}
proc fcQStandardItemModel_override_virtual_data(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_data".}
proc fQStandardItemModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void{.importc: "QStandardItemModel_virtualbase_multiData".}
proc fcQStandardItemModel_override_virtual_multiData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_multiData".}
proc fQStandardItemModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QStandardItemModel_virtualbase_setData".}
proc fcQStandardItemModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_setData".}
proc fQStandardItemModel_virtualbase_clearItemData(self: pointer, index: pointer): bool{.importc: "QStandardItemModel_virtualbase_clearItemData".}
proc fcQStandardItemModel_override_virtual_clearItemData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_clearItemData".}
proc fQStandardItemModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QStandardItemModel_virtualbase_headerData".}
proc fcQStandardItemModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_headerData".}
proc fQStandardItemModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QStandardItemModel_virtualbase_setHeaderData".}
proc fcQStandardItemModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_setHeaderData".}
proc fQStandardItemModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QStandardItemModel_virtualbase_insertRows".}
proc fcQStandardItemModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_insertRows".}
proc fQStandardItemModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QStandardItemModel_virtualbase_insertColumns".}
proc fcQStandardItemModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_insertColumns".}
proc fQStandardItemModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QStandardItemModel_virtualbase_removeRows".}
proc fcQStandardItemModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_removeRows".}
proc fQStandardItemModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QStandardItemModel_virtualbase_removeColumns".}
proc fcQStandardItemModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_removeColumns".}
proc fQStandardItemModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QStandardItemModel_virtualbase_flags".}
proc fcQStandardItemModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_flags".}
proc fQStandardItemModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QStandardItemModel_virtualbase_supportedDropActions".}
proc fcQStandardItemModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_supportedDropActions".}
proc fQStandardItemModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QStandardItemModel_virtualbase_itemData".}
proc fcQStandardItemModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_itemData".}
proc fQStandardItemModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QStandardItemModel_virtualbase_setItemData".}
proc fcQStandardItemModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_setItemData".}
proc fQStandardItemModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QStandardItemModel_virtualbase_sort".}
proc fcQStandardItemModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_sort".}
proc fQStandardItemModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QStandardItemModel_virtualbase_mimeTypes".}
proc fcQStandardItemModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_mimeTypes".}
proc fQStandardItemModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QStandardItemModel_virtualbase_mimeData".}
proc fcQStandardItemModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_mimeData".}
proc fQStandardItemModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QStandardItemModel_virtualbase_dropMimeData".}
proc fcQStandardItemModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_dropMimeData".}
proc fQStandardItemModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QStandardItemModel_virtualbase_sibling".}
proc fcQStandardItemModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_sibling".}
proc fQStandardItemModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QStandardItemModel_virtualbase_canDropMimeData".}
proc fcQStandardItemModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_canDropMimeData".}
proc fQStandardItemModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QStandardItemModel_virtualbase_supportedDragActions".}
proc fcQStandardItemModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_supportedDragActions".}
proc fQStandardItemModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QStandardItemModel_virtualbase_moveRows".}
proc fcQStandardItemModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_moveRows".}
proc fQStandardItemModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QStandardItemModel_virtualbase_moveColumns".}
proc fcQStandardItemModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_moveColumns".}
proc fQStandardItemModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QStandardItemModel_virtualbase_fetchMore".}
proc fcQStandardItemModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_fetchMore".}
proc fQStandardItemModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QStandardItemModel_virtualbase_canFetchMore".}
proc fcQStandardItemModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_canFetchMore".}
proc fQStandardItemModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QStandardItemModel_virtualbase_buddy".}
proc fcQStandardItemModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_buddy".}
proc fQStandardItemModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QStandardItemModel_virtualbase_match".}
proc fcQStandardItemModel_override_virtual_match(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_match".}
proc fQStandardItemModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QStandardItemModel_virtualbase_span".}
proc fcQStandardItemModel_override_virtual_span(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_span".}
proc fQStandardItemModel_virtualbase_submit(self: pointer, ): bool{.importc: "QStandardItemModel_virtualbase_submit".}
proc fcQStandardItemModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_submit".}
proc fQStandardItemModel_virtualbase_revert(self: pointer, ): void{.importc: "QStandardItemModel_virtualbase_revert".}
proc fcQStandardItemModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_revert".}
proc fQStandardItemModel_virtualbase_resetInternalData(self: pointer, ): void{.importc: "QStandardItemModel_virtualbase_resetInternalData".}
proc fcQStandardItemModel_override_virtual_resetInternalData(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_resetInternalData".}
proc fQStandardItemModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QStandardItemModel_virtualbase_event".}
proc fcQStandardItemModel_override_virtual_event(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_event".}
proc fQStandardItemModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QStandardItemModel_virtualbase_eventFilter".}
proc fcQStandardItemModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_eventFilter".}
proc fQStandardItemModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QStandardItemModel_virtualbase_timerEvent".}
proc fcQStandardItemModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_timerEvent".}
proc fQStandardItemModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QStandardItemModel_virtualbase_childEvent".}
proc fcQStandardItemModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_childEvent".}
proc fQStandardItemModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QStandardItemModel_virtualbase_customEvent".}
proc fcQStandardItemModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_customEvent".}
proc fQStandardItemModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QStandardItemModel_virtualbase_connectNotify".}
proc fcQStandardItemModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_connectNotify".}
proc fQStandardItemModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QStandardItemModel_virtualbase_disconnectNotify".}
proc fcQStandardItemModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QStandardItemModel_override_virtual_disconnectNotify".}
proc fcQStandardItemModel_staticMetaObject(): pointer {.importc: "QStandardItemModel_staticMetaObject".}
proc fcQStandardItemModel_delete(self: pointer) {.importc: "QStandardItemModel_delete".}


func init*(T: type QStandardItem, h: ptr cQStandardItem): QStandardItem =
  T(h: h)
proc create*(T: type QStandardItem, ): QStandardItem =

  QStandardItem.init(fcQStandardItem_new())
proc create*(T: type QStandardItem, text: string): QStandardItem =

  QStandardItem.init(fcQStandardItem_new2(struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QStandardItem, icon: gen_qicon.QIcon, text: string): QStandardItem =

  QStandardItem.init(fcQStandardItem_new3(icon.h, struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QStandardItem, rows: cint): QStandardItem =

  QStandardItem.init(fcQStandardItem_new4(rows))
proc create*(T: type QStandardItem, rows: cint, columns: cint): QStandardItem =

  QStandardItem.init(fcQStandardItem_new5(rows, columns))
proc data*(self: QStandardItem, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQStandardItem_data(self.h, role))

proc multiData*(self: QStandardItem, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void =

  fcQStandardItem_multiData(self.h, roleDataSpan.h)

proc setData*(self: QStandardItem, value: gen_qvariant.QVariant, role: cint): void =

  fcQStandardItem_setData(self.h, value.h, role)

proc clearData*(self: QStandardItem, ): void =

  fcQStandardItem_clearData(self.h)

proc text*(self: QStandardItem, ): string =

  let v_ms = fcQStandardItem_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: QStandardItem, text: string): void =

  fcQStandardItem_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc icon*(self: QStandardItem, ): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQStandardItem_icon(self.h))

proc setIcon*(self: QStandardItem, icon: gen_qicon.QIcon): void =

  fcQStandardItem_setIcon(self.h, icon.h)

proc toolTip*(self: QStandardItem, ): string =

  let v_ms = fcQStandardItem_toolTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setToolTip*(self: QStandardItem, toolTip: string): void =

  fcQStandardItem_setToolTip(self.h, struct_miqt_string(data: toolTip, len: csize_t(len(toolTip))))

proc statusTip*(self: QStandardItem, ): string =

  let v_ms = fcQStandardItem_statusTip(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setStatusTip*(self: QStandardItem, statusTip: string): void =

  fcQStandardItem_setStatusTip(self.h, struct_miqt_string(data: statusTip, len: csize_t(len(statusTip))))

proc whatsThis*(self: QStandardItem, ): string =

  let v_ms = fcQStandardItem_whatsThis(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWhatsThis*(self: QStandardItem, whatsThis: string): void =

  fcQStandardItem_setWhatsThis(self.h, struct_miqt_string(data: whatsThis, len: csize_t(len(whatsThis))))

proc sizeHint*(self: QStandardItem, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQStandardItem_sizeHint(self.h))

proc setSizeHint*(self: QStandardItem, sizeHint: gen_qsize.QSize): void =

  fcQStandardItem_setSizeHint(self.h, sizeHint.h)

proc font*(self: QStandardItem, ): gen_qfont.QFont =

  gen_qfont.QFont(h: fcQStandardItem_font(self.h))

proc setFont*(self: QStandardItem, font: gen_qfont.QFont): void =

  fcQStandardItem_setFont(self.h, font.h)

proc textAlignment*(self: QStandardItem, ): gen_qnamespace.AlignmentFlag =

  gen_qnamespace.AlignmentFlag(fcQStandardItem_textAlignment(self.h))

proc setTextAlignment*(self: QStandardItem, textAlignment: gen_qnamespace.AlignmentFlag): void =

  fcQStandardItem_setTextAlignment(self.h, cint(textAlignment))

proc background*(self: QStandardItem, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQStandardItem_background(self.h))

proc setBackground*(self: QStandardItem, brush: gen_qbrush.QBrush): void =

  fcQStandardItem_setBackground(self.h, brush.h)

proc foreground*(self: QStandardItem, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQStandardItem_foreground(self.h))

proc setForeground*(self: QStandardItem, brush: gen_qbrush.QBrush): void =

  fcQStandardItem_setForeground(self.h, brush.h)

proc checkState*(self: QStandardItem, ): gen_qnamespace.CheckState =

  gen_qnamespace.CheckState(fcQStandardItem_checkState(self.h))

proc setCheckState*(self: QStandardItem, checkState: gen_qnamespace.CheckState): void =

  fcQStandardItem_setCheckState(self.h, cint(checkState))

proc accessibleText*(self: QStandardItem, ): string =

  let v_ms = fcQStandardItem_accessibleText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAccessibleText*(self: QStandardItem, accessibleText: string): void =

  fcQStandardItem_setAccessibleText(self.h, struct_miqt_string(data: accessibleText, len: csize_t(len(accessibleText))))

proc accessibleDescription*(self: QStandardItem, ): string =

  let v_ms = fcQStandardItem_accessibleDescription(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAccessibleDescription*(self: QStandardItem, accessibleDescription: string): void =

  fcQStandardItem_setAccessibleDescription(self.h, struct_miqt_string(data: accessibleDescription, len: csize_t(len(accessibleDescription))))

proc flags*(self: QStandardItem, ): gen_qnamespace.ItemFlag =

  gen_qnamespace.ItemFlag(fcQStandardItem_flags(self.h))

proc setFlags*(self: QStandardItem, flags: gen_qnamespace.ItemFlag): void =

  fcQStandardItem_setFlags(self.h, cint(flags))

proc isEnabled*(self: QStandardItem, ): bool =

  fcQStandardItem_isEnabled(self.h)

proc setEnabled*(self: QStandardItem, enabled: bool): void =

  fcQStandardItem_setEnabled(self.h, enabled)

proc isEditable*(self: QStandardItem, ): bool =

  fcQStandardItem_isEditable(self.h)

proc setEditable*(self: QStandardItem, editable: bool): void =

  fcQStandardItem_setEditable(self.h, editable)

proc isSelectable*(self: QStandardItem, ): bool =

  fcQStandardItem_isSelectable(self.h)

proc setSelectable*(self: QStandardItem, selectable: bool): void =

  fcQStandardItem_setSelectable(self.h, selectable)

proc isCheckable*(self: QStandardItem, ): bool =

  fcQStandardItem_isCheckable(self.h)

proc setCheckable*(self: QStandardItem, checkable: bool): void =

  fcQStandardItem_setCheckable(self.h, checkable)

proc isAutoTristate*(self: QStandardItem, ): bool =

  fcQStandardItem_isAutoTristate(self.h)

proc setAutoTristate*(self: QStandardItem, tristate: bool): void =

  fcQStandardItem_setAutoTristate(self.h, tristate)

proc isUserTristate*(self: QStandardItem, ): bool =

  fcQStandardItem_isUserTristate(self.h)

proc setUserTristate*(self: QStandardItem, tristate: bool): void =

  fcQStandardItem_setUserTristate(self.h, tristate)

proc isDragEnabled*(self: QStandardItem, ): bool =

  fcQStandardItem_isDragEnabled(self.h)

proc setDragEnabled*(self: QStandardItem, dragEnabled: bool): void =

  fcQStandardItem_setDragEnabled(self.h, dragEnabled)

proc isDropEnabled*(self: QStandardItem, ): bool =

  fcQStandardItem_isDropEnabled(self.h)

proc setDropEnabled*(self: QStandardItem, dropEnabled: bool): void =

  fcQStandardItem_setDropEnabled(self.h, dropEnabled)

proc parent*(self: QStandardItem, ): QStandardItem =

  QStandardItem(h: fcQStandardItem_parent(self.h))

proc row*(self: QStandardItem, ): cint =

  fcQStandardItem_row(self.h)

proc column*(self: QStandardItem, ): cint =

  fcQStandardItem_column(self.h)

proc index*(self: QStandardItem, ): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQStandardItem_index(self.h))

proc model*(self: QStandardItem, ): QStandardItemModel =

  QStandardItemModel(h: fcQStandardItem_model(self.h))

proc rowCount*(self: QStandardItem, ): cint =

  fcQStandardItem_rowCount(self.h)

proc setRowCount*(self: QStandardItem, rows: cint): void =

  fcQStandardItem_setRowCount(self.h, rows)

proc columnCount*(self: QStandardItem, ): cint =

  fcQStandardItem_columnCount(self.h)

proc setColumnCount*(self: QStandardItem, columns: cint): void =

  fcQStandardItem_setColumnCount(self.h, columns)

proc hasChildren*(self: QStandardItem, ): bool =

  fcQStandardItem_hasChildren(self.h)

proc child*(self: QStandardItem, row: cint): QStandardItem =

  QStandardItem(h: fcQStandardItem_child(self.h, row))

proc setChild*(self: QStandardItem, row: cint, column: cint, item: QStandardItem): void =

  fcQStandardItem_setChild(self.h, row, column, item.h)

proc setChild2*(self: QStandardItem, row: cint, item: QStandardItem): void =

  fcQStandardItem_setChild2(self.h, row, item.h)

proc insertRow*(self: QStandardItem, row: cint, items: seq[QStandardItem]): void =

  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItem_insertRow(self.h, row, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc insertColumn*(self: QStandardItem, column: cint, items: seq[QStandardItem]): void =

  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItem_insertColumn(self.h, column, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc insertRows*(self: QStandardItem, row: cint, items: seq[QStandardItem]): void =

  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItem_insertRows(self.h, row, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc insertRows2*(self: QStandardItem, row: cint, count: cint): void =

  fcQStandardItem_insertRows2(self.h, row, count)

proc insertColumns*(self: QStandardItem, column: cint, count: cint): void =

  fcQStandardItem_insertColumns(self.h, column, count)

proc removeRow*(self: QStandardItem, row: cint): void =

  fcQStandardItem_removeRow(self.h, row)

proc removeColumn*(self: QStandardItem, column: cint): void =

  fcQStandardItem_removeColumn(self.h, column)

proc removeRows*(self: QStandardItem, row: cint, count: cint): void =

  fcQStandardItem_removeRows(self.h, row, count)

proc removeColumns*(self: QStandardItem, column: cint, count: cint): void =

  fcQStandardItem_removeColumns(self.h, column, count)

proc appendRow*(self: QStandardItem, items: seq[QStandardItem]): void =

  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItem_appendRow(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc appendRows*(self: QStandardItem, items: seq[QStandardItem]): void =

  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItem_appendRows(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc appendColumn*(self: QStandardItem, items: seq[QStandardItem]): void =

  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItem_appendColumn(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc insertRow2*(self: QStandardItem, row: cint, item: QStandardItem): void =

  fcQStandardItem_insertRow2(self.h, row, item.h)

proc appendRowWithItem*(self: QStandardItem, item: QStandardItem): void =

  fcQStandardItem_appendRowWithItem(self.h, item.h)

proc takeChild*(self: QStandardItem, row: cint): QStandardItem =

  QStandardItem(h: fcQStandardItem_takeChild(self.h, row))

proc takeRow*(self: QStandardItem, row: cint): seq[QStandardItem] =

  var v_ma = fcQStandardItem_takeRow(self.h, row)
  var vx_ret = newSeq[QStandardItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QStandardItem(h: v_outCast[i])
  vx_ret

proc takeColumn*(self: QStandardItem, column: cint): seq[QStandardItem] =

  var v_ma = fcQStandardItem_takeColumn(self.h, column)
  var vx_ret = newSeq[QStandardItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QStandardItem(h: v_outCast[i])
  vx_ret

proc sortChildren*(self: QStandardItem, column: cint): void =

  fcQStandardItem_sortChildren(self.h, column)

proc clone*(self: QStandardItem, ): QStandardItem =

  QStandardItem(h: fcQStandardItem_clone(self.h))

proc typeX*(self: QStandardItem, ): cint =

  fcQStandardItem_typeX(self.h)

proc read*(self: QStandardItem, inVal: gen_qdatastream.QDataStream): void =

  fcQStandardItem_read(self.h, inVal.h)

proc write*(self: QStandardItem, outVal: gen_qdatastream.QDataStream): void =

  fcQStandardItem_write(self.h, outVal.h)

proc operatorLesser*(self: QStandardItem, other: QStandardItem): bool =

  fcQStandardItem_operatorLesser(self.h, other.h)

proc child2*(self: QStandardItem, row: cint, column: cint): QStandardItem =

  QStandardItem(h: fcQStandardItem_child2(self.h, row, column))

proc takeChild2*(self: QStandardItem, row: cint, column: cint): QStandardItem =

  QStandardItem(h: fcQStandardItem_takeChild2(self.h, row, column))

proc sortChildren2*(self: QStandardItem, column: cint, order: gen_qnamespace.SortOrder): void =

  fcQStandardItem_sortChildren2(self.h, column, cint(order))

proc callVirtualBase_data(self: QStandardItem, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQStandardItem_virtualbase_data(self.h, role))

type QStandardItemdataBase* = proc(role: cint): gen_qvariant.QVariant
proc ondata*(self: QStandardItem, slot: proc(super: QStandardItemdataBase, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemdataBase, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItem_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItem_data(self: ptr cQStandardItem, slot: int, role: cint): pointer {.exportc: "miqt_exec_callback_QStandardItem_data ".} =
  type Cb = proc(super: QStandardItemdataBase, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(role: cint): auto =
    callVirtualBase_data(QStandardItem(h: self), role)
  let slotval1 = role


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_multiData(self: QStandardItem, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void =


  fQStandardItem_virtualbase_multiData(self.h, roleDataSpan.h)

type QStandardItemmultiDataBase* = proc(roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
proc onmultiData*(self: QStandardItem, slot: proc(super: QStandardItemmultiDataBase, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemmultiDataBase, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItem_override_virtual_multiData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItem_multiData(self: ptr cQStandardItem, slot: int, roleDataSpan: pointer): void {.exportc: "miqt_exec_callback_QStandardItem_multiData ".} =
  type Cb = proc(super: QStandardItemmultiDataBase, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): auto =
    callVirtualBase_multiData(QStandardItem(h: self), roleDataSpan)
  let slotval1 = gen_qabstractitemmodel.QModelRoleDataSpan(h: roleDataSpan)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setData(self: QStandardItem, value: gen_qvariant.QVariant, role: cint): void =


  fQStandardItem_virtualbase_setData(self.h, value.h, role)

type QStandardItemsetDataBase* = proc(value: gen_qvariant.QVariant, role: cint): void
proc onsetData*(self: QStandardItem, slot: proc(super: QStandardItemsetDataBase, value: gen_qvariant.QVariant, role: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemsetDataBase, value: gen_qvariant.QVariant, role: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItem_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItem_setData(self: ptr cQStandardItem, slot: int, value: pointer, role: cint): void {.exportc: "miqt_exec_callback_QStandardItem_setData ".} =
  type Cb = proc(super: QStandardItemsetDataBase, value: gen_qvariant.QVariant, role: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setData(QStandardItem(h: self), value, role)
  let slotval1 = gen_qvariant.QVariant(h: value)

  let slotval2 = role


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_clone(self: QStandardItem, ): QStandardItem =


  QStandardItem(h: fQStandardItem_virtualbase_clone(self.h))

type QStandardItemcloneBase* = proc(): QStandardItem
proc onclone*(self: QStandardItem, slot: proc(super: QStandardItemcloneBase): QStandardItem) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemcloneBase): QStandardItem
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItem_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItem_clone(self: ptr cQStandardItem, slot: int): pointer {.exportc: "miqt_exec_callback_QStandardItem_clone ".} =
  type Cb = proc(super: QStandardItemcloneBase): QStandardItem
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QStandardItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_typeX(self: QStandardItem, ): cint =


  fQStandardItem_virtualbase_type(self.h)

type QStandardItemtypeXBase* = proc(): cint
proc ontypeX*(self: QStandardItem, slot: proc(super: QStandardItemtypeXBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemtypeXBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItem_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItem_type(self: ptr cQStandardItem, slot: int): cint {.exportc: "miqt_exec_callback_QStandardItem_type ".} =
  type Cb = proc(super: QStandardItemtypeXBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_typeX(QStandardItem(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_read(self: QStandardItem, inVal: gen_qdatastream.QDataStream): void =


  fQStandardItem_virtualbase_read(self.h, inVal.h)

type QStandardItemreadBase* = proc(inVal: gen_qdatastream.QDataStream): void
proc onread*(self: QStandardItem, slot: proc(super: QStandardItemreadBase, inVal: gen_qdatastream.QDataStream): void) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemreadBase, inVal: gen_qdatastream.QDataStream): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItem_override_virtual_read(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItem_read(self: ptr cQStandardItem, slot: int, inVal: pointer): void {.exportc: "miqt_exec_callback_QStandardItem_read ".} =
  type Cb = proc(super: QStandardItemreadBase, inVal: gen_qdatastream.QDataStream): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(inVal: gen_qdatastream.QDataStream): auto =
    callVirtualBase_read(QStandardItem(h: self), inVal)
  let slotval1 = gen_qdatastream.QDataStream(h: inVal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_write(self: QStandardItem, outVal: gen_qdatastream.QDataStream): void =


  fQStandardItem_virtualbase_write(self.h, outVal.h)

type QStandardItemwriteBase* = proc(outVal: gen_qdatastream.QDataStream): void
proc onwrite*(self: QStandardItem, slot: proc(super: QStandardItemwriteBase, outVal: gen_qdatastream.QDataStream): void) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemwriteBase, outVal: gen_qdatastream.QDataStream): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItem_override_virtual_write(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItem_write(self: ptr cQStandardItem, slot: int, outVal: pointer): void {.exportc: "miqt_exec_callback_QStandardItem_write ".} =
  type Cb = proc(super: QStandardItemwriteBase, outVal: gen_qdatastream.QDataStream): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(outVal: gen_qdatastream.QDataStream): auto =
    callVirtualBase_write(QStandardItem(h: self), outVal)
  let slotval1 = gen_qdatastream.QDataStream(h: outVal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_operatorLesser(self: QStandardItem, other: QStandardItem): bool =


  fQStandardItem_virtualbase_operatorLesser(self.h, other.h)

type QStandardItemoperatorLesserBase* = proc(other: QStandardItem): bool
proc onoperatorLesser*(self: QStandardItem, slot: proc(super: QStandardItemoperatorLesserBase, other: QStandardItem): bool) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemoperatorLesserBase, other: QStandardItem): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItem_override_virtual_operatorLesser(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItem_operatorLesser(self: ptr cQStandardItem, slot: int, other: pointer): bool {.exportc: "miqt_exec_callback_QStandardItem_operatorLesser ".} =
  type Cb = proc(super: QStandardItemoperatorLesserBase, other: QStandardItem): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: QStandardItem): auto =
    callVirtualBase_operatorLesser(QStandardItem(h: self), other)
  let slotval1 = QStandardItem(h: other)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc delete*(self: QStandardItem) =
  fcQStandardItem_delete(self.h)

func init*(T: type QStandardItemModel, h: ptr cQStandardItemModel): QStandardItemModel =
  T(h: h)
proc create*(T: type QStandardItemModel, ): QStandardItemModel =

  QStandardItemModel.init(fcQStandardItemModel_new())
proc create*(T: type QStandardItemModel, rows: cint, columns: cint): QStandardItemModel =

  QStandardItemModel.init(fcQStandardItemModel_new2(rows, columns))
proc create*(T: type QStandardItemModel, parent: gen_qobject.QObject): QStandardItemModel =

  QStandardItemModel.init(fcQStandardItemModel_new3(parent.h))
proc create*(T: type QStandardItemModel, rows: cint, columns: cint, parent: gen_qobject.QObject): QStandardItemModel =

  QStandardItemModel.init(fcQStandardItemModel_new4(rows, columns, parent.h))
proc metaObject*(self: QStandardItemModel, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQStandardItemModel_metaObject(self.h))

proc metacast*(self: QStandardItemModel, param1: cstring): pointer =

  fcQStandardItemModel_metacast(self.h, param1)

proc metacall*(self: QStandardItemModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQStandardItemModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QStandardItemModel, s: cstring): string =

  let v_ms = fcQStandardItemModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setItemRoleNames*(self: QStandardItemModel, roleNames: Table[cint,seq[byte]]): void =

  var roleNames_Keys_CArray = newSeq[cint](len(roleNames))
  var roleNames_Values_CArray = newSeq[struct_miqt_string](len(roleNames))
  var roleNames_ctr = 0
  for roleNamesk, roleNamesv in roleNames:
    roleNames_Keys_CArray[roleNames_ctr] = roleNames_k
    roleNames_Values_CArray[roleNames_ctr] = struct_miqt_string(data: cast[cstring](if len(roleNames_v) == 0: nil else: unsafeAddr roleNames_v[0]), len: csize_t(len(roleNames_v)))
    roleNames_ctr += 1

  fcQStandardItemModel_setItemRoleNames(self.h, struct_miqt_map(len: csize_t(len(roleNames)),keys: if len(roleNames) == 0: nil else: addr(roleNames_Keys_CArray[0]), values: if len(roleNames) == 0: nil else: addr(roleNames_Values_CArray[0]),))

proc roleNames*(self: QStandardItemModel, ): Table[cint,seq[byte]] =

  var v_mm = fcQStandardItemModel_roleNames(self.h)
  var vx_ret: Table[cint, seq[byte]]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var vx_hashval_bytearray = v_Values[i]
    var vx_hashvalx_ret = @(toOpenArrayByte(vx_hashval_bytearray.data, 0, int(vx_hashval_bytearray.len)-1))
    c_free(vx_hashval_bytearray.data)
    var v_entry_Value = vx_hashvalx_ret

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc index*(self: QStandardItemModel, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQStandardItemModel_index(self.h, row, column, parent.h))

proc parent*(self: QStandardItemModel, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQStandardItemModel_parent(self.h, child.h))

proc rowCount*(self: QStandardItemModel, parent: gen_qabstractitemmodel.QModelIndex): cint =

  fcQStandardItemModel_rowCount(self.h, parent.h)

proc columnCount*(self: QStandardItemModel, parent: gen_qabstractitemmodel.QModelIndex): cint =

  fcQStandardItemModel_columnCount(self.h, parent.h)

proc hasChildren*(self: QStandardItemModel, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQStandardItemModel_hasChildren(self.h, parent.h)

proc data*(self: QStandardItemModel, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQStandardItemModel_data(self.h, index.h, role))

proc multiData*(self: QStandardItemModel, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void =

  fcQStandardItemModel_multiData(self.h, index.h, roleDataSpan.h)

proc setData*(self: QStandardItemModel, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool =

  fcQStandardItemModel_setData(self.h, index.h, value.h, role)

proc clearItemData*(self: QStandardItemModel, index: gen_qabstractitemmodel.QModelIndex): bool =

  fcQStandardItemModel_clearItemData(self.h, index.h)

proc headerData*(self: QStandardItemModel, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQStandardItemModel_headerData(self.h, section, cint(orientation), role))

proc setHeaderData*(self: QStandardItemModel, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool =

  fcQStandardItemModel_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc insertRows*(self: QStandardItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQStandardItemModel_insertRows(self.h, row, count, parent.h)

proc insertColumns*(self: QStandardItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQStandardItemModel_insertColumns(self.h, column, count, parent.h)

proc removeRows*(self: QStandardItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQStandardItemModel_removeRows(self.h, row, count, parent.h)

proc removeColumns*(self: QStandardItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQStandardItemModel_removeColumns(self.h, column, count, parent.h)

proc flags*(self: QStandardItemModel, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag =

  gen_qnamespace.ItemFlag(fcQStandardItemModel_flags(self.h, index.h))

proc supportedDropActions*(self: QStandardItemModel, ): gen_qnamespace.DropAction =

  gen_qnamespace.DropAction(fcQStandardItemModel_supportedDropActions(self.h))

proc itemData*(self: QStandardItemModel, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant] =

  var v_mm = fcQStandardItemModel_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc setItemData*(self: QStandardItemModel, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool =

  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQStandardItemModel_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc clear*(self: QStandardItemModel, ): void =

  fcQStandardItemModel_clear(self.h)

proc sort*(self: QStandardItemModel, column: cint, order: gen_qnamespace.SortOrder): void =

  fcQStandardItemModel_sort(self.h, column, cint(order))

proc itemFromIndex*(self: QStandardItemModel, index: gen_qabstractitemmodel.QModelIndex): QStandardItem =

  QStandardItem(h: fcQStandardItemModel_itemFromIndex(self.h, index.h))

proc indexFromItem*(self: QStandardItemModel, item: QStandardItem): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQStandardItemModel_indexFromItem(self.h, item.h))

proc item*(self: QStandardItemModel, row: cint): QStandardItem =

  QStandardItem(h: fcQStandardItemModel_item(self.h, row))

proc setItem*(self: QStandardItemModel, row: cint, column: cint, item: QStandardItem): void =

  fcQStandardItemModel_setItem(self.h, row, column, item.h)

proc setItem2*(self: QStandardItemModel, row: cint, item: QStandardItem): void =

  fcQStandardItemModel_setItem2(self.h, row, item.h)

proc invisibleRootItem*(self: QStandardItemModel, ): QStandardItem =

  QStandardItem(h: fcQStandardItemModel_invisibleRootItem(self.h))

proc horizontalHeaderItem*(self: QStandardItemModel, column: cint): QStandardItem =

  QStandardItem(h: fcQStandardItemModel_horizontalHeaderItem(self.h, column))

proc setHorizontalHeaderItem*(self: QStandardItemModel, column: cint, item: QStandardItem): void =

  fcQStandardItemModel_setHorizontalHeaderItem(self.h, column, item.h)

proc verticalHeaderItem*(self: QStandardItemModel, row: cint): QStandardItem =

  QStandardItem(h: fcQStandardItemModel_verticalHeaderItem(self.h, row))

proc setVerticalHeaderItem*(self: QStandardItemModel, row: cint, item: QStandardItem): void =

  fcQStandardItemModel_setVerticalHeaderItem(self.h, row, item.h)

proc setHorizontalHeaderLabels*(self: QStandardItemModel, labels: seq[string]): void =

  var labels_CArray = newSeq[struct_miqt_string](len(labels))
  for i in 0..<len(labels):
    labels_CArray[i] = struct_miqt_string(data: labels[i], len: csize_t(len(labels[i])))

  fcQStandardItemModel_setHorizontalHeaderLabels(self.h, struct_miqt_array(len: csize_t(len(labels)), data: if len(labels) == 0: nil else: addr(labels_CArray[0])))

proc setVerticalHeaderLabels*(self: QStandardItemModel, labels: seq[string]): void =

  var labels_CArray = newSeq[struct_miqt_string](len(labels))
  for i in 0..<len(labels):
    labels_CArray[i] = struct_miqt_string(data: labels[i], len: csize_t(len(labels[i])))

  fcQStandardItemModel_setVerticalHeaderLabels(self.h, struct_miqt_array(len: csize_t(len(labels)), data: if len(labels) == 0: nil else: addr(labels_CArray[0])))

proc setRowCount*(self: QStandardItemModel, rows: cint): void =

  fcQStandardItemModel_setRowCount(self.h, rows)

proc setColumnCount*(self: QStandardItemModel, columns: cint): void =

  fcQStandardItemModel_setColumnCount(self.h, columns)

proc appendRow*(self: QStandardItemModel, items: seq[QStandardItem]): void =

  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItemModel_appendRow(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc appendColumn*(self: QStandardItemModel, items: seq[QStandardItem]): void =

  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItemModel_appendColumn(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc appendRowWithItem*(self: QStandardItemModel, item: QStandardItem): void =

  fcQStandardItemModel_appendRowWithItem(self.h, item.h)

proc insertRow*(self: QStandardItemModel, row: cint, items: seq[QStandardItem]): void =

  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItemModel_insertRow(self.h, row, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc insertColumn*(self: QStandardItemModel, column: cint, items: seq[QStandardItem]): void =

  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQStandardItemModel_insertColumn(self.h, column, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc insertRow2*(self: QStandardItemModel, row: cint, item: QStandardItem): void =

  fcQStandardItemModel_insertRow2(self.h, row, item.h)

proc insertRowWithRow*(self: QStandardItemModel, row: cint): bool =

  fcQStandardItemModel_insertRowWithRow(self.h, row)

proc insertColumnWithColumn*(self: QStandardItemModel, column: cint): bool =

  fcQStandardItemModel_insertColumnWithColumn(self.h, column)

proc takeItem*(self: QStandardItemModel, row: cint): QStandardItem =

  QStandardItem(h: fcQStandardItemModel_takeItem(self.h, row))

proc takeRow*(self: QStandardItemModel, row: cint): seq[QStandardItem] =

  var v_ma = fcQStandardItemModel_takeRow(self.h, row)
  var vx_ret = newSeq[QStandardItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QStandardItem(h: v_outCast[i])
  vx_ret

proc takeColumn*(self: QStandardItemModel, column: cint): seq[QStandardItem] =

  var v_ma = fcQStandardItemModel_takeColumn(self.h, column)
  var vx_ret = newSeq[QStandardItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QStandardItem(h: v_outCast[i])
  vx_ret

proc takeHorizontalHeaderItem*(self: QStandardItemModel, column: cint): QStandardItem =

  QStandardItem(h: fcQStandardItemModel_takeHorizontalHeaderItem(self.h, column))

proc takeVerticalHeaderItem*(self: QStandardItemModel, row: cint): QStandardItem =

  QStandardItem(h: fcQStandardItemModel_takeVerticalHeaderItem(self.h, row))

proc itemPrototype*(self: QStandardItemModel, ): QStandardItem =

  QStandardItem(h: fcQStandardItemModel_itemPrototype(self.h))

proc setItemPrototype*(self: QStandardItemModel, item: QStandardItem): void =

  fcQStandardItemModel_setItemPrototype(self.h, item.h)

proc findItems*(self: QStandardItemModel, text: string): seq[QStandardItem] =

  var v_ma = fcQStandardItemModel_findItems(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))
  var vx_ret = newSeq[QStandardItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QStandardItem(h: v_outCast[i])
  vx_ret

proc sortRole*(self: QStandardItemModel, ): cint =

  fcQStandardItemModel_sortRole(self.h)

proc setSortRole*(self: QStandardItemModel, role: cint): void =

  fcQStandardItemModel_setSortRole(self.h, role)

proc mimeTypes*(self: QStandardItemModel, ): seq[string] =

  var v_ma = fcQStandardItemModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc mimeData*(self: QStandardItemModel, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData =

  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata.QMimeData(h: fcQStandardItemModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc dropMimeData*(self: QStandardItemModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQStandardItemModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc itemChanged*(self: QStandardItemModel, item: QStandardItem): void =

  fcQStandardItemModel_itemChanged(self.h, item.h)

proc miqt_exec_callback_QStandardItemModel_itemChanged(slot: int, item: pointer) {.exportc.} =
  type Cb = proc(item: QStandardItem)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QStandardItem(h: item)


  nimfunc[](slotval1)

proc onitemChanged*(self: QStandardItemModel, slot: proc(item: QStandardItem)) =
  type Cb = proc(item: QStandardItem)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQStandardItemModel_connect_itemChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QStandardItemModel, s: cstring, c: cstring): string =

  let v_ms = fcQStandardItemModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QStandardItemModel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQStandardItemModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc item2*(self: QStandardItemModel, row: cint, column: cint): QStandardItem =

  QStandardItem(h: fcQStandardItemModel_item2(self.h, row, column))

proc insertRow22*(self: QStandardItemModel, row: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQStandardItemModel_insertRow22(self.h, row, parent.h)

proc insertColumn2*(self: QStandardItemModel, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQStandardItemModel_insertColumn2(self.h, column, parent.h)

proc takeItem2*(self: QStandardItemModel, row: cint, column: cint): QStandardItem =

  QStandardItem(h: fcQStandardItemModel_takeItem2(self.h, row, column))

proc findItems2*(self: QStandardItemModel, text: string, flags: gen_qnamespace.MatchFlag): seq[QStandardItem] =

  var v_ma = fcQStandardItemModel_findItems2(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(flags))
  var vx_ret = newSeq[QStandardItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QStandardItem(h: v_outCast[i])
  vx_ret

proc findItems3*(self: QStandardItemModel, text: string, flags: gen_qnamespace.MatchFlag, column: cint): seq[QStandardItem] =

  var v_ma = fcQStandardItemModel_findItems3(self.h, struct_miqt_string(data: text, len: csize_t(len(text))), cint(flags), column)
  var vx_ret = newSeq[QStandardItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QStandardItem(h: v_outCast[i])
  vx_ret

proc callVirtualBase_metaObject(self: QStandardItemModel, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQStandardItemModel_virtualbase_metaObject(self.h))

type QStandardItemModelmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QStandardItemModel, slot: proc(super: QStandardItemModelmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_metaObject(self: ptr cQStandardItemModel, slot: int): pointer {.exportc: "miqt_exec_callback_QStandardItemModel_metaObject ".} =
  type Cb = proc(super: QStandardItemModelmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QStandardItemModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QStandardItemModel, param1: cstring): pointer =


  fQStandardItemModel_virtualbase_metacast(self.h, param1)

type QStandardItemModelmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QStandardItemModel, slot: proc(super: QStandardItemModelmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_metacast(self: ptr cQStandardItemModel, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QStandardItemModel_metacast ".} =
  type Cb = proc(super: QStandardItemModelmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QStandardItemModel(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QStandardItemModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQStandardItemModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QStandardItemModelmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QStandardItemModel, slot: proc(super: QStandardItemModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_metacall(self: ptr cQStandardItemModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QStandardItemModel_metacall ".} =
  type Cb = proc(super: QStandardItemModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QStandardItemModel(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_roleNames(self: QStandardItemModel, ): Table[cint,seq[byte]] =


  var v_mm = fQStandardItemModel_virtualbase_roleNames(self.h)
  var vx_ret: Table[cint, seq[byte]]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[struct_miqt_string]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var vx_hashval_bytearray = v_Values[i]
    var vx_hashvalx_ret = @(toOpenArrayByte(vx_hashval_bytearray.data, 0, int(vx_hashval_bytearray.len)-1))
    c_free(vx_hashval_bytearray.data)
    var v_entry_Value = vx_hashvalx_ret

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QStandardItemModelroleNamesBase* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: QStandardItemModel, slot: proc(super: QStandardItemModelroleNamesBase): Table[cint,seq[byte]]) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelroleNamesBase): Table[cint,seq[byte]]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_roleNames(self: ptr cQStandardItemModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QStandardItemModel_roleNames ".} =
  type Cb = proc(super: QStandardItemModelroleNamesBase): Table[cint,seq[byte]]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_roleNames(QStandardItemModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc callVirtualBase_index(self: QStandardItemModel, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQStandardItemModel_virtualbase_index(self.h, row, column, parent.h))

type QStandardItemModelindexBase* = proc(row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onindex*(self: QStandardItemModel, slot: proc(super: QStandardItemModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_index(self: ptr cQStandardItemModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QStandardItemModel_index ".} =
  type Cb = proc(super: QStandardItemModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_index(QStandardItemModel(h: self), row, column, parent)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_parent(self: QStandardItemModel, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQStandardItemModel_virtualbase_parent(self.h, child.h))

type QStandardItemModelparentBase* = proc(child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onparent*(self: QStandardItemModel, slot: proc(super: QStandardItemModelparentBase, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelparentBase, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_parent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_parent(self: ptr cQStandardItemModel, slot: int, child: pointer): pointer {.exportc: "miqt_exec_callback_QStandardItemModel_parent ".} =
  type Cb = proc(super: QStandardItemModelparentBase, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(child: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_parent(QStandardItemModel(h: self), child)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: child)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_rowCount(self: QStandardItemModel, parent: gen_qabstractitemmodel.QModelIndex): cint =


  fQStandardItemModel_virtualbase_rowCount(self.h, parent.h)

type QStandardItemModelrowCountBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): cint
proc onrowCount*(self: QStandardItemModel, slot: proc(super: QStandardItemModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_rowCount(self: ptr cQStandardItemModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QStandardItemModel_rowCount ".} =
  type Cb = proc(super: QStandardItemModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_rowCount(QStandardItemModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_columnCount(self: QStandardItemModel, parent: gen_qabstractitemmodel.QModelIndex): cint =


  fQStandardItemModel_virtualbase_columnCount(self.h, parent.h)

type QStandardItemModelcolumnCountBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): cint
proc oncolumnCount*(self: QStandardItemModel, slot: proc(super: QStandardItemModelcolumnCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelcolumnCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_columnCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_columnCount(self: ptr cQStandardItemModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QStandardItemModel_columnCount ".} =
  type Cb = proc(super: QStandardItemModelcolumnCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_columnCount(QStandardItemModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasChildren(self: QStandardItemModel, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQStandardItemModel_virtualbase_hasChildren(self.h, parent.h)

type QStandardItemModelhasChildrenBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): bool
proc onhasChildren*(self: QStandardItemModel, slot: proc(super: QStandardItemModelhasChildrenBase, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelhasChildrenBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_hasChildren(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_hasChildren(self: ptr cQStandardItemModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_hasChildren ".} =
  type Cb = proc(super: QStandardItemModelhasChildrenBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_hasChildren(QStandardItemModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_data(self: QStandardItemModel, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQStandardItemModel_virtualbase_data(self.h, index.h, role))

type QStandardItemModeldataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
proc ondata*(self: QStandardItemModel, slot: proc(super: QStandardItemModeldataBase, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModeldataBase, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_data(self: ptr cQStandardItemModel, slot: int, index: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QStandardItemModel_data ".} =
  type Cb = proc(super: QStandardItemModeldataBase, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, role: cint): auto =
    callVirtualBase_data(QStandardItemModel(h: self), index, role)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_multiData(self: QStandardItemModel, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void =


  fQStandardItemModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

type QStandardItemModelmultiDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
proc onmultiData*(self: QStandardItemModel, slot: proc(super: QStandardItemModelmultiDataBase, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelmultiDataBase, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_multiData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_multiData(self: ptr cQStandardItemModel, slot: int, index: pointer, roleDataSpan: pointer): void {.exportc: "miqt_exec_callback_QStandardItemModel_multiData ".} =
  type Cb = proc(super: QStandardItemModelmultiDataBase, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): auto =
    callVirtualBase_multiData(QStandardItemModel(h: self), index, roleDataSpan)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemmodel.QModelRoleDataSpan(h: roleDataSpan)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setData(self: QStandardItemModel, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool =


  fQStandardItemModel_virtualbase_setData(self.h, index.h, value.h, role)

type QStandardItemModelsetDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
proc onsetData*(self: QStandardItemModel, slot: proc(super: QStandardItemModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_setData(self: ptr cQStandardItemModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QStandardItemModel_setData ".} =
  type Cb = proc(super: QStandardItemModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setData(QStandardItemModel(h: self), index, value, role)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qvariant.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_clearItemData(self: QStandardItemModel, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQStandardItemModel_virtualbase_clearItemData(self.h, index.h)

type QStandardItemModelclearItemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex): bool
proc onclearItemData*(self: QStandardItemModel, slot: proc(super: QStandardItemModelclearItemDataBase, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelclearItemDataBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_clearItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_clearItemData(self: ptr cQStandardItemModel, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_clearItemData ".} =
  type Cb = proc(super: QStandardItemModelclearItemDataBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_clearItemData(QStandardItemModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_headerData(self: QStandardItemModel, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQStandardItemModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QStandardItemModelheaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
proc onheaderData*(self: QStandardItemModel, slot: proc(super: QStandardItemModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_headerData(self: ptr cQStandardItemModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QStandardItemModel_headerData ".} =
  type Cb = proc(super: QStandardItemModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, role: cint): auto =
    callVirtualBase_headerData(QStandardItemModel(h: self), section, orientation, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_setHeaderData(self: QStandardItemModel, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool =


  fQStandardItemModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QStandardItemModelsetHeaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
proc onsetHeaderData*(self: QStandardItemModel, slot: proc(super: QStandardItemModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_setHeaderData(self: ptr cQStandardItemModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QStandardItemModel_setHeaderData ".} =
  type Cb = proc(super: QStandardItemModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setHeaderData(QStandardItemModel(h: self), section, orientation, value, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = gen_qvariant.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_insertRows(self: QStandardItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQStandardItemModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QStandardItemModelinsertRowsBase* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oninsertRows*(self: QStandardItemModel, slot: proc(super: QStandardItemModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_insertRows(self: ptr cQStandardItemModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_insertRows ".} =
  type Cb = proc(super: QStandardItemModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_insertRows(QStandardItemModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_insertColumns(self: QStandardItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQStandardItemModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QStandardItemModelinsertColumnsBase* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oninsertColumns*(self: QStandardItemModel, slot: proc(super: QStandardItemModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_insertColumns(self: ptr cQStandardItemModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_insertColumns ".} =
  type Cb = proc(super: QStandardItemModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_insertColumns(QStandardItemModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeRows(self: QStandardItemModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQStandardItemModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QStandardItemModelremoveRowsBase* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc onremoveRows*(self: QStandardItemModel, slot: proc(super: QStandardItemModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_removeRows(self: ptr cQStandardItemModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_removeRows ".} =
  type Cb = proc(super: QStandardItemModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_removeRows(QStandardItemModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeColumns(self: QStandardItemModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQStandardItemModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QStandardItemModelremoveColumnsBase* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc onremoveColumns*(self: QStandardItemModel, slot: proc(super: QStandardItemModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_removeColumns(self: ptr cQStandardItemModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_removeColumns ".} =
  type Cb = proc(super: QStandardItemModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_removeColumns(QStandardItemModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_flags(self: QStandardItemModel, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag =


  gen_qnamespace.ItemFlag(fQStandardItemModel_virtualbase_flags(self.h, index.h))

type QStandardItemModelflagsBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
proc onflags*(self: QStandardItemModel, slot: proc(super: QStandardItemModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_flags(self: ptr cQStandardItemModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QStandardItemModel_flags ".} =
  type Cb = proc(super: QStandardItemModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_flags(QStandardItemModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  cint(virtualReturn)
proc callVirtualBase_supportedDropActions(self: QStandardItemModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQStandardItemModel_virtualbase_supportedDropActions(self.h))

type QStandardItemModelsupportedDropActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDropActions*(self: QStandardItemModel, slot: proc(super: QStandardItemModelsupportedDropActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_supportedDropActions(self: ptr cQStandardItemModel, slot: int): cint {.exportc: "miqt_exec_callback_QStandardItemModel_supportedDropActions ".} =
  type Cb = proc(super: QStandardItemModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDropActions(QStandardItemModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_itemData(self: QStandardItemModel, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant] =


  var v_mm = fQStandardItemModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QStandardItemModelitemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
proc onitemData*(self: QStandardItemModel, slot: proc(super: QStandardItemModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_itemData(self: ptr cQStandardItemModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QStandardItemModel_itemData ".} =
  type Cb = proc(super: QStandardItemModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_itemData(QStandardItemModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[pointer](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = virtualReturn_v.h
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc callVirtualBase_setItemData(self: QStandardItemModel, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool =

  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1


  fQStandardItemModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QStandardItemModelsetItemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
proc onsetItemData*(self: QStandardItemModel, slot: proc(super: QStandardItemModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_setItemData(self: ptr cQStandardItemModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QStandardItemModel_setItemData ".} =
  type Cb = proc(super: QStandardItemModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): auto =
    callVirtualBase_setItemData(QStandardItemModel(h: self), index, roles)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  var vroles_mm = roles
  var vrolesx_ret: Table[cint, gen_qvariant.QVariant]
  var vroles_Keys = cast[ptr UncheckedArray[cint]](vroles_mm.keys)
  var vroles_Values = cast[ptr UncheckedArray[pointer]](vroles_mm.values)
  for i in 0..<vroles_mm.len:
    var vroles_entry_Key = vroles_Keys[i]

    var vroles_entry_Value = gen_qvariant.QVariant(h: vroles_Values[i])

    vrolesx_ret[vroles_entry_Key] = vroles_entry_Value
  let slotval2 = vrolesx_ret


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_sort(self: QStandardItemModel, column: cint, order: gen_qnamespace.SortOrder): void =


  fQStandardItemModel_virtualbase_sort(self.h, column, cint(order))

type QStandardItemModelsortBase* = proc(column: cint, order: gen_qnamespace.SortOrder): void
proc onsort*(self: QStandardItemModel, slot: proc(super: QStandardItemModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_sort(self: ptr cQStandardItemModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QStandardItemModel_sort ".} =
  type Cb = proc(super: QStandardItemModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, order: gen_qnamespace.SortOrder): auto =
    callVirtualBase_sort(QStandardItemModel(h: self), column, order)
  let slotval1 = column

  let slotval2 = gen_qnamespace.SortOrder(order)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_mimeTypes(self: QStandardItemModel, ): seq[string] =


  var v_ma = fQStandardItemModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QStandardItemModelmimeTypesBase* = proc(): seq[string]
proc onmimeTypes*(self: QStandardItemModel, slot: proc(super: QStandardItemModelmimeTypesBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelmimeTypesBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_mimeTypes(self: ptr cQStandardItemModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QStandardItemModel_mimeTypes ".} =
  type Cb = proc(super: QStandardItemModelmimeTypesBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mimeTypes(QStandardItemModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_mimeData(self: QStandardItemModel, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData =

  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h


  gen_qmimedata.QMimeData(h: fQStandardItemModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QStandardItemModelmimeDataBase* = proc(indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
proc onmimeData*(self: QStandardItemModel, slot: proc(super: QStandardItemModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_mimeData(self: ptr cQStandardItemModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QStandardItemModel_mimeData ".} =
  type Cb = proc(super: QStandardItemModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(indexes: seq[gen_qabstractitemmodel.QModelIndex]): auto =
    callVirtualBase_mimeData(QStandardItemModel(h: self), indexes)
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_dropMimeData(self: QStandardItemModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQStandardItemModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QStandardItemModeldropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc ondropMimeData*(self: QStandardItemModel, slot: proc(super: QStandardItemModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_dropMimeData(self: ptr cQStandardItemModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_dropMimeData ".} =
  type Cb = proc(super: QStandardItemModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_dropMimeData(QStandardItemModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_sibling(self: QStandardItemModel, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQStandardItemModel_virtualbase_sibling(self.h, row, column, idx.h))

type QStandardItemModelsiblingBase* = proc(row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onsibling*(self: QStandardItemModel, slot: proc(super: QStandardItemModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_sibling(self: ptr cQStandardItemModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QStandardItemModel_sibling ".} =
  type Cb = proc(super: QStandardItemModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_sibling(QStandardItemModel(h: self), row, column, idx)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: idx)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_canDropMimeData(self: QStandardItemModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQStandardItemModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QStandardItemModelcanDropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oncanDropMimeData*(self: QStandardItemModel, slot: proc(super: QStandardItemModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_canDropMimeData(self: ptr cQStandardItemModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_canDropMimeData ".} =
  type Cb = proc(super: QStandardItemModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_canDropMimeData(QStandardItemModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_supportedDragActions(self: QStandardItemModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQStandardItemModel_virtualbase_supportedDragActions(self.h))

type QStandardItemModelsupportedDragActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDragActions*(self: QStandardItemModel, slot: proc(super: QStandardItemModelsupportedDragActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_supportedDragActions(self: ptr cQStandardItemModel, slot: int): cint {.exportc: "miqt_exec_callback_QStandardItemModel_supportedDragActions ".} =
  type Cb = proc(super: QStandardItemModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDragActions(QStandardItemModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_moveRows(self: QStandardItemModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =


  fQStandardItemModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QStandardItemModelmoveRowsBase* = proc(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: QStandardItemModel, slot: proc(super: QStandardItemModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_moveRows(self: ptr cQStandardItemModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QStandardItemModel_moveRows ".} =
  type Cb = proc(super: QStandardItemModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveRows(QStandardItemModel(h: self), sourceParent, sourceRow, count, destinationParent, destinationChild)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_moveColumns(self: QStandardItemModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =


  fQStandardItemModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QStandardItemModelmoveColumnsBase* = proc(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: QStandardItemModel, slot: proc(super: QStandardItemModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_moveColumns(self: ptr cQStandardItemModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QStandardItemModel_moveColumns ".} =
  type Cb = proc(super: QStandardItemModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveColumns(QStandardItemModel(h: self), sourceParent, sourceColumn, count, destinationParent, destinationChild)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_fetchMore(self: QStandardItemModel, parent: gen_qabstractitemmodel.QModelIndex): void =


  fQStandardItemModel_virtualbase_fetchMore(self.h, parent.h)

type QStandardItemModelfetchMoreBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): void
proc onfetchMore*(self: QStandardItemModel, slot: proc(super: QStandardItemModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_fetchMore(self: ptr cQStandardItemModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QStandardItemModel_fetchMore ".} =
  type Cb = proc(super: QStandardItemModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_fetchMore(QStandardItemModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_canFetchMore(self: QStandardItemModel, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQStandardItemModel_virtualbase_canFetchMore(self.h, parent.h)

type QStandardItemModelcanFetchMoreBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): bool
proc oncanFetchMore*(self: QStandardItemModel, slot: proc(super: QStandardItemModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_canFetchMore(self: ptr cQStandardItemModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_canFetchMore ".} =
  type Cb = proc(super: QStandardItemModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_canFetchMore(QStandardItemModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_buddy(self: QStandardItemModel, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQStandardItemModel_virtualbase_buddy(self.h, index.h))

type QStandardItemModelbuddyBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onbuddy*(self: QStandardItemModel, slot: proc(super: QStandardItemModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_buddy(self: ptr cQStandardItemModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QStandardItemModel_buddy ".} =
  type Cb = proc(super: QStandardItemModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_buddy(QStandardItemModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_match(self: QStandardItemModel, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex] =


  var v_ma = fQStandardItemModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

type QStandardItemModelmatchBase* = proc(start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
proc onmatch*(self: QStandardItemModel, slot: proc(super: QStandardItemModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_match(self: ptr cQStandardItemModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QStandardItemModel_match ".} =
  type Cb = proc(super: QStandardItemModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): auto =
    callVirtualBase_match(QStandardItemModel(h: self), start, role, value, hits, flags)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: start)

  let slotval2 = role

  let slotval3 = gen_qvariant.QVariant(h: value)

  let slotval4 = hits

  let slotval5 = gen_qnamespace.MatchFlag(flags)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_span(self: QStandardItemModel, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize =


  gen_qsize.QSize(h: fQStandardItemModel_virtualbase_span(self.h, index.h))

type QStandardItemModelspanBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
proc onspan*(self: QStandardItemModel, slot: proc(super: QStandardItemModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_span(self: ptr cQStandardItemModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QStandardItemModel_span ".} =
  type Cb = proc(super: QStandardItemModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_span(QStandardItemModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_submit(self: QStandardItemModel, ): bool =


  fQStandardItemModel_virtualbase_submit(self.h)

type QStandardItemModelsubmitBase* = proc(): bool
proc onsubmit*(self: QStandardItemModel, slot: proc(super: QStandardItemModelsubmitBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelsubmitBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_submit(self: ptr cQStandardItemModel, slot: int): bool {.exportc: "miqt_exec_callback_QStandardItemModel_submit ".} =
  type Cb = proc(super: QStandardItemModelsubmitBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_submit(QStandardItemModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_revert(self: QStandardItemModel, ): void =


  fQStandardItemModel_virtualbase_revert(self.h)

type QStandardItemModelrevertBase* = proc(): void
proc onrevert*(self: QStandardItemModel, slot: proc(super: QStandardItemModelrevertBase): void) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelrevertBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_revert(self: ptr cQStandardItemModel, slot: int): void {.exportc: "miqt_exec_callback_QStandardItemModel_revert ".} =
  type Cb = proc(super: QStandardItemModelrevertBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_revert(QStandardItemModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_resetInternalData(self: QStandardItemModel, ): void =


  fQStandardItemModel_virtualbase_resetInternalData(self.h)

type QStandardItemModelresetInternalDataBase* = proc(): void
proc onresetInternalData*(self: QStandardItemModel, slot: proc(super: QStandardItemModelresetInternalDataBase): void) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelresetInternalDataBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_resetInternalData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_resetInternalData(self: ptr cQStandardItemModel, slot: int): void {.exportc: "miqt_exec_callback_QStandardItemModel_resetInternalData ".} =
  type Cb = proc(super: QStandardItemModelresetInternalDataBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_resetInternalData(QStandardItemModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_event(self: QStandardItemModel, event: gen_qcoreevent.QEvent): bool =


  fQStandardItemModel_virtualbase_event(self.h, event.h)

type QStandardItemModeleventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QStandardItemModel, slot: proc(super: QStandardItemModeleventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModeleventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_event(self: ptr cQStandardItemModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_event ".} =
  type Cb = proc(super: QStandardItemModeleventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QStandardItemModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QStandardItemModel, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQStandardItemModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QStandardItemModeleventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QStandardItemModel, slot: proc(super: QStandardItemModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_eventFilter(self: ptr cQStandardItemModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QStandardItemModel_eventFilter ".} =
  type Cb = proc(super: QStandardItemModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QStandardItemModel(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QStandardItemModel, event: gen_qcoreevent.QTimerEvent): void =


  fQStandardItemModel_virtualbase_timerEvent(self.h, event.h)

type QStandardItemModeltimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QStandardItemModel, slot: proc(super: QStandardItemModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_timerEvent(self: ptr cQStandardItemModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStandardItemModel_timerEvent ".} =
  type Cb = proc(super: QStandardItemModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QStandardItemModel(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QStandardItemModel, event: gen_qcoreevent.QChildEvent): void =


  fQStandardItemModel_virtualbase_childEvent(self.h, event.h)

type QStandardItemModelchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QStandardItemModel, slot: proc(super: QStandardItemModelchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_childEvent(self: ptr cQStandardItemModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStandardItemModel_childEvent ".} =
  type Cb = proc(super: QStandardItemModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QStandardItemModel(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QStandardItemModel, event: gen_qcoreevent.QEvent): void =


  fQStandardItemModel_virtualbase_customEvent(self.h, event.h)

type QStandardItemModelcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QStandardItemModel, slot: proc(super: QStandardItemModelcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_customEvent(self: ptr cQStandardItemModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStandardItemModel_customEvent ".} =
  type Cb = proc(super: QStandardItemModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QStandardItemModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QStandardItemModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQStandardItemModel_virtualbase_connectNotify(self.h, signal.h)

type QStandardItemModelconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QStandardItemModel, slot: proc(super: QStandardItemModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_connectNotify(self: ptr cQStandardItemModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStandardItemModel_connectNotify ".} =
  type Cb = proc(super: QStandardItemModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QStandardItemModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QStandardItemModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQStandardItemModel_virtualbase_disconnectNotify(self.h, signal.h)

type QStandardItemModeldisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QStandardItemModel, slot: proc(super: QStandardItemModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QStandardItemModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStandardItemModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStandardItemModel_disconnectNotify(self: ptr cQStandardItemModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStandardItemModel_disconnectNotify ".} =
  type Cb = proc(super: QStandardItemModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QStandardItemModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QStandardItemModel): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQStandardItemModel_staticMetaObject())
proc delete*(self: QStandardItemModel) =
  fcQStandardItemModel_delete(self.h)
