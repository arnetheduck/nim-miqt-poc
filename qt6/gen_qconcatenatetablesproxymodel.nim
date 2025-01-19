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
{.compile("gen_qconcatenatetablesproxymodel.cpp", cflags).}


import gen_qconcatenatetablesproxymodel_types
export gen_qconcatenatetablesproxymodel_types

import
  gen_qabstractitemmodel,
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
  gen_qabstractitemmodel,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qvariant

type cQConcatenateTablesProxyModel*{.exportc: "QConcatenateTablesProxyModel", incompleteStruct.} = object

proc fcQConcatenateTablesProxyModel_new(): ptr cQConcatenateTablesProxyModel {.importc: "QConcatenateTablesProxyModel_new".}
proc fcQConcatenateTablesProxyModel_new2(parent: pointer): ptr cQConcatenateTablesProxyModel {.importc: "QConcatenateTablesProxyModel_new2".}
proc fcQConcatenateTablesProxyModel_metaObject(self: pointer, ): pointer {.importc: "QConcatenateTablesProxyModel_metaObject".}
proc fcQConcatenateTablesProxyModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QConcatenateTablesProxyModel_metacast".}
proc fcQConcatenateTablesProxyModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QConcatenateTablesProxyModel_metacall".}
proc fcQConcatenateTablesProxyModel_tr(s: cstring): struct_miqt_string {.importc: "QConcatenateTablesProxyModel_tr".}
proc fcQConcatenateTablesProxyModel_sourceModels(self: pointer, ): struct_miqt_array {.importc: "QConcatenateTablesProxyModel_sourceModels".}
proc fcQConcatenateTablesProxyModel_addSourceModel(self: pointer, sourceModel: pointer): void {.importc: "QConcatenateTablesProxyModel_addSourceModel".}
proc fcQConcatenateTablesProxyModel_removeSourceModel(self: pointer, sourceModel: pointer): void {.importc: "QConcatenateTablesProxyModel_removeSourceModel".}
proc fcQConcatenateTablesProxyModel_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.importc: "QConcatenateTablesProxyModel_mapFromSource".}
proc fcQConcatenateTablesProxyModel_mapToSource(self: pointer, proxyIndex: pointer): pointer {.importc: "QConcatenateTablesProxyModel_mapToSource".}
proc fcQConcatenateTablesProxyModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QConcatenateTablesProxyModel_data".}
proc fcQConcatenateTablesProxyModel_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QConcatenateTablesProxyModel_setData".}
proc fcQConcatenateTablesProxyModel_itemData(self: pointer, proxyIndex: pointer): struct_miqt_map {.importc: "QConcatenateTablesProxyModel_itemData".}
proc fcQConcatenateTablesProxyModel_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QConcatenateTablesProxyModel_setItemData".}
proc fcQConcatenateTablesProxyModel_flags(self: pointer, index: pointer): cint {.importc: "QConcatenateTablesProxyModel_flags".}
proc fcQConcatenateTablesProxyModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QConcatenateTablesProxyModel_index".}
proc fcQConcatenateTablesProxyModel_parent(self: pointer, index: pointer): pointer {.importc: "QConcatenateTablesProxyModel_parent".}
proc fcQConcatenateTablesProxyModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QConcatenateTablesProxyModel_rowCount".}
proc fcQConcatenateTablesProxyModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QConcatenateTablesProxyModel_headerData".}
proc fcQConcatenateTablesProxyModel_columnCount(self: pointer, parent: pointer): cint {.importc: "QConcatenateTablesProxyModel_columnCount".}
proc fcQConcatenateTablesProxyModel_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QConcatenateTablesProxyModel_mimeTypes".}
proc fcQConcatenateTablesProxyModel_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QConcatenateTablesProxyModel_mimeData".}
proc fcQConcatenateTablesProxyModel_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QConcatenateTablesProxyModel_canDropMimeData".}
proc fcQConcatenateTablesProxyModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QConcatenateTablesProxyModel_dropMimeData".}
proc fcQConcatenateTablesProxyModel_span(self: pointer, index: pointer): pointer {.importc: "QConcatenateTablesProxyModel_span".}
proc fcQConcatenateTablesProxyModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QConcatenateTablesProxyModel_tr2".}
proc fcQConcatenateTablesProxyModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QConcatenateTablesProxyModel_tr3".}
proc fQConcatenateTablesProxyModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QConcatenateTablesProxyModel_virtualbase_metacall".}
proc fcQConcatenateTablesProxyModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_metacall".}
proc fQConcatenateTablesProxyModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer{.importc: "QConcatenateTablesProxyModel_virtualbase_data".}
proc fcQConcatenateTablesProxyModel_override_virtual_data(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_data".}
proc fQConcatenateTablesProxyModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_setData".}
proc fcQConcatenateTablesProxyModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_setData".}
proc fQConcatenateTablesProxyModel_virtualbase_itemData(self: pointer, proxyIndex: pointer): struct_miqt_map{.importc: "QConcatenateTablesProxyModel_virtualbase_itemData".}
proc fcQConcatenateTablesProxyModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_itemData".}
proc fQConcatenateTablesProxyModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_setItemData".}
proc fcQConcatenateTablesProxyModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_setItemData".}
proc fQConcatenateTablesProxyModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QConcatenateTablesProxyModel_virtualbase_flags".}
proc fcQConcatenateTablesProxyModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_flags".}
proc fQConcatenateTablesProxyModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer{.importc: "QConcatenateTablesProxyModel_virtualbase_index".}
proc fcQConcatenateTablesProxyModel_override_virtual_index(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_index".}
proc fQConcatenateTablesProxyModel_virtualbase_parent(self: pointer, index: pointer): pointer{.importc: "QConcatenateTablesProxyModel_virtualbase_parent".}
proc fcQConcatenateTablesProxyModel_override_virtual_parent(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_parent".}
proc fQConcatenateTablesProxyModel_virtualbase_rowCount(self: pointer, parent: pointer): cint{.importc: "QConcatenateTablesProxyModel_virtualbase_rowCount".}
proc fcQConcatenateTablesProxyModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_rowCount".}
proc fQConcatenateTablesProxyModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QConcatenateTablesProxyModel_virtualbase_headerData".}
proc fcQConcatenateTablesProxyModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_headerData".}
proc fQConcatenateTablesProxyModel_virtualbase_columnCount(self: pointer, parent: pointer): cint{.importc: "QConcatenateTablesProxyModel_virtualbase_columnCount".}
proc fcQConcatenateTablesProxyModel_override_virtual_columnCount(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_columnCount".}
proc fQConcatenateTablesProxyModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QConcatenateTablesProxyModel_virtualbase_mimeTypes".}
proc fcQConcatenateTablesProxyModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_mimeTypes".}
proc fQConcatenateTablesProxyModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QConcatenateTablesProxyModel_virtualbase_mimeData".}
proc fcQConcatenateTablesProxyModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_mimeData".}
proc fQConcatenateTablesProxyModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_canDropMimeData".}
proc fcQConcatenateTablesProxyModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_canDropMimeData".}
proc fQConcatenateTablesProxyModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_dropMimeData".}
proc fcQConcatenateTablesProxyModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_dropMimeData".}
proc fQConcatenateTablesProxyModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QConcatenateTablesProxyModel_virtualbase_span".}
proc fcQConcatenateTablesProxyModel_override_virtual_span(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_span".}
proc fQConcatenateTablesProxyModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QConcatenateTablesProxyModel_virtualbase_sibling".}
proc fcQConcatenateTablesProxyModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_sibling".}
proc fQConcatenateTablesProxyModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_hasChildren".}
proc fcQConcatenateTablesProxyModel_override_virtual_hasChildren(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_hasChildren".}
proc fQConcatenateTablesProxyModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_setHeaderData".}
proc fcQConcatenateTablesProxyModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_setHeaderData".}
proc fQConcatenateTablesProxyModel_virtualbase_clearItemData(self: pointer, index: pointer): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_clearItemData".}
proc fcQConcatenateTablesProxyModel_override_virtual_clearItemData(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_clearItemData".}
proc fQConcatenateTablesProxyModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QConcatenateTablesProxyModel_virtualbase_supportedDropActions".}
proc fcQConcatenateTablesProxyModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_supportedDropActions".}
proc fQConcatenateTablesProxyModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QConcatenateTablesProxyModel_virtualbase_supportedDragActions".}
proc fcQConcatenateTablesProxyModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_supportedDragActions".}
proc fQConcatenateTablesProxyModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_insertRows".}
proc fcQConcatenateTablesProxyModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_insertRows".}
proc fQConcatenateTablesProxyModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_insertColumns".}
proc fcQConcatenateTablesProxyModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_insertColumns".}
proc fQConcatenateTablesProxyModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_removeRows".}
proc fcQConcatenateTablesProxyModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_removeRows".}
proc fQConcatenateTablesProxyModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_removeColumns".}
proc fcQConcatenateTablesProxyModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_removeColumns".}
proc fQConcatenateTablesProxyModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_moveRows".}
proc fcQConcatenateTablesProxyModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_moveRows".}
proc fQConcatenateTablesProxyModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_moveColumns".}
proc fcQConcatenateTablesProxyModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_moveColumns".}
proc fQConcatenateTablesProxyModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QConcatenateTablesProxyModel_virtualbase_fetchMore".}
proc fcQConcatenateTablesProxyModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_fetchMore".}
proc fQConcatenateTablesProxyModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_canFetchMore".}
proc fcQConcatenateTablesProxyModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_canFetchMore".}
proc fQConcatenateTablesProxyModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QConcatenateTablesProxyModel_virtualbase_sort".}
proc fcQConcatenateTablesProxyModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_sort".}
proc fQConcatenateTablesProxyModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QConcatenateTablesProxyModel_virtualbase_buddy".}
proc fcQConcatenateTablesProxyModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_buddy".}
proc fQConcatenateTablesProxyModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QConcatenateTablesProxyModel_virtualbase_match".}
proc fcQConcatenateTablesProxyModel_override_virtual_match(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_match".}
proc fQConcatenateTablesProxyModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QConcatenateTablesProxyModel_virtualbase_roleNames".}
proc fcQConcatenateTablesProxyModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_roleNames".}
proc fQConcatenateTablesProxyModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void{.importc: "QConcatenateTablesProxyModel_virtualbase_multiData".}
proc fcQConcatenateTablesProxyModel_override_virtual_multiData(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_multiData".}
proc fQConcatenateTablesProxyModel_virtualbase_submit(self: pointer, ): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_submit".}
proc fcQConcatenateTablesProxyModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_submit".}
proc fQConcatenateTablesProxyModel_virtualbase_revert(self: pointer, ): void{.importc: "QConcatenateTablesProxyModel_virtualbase_revert".}
proc fcQConcatenateTablesProxyModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_revert".}
proc fQConcatenateTablesProxyModel_virtualbase_resetInternalData(self: pointer, ): void{.importc: "QConcatenateTablesProxyModel_virtualbase_resetInternalData".}
proc fcQConcatenateTablesProxyModel_override_virtual_resetInternalData(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_resetInternalData".}
proc fQConcatenateTablesProxyModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_event".}
proc fcQConcatenateTablesProxyModel_override_virtual_event(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_event".}
proc fQConcatenateTablesProxyModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QConcatenateTablesProxyModel_virtualbase_eventFilter".}
proc fcQConcatenateTablesProxyModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_eventFilter".}
proc fQConcatenateTablesProxyModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QConcatenateTablesProxyModel_virtualbase_timerEvent".}
proc fcQConcatenateTablesProxyModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_timerEvent".}
proc fQConcatenateTablesProxyModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QConcatenateTablesProxyModel_virtualbase_childEvent".}
proc fcQConcatenateTablesProxyModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_childEvent".}
proc fQConcatenateTablesProxyModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QConcatenateTablesProxyModel_virtualbase_customEvent".}
proc fcQConcatenateTablesProxyModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_customEvent".}
proc fQConcatenateTablesProxyModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QConcatenateTablesProxyModel_virtualbase_connectNotify".}
proc fcQConcatenateTablesProxyModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_connectNotify".}
proc fQConcatenateTablesProxyModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QConcatenateTablesProxyModel_virtualbase_disconnectNotify".}
proc fcQConcatenateTablesProxyModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QConcatenateTablesProxyModel_override_virtual_disconnectNotify".}
proc fcQConcatenateTablesProxyModel_staticMetaObject(): pointer {.importc: "QConcatenateTablesProxyModel_staticMetaObject".}
proc fcQConcatenateTablesProxyModel_delete(self: pointer) {.importc: "QConcatenateTablesProxyModel_delete".}


func init*(T: type QConcatenateTablesProxyModel, h: ptr cQConcatenateTablesProxyModel): QConcatenateTablesProxyModel =
  T(h: h)
proc create*(T: type QConcatenateTablesProxyModel, ): QConcatenateTablesProxyModel =

  QConcatenateTablesProxyModel.init(fcQConcatenateTablesProxyModel_new())
proc create*(T: type QConcatenateTablesProxyModel, parent: gen_qobject.QObject): QConcatenateTablesProxyModel =

  QConcatenateTablesProxyModel.init(fcQConcatenateTablesProxyModel_new2(parent.h))
proc metaObject*(self: QConcatenateTablesProxyModel, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQConcatenateTablesProxyModel_metaObject(self.h))

proc metacast*(self: QConcatenateTablesProxyModel, param1: cstring): pointer =

  fcQConcatenateTablesProxyModel_metacast(self.h, param1)

proc metacall*(self: QConcatenateTablesProxyModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQConcatenateTablesProxyModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QConcatenateTablesProxyModel, s: cstring): string =

  let v_ms = fcQConcatenateTablesProxyModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sourceModels*(self: QConcatenateTablesProxyModel, ): seq[gen_qabstractitemmodel.QAbstractItemModel] =

  var v_ma = fcQConcatenateTablesProxyModel_sourceModels(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel.QAbstractItemModel](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QAbstractItemModel(h: v_outCast[i])
  vx_ret

proc addSourceModel*(self: QConcatenateTablesProxyModel, sourceModel: gen_qabstractitemmodel.QAbstractItemModel): void =

  fcQConcatenateTablesProxyModel_addSourceModel(self.h, sourceModel.h)

proc removeSourceModel*(self: QConcatenateTablesProxyModel, sourceModel: gen_qabstractitemmodel.QAbstractItemModel): void =

  fcQConcatenateTablesProxyModel_removeSourceModel(self.h, sourceModel.h)

proc mapFromSource*(self: QConcatenateTablesProxyModel, sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQConcatenateTablesProxyModel_mapFromSource(self.h, sourceIndex.h))

proc mapToSource*(self: QConcatenateTablesProxyModel, proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQConcatenateTablesProxyModel_mapToSource(self.h, proxyIndex.h))

proc data*(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQConcatenateTablesProxyModel_data(self.h, index.h, role))

proc setData*(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool =

  fcQConcatenateTablesProxyModel_setData(self.h, index.h, value.h, role)

proc itemData*(self: QConcatenateTablesProxyModel, proxyIndex: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant] =

  var v_mm = fcQConcatenateTablesProxyModel_itemData(self.h, proxyIndex.h)
  var vx_ret: Table[cint, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc setItemData*(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool =

  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQConcatenateTablesProxyModel_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc flags*(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag =

  gen_qnamespace.ItemFlag(fcQConcatenateTablesProxyModel_flags(self.h, index.h))

proc index*(self: QConcatenateTablesProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQConcatenateTablesProxyModel_index(self.h, row, column, parent.h))

proc parent*(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQConcatenateTablesProxyModel_parent(self.h, index.h))

proc rowCount*(self: QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel.QModelIndex): cint =

  fcQConcatenateTablesProxyModel_rowCount(self.h, parent.h)

proc headerData*(self: QConcatenateTablesProxyModel, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQConcatenateTablesProxyModel_headerData(self.h, section, cint(orientation), role))

proc columnCount*(self: QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel.QModelIndex): cint =

  fcQConcatenateTablesProxyModel_columnCount(self.h, parent.h)

proc mimeTypes*(self: QConcatenateTablesProxyModel, ): seq[string] =

  var v_ma = fcQConcatenateTablesProxyModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc mimeData*(self: QConcatenateTablesProxyModel, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData =

  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata.QMimeData(h: fcQConcatenateTablesProxyModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc canDropMimeData*(self: QConcatenateTablesProxyModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQConcatenateTablesProxyModel_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc dropMimeData*(self: QConcatenateTablesProxyModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQConcatenateTablesProxyModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc span*(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQConcatenateTablesProxyModel_span(self.h, index.h))

proc tr2*(_: type QConcatenateTablesProxyModel, s: cstring, c: cstring): string =

  let v_ms = fcQConcatenateTablesProxyModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QConcatenateTablesProxyModel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQConcatenateTablesProxyModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QConcatenateTablesProxyModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQConcatenateTablesProxyModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QConcatenateTablesProxyModelmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_metacall(self: ptr cQConcatenateTablesProxyModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_metacall ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QConcatenateTablesProxyModel(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_data(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQConcatenateTablesProxyModel_virtualbase_data(self.h, index.h, role))

type QConcatenateTablesProxyModeldataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
proc ondata*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModeldataBase, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModeldataBase, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_data(self: ptr cQConcatenateTablesProxyModel, slot: int, index: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_data ".} =
  type Cb = proc(super: QConcatenateTablesProxyModeldataBase, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, role: cint): auto =
    callVirtualBase_data(QConcatenateTablesProxyModel(h: self), index, role)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_setData(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool =


  fQConcatenateTablesProxyModel_virtualbase_setData(self.h, index.h, value.h, role)

type QConcatenateTablesProxyModelsetDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
proc onsetData*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_setData(self: ptr cQConcatenateTablesProxyModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_setData ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setData(QConcatenateTablesProxyModel(h: self), index, value, role)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qvariant.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_itemData(self: QConcatenateTablesProxyModel, proxyIndex: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant] =


  var v_mm = fQConcatenateTablesProxyModel_virtualbase_itemData(self.h, proxyIndex.h)
  var vx_ret: Table[cint, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QConcatenateTablesProxyModelitemDataBase* = proc(proxyIndex: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
proc onitemData*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelitemDataBase, proxyIndex: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelitemDataBase, proxyIndex: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_itemData(self: ptr cQConcatenateTablesProxyModel, slot: int, proxyIndex: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_itemData ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelitemDataBase, proxyIndex: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(proxyIndex: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_itemData(QConcatenateTablesProxyModel(h: self), proxyIndex)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: proxyIndex)


  let virtualReturn = nimfunc[](superCall, slotval1 )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[pointer](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = virtualReturn_v.h
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc callVirtualBase_setItemData(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool =

  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1


  fQConcatenateTablesProxyModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QConcatenateTablesProxyModelsetItemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
proc onsetItemData*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_setItemData(self: ptr cQConcatenateTablesProxyModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_setItemData ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): auto =
    callVirtualBase_setItemData(QConcatenateTablesProxyModel(h: self), index, roles)
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
proc callVirtualBase_flags(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag =


  gen_qnamespace.ItemFlag(fQConcatenateTablesProxyModel_virtualbase_flags(self.h, index.h))

type QConcatenateTablesProxyModelflagsBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
proc onflags*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_flags(self: ptr cQConcatenateTablesProxyModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_flags ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_flags(QConcatenateTablesProxyModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  cint(virtualReturn)
proc callVirtualBase_index(self: QConcatenateTablesProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQConcatenateTablesProxyModel_virtualbase_index(self.h, row, column, parent.h))

type QConcatenateTablesProxyModelindexBase* = proc(row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onindex*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_index(self: ptr cQConcatenateTablesProxyModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_index ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_index(QConcatenateTablesProxyModel(h: self), row, column, parent)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_parent(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQConcatenateTablesProxyModel_virtualbase_parent(self.h, index.h))

type QConcatenateTablesProxyModelparentBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onparent*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelparentBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelparentBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_parent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_parent(self: ptr cQConcatenateTablesProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_parent ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelparentBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_parent(QConcatenateTablesProxyModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_rowCount(self: QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel.QModelIndex): cint =


  fQConcatenateTablesProxyModel_virtualbase_rowCount(self.h, parent.h)

type QConcatenateTablesProxyModelrowCountBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): cint
proc onrowCount*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_rowCount(self: ptr cQConcatenateTablesProxyModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_rowCount ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_rowCount(QConcatenateTablesProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_headerData(self: QConcatenateTablesProxyModel, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQConcatenateTablesProxyModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QConcatenateTablesProxyModelheaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
proc onheaderData*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_headerData(self: ptr cQConcatenateTablesProxyModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_headerData ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, role: cint): auto =
    callVirtualBase_headerData(QConcatenateTablesProxyModel(h: self), section, orientation, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_columnCount(self: QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel.QModelIndex): cint =


  fQConcatenateTablesProxyModel_virtualbase_columnCount(self.h, parent.h)

type QConcatenateTablesProxyModelcolumnCountBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): cint
proc oncolumnCount*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelcolumnCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelcolumnCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_columnCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_columnCount(self: ptr cQConcatenateTablesProxyModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_columnCount ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelcolumnCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_columnCount(QConcatenateTablesProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mimeTypes(self: QConcatenateTablesProxyModel, ): seq[string] =


  var v_ma = fQConcatenateTablesProxyModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QConcatenateTablesProxyModelmimeTypesBase* = proc(): seq[string]
proc onmimeTypes*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelmimeTypesBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelmimeTypesBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_mimeTypes(self: ptr cQConcatenateTablesProxyModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_mimeTypes ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelmimeTypesBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mimeTypes(QConcatenateTablesProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_mimeData(self: QConcatenateTablesProxyModel, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData =

  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h


  gen_qmimedata.QMimeData(h: fQConcatenateTablesProxyModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QConcatenateTablesProxyModelmimeDataBase* = proc(indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
proc onmimeData*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_mimeData(self: ptr cQConcatenateTablesProxyModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_mimeData ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(indexes: seq[gen_qabstractitemmodel.QModelIndex]): auto =
    callVirtualBase_mimeData(QConcatenateTablesProxyModel(h: self), indexes)
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_canDropMimeData(self: QConcatenateTablesProxyModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQConcatenateTablesProxyModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QConcatenateTablesProxyModelcanDropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oncanDropMimeData*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_canDropMimeData(self: ptr cQConcatenateTablesProxyModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_canDropMimeData ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_canDropMimeData(QConcatenateTablesProxyModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_dropMimeData(self: QConcatenateTablesProxyModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQConcatenateTablesProxyModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QConcatenateTablesProxyModeldropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc ondropMimeData*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_dropMimeData(self: ptr cQConcatenateTablesProxyModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_dropMimeData ".} =
  type Cb = proc(super: QConcatenateTablesProxyModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_dropMimeData(QConcatenateTablesProxyModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_span(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize =


  gen_qsize.QSize(h: fQConcatenateTablesProxyModel_virtualbase_span(self.h, index.h))

type QConcatenateTablesProxyModelspanBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
proc onspan*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_span(self: ptr cQConcatenateTablesProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_span ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_span(QConcatenateTablesProxyModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sibling(self: QConcatenateTablesProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQConcatenateTablesProxyModel_virtualbase_sibling(self.h, row, column, idx.h))

type QConcatenateTablesProxyModelsiblingBase* = proc(row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onsibling*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_sibling(self: ptr cQConcatenateTablesProxyModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_sibling ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_sibling(QConcatenateTablesProxyModel(h: self), row, column, idx)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: idx)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_hasChildren(self: QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQConcatenateTablesProxyModel_virtualbase_hasChildren(self.h, parent.h)

type QConcatenateTablesProxyModelhasChildrenBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): bool
proc onhasChildren*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelhasChildrenBase, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelhasChildrenBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_hasChildren(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_hasChildren(self: ptr cQConcatenateTablesProxyModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_hasChildren ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelhasChildrenBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_hasChildren(QConcatenateTablesProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setHeaderData(self: QConcatenateTablesProxyModel, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool =


  fQConcatenateTablesProxyModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QConcatenateTablesProxyModelsetHeaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
proc onsetHeaderData*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_setHeaderData(self: ptr cQConcatenateTablesProxyModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_setHeaderData ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setHeaderData(QConcatenateTablesProxyModel(h: self), section, orientation, value, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = gen_qvariant.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_clearItemData(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQConcatenateTablesProxyModel_virtualbase_clearItemData(self.h, index.h)

type QConcatenateTablesProxyModelclearItemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex): bool
proc onclearItemData*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelclearItemDataBase, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelclearItemDataBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_clearItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_clearItemData(self: ptr cQConcatenateTablesProxyModel, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_clearItemData ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelclearItemDataBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_clearItemData(QConcatenateTablesProxyModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_supportedDropActions(self: QConcatenateTablesProxyModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQConcatenateTablesProxyModel_virtualbase_supportedDropActions(self.h))

type QConcatenateTablesProxyModelsupportedDropActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDropActions*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelsupportedDropActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_supportedDropActions(self: ptr cQConcatenateTablesProxyModel, slot: int): cint {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_supportedDropActions ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDropActions(QConcatenateTablesProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_supportedDragActions(self: QConcatenateTablesProxyModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQConcatenateTablesProxyModel_virtualbase_supportedDragActions(self.h))

type QConcatenateTablesProxyModelsupportedDragActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDragActions*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelsupportedDragActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_supportedDragActions(self: ptr cQConcatenateTablesProxyModel, slot: int): cint {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_supportedDragActions ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDragActions(QConcatenateTablesProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_insertRows(self: QConcatenateTablesProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQConcatenateTablesProxyModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QConcatenateTablesProxyModelinsertRowsBase* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oninsertRows*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_insertRows(self: ptr cQConcatenateTablesProxyModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_insertRows ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_insertRows(QConcatenateTablesProxyModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_insertColumns(self: QConcatenateTablesProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQConcatenateTablesProxyModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QConcatenateTablesProxyModelinsertColumnsBase* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oninsertColumns*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_insertColumns(self: ptr cQConcatenateTablesProxyModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_insertColumns ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_insertColumns(QConcatenateTablesProxyModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeRows(self: QConcatenateTablesProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQConcatenateTablesProxyModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QConcatenateTablesProxyModelremoveRowsBase* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc onremoveRows*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_removeRows(self: ptr cQConcatenateTablesProxyModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_removeRows ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_removeRows(QConcatenateTablesProxyModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeColumns(self: QConcatenateTablesProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQConcatenateTablesProxyModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QConcatenateTablesProxyModelremoveColumnsBase* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc onremoveColumns*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_removeColumns(self: ptr cQConcatenateTablesProxyModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_removeColumns ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_removeColumns(QConcatenateTablesProxyModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_moveRows(self: QConcatenateTablesProxyModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =


  fQConcatenateTablesProxyModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QConcatenateTablesProxyModelmoveRowsBase* = proc(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_moveRows(self: ptr cQConcatenateTablesProxyModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_moveRows ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveRows(QConcatenateTablesProxyModel(h: self), sourceParent, sourceRow, count, destinationParent, destinationChild)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_moveColumns(self: QConcatenateTablesProxyModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =


  fQConcatenateTablesProxyModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QConcatenateTablesProxyModelmoveColumnsBase* = proc(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_moveColumns(self: ptr cQConcatenateTablesProxyModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_moveColumns ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveColumns(QConcatenateTablesProxyModel(h: self), sourceParent, sourceColumn, count, destinationParent, destinationChild)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_fetchMore(self: QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel.QModelIndex): void =


  fQConcatenateTablesProxyModel_virtualbase_fetchMore(self.h, parent.h)

type QConcatenateTablesProxyModelfetchMoreBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): void
proc onfetchMore*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_fetchMore(self: ptr cQConcatenateTablesProxyModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_fetchMore ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_fetchMore(QConcatenateTablesProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_canFetchMore(self: QConcatenateTablesProxyModel, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQConcatenateTablesProxyModel_virtualbase_canFetchMore(self.h, parent.h)

type QConcatenateTablesProxyModelcanFetchMoreBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): bool
proc oncanFetchMore*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_canFetchMore(self: ptr cQConcatenateTablesProxyModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_canFetchMore ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_canFetchMore(QConcatenateTablesProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_sort(self: QConcatenateTablesProxyModel, column: cint, order: gen_qnamespace.SortOrder): void =


  fQConcatenateTablesProxyModel_virtualbase_sort(self.h, column, cint(order))

type QConcatenateTablesProxyModelsortBase* = proc(column: cint, order: gen_qnamespace.SortOrder): void
proc onsort*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_sort(self: ptr cQConcatenateTablesProxyModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_sort ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, order: gen_qnamespace.SortOrder): auto =
    callVirtualBase_sort(QConcatenateTablesProxyModel(h: self), column, order)
  let slotval1 = column

  let slotval2 = gen_qnamespace.SortOrder(order)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_buddy(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQConcatenateTablesProxyModel_virtualbase_buddy(self.h, index.h))

type QConcatenateTablesProxyModelbuddyBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onbuddy*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_buddy(self: ptr cQConcatenateTablesProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_buddy ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_buddy(QConcatenateTablesProxyModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_match(self: QConcatenateTablesProxyModel, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex] =


  var v_ma = fQConcatenateTablesProxyModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

type QConcatenateTablesProxyModelmatchBase* = proc(start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
proc onmatch*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_match(self: ptr cQConcatenateTablesProxyModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_match ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): auto =
    callVirtualBase_match(QConcatenateTablesProxyModel(h: self), start, role, value, hits, flags)
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
proc callVirtualBase_roleNames(self: QConcatenateTablesProxyModel, ): Table[cint,seq[byte]] =


  var v_mm = fQConcatenateTablesProxyModel_virtualbase_roleNames(self.h)
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

type QConcatenateTablesProxyModelroleNamesBase* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelroleNamesBase): Table[cint,seq[byte]]) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelroleNamesBase): Table[cint,seq[byte]]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_roleNames(self: ptr cQConcatenateTablesProxyModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_roleNames ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelroleNamesBase): Table[cint,seq[byte]]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_roleNames(QConcatenateTablesProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc callVirtualBase_multiData(self: QConcatenateTablesProxyModel, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void =


  fQConcatenateTablesProxyModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

type QConcatenateTablesProxyModelmultiDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
proc onmultiData*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelmultiDataBase, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelmultiDataBase, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_multiData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_multiData(self: ptr cQConcatenateTablesProxyModel, slot: int, index: pointer, roleDataSpan: pointer): void {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_multiData ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelmultiDataBase, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): auto =
    callVirtualBase_multiData(QConcatenateTablesProxyModel(h: self), index, roleDataSpan)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemmodel.QModelRoleDataSpan(h: roleDataSpan)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_submit(self: QConcatenateTablesProxyModel, ): bool =


  fQConcatenateTablesProxyModel_virtualbase_submit(self.h)

type QConcatenateTablesProxyModelsubmitBase* = proc(): bool
proc onsubmit*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelsubmitBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelsubmitBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_submit(self: ptr cQConcatenateTablesProxyModel, slot: int): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_submit ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelsubmitBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_submit(QConcatenateTablesProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_revert(self: QConcatenateTablesProxyModel, ): void =


  fQConcatenateTablesProxyModel_virtualbase_revert(self.h)

type QConcatenateTablesProxyModelrevertBase* = proc(): void
proc onrevert*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelrevertBase): void) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelrevertBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_revert(self: ptr cQConcatenateTablesProxyModel, slot: int): void {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_revert ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelrevertBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_revert(QConcatenateTablesProxyModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_resetInternalData(self: QConcatenateTablesProxyModel, ): void =


  fQConcatenateTablesProxyModel_virtualbase_resetInternalData(self.h)

type QConcatenateTablesProxyModelresetInternalDataBase* = proc(): void
proc onresetInternalData*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelresetInternalDataBase): void) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelresetInternalDataBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_resetInternalData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_resetInternalData(self: ptr cQConcatenateTablesProxyModel, slot: int): void {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_resetInternalData ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelresetInternalDataBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_resetInternalData(QConcatenateTablesProxyModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_event(self: QConcatenateTablesProxyModel, event: gen_qcoreevent.QEvent): bool =


  fQConcatenateTablesProxyModel_virtualbase_event(self.h, event.h)

type QConcatenateTablesProxyModeleventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModeleventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModeleventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_event(self: ptr cQConcatenateTablesProxyModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_event ".} =
  type Cb = proc(super: QConcatenateTablesProxyModeleventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QConcatenateTablesProxyModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QConcatenateTablesProxyModel, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQConcatenateTablesProxyModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QConcatenateTablesProxyModeleventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_eventFilter(self: ptr cQConcatenateTablesProxyModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_eventFilter ".} =
  type Cb = proc(super: QConcatenateTablesProxyModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QConcatenateTablesProxyModel(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QConcatenateTablesProxyModel, event: gen_qcoreevent.QTimerEvent): void =


  fQConcatenateTablesProxyModel_virtualbase_timerEvent(self.h, event.h)

type QConcatenateTablesProxyModeltimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_timerEvent(self: ptr cQConcatenateTablesProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_timerEvent ".} =
  type Cb = proc(super: QConcatenateTablesProxyModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QConcatenateTablesProxyModel(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QConcatenateTablesProxyModel, event: gen_qcoreevent.QChildEvent): void =


  fQConcatenateTablesProxyModel_virtualbase_childEvent(self.h, event.h)

type QConcatenateTablesProxyModelchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_childEvent(self: ptr cQConcatenateTablesProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_childEvent ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QConcatenateTablesProxyModel(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QConcatenateTablesProxyModel, event: gen_qcoreevent.QEvent): void =


  fQConcatenateTablesProxyModel_virtualbase_customEvent(self.h, event.h)

type QConcatenateTablesProxyModelcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_customEvent(self: ptr cQConcatenateTablesProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_customEvent ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QConcatenateTablesProxyModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QConcatenateTablesProxyModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQConcatenateTablesProxyModel_virtualbase_connectNotify(self.h, signal.h)

type QConcatenateTablesProxyModelconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_connectNotify(self: ptr cQConcatenateTablesProxyModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_connectNotify ".} =
  type Cb = proc(super: QConcatenateTablesProxyModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QConcatenateTablesProxyModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QConcatenateTablesProxyModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQConcatenateTablesProxyModel_virtualbase_disconnectNotify(self.h, signal.h)

type QConcatenateTablesProxyModeldisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QConcatenateTablesProxyModel, slot: proc(super: QConcatenateTablesProxyModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QConcatenateTablesProxyModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQConcatenateTablesProxyModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QConcatenateTablesProxyModel_disconnectNotify(self: ptr cQConcatenateTablesProxyModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QConcatenateTablesProxyModel_disconnectNotify ".} =
  type Cb = proc(super: QConcatenateTablesProxyModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QConcatenateTablesProxyModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QConcatenateTablesProxyModel): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQConcatenateTablesProxyModel_staticMetaObject())
proc delete*(self: QConcatenateTablesProxyModel) =
  fcQConcatenateTablesProxyModel_delete(self.h)
