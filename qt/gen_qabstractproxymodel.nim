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
{.compile("gen_qabstractproxymodel.cpp", cflags).}


import gen_qabstractproxymodel_types
export gen_qabstractproxymodel_types

import
  gen_qabstractitemmodel,
  gen_qcoreevent,
  gen_qitemselectionmodel,
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
  gen_qitemselectionmodel,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qvariant

type cQAbstractProxyModel*{.exportc: "QAbstractProxyModel", incompleteStruct.} = object

proc fcQAbstractProxyModel_new(): ptr cQAbstractProxyModel {.importc: "QAbstractProxyModel_new".}
proc fcQAbstractProxyModel_new2(parent: pointer): ptr cQAbstractProxyModel {.importc: "QAbstractProxyModel_new2".}
proc fcQAbstractProxyModel_metaObject(self: pointer, ): pointer {.importc: "QAbstractProxyModel_metaObject".}
proc fcQAbstractProxyModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractProxyModel_metacast".}
proc fcQAbstractProxyModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractProxyModel_metacall".}
proc fcQAbstractProxyModel_tr(s: cstring): struct_miqt_string {.importc: "QAbstractProxyModel_tr".}
proc fcQAbstractProxyModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractProxyModel_trUtf8".}
proc fcQAbstractProxyModel_setSourceModel(self: pointer, sourceModel: pointer): void {.importc: "QAbstractProxyModel_setSourceModel".}
proc fcQAbstractProxyModel_sourceModel(self: pointer, ): pointer {.importc: "QAbstractProxyModel_sourceModel".}
proc fcQAbstractProxyModel_mapToSource(self: pointer, proxyIndex: pointer): pointer {.importc: "QAbstractProxyModel_mapToSource".}
proc fcQAbstractProxyModel_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.importc: "QAbstractProxyModel_mapFromSource".}
proc fcQAbstractProxyModel_mapSelectionToSource(self: pointer, selection: pointer): pointer {.importc: "QAbstractProxyModel_mapSelectionToSource".}
proc fcQAbstractProxyModel_mapSelectionFromSource(self: pointer, selection: pointer): pointer {.importc: "QAbstractProxyModel_mapSelectionFromSource".}
proc fcQAbstractProxyModel_submit(self: pointer, ): bool {.importc: "QAbstractProxyModel_submit".}
proc fcQAbstractProxyModel_revert(self: pointer, ): void {.importc: "QAbstractProxyModel_revert".}
proc fcQAbstractProxyModel_data(self: pointer, proxyIndex: pointer, role: cint): pointer {.importc: "QAbstractProxyModel_data".}
proc fcQAbstractProxyModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QAbstractProxyModel_headerData".}
proc fcQAbstractProxyModel_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QAbstractProxyModel_itemData".}
proc fcQAbstractProxyModel_flags(self: pointer, index: pointer): cint {.importc: "QAbstractProxyModel_flags".}
proc fcQAbstractProxyModel_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QAbstractProxyModel_setData".}
proc fcQAbstractProxyModel_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QAbstractProxyModel_setItemData".}
proc fcQAbstractProxyModel_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QAbstractProxyModel_setHeaderData".}
proc fcQAbstractProxyModel_buddy(self: pointer, index: pointer): pointer {.importc: "QAbstractProxyModel_buddy".}
proc fcQAbstractProxyModel_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QAbstractProxyModel_canFetchMore".}
proc fcQAbstractProxyModel_fetchMore(self: pointer, parent: pointer): void {.importc: "QAbstractProxyModel_fetchMore".}
proc fcQAbstractProxyModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QAbstractProxyModel_sort".}
proc fcQAbstractProxyModel_span(self: pointer, index: pointer): pointer {.importc: "QAbstractProxyModel_span".}
proc fcQAbstractProxyModel_hasChildren(self: pointer, parent: pointer): bool {.importc: "QAbstractProxyModel_hasChildren".}
proc fcQAbstractProxyModel_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QAbstractProxyModel_sibling".}
proc fcQAbstractProxyModel_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QAbstractProxyModel_mimeData".}
proc fcQAbstractProxyModel_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractProxyModel_canDropMimeData".}
proc fcQAbstractProxyModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QAbstractProxyModel_dropMimeData".}
proc fcQAbstractProxyModel_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QAbstractProxyModel_mimeTypes".}
proc fcQAbstractProxyModel_supportedDragActions(self: pointer, ): cint {.importc: "QAbstractProxyModel_supportedDragActions".}
proc fcQAbstractProxyModel_supportedDropActions(self: pointer, ): cint {.importc: "QAbstractProxyModel_supportedDropActions".}
proc fcQAbstractProxyModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractProxyModel_tr2".}
proc fcQAbstractProxyModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractProxyModel_tr3".}
proc fcQAbstractProxyModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractProxyModel_trUtf82".}
proc fcQAbstractProxyModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractProxyModel_trUtf83".}
proc fQAbstractProxyModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractProxyModel_virtualbase_metacall".}
proc fcQAbstractProxyModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_metacall".}
proc fQAbstractProxyModel_virtualbase_setSourceModel(self: pointer, sourceModel: pointer): void{.importc: "QAbstractProxyModel_virtualbase_setSourceModel".}
proc fcQAbstractProxyModel_override_virtual_setSourceModel(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_setSourceModel".}
proc fcQAbstractProxyModel_override_virtual_mapToSource(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_mapToSource".}
proc fcQAbstractProxyModel_override_virtual_mapFromSource(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_mapFromSource".}
proc fQAbstractProxyModel_virtualbase_mapSelectionToSource(self: pointer, selection: pointer): pointer{.importc: "QAbstractProxyModel_virtualbase_mapSelectionToSource".}
proc fcQAbstractProxyModel_override_virtual_mapSelectionToSource(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_mapSelectionToSource".}
proc fQAbstractProxyModel_virtualbase_mapSelectionFromSource(self: pointer, selection: pointer): pointer{.importc: "QAbstractProxyModel_virtualbase_mapSelectionFromSource".}
proc fcQAbstractProxyModel_override_virtual_mapSelectionFromSource(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_mapSelectionFromSource".}
proc fQAbstractProxyModel_virtualbase_submit(self: pointer, ): bool{.importc: "QAbstractProxyModel_virtualbase_submit".}
proc fcQAbstractProxyModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_submit".}
proc fQAbstractProxyModel_virtualbase_revert(self: pointer, ): void{.importc: "QAbstractProxyModel_virtualbase_revert".}
proc fcQAbstractProxyModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_revert".}
proc fQAbstractProxyModel_virtualbase_data(self: pointer, proxyIndex: pointer, role: cint): pointer{.importc: "QAbstractProxyModel_virtualbase_data".}
proc fcQAbstractProxyModel_override_virtual_data(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_data".}
proc fQAbstractProxyModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QAbstractProxyModel_virtualbase_headerData".}
proc fcQAbstractProxyModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_headerData".}
proc fQAbstractProxyModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QAbstractProxyModel_virtualbase_itemData".}
proc fcQAbstractProxyModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_itemData".}
proc fQAbstractProxyModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QAbstractProxyModel_virtualbase_flags".}
proc fcQAbstractProxyModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_flags".}
proc fQAbstractProxyModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QAbstractProxyModel_virtualbase_setData".}
proc fcQAbstractProxyModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_setData".}
proc fQAbstractProxyModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QAbstractProxyModel_virtualbase_setItemData".}
proc fcQAbstractProxyModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_setItemData".}
proc fQAbstractProxyModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QAbstractProxyModel_virtualbase_setHeaderData".}
proc fcQAbstractProxyModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_setHeaderData".}
proc fQAbstractProxyModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QAbstractProxyModel_virtualbase_buddy".}
proc fcQAbstractProxyModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_buddy".}
proc fQAbstractProxyModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QAbstractProxyModel_virtualbase_canFetchMore".}
proc fcQAbstractProxyModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_canFetchMore".}
proc fQAbstractProxyModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QAbstractProxyModel_virtualbase_fetchMore".}
proc fcQAbstractProxyModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_fetchMore".}
proc fQAbstractProxyModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QAbstractProxyModel_virtualbase_sort".}
proc fcQAbstractProxyModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_sort".}
proc fQAbstractProxyModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QAbstractProxyModel_virtualbase_span".}
proc fcQAbstractProxyModel_override_virtual_span(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_span".}
proc fQAbstractProxyModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool{.importc: "QAbstractProxyModel_virtualbase_hasChildren".}
proc fcQAbstractProxyModel_override_virtual_hasChildren(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_hasChildren".}
proc fQAbstractProxyModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QAbstractProxyModel_virtualbase_sibling".}
proc fcQAbstractProxyModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_sibling".}
proc fQAbstractProxyModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QAbstractProxyModel_virtualbase_mimeData".}
proc fcQAbstractProxyModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_mimeData".}
proc fQAbstractProxyModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QAbstractProxyModel_virtualbase_canDropMimeData".}
proc fcQAbstractProxyModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_canDropMimeData".}
proc fQAbstractProxyModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QAbstractProxyModel_virtualbase_dropMimeData".}
proc fcQAbstractProxyModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_dropMimeData".}
proc fQAbstractProxyModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QAbstractProxyModel_virtualbase_mimeTypes".}
proc fcQAbstractProxyModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_mimeTypes".}
proc fQAbstractProxyModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QAbstractProxyModel_virtualbase_supportedDragActions".}
proc fcQAbstractProxyModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_supportedDragActions".}
proc fQAbstractProxyModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QAbstractProxyModel_virtualbase_supportedDropActions".}
proc fcQAbstractProxyModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_supportedDropActions".}
proc fcQAbstractProxyModel_override_virtual_index(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_index".}
proc fcQAbstractProxyModel_override_virtual_parent(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_parent".}
proc fcQAbstractProxyModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_rowCount".}
proc fcQAbstractProxyModel_override_virtual_columnCount(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_columnCount".}
proc fQAbstractProxyModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QAbstractProxyModel_virtualbase_insertRows".}
proc fcQAbstractProxyModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_insertRows".}
proc fQAbstractProxyModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QAbstractProxyModel_virtualbase_insertColumns".}
proc fcQAbstractProxyModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_insertColumns".}
proc fQAbstractProxyModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QAbstractProxyModel_virtualbase_removeRows".}
proc fcQAbstractProxyModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_removeRows".}
proc fQAbstractProxyModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QAbstractProxyModel_virtualbase_removeColumns".}
proc fcQAbstractProxyModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_removeColumns".}
proc fQAbstractProxyModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QAbstractProxyModel_virtualbase_moveRows".}
proc fcQAbstractProxyModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_moveRows".}
proc fQAbstractProxyModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QAbstractProxyModel_virtualbase_moveColumns".}
proc fcQAbstractProxyModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_moveColumns".}
proc fQAbstractProxyModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QAbstractProxyModel_virtualbase_match".}
proc fcQAbstractProxyModel_override_virtual_match(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_match".}
proc fQAbstractProxyModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QAbstractProxyModel_virtualbase_roleNames".}
proc fcQAbstractProxyModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_roleNames".}
proc fQAbstractProxyModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractProxyModel_virtualbase_event".}
proc fcQAbstractProxyModel_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_event".}
proc fQAbstractProxyModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractProxyModel_virtualbase_eventFilter".}
proc fcQAbstractProxyModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_eventFilter".}
proc fQAbstractProxyModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractProxyModel_virtualbase_timerEvent".}
proc fcQAbstractProxyModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_timerEvent".}
proc fQAbstractProxyModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractProxyModel_virtualbase_childEvent".}
proc fcQAbstractProxyModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_childEvent".}
proc fQAbstractProxyModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractProxyModel_virtualbase_customEvent".}
proc fcQAbstractProxyModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_customEvent".}
proc fQAbstractProxyModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractProxyModel_virtualbase_connectNotify".}
proc fcQAbstractProxyModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_connectNotify".}
proc fQAbstractProxyModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractProxyModel_virtualbase_disconnectNotify".}
proc fcQAbstractProxyModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractProxyModel_override_virtual_disconnectNotify".}
proc fcQAbstractProxyModel_staticMetaObject(): pointer {.importc: "QAbstractProxyModel_staticMetaObject".}
proc fcQAbstractProxyModel_delete(self: pointer) {.importc: "QAbstractProxyModel_delete".}


func init*(T: type QAbstractProxyModel, h: ptr cQAbstractProxyModel): QAbstractProxyModel =
  T(h: h)
proc create*(T: type QAbstractProxyModel, ): QAbstractProxyModel =

  QAbstractProxyModel.init(fcQAbstractProxyModel_new())
proc create*(T: type QAbstractProxyModel, parent: gen_qobject.QObject): QAbstractProxyModel =

  QAbstractProxyModel.init(fcQAbstractProxyModel_new2(parent.h))
proc metaObject*(self: QAbstractProxyModel, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAbstractProxyModel_metaObject(self.h))

proc metacast*(self: QAbstractProxyModel, param1: cstring): pointer =

  fcQAbstractProxyModel_metacast(self.h, param1)

proc metacall*(self: QAbstractProxyModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAbstractProxyModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAbstractProxyModel, s: cstring): string =

  let v_ms = fcQAbstractProxyModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QAbstractProxyModel, s: cstring): string =

  let v_ms = fcQAbstractProxyModel_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSourceModel*(self: QAbstractProxyModel, sourceModel: gen_qabstractitemmodel.QAbstractItemModel): void =

  fcQAbstractProxyModel_setSourceModel(self.h, sourceModel.h)

proc sourceModel*(self: QAbstractProxyModel, ): gen_qabstractitemmodel.QAbstractItemModel =

  gen_qabstractitemmodel.QAbstractItemModel(h: fcQAbstractProxyModel_sourceModel(self.h))

proc mapToSource*(self: QAbstractProxyModel, proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQAbstractProxyModel_mapToSource(self.h, proxyIndex.h))

proc mapFromSource*(self: QAbstractProxyModel, sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQAbstractProxyModel_mapFromSource(self.h, sourceIndex.h))

proc mapSelectionToSource*(self: QAbstractProxyModel, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection =

  gen_qitemselectionmodel.QItemSelection(h: fcQAbstractProxyModel_mapSelectionToSource(self.h, selection.h))

proc mapSelectionFromSource*(self: QAbstractProxyModel, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection =

  gen_qitemselectionmodel.QItemSelection(h: fcQAbstractProxyModel_mapSelectionFromSource(self.h, selection.h))

proc submit*(self: QAbstractProxyModel, ): bool =

  fcQAbstractProxyModel_submit(self.h)

proc revert*(self: QAbstractProxyModel, ): void =

  fcQAbstractProxyModel_revert(self.h)

proc data*(self: QAbstractProxyModel, proxyIndex: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQAbstractProxyModel_data(self.h, proxyIndex.h, role))

proc headerData*(self: QAbstractProxyModel, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQAbstractProxyModel_headerData(self.h, section, cint(orientation), role))

proc itemData*(self: QAbstractProxyModel, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant] =

  var v_mm = fcQAbstractProxyModel_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc flags*(self: QAbstractProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag =

  gen_qnamespace.ItemFlag(fcQAbstractProxyModel_flags(self.h, index.h))

proc setData*(self: QAbstractProxyModel, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool =

  fcQAbstractProxyModel_setData(self.h, index.h, value.h, role)

proc setItemData*(self: QAbstractProxyModel, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool =

  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQAbstractProxyModel_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc setHeaderData*(self: QAbstractProxyModel, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool =

  fcQAbstractProxyModel_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc buddy*(self: QAbstractProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQAbstractProxyModel_buddy(self.h, index.h))

proc canFetchMore*(self: QAbstractProxyModel, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQAbstractProxyModel_canFetchMore(self.h, parent.h)

proc fetchMore*(self: QAbstractProxyModel, parent: gen_qabstractitemmodel.QModelIndex): void =

  fcQAbstractProxyModel_fetchMore(self.h, parent.h)

proc sort*(self: QAbstractProxyModel, column: cint, order: gen_qnamespace.SortOrder): void =

  fcQAbstractProxyModel_sort(self.h, column, cint(order))

proc span*(self: QAbstractProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQAbstractProxyModel_span(self.h, index.h))

proc hasChildren*(self: QAbstractProxyModel, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQAbstractProxyModel_hasChildren(self.h, parent.h)

proc sibling*(self: QAbstractProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQAbstractProxyModel_sibling(self.h, row, column, idx.h))

proc mimeData*(self: QAbstractProxyModel, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData =

  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata.QMimeData(h: fcQAbstractProxyModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc canDropMimeData*(self: QAbstractProxyModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQAbstractProxyModel_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc dropMimeData*(self: QAbstractProxyModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQAbstractProxyModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc mimeTypes*(self: QAbstractProxyModel, ): seq[string] =

  var v_ma = fcQAbstractProxyModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc supportedDragActions*(self: QAbstractProxyModel, ): gen_qnamespace.DropAction =

  gen_qnamespace.DropAction(fcQAbstractProxyModel_supportedDragActions(self.h))

proc supportedDropActions*(self: QAbstractProxyModel, ): gen_qnamespace.DropAction =

  gen_qnamespace.DropAction(fcQAbstractProxyModel_supportedDropActions(self.h))

proc tr2*(_: type QAbstractProxyModel, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractProxyModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAbstractProxyModel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractProxyModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QAbstractProxyModel, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractProxyModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAbstractProxyModel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractProxyModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QAbstractProxyModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAbstractProxyModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractProxyModelmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_metacall(self: ptr cQAbstractProxyModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractProxyModel_metacall ".} =
  type Cb = proc(super: QAbstractProxyModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAbstractProxyModel(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setSourceModel(self: QAbstractProxyModel, sourceModel: gen_qabstractitemmodel.QAbstractItemModel): void =


  fQAbstractProxyModel_virtualbase_setSourceModel(self.h, sourceModel.h)

type QAbstractProxyModelsetSourceModelBase* = proc(sourceModel: gen_qabstractitemmodel.QAbstractItemModel): void
proc onsetSourceModel*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelsetSourceModelBase, sourceModel: gen_qabstractitemmodel.QAbstractItemModel): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelsetSourceModelBase, sourceModel: gen_qabstractitemmodel.QAbstractItemModel): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_setSourceModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_setSourceModel(self: ptr cQAbstractProxyModel, slot: int, sourceModel: pointer): void {.exportc: "miqt_exec_callback_QAbstractProxyModel_setSourceModel ".} =
  type Cb = proc(super: QAbstractProxyModelsetSourceModelBase, sourceModel: gen_qabstractitemmodel.QAbstractItemModel): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceModel: gen_qabstractitemmodel.QAbstractItemModel): auto =
    callVirtualBase_setSourceModel(QAbstractProxyModel(h: self), sourceModel)
  let slotval1 = gen_qabstractitemmodel.QAbstractItemModel(h: sourceModel)


  nimfunc[](superCall, slotval1)
type QAbstractProxyModelmapToSourceBase* = proc(proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onmapToSource*(self: QAbstractProxyModel, slot: proc(proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_mapToSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_mapToSource(self: ptr cQAbstractProxyModel, slot: int, proxyIndex: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_mapToSource ".} =
  type Cb = proc(proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: proxyIndex)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QAbstractProxyModelmapFromSourceBase* = proc(sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onmapFromSource*(self: QAbstractProxyModel, slot: proc(sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_mapFromSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_mapFromSource(self: ptr cQAbstractProxyModel, slot: int, sourceIndex: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_mapFromSource ".} =
  type Cb = proc(sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceIndex)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
proc callVirtualBase_mapSelectionToSource(self: QAbstractProxyModel, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection =


  gen_qitemselectionmodel.QItemSelection(h: fQAbstractProxyModel_virtualbase_mapSelectionToSource(self.h, selection.h))

type QAbstractProxyModelmapSelectionToSourceBase* = proc(selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
proc onmapSelectionToSource*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelmapSelectionToSourceBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelmapSelectionToSourceBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_mapSelectionToSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_mapSelectionToSource(self: ptr cQAbstractProxyModel, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_mapSelectionToSource ".} =
  type Cb = proc(super: QAbstractProxyModelmapSelectionToSourceBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selection: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_mapSelectionToSource(QAbstractProxyModel(h: self), selection)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_mapSelectionFromSource(self: QAbstractProxyModel, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection =


  gen_qitemselectionmodel.QItemSelection(h: fQAbstractProxyModel_virtualbase_mapSelectionFromSource(self.h, selection.h))

type QAbstractProxyModelmapSelectionFromSourceBase* = proc(selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
proc onmapSelectionFromSource*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelmapSelectionFromSourceBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelmapSelectionFromSourceBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_mapSelectionFromSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_mapSelectionFromSource(self: ptr cQAbstractProxyModel, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_mapSelectionFromSource ".} =
  type Cb = proc(super: QAbstractProxyModelmapSelectionFromSourceBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selection: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_mapSelectionFromSource(QAbstractProxyModel(h: self), selection)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_submit(self: QAbstractProxyModel, ): bool =


  fQAbstractProxyModel_virtualbase_submit(self.h)

type QAbstractProxyModelsubmitBase* = proc(): bool
proc onsubmit*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelsubmitBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelsubmitBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_submit(self: ptr cQAbstractProxyModel, slot: int): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_submit ".} =
  type Cb = proc(super: QAbstractProxyModelsubmitBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_submit(QAbstractProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_revert(self: QAbstractProxyModel, ): void =


  fQAbstractProxyModel_virtualbase_revert(self.h)

type QAbstractProxyModelrevertBase* = proc(): void
proc onrevert*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelrevertBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelrevertBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_revert(self: ptr cQAbstractProxyModel, slot: int): void {.exportc: "miqt_exec_callback_QAbstractProxyModel_revert ".} =
  type Cb = proc(super: QAbstractProxyModelrevertBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_revert(QAbstractProxyModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_data(self: QAbstractProxyModel, proxyIndex: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQAbstractProxyModel_virtualbase_data(self.h, proxyIndex.h, role))

type QAbstractProxyModeldataBase* = proc(proxyIndex: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
proc ondata*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModeldataBase, proxyIndex: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModeldataBase, proxyIndex: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_data(self: ptr cQAbstractProxyModel, slot: int, proxyIndex: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_data ".} =
  type Cb = proc(super: QAbstractProxyModeldataBase, proxyIndex: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(proxyIndex: gen_qabstractitemmodel.QModelIndex, role: cint): auto =
    callVirtualBase_data(QAbstractProxyModel(h: self), proxyIndex, role)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: proxyIndex)

  let slotval2 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_headerData(self: QAbstractProxyModel, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQAbstractProxyModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QAbstractProxyModelheaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
proc onheaderData*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_headerData(self: ptr cQAbstractProxyModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_headerData ".} =
  type Cb = proc(super: QAbstractProxyModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, role: cint): auto =
    callVirtualBase_headerData(QAbstractProxyModel(h: self), section, orientation, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_itemData(self: QAbstractProxyModel, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant] =


  var v_mm = fQAbstractProxyModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QAbstractProxyModelitemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
proc onitemData*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_itemData(self: ptr cQAbstractProxyModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QAbstractProxyModel_itemData ".} =
  type Cb = proc(super: QAbstractProxyModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_itemData(QAbstractProxyModel(h: self), index)
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
proc callVirtualBase_flags(self: QAbstractProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag =


  gen_qnamespace.ItemFlag(fQAbstractProxyModel_virtualbase_flags(self.h, index.h))

type QAbstractProxyModelflagsBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
proc onflags*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_flags(self: ptr cQAbstractProxyModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QAbstractProxyModel_flags ".} =
  type Cb = proc(super: QAbstractProxyModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_flags(QAbstractProxyModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  cint(virtualReturn)
proc callVirtualBase_setData(self: QAbstractProxyModel, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool =


  fQAbstractProxyModel_virtualbase_setData(self.h, index.h, value.h, role)

type QAbstractProxyModelsetDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
proc onsetData*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_setData(self: ptr cQAbstractProxyModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_setData ".} =
  type Cb = proc(super: QAbstractProxyModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setData(QAbstractProxyModel(h: self), index, value, role)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qvariant.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setItemData(self: QAbstractProxyModel, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool =

  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1


  fQAbstractProxyModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QAbstractProxyModelsetItemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
proc onsetItemData*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_setItemData(self: ptr cQAbstractProxyModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_setItemData ".} =
  type Cb = proc(super: QAbstractProxyModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): auto =
    callVirtualBase_setItemData(QAbstractProxyModel(h: self), index, roles)
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
proc callVirtualBase_setHeaderData(self: QAbstractProxyModel, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool =


  fQAbstractProxyModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QAbstractProxyModelsetHeaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
proc onsetHeaderData*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_setHeaderData(self: ptr cQAbstractProxyModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_setHeaderData ".} =
  type Cb = proc(super: QAbstractProxyModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setHeaderData(QAbstractProxyModel(h: self), section, orientation, value, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = gen_qvariant.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_buddy(self: QAbstractProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQAbstractProxyModel_virtualbase_buddy(self.h, index.h))

type QAbstractProxyModelbuddyBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onbuddy*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_buddy(self: ptr cQAbstractProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_buddy ".} =
  type Cb = proc(super: QAbstractProxyModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_buddy(QAbstractProxyModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_canFetchMore(self: QAbstractProxyModel, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQAbstractProxyModel_virtualbase_canFetchMore(self.h, parent.h)

type QAbstractProxyModelcanFetchMoreBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): bool
proc oncanFetchMore*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_canFetchMore(self: ptr cQAbstractProxyModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_canFetchMore ".} =
  type Cb = proc(super: QAbstractProxyModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_canFetchMore(QAbstractProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_fetchMore(self: QAbstractProxyModel, parent: gen_qabstractitemmodel.QModelIndex): void =


  fQAbstractProxyModel_virtualbase_fetchMore(self.h, parent.h)

type QAbstractProxyModelfetchMoreBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): void
proc onfetchMore*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_fetchMore(self: ptr cQAbstractProxyModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QAbstractProxyModel_fetchMore ".} =
  type Cb = proc(super: QAbstractProxyModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_fetchMore(QAbstractProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sort(self: QAbstractProxyModel, column: cint, order: gen_qnamespace.SortOrder): void =


  fQAbstractProxyModel_virtualbase_sort(self.h, column, cint(order))

type QAbstractProxyModelsortBase* = proc(column: cint, order: gen_qnamespace.SortOrder): void
proc onsort*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_sort(self: ptr cQAbstractProxyModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QAbstractProxyModel_sort ".} =
  type Cb = proc(super: QAbstractProxyModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, order: gen_qnamespace.SortOrder): auto =
    callVirtualBase_sort(QAbstractProxyModel(h: self), column, order)
  let slotval1 = column

  let slotval2 = gen_qnamespace.SortOrder(order)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_span(self: QAbstractProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize =


  gen_qsize.QSize(h: fQAbstractProxyModel_virtualbase_span(self.h, index.h))

type QAbstractProxyModelspanBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
proc onspan*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_span(self: ptr cQAbstractProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_span ".} =
  type Cb = proc(super: QAbstractProxyModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_span(QAbstractProxyModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_hasChildren(self: QAbstractProxyModel, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQAbstractProxyModel_virtualbase_hasChildren(self.h, parent.h)

type QAbstractProxyModelhasChildrenBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): bool
proc onhasChildren*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelhasChildrenBase, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelhasChildrenBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_hasChildren(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_hasChildren(self: ptr cQAbstractProxyModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_hasChildren ".} =
  type Cb = proc(super: QAbstractProxyModelhasChildrenBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_hasChildren(QAbstractProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_sibling(self: QAbstractProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQAbstractProxyModel_virtualbase_sibling(self.h, row, column, idx.h))

type QAbstractProxyModelsiblingBase* = proc(row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onsibling*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_sibling(self: ptr cQAbstractProxyModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_sibling ".} =
  type Cb = proc(super: QAbstractProxyModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_sibling(QAbstractProxyModel(h: self), row, column, idx)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: idx)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_mimeData(self: QAbstractProxyModel, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData =

  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h


  gen_qmimedata.QMimeData(h: fQAbstractProxyModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QAbstractProxyModelmimeDataBase* = proc(indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
proc onmimeData*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_mimeData(self: ptr cQAbstractProxyModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_mimeData ".} =
  type Cb = proc(super: QAbstractProxyModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(indexes: seq[gen_qabstractitemmodel.QModelIndex]): auto =
    callVirtualBase_mimeData(QAbstractProxyModel(h: self), indexes)
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_canDropMimeData(self: QAbstractProxyModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQAbstractProxyModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QAbstractProxyModelcanDropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oncanDropMimeData*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_canDropMimeData(self: ptr cQAbstractProxyModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_canDropMimeData ".} =
  type Cb = proc(super: QAbstractProxyModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_canDropMimeData(QAbstractProxyModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_dropMimeData(self: QAbstractProxyModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQAbstractProxyModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QAbstractProxyModeldropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc ondropMimeData*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_dropMimeData(self: ptr cQAbstractProxyModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_dropMimeData ".} =
  type Cb = proc(super: QAbstractProxyModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_dropMimeData(QAbstractProxyModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_mimeTypes(self: QAbstractProxyModel, ): seq[string] =


  var v_ma = fQAbstractProxyModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QAbstractProxyModelmimeTypesBase* = proc(): seq[string]
proc onmimeTypes*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelmimeTypesBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelmimeTypesBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_mimeTypes(self: ptr cQAbstractProxyModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractProxyModel_mimeTypes ".} =
  type Cb = proc(super: QAbstractProxyModelmimeTypesBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mimeTypes(QAbstractProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_supportedDragActions(self: QAbstractProxyModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQAbstractProxyModel_virtualbase_supportedDragActions(self.h))

type QAbstractProxyModelsupportedDragActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDragActions*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelsupportedDragActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_supportedDragActions(self: ptr cQAbstractProxyModel, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractProxyModel_supportedDragActions ".} =
  type Cb = proc(super: QAbstractProxyModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDragActions(QAbstractProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_supportedDropActions(self: QAbstractProxyModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQAbstractProxyModel_virtualbase_supportedDropActions(self.h))

type QAbstractProxyModelsupportedDropActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDropActions*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelsupportedDropActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_supportedDropActions(self: ptr cQAbstractProxyModel, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractProxyModel_supportedDropActions ".} =
  type Cb = proc(super: QAbstractProxyModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDropActions(QAbstractProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
type QAbstractProxyModelindexBase* = proc(row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onindex*(self: QAbstractProxyModel, slot: proc(row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_index(self: ptr cQAbstractProxyModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_index ".} =
  type Cb = proc(row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
type QAbstractProxyModelparentBase* = proc(child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onparent*(self: QAbstractProxyModel, slot: proc(child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_parent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_parent(self: ptr cQAbstractProxyModel, slot: int, child: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractProxyModel_parent ".} =
  type Cb = proc(child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: child)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QAbstractProxyModelrowCountBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): cint
proc onrowCount*(self: QAbstractProxyModel, slot: proc(parent: gen_qabstractitemmodel.QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(parent: gen_qabstractitemmodel.QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_rowCount(self: ptr cQAbstractProxyModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QAbstractProxyModel_rowCount ".} =
  type Cb = proc(parent: gen_qabstractitemmodel.QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QAbstractProxyModelcolumnCountBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): cint
proc oncolumnCount*(self: QAbstractProxyModel, slot: proc(parent: gen_qabstractitemmodel.QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(parent: gen_qabstractitemmodel.QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_columnCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_columnCount(self: ptr cQAbstractProxyModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QAbstractProxyModel_columnCount ".} =
  type Cb = proc(parent: gen_qabstractitemmodel.QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc callVirtualBase_insertRows(self: QAbstractProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQAbstractProxyModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QAbstractProxyModelinsertRowsBase* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oninsertRows*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_insertRows(self: ptr cQAbstractProxyModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_insertRows ".} =
  type Cb = proc(super: QAbstractProxyModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_insertRows(QAbstractProxyModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_insertColumns(self: QAbstractProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQAbstractProxyModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QAbstractProxyModelinsertColumnsBase* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oninsertColumns*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_insertColumns(self: ptr cQAbstractProxyModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_insertColumns ".} =
  type Cb = proc(super: QAbstractProxyModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_insertColumns(QAbstractProxyModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeRows(self: QAbstractProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQAbstractProxyModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QAbstractProxyModelremoveRowsBase* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc onremoveRows*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_removeRows(self: ptr cQAbstractProxyModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_removeRows ".} =
  type Cb = proc(super: QAbstractProxyModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_removeRows(QAbstractProxyModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeColumns(self: QAbstractProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQAbstractProxyModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QAbstractProxyModelremoveColumnsBase* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc onremoveColumns*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_removeColumns(self: ptr cQAbstractProxyModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_removeColumns ".} =
  type Cb = proc(super: QAbstractProxyModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_removeColumns(QAbstractProxyModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_moveRows(self: QAbstractProxyModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =


  fQAbstractProxyModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QAbstractProxyModelmoveRowsBase* = proc(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_moveRows(self: ptr cQAbstractProxyModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_moveRows ".} =
  type Cb = proc(super: QAbstractProxyModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveRows(QAbstractProxyModel(h: self), sourceParent, sourceRow, count, destinationParent, destinationChild)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_moveColumns(self: QAbstractProxyModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =


  fQAbstractProxyModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QAbstractProxyModelmoveColumnsBase* = proc(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_moveColumns(self: ptr cQAbstractProxyModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_moveColumns ".} =
  type Cb = proc(super: QAbstractProxyModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveColumns(QAbstractProxyModel(h: self), sourceParent, sourceColumn, count, destinationParent, destinationChild)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_match(self: QAbstractProxyModel, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex] =


  var v_ma = fQAbstractProxyModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

type QAbstractProxyModelmatchBase* = proc(start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
proc onmatch*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_match(self: ptr cQAbstractProxyModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractProxyModel_match ".} =
  type Cb = proc(super: QAbstractProxyModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): auto =
    callVirtualBase_match(QAbstractProxyModel(h: self), start, role, value, hits, flags)
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
proc callVirtualBase_roleNames(self: QAbstractProxyModel, ): Table[cint,seq[byte]] =


  var v_mm = fQAbstractProxyModel_virtualbase_roleNames(self.h)
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

type QAbstractProxyModelroleNamesBase* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelroleNamesBase): Table[cint,seq[byte]]) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelroleNamesBase): Table[cint,seq[byte]]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_roleNames(self: ptr cQAbstractProxyModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QAbstractProxyModel_roleNames ".} =
  type Cb = proc(super: QAbstractProxyModelroleNamesBase): Table[cint,seq[byte]]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_roleNames(QAbstractProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc callVirtualBase_event(self: QAbstractProxyModel, event: gen_qcoreevent.QEvent): bool =


  fQAbstractProxyModel_virtualbase_event(self.h, event.h)

type QAbstractProxyModeleventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModeleventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModeleventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_event(self: ptr cQAbstractProxyModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_event ".} =
  type Cb = proc(super: QAbstractProxyModeleventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAbstractProxyModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAbstractProxyModel, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAbstractProxyModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractProxyModeleventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_eventFilter(self: ptr cQAbstractProxyModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractProxyModel_eventFilter ".} =
  type Cb = proc(super: QAbstractProxyModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAbstractProxyModel(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAbstractProxyModel, event: gen_qcoreevent.QTimerEvent): void =


  fQAbstractProxyModel_virtualbase_timerEvent(self.h, event.h)

type QAbstractProxyModeltimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_timerEvent(self: ptr cQAbstractProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractProxyModel_timerEvent ".} =
  type Cb = proc(super: QAbstractProxyModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAbstractProxyModel(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAbstractProxyModel, event: gen_qcoreevent.QChildEvent): void =


  fQAbstractProxyModel_virtualbase_childEvent(self.h, event.h)

type QAbstractProxyModelchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_childEvent(self: ptr cQAbstractProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractProxyModel_childEvent ".} =
  type Cb = proc(super: QAbstractProxyModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAbstractProxyModel(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAbstractProxyModel, event: gen_qcoreevent.QEvent): void =


  fQAbstractProxyModel_virtualbase_customEvent(self.h, event.h)

type QAbstractProxyModelcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_customEvent(self: ptr cQAbstractProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractProxyModel_customEvent ".} =
  type Cb = proc(super: QAbstractProxyModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAbstractProxyModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAbstractProxyModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractProxyModel_virtualbase_connectNotify(self.h, signal.h)

type QAbstractProxyModelconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_connectNotify(self: ptr cQAbstractProxyModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractProxyModel_connectNotify ".} =
  type Cb = proc(super: QAbstractProxyModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAbstractProxyModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAbstractProxyModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractProxyModel_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractProxyModeldisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAbstractProxyModel, slot: proc(super: QAbstractProxyModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractProxyModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractProxyModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractProxyModel_disconnectNotify(self: ptr cQAbstractProxyModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractProxyModel_disconnectNotify ".} =
  type Cb = proc(super: QAbstractProxyModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAbstractProxyModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAbstractProxyModel): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAbstractProxyModel_staticMetaObject())
proc delete*(self: QAbstractProxyModel) =
  fcQAbstractProxyModel_delete(self.h)
