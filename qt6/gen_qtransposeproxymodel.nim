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
{.compile("gen_qtransposeproxymodel.cpp", cflags).}


import gen_qtransposeproxymodel_types
export gen_qtransposeproxymodel_types

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

type cQTransposeProxyModel*{.exportc: "QTransposeProxyModel", incompleteStruct.} = object

proc fcQTransposeProxyModel_new(): ptr cQTransposeProxyModel {.importc: "QTransposeProxyModel_new".}
proc fcQTransposeProxyModel_new2(parent: pointer): ptr cQTransposeProxyModel {.importc: "QTransposeProxyModel_new2".}
proc fcQTransposeProxyModel_metaObject(self: pointer, ): pointer {.importc: "QTransposeProxyModel_metaObject".}
proc fcQTransposeProxyModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QTransposeProxyModel_metacast".}
proc fcQTransposeProxyModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTransposeProxyModel_metacall".}
proc fcQTransposeProxyModel_tr(s: cstring): struct_miqt_string {.importc: "QTransposeProxyModel_tr".}
proc fcQTransposeProxyModel_setSourceModel(self: pointer, newSourceModel: pointer): void {.importc: "QTransposeProxyModel_setSourceModel".}
proc fcQTransposeProxyModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QTransposeProxyModel_rowCount".}
proc fcQTransposeProxyModel_columnCount(self: pointer, parent: pointer): cint {.importc: "QTransposeProxyModel_columnCount".}
proc fcQTransposeProxyModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QTransposeProxyModel_headerData".}
proc fcQTransposeProxyModel_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QTransposeProxyModel_setHeaderData".}
proc fcQTransposeProxyModel_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QTransposeProxyModel_setItemData".}
proc fcQTransposeProxyModel_span(self: pointer, index: pointer): pointer {.importc: "QTransposeProxyModel_span".}
proc fcQTransposeProxyModel_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QTransposeProxyModel_itemData".}
proc fcQTransposeProxyModel_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.importc: "QTransposeProxyModel_mapFromSource".}
proc fcQTransposeProxyModel_mapToSource(self: pointer, proxyIndex: pointer): pointer {.importc: "QTransposeProxyModel_mapToSource".}
proc fcQTransposeProxyModel_parent(self: pointer, index: pointer): pointer {.importc: "QTransposeProxyModel_parent".}
proc fcQTransposeProxyModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QTransposeProxyModel_index".}
proc fcQTransposeProxyModel_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_insertRows".}
proc fcQTransposeProxyModel_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_removeRows".}
proc fcQTransposeProxyModel_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QTransposeProxyModel_moveRows".}
proc fcQTransposeProxyModel_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_insertColumns".}
proc fcQTransposeProxyModel_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QTransposeProxyModel_removeColumns".}
proc fcQTransposeProxyModel_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QTransposeProxyModel_moveColumns".}
proc fcQTransposeProxyModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QTransposeProxyModel_sort".}
proc fcQTransposeProxyModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTransposeProxyModel_tr2".}
proc fcQTransposeProxyModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTransposeProxyModel_tr3".}
proc fQTransposeProxyModel_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTransposeProxyModel_virtualbase_metaObject".}
proc fcQTransposeProxyModel_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_metaObject".}
proc fQTransposeProxyModel_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTransposeProxyModel_virtualbase_metacast".}
proc fcQTransposeProxyModel_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_metacast".}
proc fQTransposeProxyModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTransposeProxyModel_virtualbase_metacall".}
proc fcQTransposeProxyModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_metacall".}
proc fQTransposeProxyModel_virtualbase_setSourceModel(self: pointer, newSourceModel: pointer): void{.importc: "QTransposeProxyModel_virtualbase_setSourceModel".}
proc fcQTransposeProxyModel_override_virtual_setSourceModel(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_setSourceModel".}
proc fQTransposeProxyModel_virtualbase_rowCount(self: pointer, parent: pointer): cint{.importc: "QTransposeProxyModel_virtualbase_rowCount".}
proc fcQTransposeProxyModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_rowCount".}
proc fQTransposeProxyModel_virtualbase_columnCount(self: pointer, parent: pointer): cint{.importc: "QTransposeProxyModel_virtualbase_columnCount".}
proc fcQTransposeProxyModel_override_virtual_columnCount(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_columnCount".}
proc fQTransposeProxyModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QTransposeProxyModel_virtualbase_headerData".}
proc fcQTransposeProxyModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_headerData".}
proc fQTransposeProxyModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QTransposeProxyModel_virtualbase_setHeaderData".}
proc fcQTransposeProxyModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_setHeaderData".}
proc fQTransposeProxyModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QTransposeProxyModel_virtualbase_setItemData".}
proc fcQTransposeProxyModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_setItemData".}
proc fQTransposeProxyModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QTransposeProxyModel_virtualbase_span".}
proc fcQTransposeProxyModel_override_virtual_span(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_span".}
proc fQTransposeProxyModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QTransposeProxyModel_virtualbase_itemData".}
proc fcQTransposeProxyModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_itemData".}
proc fQTransposeProxyModel_virtualbase_mapFromSource(self: pointer, sourceIndex: pointer): pointer{.importc: "QTransposeProxyModel_virtualbase_mapFromSource".}
proc fcQTransposeProxyModel_override_virtual_mapFromSource(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_mapFromSource".}
proc fQTransposeProxyModel_virtualbase_mapToSource(self: pointer, proxyIndex: pointer): pointer{.importc: "QTransposeProxyModel_virtualbase_mapToSource".}
proc fcQTransposeProxyModel_override_virtual_mapToSource(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_mapToSource".}
proc fQTransposeProxyModel_virtualbase_parent(self: pointer, index: pointer): pointer{.importc: "QTransposeProxyModel_virtualbase_parent".}
proc fcQTransposeProxyModel_override_virtual_parent(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_parent".}
proc fQTransposeProxyModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer{.importc: "QTransposeProxyModel_virtualbase_index".}
proc fcQTransposeProxyModel_override_virtual_index(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_index".}
proc fQTransposeProxyModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QTransposeProxyModel_virtualbase_insertRows".}
proc fcQTransposeProxyModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_insertRows".}
proc fQTransposeProxyModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QTransposeProxyModel_virtualbase_removeRows".}
proc fcQTransposeProxyModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_removeRows".}
proc fQTransposeProxyModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QTransposeProxyModel_virtualbase_moveRows".}
proc fcQTransposeProxyModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_moveRows".}
proc fQTransposeProxyModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QTransposeProxyModel_virtualbase_insertColumns".}
proc fcQTransposeProxyModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_insertColumns".}
proc fQTransposeProxyModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QTransposeProxyModel_virtualbase_removeColumns".}
proc fcQTransposeProxyModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_removeColumns".}
proc fQTransposeProxyModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QTransposeProxyModel_virtualbase_moveColumns".}
proc fcQTransposeProxyModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_moveColumns".}
proc fQTransposeProxyModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QTransposeProxyModel_virtualbase_sort".}
proc fcQTransposeProxyModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_sort".}
proc fQTransposeProxyModel_virtualbase_mapSelectionToSource(self: pointer, selection: pointer): pointer{.importc: "QTransposeProxyModel_virtualbase_mapSelectionToSource".}
proc fcQTransposeProxyModel_override_virtual_mapSelectionToSource(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_mapSelectionToSource".}
proc fQTransposeProxyModel_virtualbase_mapSelectionFromSource(self: pointer, selection: pointer): pointer{.importc: "QTransposeProxyModel_virtualbase_mapSelectionFromSource".}
proc fcQTransposeProxyModel_override_virtual_mapSelectionFromSource(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_mapSelectionFromSource".}
proc fQTransposeProxyModel_virtualbase_submit(self: pointer, ): bool{.importc: "QTransposeProxyModel_virtualbase_submit".}
proc fcQTransposeProxyModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_submit".}
proc fQTransposeProxyModel_virtualbase_revert(self: pointer, ): void{.importc: "QTransposeProxyModel_virtualbase_revert".}
proc fcQTransposeProxyModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_revert".}
proc fQTransposeProxyModel_virtualbase_data(self: pointer, proxyIndex: pointer, role: cint): pointer{.importc: "QTransposeProxyModel_virtualbase_data".}
proc fcQTransposeProxyModel_override_virtual_data(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_data".}
proc fQTransposeProxyModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QTransposeProxyModel_virtualbase_flags".}
proc fcQTransposeProxyModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_flags".}
proc fQTransposeProxyModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QTransposeProxyModel_virtualbase_setData".}
proc fcQTransposeProxyModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_setData".}
proc fQTransposeProxyModel_virtualbase_clearItemData(self: pointer, index: pointer): bool{.importc: "QTransposeProxyModel_virtualbase_clearItemData".}
proc fcQTransposeProxyModel_override_virtual_clearItemData(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_clearItemData".}
proc fQTransposeProxyModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QTransposeProxyModel_virtualbase_buddy".}
proc fcQTransposeProxyModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_buddy".}
proc fQTransposeProxyModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QTransposeProxyModel_virtualbase_canFetchMore".}
proc fcQTransposeProxyModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_canFetchMore".}
proc fQTransposeProxyModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QTransposeProxyModel_virtualbase_fetchMore".}
proc fcQTransposeProxyModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_fetchMore".}
proc fQTransposeProxyModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool{.importc: "QTransposeProxyModel_virtualbase_hasChildren".}
proc fcQTransposeProxyModel_override_virtual_hasChildren(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_hasChildren".}
proc fQTransposeProxyModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QTransposeProxyModel_virtualbase_sibling".}
proc fcQTransposeProxyModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_sibling".}
proc fQTransposeProxyModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QTransposeProxyModel_virtualbase_mimeData".}
proc fcQTransposeProxyModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_mimeData".}
proc fQTransposeProxyModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QTransposeProxyModel_virtualbase_canDropMimeData".}
proc fcQTransposeProxyModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_canDropMimeData".}
proc fQTransposeProxyModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QTransposeProxyModel_virtualbase_dropMimeData".}
proc fcQTransposeProxyModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_dropMimeData".}
proc fQTransposeProxyModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QTransposeProxyModel_virtualbase_mimeTypes".}
proc fcQTransposeProxyModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_mimeTypes".}
proc fQTransposeProxyModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QTransposeProxyModel_virtualbase_supportedDragActions".}
proc fcQTransposeProxyModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_supportedDragActions".}
proc fQTransposeProxyModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QTransposeProxyModel_virtualbase_supportedDropActions".}
proc fcQTransposeProxyModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_supportedDropActions".}
proc fQTransposeProxyModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QTransposeProxyModel_virtualbase_roleNames".}
proc fcQTransposeProxyModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_roleNames".}
proc fQTransposeProxyModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QTransposeProxyModel_virtualbase_match".}
proc fcQTransposeProxyModel_override_virtual_match(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_match".}
proc fQTransposeProxyModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void{.importc: "QTransposeProxyModel_virtualbase_multiData".}
proc fcQTransposeProxyModel_override_virtual_multiData(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_multiData".}
proc fQTransposeProxyModel_virtualbase_resetInternalData(self: pointer, ): void{.importc: "QTransposeProxyModel_virtualbase_resetInternalData".}
proc fcQTransposeProxyModel_override_virtual_resetInternalData(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_resetInternalData".}
proc fQTransposeProxyModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTransposeProxyModel_virtualbase_event".}
proc fcQTransposeProxyModel_override_virtual_event(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_event".}
proc fQTransposeProxyModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTransposeProxyModel_virtualbase_eventFilter".}
proc fcQTransposeProxyModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_eventFilter".}
proc fQTransposeProxyModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTransposeProxyModel_virtualbase_timerEvent".}
proc fcQTransposeProxyModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_timerEvent".}
proc fQTransposeProxyModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTransposeProxyModel_virtualbase_childEvent".}
proc fcQTransposeProxyModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_childEvent".}
proc fQTransposeProxyModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTransposeProxyModel_virtualbase_customEvent".}
proc fcQTransposeProxyModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_customEvent".}
proc fQTransposeProxyModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTransposeProxyModel_virtualbase_connectNotify".}
proc fcQTransposeProxyModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_connectNotify".}
proc fQTransposeProxyModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTransposeProxyModel_virtualbase_disconnectNotify".}
proc fcQTransposeProxyModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTransposeProxyModel_override_virtual_disconnectNotify".}
proc fcQTransposeProxyModel_staticMetaObject(): pointer {.importc: "QTransposeProxyModel_staticMetaObject".}
proc fcQTransposeProxyModel_delete(self: pointer) {.importc: "QTransposeProxyModel_delete".}


func init*(T: type QTransposeProxyModel, h: ptr cQTransposeProxyModel): QTransposeProxyModel =
  T(h: h)
proc create*(T: type QTransposeProxyModel, ): QTransposeProxyModel =

  QTransposeProxyModel.init(fcQTransposeProxyModel_new())
proc create*(T: type QTransposeProxyModel, parent: gen_qobject.QObject): QTransposeProxyModel =

  QTransposeProxyModel.init(fcQTransposeProxyModel_new2(parent.h))
proc metaObject*(self: QTransposeProxyModel, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTransposeProxyModel_metaObject(self.h))

proc metacast*(self: QTransposeProxyModel, param1: cstring): pointer =

  fcQTransposeProxyModel_metacast(self.h, param1)

proc metacall*(self: QTransposeProxyModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTransposeProxyModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTransposeProxyModel, s: cstring): string =

  let v_ms = fcQTransposeProxyModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSourceModel*(self: QTransposeProxyModel, newSourceModel: gen_qabstractitemmodel.QAbstractItemModel): void =

  fcQTransposeProxyModel_setSourceModel(self.h, newSourceModel.h)

proc rowCount*(self: QTransposeProxyModel, parent: gen_qabstractitemmodel.QModelIndex): cint =

  fcQTransposeProxyModel_rowCount(self.h, parent.h)

proc columnCount*(self: QTransposeProxyModel, parent: gen_qabstractitemmodel.QModelIndex): cint =

  fcQTransposeProxyModel_columnCount(self.h, parent.h)

proc headerData*(self: QTransposeProxyModel, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQTransposeProxyModel_headerData(self.h, section, cint(orientation), role))

proc setHeaderData*(self: QTransposeProxyModel, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool =

  fcQTransposeProxyModel_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc setItemData*(self: QTransposeProxyModel, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool =

  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQTransposeProxyModel_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc span*(self: QTransposeProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQTransposeProxyModel_span(self.h, index.h))

proc itemData*(self: QTransposeProxyModel, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant] =

  var v_mm = fcQTransposeProxyModel_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc mapFromSource*(self: QTransposeProxyModel, sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQTransposeProxyModel_mapFromSource(self.h, sourceIndex.h))

proc mapToSource*(self: QTransposeProxyModel, proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQTransposeProxyModel_mapToSource(self.h, proxyIndex.h))

proc parent*(self: QTransposeProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQTransposeProxyModel_parent(self.h, index.h))

proc index*(self: QTransposeProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQTransposeProxyModel_index(self.h, row, column, parent.h))

proc insertRows*(self: QTransposeProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQTransposeProxyModel_insertRows(self.h, row, count, parent.h)

proc removeRows*(self: QTransposeProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQTransposeProxyModel_removeRows(self.h, row, count, parent.h)

proc moveRows*(self: QTransposeProxyModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =

  fcQTransposeProxyModel_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc insertColumns*(self: QTransposeProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQTransposeProxyModel_insertColumns(self.h, column, count, parent.h)

proc removeColumns*(self: QTransposeProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQTransposeProxyModel_removeColumns(self.h, column, count, parent.h)

proc moveColumns*(self: QTransposeProxyModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =

  fcQTransposeProxyModel_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc sort*(self: QTransposeProxyModel, column: cint, order: gen_qnamespace.SortOrder): void =

  fcQTransposeProxyModel_sort(self.h, column, cint(order))

proc tr2*(_: type QTransposeProxyModel, s: cstring, c: cstring): string =

  let v_ms = fcQTransposeProxyModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTransposeProxyModel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTransposeProxyModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QTransposeProxyModel, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQTransposeProxyModel_virtualbase_metaObject(self.h))

type QTransposeProxyModelmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_metaObject(self: ptr cQTransposeProxyModel, slot: int): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_metaObject ".} =
  type Cb = proc(super: QTransposeProxyModelmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QTransposeProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QTransposeProxyModel, param1: cstring): pointer =


  fQTransposeProxyModel_virtualbase_metacast(self.h, param1)

type QTransposeProxyModelmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_metacast(self: ptr cQTransposeProxyModel, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_metacast ".} =
  type Cb = proc(super: QTransposeProxyModelmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QTransposeProxyModel(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QTransposeProxyModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTransposeProxyModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTransposeProxyModelmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_metacall(self: ptr cQTransposeProxyModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTransposeProxyModel_metacall ".} =
  type Cb = proc(super: QTransposeProxyModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTransposeProxyModel(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setSourceModel(self: QTransposeProxyModel, newSourceModel: gen_qabstractitemmodel.QAbstractItemModel): void =


  fQTransposeProxyModel_virtualbase_setSourceModel(self.h, newSourceModel.h)

type QTransposeProxyModelsetSourceModelBase* = proc(newSourceModel: gen_qabstractitemmodel.QAbstractItemModel): void
proc onsetSourceModel*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelsetSourceModelBase, newSourceModel: gen_qabstractitemmodel.QAbstractItemModel): void) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelsetSourceModelBase, newSourceModel: gen_qabstractitemmodel.QAbstractItemModel): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_setSourceModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_setSourceModel(self: ptr cQTransposeProxyModel, slot: int, newSourceModel: pointer): void {.exportc: "miqt_exec_callback_QTransposeProxyModel_setSourceModel ".} =
  type Cb = proc(super: QTransposeProxyModelsetSourceModelBase, newSourceModel: gen_qabstractitemmodel.QAbstractItemModel): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(newSourceModel: gen_qabstractitemmodel.QAbstractItemModel): auto =
    callVirtualBase_setSourceModel(QTransposeProxyModel(h: self), newSourceModel)
  let slotval1 = gen_qabstractitemmodel.QAbstractItemModel(h: newSourceModel)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_rowCount(self: QTransposeProxyModel, parent: gen_qabstractitemmodel.QModelIndex): cint =


  fQTransposeProxyModel_virtualbase_rowCount(self.h, parent.h)

type QTransposeProxyModelrowCountBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): cint
proc onrowCount*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_rowCount(self: ptr cQTransposeProxyModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QTransposeProxyModel_rowCount ".} =
  type Cb = proc(super: QTransposeProxyModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_rowCount(QTransposeProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_columnCount(self: QTransposeProxyModel, parent: gen_qabstractitemmodel.QModelIndex): cint =


  fQTransposeProxyModel_virtualbase_columnCount(self.h, parent.h)

type QTransposeProxyModelcolumnCountBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): cint
proc oncolumnCount*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelcolumnCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelcolumnCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_columnCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_columnCount(self: ptr cQTransposeProxyModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QTransposeProxyModel_columnCount ".} =
  type Cb = proc(super: QTransposeProxyModelcolumnCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_columnCount(QTransposeProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_headerData(self: QTransposeProxyModel, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQTransposeProxyModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QTransposeProxyModelheaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
proc onheaderData*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_headerData(self: ptr cQTransposeProxyModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_headerData ".} =
  type Cb = proc(super: QTransposeProxyModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, role: cint): auto =
    callVirtualBase_headerData(QTransposeProxyModel(h: self), section, orientation, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_setHeaderData(self: QTransposeProxyModel, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool =


  fQTransposeProxyModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QTransposeProxyModelsetHeaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
proc onsetHeaderData*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_setHeaderData(self: ptr cQTransposeProxyModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_setHeaderData ".} =
  type Cb = proc(super: QTransposeProxyModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setHeaderData(QTransposeProxyModel(h: self), section, orientation, value, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = gen_qvariant.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_setItemData(self: QTransposeProxyModel, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool =

  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1


  fQTransposeProxyModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QTransposeProxyModelsetItemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
proc onsetItemData*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_setItemData(self: ptr cQTransposeProxyModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_setItemData ".} =
  type Cb = proc(super: QTransposeProxyModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): auto =
    callVirtualBase_setItemData(QTransposeProxyModel(h: self), index, roles)
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
proc callVirtualBase_span(self: QTransposeProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize =


  gen_qsize.QSize(h: fQTransposeProxyModel_virtualbase_span(self.h, index.h))

type QTransposeProxyModelspanBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
proc onspan*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_span(self: ptr cQTransposeProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_span ".} =
  type Cb = proc(super: QTransposeProxyModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_span(QTransposeProxyModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_itemData(self: QTransposeProxyModel, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant] =


  var v_mm = fQTransposeProxyModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QTransposeProxyModelitemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
proc onitemData*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_itemData(self: ptr cQTransposeProxyModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QTransposeProxyModel_itemData ".} =
  type Cb = proc(super: QTransposeProxyModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_itemData(QTransposeProxyModel(h: self), index)
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
proc callVirtualBase_mapFromSource(self: QTransposeProxyModel, sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQTransposeProxyModel_virtualbase_mapFromSource(self.h, sourceIndex.h))

type QTransposeProxyModelmapFromSourceBase* = proc(sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onmapFromSource*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelmapFromSourceBase, sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelmapFromSourceBase, sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_mapFromSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_mapFromSource(self: ptr cQTransposeProxyModel, slot: int, sourceIndex: pointer): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_mapFromSource ".} =
  type Cb = proc(super: QTransposeProxyModelmapFromSourceBase, sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceIndex: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_mapFromSource(QTransposeProxyModel(h: self), sourceIndex)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceIndex)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_mapToSource(self: QTransposeProxyModel, proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQTransposeProxyModel_virtualbase_mapToSource(self.h, proxyIndex.h))

type QTransposeProxyModelmapToSourceBase* = proc(proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onmapToSource*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelmapToSourceBase, proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelmapToSourceBase, proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_mapToSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_mapToSource(self: ptr cQTransposeProxyModel, slot: int, proxyIndex: pointer): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_mapToSource ".} =
  type Cb = proc(super: QTransposeProxyModelmapToSourceBase, proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(proxyIndex: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_mapToSource(QTransposeProxyModel(h: self), proxyIndex)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: proxyIndex)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_parent(self: QTransposeProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQTransposeProxyModel_virtualbase_parent(self.h, index.h))

type QTransposeProxyModelparentBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onparent*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelparentBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelparentBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_parent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_parent(self: ptr cQTransposeProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_parent ".} =
  type Cb = proc(super: QTransposeProxyModelparentBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_parent(QTransposeProxyModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_index(self: QTransposeProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQTransposeProxyModel_virtualbase_index(self.h, row, column, parent.h))

type QTransposeProxyModelindexBase* = proc(row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onindex*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_index(self: ptr cQTransposeProxyModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_index ".} =
  type Cb = proc(super: QTransposeProxyModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_index(QTransposeProxyModel(h: self), row, column, parent)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_insertRows(self: QTransposeProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQTransposeProxyModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QTransposeProxyModelinsertRowsBase* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oninsertRows*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_insertRows(self: ptr cQTransposeProxyModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_insertRows ".} =
  type Cb = proc(super: QTransposeProxyModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_insertRows(QTransposeProxyModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeRows(self: QTransposeProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQTransposeProxyModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QTransposeProxyModelremoveRowsBase* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc onremoveRows*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_removeRows(self: ptr cQTransposeProxyModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_removeRows ".} =
  type Cb = proc(super: QTransposeProxyModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_removeRows(QTransposeProxyModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_moveRows(self: QTransposeProxyModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =


  fQTransposeProxyModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QTransposeProxyModelmoveRowsBase* = proc(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_moveRows(self: ptr cQTransposeProxyModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_moveRows ".} =
  type Cb = proc(super: QTransposeProxyModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveRows(QTransposeProxyModel(h: self), sourceParent, sourceRow, count, destinationParent, destinationChild)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_insertColumns(self: QTransposeProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQTransposeProxyModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QTransposeProxyModelinsertColumnsBase* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oninsertColumns*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_insertColumns(self: ptr cQTransposeProxyModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_insertColumns ".} =
  type Cb = proc(super: QTransposeProxyModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_insertColumns(QTransposeProxyModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeColumns(self: QTransposeProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQTransposeProxyModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QTransposeProxyModelremoveColumnsBase* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc onremoveColumns*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_removeColumns(self: ptr cQTransposeProxyModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_removeColumns ".} =
  type Cb = proc(super: QTransposeProxyModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_removeColumns(QTransposeProxyModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_moveColumns(self: QTransposeProxyModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =


  fQTransposeProxyModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QTransposeProxyModelmoveColumnsBase* = proc(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_moveColumns(self: ptr cQTransposeProxyModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_moveColumns ".} =
  type Cb = proc(super: QTransposeProxyModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveColumns(QTransposeProxyModel(h: self), sourceParent, sourceColumn, count, destinationParent, destinationChild)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_sort(self: QTransposeProxyModel, column: cint, order: gen_qnamespace.SortOrder): void =


  fQTransposeProxyModel_virtualbase_sort(self.h, column, cint(order))

type QTransposeProxyModelsortBase* = proc(column: cint, order: gen_qnamespace.SortOrder): void
proc onsort*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_sort(self: ptr cQTransposeProxyModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QTransposeProxyModel_sort ".} =
  type Cb = proc(super: QTransposeProxyModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, order: gen_qnamespace.SortOrder): auto =
    callVirtualBase_sort(QTransposeProxyModel(h: self), column, order)
  let slotval1 = column

  let slotval2 = gen_qnamespace.SortOrder(order)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_mapSelectionToSource(self: QTransposeProxyModel, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection =


  gen_qitemselectionmodel.QItemSelection(h: fQTransposeProxyModel_virtualbase_mapSelectionToSource(self.h, selection.h))

type QTransposeProxyModelmapSelectionToSourceBase* = proc(selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
proc onmapSelectionToSource*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelmapSelectionToSourceBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelmapSelectionToSourceBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_mapSelectionToSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_mapSelectionToSource(self: ptr cQTransposeProxyModel, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_mapSelectionToSource ".} =
  type Cb = proc(super: QTransposeProxyModelmapSelectionToSourceBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selection: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_mapSelectionToSource(QTransposeProxyModel(h: self), selection)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_mapSelectionFromSource(self: QTransposeProxyModel, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection =


  gen_qitemselectionmodel.QItemSelection(h: fQTransposeProxyModel_virtualbase_mapSelectionFromSource(self.h, selection.h))

type QTransposeProxyModelmapSelectionFromSourceBase* = proc(selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
proc onmapSelectionFromSource*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelmapSelectionFromSourceBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelmapSelectionFromSourceBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_mapSelectionFromSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_mapSelectionFromSource(self: ptr cQTransposeProxyModel, slot: int, selection: pointer): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_mapSelectionFromSource ".} =
  type Cb = proc(super: QTransposeProxyModelmapSelectionFromSourceBase, selection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selection: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_mapSelectionFromSource(QTransposeProxyModel(h: self), selection)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: selection)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_submit(self: QTransposeProxyModel, ): bool =


  fQTransposeProxyModel_virtualbase_submit(self.h)

type QTransposeProxyModelsubmitBase* = proc(): bool
proc onsubmit*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelsubmitBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelsubmitBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_submit(self: ptr cQTransposeProxyModel, slot: int): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_submit ".} =
  type Cb = proc(super: QTransposeProxyModelsubmitBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_submit(QTransposeProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_revert(self: QTransposeProxyModel, ): void =


  fQTransposeProxyModel_virtualbase_revert(self.h)

type QTransposeProxyModelrevertBase* = proc(): void
proc onrevert*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelrevertBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelrevertBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_revert(self: ptr cQTransposeProxyModel, slot: int): void {.exportc: "miqt_exec_callback_QTransposeProxyModel_revert ".} =
  type Cb = proc(super: QTransposeProxyModelrevertBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_revert(QTransposeProxyModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_data(self: QTransposeProxyModel, proxyIndex: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQTransposeProxyModel_virtualbase_data(self.h, proxyIndex.h, role))

type QTransposeProxyModeldataBase* = proc(proxyIndex: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
proc ondata*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModeldataBase, proxyIndex: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModeldataBase, proxyIndex: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_data(self: ptr cQTransposeProxyModel, slot: int, proxyIndex: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_data ".} =
  type Cb = proc(super: QTransposeProxyModeldataBase, proxyIndex: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(proxyIndex: gen_qabstractitemmodel.QModelIndex, role: cint): auto =
    callVirtualBase_data(QTransposeProxyModel(h: self), proxyIndex, role)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: proxyIndex)

  let slotval2 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_flags(self: QTransposeProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag =


  gen_qnamespace.ItemFlag(fQTransposeProxyModel_virtualbase_flags(self.h, index.h))

type QTransposeProxyModelflagsBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
proc onflags*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_flags(self: ptr cQTransposeProxyModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QTransposeProxyModel_flags ".} =
  type Cb = proc(super: QTransposeProxyModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_flags(QTransposeProxyModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  cint(virtualReturn)
proc callVirtualBase_setData(self: QTransposeProxyModel, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool =


  fQTransposeProxyModel_virtualbase_setData(self.h, index.h, value.h, role)

type QTransposeProxyModelsetDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
proc onsetData*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_setData(self: ptr cQTransposeProxyModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_setData ".} =
  type Cb = proc(super: QTransposeProxyModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setData(QTransposeProxyModel(h: self), index, value, role)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qvariant.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_clearItemData(self: QTransposeProxyModel, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQTransposeProxyModel_virtualbase_clearItemData(self.h, index.h)

type QTransposeProxyModelclearItemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex): bool
proc onclearItemData*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelclearItemDataBase, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelclearItemDataBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_clearItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_clearItemData(self: ptr cQTransposeProxyModel, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_clearItemData ".} =
  type Cb = proc(super: QTransposeProxyModelclearItemDataBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_clearItemData(QTransposeProxyModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_buddy(self: QTransposeProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQTransposeProxyModel_virtualbase_buddy(self.h, index.h))

type QTransposeProxyModelbuddyBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onbuddy*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_buddy(self: ptr cQTransposeProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_buddy ".} =
  type Cb = proc(super: QTransposeProxyModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_buddy(QTransposeProxyModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_canFetchMore(self: QTransposeProxyModel, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQTransposeProxyModel_virtualbase_canFetchMore(self.h, parent.h)

type QTransposeProxyModelcanFetchMoreBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): bool
proc oncanFetchMore*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_canFetchMore(self: ptr cQTransposeProxyModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_canFetchMore ".} =
  type Cb = proc(super: QTransposeProxyModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_canFetchMore(QTransposeProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_fetchMore(self: QTransposeProxyModel, parent: gen_qabstractitemmodel.QModelIndex): void =


  fQTransposeProxyModel_virtualbase_fetchMore(self.h, parent.h)

type QTransposeProxyModelfetchMoreBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): void
proc onfetchMore*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_fetchMore(self: ptr cQTransposeProxyModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QTransposeProxyModel_fetchMore ".} =
  type Cb = proc(super: QTransposeProxyModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_fetchMore(QTransposeProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hasChildren(self: QTransposeProxyModel, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQTransposeProxyModel_virtualbase_hasChildren(self.h, parent.h)

type QTransposeProxyModelhasChildrenBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): bool
proc onhasChildren*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelhasChildrenBase, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelhasChildrenBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_hasChildren(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_hasChildren(self: ptr cQTransposeProxyModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_hasChildren ".} =
  type Cb = proc(super: QTransposeProxyModelhasChildrenBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_hasChildren(QTransposeProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_sibling(self: QTransposeProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQTransposeProxyModel_virtualbase_sibling(self.h, row, column, idx.h))

type QTransposeProxyModelsiblingBase* = proc(row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onsibling*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_sibling(self: ptr cQTransposeProxyModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_sibling ".} =
  type Cb = proc(super: QTransposeProxyModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_sibling(QTransposeProxyModel(h: self), row, column, idx)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: idx)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_mimeData(self: QTransposeProxyModel, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData =

  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h


  gen_qmimedata.QMimeData(h: fQTransposeProxyModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QTransposeProxyModelmimeDataBase* = proc(indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
proc onmimeData*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_mimeData(self: ptr cQTransposeProxyModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QTransposeProxyModel_mimeData ".} =
  type Cb = proc(super: QTransposeProxyModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(indexes: seq[gen_qabstractitemmodel.QModelIndex]): auto =
    callVirtualBase_mimeData(QTransposeProxyModel(h: self), indexes)
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_canDropMimeData(self: QTransposeProxyModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQTransposeProxyModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QTransposeProxyModelcanDropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oncanDropMimeData*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_canDropMimeData(self: ptr cQTransposeProxyModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_canDropMimeData ".} =
  type Cb = proc(super: QTransposeProxyModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_canDropMimeData(QTransposeProxyModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_dropMimeData(self: QTransposeProxyModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQTransposeProxyModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QTransposeProxyModeldropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc ondropMimeData*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_dropMimeData(self: ptr cQTransposeProxyModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_dropMimeData ".} =
  type Cb = proc(super: QTransposeProxyModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_dropMimeData(QTransposeProxyModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_mimeTypes(self: QTransposeProxyModel, ): seq[string] =


  var v_ma = fQTransposeProxyModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QTransposeProxyModelmimeTypesBase* = proc(): seq[string]
proc onmimeTypes*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelmimeTypesBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelmimeTypesBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_mimeTypes(self: ptr cQTransposeProxyModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QTransposeProxyModel_mimeTypes ".} =
  type Cb = proc(super: QTransposeProxyModelmimeTypesBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mimeTypes(QTransposeProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_supportedDragActions(self: QTransposeProxyModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQTransposeProxyModel_virtualbase_supportedDragActions(self.h))

type QTransposeProxyModelsupportedDragActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDragActions*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelsupportedDragActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_supportedDragActions(self: ptr cQTransposeProxyModel, slot: int): cint {.exportc: "miqt_exec_callback_QTransposeProxyModel_supportedDragActions ".} =
  type Cb = proc(super: QTransposeProxyModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDragActions(QTransposeProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_supportedDropActions(self: QTransposeProxyModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQTransposeProxyModel_virtualbase_supportedDropActions(self.h))

type QTransposeProxyModelsupportedDropActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDropActions*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelsupportedDropActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_supportedDropActions(self: ptr cQTransposeProxyModel, slot: int): cint {.exportc: "miqt_exec_callback_QTransposeProxyModel_supportedDropActions ".} =
  type Cb = proc(super: QTransposeProxyModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDropActions(QTransposeProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_roleNames(self: QTransposeProxyModel, ): Table[cint,seq[byte]] =


  var v_mm = fQTransposeProxyModel_virtualbase_roleNames(self.h)
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

type QTransposeProxyModelroleNamesBase* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelroleNamesBase): Table[cint,seq[byte]]) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelroleNamesBase): Table[cint,seq[byte]]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_roleNames(self: ptr cQTransposeProxyModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QTransposeProxyModel_roleNames ".} =
  type Cb = proc(super: QTransposeProxyModelroleNamesBase): Table[cint,seq[byte]]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_roleNames(QTransposeProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc callVirtualBase_match(self: QTransposeProxyModel, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex] =


  var v_ma = fQTransposeProxyModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

type QTransposeProxyModelmatchBase* = proc(start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
proc onmatch*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_match(self: ptr cQTransposeProxyModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QTransposeProxyModel_match ".} =
  type Cb = proc(super: QTransposeProxyModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): auto =
    callVirtualBase_match(QTransposeProxyModel(h: self), start, role, value, hits, flags)
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
proc callVirtualBase_multiData(self: QTransposeProxyModel, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void =


  fQTransposeProxyModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

type QTransposeProxyModelmultiDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
proc onmultiData*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelmultiDataBase, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelmultiDataBase, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_multiData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_multiData(self: ptr cQTransposeProxyModel, slot: int, index: pointer, roleDataSpan: pointer): void {.exportc: "miqt_exec_callback_QTransposeProxyModel_multiData ".} =
  type Cb = proc(super: QTransposeProxyModelmultiDataBase, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): auto =
    callVirtualBase_multiData(QTransposeProxyModel(h: self), index, roleDataSpan)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemmodel.QModelRoleDataSpan(h: roleDataSpan)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_resetInternalData(self: QTransposeProxyModel, ): void =


  fQTransposeProxyModel_virtualbase_resetInternalData(self.h)

type QTransposeProxyModelresetInternalDataBase* = proc(): void
proc onresetInternalData*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelresetInternalDataBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelresetInternalDataBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_resetInternalData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_resetInternalData(self: ptr cQTransposeProxyModel, slot: int): void {.exportc: "miqt_exec_callback_QTransposeProxyModel_resetInternalData ".} =
  type Cb = proc(super: QTransposeProxyModelresetInternalDataBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_resetInternalData(QTransposeProxyModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_event(self: QTransposeProxyModel, event: gen_qcoreevent.QEvent): bool =


  fQTransposeProxyModel_virtualbase_event(self.h, event.h)

type QTransposeProxyModeleventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModeleventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModeleventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_event(self: ptr cQTransposeProxyModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_event ".} =
  type Cb = proc(super: QTransposeProxyModeleventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTransposeProxyModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QTransposeProxyModel, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQTransposeProxyModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTransposeProxyModeleventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_eventFilter(self: ptr cQTransposeProxyModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTransposeProxyModel_eventFilter ".} =
  type Cb = proc(super: QTransposeProxyModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTransposeProxyModel(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QTransposeProxyModel, event: gen_qcoreevent.QTimerEvent): void =


  fQTransposeProxyModel_virtualbase_timerEvent(self.h, event.h)

type QTransposeProxyModeltimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_timerEvent(self: ptr cQTransposeProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTransposeProxyModel_timerEvent ".} =
  type Cb = proc(super: QTransposeProxyModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTransposeProxyModel(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QTransposeProxyModel, event: gen_qcoreevent.QChildEvent): void =


  fQTransposeProxyModel_virtualbase_childEvent(self.h, event.h)

type QTransposeProxyModelchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_childEvent(self: ptr cQTransposeProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTransposeProxyModel_childEvent ".} =
  type Cb = proc(super: QTransposeProxyModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTransposeProxyModel(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTransposeProxyModel, event: gen_qcoreevent.QEvent): void =


  fQTransposeProxyModel_virtualbase_customEvent(self.h, event.h)

type QTransposeProxyModelcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_customEvent(self: ptr cQTransposeProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTransposeProxyModel_customEvent ".} =
  type Cb = proc(super: QTransposeProxyModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTransposeProxyModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTransposeProxyModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQTransposeProxyModel_virtualbase_connectNotify(self.h, signal.h)

type QTransposeProxyModelconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_connectNotify(self: ptr cQTransposeProxyModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTransposeProxyModel_connectNotify ".} =
  type Cb = proc(super: QTransposeProxyModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTransposeProxyModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTransposeProxyModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQTransposeProxyModel_virtualbase_disconnectNotify(self.h, signal.h)

type QTransposeProxyModeldisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTransposeProxyModel, slot: proc(super: QTransposeProxyModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTransposeProxyModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTransposeProxyModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTransposeProxyModel_disconnectNotify(self: ptr cQTransposeProxyModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTransposeProxyModel_disconnectNotify ".} =
  type Cb = proc(super: QTransposeProxyModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTransposeProxyModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QTransposeProxyModel): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQTransposeProxyModel_staticMetaObject())
proc delete*(self: QTransposeProxyModel) =
  fcQTransposeProxyModel_delete(self.h)
