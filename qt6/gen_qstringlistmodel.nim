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
{.compile("gen_qstringlistmodel.cpp", cflags).}


import gen_qstringlistmodel_types
export gen_qstringlistmodel_types

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

type cQStringListModel*{.exportc: "QStringListModel", incompleteStruct.} = object

proc fcQStringListModel_new(): ptr cQStringListModel {.importc: "QStringListModel_new".}
proc fcQStringListModel_new2(strings: struct_miqt_array): ptr cQStringListModel {.importc: "QStringListModel_new2".}
proc fcQStringListModel_new3(parent: pointer): ptr cQStringListModel {.importc: "QStringListModel_new3".}
proc fcQStringListModel_new4(strings: struct_miqt_array, parent: pointer): ptr cQStringListModel {.importc: "QStringListModel_new4".}
proc fcQStringListModel_metaObject(self: pointer, ): pointer {.importc: "QStringListModel_metaObject".}
proc fcQStringListModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QStringListModel_metacast".}
proc fcQStringListModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStringListModel_metacall".}
proc fcQStringListModel_tr(s: cstring): struct_miqt_string {.importc: "QStringListModel_tr".}
proc fcQStringListModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QStringListModel_rowCount".}
proc fcQStringListModel_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QStringListModel_sibling".}
proc fcQStringListModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QStringListModel_data".}
proc fcQStringListModel_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QStringListModel_setData".}
proc fcQStringListModel_clearItemData(self: pointer, index: pointer): bool {.importc: "QStringListModel_clearItemData".}
proc fcQStringListModel_flags(self: pointer, index: pointer): cint {.importc: "QStringListModel_flags".}
proc fcQStringListModel_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QStringListModel_insertRows".}
proc fcQStringListModel_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QStringListModel_removeRows".}
proc fcQStringListModel_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QStringListModel_moveRows".}
proc fcQStringListModel_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QStringListModel_itemData".}
proc fcQStringListModel_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QStringListModel_setItemData".}
proc fcQStringListModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QStringListModel_sort".}
proc fcQStringListModel_stringList(self: pointer, ): struct_miqt_array {.importc: "QStringListModel_stringList".}
proc fcQStringListModel_setStringList(self: pointer, strings: struct_miqt_array): void {.importc: "QStringListModel_setStringList".}
proc fcQStringListModel_supportedDropActions(self: pointer, ): cint {.importc: "QStringListModel_supportedDropActions".}
proc fcQStringListModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStringListModel_tr2".}
proc fcQStringListModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStringListModel_tr3".}
proc fQStringListModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QStringListModel_virtualbase_metacall".}
proc fcQStringListModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_metacall".}
proc fQStringListModel_virtualbase_rowCount(self: pointer, parent: pointer): cint{.importc: "QStringListModel_virtualbase_rowCount".}
proc fcQStringListModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_rowCount".}
proc fQStringListModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QStringListModel_virtualbase_sibling".}
proc fcQStringListModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_sibling".}
proc fQStringListModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer{.importc: "QStringListModel_virtualbase_data".}
proc fcQStringListModel_override_virtual_data(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_data".}
proc fQStringListModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QStringListModel_virtualbase_setData".}
proc fcQStringListModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_setData".}
proc fQStringListModel_virtualbase_clearItemData(self: pointer, index: pointer): bool{.importc: "QStringListModel_virtualbase_clearItemData".}
proc fcQStringListModel_override_virtual_clearItemData(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_clearItemData".}
proc fQStringListModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QStringListModel_virtualbase_flags".}
proc fcQStringListModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_flags".}
proc fQStringListModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QStringListModel_virtualbase_insertRows".}
proc fcQStringListModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_insertRows".}
proc fQStringListModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QStringListModel_virtualbase_removeRows".}
proc fcQStringListModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_removeRows".}
proc fQStringListModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QStringListModel_virtualbase_moveRows".}
proc fcQStringListModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_moveRows".}
proc fQStringListModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QStringListModel_virtualbase_itemData".}
proc fcQStringListModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_itemData".}
proc fQStringListModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QStringListModel_virtualbase_setItemData".}
proc fcQStringListModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_setItemData".}
proc fQStringListModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QStringListModel_virtualbase_sort".}
proc fcQStringListModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_sort".}
proc fQStringListModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QStringListModel_virtualbase_supportedDropActions".}
proc fcQStringListModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_supportedDropActions".}
proc fQStringListModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer{.importc: "QStringListModel_virtualbase_index".}
proc fcQStringListModel_override_virtual_index(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_index".}
proc fQStringListModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QStringListModel_virtualbase_dropMimeData".}
proc fcQStringListModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_dropMimeData".}
proc fQStringListModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QStringListModel_virtualbase_headerData".}
proc fcQStringListModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_headerData".}
proc fQStringListModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QStringListModel_virtualbase_setHeaderData".}
proc fcQStringListModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_setHeaderData".}
proc fQStringListModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QStringListModel_virtualbase_mimeTypes".}
proc fcQStringListModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_mimeTypes".}
proc fQStringListModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QStringListModel_virtualbase_mimeData".}
proc fcQStringListModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_mimeData".}
proc fQStringListModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QStringListModel_virtualbase_canDropMimeData".}
proc fcQStringListModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_canDropMimeData".}
proc fQStringListModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QStringListModel_virtualbase_supportedDragActions".}
proc fcQStringListModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_supportedDragActions".}
proc fQStringListModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QStringListModel_virtualbase_insertColumns".}
proc fcQStringListModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_insertColumns".}
proc fQStringListModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QStringListModel_virtualbase_removeColumns".}
proc fcQStringListModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_removeColumns".}
proc fQStringListModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QStringListModel_virtualbase_moveColumns".}
proc fcQStringListModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_moveColumns".}
proc fQStringListModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QStringListModel_virtualbase_fetchMore".}
proc fcQStringListModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_fetchMore".}
proc fQStringListModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QStringListModel_virtualbase_canFetchMore".}
proc fcQStringListModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_canFetchMore".}
proc fQStringListModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QStringListModel_virtualbase_buddy".}
proc fcQStringListModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_buddy".}
proc fQStringListModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QStringListModel_virtualbase_match".}
proc fcQStringListModel_override_virtual_match(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_match".}
proc fQStringListModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QStringListModel_virtualbase_span".}
proc fcQStringListModel_override_virtual_span(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_span".}
proc fQStringListModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QStringListModel_virtualbase_roleNames".}
proc fcQStringListModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_roleNames".}
proc fQStringListModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void{.importc: "QStringListModel_virtualbase_multiData".}
proc fcQStringListModel_override_virtual_multiData(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_multiData".}
proc fQStringListModel_virtualbase_submit(self: pointer, ): bool{.importc: "QStringListModel_virtualbase_submit".}
proc fcQStringListModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_submit".}
proc fQStringListModel_virtualbase_revert(self: pointer, ): void{.importc: "QStringListModel_virtualbase_revert".}
proc fcQStringListModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_revert".}
proc fQStringListModel_virtualbase_resetInternalData(self: pointer, ): void{.importc: "QStringListModel_virtualbase_resetInternalData".}
proc fcQStringListModel_override_virtual_resetInternalData(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_resetInternalData".}
proc fQStringListModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QStringListModel_virtualbase_event".}
proc fcQStringListModel_override_virtual_event(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_event".}
proc fQStringListModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QStringListModel_virtualbase_eventFilter".}
proc fcQStringListModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_eventFilter".}
proc fQStringListModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QStringListModel_virtualbase_timerEvent".}
proc fcQStringListModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_timerEvent".}
proc fQStringListModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QStringListModel_virtualbase_childEvent".}
proc fcQStringListModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_childEvent".}
proc fQStringListModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QStringListModel_virtualbase_customEvent".}
proc fcQStringListModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_customEvent".}
proc fQStringListModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QStringListModel_virtualbase_connectNotify".}
proc fcQStringListModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_connectNotify".}
proc fQStringListModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QStringListModel_virtualbase_disconnectNotify".}
proc fcQStringListModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QStringListModel_override_virtual_disconnectNotify".}
proc fcQStringListModel_delete(self: pointer) {.importc: "QStringListModel_delete".}


func init*(T: type QStringListModel, h: ptr cQStringListModel): QStringListModel =
  T(h: h)
proc create*(T: type QStringListModel, ): QStringListModel =

  QStringListModel.init(fcQStringListModel_new())
proc create*(T: type QStringListModel, strings: seq[string]): QStringListModel =

  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  QStringListModel.init(fcQStringListModel_new2(struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0]))))
proc create*(T: type QStringListModel, parent: gen_qobject.QObject): QStringListModel =

  QStringListModel.init(fcQStringListModel_new3(parent.h))
proc create*(T: type QStringListModel, strings: seq[string], parent: gen_qobject.QObject): QStringListModel =

  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  QStringListModel.init(fcQStringListModel_new4(struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])), parent.h))
proc metaObject*(self: QStringListModel, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQStringListModel_metaObject(self.h))

proc metacast*(self: QStringListModel, param1: cstring): pointer =

  fcQStringListModel_metacast(self.h, param1)

proc metacall*(self: QStringListModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQStringListModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QStringListModel, s: cstring): string =

  let v_ms = fcQStringListModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc rowCount*(self: QStringListModel, parent: gen_qabstractitemmodel.QModelIndex): cint =

  fcQStringListModel_rowCount(self.h, parent.h)

proc sibling*(self: QStringListModel, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQStringListModel_sibling(self.h, row, column, idx.h))

proc data*(self: QStringListModel, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQStringListModel_data(self.h, index.h, role))

proc setData*(self: QStringListModel, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool =

  fcQStringListModel_setData(self.h, index.h, value.h, role)

proc clearItemData*(self: QStringListModel, index: gen_qabstractitemmodel.QModelIndex): bool =

  fcQStringListModel_clearItemData(self.h, index.h)

proc flags*(self: QStringListModel, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag =

  gen_qnamespace.ItemFlag(fcQStringListModel_flags(self.h, index.h))

proc insertRows*(self: QStringListModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQStringListModel_insertRows(self.h, row, count, parent.h)

proc removeRows*(self: QStringListModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQStringListModel_removeRows(self.h, row, count, parent.h)

proc moveRows*(self: QStringListModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =

  fcQStringListModel_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc itemData*(self: QStringListModel, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant] =

  var v_mm = fcQStringListModel_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc setItemData*(self: QStringListModel, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool =

  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQStringListModel_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc sort*(self: QStringListModel, column: cint, order: gen_qnamespace.SortOrder): void =

  fcQStringListModel_sort(self.h, column, cint(order))

proc stringList*(self: QStringListModel, ): seq[string] =

  var v_ma = fcQStringListModel_stringList(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setStringList*(self: QStringListModel, strings: seq[string]): void =

  var strings_CArray = newSeq[struct_miqt_string](len(strings))
  for i in 0..<len(strings):
    strings_CArray[i] = struct_miqt_string(data: strings[i], len: csize_t(len(strings[i])))

  fcQStringListModel_setStringList(self.h, struct_miqt_array(len: csize_t(len(strings)), data: if len(strings) == 0: nil else: addr(strings_CArray[0])))

proc supportedDropActions*(self: QStringListModel, ): gen_qnamespace.DropAction =

  gen_qnamespace.DropAction(fcQStringListModel_supportedDropActions(self.h))

proc tr2*(_: type QStringListModel, s: cstring, c: cstring): string =

  let v_ms = fcQStringListModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QStringListModel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQStringListModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QStringListModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQStringListModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QStringListModelmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QStringListModel, slot: proc(super: QStringListModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_metacall(self: ptr cQStringListModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QStringListModel_metacall ".} =
  type Cb = proc(super: QStringListModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QStringListModel(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_rowCount(self: QStringListModel, parent: gen_qabstractitemmodel.QModelIndex): cint =


  fQStringListModel_virtualbase_rowCount(self.h, parent.h)

type QStringListModelrowCountBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): cint
proc onrowCount*(self: QStringListModel, slot: proc(super: QStringListModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_rowCount(self: ptr cQStringListModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QStringListModel_rowCount ".} =
  type Cb = proc(super: QStringListModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_rowCount(QStringListModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_sibling(self: QStringListModel, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQStringListModel_virtualbase_sibling(self.h, row, column, idx.h))

type QStringListModelsiblingBase* = proc(row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onsibling*(self: QStringListModel, slot: proc(super: QStringListModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_sibling(self: ptr cQStringListModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QStringListModel_sibling ".} =
  type Cb = proc(super: QStringListModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_sibling(QStringListModel(h: self), row, column, idx)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: idx)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_data(self: QStringListModel, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQStringListModel_virtualbase_data(self.h, index.h, role))

type QStringListModeldataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
proc ondata*(self: QStringListModel, slot: proc(super: QStringListModeldataBase, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QStringListModeldataBase, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_data(self: ptr cQStringListModel, slot: int, index: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QStringListModel_data ".} =
  type Cb = proc(super: QStringListModeldataBase, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, role: cint): auto =
    callVirtualBase_data(QStringListModel(h: self), index, role)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_setData(self: QStringListModel, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool =


  fQStringListModel_virtualbase_setData(self.h, index.h, value.h, role)

type QStringListModelsetDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
proc onsetData*(self: QStringListModel, slot: proc(super: QStringListModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_setData(self: ptr cQStringListModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QStringListModel_setData ".} =
  type Cb = proc(super: QStringListModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setData(QStringListModel(h: self), index, value, role)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qvariant.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_clearItemData(self: QStringListModel, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQStringListModel_virtualbase_clearItemData(self.h, index.h)

type QStringListModelclearItemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex): bool
proc onclearItemData*(self: QStringListModel, slot: proc(super: QStringListModelclearItemDataBase, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelclearItemDataBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_clearItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_clearItemData(self: ptr cQStringListModel, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QStringListModel_clearItemData ".} =
  type Cb = proc(super: QStringListModelclearItemDataBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_clearItemData(QStringListModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_flags(self: QStringListModel, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag =


  gen_qnamespace.ItemFlag(fQStringListModel_virtualbase_flags(self.h, index.h))

type QStringListModelflagsBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
proc onflags*(self: QStringListModel, slot: proc(super: QStringListModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_flags(self: ptr cQStringListModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QStringListModel_flags ".} =
  type Cb = proc(super: QStringListModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_flags(QStringListModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  cint(virtualReturn)
proc callVirtualBase_insertRows(self: QStringListModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQStringListModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QStringListModelinsertRowsBase* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oninsertRows*(self: QStringListModel, slot: proc(super: QStringListModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_insertRows(self: ptr cQStringListModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStringListModel_insertRows ".} =
  type Cb = proc(super: QStringListModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_insertRows(QStringListModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeRows(self: QStringListModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQStringListModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QStringListModelremoveRowsBase* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc onremoveRows*(self: QStringListModel, slot: proc(super: QStringListModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_removeRows(self: ptr cQStringListModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStringListModel_removeRows ".} =
  type Cb = proc(super: QStringListModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_removeRows(QStringListModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_moveRows(self: QStringListModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =


  fQStringListModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QStringListModelmoveRowsBase* = proc(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: QStringListModel, slot: proc(super: QStringListModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_moveRows(self: ptr cQStringListModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QStringListModel_moveRows ".} =
  type Cb = proc(super: QStringListModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveRows(QStringListModel(h: self), sourceParent, sourceRow, count, destinationParent, destinationChild)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_itemData(self: QStringListModel, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant] =


  var v_mm = fQStringListModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QStringListModelitemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
proc onitemData*(self: QStringListModel, slot: proc(super: QStringListModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_itemData(self: ptr cQStringListModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QStringListModel_itemData ".} =
  type Cb = proc(super: QStringListModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_itemData(QStringListModel(h: self), index)
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
proc callVirtualBase_setItemData(self: QStringListModel, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool =

  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1


  fQStringListModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QStringListModelsetItemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
proc onsetItemData*(self: QStringListModel, slot: proc(super: QStringListModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_setItemData(self: ptr cQStringListModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QStringListModel_setItemData ".} =
  type Cb = proc(super: QStringListModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): auto =
    callVirtualBase_setItemData(QStringListModel(h: self), index, roles)
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
proc callVirtualBase_sort(self: QStringListModel, column: cint, order: gen_qnamespace.SortOrder): void =


  fQStringListModel_virtualbase_sort(self.h, column, cint(order))

type QStringListModelsortBase* = proc(column: cint, order: gen_qnamespace.SortOrder): void
proc onsort*(self: QStringListModel, slot: proc(super: QStringListModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_sort(self: ptr cQStringListModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QStringListModel_sort ".} =
  type Cb = proc(super: QStringListModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, order: gen_qnamespace.SortOrder): auto =
    callVirtualBase_sort(QStringListModel(h: self), column, order)
  let slotval1 = column

  let slotval2 = gen_qnamespace.SortOrder(order)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_supportedDropActions(self: QStringListModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQStringListModel_virtualbase_supportedDropActions(self.h))

type QStringListModelsupportedDropActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDropActions*(self: QStringListModel, slot: proc(super: QStringListModelsupportedDropActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_supportedDropActions(self: ptr cQStringListModel, slot: int): cint {.exportc: "miqt_exec_callback_QStringListModel_supportedDropActions ".} =
  type Cb = proc(super: QStringListModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDropActions(QStringListModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_index(self: QStringListModel, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQStringListModel_virtualbase_index(self.h, row, column, parent.h))

type QStringListModelindexBase* = proc(row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onindex*(self: QStringListModel, slot: proc(super: QStringListModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_index(self: ptr cQStringListModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QStringListModel_index ".} =
  type Cb = proc(super: QStringListModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_index(QStringListModel(h: self), row, column, parent)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_dropMimeData(self: QStringListModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQStringListModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QStringListModeldropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc ondropMimeData*(self: QStringListModel, slot: proc(super: QStringListModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QStringListModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_dropMimeData(self: ptr cQStringListModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStringListModel_dropMimeData ".} =
  type Cb = proc(super: QStringListModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_dropMimeData(QStringListModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_headerData(self: QStringListModel, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQStringListModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QStringListModelheaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
proc onheaderData*(self: QStringListModel, slot: proc(super: QStringListModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_headerData(self: ptr cQStringListModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QStringListModel_headerData ".} =
  type Cb = proc(super: QStringListModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, role: cint): auto =
    callVirtualBase_headerData(QStringListModel(h: self), section, orientation, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_setHeaderData(self: QStringListModel, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool =


  fQStringListModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QStringListModelsetHeaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
proc onsetHeaderData*(self: QStringListModel, slot: proc(super: QStringListModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_setHeaderData(self: ptr cQStringListModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QStringListModel_setHeaderData ".} =
  type Cb = proc(super: QStringListModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setHeaderData(QStringListModel(h: self), section, orientation, value, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = gen_qvariant.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_mimeTypes(self: QStringListModel, ): seq[string] =


  var v_ma = fQStringListModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QStringListModelmimeTypesBase* = proc(): seq[string]
proc onmimeTypes*(self: QStringListModel, slot: proc(super: QStringListModelmimeTypesBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelmimeTypesBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_mimeTypes(self: ptr cQStringListModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QStringListModel_mimeTypes ".} =
  type Cb = proc(super: QStringListModelmimeTypesBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mimeTypes(QStringListModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_mimeData(self: QStringListModel, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData =

  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h


  gen_qmimedata.QMimeData(h: fQStringListModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QStringListModelmimeDataBase* = proc(indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
proc onmimeData*(self: QStringListModel, slot: proc(super: QStringListModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_mimeData(self: ptr cQStringListModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QStringListModel_mimeData ".} =
  type Cb = proc(super: QStringListModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(indexes: seq[gen_qabstractitemmodel.QModelIndex]): auto =
    callVirtualBase_mimeData(QStringListModel(h: self), indexes)
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_canDropMimeData(self: QStringListModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQStringListModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QStringListModelcanDropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oncanDropMimeData*(self: QStringListModel, slot: proc(super: QStringListModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_canDropMimeData(self: ptr cQStringListModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStringListModel_canDropMimeData ".} =
  type Cb = proc(super: QStringListModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_canDropMimeData(QStringListModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_supportedDragActions(self: QStringListModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQStringListModel_virtualbase_supportedDragActions(self.h))

type QStringListModelsupportedDragActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDragActions*(self: QStringListModel, slot: proc(super: QStringListModelsupportedDragActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_supportedDragActions(self: ptr cQStringListModel, slot: int): cint {.exportc: "miqt_exec_callback_QStringListModel_supportedDragActions ".} =
  type Cb = proc(super: QStringListModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDragActions(QStringListModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_insertColumns(self: QStringListModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQStringListModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QStringListModelinsertColumnsBase* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oninsertColumns*(self: QStringListModel, slot: proc(super: QStringListModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_insertColumns(self: ptr cQStringListModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStringListModel_insertColumns ".} =
  type Cb = proc(super: QStringListModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_insertColumns(QStringListModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeColumns(self: QStringListModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQStringListModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QStringListModelremoveColumnsBase* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc onremoveColumns*(self: QStringListModel, slot: proc(super: QStringListModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_removeColumns(self: ptr cQStringListModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QStringListModel_removeColumns ".} =
  type Cb = proc(super: QStringListModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_removeColumns(QStringListModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_moveColumns(self: QStringListModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =


  fQStringListModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QStringListModelmoveColumnsBase* = proc(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: QStringListModel, slot: proc(super: QStringListModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_moveColumns(self: ptr cQStringListModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QStringListModel_moveColumns ".} =
  type Cb = proc(super: QStringListModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveColumns(QStringListModel(h: self), sourceParent, sourceColumn, count, destinationParent, destinationChild)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_fetchMore(self: QStringListModel, parent: gen_qabstractitemmodel.QModelIndex): void =


  fQStringListModel_virtualbase_fetchMore(self.h, parent.h)

type QStringListModelfetchMoreBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): void
proc onfetchMore*(self: QStringListModel, slot: proc(super: QStringListModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_fetchMore(self: ptr cQStringListModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QStringListModel_fetchMore ".} =
  type Cb = proc(super: QStringListModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_fetchMore(QStringListModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_canFetchMore(self: QStringListModel, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQStringListModel_virtualbase_canFetchMore(self.h, parent.h)

type QStringListModelcanFetchMoreBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): bool
proc oncanFetchMore*(self: QStringListModel, slot: proc(super: QStringListModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_canFetchMore(self: ptr cQStringListModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QStringListModel_canFetchMore ".} =
  type Cb = proc(super: QStringListModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_canFetchMore(QStringListModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_buddy(self: QStringListModel, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQStringListModel_virtualbase_buddy(self.h, index.h))

type QStringListModelbuddyBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onbuddy*(self: QStringListModel, slot: proc(super: QStringListModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_buddy(self: ptr cQStringListModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QStringListModel_buddy ".} =
  type Cb = proc(super: QStringListModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_buddy(QStringListModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_match(self: QStringListModel, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex] =


  var v_ma = fQStringListModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

type QStringListModelmatchBase* = proc(start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
proc onmatch*(self: QStringListModel, slot: proc(super: QStringListModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_match(self: ptr cQStringListModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QStringListModel_match ".} =
  type Cb = proc(super: QStringListModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): auto =
    callVirtualBase_match(QStringListModel(h: self), start, role, value, hits, flags)
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
proc callVirtualBase_span(self: QStringListModel, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize =


  gen_qsize.QSize(h: fQStringListModel_virtualbase_span(self.h, index.h))

type QStringListModelspanBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
proc onspan*(self: QStringListModel, slot: proc(super: QStringListModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_span(self: ptr cQStringListModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QStringListModel_span ".} =
  type Cb = proc(super: QStringListModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_span(QStringListModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_roleNames(self: QStringListModel, ): Table[cint,seq[byte]] =


  var v_mm = fQStringListModel_virtualbase_roleNames(self.h)
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

type QStringListModelroleNamesBase* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: QStringListModel, slot: proc(super: QStringListModelroleNamesBase): Table[cint,seq[byte]]) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelroleNamesBase): Table[cint,seq[byte]]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_roleNames(self: ptr cQStringListModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QStringListModel_roleNames ".} =
  type Cb = proc(super: QStringListModelroleNamesBase): Table[cint,seq[byte]]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_roleNames(QStringListModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc callVirtualBase_multiData(self: QStringListModel, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void =


  fQStringListModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

type QStringListModelmultiDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
proc onmultiData*(self: QStringListModel, slot: proc(super: QStringListModelmultiDataBase, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelmultiDataBase, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_multiData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_multiData(self: ptr cQStringListModel, slot: int, index: pointer, roleDataSpan: pointer): void {.exportc: "miqt_exec_callback_QStringListModel_multiData ".} =
  type Cb = proc(super: QStringListModelmultiDataBase, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): auto =
    callVirtualBase_multiData(QStringListModel(h: self), index, roleDataSpan)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemmodel.QModelRoleDataSpan(h: roleDataSpan)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_submit(self: QStringListModel, ): bool =


  fQStringListModel_virtualbase_submit(self.h)

type QStringListModelsubmitBase* = proc(): bool
proc onsubmit*(self: QStringListModel, slot: proc(super: QStringListModelsubmitBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelsubmitBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_submit(self: ptr cQStringListModel, slot: int): bool {.exportc: "miqt_exec_callback_QStringListModel_submit ".} =
  type Cb = proc(super: QStringListModelsubmitBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_submit(QStringListModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_revert(self: QStringListModel, ): void =


  fQStringListModel_virtualbase_revert(self.h)

type QStringListModelrevertBase* = proc(): void
proc onrevert*(self: QStringListModel, slot: proc(super: QStringListModelrevertBase): void) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelrevertBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_revert(self: ptr cQStringListModel, slot: int): void {.exportc: "miqt_exec_callback_QStringListModel_revert ".} =
  type Cb = proc(super: QStringListModelrevertBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_revert(QStringListModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_resetInternalData(self: QStringListModel, ): void =


  fQStringListModel_virtualbase_resetInternalData(self.h)

type QStringListModelresetInternalDataBase* = proc(): void
proc onresetInternalData*(self: QStringListModel, slot: proc(super: QStringListModelresetInternalDataBase): void) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelresetInternalDataBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_resetInternalData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_resetInternalData(self: ptr cQStringListModel, slot: int): void {.exportc: "miqt_exec_callback_QStringListModel_resetInternalData ".} =
  type Cb = proc(super: QStringListModelresetInternalDataBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_resetInternalData(QStringListModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_event(self: QStringListModel, event: gen_qcoreevent.QEvent): bool =


  fQStringListModel_virtualbase_event(self.h, event.h)

type QStringListModeleventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QStringListModel, slot: proc(super: QStringListModeleventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QStringListModeleventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_event(self: ptr cQStringListModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QStringListModel_event ".} =
  type Cb = proc(super: QStringListModeleventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QStringListModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QStringListModel, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQStringListModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QStringListModeleventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QStringListModel, slot: proc(super: QStringListModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QStringListModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_eventFilter(self: ptr cQStringListModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QStringListModel_eventFilter ".} =
  type Cb = proc(super: QStringListModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QStringListModel(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QStringListModel, event: gen_qcoreevent.QTimerEvent): void =


  fQStringListModel_virtualbase_timerEvent(self.h, event.h)

type QStringListModeltimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QStringListModel, slot: proc(super: QStringListModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStringListModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_timerEvent(self: ptr cQStringListModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStringListModel_timerEvent ".} =
  type Cb = proc(super: QStringListModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QStringListModel(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QStringListModel, event: gen_qcoreevent.QChildEvent): void =


  fQStringListModel_virtualbase_childEvent(self.h, event.h)

type QStringListModelchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QStringListModel, slot: proc(super: QStringListModelchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_childEvent(self: ptr cQStringListModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStringListModel_childEvent ".} =
  type Cb = proc(super: QStringListModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QStringListModel(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QStringListModel, event: gen_qcoreevent.QEvent): void =


  fQStringListModel_virtualbase_customEvent(self.h, event.h)

type QStringListModelcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QStringListModel, slot: proc(super: QStringListModelcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_customEvent(self: ptr cQStringListModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStringListModel_customEvent ".} =
  type Cb = proc(super: QStringListModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QStringListModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QStringListModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQStringListModel_virtualbase_connectNotify(self.h, signal.h)

type QStringListModelconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QStringListModel, slot: proc(super: QStringListModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QStringListModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_connectNotify(self: ptr cQStringListModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStringListModel_connectNotify ".} =
  type Cb = proc(super: QStringListModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QStringListModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QStringListModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQStringListModel_virtualbase_disconnectNotify(self.h, signal.h)

type QStringListModeldisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QStringListModel, slot: proc(super: QStringListModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QStringListModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStringListModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStringListModel_disconnectNotify(self: ptr cQStringListModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStringListModel_disconnectNotify ".} =
  type Cb = proc(super: QStringListModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QStringListModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QStringListModel) =
  fcQStringListModel_delete(self.h)
