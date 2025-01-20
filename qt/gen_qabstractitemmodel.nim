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
{.compile("gen_qabstractitemmodel.cpp", cflags).}


type QAbstractItemModelLayoutChangeHint* = cint
const
  QAbstractItemModelNoLayoutChangeHint* = 0
  QAbstractItemModelVerticalSortHint* = 1
  QAbstractItemModelHorizontalSortHint* = 2



type QAbstractItemModelCheckIndexOption* = cint
const
  QAbstractItemModelNoOption* = 0
  QAbstractItemModelIndexIsValid* = 1
  QAbstractItemModelDoNotUseParent* = 2
  QAbstractItemModelParentIsInvalid* = 4



import gen_qabstractitemmodel_types
export gen_qabstractitemmodel_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qvariant,
  std/tables
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qvariant

type cQModelIndex*{.exportc: "QModelIndex", incompleteStruct.} = object
type cQPersistentModelIndex*{.exportc: "QPersistentModelIndex", incompleteStruct.} = object
type cQAbstractItemModel*{.exportc: "QAbstractItemModel", incompleteStruct.} = object
type cQAbstractTableModel*{.exportc: "QAbstractTableModel", incompleteStruct.} = object
type cQAbstractListModel*{.exportc: "QAbstractListModel", incompleteStruct.} = object

proc fcQModelIndex_new(): ptr cQModelIndex {.importc: "QModelIndex_new".}
proc fcQModelIndex_new2(param1: pointer): ptr cQModelIndex {.importc: "QModelIndex_new2".}
proc fcQModelIndex_row(self: pointer, ): cint {.importc: "QModelIndex_row".}
proc fcQModelIndex_column(self: pointer, ): cint {.importc: "QModelIndex_column".}
proc fcQModelIndex_internalId(self: pointer, ): uint {.importc: "QModelIndex_internalId".}
proc fcQModelIndex_internalPointer(self: pointer, ): pointer {.importc: "QModelIndex_internalPointer".}
proc fcQModelIndex_parent(self: pointer, ): pointer {.importc: "QModelIndex_parent".}
proc fcQModelIndex_sibling(self: pointer, row: cint, column: cint): pointer {.importc: "QModelIndex_sibling".}
proc fcQModelIndex_siblingAtColumn(self: pointer, column: cint): pointer {.importc: "QModelIndex_siblingAtColumn".}
proc fcQModelIndex_siblingAtRow(self: pointer, row: cint): pointer {.importc: "QModelIndex_siblingAtRow".}
proc fcQModelIndex_child(self: pointer, row: cint, column: cint): pointer {.importc: "QModelIndex_child".}
proc fcQModelIndex_data(self: pointer, ): pointer {.importc: "QModelIndex_data".}
proc fcQModelIndex_flags(self: pointer, ): cint {.importc: "QModelIndex_flags".}
proc fcQModelIndex_model(self: pointer, ): pointer {.importc: "QModelIndex_model".}
proc fcQModelIndex_isValid(self: pointer, ): bool {.importc: "QModelIndex_isValid".}
proc fcQModelIndex_operatorEqual(self: pointer, other: pointer): bool {.importc: "QModelIndex_operatorEqual".}
proc fcQModelIndex_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QModelIndex_operatorNotEqual".}
proc fcQModelIndex_operatorLesser(self: pointer, other: pointer): bool {.importc: "QModelIndex_operatorLesser".}
proc fcQModelIndex_data1(self: pointer, role: cint): pointer {.importc: "QModelIndex_data1".}
proc fcQModelIndex_delete(self: pointer) {.importc: "QModelIndex_delete".}
proc fcQPersistentModelIndex_new(): ptr cQPersistentModelIndex {.importc: "QPersistentModelIndex_new".}
proc fcQPersistentModelIndex_new2(index: pointer): ptr cQPersistentModelIndex {.importc: "QPersistentModelIndex_new2".}
proc fcQPersistentModelIndex_new3(other: pointer): ptr cQPersistentModelIndex {.importc: "QPersistentModelIndex_new3".}
proc fcQPersistentModelIndex_operatorLesser(self: pointer, other: pointer): bool {.importc: "QPersistentModelIndex_operatorLesser".}
proc fcQPersistentModelIndex_operatorEqual(self: pointer, other: pointer): bool {.importc: "QPersistentModelIndex_operatorEqual".}
proc fcQPersistentModelIndex_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QPersistentModelIndex_operatorNotEqual".}
proc fcQPersistentModelIndex_operatorAssign(self: pointer, other: pointer): void {.importc: "QPersistentModelIndex_operatorAssign".}
proc fcQPersistentModelIndex_swap(self: pointer, other: pointer): void {.importc: "QPersistentModelIndex_swap".}
proc fcQPersistentModelIndex_operatorEqualWithOther(self: pointer, other: pointer): bool {.importc: "QPersistentModelIndex_operatorEqualWithOther".}
proc fcQPersistentModelIndex_operatorNotEqualWithOther(self: pointer, other: pointer): bool {.importc: "QPersistentModelIndex_operatorNotEqualWithOther".}
proc fcQPersistentModelIndex_operatorAssignWithOther(self: pointer, other: pointer): void {.importc: "QPersistentModelIndex_operatorAssignWithOther".}
proc fcQPersistentModelIndex_ToConstQModelIndexBitwiseAnd(self: pointer, ): pointer {.importc: "QPersistentModelIndex_ToConstQModelIndexBitwiseAnd".}
proc fcQPersistentModelIndex_row(self: pointer, ): cint {.importc: "QPersistentModelIndex_row".}
proc fcQPersistentModelIndex_column(self: pointer, ): cint {.importc: "QPersistentModelIndex_column".}
proc fcQPersistentModelIndex_internalPointer(self: pointer, ): pointer {.importc: "QPersistentModelIndex_internalPointer".}
proc fcQPersistentModelIndex_internalId(self: pointer, ): uint {.importc: "QPersistentModelIndex_internalId".}
proc fcQPersistentModelIndex_parent(self: pointer, ): pointer {.importc: "QPersistentModelIndex_parent".}
proc fcQPersistentModelIndex_sibling(self: pointer, row: cint, column: cint): pointer {.importc: "QPersistentModelIndex_sibling".}
proc fcQPersistentModelIndex_child(self: pointer, row: cint, column: cint): pointer {.importc: "QPersistentModelIndex_child".}
proc fcQPersistentModelIndex_data(self: pointer, ): pointer {.importc: "QPersistentModelIndex_data".}
proc fcQPersistentModelIndex_flags(self: pointer, ): cint {.importc: "QPersistentModelIndex_flags".}
proc fcQPersistentModelIndex_model(self: pointer, ): pointer {.importc: "QPersistentModelIndex_model".}
proc fcQPersistentModelIndex_isValid(self: pointer, ): bool {.importc: "QPersistentModelIndex_isValid".}
proc fcQPersistentModelIndex_data1(self: pointer, role: cint): pointer {.importc: "QPersistentModelIndex_data1".}
proc fcQPersistentModelIndex_delete(self: pointer) {.importc: "QPersistentModelIndex_delete".}
proc fcQAbstractItemModel_new(): ptr cQAbstractItemModel {.importc: "QAbstractItemModel_new".}
proc fcQAbstractItemModel_new2(parent: pointer): ptr cQAbstractItemModel {.importc: "QAbstractItemModel_new2".}
proc fcQAbstractItemModel_metaObject(self: pointer, ): pointer {.importc: "QAbstractItemModel_metaObject".}
proc fcQAbstractItemModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractItemModel_metacast".}
proc fcQAbstractItemModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractItemModel_metacall".}
proc fcQAbstractItemModel_tr(s: cstring): struct_miqt_string {.importc: "QAbstractItemModel_tr".}
proc fcQAbstractItemModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractItemModel_trUtf8".}
proc fcQAbstractItemModel_hasIndex(self: pointer, row: cint, column: cint): bool {.importc: "QAbstractItemModel_hasIndex".}
proc fcQAbstractItemModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QAbstractItemModel_index".}
proc fcQAbstractItemModel_parent(self: pointer, child: pointer): pointer {.importc: "QAbstractItemModel_parent".}
proc fcQAbstractItemModel_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QAbstractItemModel_sibling".}
proc fcQAbstractItemModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QAbstractItemModel_rowCount".}
proc fcQAbstractItemModel_columnCount(self: pointer, parent: pointer): cint {.importc: "QAbstractItemModel_columnCount".}
proc fcQAbstractItemModel_hasChildren(self: pointer, parent: pointer): bool {.importc: "QAbstractItemModel_hasChildren".}
proc fcQAbstractItemModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QAbstractItemModel_data".}
proc fcQAbstractItemModel_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QAbstractItemModel_setData".}
proc fcQAbstractItemModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QAbstractItemModel_headerData".}
proc fcQAbstractItemModel_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QAbstractItemModel_setHeaderData".}
proc fcQAbstractItemModel_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QAbstractItemModel_itemData".}
proc fcQAbstractItemModel_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QAbstractItemModel_setItemData".}
proc fcQAbstractItemModel_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QAbstractItemModel_mimeTypes".}
proc fcQAbstractItemModel_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QAbstractItemModel_mimeData".}
proc fcQAbstractItemModel_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractItemModel_canDropMimeData".}
proc fcQAbstractItemModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractItemModel_dropMimeData".}
proc fcQAbstractItemModel_supportedDropActions(self: pointer, ): cint {.importc: "QAbstractItemModel_supportedDropActions".}
proc fcQAbstractItemModel_supportedDragActions(self: pointer, ): cint {.importc: "QAbstractItemModel_supportedDragActions".}
proc fcQAbstractItemModel_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QAbstractItemModel_insertRows".}
proc fcQAbstractItemModel_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QAbstractItemModel_insertColumns".}
proc fcQAbstractItemModel_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QAbstractItemModel_removeRows".}
proc fcQAbstractItemModel_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QAbstractItemModel_removeColumns".}
proc fcQAbstractItemModel_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QAbstractItemModel_moveRows".}
proc fcQAbstractItemModel_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QAbstractItemModel_moveColumns".}
proc fcQAbstractItemModel_insertRow(self: pointer, row: cint): bool {.importc: "QAbstractItemModel_insertRow".}
proc fcQAbstractItemModel_insertColumn(self: pointer, column: cint): bool {.importc: "QAbstractItemModel_insertColumn".}
proc fcQAbstractItemModel_removeRow(self: pointer, row: cint): bool {.importc: "QAbstractItemModel_removeRow".}
proc fcQAbstractItemModel_removeColumn(self: pointer, column: cint): bool {.importc: "QAbstractItemModel_removeColumn".}
proc fcQAbstractItemModel_moveRow(self: pointer, sourceParent: pointer, sourceRow: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QAbstractItemModel_moveRow".}
proc fcQAbstractItemModel_moveColumn(self: pointer, sourceParent: pointer, sourceColumn: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QAbstractItemModel_moveColumn".}
proc fcQAbstractItemModel_fetchMore(self: pointer, parent: pointer): void {.importc: "QAbstractItemModel_fetchMore".}
proc fcQAbstractItemModel_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QAbstractItemModel_canFetchMore".}
proc fcQAbstractItemModel_flags(self: pointer, index: pointer): cint {.importc: "QAbstractItemModel_flags".}
proc fcQAbstractItemModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QAbstractItemModel_sort".}
proc fcQAbstractItemModel_buddy(self: pointer, index: pointer): pointer {.importc: "QAbstractItemModel_buddy".}
proc fcQAbstractItemModel_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QAbstractItemModel_match".}
proc fcQAbstractItemModel_span(self: pointer, index: pointer): pointer {.importc: "QAbstractItemModel_span".}
proc fcQAbstractItemModel_roleNames(self: pointer, ): struct_miqt_map {.importc: "QAbstractItemModel_roleNames".}
proc fcQAbstractItemModel_checkIndex(self: pointer, index: pointer): bool {.importc: "QAbstractItemModel_checkIndex".}
proc fcQAbstractItemModel_dataChanged(self: pointer, topLeft: pointer, bottomRight: pointer): void {.importc: "QAbstractItemModel_dataChanged".}
proc fQAbstractItemModel_connect_dataChanged(self: pointer, slot: int) {.importc: "QAbstractItemModel_connect_dataChanged".}
proc fcQAbstractItemModel_headerDataChanged(self: pointer, orientation: cint, first: cint, last: cint): void {.importc: "QAbstractItemModel_headerDataChanged".}
proc fQAbstractItemModel_connect_headerDataChanged(self: pointer, slot: int) {.importc: "QAbstractItemModel_connect_headerDataChanged".}
proc fcQAbstractItemModel_layoutChanged(self: pointer, ): void {.importc: "QAbstractItemModel_layoutChanged".}
proc fQAbstractItemModel_connect_layoutChanged(self: pointer, slot: int) {.importc: "QAbstractItemModel_connect_layoutChanged".}
proc fcQAbstractItemModel_layoutAboutToBeChanged(self: pointer, ): void {.importc: "QAbstractItemModel_layoutAboutToBeChanged".}
proc fQAbstractItemModel_connect_layoutAboutToBeChanged(self: pointer, slot: int) {.importc: "QAbstractItemModel_connect_layoutAboutToBeChanged".}
proc fcQAbstractItemModel_submit(self: pointer, ): bool {.importc: "QAbstractItemModel_submit".}
proc fcQAbstractItemModel_revert(self: pointer, ): void {.importc: "QAbstractItemModel_revert".}
proc fcQAbstractItemModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractItemModel_tr2".}
proc fcQAbstractItemModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractItemModel_tr3".}
proc fcQAbstractItemModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractItemModel_trUtf82".}
proc fcQAbstractItemModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractItemModel_trUtf83".}
proc fcQAbstractItemModel_hasIndex3(self: pointer, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractItemModel_hasIndex3".}
proc fcQAbstractItemModel_insertRow2(self: pointer, row: cint, parent: pointer): bool {.importc: "QAbstractItemModel_insertRow2".}
proc fcQAbstractItemModel_insertColumn2(self: pointer, column: cint, parent: pointer): bool {.importc: "QAbstractItemModel_insertColumn2".}
proc fcQAbstractItemModel_removeRow2(self: pointer, row: cint, parent: pointer): bool {.importc: "QAbstractItemModel_removeRow2".}
proc fcQAbstractItemModel_removeColumn2(self: pointer, column: cint, parent: pointer): bool {.importc: "QAbstractItemModel_removeColumn2".}
proc fcQAbstractItemModel_checkIndex2(self: pointer, index: pointer, options: cint): bool {.importc: "QAbstractItemModel_checkIndex2".}
proc fcQAbstractItemModel_dataChanged3(self: pointer, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array): void {.importc: "QAbstractItemModel_dataChanged3".}
proc fQAbstractItemModel_connect_dataChanged3(self: pointer, slot: int) {.importc: "QAbstractItemModel_connect_dataChanged3".}
proc fcQAbstractItemModel_layoutChanged1(self: pointer, parents: struct_miqt_array): void {.importc: "QAbstractItemModel_layoutChanged1".}
proc fQAbstractItemModel_connect_layoutChanged1(self: pointer, slot: int) {.importc: "QAbstractItemModel_connect_layoutChanged1".}
proc fcQAbstractItemModel_layoutChanged2(self: pointer, parents: struct_miqt_array, hint: cint): void {.importc: "QAbstractItemModel_layoutChanged2".}
proc fQAbstractItemModel_connect_layoutChanged2(self: pointer, slot: int) {.importc: "QAbstractItemModel_connect_layoutChanged2".}
proc fcQAbstractItemModel_layoutAboutToBeChanged1(self: pointer, parents: struct_miqt_array): void {.importc: "QAbstractItemModel_layoutAboutToBeChanged1".}
proc fQAbstractItemModel_connect_layoutAboutToBeChanged1(self: pointer, slot: int) {.importc: "QAbstractItemModel_connect_layoutAboutToBeChanged1".}
proc fcQAbstractItemModel_layoutAboutToBeChanged2(self: pointer, parents: struct_miqt_array, hint: cint): void {.importc: "QAbstractItemModel_layoutAboutToBeChanged2".}
proc fQAbstractItemModel_connect_layoutAboutToBeChanged2(self: pointer, slot: int) {.importc: "QAbstractItemModel_connect_layoutAboutToBeChanged2".}
proc fQAbstractItemModel_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAbstractItemModel_virtualbase_metaObject".}
proc fcQAbstractItemModel_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_metaObject".}
proc fQAbstractItemModel_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAbstractItemModel_virtualbase_metacast".}
proc fcQAbstractItemModel_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_metacast".}
proc fQAbstractItemModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractItemModel_virtualbase_metacall".}
proc fcQAbstractItemModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_metacall".}
proc fcQAbstractItemModel_override_virtual_index(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_index".}
proc fcQAbstractItemModel_override_virtual_parent(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_parent".}
proc fQAbstractItemModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QAbstractItemModel_virtualbase_sibling".}
proc fcQAbstractItemModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_sibling".}
proc fcQAbstractItemModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_rowCount".}
proc fcQAbstractItemModel_override_virtual_columnCount(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_columnCount".}
proc fQAbstractItemModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool{.importc: "QAbstractItemModel_virtualbase_hasChildren".}
proc fcQAbstractItemModel_override_virtual_hasChildren(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_hasChildren".}
proc fcQAbstractItemModel_override_virtual_data(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_data".}
proc fQAbstractItemModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QAbstractItemModel_virtualbase_setData".}
proc fcQAbstractItemModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_setData".}
proc fQAbstractItemModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QAbstractItemModel_virtualbase_headerData".}
proc fcQAbstractItemModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_headerData".}
proc fQAbstractItemModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QAbstractItemModel_virtualbase_setHeaderData".}
proc fcQAbstractItemModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_setHeaderData".}
proc fQAbstractItemModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QAbstractItemModel_virtualbase_itemData".}
proc fcQAbstractItemModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_itemData".}
proc fQAbstractItemModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QAbstractItemModel_virtualbase_setItemData".}
proc fcQAbstractItemModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_setItemData".}
proc fQAbstractItemModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QAbstractItemModel_virtualbase_mimeTypes".}
proc fcQAbstractItemModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_mimeTypes".}
proc fQAbstractItemModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QAbstractItemModel_virtualbase_mimeData".}
proc fcQAbstractItemModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_mimeData".}
proc fQAbstractItemModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QAbstractItemModel_virtualbase_canDropMimeData".}
proc fcQAbstractItemModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_canDropMimeData".}
proc fQAbstractItemModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QAbstractItemModel_virtualbase_dropMimeData".}
proc fcQAbstractItemModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_dropMimeData".}
proc fQAbstractItemModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QAbstractItemModel_virtualbase_supportedDropActions".}
proc fcQAbstractItemModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_supportedDropActions".}
proc fQAbstractItemModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QAbstractItemModel_virtualbase_supportedDragActions".}
proc fcQAbstractItemModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_supportedDragActions".}
proc fQAbstractItemModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QAbstractItemModel_virtualbase_insertRows".}
proc fcQAbstractItemModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_insertRows".}
proc fQAbstractItemModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QAbstractItemModel_virtualbase_insertColumns".}
proc fcQAbstractItemModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_insertColumns".}
proc fQAbstractItemModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QAbstractItemModel_virtualbase_removeRows".}
proc fcQAbstractItemModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_removeRows".}
proc fQAbstractItemModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QAbstractItemModel_virtualbase_removeColumns".}
proc fcQAbstractItemModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_removeColumns".}
proc fQAbstractItemModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QAbstractItemModel_virtualbase_moveRows".}
proc fcQAbstractItemModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_moveRows".}
proc fQAbstractItemModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QAbstractItemModel_virtualbase_moveColumns".}
proc fcQAbstractItemModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_moveColumns".}
proc fQAbstractItemModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QAbstractItemModel_virtualbase_fetchMore".}
proc fcQAbstractItemModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_fetchMore".}
proc fQAbstractItemModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QAbstractItemModel_virtualbase_canFetchMore".}
proc fcQAbstractItemModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_canFetchMore".}
proc fQAbstractItemModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QAbstractItemModel_virtualbase_flags".}
proc fcQAbstractItemModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_flags".}
proc fQAbstractItemModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QAbstractItemModel_virtualbase_sort".}
proc fcQAbstractItemModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_sort".}
proc fQAbstractItemModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QAbstractItemModel_virtualbase_buddy".}
proc fcQAbstractItemModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_buddy".}
proc fQAbstractItemModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QAbstractItemModel_virtualbase_match".}
proc fcQAbstractItemModel_override_virtual_match(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_match".}
proc fQAbstractItemModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QAbstractItemModel_virtualbase_span".}
proc fcQAbstractItemModel_override_virtual_span(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_span".}
proc fQAbstractItemModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QAbstractItemModel_virtualbase_roleNames".}
proc fcQAbstractItemModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_roleNames".}
proc fQAbstractItemModel_virtualbase_submit(self: pointer, ): bool{.importc: "QAbstractItemModel_virtualbase_submit".}
proc fcQAbstractItemModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_submit".}
proc fQAbstractItemModel_virtualbase_revert(self: pointer, ): void{.importc: "QAbstractItemModel_virtualbase_revert".}
proc fcQAbstractItemModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_revert".}
proc fQAbstractItemModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractItemModel_virtualbase_event".}
proc fcQAbstractItemModel_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_event".}
proc fQAbstractItemModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractItemModel_virtualbase_eventFilter".}
proc fcQAbstractItemModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_eventFilter".}
proc fQAbstractItemModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemModel_virtualbase_timerEvent".}
proc fcQAbstractItemModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_timerEvent".}
proc fQAbstractItemModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemModel_virtualbase_childEvent".}
proc fcQAbstractItemModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_childEvent".}
proc fQAbstractItemModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemModel_virtualbase_customEvent".}
proc fcQAbstractItemModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_customEvent".}
proc fQAbstractItemModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractItemModel_virtualbase_connectNotify".}
proc fcQAbstractItemModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_connectNotify".}
proc fQAbstractItemModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractItemModel_virtualbase_disconnectNotify".}
proc fcQAbstractItemModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractItemModel_override_virtual_disconnectNotify".}
proc fcQAbstractItemModel_staticMetaObject(): pointer {.importc: "QAbstractItemModel_staticMetaObject".}
proc fcQAbstractItemModel_delete(self: pointer) {.importc: "QAbstractItemModel_delete".}
proc fcQAbstractTableModel_new(): ptr cQAbstractTableModel {.importc: "QAbstractTableModel_new".}
proc fcQAbstractTableModel_new2(parent: pointer): ptr cQAbstractTableModel {.importc: "QAbstractTableModel_new2".}
proc fcQAbstractTableModel_metaObject(self: pointer, ): pointer {.importc: "QAbstractTableModel_metaObject".}
proc fcQAbstractTableModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractTableModel_metacast".}
proc fcQAbstractTableModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractTableModel_metacall".}
proc fcQAbstractTableModel_tr(s: cstring): struct_miqt_string {.importc: "QAbstractTableModel_tr".}
proc fcQAbstractTableModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractTableModel_trUtf8".}
proc fcQAbstractTableModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QAbstractTableModel_index".}
proc fcQAbstractTableModel_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QAbstractTableModel_sibling".}
proc fcQAbstractTableModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractTableModel_dropMimeData".}
proc fcQAbstractTableModel_flags(self: pointer, index: pointer): cint {.importc: "QAbstractTableModel_flags".}
proc fcQAbstractTableModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractTableModel_tr2".}
proc fcQAbstractTableModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractTableModel_tr3".}
proc fcQAbstractTableModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractTableModel_trUtf82".}
proc fcQAbstractTableModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractTableModel_trUtf83".}
proc fQAbstractTableModel_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAbstractTableModel_virtualbase_metaObject".}
proc fcQAbstractTableModel_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_metaObject".}
proc fQAbstractTableModel_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAbstractTableModel_virtualbase_metacast".}
proc fcQAbstractTableModel_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_metacast".}
proc fQAbstractTableModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractTableModel_virtualbase_metacall".}
proc fcQAbstractTableModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_metacall".}
proc fQAbstractTableModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer{.importc: "QAbstractTableModel_virtualbase_index".}
proc fcQAbstractTableModel_override_virtual_index(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_index".}
proc fQAbstractTableModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QAbstractTableModel_virtualbase_sibling".}
proc fcQAbstractTableModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_sibling".}
proc fQAbstractTableModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QAbstractTableModel_virtualbase_dropMimeData".}
proc fcQAbstractTableModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_dropMimeData".}
proc fQAbstractTableModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QAbstractTableModel_virtualbase_flags".}
proc fcQAbstractTableModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_flags".}
proc fcQAbstractTableModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_rowCount".}
proc fcQAbstractTableModel_override_virtual_columnCount(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_columnCount".}
proc fcQAbstractTableModel_override_virtual_data(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_data".}
proc fQAbstractTableModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QAbstractTableModel_virtualbase_setData".}
proc fcQAbstractTableModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_setData".}
proc fQAbstractTableModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QAbstractTableModel_virtualbase_headerData".}
proc fcQAbstractTableModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_headerData".}
proc fQAbstractTableModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QAbstractTableModel_virtualbase_setHeaderData".}
proc fcQAbstractTableModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_setHeaderData".}
proc fQAbstractTableModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QAbstractTableModel_virtualbase_itemData".}
proc fcQAbstractTableModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_itemData".}
proc fQAbstractTableModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QAbstractTableModel_virtualbase_setItemData".}
proc fcQAbstractTableModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_setItemData".}
proc fQAbstractTableModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QAbstractTableModel_virtualbase_mimeTypes".}
proc fcQAbstractTableModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_mimeTypes".}
proc fQAbstractTableModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QAbstractTableModel_virtualbase_mimeData".}
proc fcQAbstractTableModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_mimeData".}
proc fQAbstractTableModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QAbstractTableModel_virtualbase_canDropMimeData".}
proc fcQAbstractTableModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_canDropMimeData".}
proc fQAbstractTableModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QAbstractTableModel_virtualbase_supportedDropActions".}
proc fcQAbstractTableModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_supportedDropActions".}
proc fQAbstractTableModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QAbstractTableModel_virtualbase_supportedDragActions".}
proc fcQAbstractTableModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_supportedDragActions".}
proc fQAbstractTableModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QAbstractTableModel_virtualbase_insertRows".}
proc fcQAbstractTableModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_insertRows".}
proc fQAbstractTableModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QAbstractTableModel_virtualbase_insertColumns".}
proc fcQAbstractTableModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_insertColumns".}
proc fQAbstractTableModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QAbstractTableModel_virtualbase_removeRows".}
proc fcQAbstractTableModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_removeRows".}
proc fQAbstractTableModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QAbstractTableModel_virtualbase_removeColumns".}
proc fcQAbstractTableModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_removeColumns".}
proc fQAbstractTableModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QAbstractTableModel_virtualbase_moveRows".}
proc fcQAbstractTableModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_moveRows".}
proc fQAbstractTableModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QAbstractTableModel_virtualbase_moveColumns".}
proc fcQAbstractTableModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_moveColumns".}
proc fQAbstractTableModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QAbstractTableModel_virtualbase_fetchMore".}
proc fcQAbstractTableModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_fetchMore".}
proc fQAbstractTableModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QAbstractTableModel_virtualbase_canFetchMore".}
proc fcQAbstractTableModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_canFetchMore".}
proc fQAbstractTableModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QAbstractTableModel_virtualbase_sort".}
proc fcQAbstractTableModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_sort".}
proc fQAbstractTableModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QAbstractTableModel_virtualbase_buddy".}
proc fcQAbstractTableModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_buddy".}
proc fQAbstractTableModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QAbstractTableModel_virtualbase_match".}
proc fcQAbstractTableModel_override_virtual_match(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_match".}
proc fQAbstractTableModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QAbstractTableModel_virtualbase_span".}
proc fcQAbstractTableModel_override_virtual_span(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_span".}
proc fQAbstractTableModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QAbstractTableModel_virtualbase_roleNames".}
proc fcQAbstractTableModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_roleNames".}
proc fQAbstractTableModel_virtualbase_submit(self: pointer, ): bool{.importc: "QAbstractTableModel_virtualbase_submit".}
proc fcQAbstractTableModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_submit".}
proc fQAbstractTableModel_virtualbase_revert(self: pointer, ): void{.importc: "QAbstractTableModel_virtualbase_revert".}
proc fcQAbstractTableModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_revert".}
proc fQAbstractTableModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractTableModel_virtualbase_event".}
proc fcQAbstractTableModel_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_event".}
proc fQAbstractTableModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractTableModel_virtualbase_eventFilter".}
proc fcQAbstractTableModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_eventFilter".}
proc fQAbstractTableModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractTableModel_virtualbase_timerEvent".}
proc fcQAbstractTableModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_timerEvent".}
proc fQAbstractTableModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractTableModel_virtualbase_childEvent".}
proc fcQAbstractTableModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_childEvent".}
proc fQAbstractTableModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractTableModel_virtualbase_customEvent".}
proc fcQAbstractTableModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_customEvent".}
proc fQAbstractTableModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractTableModel_virtualbase_connectNotify".}
proc fcQAbstractTableModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_connectNotify".}
proc fQAbstractTableModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractTableModel_virtualbase_disconnectNotify".}
proc fcQAbstractTableModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractTableModel_override_virtual_disconnectNotify".}
proc fcQAbstractTableModel_staticMetaObject(): pointer {.importc: "QAbstractTableModel_staticMetaObject".}
proc fcQAbstractTableModel_delete(self: pointer) {.importc: "QAbstractTableModel_delete".}
proc fcQAbstractListModel_new(): ptr cQAbstractListModel {.importc: "QAbstractListModel_new".}
proc fcQAbstractListModel_new2(parent: pointer): ptr cQAbstractListModel {.importc: "QAbstractListModel_new2".}
proc fcQAbstractListModel_metaObject(self: pointer, ): pointer {.importc: "QAbstractListModel_metaObject".}
proc fcQAbstractListModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractListModel_metacast".}
proc fcQAbstractListModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractListModel_metacall".}
proc fcQAbstractListModel_tr(s: cstring): struct_miqt_string {.importc: "QAbstractListModel_tr".}
proc fcQAbstractListModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractListModel_trUtf8".}
proc fcQAbstractListModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QAbstractListModel_index".}
proc fcQAbstractListModel_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QAbstractListModel_sibling".}
proc fcQAbstractListModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractListModel_dropMimeData".}
proc fcQAbstractListModel_flags(self: pointer, index: pointer): cint {.importc: "QAbstractListModel_flags".}
proc fcQAbstractListModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractListModel_tr2".}
proc fcQAbstractListModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractListModel_tr3".}
proc fcQAbstractListModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractListModel_trUtf82".}
proc fcQAbstractListModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractListModel_trUtf83".}
proc fQAbstractListModel_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QAbstractListModel_virtualbase_metaObject".}
proc fcQAbstractListModel_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_metaObject".}
proc fQAbstractListModel_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QAbstractListModel_virtualbase_metacast".}
proc fcQAbstractListModel_override_virtual_metacast(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_metacast".}
proc fQAbstractListModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractListModel_virtualbase_metacall".}
proc fcQAbstractListModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_metacall".}
proc fQAbstractListModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer{.importc: "QAbstractListModel_virtualbase_index".}
proc fcQAbstractListModel_override_virtual_index(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_index".}
proc fQAbstractListModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QAbstractListModel_virtualbase_sibling".}
proc fcQAbstractListModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_sibling".}
proc fQAbstractListModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QAbstractListModel_virtualbase_dropMimeData".}
proc fcQAbstractListModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_dropMimeData".}
proc fQAbstractListModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QAbstractListModel_virtualbase_flags".}
proc fcQAbstractListModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_flags".}
proc fcQAbstractListModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_rowCount".}
proc fcQAbstractListModel_override_virtual_data(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_data".}
proc fQAbstractListModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QAbstractListModel_virtualbase_setData".}
proc fcQAbstractListModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_setData".}
proc fQAbstractListModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QAbstractListModel_virtualbase_headerData".}
proc fcQAbstractListModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_headerData".}
proc fQAbstractListModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QAbstractListModel_virtualbase_setHeaderData".}
proc fcQAbstractListModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_setHeaderData".}
proc fQAbstractListModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QAbstractListModel_virtualbase_itemData".}
proc fcQAbstractListModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_itemData".}
proc fQAbstractListModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QAbstractListModel_virtualbase_setItemData".}
proc fcQAbstractListModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_setItemData".}
proc fQAbstractListModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QAbstractListModel_virtualbase_mimeTypes".}
proc fcQAbstractListModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_mimeTypes".}
proc fQAbstractListModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QAbstractListModel_virtualbase_mimeData".}
proc fcQAbstractListModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_mimeData".}
proc fQAbstractListModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QAbstractListModel_virtualbase_canDropMimeData".}
proc fcQAbstractListModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_canDropMimeData".}
proc fQAbstractListModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QAbstractListModel_virtualbase_supportedDropActions".}
proc fcQAbstractListModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_supportedDropActions".}
proc fQAbstractListModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QAbstractListModel_virtualbase_supportedDragActions".}
proc fcQAbstractListModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_supportedDragActions".}
proc fQAbstractListModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QAbstractListModel_virtualbase_insertRows".}
proc fcQAbstractListModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_insertRows".}
proc fQAbstractListModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QAbstractListModel_virtualbase_insertColumns".}
proc fcQAbstractListModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_insertColumns".}
proc fQAbstractListModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QAbstractListModel_virtualbase_removeRows".}
proc fcQAbstractListModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_removeRows".}
proc fQAbstractListModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QAbstractListModel_virtualbase_removeColumns".}
proc fcQAbstractListModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_removeColumns".}
proc fQAbstractListModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QAbstractListModel_virtualbase_moveRows".}
proc fcQAbstractListModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_moveRows".}
proc fQAbstractListModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QAbstractListModel_virtualbase_moveColumns".}
proc fcQAbstractListModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_moveColumns".}
proc fQAbstractListModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QAbstractListModel_virtualbase_fetchMore".}
proc fcQAbstractListModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_fetchMore".}
proc fQAbstractListModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QAbstractListModel_virtualbase_canFetchMore".}
proc fcQAbstractListModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_canFetchMore".}
proc fQAbstractListModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QAbstractListModel_virtualbase_sort".}
proc fcQAbstractListModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_sort".}
proc fQAbstractListModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QAbstractListModel_virtualbase_buddy".}
proc fcQAbstractListModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_buddy".}
proc fQAbstractListModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QAbstractListModel_virtualbase_match".}
proc fcQAbstractListModel_override_virtual_match(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_match".}
proc fQAbstractListModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QAbstractListModel_virtualbase_span".}
proc fcQAbstractListModel_override_virtual_span(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_span".}
proc fQAbstractListModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QAbstractListModel_virtualbase_roleNames".}
proc fcQAbstractListModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_roleNames".}
proc fQAbstractListModel_virtualbase_submit(self: pointer, ): bool{.importc: "QAbstractListModel_virtualbase_submit".}
proc fcQAbstractListModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_submit".}
proc fQAbstractListModel_virtualbase_revert(self: pointer, ): void{.importc: "QAbstractListModel_virtualbase_revert".}
proc fcQAbstractListModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_revert".}
proc fQAbstractListModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractListModel_virtualbase_event".}
proc fcQAbstractListModel_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_event".}
proc fQAbstractListModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractListModel_virtualbase_eventFilter".}
proc fcQAbstractListModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_eventFilter".}
proc fQAbstractListModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractListModel_virtualbase_timerEvent".}
proc fcQAbstractListModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_timerEvent".}
proc fQAbstractListModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractListModel_virtualbase_childEvent".}
proc fcQAbstractListModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_childEvent".}
proc fQAbstractListModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractListModel_virtualbase_customEvent".}
proc fcQAbstractListModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_customEvent".}
proc fQAbstractListModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractListModel_virtualbase_connectNotify".}
proc fcQAbstractListModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_connectNotify".}
proc fQAbstractListModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractListModel_virtualbase_disconnectNotify".}
proc fcQAbstractListModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractListModel_override_virtual_disconnectNotify".}
proc fcQAbstractListModel_staticMetaObject(): pointer {.importc: "QAbstractListModel_staticMetaObject".}
proc fcQAbstractListModel_delete(self: pointer) {.importc: "QAbstractListModel_delete".}


func init*(T: type QModelIndex, h: ptr cQModelIndex): QModelIndex =
  T(h: h)
proc create*(T: type QModelIndex, ): QModelIndex =

  QModelIndex.init(fcQModelIndex_new())
proc create*(T: type QModelIndex, param1: QModelIndex): QModelIndex =

  QModelIndex.init(fcQModelIndex_new2(param1.h))
proc row*(self: QModelIndex, ): cint =

  fcQModelIndex_row(self.h)

proc column*(self: QModelIndex, ): cint =

  fcQModelIndex_column(self.h)

proc internalId*(self: QModelIndex, ): uint =

  fcQModelIndex_internalId(self.h)

proc internalPointer*(self: QModelIndex, ): pointer =

  fcQModelIndex_internalPointer(self.h)

proc parent*(self: QModelIndex, ): QModelIndex =

  QModelIndex(h: fcQModelIndex_parent(self.h))

proc sibling*(self: QModelIndex, row: cint, column: cint): QModelIndex =

  QModelIndex(h: fcQModelIndex_sibling(self.h, row, column))

proc siblingAtColumn*(self: QModelIndex, column: cint): QModelIndex =

  QModelIndex(h: fcQModelIndex_siblingAtColumn(self.h, column))

proc siblingAtRow*(self: QModelIndex, row: cint): QModelIndex =

  QModelIndex(h: fcQModelIndex_siblingAtRow(self.h, row))

proc child*(self: QModelIndex, row: cint, column: cint): QModelIndex =

  QModelIndex(h: fcQModelIndex_child(self.h, row, column))

proc data*(self: QModelIndex, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQModelIndex_data(self.h))

proc flags*(self: QModelIndex, ): gen_qnamespace.ItemFlag =

  gen_qnamespace.ItemFlag(fcQModelIndex_flags(self.h))

proc model*(self: QModelIndex, ): QAbstractItemModel =

  QAbstractItemModel(h: fcQModelIndex_model(self.h))

proc isValid*(self: QModelIndex, ): bool =

  fcQModelIndex_isValid(self.h)

proc operatorEqual*(self: QModelIndex, other: QModelIndex): bool =

  fcQModelIndex_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QModelIndex, other: QModelIndex): bool =

  fcQModelIndex_operatorNotEqual(self.h, other.h)

proc operatorLesser*(self: QModelIndex, other: QModelIndex): bool =

  fcQModelIndex_operatorLesser(self.h, other.h)

proc data1*(self: QModelIndex, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQModelIndex_data1(self.h, role))

proc delete*(self: QModelIndex) =
  fcQModelIndex_delete(self.h)

func init*(T: type QPersistentModelIndex, h: ptr cQPersistentModelIndex): QPersistentModelIndex =
  T(h: h)
proc create*(T: type QPersistentModelIndex, ): QPersistentModelIndex =

  QPersistentModelIndex.init(fcQPersistentModelIndex_new())
proc create*(T: type QPersistentModelIndex, index: QModelIndex): QPersistentModelIndex =

  QPersistentModelIndex.init(fcQPersistentModelIndex_new2(index.h))
proc create2*(T: type QPersistentModelIndex, other: QPersistentModelIndex): QPersistentModelIndex =

  QPersistentModelIndex.init(fcQPersistentModelIndex_new3(other.h))
proc operatorLesser*(self: QPersistentModelIndex, other: QPersistentModelIndex): bool =

  fcQPersistentModelIndex_operatorLesser(self.h, other.h)

proc operatorEqual*(self: QPersistentModelIndex, other: QPersistentModelIndex): bool =

  fcQPersistentModelIndex_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QPersistentModelIndex, other: QPersistentModelIndex): bool =

  fcQPersistentModelIndex_operatorNotEqual(self.h, other.h)

proc operatorAssign*(self: QPersistentModelIndex, other: QPersistentModelIndex): void =

  fcQPersistentModelIndex_operatorAssign(self.h, other.h)

proc swap*(self: QPersistentModelIndex, other: QPersistentModelIndex): void =

  fcQPersistentModelIndex_swap(self.h, other.h)

proc operatorEqualWithOther*(self: QPersistentModelIndex, other: QModelIndex): bool =

  fcQPersistentModelIndex_operatorEqualWithOther(self.h, other.h)

proc operatorNotEqualWithOther*(self: QPersistentModelIndex, other: QModelIndex): bool =

  fcQPersistentModelIndex_operatorNotEqualWithOther(self.h, other.h)

proc operatorAssignWithOther*(self: QPersistentModelIndex, other: QModelIndex): void =

  fcQPersistentModelIndex_operatorAssignWithOther(self.h, other.h)

proc ToConstQModelIndexBitwiseAnd*(self: QPersistentModelIndex, ): QModelIndex =

  QModelIndex(h: fcQPersistentModelIndex_ToConstQModelIndexBitwiseAnd(self.h))

proc row*(self: QPersistentModelIndex, ): cint =

  fcQPersistentModelIndex_row(self.h)

proc column*(self: QPersistentModelIndex, ): cint =

  fcQPersistentModelIndex_column(self.h)

proc internalPointer*(self: QPersistentModelIndex, ): pointer =

  fcQPersistentModelIndex_internalPointer(self.h)

proc internalId*(self: QPersistentModelIndex, ): uint =

  fcQPersistentModelIndex_internalId(self.h)

proc parent*(self: QPersistentModelIndex, ): QModelIndex =

  QModelIndex(h: fcQPersistentModelIndex_parent(self.h))

proc sibling*(self: QPersistentModelIndex, row: cint, column: cint): QModelIndex =

  QModelIndex(h: fcQPersistentModelIndex_sibling(self.h, row, column))

proc child*(self: QPersistentModelIndex, row: cint, column: cint): QModelIndex =

  QModelIndex(h: fcQPersistentModelIndex_child(self.h, row, column))

proc data*(self: QPersistentModelIndex, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQPersistentModelIndex_data(self.h))

proc flags*(self: QPersistentModelIndex, ): gen_qnamespace.ItemFlag =

  gen_qnamespace.ItemFlag(fcQPersistentModelIndex_flags(self.h))

proc model*(self: QPersistentModelIndex, ): QAbstractItemModel =

  QAbstractItemModel(h: fcQPersistentModelIndex_model(self.h))

proc isValid*(self: QPersistentModelIndex, ): bool =

  fcQPersistentModelIndex_isValid(self.h)

proc data1*(self: QPersistentModelIndex, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQPersistentModelIndex_data1(self.h, role))

proc delete*(self: QPersistentModelIndex) =
  fcQPersistentModelIndex_delete(self.h)

func init*(T: type QAbstractItemModel, h: ptr cQAbstractItemModel): QAbstractItemModel =
  T(h: h)
proc create*(T: type QAbstractItemModel, ): QAbstractItemModel =

  QAbstractItemModel.init(fcQAbstractItemModel_new())
proc create*(T: type QAbstractItemModel, parent: gen_qobject.QObject): QAbstractItemModel =

  QAbstractItemModel.init(fcQAbstractItemModel_new2(parent.h))
proc metaObject*(self: QAbstractItemModel, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAbstractItemModel_metaObject(self.h))

proc metacast*(self: QAbstractItemModel, param1: cstring): pointer =

  fcQAbstractItemModel_metacast(self.h, param1)

proc metacall*(self: QAbstractItemModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAbstractItemModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAbstractItemModel, s: cstring): string =

  let v_ms = fcQAbstractItemModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QAbstractItemModel, s: cstring): string =

  let v_ms = fcQAbstractItemModel_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc hasIndex*(self: QAbstractItemModel, row: cint, column: cint): bool =

  fcQAbstractItemModel_hasIndex(self.h, row, column)

proc index*(self: QAbstractItemModel, row: cint, column: cint, parent: QModelIndex): QModelIndex =

  QModelIndex(h: fcQAbstractItemModel_index(self.h, row, column, parent.h))

proc parent*(self: QAbstractItemModel, child: QModelIndex): QModelIndex =

  QModelIndex(h: fcQAbstractItemModel_parent(self.h, child.h))

proc sibling*(self: QAbstractItemModel, row: cint, column: cint, idx: QModelIndex): QModelIndex =

  QModelIndex(h: fcQAbstractItemModel_sibling(self.h, row, column, idx.h))

proc rowCount*(self: QAbstractItemModel, parent: QModelIndex): cint =

  fcQAbstractItemModel_rowCount(self.h, parent.h)

proc columnCount*(self: QAbstractItemModel, parent: QModelIndex): cint =

  fcQAbstractItemModel_columnCount(self.h, parent.h)

proc hasChildren*(self: QAbstractItemModel, parent: QModelIndex): bool =

  fcQAbstractItemModel_hasChildren(self.h, parent.h)

proc data*(self: QAbstractItemModel, index: QModelIndex, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQAbstractItemModel_data(self.h, index.h, role))

proc setData*(self: QAbstractItemModel, index: QModelIndex, value: gen_qvariant.QVariant, role: cint): bool =

  fcQAbstractItemModel_setData(self.h, index.h, value.h, role)

proc headerData*(self: QAbstractItemModel, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQAbstractItemModel_headerData(self.h, section, cint(orientation), role))

proc setHeaderData*(self: QAbstractItemModel, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool =

  fcQAbstractItemModel_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc itemData*(self: QAbstractItemModel, index: QModelIndex): Table[cint,gen_qvariant.QVariant] =

  var v_mm = fcQAbstractItemModel_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc setItemData*(self: QAbstractItemModel, index: QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool =

  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQAbstractItemModel_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc mimeTypes*(self: QAbstractItemModel, ): seq[string] =

  var v_ma = fcQAbstractItemModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc mimeData*(self: QAbstractItemModel, indexes: seq[QModelIndex]): gen_qmimedata.QMimeData =

  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata.QMimeData(h: fcQAbstractItemModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc canDropMimeData*(self: QAbstractItemModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool =

  fcQAbstractItemModel_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc dropMimeData*(self: QAbstractItemModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool =

  fcQAbstractItemModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc supportedDropActions*(self: QAbstractItemModel, ): gen_qnamespace.DropAction =

  gen_qnamespace.DropAction(fcQAbstractItemModel_supportedDropActions(self.h))

proc supportedDragActions*(self: QAbstractItemModel, ): gen_qnamespace.DropAction =

  gen_qnamespace.DropAction(fcQAbstractItemModel_supportedDragActions(self.h))

proc insertRows*(self: QAbstractItemModel, row: cint, count: cint, parent: QModelIndex): bool =

  fcQAbstractItemModel_insertRows(self.h, row, count, parent.h)

proc insertColumns*(self: QAbstractItemModel, column: cint, count: cint, parent: QModelIndex): bool =

  fcQAbstractItemModel_insertColumns(self.h, column, count, parent.h)

proc removeRows*(self: QAbstractItemModel, row: cint, count: cint, parent: QModelIndex): bool =

  fcQAbstractItemModel_removeRows(self.h, row, count, parent.h)

proc removeColumns*(self: QAbstractItemModel, column: cint, count: cint, parent: QModelIndex): bool =

  fcQAbstractItemModel_removeColumns(self.h, column, count, parent.h)

proc moveRows*(self: QAbstractItemModel, sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool =

  fcQAbstractItemModel_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc moveColumns*(self: QAbstractItemModel, sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool =

  fcQAbstractItemModel_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc insertRow*(self: QAbstractItemModel, row: cint): bool =

  fcQAbstractItemModel_insertRow(self.h, row)

proc insertColumn*(self: QAbstractItemModel, column: cint): bool =

  fcQAbstractItemModel_insertColumn(self.h, column)

proc removeRow*(self: QAbstractItemModel, row: cint): bool =

  fcQAbstractItemModel_removeRow(self.h, row)

proc removeColumn*(self: QAbstractItemModel, column: cint): bool =

  fcQAbstractItemModel_removeColumn(self.h, column)

proc moveRow*(self: QAbstractItemModel, sourceParent: QModelIndex, sourceRow: cint, destinationParent: QModelIndex, destinationChild: cint): bool =

  fcQAbstractItemModel_moveRow(self.h, sourceParent.h, sourceRow, destinationParent.h, destinationChild)

proc moveColumn*(self: QAbstractItemModel, sourceParent: QModelIndex, sourceColumn: cint, destinationParent: QModelIndex, destinationChild: cint): bool =

  fcQAbstractItemModel_moveColumn(self.h, sourceParent.h, sourceColumn, destinationParent.h, destinationChild)

proc fetchMore*(self: QAbstractItemModel, parent: QModelIndex): void =

  fcQAbstractItemModel_fetchMore(self.h, parent.h)

proc canFetchMore*(self: QAbstractItemModel, parent: QModelIndex): bool =

  fcQAbstractItemModel_canFetchMore(self.h, parent.h)

proc flags*(self: QAbstractItemModel, index: QModelIndex): gen_qnamespace.ItemFlag =

  gen_qnamespace.ItemFlag(fcQAbstractItemModel_flags(self.h, index.h))

proc sort*(self: QAbstractItemModel, column: cint, order: gen_qnamespace.SortOrder): void =

  fcQAbstractItemModel_sort(self.h, column, cint(order))

proc buddy*(self: QAbstractItemModel, index: QModelIndex): QModelIndex =

  QModelIndex(h: fcQAbstractItemModel_buddy(self.h, index.h))

proc match*(self: QAbstractItemModel, start: QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[QModelIndex] =

  var v_ma = fcQAbstractItemModel_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QModelIndex(h: v_outCast[i])
  vx_ret

proc span*(self: QAbstractItemModel, index: QModelIndex): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQAbstractItemModel_span(self.h, index.h))

proc roleNames*(self: QAbstractItemModel, ): Table[cint,seq[byte]] =

  var v_mm = fcQAbstractItemModel_roleNames(self.h)
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

proc checkIndex*(self: QAbstractItemModel, index: QModelIndex): bool =

  fcQAbstractItemModel_checkIndex(self.h, index.h)

proc dataChanged*(self: QAbstractItemModel, topLeft: QModelIndex, bottomRight: QModelIndex): void =

  fcQAbstractItemModel_dataChanged(self.h, topLeft.h, bottomRight.h)

proc miqt_exec_callback_QAbstractItemModel_dataChanged(slot: int, topLeft: pointer, bottomRight: pointer) {.exportc.} =
  type Cb = proc(topLeft: QModelIndex, bottomRight: QModelIndex)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QModelIndex(h: topLeft)

  let slotval2 = QModelIndex(h: bottomRight)


  nimfunc[](slotval1, slotval2)

proc ondataChanged*(self: QAbstractItemModel, slot: proc(topLeft: QModelIndex, bottomRight: QModelIndex)) =
  type Cb = proc(topLeft: QModelIndex, bottomRight: QModelIndex)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractItemModel_connect_dataChanged(self.h, cast[int](addr tmp[]))
proc headerDataChanged*(self: QAbstractItemModel, orientation: gen_qnamespace.Orientation, first: cint, last: cint): void =

  fcQAbstractItemModel_headerDataChanged(self.h, cint(orientation), first, last)

proc miqt_exec_callback_QAbstractItemModel_headerDataChanged(slot: int, orientation: cint, first: cint, last: cint) {.exportc.} =
  type Cb = proc(orientation: gen_qnamespace.Orientation, first: cint, last: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.Orientation(orientation)

  let slotval2 = first

  let slotval3 = last


  nimfunc[](slotval1, slotval2, slotval3)

proc onheaderDataChanged*(self: QAbstractItemModel, slot: proc(orientation: gen_qnamespace.Orientation, first: cint, last: cint)) =
  type Cb = proc(orientation: gen_qnamespace.Orientation, first: cint, last: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractItemModel_connect_headerDataChanged(self.h, cast[int](addr tmp[]))
proc layoutChanged*(self: QAbstractItemModel, ): void =

  fcQAbstractItemModel_layoutChanged(self.h)

proc miqt_exec_callback_QAbstractItemModel_layoutChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onlayoutChanged*(self: QAbstractItemModel, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractItemModel_connect_layoutChanged(self.h, cast[int](addr tmp[]))
proc layoutAboutToBeChanged*(self: QAbstractItemModel, ): void =

  fcQAbstractItemModel_layoutAboutToBeChanged(self.h)

proc miqt_exec_callback_QAbstractItemModel_layoutAboutToBeChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onlayoutAboutToBeChanged*(self: QAbstractItemModel, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractItemModel_connect_layoutAboutToBeChanged(self.h, cast[int](addr tmp[]))
proc submit*(self: QAbstractItemModel, ): bool =

  fcQAbstractItemModel_submit(self.h)

proc revert*(self: QAbstractItemModel, ): void =

  fcQAbstractItemModel_revert(self.h)

proc tr2*(_: type QAbstractItemModel, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractItemModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAbstractItemModel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractItemModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QAbstractItemModel, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractItemModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAbstractItemModel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractItemModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc hasIndex3*(self: QAbstractItemModel, row: cint, column: cint, parent: QModelIndex): bool =

  fcQAbstractItemModel_hasIndex3(self.h, row, column, parent.h)

proc insertRow2*(self: QAbstractItemModel, row: cint, parent: QModelIndex): bool =

  fcQAbstractItemModel_insertRow2(self.h, row, parent.h)

proc insertColumn2*(self: QAbstractItemModel, column: cint, parent: QModelIndex): bool =

  fcQAbstractItemModel_insertColumn2(self.h, column, parent.h)

proc removeRow2*(self: QAbstractItemModel, row: cint, parent: QModelIndex): bool =

  fcQAbstractItemModel_removeRow2(self.h, row, parent.h)

proc removeColumn2*(self: QAbstractItemModel, column: cint, parent: QModelIndex): bool =

  fcQAbstractItemModel_removeColumn2(self.h, column, parent.h)

proc checkIndex2*(self: QAbstractItemModel, index: QModelIndex, options: QAbstractItemModelCheckIndexOption): bool =

  fcQAbstractItemModel_checkIndex2(self.h, index.h, cint(options))

proc dataChanged3*(self: QAbstractItemModel, topLeft: QModelIndex, bottomRight: QModelIndex, roles: seq[cint]): void =

  var roles_CArray = newSeq[cint](len(roles))
  for i in 0..<len(roles):
    roles_CArray[i] = roles[i]

  fcQAbstractItemModel_dataChanged3(self.h, topLeft.h, bottomRight.h, struct_miqt_array(len: csize_t(len(roles)), data: if len(roles) == 0: nil else: addr(roles_CArray[0])))

proc miqt_exec_callback_QAbstractItemModel_dataChanged3(slot: int, topLeft: pointer, bottomRight: pointer, roles: struct_miqt_array) {.exportc.} =
  type Cb = proc(topLeft: QModelIndex, bottomRight: QModelIndex, roles: seq[cint])
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QModelIndex(h: topLeft)

  let slotval2 = QModelIndex(h: bottomRight)

  var vroles_ma = roles
  var vrolesx_ret = newSeq[cint](int(vroles_ma.len))
  let vroles_outCast = cast[ptr UncheckedArray[cint]](vroles_ma.data)
  for i in 0 ..< vroles_ma.len:
    vrolesx_ret[i] = vroles_outCast[i]
  let slotval3 = vrolesx_ret


  nimfunc[](slotval1, slotval2, slotval3)

proc ondataChanged3*(self: QAbstractItemModel, slot: proc(topLeft: QModelIndex, bottomRight: QModelIndex, roles: seq[cint])) =
  type Cb = proc(topLeft: QModelIndex, bottomRight: QModelIndex, roles: seq[cint])
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractItemModel_connect_dataChanged3(self.h, cast[int](addr tmp[]))
proc layoutChanged1*(self: QAbstractItemModel, parents: seq[QPersistentModelIndex]): void =

  var parents_CArray = newSeq[pointer](len(parents))
  for i in 0..<len(parents):
    parents_CArray[i] = parents[i].h

  fcQAbstractItemModel_layoutChanged1(self.h, struct_miqt_array(len: csize_t(len(parents)), data: if len(parents) == 0: nil else: addr(parents_CArray[0])))

proc miqt_exec_callback_QAbstractItemModel_layoutChanged1(slot: int, parents: struct_miqt_array) {.exportc.} =
  type Cb = proc(parents: seq[QPersistentModelIndex])
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  var vparents_ma = parents
  var vparentsx_ret = newSeq[QPersistentModelIndex](int(vparents_ma.len))
  let vparents_outCast = cast[ptr UncheckedArray[pointer]](vparents_ma.data)
  for i in 0 ..< vparents_ma.len:
    vparentsx_ret[i] = QPersistentModelIndex(h: vparents_outCast[i])
  let slotval1 = vparentsx_ret


  nimfunc[](slotval1)

proc onlayoutChanged1*(self: QAbstractItemModel, slot: proc(parents: seq[QPersistentModelIndex])) =
  type Cb = proc(parents: seq[QPersistentModelIndex])
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractItemModel_connect_layoutChanged1(self.h, cast[int](addr tmp[]))
proc layoutChanged2*(self: QAbstractItemModel, parents: seq[QPersistentModelIndex], hint: QAbstractItemModelLayoutChangeHint): void =

  var parents_CArray = newSeq[pointer](len(parents))
  for i in 0..<len(parents):
    parents_CArray[i] = parents[i].h

  fcQAbstractItemModel_layoutChanged2(self.h, struct_miqt_array(len: csize_t(len(parents)), data: if len(parents) == 0: nil else: addr(parents_CArray[0])), cint(hint))

proc miqt_exec_callback_QAbstractItemModel_layoutChanged2(slot: int, parents: struct_miqt_array, hint: cint) {.exportc.} =
  type Cb = proc(parents: seq[QPersistentModelIndex], hint: QAbstractItemModelLayoutChangeHint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  var vparents_ma = parents
  var vparentsx_ret = newSeq[QPersistentModelIndex](int(vparents_ma.len))
  let vparents_outCast = cast[ptr UncheckedArray[pointer]](vparents_ma.data)
  for i in 0 ..< vparents_ma.len:
    vparentsx_ret[i] = QPersistentModelIndex(h: vparents_outCast[i])
  let slotval1 = vparentsx_ret

  let slotval2 = QAbstractItemModelLayoutChangeHint(hint)


  nimfunc[](slotval1, slotval2)

proc onlayoutChanged2*(self: QAbstractItemModel, slot: proc(parents: seq[QPersistentModelIndex], hint: QAbstractItemModelLayoutChangeHint)) =
  type Cb = proc(parents: seq[QPersistentModelIndex], hint: QAbstractItemModelLayoutChangeHint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractItemModel_connect_layoutChanged2(self.h, cast[int](addr tmp[]))
proc layoutAboutToBeChanged1*(self: QAbstractItemModel, parents: seq[QPersistentModelIndex]): void =

  var parents_CArray = newSeq[pointer](len(parents))
  for i in 0..<len(parents):
    parents_CArray[i] = parents[i].h

  fcQAbstractItemModel_layoutAboutToBeChanged1(self.h, struct_miqt_array(len: csize_t(len(parents)), data: if len(parents) == 0: nil else: addr(parents_CArray[0])))

proc miqt_exec_callback_QAbstractItemModel_layoutAboutToBeChanged1(slot: int, parents: struct_miqt_array) {.exportc.} =
  type Cb = proc(parents: seq[QPersistentModelIndex])
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  var vparents_ma = parents
  var vparentsx_ret = newSeq[QPersistentModelIndex](int(vparents_ma.len))
  let vparents_outCast = cast[ptr UncheckedArray[pointer]](vparents_ma.data)
  for i in 0 ..< vparents_ma.len:
    vparentsx_ret[i] = QPersistentModelIndex(h: vparents_outCast[i])
  let slotval1 = vparentsx_ret


  nimfunc[](slotval1)

proc onlayoutAboutToBeChanged1*(self: QAbstractItemModel, slot: proc(parents: seq[QPersistentModelIndex])) =
  type Cb = proc(parents: seq[QPersistentModelIndex])
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractItemModel_connect_layoutAboutToBeChanged1(self.h, cast[int](addr tmp[]))
proc layoutAboutToBeChanged2*(self: QAbstractItemModel, parents: seq[QPersistentModelIndex], hint: QAbstractItemModelLayoutChangeHint): void =

  var parents_CArray = newSeq[pointer](len(parents))
  for i in 0..<len(parents):
    parents_CArray[i] = parents[i].h

  fcQAbstractItemModel_layoutAboutToBeChanged2(self.h, struct_miqt_array(len: csize_t(len(parents)), data: if len(parents) == 0: nil else: addr(parents_CArray[0])), cint(hint))

proc miqt_exec_callback_QAbstractItemModel_layoutAboutToBeChanged2(slot: int, parents: struct_miqt_array, hint: cint) {.exportc.} =
  type Cb = proc(parents: seq[QPersistentModelIndex], hint: QAbstractItemModelLayoutChangeHint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  var vparents_ma = parents
  var vparentsx_ret = newSeq[QPersistentModelIndex](int(vparents_ma.len))
  let vparents_outCast = cast[ptr UncheckedArray[pointer]](vparents_ma.data)
  for i in 0 ..< vparents_ma.len:
    vparentsx_ret[i] = QPersistentModelIndex(h: vparents_outCast[i])
  let slotval1 = vparentsx_ret

  let slotval2 = QAbstractItemModelLayoutChangeHint(hint)


  nimfunc[](slotval1, slotval2)

proc onlayoutAboutToBeChanged2*(self: QAbstractItemModel, slot: proc(parents: seq[QPersistentModelIndex], hint: QAbstractItemModelLayoutChangeHint)) =
  type Cb = proc(parents: seq[QPersistentModelIndex], hint: QAbstractItemModelLayoutChangeHint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractItemModel_connect_layoutAboutToBeChanged2(self.h, cast[int](addr tmp[]))
proc callVirtualBase_metaObject(self: QAbstractItemModel, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQAbstractItemModel_virtualbase_metaObject(self.h))

type QAbstractItemModelmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_metaObject(self: ptr cQAbstractItemModel, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractItemModel_metaObject ".} =
  type Cb = proc(super: QAbstractItemModelmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QAbstractItemModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QAbstractItemModel, param1: cstring): pointer =


  fQAbstractItemModel_virtualbase_metacast(self.h, param1)

type QAbstractItemModelmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_metacast(self: ptr cQAbstractItemModel, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAbstractItemModel_metacast ".} =
  type Cb = proc(super: QAbstractItemModelmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QAbstractItemModel(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QAbstractItemModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAbstractItemModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractItemModelmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_metacall(self: ptr cQAbstractItemModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractItemModel_metacall ".} =
  type Cb = proc(super: QAbstractItemModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAbstractItemModel(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QAbstractItemModelindexBase* = proc(row: cint, column: cint, parent: QModelIndex): QModelIndex
proc onindex*(self: QAbstractItemModel, slot: proc(row: cint, column: cint, parent: QModelIndex): QModelIndex) =
  # TODO check subclass
  type Cb = proc(row: cint, column: cint, parent: QModelIndex): QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_index(self: ptr cQAbstractItemModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemModel_index ".} =
  type Cb = proc(row: cint, column: cint, parent: QModelIndex): QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
type QAbstractItemModelparentBase* = proc(child: QModelIndex): QModelIndex
proc onparent*(self: QAbstractItemModel, slot: proc(child: QModelIndex): QModelIndex) =
  # TODO check subclass
  type Cb = proc(child: QModelIndex): QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_parent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_parent(self: ptr cQAbstractItemModel, slot: int, child: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemModel_parent ".} =
  type Cb = proc(child: QModelIndex): QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QModelIndex(h: child)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc callVirtualBase_sibling(self: QAbstractItemModel, row: cint, column: cint, idx: QModelIndex): QModelIndex =


  QModelIndex(h: fQAbstractItemModel_virtualbase_sibling(self.h, row, column, idx.h))

type QAbstractItemModelsiblingBase* = proc(row: cint, column: cint, idx: QModelIndex): QModelIndex
proc onsibling*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelsiblingBase, row: cint, column: cint, idx: QModelIndex): QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelsiblingBase, row: cint, column: cint, idx: QModelIndex): QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_sibling(self: ptr cQAbstractItemModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemModel_sibling ".} =
  type Cb = proc(super: QAbstractItemModelsiblingBase, row: cint, column: cint, idx: QModelIndex): QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, idx: QModelIndex): auto =
    callVirtualBase_sibling(QAbstractItemModel(h: self), row, column, idx)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = QModelIndex(h: idx)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
type QAbstractItemModelrowCountBase* = proc(parent: QModelIndex): cint
proc onrowCount*(self: QAbstractItemModel, slot: proc(parent: QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(parent: QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_rowCount(self: ptr cQAbstractItemModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QAbstractItemModel_rowCount ".} =
  type Cb = proc(parent: QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QAbstractItemModelcolumnCountBase* = proc(parent: QModelIndex): cint
proc oncolumnCount*(self: QAbstractItemModel, slot: proc(parent: QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(parent: QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_columnCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_columnCount(self: ptr cQAbstractItemModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QAbstractItemModel_columnCount ".} =
  type Cb = proc(parent: QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc callVirtualBase_hasChildren(self: QAbstractItemModel, parent: QModelIndex): bool =


  fQAbstractItemModel_virtualbase_hasChildren(self.h, parent.h)

type QAbstractItemModelhasChildrenBase* = proc(parent: QModelIndex): bool
proc onhasChildren*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelhasChildrenBase, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelhasChildrenBase, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_hasChildren(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_hasChildren(self: ptr cQAbstractItemModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_hasChildren ".} =
  type Cb = proc(super: QAbstractItemModelhasChildrenBase, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: QModelIndex): auto =
    callVirtualBase_hasChildren(QAbstractItemModel(h: self), parent)
  let slotval1 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
type QAbstractItemModeldataBase* = proc(index: QModelIndex, role: cint): gen_qvariant.QVariant
proc ondata*(self: QAbstractItemModel, slot: proc(index: QModelIndex, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(index: QModelIndex, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_data(self: ptr cQAbstractItemModel, slot: int, index: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QAbstractItemModel_data ".} =
  type Cb = proc(index: QModelIndex, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QModelIndex(h: index)

  let slotval2 = role


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_setData(self: QAbstractItemModel, index: QModelIndex, value: gen_qvariant.QVariant, role: cint): bool =


  fQAbstractItemModel_virtualbase_setData(self.h, index.h, value.h, role)

type QAbstractItemModelsetDataBase* = proc(index: QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
proc onsetData*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelsetDataBase, index: QModelIndex, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelsetDataBase, index: QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_setData(self: ptr cQAbstractItemModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_setData ".} =
  type Cb = proc(super: QAbstractItemModelsetDataBase, index: QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: QModelIndex, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setData(QAbstractItemModel(h: self), index, value, role)
  let slotval1 = QModelIndex(h: index)

  let slotval2 = gen_qvariant.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_headerData(self: QAbstractItemModel, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQAbstractItemModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QAbstractItemModelheaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
proc onheaderData*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_headerData(self: ptr cQAbstractItemModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QAbstractItemModel_headerData ".} =
  type Cb = proc(super: QAbstractItemModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, role: cint): auto =
    callVirtualBase_headerData(QAbstractItemModel(h: self), section, orientation, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_setHeaderData(self: QAbstractItemModel, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool =


  fQAbstractItemModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QAbstractItemModelsetHeaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
proc onsetHeaderData*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_setHeaderData(self: ptr cQAbstractItemModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_setHeaderData ".} =
  type Cb = proc(super: QAbstractItemModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setHeaderData(QAbstractItemModel(h: self), section, orientation, value, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = gen_qvariant.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_itemData(self: QAbstractItemModel, index: QModelIndex): Table[cint,gen_qvariant.QVariant] =


  var v_mm = fQAbstractItemModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QAbstractItemModelitemDataBase* = proc(index: QModelIndex): Table[cint,gen_qvariant.QVariant]
proc onitemData*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelitemDataBase, index: QModelIndex): Table[cint,gen_qvariant.QVariant]) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelitemDataBase, index: QModelIndex): Table[cint,gen_qvariant.QVariant]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_itemData(self: ptr cQAbstractItemModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QAbstractItemModel_itemData ".} =
  type Cb = proc(super: QAbstractItemModelitemDataBase, index: QModelIndex): Table[cint,gen_qvariant.QVariant]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: QModelIndex): auto =
    callVirtualBase_itemData(QAbstractItemModel(h: self), index)
  let slotval1 = QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[pointer](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = virtualReturn_v.h
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc callVirtualBase_setItemData(self: QAbstractItemModel, index: QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool =

  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1


  fQAbstractItemModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QAbstractItemModelsetItemDataBase* = proc(index: QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
proc onsetItemData*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelsetItemDataBase, index: QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelsetItemDataBase, index: QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_setItemData(self: ptr cQAbstractItemModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_setItemData ".} =
  type Cb = proc(super: QAbstractItemModelsetItemDataBase, index: QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): auto =
    callVirtualBase_setItemData(QAbstractItemModel(h: self), index, roles)
  let slotval1 = QModelIndex(h: index)

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
proc callVirtualBase_mimeTypes(self: QAbstractItemModel, ): seq[string] =


  var v_ma = fQAbstractItemModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QAbstractItemModelmimeTypesBase* = proc(): seq[string]
proc onmimeTypes*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelmimeTypesBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelmimeTypesBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_mimeTypes(self: ptr cQAbstractItemModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractItemModel_mimeTypes ".} =
  type Cb = proc(super: QAbstractItemModelmimeTypesBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mimeTypes(QAbstractItemModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_mimeData(self: QAbstractItemModel, indexes: seq[QModelIndex]): gen_qmimedata.QMimeData =

  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h


  gen_qmimedata.QMimeData(h: fQAbstractItemModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QAbstractItemModelmimeDataBase* = proc(indexes: seq[QModelIndex]): gen_qmimedata.QMimeData
proc onmimeData*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelmimeDataBase, indexes: seq[QModelIndex]): gen_qmimedata.QMimeData) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelmimeDataBase, indexes: seq[QModelIndex]): gen_qmimedata.QMimeData
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_mimeData(self: ptr cQAbstractItemModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QAbstractItemModel_mimeData ".} =
  type Cb = proc(super: QAbstractItemModelmimeDataBase, indexes: seq[QModelIndex]): gen_qmimedata.QMimeData
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(indexes: seq[QModelIndex]): auto =
    callVirtualBase_mimeData(QAbstractItemModel(h: self), indexes)
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_canDropMimeData(self: QAbstractItemModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool =


  fQAbstractItemModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QAbstractItemModelcanDropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool
proc oncanDropMimeData*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_canDropMimeData(self: ptr cQAbstractItemModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_canDropMimeData ".} =
  type Cb = proc(super: QAbstractItemModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): auto =
    callVirtualBase_canDropMimeData(QAbstractItemModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_dropMimeData(self: QAbstractItemModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool =


  fQAbstractItemModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QAbstractItemModeldropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool
proc ondropMimeData*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_dropMimeData(self: ptr cQAbstractItemModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_dropMimeData ".} =
  type Cb = proc(super: QAbstractItemModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): auto =
    callVirtualBase_dropMimeData(QAbstractItemModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_supportedDropActions(self: QAbstractItemModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQAbstractItemModel_virtualbase_supportedDropActions(self.h))

type QAbstractItemModelsupportedDropActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDropActions*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelsupportedDropActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_supportedDropActions(self: ptr cQAbstractItemModel, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractItemModel_supportedDropActions ".} =
  type Cb = proc(super: QAbstractItemModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDropActions(QAbstractItemModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_supportedDragActions(self: QAbstractItemModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQAbstractItemModel_virtualbase_supportedDragActions(self.h))

type QAbstractItemModelsupportedDragActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDragActions*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelsupportedDragActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_supportedDragActions(self: ptr cQAbstractItemModel, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractItemModel_supportedDragActions ".} =
  type Cb = proc(super: QAbstractItemModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDragActions(QAbstractItemModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_insertRows(self: QAbstractItemModel, row: cint, count: cint, parent: QModelIndex): bool =


  fQAbstractItemModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QAbstractItemModelinsertRowsBase* = proc(row: cint, count: cint, parent: QModelIndex): bool
proc oninsertRows*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelinsertRowsBase, row: cint, count: cint, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelinsertRowsBase, row: cint, count: cint, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_insertRows(self: ptr cQAbstractItemModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_insertRows ".} =
  type Cb = proc(super: QAbstractItemModelinsertRowsBase, row: cint, count: cint, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: QModelIndex): auto =
    callVirtualBase_insertRows(QAbstractItemModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_insertColumns(self: QAbstractItemModel, column: cint, count: cint, parent: QModelIndex): bool =


  fQAbstractItemModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QAbstractItemModelinsertColumnsBase* = proc(column: cint, count: cint, parent: QModelIndex): bool
proc oninsertColumns*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelinsertColumnsBase, column: cint, count: cint, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelinsertColumnsBase, column: cint, count: cint, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_insertColumns(self: ptr cQAbstractItemModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_insertColumns ".} =
  type Cb = proc(super: QAbstractItemModelinsertColumnsBase, column: cint, count: cint, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: QModelIndex): auto =
    callVirtualBase_insertColumns(QAbstractItemModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeRows(self: QAbstractItemModel, row: cint, count: cint, parent: QModelIndex): bool =


  fQAbstractItemModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QAbstractItemModelremoveRowsBase* = proc(row: cint, count: cint, parent: QModelIndex): bool
proc onremoveRows*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelremoveRowsBase, row: cint, count: cint, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelremoveRowsBase, row: cint, count: cint, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_removeRows(self: ptr cQAbstractItemModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_removeRows ".} =
  type Cb = proc(super: QAbstractItemModelremoveRowsBase, row: cint, count: cint, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: QModelIndex): auto =
    callVirtualBase_removeRows(QAbstractItemModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeColumns(self: QAbstractItemModel, column: cint, count: cint, parent: QModelIndex): bool =


  fQAbstractItemModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QAbstractItemModelremoveColumnsBase* = proc(column: cint, count: cint, parent: QModelIndex): bool
proc onremoveColumns*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelremoveColumnsBase, column: cint, count: cint, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelremoveColumnsBase, column: cint, count: cint, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_removeColumns(self: ptr cQAbstractItemModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_removeColumns ".} =
  type Cb = proc(super: QAbstractItemModelremoveColumnsBase, column: cint, count: cint, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: QModelIndex): auto =
    callVirtualBase_removeColumns(QAbstractItemModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_moveRows(self: QAbstractItemModel, sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool =


  fQAbstractItemModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QAbstractItemModelmoveRowsBase* = proc(sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelmoveRowsBase, sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelmoveRowsBase, sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_moveRows(self: ptr cQAbstractItemModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_moveRows ".} =
  type Cb = proc(super: QAbstractItemModelmoveRowsBase, sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveRows(QAbstractItemModel(h: self), sourceParent, sourceRow, count, destinationParent, destinationChild)
  let slotval1 = QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_moveColumns(self: QAbstractItemModel, sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool =


  fQAbstractItemModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QAbstractItemModelmoveColumnsBase* = proc(sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelmoveColumnsBase, sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelmoveColumnsBase, sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_moveColumns(self: ptr cQAbstractItemModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_moveColumns ".} =
  type Cb = proc(super: QAbstractItemModelmoveColumnsBase, sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveColumns(QAbstractItemModel(h: self), sourceParent, sourceColumn, count, destinationParent, destinationChild)
  let slotval1 = QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_fetchMore(self: QAbstractItemModel, parent: QModelIndex): void =


  fQAbstractItemModel_virtualbase_fetchMore(self.h, parent.h)

type QAbstractItemModelfetchMoreBase* = proc(parent: QModelIndex): void
proc onfetchMore*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelfetchMoreBase, parent: QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelfetchMoreBase, parent: QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_fetchMore(self: ptr cQAbstractItemModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemModel_fetchMore ".} =
  type Cb = proc(super: QAbstractItemModelfetchMoreBase, parent: QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: QModelIndex): auto =
    callVirtualBase_fetchMore(QAbstractItemModel(h: self), parent)
  let slotval1 = QModelIndex(h: parent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_canFetchMore(self: QAbstractItemModel, parent: QModelIndex): bool =


  fQAbstractItemModel_virtualbase_canFetchMore(self.h, parent.h)

type QAbstractItemModelcanFetchMoreBase* = proc(parent: QModelIndex): bool
proc oncanFetchMore*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelcanFetchMoreBase, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelcanFetchMoreBase, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_canFetchMore(self: ptr cQAbstractItemModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_canFetchMore ".} =
  type Cb = proc(super: QAbstractItemModelcanFetchMoreBase, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: QModelIndex): auto =
    callVirtualBase_canFetchMore(QAbstractItemModel(h: self), parent)
  let slotval1 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_flags(self: QAbstractItemModel, index: QModelIndex): gen_qnamespace.ItemFlag =


  gen_qnamespace.ItemFlag(fQAbstractItemModel_virtualbase_flags(self.h, index.h))

type QAbstractItemModelflagsBase* = proc(index: QModelIndex): gen_qnamespace.ItemFlag
proc onflags*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelflagsBase, index: QModelIndex): gen_qnamespace.ItemFlag) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelflagsBase, index: QModelIndex): gen_qnamespace.ItemFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_flags(self: ptr cQAbstractItemModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QAbstractItemModel_flags ".} =
  type Cb = proc(super: QAbstractItemModelflagsBase, index: QModelIndex): gen_qnamespace.ItemFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: QModelIndex): auto =
    callVirtualBase_flags(QAbstractItemModel(h: self), index)
  let slotval1 = QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  cint(virtualReturn)
proc callVirtualBase_sort(self: QAbstractItemModel, column: cint, order: gen_qnamespace.SortOrder): void =


  fQAbstractItemModel_virtualbase_sort(self.h, column, cint(order))

type QAbstractItemModelsortBase* = proc(column: cint, order: gen_qnamespace.SortOrder): void
proc onsort*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_sort(self: ptr cQAbstractItemModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QAbstractItemModel_sort ".} =
  type Cb = proc(super: QAbstractItemModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, order: gen_qnamespace.SortOrder): auto =
    callVirtualBase_sort(QAbstractItemModel(h: self), column, order)
  let slotval1 = column

  let slotval2 = gen_qnamespace.SortOrder(order)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_buddy(self: QAbstractItemModel, index: QModelIndex): QModelIndex =


  QModelIndex(h: fQAbstractItemModel_virtualbase_buddy(self.h, index.h))

type QAbstractItemModelbuddyBase* = proc(index: QModelIndex): QModelIndex
proc onbuddy*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelbuddyBase, index: QModelIndex): QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelbuddyBase, index: QModelIndex): QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_buddy(self: ptr cQAbstractItemModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemModel_buddy ".} =
  type Cb = proc(super: QAbstractItemModelbuddyBase, index: QModelIndex): QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: QModelIndex): auto =
    callVirtualBase_buddy(QAbstractItemModel(h: self), index)
  let slotval1 = QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_match(self: QAbstractItemModel, start: QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[QModelIndex] =


  var v_ma = fQAbstractItemModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QModelIndex(h: v_outCast[i])
  vx_ret

type QAbstractItemModelmatchBase* = proc(start: QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[QModelIndex]
proc onmatch*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelmatchBase, start: QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelmatchBase, start: QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_match(self: ptr cQAbstractItemModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractItemModel_match ".} =
  type Cb = proc(super: QAbstractItemModelmatchBase, start: QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(start: QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): auto =
    callVirtualBase_match(QAbstractItemModel(h: self), start, role, value, hits, flags)
  let slotval1 = QModelIndex(h: start)

  let slotval2 = role

  let slotval3 = gen_qvariant.QVariant(h: value)

  let slotval4 = hits

  let slotval5 = gen_qnamespace.MatchFlag(flags)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_span(self: QAbstractItemModel, index: QModelIndex): gen_qsize.QSize =


  gen_qsize.QSize(h: fQAbstractItemModel_virtualbase_span(self.h, index.h))

type QAbstractItemModelspanBase* = proc(index: QModelIndex): gen_qsize.QSize
proc onspan*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelspanBase, index: QModelIndex): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelspanBase, index: QModelIndex): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_span(self: ptr cQAbstractItemModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemModel_span ".} =
  type Cb = proc(super: QAbstractItemModelspanBase, index: QModelIndex): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: QModelIndex): auto =
    callVirtualBase_span(QAbstractItemModel(h: self), index)
  let slotval1 = QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_roleNames(self: QAbstractItemModel, ): Table[cint,seq[byte]] =


  var v_mm = fQAbstractItemModel_virtualbase_roleNames(self.h)
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

type QAbstractItemModelroleNamesBase* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelroleNamesBase): Table[cint,seq[byte]]) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelroleNamesBase): Table[cint,seq[byte]]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_roleNames(self: ptr cQAbstractItemModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QAbstractItemModel_roleNames ".} =
  type Cb = proc(super: QAbstractItemModelroleNamesBase): Table[cint,seq[byte]]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_roleNames(QAbstractItemModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc callVirtualBase_submit(self: QAbstractItemModel, ): bool =


  fQAbstractItemModel_virtualbase_submit(self.h)

type QAbstractItemModelsubmitBase* = proc(): bool
proc onsubmit*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelsubmitBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelsubmitBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_submit(self: ptr cQAbstractItemModel, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_submit ".} =
  type Cb = proc(super: QAbstractItemModelsubmitBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_submit(QAbstractItemModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_revert(self: QAbstractItemModel, ): void =


  fQAbstractItemModel_virtualbase_revert(self.h)

type QAbstractItemModelrevertBase* = proc(): void
proc onrevert*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelrevertBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelrevertBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_revert(self: ptr cQAbstractItemModel, slot: int): void {.exportc: "miqt_exec_callback_QAbstractItemModel_revert ".} =
  type Cb = proc(super: QAbstractItemModelrevertBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_revert(QAbstractItemModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_event(self: QAbstractItemModel, event: gen_qcoreevent.QEvent): bool =


  fQAbstractItemModel_virtualbase_event(self.h, event.h)

type QAbstractItemModeleventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModeleventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModeleventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_event(self: ptr cQAbstractItemModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_event ".} =
  type Cb = proc(super: QAbstractItemModeleventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAbstractItemModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAbstractItemModel, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAbstractItemModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractItemModeleventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_eventFilter(self: ptr cQAbstractItemModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemModel_eventFilter ".} =
  type Cb = proc(super: QAbstractItemModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAbstractItemModel(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAbstractItemModel, event: gen_qcoreevent.QTimerEvent): void =


  fQAbstractItemModel_virtualbase_timerEvent(self.h, event.h)

type QAbstractItemModeltimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_timerEvent(self: ptr cQAbstractItemModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemModel_timerEvent ".} =
  type Cb = proc(super: QAbstractItemModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAbstractItemModel(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAbstractItemModel, event: gen_qcoreevent.QChildEvent): void =


  fQAbstractItemModel_virtualbase_childEvent(self.h, event.h)

type QAbstractItemModelchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_childEvent(self: ptr cQAbstractItemModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemModel_childEvent ".} =
  type Cb = proc(super: QAbstractItemModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAbstractItemModel(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAbstractItemModel, event: gen_qcoreevent.QEvent): void =


  fQAbstractItemModel_virtualbase_customEvent(self.h, event.h)

type QAbstractItemModelcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_customEvent(self: ptr cQAbstractItemModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemModel_customEvent ".} =
  type Cb = proc(super: QAbstractItemModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAbstractItemModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAbstractItemModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractItemModel_virtualbase_connectNotify(self.h, signal.h)

type QAbstractItemModelconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_connectNotify(self: ptr cQAbstractItemModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemModel_connectNotify ".} =
  type Cb = proc(super: QAbstractItemModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAbstractItemModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAbstractItemModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractItemModel_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractItemModeldisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAbstractItemModel, slot: proc(super: QAbstractItemModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemModel_disconnectNotify(self: ptr cQAbstractItemModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemModel_disconnectNotify ".} =
  type Cb = proc(super: QAbstractItemModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAbstractItemModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAbstractItemModel): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAbstractItemModel_staticMetaObject())
proc delete*(self: QAbstractItemModel) =
  fcQAbstractItemModel_delete(self.h)

func init*(T: type QAbstractTableModel, h: ptr cQAbstractTableModel): QAbstractTableModel =
  T(h: h)
proc create*(T: type QAbstractTableModel, ): QAbstractTableModel =

  QAbstractTableModel.init(fcQAbstractTableModel_new())
proc create*(T: type QAbstractTableModel, parent: gen_qobject.QObject): QAbstractTableModel =

  QAbstractTableModel.init(fcQAbstractTableModel_new2(parent.h))
proc metaObject*(self: QAbstractTableModel, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAbstractTableModel_metaObject(self.h))

proc metacast*(self: QAbstractTableModel, param1: cstring): pointer =

  fcQAbstractTableModel_metacast(self.h, param1)

proc metacall*(self: QAbstractTableModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAbstractTableModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAbstractTableModel, s: cstring): string =

  let v_ms = fcQAbstractTableModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QAbstractTableModel, s: cstring): string =

  let v_ms = fcQAbstractTableModel_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc index*(self: QAbstractTableModel, row: cint, column: cint, parent: QModelIndex): QModelIndex =

  QModelIndex(h: fcQAbstractTableModel_index(self.h, row, column, parent.h))

proc sibling*(self: QAbstractTableModel, row: cint, column: cint, idx: QModelIndex): QModelIndex =

  QModelIndex(h: fcQAbstractTableModel_sibling(self.h, row, column, idx.h))

proc dropMimeData*(self: QAbstractTableModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool =

  fcQAbstractTableModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc flags*(self: QAbstractTableModel, index: QModelIndex): gen_qnamespace.ItemFlag =

  gen_qnamespace.ItemFlag(fcQAbstractTableModel_flags(self.h, index.h))

proc tr2*(_: type QAbstractTableModel, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractTableModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAbstractTableModel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractTableModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QAbstractTableModel, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractTableModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAbstractTableModel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractTableModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QAbstractTableModel, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQAbstractTableModel_virtualbase_metaObject(self.h))

type QAbstractTableModelmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_metaObject(self: ptr cQAbstractTableModel, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractTableModel_metaObject ".} =
  type Cb = proc(super: QAbstractTableModelmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QAbstractTableModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QAbstractTableModel, param1: cstring): pointer =


  fQAbstractTableModel_virtualbase_metacast(self.h, param1)

type QAbstractTableModelmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_metacast(self: ptr cQAbstractTableModel, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAbstractTableModel_metacast ".} =
  type Cb = proc(super: QAbstractTableModelmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QAbstractTableModel(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QAbstractTableModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAbstractTableModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractTableModelmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_metacall(self: ptr cQAbstractTableModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractTableModel_metacall ".} =
  type Cb = proc(super: QAbstractTableModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAbstractTableModel(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_index(self: QAbstractTableModel, row: cint, column: cint, parent: QModelIndex): QModelIndex =


  QModelIndex(h: fQAbstractTableModel_virtualbase_index(self.h, row, column, parent.h))

type QAbstractTableModelindexBase* = proc(row: cint, column: cint, parent: QModelIndex): QModelIndex
proc onindex*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelindexBase, row: cint, column: cint, parent: QModelIndex): QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelindexBase, row: cint, column: cint, parent: QModelIndex): QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_index(self: ptr cQAbstractTableModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractTableModel_index ".} =
  type Cb = proc(super: QAbstractTableModelindexBase, row: cint, column: cint, parent: QModelIndex): QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, parent: QModelIndex): auto =
    callVirtualBase_index(QAbstractTableModel(h: self), row, column, parent)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_sibling(self: QAbstractTableModel, row: cint, column: cint, idx: QModelIndex): QModelIndex =


  QModelIndex(h: fQAbstractTableModel_virtualbase_sibling(self.h, row, column, idx.h))

type QAbstractTableModelsiblingBase* = proc(row: cint, column: cint, idx: QModelIndex): QModelIndex
proc onsibling*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelsiblingBase, row: cint, column: cint, idx: QModelIndex): QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelsiblingBase, row: cint, column: cint, idx: QModelIndex): QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_sibling(self: ptr cQAbstractTableModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractTableModel_sibling ".} =
  type Cb = proc(super: QAbstractTableModelsiblingBase, row: cint, column: cint, idx: QModelIndex): QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, idx: QModelIndex): auto =
    callVirtualBase_sibling(QAbstractTableModel(h: self), row, column, idx)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = QModelIndex(h: idx)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_dropMimeData(self: QAbstractTableModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool =


  fQAbstractTableModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QAbstractTableModeldropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool
proc ondropMimeData*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_dropMimeData(self: ptr cQAbstractTableModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_dropMimeData ".} =
  type Cb = proc(super: QAbstractTableModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): auto =
    callVirtualBase_dropMimeData(QAbstractTableModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_flags(self: QAbstractTableModel, index: QModelIndex): gen_qnamespace.ItemFlag =


  gen_qnamespace.ItemFlag(fQAbstractTableModel_virtualbase_flags(self.h, index.h))

type QAbstractTableModelflagsBase* = proc(index: QModelIndex): gen_qnamespace.ItemFlag
proc onflags*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelflagsBase, index: QModelIndex): gen_qnamespace.ItemFlag) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelflagsBase, index: QModelIndex): gen_qnamespace.ItemFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_flags(self: ptr cQAbstractTableModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QAbstractTableModel_flags ".} =
  type Cb = proc(super: QAbstractTableModelflagsBase, index: QModelIndex): gen_qnamespace.ItemFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: QModelIndex): auto =
    callVirtualBase_flags(QAbstractTableModel(h: self), index)
  let slotval1 = QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  cint(virtualReturn)
type QAbstractTableModelrowCountBase* = proc(parent: QModelIndex): cint
proc onrowCount*(self: QAbstractTableModel, slot: proc(parent: QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(parent: QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_rowCount(self: ptr cQAbstractTableModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QAbstractTableModel_rowCount ".} =
  type Cb = proc(parent: QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QAbstractTableModelcolumnCountBase* = proc(parent: QModelIndex): cint
proc oncolumnCount*(self: QAbstractTableModel, slot: proc(parent: QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(parent: QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_columnCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_columnCount(self: ptr cQAbstractTableModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QAbstractTableModel_columnCount ".} =
  type Cb = proc(parent: QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QAbstractTableModeldataBase* = proc(index: QModelIndex, role: cint): gen_qvariant.QVariant
proc ondata*(self: QAbstractTableModel, slot: proc(index: QModelIndex, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(index: QModelIndex, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_data(self: ptr cQAbstractTableModel, slot: int, index: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QAbstractTableModel_data ".} =
  type Cb = proc(index: QModelIndex, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QModelIndex(h: index)

  let slotval2 = role


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_setData(self: QAbstractTableModel, index: QModelIndex, value: gen_qvariant.QVariant, role: cint): bool =


  fQAbstractTableModel_virtualbase_setData(self.h, index.h, value.h, role)

type QAbstractTableModelsetDataBase* = proc(index: QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
proc onsetData*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelsetDataBase, index: QModelIndex, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelsetDataBase, index: QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_setData(self: ptr cQAbstractTableModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_setData ".} =
  type Cb = proc(super: QAbstractTableModelsetDataBase, index: QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: QModelIndex, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setData(QAbstractTableModel(h: self), index, value, role)
  let slotval1 = QModelIndex(h: index)

  let slotval2 = gen_qvariant.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_headerData(self: QAbstractTableModel, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQAbstractTableModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QAbstractTableModelheaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
proc onheaderData*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_headerData(self: ptr cQAbstractTableModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QAbstractTableModel_headerData ".} =
  type Cb = proc(super: QAbstractTableModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, role: cint): auto =
    callVirtualBase_headerData(QAbstractTableModel(h: self), section, orientation, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_setHeaderData(self: QAbstractTableModel, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool =


  fQAbstractTableModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QAbstractTableModelsetHeaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
proc onsetHeaderData*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_setHeaderData(self: ptr cQAbstractTableModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_setHeaderData ".} =
  type Cb = proc(super: QAbstractTableModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setHeaderData(QAbstractTableModel(h: self), section, orientation, value, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = gen_qvariant.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_itemData(self: QAbstractTableModel, index: QModelIndex): Table[cint,gen_qvariant.QVariant] =


  var v_mm = fQAbstractTableModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QAbstractTableModelitemDataBase* = proc(index: QModelIndex): Table[cint,gen_qvariant.QVariant]
proc onitemData*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelitemDataBase, index: QModelIndex): Table[cint,gen_qvariant.QVariant]) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelitemDataBase, index: QModelIndex): Table[cint,gen_qvariant.QVariant]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_itemData(self: ptr cQAbstractTableModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QAbstractTableModel_itemData ".} =
  type Cb = proc(super: QAbstractTableModelitemDataBase, index: QModelIndex): Table[cint,gen_qvariant.QVariant]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: QModelIndex): auto =
    callVirtualBase_itemData(QAbstractTableModel(h: self), index)
  let slotval1 = QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[pointer](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = virtualReturn_v.h
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc callVirtualBase_setItemData(self: QAbstractTableModel, index: QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool =

  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1


  fQAbstractTableModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QAbstractTableModelsetItemDataBase* = proc(index: QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
proc onsetItemData*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelsetItemDataBase, index: QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelsetItemDataBase, index: QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_setItemData(self: ptr cQAbstractTableModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_setItemData ".} =
  type Cb = proc(super: QAbstractTableModelsetItemDataBase, index: QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): auto =
    callVirtualBase_setItemData(QAbstractTableModel(h: self), index, roles)
  let slotval1 = QModelIndex(h: index)

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
proc callVirtualBase_mimeTypes(self: QAbstractTableModel, ): seq[string] =


  var v_ma = fQAbstractTableModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QAbstractTableModelmimeTypesBase* = proc(): seq[string]
proc onmimeTypes*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelmimeTypesBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelmimeTypesBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_mimeTypes(self: ptr cQAbstractTableModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractTableModel_mimeTypes ".} =
  type Cb = proc(super: QAbstractTableModelmimeTypesBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mimeTypes(QAbstractTableModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_mimeData(self: QAbstractTableModel, indexes: seq[QModelIndex]): gen_qmimedata.QMimeData =

  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h


  gen_qmimedata.QMimeData(h: fQAbstractTableModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QAbstractTableModelmimeDataBase* = proc(indexes: seq[QModelIndex]): gen_qmimedata.QMimeData
proc onmimeData*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelmimeDataBase, indexes: seq[QModelIndex]): gen_qmimedata.QMimeData) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelmimeDataBase, indexes: seq[QModelIndex]): gen_qmimedata.QMimeData
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_mimeData(self: ptr cQAbstractTableModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QAbstractTableModel_mimeData ".} =
  type Cb = proc(super: QAbstractTableModelmimeDataBase, indexes: seq[QModelIndex]): gen_qmimedata.QMimeData
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(indexes: seq[QModelIndex]): auto =
    callVirtualBase_mimeData(QAbstractTableModel(h: self), indexes)
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_canDropMimeData(self: QAbstractTableModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool =


  fQAbstractTableModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QAbstractTableModelcanDropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool
proc oncanDropMimeData*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_canDropMimeData(self: ptr cQAbstractTableModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_canDropMimeData ".} =
  type Cb = proc(super: QAbstractTableModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): auto =
    callVirtualBase_canDropMimeData(QAbstractTableModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_supportedDropActions(self: QAbstractTableModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQAbstractTableModel_virtualbase_supportedDropActions(self.h))

type QAbstractTableModelsupportedDropActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDropActions*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelsupportedDropActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_supportedDropActions(self: ptr cQAbstractTableModel, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractTableModel_supportedDropActions ".} =
  type Cb = proc(super: QAbstractTableModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDropActions(QAbstractTableModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_supportedDragActions(self: QAbstractTableModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQAbstractTableModel_virtualbase_supportedDragActions(self.h))

type QAbstractTableModelsupportedDragActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDragActions*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelsupportedDragActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_supportedDragActions(self: ptr cQAbstractTableModel, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractTableModel_supportedDragActions ".} =
  type Cb = proc(super: QAbstractTableModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDragActions(QAbstractTableModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_insertRows(self: QAbstractTableModel, row: cint, count: cint, parent: QModelIndex): bool =


  fQAbstractTableModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QAbstractTableModelinsertRowsBase* = proc(row: cint, count: cint, parent: QModelIndex): bool
proc oninsertRows*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelinsertRowsBase, row: cint, count: cint, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelinsertRowsBase, row: cint, count: cint, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_insertRows(self: ptr cQAbstractTableModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_insertRows ".} =
  type Cb = proc(super: QAbstractTableModelinsertRowsBase, row: cint, count: cint, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: QModelIndex): auto =
    callVirtualBase_insertRows(QAbstractTableModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_insertColumns(self: QAbstractTableModel, column: cint, count: cint, parent: QModelIndex): bool =


  fQAbstractTableModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QAbstractTableModelinsertColumnsBase* = proc(column: cint, count: cint, parent: QModelIndex): bool
proc oninsertColumns*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelinsertColumnsBase, column: cint, count: cint, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelinsertColumnsBase, column: cint, count: cint, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_insertColumns(self: ptr cQAbstractTableModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_insertColumns ".} =
  type Cb = proc(super: QAbstractTableModelinsertColumnsBase, column: cint, count: cint, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: QModelIndex): auto =
    callVirtualBase_insertColumns(QAbstractTableModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeRows(self: QAbstractTableModel, row: cint, count: cint, parent: QModelIndex): bool =


  fQAbstractTableModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QAbstractTableModelremoveRowsBase* = proc(row: cint, count: cint, parent: QModelIndex): bool
proc onremoveRows*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelremoveRowsBase, row: cint, count: cint, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelremoveRowsBase, row: cint, count: cint, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_removeRows(self: ptr cQAbstractTableModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_removeRows ".} =
  type Cb = proc(super: QAbstractTableModelremoveRowsBase, row: cint, count: cint, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: QModelIndex): auto =
    callVirtualBase_removeRows(QAbstractTableModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeColumns(self: QAbstractTableModel, column: cint, count: cint, parent: QModelIndex): bool =


  fQAbstractTableModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QAbstractTableModelremoveColumnsBase* = proc(column: cint, count: cint, parent: QModelIndex): bool
proc onremoveColumns*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelremoveColumnsBase, column: cint, count: cint, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelremoveColumnsBase, column: cint, count: cint, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_removeColumns(self: ptr cQAbstractTableModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_removeColumns ".} =
  type Cb = proc(super: QAbstractTableModelremoveColumnsBase, column: cint, count: cint, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: QModelIndex): auto =
    callVirtualBase_removeColumns(QAbstractTableModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_moveRows(self: QAbstractTableModel, sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool =


  fQAbstractTableModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QAbstractTableModelmoveRowsBase* = proc(sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelmoveRowsBase, sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelmoveRowsBase, sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_moveRows(self: ptr cQAbstractTableModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_moveRows ".} =
  type Cb = proc(super: QAbstractTableModelmoveRowsBase, sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveRows(QAbstractTableModel(h: self), sourceParent, sourceRow, count, destinationParent, destinationChild)
  let slotval1 = QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_moveColumns(self: QAbstractTableModel, sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool =


  fQAbstractTableModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QAbstractTableModelmoveColumnsBase* = proc(sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelmoveColumnsBase, sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelmoveColumnsBase, sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_moveColumns(self: ptr cQAbstractTableModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_moveColumns ".} =
  type Cb = proc(super: QAbstractTableModelmoveColumnsBase, sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveColumns(QAbstractTableModel(h: self), sourceParent, sourceColumn, count, destinationParent, destinationChild)
  let slotval1 = QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_fetchMore(self: QAbstractTableModel, parent: QModelIndex): void =


  fQAbstractTableModel_virtualbase_fetchMore(self.h, parent.h)

type QAbstractTableModelfetchMoreBase* = proc(parent: QModelIndex): void
proc onfetchMore*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelfetchMoreBase, parent: QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelfetchMoreBase, parent: QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_fetchMore(self: ptr cQAbstractTableModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QAbstractTableModel_fetchMore ".} =
  type Cb = proc(super: QAbstractTableModelfetchMoreBase, parent: QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: QModelIndex): auto =
    callVirtualBase_fetchMore(QAbstractTableModel(h: self), parent)
  let slotval1 = QModelIndex(h: parent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_canFetchMore(self: QAbstractTableModel, parent: QModelIndex): bool =


  fQAbstractTableModel_virtualbase_canFetchMore(self.h, parent.h)

type QAbstractTableModelcanFetchMoreBase* = proc(parent: QModelIndex): bool
proc oncanFetchMore*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelcanFetchMoreBase, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelcanFetchMoreBase, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_canFetchMore(self: ptr cQAbstractTableModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_canFetchMore ".} =
  type Cb = proc(super: QAbstractTableModelcanFetchMoreBase, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: QModelIndex): auto =
    callVirtualBase_canFetchMore(QAbstractTableModel(h: self), parent)
  let slotval1 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_sort(self: QAbstractTableModel, column: cint, order: gen_qnamespace.SortOrder): void =


  fQAbstractTableModel_virtualbase_sort(self.h, column, cint(order))

type QAbstractTableModelsortBase* = proc(column: cint, order: gen_qnamespace.SortOrder): void
proc onsort*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_sort(self: ptr cQAbstractTableModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QAbstractTableModel_sort ".} =
  type Cb = proc(super: QAbstractTableModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, order: gen_qnamespace.SortOrder): auto =
    callVirtualBase_sort(QAbstractTableModel(h: self), column, order)
  let slotval1 = column

  let slotval2 = gen_qnamespace.SortOrder(order)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_buddy(self: QAbstractTableModel, index: QModelIndex): QModelIndex =


  QModelIndex(h: fQAbstractTableModel_virtualbase_buddy(self.h, index.h))

type QAbstractTableModelbuddyBase* = proc(index: QModelIndex): QModelIndex
proc onbuddy*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelbuddyBase, index: QModelIndex): QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelbuddyBase, index: QModelIndex): QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_buddy(self: ptr cQAbstractTableModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractTableModel_buddy ".} =
  type Cb = proc(super: QAbstractTableModelbuddyBase, index: QModelIndex): QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: QModelIndex): auto =
    callVirtualBase_buddy(QAbstractTableModel(h: self), index)
  let slotval1 = QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_match(self: QAbstractTableModel, start: QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[QModelIndex] =


  var v_ma = fQAbstractTableModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QModelIndex(h: v_outCast[i])
  vx_ret

type QAbstractTableModelmatchBase* = proc(start: QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[QModelIndex]
proc onmatch*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelmatchBase, start: QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelmatchBase, start: QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_match(self: ptr cQAbstractTableModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractTableModel_match ".} =
  type Cb = proc(super: QAbstractTableModelmatchBase, start: QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(start: QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): auto =
    callVirtualBase_match(QAbstractTableModel(h: self), start, role, value, hits, flags)
  let slotval1 = QModelIndex(h: start)

  let slotval2 = role

  let slotval3 = gen_qvariant.QVariant(h: value)

  let slotval4 = hits

  let slotval5 = gen_qnamespace.MatchFlag(flags)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_span(self: QAbstractTableModel, index: QModelIndex): gen_qsize.QSize =


  gen_qsize.QSize(h: fQAbstractTableModel_virtualbase_span(self.h, index.h))

type QAbstractTableModelspanBase* = proc(index: QModelIndex): gen_qsize.QSize
proc onspan*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelspanBase, index: QModelIndex): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelspanBase, index: QModelIndex): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_span(self: ptr cQAbstractTableModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractTableModel_span ".} =
  type Cb = proc(super: QAbstractTableModelspanBase, index: QModelIndex): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: QModelIndex): auto =
    callVirtualBase_span(QAbstractTableModel(h: self), index)
  let slotval1 = QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_roleNames(self: QAbstractTableModel, ): Table[cint,seq[byte]] =


  var v_mm = fQAbstractTableModel_virtualbase_roleNames(self.h)
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

type QAbstractTableModelroleNamesBase* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelroleNamesBase): Table[cint,seq[byte]]) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelroleNamesBase): Table[cint,seq[byte]]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_roleNames(self: ptr cQAbstractTableModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QAbstractTableModel_roleNames ".} =
  type Cb = proc(super: QAbstractTableModelroleNamesBase): Table[cint,seq[byte]]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_roleNames(QAbstractTableModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc callVirtualBase_submit(self: QAbstractTableModel, ): bool =


  fQAbstractTableModel_virtualbase_submit(self.h)

type QAbstractTableModelsubmitBase* = proc(): bool
proc onsubmit*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelsubmitBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelsubmitBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_submit(self: ptr cQAbstractTableModel, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_submit ".} =
  type Cb = proc(super: QAbstractTableModelsubmitBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_submit(QAbstractTableModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_revert(self: QAbstractTableModel, ): void =


  fQAbstractTableModel_virtualbase_revert(self.h)

type QAbstractTableModelrevertBase* = proc(): void
proc onrevert*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelrevertBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelrevertBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_revert(self: ptr cQAbstractTableModel, slot: int): void {.exportc: "miqt_exec_callback_QAbstractTableModel_revert ".} =
  type Cb = proc(super: QAbstractTableModelrevertBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_revert(QAbstractTableModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_event(self: QAbstractTableModel, event: gen_qcoreevent.QEvent): bool =


  fQAbstractTableModel_virtualbase_event(self.h, event.h)

type QAbstractTableModeleventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModeleventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModeleventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_event(self: ptr cQAbstractTableModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_event ".} =
  type Cb = proc(super: QAbstractTableModeleventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAbstractTableModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAbstractTableModel, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAbstractTableModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractTableModeleventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_eventFilter(self: ptr cQAbstractTableModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTableModel_eventFilter ".} =
  type Cb = proc(super: QAbstractTableModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAbstractTableModel(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAbstractTableModel, event: gen_qcoreevent.QTimerEvent): void =


  fQAbstractTableModel_virtualbase_timerEvent(self.h, event.h)

type QAbstractTableModeltimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_timerEvent(self: ptr cQAbstractTableModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractTableModel_timerEvent ".} =
  type Cb = proc(super: QAbstractTableModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAbstractTableModel(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAbstractTableModel, event: gen_qcoreevent.QChildEvent): void =


  fQAbstractTableModel_virtualbase_childEvent(self.h, event.h)

type QAbstractTableModelchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_childEvent(self: ptr cQAbstractTableModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractTableModel_childEvent ".} =
  type Cb = proc(super: QAbstractTableModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAbstractTableModel(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAbstractTableModel, event: gen_qcoreevent.QEvent): void =


  fQAbstractTableModel_virtualbase_customEvent(self.h, event.h)

type QAbstractTableModelcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_customEvent(self: ptr cQAbstractTableModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractTableModel_customEvent ".} =
  type Cb = proc(super: QAbstractTableModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAbstractTableModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAbstractTableModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractTableModel_virtualbase_connectNotify(self.h, signal.h)

type QAbstractTableModelconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_connectNotify(self: ptr cQAbstractTableModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractTableModel_connectNotify ".} =
  type Cb = proc(super: QAbstractTableModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAbstractTableModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAbstractTableModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractTableModel_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractTableModeldisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAbstractTableModel, slot: proc(super: QAbstractTableModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTableModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTableModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTableModel_disconnectNotify(self: ptr cQAbstractTableModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractTableModel_disconnectNotify ".} =
  type Cb = proc(super: QAbstractTableModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAbstractTableModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAbstractTableModel): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAbstractTableModel_staticMetaObject())
proc delete*(self: QAbstractTableModel) =
  fcQAbstractTableModel_delete(self.h)

func init*(T: type QAbstractListModel, h: ptr cQAbstractListModel): QAbstractListModel =
  T(h: h)
proc create*(T: type QAbstractListModel, ): QAbstractListModel =

  QAbstractListModel.init(fcQAbstractListModel_new())
proc create*(T: type QAbstractListModel, parent: gen_qobject.QObject): QAbstractListModel =

  QAbstractListModel.init(fcQAbstractListModel_new2(parent.h))
proc metaObject*(self: QAbstractListModel, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAbstractListModel_metaObject(self.h))

proc metacast*(self: QAbstractListModel, param1: cstring): pointer =

  fcQAbstractListModel_metacast(self.h, param1)

proc metacall*(self: QAbstractListModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAbstractListModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAbstractListModel, s: cstring): string =

  let v_ms = fcQAbstractListModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QAbstractListModel, s: cstring): string =

  let v_ms = fcQAbstractListModel_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc index*(self: QAbstractListModel, row: cint, column: cint, parent: QModelIndex): QModelIndex =

  QModelIndex(h: fcQAbstractListModel_index(self.h, row, column, parent.h))

proc sibling*(self: QAbstractListModel, row: cint, column: cint, idx: QModelIndex): QModelIndex =

  QModelIndex(h: fcQAbstractListModel_sibling(self.h, row, column, idx.h))

proc dropMimeData*(self: QAbstractListModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool =

  fcQAbstractListModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc flags*(self: QAbstractListModel, index: QModelIndex): gen_qnamespace.ItemFlag =

  gen_qnamespace.ItemFlag(fcQAbstractListModel_flags(self.h, index.h))

proc tr2*(_: type QAbstractListModel, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractListModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAbstractListModel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractListModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QAbstractListModel, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractListModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAbstractListModel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractListModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QAbstractListModel, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQAbstractListModel_virtualbase_metaObject(self.h))

type QAbstractListModelmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QAbstractListModel, slot: proc(super: QAbstractListModelmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_metaObject(self: ptr cQAbstractListModel, slot: int): pointer {.exportc: "miqt_exec_callback_QAbstractListModel_metaObject ".} =
  type Cb = proc(super: QAbstractListModelmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QAbstractListModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QAbstractListModel, param1: cstring): pointer =


  fQAbstractListModel_virtualbase_metacast(self.h, param1)

type QAbstractListModelmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QAbstractListModel, slot: proc(super: QAbstractListModelmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_metacast(self: ptr cQAbstractListModel, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QAbstractListModel_metacast ".} =
  type Cb = proc(super: QAbstractListModelmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QAbstractListModel(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QAbstractListModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAbstractListModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractListModelmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAbstractListModel, slot: proc(super: QAbstractListModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_metacall(self: ptr cQAbstractListModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractListModel_metacall ".} =
  type Cb = proc(super: QAbstractListModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAbstractListModel(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_index(self: QAbstractListModel, row: cint, column: cint, parent: QModelIndex): QModelIndex =


  QModelIndex(h: fQAbstractListModel_virtualbase_index(self.h, row, column, parent.h))

type QAbstractListModelindexBase* = proc(row: cint, column: cint, parent: QModelIndex): QModelIndex
proc onindex*(self: QAbstractListModel, slot: proc(super: QAbstractListModelindexBase, row: cint, column: cint, parent: QModelIndex): QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelindexBase, row: cint, column: cint, parent: QModelIndex): QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_index(self: ptr cQAbstractListModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractListModel_index ".} =
  type Cb = proc(super: QAbstractListModelindexBase, row: cint, column: cint, parent: QModelIndex): QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, parent: QModelIndex): auto =
    callVirtualBase_index(QAbstractListModel(h: self), row, column, parent)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_sibling(self: QAbstractListModel, row: cint, column: cint, idx: QModelIndex): QModelIndex =


  QModelIndex(h: fQAbstractListModel_virtualbase_sibling(self.h, row, column, idx.h))

type QAbstractListModelsiblingBase* = proc(row: cint, column: cint, idx: QModelIndex): QModelIndex
proc onsibling*(self: QAbstractListModel, slot: proc(super: QAbstractListModelsiblingBase, row: cint, column: cint, idx: QModelIndex): QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelsiblingBase, row: cint, column: cint, idx: QModelIndex): QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_sibling(self: ptr cQAbstractListModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractListModel_sibling ".} =
  type Cb = proc(super: QAbstractListModelsiblingBase, row: cint, column: cint, idx: QModelIndex): QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, idx: QModelIndex): auto =
    callVirtualBase_sibling(QAbstractListModel(h: self), row, column, idx)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = QModelIndex(h: idx)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_dropMimeData(self: QAbstractListModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool =


  fQAbstractListModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QAbstractListModeldropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool
proc ondropMimeData*(self: QAbstractListModel, slot: proc(super: QAbstractListModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_dropMimeData(self: ptr cQAbstractListModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractListModel_dropMimeData ".} =
  type Cb = proc(super: QAbstractListModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): auto =
    callVirtualBase_dropMimeData(QAbstractListModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_flags(self: QAbstractListModel, index: QModelIndex): gen_qnamespace.ItemFlag =


  gen_qnamespace.ItemFlag(fQAbstractListModel_virtualbase_flags(self.h, index.h))

type QAbstractListModelflagsBase* = proc(index: QModelIndex): gen_qnamespace.ItemFlag
proc onflags*(self: QAbstractListModel, slot: proc(super: QAbstractListModelflagsBase, index: QModelIndex): gen_qnamespace.ItemFlag) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelflagsBase, index: QModelIndex): gen_qnamespace.ItemFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_flags(self: ptr cQAbstractListModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QAbstractListModel_flags ".} =
  type Cb = proc(super: QAbstractListModelflagsBase, index: QModelIndex): gen_qnamespace.ItemFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: QModelIndex): auto =
    callVirtualBase_flags(QAbstractListModel(h: self), index)
  let slotval1 = QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  cint(virtualReturn)
type QAbstractListModelrowCountBase* = proc(parent: QModelIndex): cint
proc onrowCount*(self: QAbstractListModel, slot: proc(parent: QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(parent: QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_rowCount(self: ptr cQAbstractListModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QAbstractListModel_rowCount ".} =
  type Cb = proc(parent: QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QAbstractListModeldataBase* = proc(index: QModelIndex, role: cint): gen_qvariant.QVariant
proc ondata*(self: QAbstractListModel, slot: proc(index: QModelIndex, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(index: QModelIndex, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_data(self: ptr cQAbstractListModel, slot: int, index: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QAbstractListModel_data ".} =
  type Cb = proc(index: QModelIndex, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QModelIndex(h: index)

  let slotval2 = role


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_setData(self: QAbstractListModel, index: QModelIndex, value: gen_qvariant.QVariant, role: cint): bool =


  fQAbstractListModel_virtualbase_setData(self.h, index.h, value.h, role)

type QAbstractListModelsetDataBase* = proc(index: QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
proc onsetData*(self: QAbstractListModel, slot: proc(super: QAbstractListModelsetDataBase, index: QModelIndex, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelsetDataBase, index: QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_setData(self: ptr cQAbstractListModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QAbstractListModel_setData ".} =
  type Cb = proc(super: QAbstractListModelsetDataBase, index: QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: QModelIndex, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setData(QAbstractListModel(h: self), index, value, role)
  let slotval1 = QModelIndex(h: index)

  let slotval2 = gen_qvariant.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_headerData(self: QAbstractListModel, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQAbstractListModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QAbstractListModelheaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
proc onheaderData*(self: QAbstractListModel, slot: proc(super: QAbstractListModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_headerData(self: ptr cQAbstractListModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QAbstractListModel_headerData ".} =
  type Cb = proc(super: QAbstractListModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, role: cint): auto =
    callVirtualBase_headerData(QAbstractListModel(h: self), section, orientation, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_setHeaderData(self: QAbstractListModel, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool =


  fQAbstractListModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QAbstractListModelsetHeaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
proc onsetHeaderData*(self: QAbstractListModel, slot: proc(super: QAbstractListModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_setHeaderData(self: ptr cQAbstractListModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QAbstractListModel_setHeaderData ".} =
  type Cb = proc(super: QAbstractListModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setHeaderData(QAbstractListModel(h: self), section, orientation, value, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = gen_qvariant.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_itemData(self: QAbstractListModel, index: QModelIndex): Table[cint,gen_qvariant.QVariant] =


  var v_mm = fQAbstractListModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QAbstractListModelitemDataBase* = proc(index: QModelIndex): Table[cint,gen_qvariant.QVariant]
proc onitemData*(self: QAbstractListModel, slot: proc(super: QAbstractListModelitemDataBase, index: QModelIndex): Table[cint,gen_qvariant.QVariant]) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelitemDataBase, index: QModelIndex): Table[cint,gen_qvariant.QVariant]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_itemData(self: ptr cQAbstractListModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QAbstractListModel_itemData ".} =
  type Cb = proc(super: QAbstractListModelitemDataBase, index: QModelIndex): Table[cint,gen_qvariant.QVariant]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: QModelIndex): auto =
    callVirtualBase_itemData(QAbstractListModel(h: self), index)
  let slotval1 = QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[pointer](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = virtualReturn_v.h
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc callVirtualBase_setItemData(self: QAbstractListModel, index: QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool =

  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1


  fQAbstractListModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QAbstractListModelsetItemDataBase* = proc(index: QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
proc onsetItemData*(self: QAbstractListModel, slot: proc(super: QAbstractListModelsetItemDataBase, index: QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelsetItemDataBase, index: QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_setItemData(self: ptr cQAbstractListModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QAbstractListModel_setItemData ".} =
  type Cb = proc(super: QAbstractListModelsetItemDataBase, index: QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): auto =
    callVirtualBase_setItemData(QAbstractListModel(h: self), index, roles)
  let slotval1 = QModelIndex(h: index)

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
proc callVirtualBase_mimeTypes(self: QAbstractListModel, ): seq[string] =


  var v_ma = fQAbstractListModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QAbstractListModelmimeTypesBase* = proc(): seq[string]
proc onmimeTypes*(self: QAbstractListModel, slot: proc(super: QAbstractListModelmimeTypesBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelmimeTypesBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_mimeTypes(self: ptr cQAbstractListModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractListModel_mimeTypes ".} =
  type Cb = proc(super: QAbstractListModelmimeTypesBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mimeTypes(QAbstractListModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_mimeData(self: QAbstractListModel, indexes: seq[QModelIndex]): gen_qmimedata.QMimeData =

  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h


  gen_qmimedata.QMimeData(h: fQAbstractListModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QAbstractListModelmimeDataBase* = proc(indexes: seq[QModelIndex]): gen_qmimedata.QMimeData
proc onmimeData*(self: QAbstractListModel, slot: proc(super: QAbstractListModelmimeDataBase, indexes: seq[QModelIndex]): gen_qmimedata.QMimeData) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelmimeDataBase, indexes: seq[QModelIndex]): gen_qmimedata.QMimeData
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_mimeData(self: ptr cQAbstractListModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QAbstractListModel_mimeData ".} =
  type Cb = proc(super: QAbstractListModelmimeDataBase, indexes: seq[QModelIndex]): gen_qmimedata.QMimeData
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(indexes: seq[QModelIndex]): auto =
    callVirtualBase_mimeData(QAbstractListModel(h: self), indexes)
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_canDropMimeData(self: QAbstractListModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool =


  fQAbstractListModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QAbstractListModelcanDropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool
proc oncanDropMimeData*(self: QAbstractListModel, slot: proc(super: QAbstractListModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_canDropMimeData(self: ptr cQAbstractListModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractListModel_canDropMimeData ".} =
  type Cb = proc(super: QAbstractListModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: QModelIndex): auto =
    callVirtualBase_canDropMimeData(QAbstractListModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_supportedDropActions(self: QAbstractListModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQAbstractListModel_virtualbase_supportedDropActions(self.h))

type QAbstractListModelsupportedDropActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDropActions*(self: QAbstractListModel, slot: proc(super: QAbstractListModelsupportedDropActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_supportedDropActions(self: ptr cQAbstractListModel, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractListModel_supportedDropActions ".} =
  type Cb = proc(super: QAbstractListModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDropActions(QAbstractListModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_supportedDragActions(self: QAbstractListModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQAbstractListModel_virtualbase_supportedDragActions(self.h))

type QAbstractListModelsupportedDragActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDragActions*(self: QAbstractListModel, slot: proc(super: QAbstractListModelsupportedDragActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_supportedDragActions(self: ptr cQAbstractListModel, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractListModel_supportedDragActions ".} =
  type Cb = proc(super: QAbstractListModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDragActions(QAbstractListModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_insertRows(self: QAbstractListModel, row: cint, count: cint, parent: QModelIndex): bool =


  fQAbstractListModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QAbstractListModelinsertRowsBase* = proc(row: cint, count: cint, parent: QModelIndex): bool
proc oninsertRows*(self: QAbstractListModel, slot: proc(super: QAbstractListModelinsertRowsBase, row: cint, count: cint, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelinsertRowsBase, row: cint, count: cint, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_insertRows(self: ptr cQAbstractListModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractListModel_insertRows ".} =
  type Cb = proc(super: QAbstractListModelinsertRowsBase, row: cint, count: cint, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: QModelIndex): auto =
    callVirtualBase_insertRows(QAbstractListModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_insertColumns(self: QAbstractListModel, column: cint, count: cint, parent: QModelIndex): bool =


  fQAbstractListModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QAbstractListModelinsertColumnsBase* = proc(column: cint, count: cint, parent: QModelIndex): bool
proc oninsertColumns*(self: QAbstractListModel, slot: proc(super: QAbstractListModelinsertColumnsBase, column: cint, count: cint, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelinsertColumnsBase, column: cint, count: cint, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_insertColumns(self: ptr cQAbstractListModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractListModel_insertColumns ".} =
  type Cb = proc(super: QAbstractListModelinsertColumnsBase, column: cint, count: cint, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: QModelIndex): auto =
    callVirtualBase_insertColumns(QAbstractListModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeRows(self: QAbstractListModel, row: cint, count: cint, parent: QModelIndex): bool =


  fQAbstractListModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QAbstractListModelremoveRowsBase* = proc(row: cint, count: cint, parent: QModelIndex): bool
proc onremoveRows*(self: QAbstractListModel, slot: proc(super: QAbstractListModelremoveRowsBase, row: cint, count: cint, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelremoveRowsBase, row: cint, count: cint, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_removeRows(self: ptr cQAbstractListModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractListModel_removeRows ".} =
  type Cb = proc(super: QAbstractListModelremoveRowsBase, row: cint, count: cint, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: QModelIndex): auto =
    callVirtualBase_removeRows(QAbstractListModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeColumns(self: QAbstractListModel, column: cint, count: cint, parent: QModelIndex): bool =


  fQAbstractListModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QAbstractListModelremoveColumnsBase* = proc(column: cint, count: cint, parent: QModelIndex): bool
proc onremoveColumns*(self: QAbstractListModel, slot: proc(super: QAbstractListModelremoveColumnsBase, column: cint, count: cint, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelremoveColumnsBase, column: cint, count: cint, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_removeColumns(self: ptr cQAbstractListModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractListModel_removeColumns ".} =
  type Cb = proc(super: QAbstractListModelremoveColumnsBase, column: cint, count: cint, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: QModelIndex): auto =
    callVirtualBase_removeColumns(QAbstractListModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_moveRows(self: QAbstractListModel, sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool =


  fQAbstractListModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QAbstractListModelmoveRowsBase* = proc(sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: QAbstractListModel, slot: proc(super: QAbstractListModelmoveRowsBase, sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelmoveRowsBase, sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_moveRows(self: ptr cQAbstractListModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QAbstractListModel_moveRows ".} =
  type Cb = proc(super: QAbstractListModelmoveRowsBase, sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: QModelIndex, sourceRow: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveRows(QAbstractListModel(h: self), sourceParent, sourceRow, count, destinationParent, destinationChild)
  let slotval1 = QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_moveColumns(self: QAbstractListModel, sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool =


  fQAbstractListModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QAbstractListModelmoveColumnsBase* = proc(sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: QAbstractListModel, slot: proc(super: QAbstractListModelmoveColumnsBase, sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelmoveColumnsBase, sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_moveColumns(self: ptr cQAbstractListModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QAbstractListModel_moveColumns ".} =
  type Cb = proc(super: QAbstractListModelmoveColumnsBase, sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: QModelIndex, sourceColumn: cint, count: cint, destinationParent: QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveColumns(QAbstractListModel(h: self), sourceParent, sourceColumn, count, destinationParent, destinationChild)
  let slotval1 = QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_fetchMore(self: QAbstractListModel, parent: QModelIndex): void =


  fQAbstractListModel_virtualbase_fetchMore(self.h, parent.h)

type QAbstractListModelfetchMoreBase* = proc(parent: QModelIndex): void
proc onfetchMore*(self: QAbstractListModel, slot: proc(super: QAbstractListModelfetchMoreBase, parent: QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelfetchMoreBase, parent: QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_fetchMore(self: ptr cQAbstractListModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QAbstractListModel_fetchMore ".} =
  type Cb = proc(super: QAbstractListModelfetchMoreBase, parent: QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: QModelIndex): auto =
    callVirtualBase_fetchMore(QAbstractListModel(h: self), parent)
  let slotval1 = QModelIndex(h: parent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_canFetchMore(self: QAbstractListModel, parent: QModelIndex): bool =


  fQAbstractListModel_virtualbase_canFetchMore(self.h, parent.h)

type QAbstractListModelcanFetchMoreBase* = proc(parent: QModelIndex): bool
proc oncanFetchMore*(self: QAbstractListModel, slot: proc(super: QAbstractListModelcanFetchMoreBase, parent: QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelcanFetchMoreBase, parent: QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_canFetchMore(self: ptr cQAbstractListModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractListModel_canFetchMore ".} =
  type Cb = proc(super: QAbstractListModelcanFetchMoreBase, parent: QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: QModelIndex): auto =
    callVirtualBase_canFetchMore(QAbstractListModel(h: self), parent)
  let slotval1 = QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_sort(self: QAbstractListModel, column: cint, order: gen_qnamespace.SortOrder): void =


  fQAbstractListModel_virtualbase_sort(self.h, column, cint(order))

type QAbstractListModelsortBase* = proc(column: cint, order: gen_qnamespace.SortOrder): void
proc onsort*(self: QAbstractListModel, slot: proc(super: QAbstractListModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_sort(self: ptr cQAbstractListModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QAbstractListModel_sort ".} =
  type Cb = proc(super: QAbstractListModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, order: gen_qnamespace.SortOrder): auto =
    callVirtualBase_sort(QAbstractListModel(h: self), column, order)
  let slotval1 = column

  let slotval2 = gen_qnamespace.SortOrder(order)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_buddy(self: QAbstractListModel, index: QModelIndex): QModelIndex =


  QModelIndex(h: fQAbstractListModel_virtualbase_buddy(self.h, index.h))

type QAbstractListModelbuddyBase* = proc(index: QModelIndex): QModelIndex
proc onbuddy*(self: QAbstractListModel, slot: proc(super: QAbstractListModelbuddyBase, index: QModelIndex): QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelbuddyBase, index: QModelIndex): QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_buddy(self: ptr cQAbstractListModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractListModel_buddy ".} =
  type Cb = proc(super: QAbstractListModelbuddyBase, index: QModelIndex): QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: QModelIndex): auto =
    callVirtualBase_buddy(QAbstractListModel(h: self), index)
  let slotval1 = QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_match(self: QAbstractListModel, start: QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[QModelIndex] =


  var v_ma = fQAbstractListModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QModelIndex(h: v_outCast[i])
  vx_ret

type QAbstractListModelmatchBase* = proc(start: QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[QModelIndex]
proc onmatch*(self: QAbstractListModel, slot: proc(super: QAbstractListModelmatchBase, start: QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelmatchBase, start: QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_match(self: ptr cQAbstractListModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractListModel_match ".} =
  type Cb = proc(super: QAbstractListModelmatchBase, start: QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(start: QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): auto =
    callVirtualBase_match(QAbstractListModel(h: self), start, role, value, hits, flags)
  let slotval1 = QModelIndex(h: start)

  let slotval2 = role

  let slotval3 = gen_qvariant.QVariant(h: value)

  let slotval4 = hits

  let slotval5 = gen_qnamespace.MatchFlag(flags)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_span(self: QAbstractListModel, index: QModelIndex): gen_qsize.QSize =


  gen_qsize.QSize(h: fQAbstractListModel_virtualbase_span(self.h, index.h))

type QAbstractListModelspanBase* = proc(index: QModelIndex): gen_qsize.QSize
proc onspan*(self: QAbstractListModel, slot: proc(super: QAbstractListModelspanBase, index: QModelIndex): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelspanBase, index: QModelIndex): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_span(self: ptr cQAbstractListModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractListModel_span ".} =
  type Cb = proc(super: QAbstractListModelspanBase, index: QModelIndex): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: QModelIndex): auto =
    callVirtualBase_span(QAbstractListModel(h: self), index)
  let slotval1 = QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_roleNames(self: QAbstractListModel, ): Table[cint,seq[byte]] =


  var v_mm = fQAbstractListModel_virtualbase_roleNames(self.h)
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

type QAbstractListModelroleNamesBase* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: QAbstractListModel, slot: proc(super: QAbstractListModelroleNamesBase): Table[cint,seq[byte]]) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelroleNamesBase): Table[cint,seq[byte]]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_roleNames(self: ptr cQAbstractListModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QAbstractListModel_roleNames ".} =
  type Cb = proc(super: QAbstractListModelroleNamesBase): Table[cint,seq[byte]]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_roleNames(QAbstractListModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc callVirtualBase_submit(self: QAbstractListModel, ): bool =


  fQAbstractListModel_virtualbase_submit(self.h)

type QAbstractListModelsubmitBase* = proc(): bool
proc onsubmit*(self: QAbstractListModel, slot: proc(super: QAbstractListModelsubmitBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelsubmitBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_submit(self: ptr cQAbstractListModel, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractListModel_submit ".} =
  type Cb = proc(super: QAbstractListModelsubmitBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_submit(QAbstractListModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_revert(self: QAbstractListModel, ): void =


  fQAbstractListModel_virtualbase_revert(self.h)

type QAbstractListModelrevertBase* = proc(): void
proc onrevert*(self: QAbstractListModel, slot: proc(super: QAbstractListModelrevertBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelrevertBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_revert(self: ptr cQAbstractListModel, slot: int): void {.exportc: "miqt_exec_callback_QAbstractListModel_revert ".} =
  type Cb = proc(super: QAbstractListModelrevertBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_revert(QAbstractListModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_event(self: QAbstractListModel, event: gen_qcoreevent.QEvent): bool =


  fQAbstractListModel_virtualbase_event(self.h, event.h)

type QAbstractListModeleventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAbstractListModel, slot: proc(super: QAbstractListModeleventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModeleventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_event(self: ptr cQAbstractListModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractListModel_event ".} =
  type Cb = proc(super: QAbstractListModeleventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAbstractListModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAbstractListModel, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAbstractListModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractListModeleventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAbstractListModel, slot: proc(super: QAbstractListModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_eventFilter(self: ptr cQAbstractListModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractListModel_eventFilter ".} =
  type Cb = proc(super: QAbstractListModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAbstractListModel(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAbstractListModel, event: gen_qcoreevent.QTimerEvent): void =


  fQAbstractListModel_virtualbase_timerEvent(self.h, event.h)

type QAbstractListModeltimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAbstractListModel, slot: proc(super: QAbstractListModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_timerEvent(self: ptr cQAbstractListModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractListModel_timerEvent ".} =
  type Cb = proc(super: QAbstractListModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAbstractListModel(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAbstractListModel, event: gen_qcoreevent.QChildEvent): void =


  fQAbstractListModel_virtualbase_childEvent(self.h, event.h)

type QAbstractListModelchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAbstractListModel, slot: proc(super: QAbstractListModelchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_childEvent(self: ptr cQAbstractListModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractListModel_childEvent ".} =
  type Cb = proc(super: QAbstractListModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAbstractListModel(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAbstractListModel, event: gen_qcoreevent.QEvent): void =


  fQAbstractListModel_virtualbase_customEvent(self.h, event.h)

type QAbstractListModelcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAbstractListModel, slot: proc(super: QAbstractListModelcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_customEvent(self: ptr cQAbstractListModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractListModel_customEvent ".} =
  type Cb = proc(super: QAbstractListModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAbstractListModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAbstractListModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractListModel_virtualbase_connectNotify(self.h, signal.h)

type QAbstractListModelconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAbstractListModel, slot: proc(super: QAbstractListModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_connectNotify(self: ptr cQAbstractListModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractListModel_connectNotify ".} =
  type Cb = proc(super: QAbstractListModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAbstractListModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAbstractListModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractListModel_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractListModeldisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAbstractListModel, slot: proc(super: QAbstractListModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractListModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractListModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractListModel_disconnectNotify(self: ptr cQAbstractListModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractListModel_disconnectNotify ".} =
  type Cb = proc(super: QAbstractListModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAbstractListModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAbstractListModel): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAbstractListModel_staticMetaObject())
proc delete*(self: QAbstractListModel) =
  fcQAbstractListModel_delete(self.h)
