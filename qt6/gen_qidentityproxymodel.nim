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
{.compile("gen_qidentityproxymodel.cpp", cflags).}


import gen_qidentityproxymodel_types
export gen_qidentityproxymodel_types

import
  gen_qabstractitemmodel,
  gen_qabstractproxymodel,
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
  gen_qabstractproxymodel,
  gen_qcoreevent,
  gen_qitemselectionmodel,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qvariant

type cQIdentityProxyModel*{.exportc: "QIdentityProxyModel", incompleteStruct.} = object

proc fcQIdentityProxyModel_new(): ptr cQIdentityProxyModel {.importc: "QIdentityProxyModel_new".}
proc fcQIdentityProxyModel_new2(parent: pointer): ptr cQIdentityProxyModel {.importc: "QIdentityProxyModel_new2".}
proc fcQIdentityProxyModel_metaObject(self: pointer, ): pointer {.importc: "QIdentityProxyModel_metaObject".}
proc fcQIdentityProxyModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QIdentityProxyModel_metacast".}
proc fcQIdentityProxyModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QIdentityProxyModel_metacall".}
proc fcQIdentityProxyModel_tr(s: cstring): struct_miqt_string {.importc: "QIdentityProxyModel_tr".}
proc fcQIdentityProxyModel_columnCount(self: pointer, parent: pointer): cint {.importc: "QIdentityProxyModel_columnCount".}
proc fcQIdentityProxyModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QIdentityProxyModel_index".}
proc fcQIdentityProxyModel_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.importc: "QIdentityProxyModel_mapFromSource".}
proc fcQIdentityProxyModel_mapToSource(self: pointer, proxyIndex: pointer): pointer {.importc: "QIdentityProxyModel_mapToSource".}
proc fcQIdentityProxyModel_parent(self: pointer, child: pointer): pointer {.importc: "QIdentityProxyModel_parent".}
proc fcQIdentityProxyModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QIdentityProxyModel_rowCount".}
proc fcQIdentityProxyModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QIdentityProxyModel_headerData".}
proc fcQIdentityProxyModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QIdentityProxyModel_dropMimeData".}
proc fcQIdentityProxyModel_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QIdentityProxyModel_sibling".}
proc fcQIdentityProxyModel_mapSelectionFromSource(self: pointer, selection: pointer): pointer {.importc: "QIdentityProxyModel_mapSelectionFromSource".}
proc fcQIdentityProxyModel_mapSelectionToSource(self: pointer, selection: pointer): pointer {.importc: "QIdentityProxyModel_mapSelectionToSource".}
proc fcQIdentityProxyModel_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QIdentityProxyModel_match".}
proc fcQIdentityProxyModel_setSourceModel(self: pointer, sourceModel: pointer): void {.importc: "QIdentityProxyModel_setSourceModel".}
proc fcQIdentityProxyModel_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QIdentityProxyModel_insertColumns".}
proc fcQIdentityProxyModel_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QIdentityProxyModel_insertRows".}
proc fcQIdentityProxyModel_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QIdentityProxyModel_removeColumns".}
proc fcQIdentityProxyModel_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QIdentityProxyModel_removeRows".}
proc fcQIdentityProxyModel_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QIdentityProxyModel_moveRows".}
proc fcQIdentityProxyModel_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QIdentityProxyModel_moveColumns".}
proc fcQIdentityProxyModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QIdentityProxyModel_tr2".}
proc fcQIdentityProxyModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QIdentityProxyModel_tr3".}
proc fQIdentityProxyModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QIdentityProxyModel_virtualbase_metacall".}
proc fcQIdentityProxyModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_metacall".}
proc fQIdentityProxyModel_virtualbase_columnCount(self: pointer, parent: pointer): cint{.importc: "QIdentityProxyModel_virtualbase_columnCount".}
proc fcQIdentityProxyModel_override_virtual_columnCount(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_columnCount".}
proc fQIdentityProxyModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer{.importc: "QIdentityProxyModel_virtualbase_index".}
proc fcQIdentityProxyModel_override_virtual_index(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_index".}
proc fQIdentityProxyModel_virtualbase_mapFromSource(self: pointer, sourceIndex: pointer): pointer{.importc: "QIdentityProxyModel_virtualbase_mapFromSource".}
proc fcQIdentityProxyModel_override_virtual_mapFromSource(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_mapFromSource".}
proc fQIdentityProxyModel_virtualbase_mapToSource(self: pointer, proxyIndex: pointer): pointer{.importc: "QIdentityProxyModel_virtualbase_mapToSource".}
proc fcQIdentityProxyModel_override_virtual_mapToSource(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_mapToSource".}
proc fQIdentityProxyModel_virtualbase_parent(self: pointer, child: pointer): pointer{.importc: "QIdentityProxyModel_virtualbase_parent".}
proc fcQIdentityProxyModel_override_virtual_parent(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_parent".}
proc fQIdentityProxyModel_virtualbase_rowCount(self: pointer, parent: pointer): cint{.importc: "QIdentityProxyModel_virtualbase_rowCount".}
proc fcQIdentityProxyModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_rowCount".}
proc fQIdentityProxyModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QIdentityProxyModel_virtualbase_headerData".}
proc fcQIdentityProxyModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_headerData".}
proc fQIdentityProxyModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_dropMimeData".}
proc fcQIdentityProxyModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_dropMimeData".}
proc fQIdentityProxyModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QIdentityProxyModel_virtualbase_sibling".}
proc fcQIdentityProxyModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_sibling".}
proc fQIdentityProxyModel_virtualbase_mapSelectionFromSource(self: pointer, selection: pointer): pointer{.importc: "QIdentityProxyModel_virtualbase_mapSelectionFromSource".}
proc fcQIdentityProxyModel_override_virtual_mapSelectionFromSource(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_mapSelectionFromSource".}
proc fQIdentityProxyModel_virtualbase_mapSelectionToSource(self: pointer, selection: pointer): pointer{.importc: "QIdentityProxyModel_virtualbase_mapSelectionToSource".}
proc fcQIdentityProxyModel_override_virtual_mapSelectionToSource(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_mapSelectionToSource".}
proc fQIdentityProxyModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QIdentityProxyModel_virtualbase_match".}
proc fcQIdentityProxyModel_override_virtual_match(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_match".}
proc fQIdentityProxyModel_virtualbase_setSourceModel(self: pointer, sourceModel: pointer): void{.importc: "QIdentityProxyModel_virtualbase_setSourceModel".}
proc fcQIdentityProxyModel_override_virtual_setSourceModel(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_setSourceModel".}
proc fQIdentityProxyModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_insertColumns".}
proc fcQIdentityProxyModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_insertColumns".}
proc fQIdentityProxyModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_insertRows".}
proc fcQIdentityProxyModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_insertRows".}
proc fQIdentityProxyModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_removeColumns".}
proc fcQIdentityProxyModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_removeColumns".}
proc fQIdentityProxyModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_removeRows".}
proc fcQIdentityProxyModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_removeRows".}
proc fQIdentityProxyModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QIdentityProxyModel_virtualbase_moveRows".}
proc fcQIdentityProxyModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_moveRows".}
proc fQIdentityProxyModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QIdentityProxyModel_virtualbase_moveColumns".}
proc fcQIdentityProxyModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_moveColumns".}
proc fQIdentityProxyModel_virtualbase_submit(self: pointer, ): bool{.importc: "QIdentityProxyModel_virtualbase_submit".}
proc fcQIdentityProxyModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_submit".}
proc fQIdentityProxyModel_virtualbase_revert(self: pointer, ): void{.importc: "QIdentityProxyModel_virtualbase_revert".}
proc fcQIdentityProxyModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_revert".}
proc fQIdentityProxyModel_virtualbase_data(self: pointer, proxyIndex: pointer, role: cint): pointer{.importc: "QIdentityProxyModel_virtualbase_data".}
proc fcQIdentityProxyModel_override_virtual_data(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_data".}
proc fQIdentityProxyModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QIdentityProxyModel_virtualbase_itemData".}
proc fcQIdentityProxyModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_itemData".}
proc fQIdentityProxyModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QIdentityProxyModel_virtualbase_flags".}
proc fcQIdentityProxyModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_flags".}
proc fQIdentityProxyModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QIdentityProxyModel_virtualbase_setData".}
proc fcQIdentityProxyModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_setData".}
proc fQIdentityProxyModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QIdentityProxyModel_virtualbase_setItemData".}
proc fcQIdentityProxyModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_setItemData".}
proc fQIdentityProxyModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QIdentityProxyModel_virtualbase_setHeaderData".}
proc fcQIdentityProxyModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_setHeaderData".}
proc fQIdentityProxyModel_virtualbase_clearItemData(self: pointer, index: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_clearItemData".}
proc fcQIdentityProxyModel_override_virtual_clearItemData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_clearItemData".}
proc fQIdentityProxyModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QIdentityProxyModel_virtualbase_buddy".}
proc fcQIdentityProxyModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_buddy".}
proc fQIdentityProxyModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_canFetchMore".}
proc fcQIdentityProxyModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_canFetchMore".}
proc fQIdentityProxyModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QIdentityProxyModel_virtualbase_fetchMore".}
proc fcQIdentityProxyModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_fetchMore".}
proc fQIdentityProxyModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QIdentityProxyModel_virtualbase_sort".}
proc fcQIdentityProxyModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_sort".}
proc fQIdentityProxyModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QIdentityProxyModel_virtualbase_span".}
proc fcQIdentityProxyModel_override_virtual_span(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_span".}
proc fQIdentityProxyModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_hasChildren".}
proc fcQIdentityProxyModel_override_virtual_hasChildren(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_hasChildren".}
proc fQIdentityProxyModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QIdentityProxyModel_virtualbase_mimeData".}
proc fcQIdentityProxyModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_mimeData".}
proc fQIdentityProxyModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_canDropMimeData".}
proc fcQIdentityProxyModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_canDropMimeData".}
proc fQIdentityProxyModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QIdentityProxyModel_virtualbase_mimeTypes".}
proc fcQIdentityProxyModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_mimeTypes".}
proc fQIdentityProxyModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QIdentityProxyModel_virtualbase_supportedDragActions".}
proc fcQIdentityProxyModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_supportedDragActions".}
proc fQIdentityProxyModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QIdentityProxyModel_virtualbase_supportedDropActions".}
proc fcQIdentityProxyModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_supportedDropActions".}
proc fQIdentityProxyModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QIdentityProxyModel_virtualbase_roleNames".}
proc fcQIdentityProxyModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_roleNames".}
proc fQIdentityProxyModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void{.importc: "QIdentityProxyModel_virtualbase_multiData".}
proc fcQIdentityProxyModel_override_virtual_multiData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_multiData".}
proc fQIdentityProxyModel_virtualbase_resetInternalData(self: pointer, ): void{.importc: "QIdentityProxyModel_virtualbase_resetInternalData".}
proc fcQIdentityProxyModel_override_virtual_resetInternalData(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_resetInternalData".}
proc fQIdentityProxyModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_event".}
proc fcQIdentityProxyModel_override_virtual_event(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_event".}
proc fQIdentityProxyModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QIdentityProxyModel_virtualbase_eventFilter".}
proc fcQIdentityProxyModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_eventFilter".}
proc fQIdentityProxyModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QIdentityProxyModel_virtualbase_timerEvent".}
proc fcQIdentityProxyModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_timerEvent".}
proc fQIdentityProxyModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QIdentityProxyModel_virtualbase_childEvent".}
proc fcQIdentityProxyModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_childEvent".}
proc fQIdentityProxyModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QIdentityProxyModel_virtualbase_customEvent".}
proc fcQIdentityProxyModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_customEvent".}
proc fQIdentityProxyModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QIdentityProxyModel_virtualbase_connectNotify".}
proc fcQIdentityProxyModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_connectNotify".}
proc fQIdentityProxyModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QIdentityProxyModel_virtualbase_disconnectNotify".}
proc fcQIdentityProxyModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QIdentityProxyModel_override_virtual_disconnectNotify".}
proc fcQIdentityProxyModel_delete(self: pointer) {.importc: "QIdentityProxyModel_delete".}


func init*(T: type QIdentityProxyModel, h: ptr cQIdentityProxyModel): QIdentityProxyModel =
  T(h: h)
proc create*(T: type QIdentityProxyModel, ): QIdentityProxyModel =

  QIdentityProxyModel.init(fcQIdentityProxyModel_new())
proc create*(T: type QIdentityProxyModel, parent: gen_qobject.QObject): QIdentityProxyModel =

  QIdentityProxyModel.init(fcQIdentityProxyModel_new2(parent.h))
proc metaObject*(self: QIdentityProxyModel, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQIdentityProxyModel_metaObject(self.h))

proc metacast*(self: QIdentityProxyModel, param1: cstring): pointer =

  fcQIdentityProxyModel_metacast(self.h, param1)

proc metacall*(self: QIdentityProxyModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQIdentityProxyModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QIdentityProxyModel, s: cstring): string =

  let v_ms = fcQIdentityProxyModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc columnCount*(self: QIdentityProxyModel, parent: gen_qabstractitemmodel.QModelIndex): cint =

  fcQIdentityProxyModel_columnCount(self.h, parent.h)

proc index*(self: QIdentityProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQIdentityProxyModel_index(self.h, row, column, parent.h))

proc mapFromSource*(self: QIdentityProxyModel, sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQIdentityProxyModel_mapFromSource(self.h, sourceIndex.h))

proc mapToSource*(self: QIdentityProxyModel, proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQIdentityProxyModel_mapToSource(self.h, proxyIndex.h))

proc parent*(self: QIdentityProxyModel, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQIdentityProxyModel_parent(self.h, child.h))

proc rowCount*(self: QIdentityProxyModel, parent: gen_qabstractitemmodel.QModelIndex): cint =

  fcQIdentityProxyModel_rowCount(self.h, parent.h)

proc headerData*(self: QIdentityProxyModel, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQIdentityProxyModel_headerData(self.h, section, cint(orientation), role))

proc dropMimeData*(self: QIdentityProxyModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQIdentityProxyModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc sibling*(self: QIdentityProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQIdentityProxyModel_sibling(self.h, row, column, idx.h))

proc mapSelectionFromSource*(self: QIdentityProxyModel, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection =

  gen_qitemselectionmodel.QItemSelection(h: fcQIdentityProxyModel_mapSelectionFromSource(self.h, selection.h))

proc mapSelectionToSource*(self: QIdentityProxyModel, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection =

  gen_qitemselectionmodel.QItemSelection(h: fcQIdentityProxyModel_mapSelectionToSource(self.h, selection.h))

proc match*(self: QIdentityProxyModel, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex] =

  var v_ma = fcQIdentityProxyModel_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

proc setSourceModel*(self: QIdentityProxyModel, sourceModel: gen_qabstractitemmodel.QAbstractItemModel): void =

  fcQIdentityProxyModel_setSourceModel(self.h, sourceModel.h)

proc insertColumns*(self: QIdentityProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQIdentityProxyModel_insertColumns(self.h, column, count, parent.h)

proc insertRows*(self: QIdentityProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQIdentityProxyModel_insertRows(self.h, row, count, parent.h)

proc removeColumns*(self: QIdentityProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQIdentityProxyModel_removeColumns(self.h, column, count, parent.h)

proc removeRows*(self: QIdentityProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQIdentityProxyModel_removeRows(self.h, row, count, parent.h)

proc moveRows*(self: QIdentityProxyModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =

  fcQIdentityProxyModel_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc moveColumns*(self: QIdentityProxyModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =

  fcQIdentityProxyModel_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc tr2*(_: type QIdentityProxyModel, s: cstring, c: cstring): string =

  let v_ms = fcQIdentityProxyModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QIdentityProxyModel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQIdentityProxyModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QIdentityProxyModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQIdentityProxyModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QIdentityProxyModelmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_metacall(self: ptr cQIdentityProxyModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QIdentityProxyModel_metacall ".} =
  type Cb = proc(super: QIdentityProxyModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QIdentityProxyModel(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_columnCount(self: QIdentityProxyModel, parent: gen_qabstractitemmodel.QModelIndex): cint =


  fQIdentityProxyModel_virtualbase_columnCount(self.h, parent.h)

type QIdentityProxyModelcolumnCountBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): cint
proc oncolumnCount*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelcolumnCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelcolumnCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_columnCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_columnCount(self: ptr cQIdentityProxyModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QIdentityProxyModel_columnCount ".} =
  type Cb = proc(super: QIdentityProxyModelcolumnCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_columnCount(QIdentityProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_index(self: QIdentityProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQIdentityProxyModel_virtualbase_index(self.h, row, column, parent.h))

type QIdentityProxyModelindexBase* = proc(row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onindex*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_index(self: ptr cQIdentityProxyModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_index ".} =
  type Cb = proc(super: QIdentityProxyModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_index(QIdentityProxyModel(h: self), row, column, parent)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_mapFromSource(self: QIdentityProxyModel, sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQIdentityProxyModel_virtualbase_mapFromSource(self.h, sourceIndex.h))

type QIdentityProxyModelmapFromSourceBase* = proc(sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onmapFromSource*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelmapFromSourceBase, sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelmapFromSourceBase, sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_mapFromSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_mapFromSource(self: ptr cQIdentityProxyModel, slot: int, sourceIndex: pointer): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_mapFromSource ".} =
  type Cb = proc(super: QIdentityProxyModelmapFromSourceBase, sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceIndex: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_mapFromSource(QIdentityProxyModel(h: self), sourceIndex)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceIndex)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_mapToSource(self: QIdentityProxyModel, proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQIdentityProxyModel_virtualbase_mapToSource(self.h, proxyIndex.h))

type QIdentityProxyModelmapToSourceBase* = proc(proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onmapToSource*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelmapToSourceBase, proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelmapToSourceBase, proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_mapToSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_mapToSource(self: ptr cQIdentityProxyModel, slot: int, proxyIndex: pointer): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_mapToSource ".} =
  type Cb = proc(super: QIdentityProxyModelmapToSourceBase, proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(proxyIndex: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_mapToSource(QIdentityProxyModel(h: self), proxyIndex)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: proxyIndex)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_parent(self: QIdentityProxyModel, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQIdentityProxyModel_virtualbase_parent(self.h, child.h))

type QIdentityProxyModelparentBase* = proc(child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onparent*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelparentBase, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelparentBase, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_parent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_parent(self: ptr cQIdentityProxyModel, slot: int, child: pointer): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_parent ".} =
  type Cb = proc(super: QIdentityProxyModelparentBase, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(child: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_parent(QIdentityProxyModel(h: self), child)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: child)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_rowCount(self: QIdentityProxyModel, parent: gen_qabstractitemmodel.QModelIndex): cint =


  fQIdentityProxyModel_virtualbase_rowCount(self.h, parent.h)

type QIdentityProxyModelrowCountBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): cint
proc onrowCount*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_rowCount(self: ptr cQIdentityProxyModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QIdentityProxyModel_rowCount ".} =
  type Cb = proc(super: QIdentityProxyModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_rowCount(QIdentityProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_headerData(self: QIdentityProxyModel, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQIdentityProxyModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QIdentityProxyModelheaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
proc onheaderData*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_headerData(self: ptr cQIdentityProxyModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_headerData ".} =
  type Cb = proc(super: QIdentityProxyModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, role: cint): auto =
    callVirtualBase_headerData(QIdentityProxyModel(h: self), section, orientation, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_dropMimeData(self: QIdentityProxyModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQIdentityProxyModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QIdentityProxyModeldropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc ondropMimeData*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_dropMimeData(self: ptr cQIdentityProxyModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_dropMimeData ".} =
  type Cb = proc(super: QIdentityProxyModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_dropMimeData(QIdentityProxyModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_sibling(self: QIdentityProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQIdentityProxyModel_virtualbase_sibling(self.h, row, column, idx.h))

type QIdentityProxyModelsiblingBase* = proc(row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onsibling*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_sibling(self: ptr cQIdentityProxyModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_sibling ".} =
  type Cb = proc(super: QIdentityProxyModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_sibling(QIdentityProxyModel(h: self), row, column, idx)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: idx)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_mapSelectionFromSource(self: QIdentityProxyModel, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection =


  gen_qitemselectionmodel.QItemSelection(h: fQIdentityProxyModel_virtualbase_mapSelectionFromSource(self.h, selection.h))

type QIdentityProxyModelmapSelectionFromSourceBase* = proc(selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
proc onmapSelectionFromSource*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelmapSelectionFromSourceBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelmapSelectionFromSourceBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_mapSelectionFromSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_mapSelectionFromSource(self: ptr cQIdentityProxyModel, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_mapSelectionFromSource ".} =
  type Cb = proc(super: QIdentityProxyModelmapSelectionFromSourceBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selection: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_mapSelectionFromSource(QIdentityProxyModel(h: self), selection)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_mapSelectionToSource(self: QIdentityProxyModel, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection =


  gen_qitemselectionmodel.QItemSelection(h: fQIdentityProxyModel_virtualbase_mapSelectionToSource(self.h, selection.h))

type QIdentityProxyModelmapSelectionToSourceBase* = proc(selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
proc onmapSelectionToSource*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelmapSelectionToSourceBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelmapSelectionToSourceBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_mapSelectionToSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_mapSelectionToSource(self: ptr cQIdentityProxyModel, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_mapSelectionToSource ".} =
  type Cb = proc(super: QIdentityProxyModelmapSelectionToSourceBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selection: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_mapSelectionToSource(QIdentityProxyModel(h: self), selection)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_match(self: QIdentityProxyModel, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex] =


  var v_ma = fQIdentityProxyModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

type QIdentityProxyModelmatchBase* = proc(start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
proc onmatch*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_match(self: ptr cQIdentityProxyModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QIdentityProxyModel_match ".} =
  type Cb = proc(super: QIdentityProxyModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): auto =
    callVirtualBase_match(QIdentityProxyModel(h: self), start, role, value, hits, flags)
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
proc callVirtualBase_setSourceModel(self: QIdentityProxyModel, sourceModel: gen_qabstractitemmodel.QAbstractItemModel): void =


  fQIdentityProxyModel_virtualbase_setSourceModel(self.h, sourceModel.h)

type QIdentityProxyModelsetSourceModelBase* = proc(sourceModel: gen_qabstractitemmodel.QAbstractItemModel): void
proc onsetSourceModel*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelsetSourceModelBase, sourceModel: gen_qabstractitemmodel.QAbstractItemModel): void) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelsetSourceModelBase, sourceModel: gen_qabstractitemmodel.QAbstractItemModel): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_setSourceModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_setSourceModel(self: ptr cQIdentityProxyModel, slot: int, sourceModel: pointer): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_setSourceModel ".} =
  type Cb = proc(super: QIdentityProxyModelsetSourceModelBase, sourceModel: gen_qabstractitemmodel.QAbstractItemModel): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceModel: gen_qabstractitemmodel.QAbstractItemModel): auto =
    callVirtualBase_setSourceModel(QIdentityProxyModel(h: self), sourceModel)
  let slotval1 = gen_qabstractitemmodel.QAbstractItemModel(h: sourceModel)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_insertColumns(self: QIdentityProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQIdentityProxyModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QIdentityProxyModelinsertColumnsBase* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oninsertColumns*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_insertColumns(self: ptr cQIdentityProxyModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_insertColumns ".} =
  type Cb = proc(super: QIdentityProxyModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_insertColumns(QIdentityProxyModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_insertRows(self: QIdentityProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQIdentityProxyModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QIdentityProxyModelinsertRowsBase* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oninsertRows*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_insertRows(self: ptr cQIdentityProxyModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_insertRows ".} =
  type Cb = proc(super: QIdentityProxyModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_insertRows(QIdentityProxyModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeColumns(self: QIdentityProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQIdentityProxyModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QIdentityProxyModelremoveColumnsBase* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc onremoveColumns*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_removeColumns(self: ptr cQIdentityProxyModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_removeColumns ".} =
  type Cb = proc(super: QIdentityProxyModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_removeColumns(QIdentityProxyModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeRows(self: QIdentityProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQIdentityProxyModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QIdentityProxyModelremoveRowsBase* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc onremoveRows*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_removeRows(self: ptr cQIdentityProxyModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_removeRows ".} =
  type Cb = proc(super: QIdentityProxyModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_removeRows(QIdentityProxyModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_moveRows(self: QIdentityProxyModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =


  fQIdentityProxyModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QIdentityProxyModelmoveRowsBase* = proc(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_moveRows(self: ptr cQIdentityProxyModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_moveRows ".} =
  type Cb = proc(super: QIdentityProxyModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveRows(QIdentityProxyModel(h: self), sourceParent, sourceRow, count, destinationParent, destinationChild)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_moveColumns(self: QIdentityProxyModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =


  fQIdentityProxyModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QIdentityProxyModelmoveColumnsBase* = proc(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_moveColumns(self: ptr cQIdentityProxyModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_moveColumns ".} =
  type Cb = proc(super: QIdentityProxyModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveColumns(QIdentityProxyModel(h: self), sourceParent, sourceColumn, count, destinationParent, destinationChild)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_submit(self: QIdentityProxyModel, ): bool =


  fQIdentityProxyModel_virtualbase_submit(self.h)

type QIdentityProxyModelsubmitBase* = proc(): bool
proc onsubmit*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelsubmitBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelsubmitBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_submit(self: ptr cQIdentityProxyModel, slot: int): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_submit ".} =
  type Cb = proc(super: QIdentityProxyModelsubmitBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_submit(QIdentityProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_revert(self: QIdentityProxyModel, ): void =


  fQIdentityProxyModel_virtualbase_revert(self.h)

type QIdentityProxyModelrevertBase* = proc(): void
proc onrevert*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelrevertBase): void) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelrevertBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_revert(self: ptr cQIdentityProxyModel, slot: int): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_revert ".} =
  type Cb = proc(super: QIdentityProxyModelrevertBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_revert(QIdentityProxyModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_data(self: QIdentityProxyModel, proxyIndex: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQIdentityProxyModel_virtualbase_data(self.h, proxyIndex.h, role))

type QIdentityProxyModeldataBase* = proc(proxyIndex: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
proc ondata*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModeldataBase, proxyIndex: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModeldataBase, proxyIndex: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_data(self: ptr cQIdentityProxyModel, slot: int, proxyIndex: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_data ".} =
  type Cb = proc(super: QIdentityProxyModeldataBase, proxyIndex: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(proxyIndex: gen_qabstractitemmodel.QModelIndex, role: cint): auto =
    callVirtualBase_data(QIdentityProxyModel(h: self), proxyIndex, role)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: proxyIndex)

  let slotval2 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_itemData(self: QIdentityProxyModel, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant] =


  var v_mm = fQIdentityProxyModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QIdentityProxyModelitemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
proc onitemData*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_itemData(self: ptr cQIdentityProxyModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QIdentityProxyModel_itemData ".} =
  type Cb = proc(super: QIdentityProxyModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_itemData(QIdentityProxyModel(h: self), index)
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
proc callVirtualBase_flags(self: QIdentityProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag =


  gen_qnamespace.ItemFlag(fQIdentityProxyModel_virtualbase_flags(self.h, index.h))

type QIdentityProxyModelflagsBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
proc onflags*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_flags(self: ptr cQIdentityProxyModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QIdentityProxyModel_flags ".} =
  type Cb = proc(super: QIdentityProxyModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_flags(QIdentityProxyModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  cint(virtualReturn)
proc callVirtualBase_setData(self: QIdentityProxyModel, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool =


  fQIdentityProxyModel_virtualbase_setData(self.h, index.h, value.h, role)

type QIdentityProxyModelsetDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
proc onsetData*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_setData(self: ptr cQIdentityProxyModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_setData ".} =
  type Cb = proc(super: QIdentityProxyModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setData(QIdentityProxyModel(h: self), index, value, role)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qvariant.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setItemData(self: QIdentityProxyModel, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool =

  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1


  fQIdentityProxyModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QIdentityProxyModelsetItemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
proc onsetItemData*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_setItemData(self: ptr cQIdentityProxyModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_setItemData ".} =
  type Cb = proc(super: QIdentityProxyModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): auto =
    callVirtualBase_setItemData(QIdentityProxyModel(h: self), index, roles)
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
proc callVirtualBase_setHeaderData(self: QIdentityProxyModel, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool =


  fQIdentityProxyModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QIdentityProxyModelsetHeaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
proc onsetHeaderData*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_setHeaderData(self: ptr cQIdentityProxyModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_setHeaderData ".} =
  type Cb = proc(super: QIdentityProxyModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setHeaderData(QIdentityProxyModel(h: self), section, orientation, value, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = gen_qvariant.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_clearItemData(self: QIdentityProxyModel, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQIdentityProxyModel_virtualbase_clearItemData(self.h, index.h)

type QIdentityProxyModelclearItemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex): bool
proc onclearItemData*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelclearItemDataBase, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelclearItemDataBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_clearItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_clearItemData(self: ptr cQIdentityProxyModel, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_clearItemData ".} =
  type Cb = proc(super: QIdentityProxyModelclearItemDataBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_clearItemData(QIdentityProxyModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_buddy(self: QIdentityProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQIdentityProxyModel_virtualbase_buddy(self.h, index.h))

type QIdentityProxyModelbuddyBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onbuddy*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_buddy(self: ptr cQIdentityProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_buddy ".} =
  type Cb = proc(super: QIdentityProxyModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_buddy(QIdentityProxyModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_canFetchMore(self: QIdentityProxyModel, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQIdentityProxyModel_virtualbase_canFetchMore(self.h, parent.h)

type QIdentityProxyModelcanFetchMoreBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): bool
proc oncanFetchMore*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_canFetchMore(self: ptr cQIdentityProxyModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_canFetchMore ".} =
  type Cb = proc(super: QIdentityProxyModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_canFetchMore(QIdentityProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_fetchMore(self: QIdentityProxyModel, parent: gen_qabstractitemmodel.QModelIndex): void =


  fQIdentityProxyModel_virtualbase_fetchMore(self.h, parent.h)

type QIdentityProxyModelfetchMoreBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): void
proc onfetchMore*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_fetchMore(self: ptr cQIdentityProxyModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_fetchMore ".} =
  type Cb = proc(super: QIdentityProxyModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_fetchMore(QIdentityProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sort(self: QIdentityProxyModel, column: cint, order: gen_qnamespace.SortOrder): void =


  fQIdentityProxyModel_virtualbase_sort(self.h, column, cint(order))

type QIdentityProxyModelsortBase* = proc(column: cint, order: gen_qnamespace.SortOrder): void
proc onsort*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_sort(self: ptr cQIdentityProxyModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_sort ".} =
  type Cb = proc(super: QIdentityProxyModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, order: gen_qnamespace.SortOrder): auto =
    callVirtualBase_sort(QIdentityProxyModel(h: self), column, order)
  let slotval1 = column

  let slotval2 = gen_qnamespace.SortOrder(order)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_span(self: QIdentityProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize =


  gen_qsize.QSize(h: fQIdentityProxyModel_virtualbase_span(self.h, index.h))

type QIdentityProxyModelspanBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
proc onspan*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_span(self: ptr cQIdentityProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_span ".} =
  type Cb = proc(super: QIdentityProxyModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_span(QIdentityProxyModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_hasChildren(self: QIdentityProxyModel, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQIdentityProxyModel_virtualbase_hasChildren(self.h, parent.h)

type QIdentityProxyModelhasChildrenBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): bool
proc onhasChildren*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelhasChildrenBase, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelhasChildrenBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_hasChildren(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_hasChildren(self: ptr cQIdentityProxyModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_hasChildren ".} =
  type Cb = proc(super: QIdentityProxyModelhasChildrenBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_hasChildren(QIdentityProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_mimeData(self: QIdentityProxyModel, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData =

  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h


  gen_qmimedata.QMimeData(h: fQIdentityProxyModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QIdentityProxyModelmimeDataBase* = proc(indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
proc onmimeData*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_mimeData(self: ptr cQIdentityProxyModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QIdentityProxyModel_mimeData ".} =
  type Cb = proc(super: QIdentityProxyModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(indexes: seq[gen_qabstractitemmodel.QModelIndex]): auto =
    callVirtualBase_mimeData(QIdentityProxyModel(h: self), indexes)
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_canDropMimeData(self: QIdentityProxyModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQIdentityProxyModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QIdentityProxyModelcanDropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oncanDropMimeData*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_canDropMimeData(self: ptr cQIdentityProxyModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_canDropMimeData ".} =
  type Cb = proc(super: QIdentityProxyModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_canDropMimeData(QIdentityProxyModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_mimeTypes(self: QIdentityProxyModel, ): seq[string] =


  var v_ma = fQIdentityProxyModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QIdentityProxyModelmimeTypesBase* = proc(): seq[string]
proc onmimeTypes*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelmimeTypesBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelmimeTypesBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_mimeTypes(self: ptr cQIdentityProxyModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QIdentityProxyModel_mimeTypes ".} =
  type Cb = proc(super: QIdentityProxyModelmimeTypesBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mimeTypes(QIdentityProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_supportedDragActions(self: QIdentityProxyModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQIdentityProxyModel_virtualbase_supportedDragActions(self.h))

type QIdentityProxyModelsupportedDragActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDragActions*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelsupportedDragActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_supportedDragActions(self: ptr cQIdentityProxyModel, slot: int): cint {.exportc: "miqt_exec_callback_QIdentityProxyModel_supportedDragActions ".} =
  type Cb = proc(super: QIdentityProxyModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDragActions(QIdentityProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_supportedDropActions(self: QIdentityProxyModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQIdentityProxyModel_virtualbase_supportedDropActions(self.h))

type QIdentityProxyModelsupportedDropActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDropActions*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelsupportedDropActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_supportedDropActions(self: ptr cQIdentityProxyModel, slot: int): cint {.exportc: "miqt_exec_callback_QIdentityProxyModel_supportedDropActions ".} =
  type Cb = proc(super: QIdentityProxyModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDropActions(QIdentityProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_roleNames(self: QIdentityProxyModel, ): Table[cint,seq[byte]] =


  var v_mm = fQIdentityProxyModel_virtualbase_roleNames(self.h)
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

type QIdentityProxyModelroleNamesBase* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelroleNamesBase): Table[cint,seq[byte]]) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelroleNamesBase): Table[cint,seq[byte]]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_roleNames(self: ptr cQIdentityProxyModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QIdentityProxyModel_roleNames ".} =
  type Cb = proc(super: QIdentityProxyModelroleNamesBase): Table[cint,seq[byte]]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_roleNames(QIdentityProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc callVirtualBase_multiData(self: QIdentityProxyModel, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void =


  fQIdentityProxyModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

type QIdentityProxyModelmultiDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
proc onmultiData*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelmultiDataBase, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelmultiDataBase, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_multiData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_multiData(self: ptr cQIdentityProxyModel, slot: int, index: pointer, roleDataSpan: pointer): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_multiData ".} =
  type Cb = proc(super: QIdentityProxyModelmultiDataBase, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): auto =
    callVirtualBase_multiData(QIdentityProxyModel(h: self), index, roleDataSpan)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemmodel.QModelRoleDataSpan(h: roleDataSpan)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_resetInternalData(self: QIdentityProxyModel, ): void =


  fQIdentityProxyModel_virtualbase_resetInternalData(self.h)

type QIdentityProxyModelresetInternalDataBase* = proc(): void
proc onresetInternalData*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelresetInternalDataBase): void) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelresetInternalDataBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_resetInternalData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_resetInternalData(self: ptr cQIdentityProxyModel, slot: int): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_resetInternalData ".} =
  type Cb = proc(super: QIdentityProxyModelresetInternalDataBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_resetInternalData(QIdentityProxyModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_event(self: QIdentityProxyModel, event: gen_qcoreevent.QEvent): bool =


  fQIdentityProxyModel_virtualbase_event(self.h, event.h)

type QIdentityProxyModeleventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModeleventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModeleventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_event(self: ptr cQIdentityProxyModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_event ".} =
  type Cb = proc(super: QIdentityProxyModeleventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QIdentityProxyModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QIdentityProxyModel, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQIdentityProxyModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QIdentityProxyModeleventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_eventFilter(self: ptr cQIdentityProxyModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QIdentityProxyModel_eventFilter ".} =
  type Cb = proc(super: QIdentityProxyModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QIdentityProxyModel(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QIdentityProxyModel, event: gen_qcoreevent.QTimerEvent): void =


  fQIdentityProxyModel_virtualbase_timerEvent(self.h, event.h)

type QIdentityProxyModeltimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_timerEvent(self: ptr cQIdentityProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_timerEvent ".} =
  type Cb = proc(super: QIdentityProxyModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QIdentityProxyModel(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QIdentityProxyModel, event: gen_qcoreevent.QChildEvent): void =


  fQIdentityProxyModel_virtualbase_childEvent(self.h, event.h)

type QIdentityProxyModelchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_childEvent(self: ptr cQIdentityProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_childEvent ".} =
  type Cb = proc(super: QIdentityProxyModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QIdentityProxyModel(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QIdentityProxyModel, event: gen_qcoreevent.QEvent): void =


  fQIdentityProxyModel_virtualbase_customEvent(self.h, event.h)

type QIdentityProxyModelcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_customEvent(self: ptr cQIdentityProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_customEvent ".} =
  type Cb = proc(super: QIdentityProxyModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QIdentityProxyModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QIdentityProxyModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQIdentityProxyModel_virtualbase_connectNotify(self.h, signal.h)

type QIdentityProxyModelconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_connectNotify(self: ptr cQIdentityProxyModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_connectNotify ".} =
  type Cb = proc(super: QIdentityProxyModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QIdentityProxyModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QIdentityProxyModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQIdentityProxyModel_virtualbase_disconnectNotify(self.h, signal.h)

type QIdentityProxyModeldisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QIdentityProxyModel, slot: proc(super: QIdentityProxyModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QIdentityProxyModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQIdentityProxyModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QIdentityProxyModel_disconnectNotify(self: ptr cQIdentityProxyModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QIdentityProxyModel_disconnectNotify ".} =
  type Cb = proc(super: QIdentityProxyModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QIdentityProxyModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QIdentityProxyModel) =
  fcQIdentityProxyModel_delete(self.h)
