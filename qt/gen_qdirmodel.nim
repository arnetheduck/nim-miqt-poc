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
{.compile("gen_qdirmodel.cpp", cflags).}


type QDirModelRoles* = cint
const
  QDirModelFileIconRole* = 1
  QDirModelFilePathRole* = 257
  QDirModelFileNameRole* = 258



import gen_qdirmodel_types
export gen_qdirmodel_types

import
  gen_qabstractitemmodel,
  gen_qcoreevent,
  gen_qdir,
  gen_qfileiconprovider,
  gen_qfileinfo,
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
  gen_qcoreevent,
  gen_qdir,
  gen_qfileiconprovider,
  gen_qfileinfo,
  gen_qicon,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qvariant

type cQDirModel*{.exportc: "QDirModel", incompleteStruct.} = object

proc fcQDirModel_new(nameFilters: struct_miqt_array, filters: cint, sort: cint): ptr cQDirModel {.importc: "QDirModel_new".}
proc fcQDirModel_new2(): ptr cQDirModel {.importc: "QDirModel_new2".}
proc fcQDirModel_new3(nameFilters: struct_miqt_array, filters: cint, sort: cint, parent: pointer): ptr cQDirModel {.importc: "QDirModel_new3".}
proc fcQDirModel_new4(parent: pointer): ptr cQDirModel {.importc: "QDirModel_new4".}
proc fcQDirModel_metaObject(self: pointer, ): pointer {.importc: "QDirModel_metaObject".}
proc fcQDirModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QDirModel_metacast".}
proc fcQDirModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDirModel_metacall".}
proc fcQDirModel_tr(s: cstring): struct_miqt_string {.importc: "QDirModel_tr".}
proc fcQDirModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QDirModel_trUtf8".}
proc fcQDirModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QDirModel_index".}
proc fcQDirModel_parent(self: pointer, child: pointer): pointer {.importc: "QDirModel_parent".}
proc fcQDirModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QDirModel_rowCount".}
proc fcQDirModel_columnCount(self: pointer, parent: pointer): cint {.importc: "QDirModel_columnCount".}
proc fcQDirModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QDirModel_data".}
proc fcQDirModel_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QDirModel_setData".}
proc fcQDirModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QDirModel_headerData".}
proc fcQDirModel_hasChildren(self: pointer, index: pointer): bool {.importc: "QDirModel_hasChildren".}
proc fcQDirModel_flags(self: pointer, index: pointer): cint {.importc: "QDirModel_flags".}
proc fcQDirModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QDirModel_sort".}
proc fcQDirModel_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QDirModel_mimeTypes".}
proc fcQDirModel_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QDirModel_mimeData".}
proc fcQDirModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QDirModel_dropMimeData".}
proc fcQDirModel_supportedDropActions(self: pointer, ): cint {.importc: "QDirModel_supportedDropActions".}
proc fcQDirModel_setIconProvider(self: pointer, provider: pointer): void {.importc: "QDirModel_setIconProvider".}
proc fcQDirModel_iconProvider(self: pointer, ): pointer {.importc: "QDirModel_iconProvider".}
proc fcQDirModel_setNameFilters(self: pointer, filters: struct_miqt_array): void {.importc: "QDirModel_setNameFilters".}
proc fcQDirModel_nameFilters(self: pointer, ): struct_miqt_array {.importc: "QDirModel_nameFilters".}
proc fcQDirModel_setFilter(self: pointer, filters: cint): void {.importc: "QDirModel_setFilter".}
proc fcQDirModel_filter(self: pointer, ): cint {.importc: "QDirModel_filter".}
proc fcQDirModel_setSorting(self: pointer, sort: cint): void {.importc: "QDirModel_setSorting".}
proc fcQDirModel_sorting(self: pointer, ): cint {.importc: "QDirModel_sorting".}
proc fcQDirModel_setResolveSymlinks(self: pointer, enable: bool): void {.importc: "QDirModel_setResolveSymlinks".}
proc fcQDirModel_resolveSymlinks(self: pointer, ): bool {.importc: "QDirModel_resolveSymlinks".}
proc fcQDirModel_setReadOnly(self: pointer, enable: bool): void {.importc: "QDirModel_setReadOnly".}
proc fcQDirModel_isReadOnly(self: pointer, ): bool {.importc: "QDirModel_isReadOnly".}
proc fcQDirModel_setLazyChildCount(self: pointer, enable: bool): void {.importc: "QDirModel_setLazyChildCount".}
proc fcQDirModel_lazyChildCount(self: pointer, ): bool {.importc: "QDirModel_lazyChildCount".}
proc fcQDirModel_indexWithPath(self: pointer, path: struct_miqt_string): pointer {.importc: "QDirModel_indexWithPath".}
proc fcQDirModel_isDir(self: pointer, index: pointer): bool {.importc: "QDirModel_isDir".}
proc fcQDirModel_mkdir(self: pointer, parent: pointer, name: struct_miqt_string): pointer {.importc: "QDirModel_mkdir".}
proc fcQDirModel_rmdir(self: pointer, index: pointer): bool {.importc: "QDirModel_rmdir".}
proc fcQDirModel_remove(self: pointer, index: pointer): bool {.importc: "QDirModel_remove".}
proc fcQDirModel_filePath(self: pointer, index: pointer): struct_miqt_string {.importc: "QDirModel_filePath".}
proc fcQDirModel_fileName(self: pointer, index: pointer): struct_miqt_string {.importc: "QDirModel_fileName".}
proc fcQDirModel_fileIcon(self: pointer, index: pointer): pointer {.importc: "QDirModel_fileIcon".}
proc fcQDirModel_fileInfo(self: pointer, index: pointer): pointer {.importc: "QDirModel_fileInfo".}
proc fcQDirModel_refresh(self: pointer, ): void {.importc: "QDirModel_refresh".}
proc fcQDirModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDirModel_tr2".}
proc fcQDirModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDirModel_tr3".}
proc fcQDirModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDirModel_trUtf82".}
proc fcQDirModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDirModel_trUtf83".}
proc fcQDirModel_index2(self: pointer, path: struct_miqt_string, column: cint): pointer {.importc: "QDirModel_index2".}
proc fcQDirModel_refresh1(self: pointer, parent: pointer): void {.importc: "QDirModel_refresh1".}
proc fQDirModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDirModel_virtualbase_metacall".}
proc fcQDirModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_metacall".}
proc fQDirModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer{.importc: "QDirModel_virtualbase_index".}
proc fcQDirModel_override_virtual_index(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_index".}
proc fQDirModel_virtualbase_parent(self: pointer, child: pointer): pointer{.importc: "QDirModel_virtualbase_parent".}
proc fcQDirModel_override_virtual_parent(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_parent".}
proc fQDirModel_virtualbase_rowCount(self: pointer, parent: pointer): cint{.importc: "QDirModel_virtualbase_rowCount".}
proc fcQDirModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_rowCount".}
proc fQDirModel_virtualbase_columnCount(self: pointer, parent: pointer): cint{.importc: "QDirModel_virtualbase_columnCount".}
proc fcQDirModel_override_virtual_columnCount(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_columnCount".}
proc fQDirModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer{.importc: "QDirModel_virtualbase_data".}
proc fcQDirModel_override_virtual_data(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_data".}
proc fQDirModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QDirModel_virtualbase_setData".}
proc fcQDirModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_setData".}
proc fQDirModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QDirModel_virtualbase_headerData".}
proc fcQDirModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_headerData".}
proc fQDirModel_virtualbase_hasChildren(self: pointer, index: pointer): bool{.importc: "QDirModel_virtualbase_hasChildren".}
proc fcQDirModel_override_virtual_hasChildren(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_hasChildren".}
proc fQDirModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QDirModel_virtualbase_flags".}
proc fcQDirModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_flags".}
proc fQDirModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QDirModel_virtualbase_sort".}
proc fcQDirModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_sort".}
proc fQDirModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QDirModel_virtualbase_mimeTypes".}
proc fcQDirModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_mimeTypes".}
proc fQDirModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QDirModel_virtualbase_mimeData".}
proc fcQDirModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_mimeData".}
proc fQDirModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QDirModel_virtualbase_dropMimeData".}
proc fcQDirModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_dropMimeData".}
proc fQDirModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QDirModel_virtualbase_supportedDropActions".}
proc fcQDirModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_supportedDropActions".}
proc fQDirModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QDirModel_virtualbase_sibling".}
proc fcQDirModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_sibling".}
proc fQDirModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QDirModel_virtualbase_setHeaderData".}
proc fcQDirModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_setHeaderData".}
proc fQDirModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QDirModel_virtualbase_itemData".}
proc fcQDirModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_itemData".}
proc fQDirModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QDirModel_virtualbase_setItemData".}
proc fcQDirModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_setItemData".}
proc fQDirModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QDirModel_virtualbase_canDropMimeData".}
proc fcQDirModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_canDropMimeData".}
proc fQDirModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QDirModel_virtualbase_supportedDragActions".}
proc fcQDirModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_supportedDragActions".}
proc fQDirModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QDirModel_virtualbase_insertRows".}
proc fcQDirModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_insertRows".}
proc fQDirModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QDirModel_virtualbase_insertColumns".}
proc fcQDirModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_insertColumns".}
proc fQDirModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QDirModel_virtualbase_removeRows".}
proc fcQDirModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_removeRows".}
proc fQDirModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QDirModel_virtualbase_removeColumns".}
proc fcQDirModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_removeColumns".}
proc fQDirModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QDirModel_virtualbase_moveRows".}
proc fcQDirModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_moveRows".}
proc fQDirModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QDirModel_virtualbase_moveColumns".}
proc fcQDirModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_moveColumns".}
proc fQDirModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QDirModel_virtualbase_fetchMore".}
proc fcQDirModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_fetchMore".}
proc fQDirModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QDirModel_virtualbase_canFetchMore".}
proc fcQDirModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_canFetchMore".}
proc fQDirModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QDirModel_virtualbase_buddy".}
proc fcQDirModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_buddy".}
proc fQDirModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QDirModel_virtualbase_match".}
proc fcQDirModel_override_virtual_match(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_match".}
proc fQDirModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QDirModel_virtualbase_span".}
proc fcQDirModel_override_virtual_span(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_span".}
proc fQDirModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QDirModel_virtualbase_roleNames".}
proc fcQDirModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_roleNames".}
proc fQDirModel_virtualbase_submit(self: pointer, ): bool{.importc: "QDirModel_virtualbase_submit".}
proc fcQDirModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_submit".}
proc fQDirModel_virtualbase_revert(self: pointer, ): void{.importc: "QDirModel_virtualbase_revert".}
proc fcQDirModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_revert".}
proc fQDirModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDirModel_virtualbase_event".}
proc fcQDirModel_override_virtual_event(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_event".}
proc fQDirModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDirModel_virtualbase_eventFilter".}
proc fcQDirModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_eventFilter".}
proc fQDirModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDirModel_virtualbase_timerEvent".}
proc fcQDirModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_timerEvent".}
proc fQDirModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDirModel_virtualbase_childEvent".}
proc fcQDirModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_childEvent".}
proc fQDirModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDirModel_virtualbase_customEvent".}
proc fcQDirModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_customEvent".}
proc fQDirModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDirModel_virtualbase_connectNotify".}
proc fcQDirModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_connectNotify".}
proc fQDirModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDirModel_virtualbase_disconnectNotify".}
proc fcQDirModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDirModel_override_virtual_disconnectNotify".}
proc fcQDirModel_staticMetaObject(): pointer {.importc: "QDirModel_staticMetaObject".}
proc fcQDirModel_delete(self: pointer) {.importc: "QDirModel_delete".}


func init*(T: type QDirModel, h: ptr cQDirModel): QDirModel =
  T(h: h)
proc create*(T: type QDirModel, nameFilters: seq[string], filters: gen_qdir.QDirFilter, sort: gen_qdir.QDirSortFlag): QDirModel =

  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: nameFilters[i], len: csize_t(len(nameFilters[i])))

  QDirModel.init(fcQDirModel_new(struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])), cint(filters), cint(sort)))
proc create*(T: type QDirModel, ): QDirModel =

  QDirModel.init(fcQDirModel_new2())
proc create*(T: type QDirModel, nameFilters: seq[string], filters: gen_qdir.QDirFilter, sort: gen_qdir.QDirSortFlag, parent: gen_qobject.QObject): QDirModel =

  var nameFilters_CArray = newSeq[struct_miqt_string](len(nameFilters))
  for i in 0..<len(nameFilters):
    nameFilters_CArray[i] = struct_miqt_string(data: nameFilters[i], len: csize_t(len(nameFilters[i])))

  QDirModel.init(fcQDirModel_new3(struct_miqt_array(len: csize_t(len(nameFilters)), data: if len(nameFilters) == 0: nil else: addr(nameFilters_CArray[0])), cint(filters), cint(sort), parent.h))
proc create*(T: type QDirModel, parent: gen_qobject.QObject): QDirModel =

  QDirModel.init(fcQDirModel_new4(parent.h))
proc metaObject*(self: QDirModel, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQDirModel_metaObject(self.h))

proc metacast*(self: QDirModel, param1: cstring): pointer =

  fcQDirModel_metacast(self.h, param1)

proc metacall*(self: QDirModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQDirModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QDirModel, s: cstring): string =

  let v_ms = fcQDirModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QDirModel, s: cstring): string =

  let v_ms = fcQDirModel_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc index*(self: QDirModel, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQDirModel_index(self.h, row, column, parent.h))

proc parent*(self: QDirModel, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQDirModel_parent(self.h, child.h))

proc rowCount*(self: QDirModel, parent: gen_qabstractitemmodel.QModelIndex): cint =

  fcQDirModel_rowCount(self.h, parent.h)

proc columnCount*(self: QDirModel, parent: gen_qabstractitemmodel.QModelIndex): cint =

  fcQDirModel_columnCount(self.h, parent.h)

proc data*(self: QDirModel, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQDirModel_data(self.h, index.h, role))

proc setData*(self: QDirModel, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool =

  fcQDirModel_setData(self.h, index.h, value.h, role)

proc headerData*(self: QDirModel, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQDirModel_headerData(self.h, section, cint(orientation), role))

proc hasChildren*(self: QDirModel, index: gen_qabstractitemmodel.QModelIndex): bool =

  fcQDirModel_hasChildren(self.h, index.h)

proc flags*(self: QDirModel, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag =

  gen_qnamespace.ItemFlag(fcQDirModel_flags(self.h, index.h))

proc sort*(self: QDirModel, column: cint, order: gen_qnamespace.SortOrder): void =

  fcQDirModel_sort(self.h, column, cint(order))

proc mimeTypes*(self: QDirModel, ): seq[string] =

  var v_ma = fcQDirModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc mimeData*(self: QDirModel, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData =

  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata.QMimeData(h: fcQDirModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc dropMimeData*(self: QDirModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQDirModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc supportedDropActions*(self: QDirModel, ): gen_qnamespace.DropAction =

  gen_qnamespace.DropAction(fcQDirModel_supportedDropActions(self.h))

proc setIconProvider*(self: QDirModel, provider: gen_qfileiconprovider.QFileIconProvider): void =

  fcQDirModel_setIconProvider(self.h, provider.h)

proc iconProvider*(self: QDirModel, ): gen_qfileiconprovider.QFileIconProvider =

  gen_qfileiconprovider.QFileIconProvider(h: fcQDirModel_iconProvider(self.h))

proc setNameFilters*(self: QDirModel, filters: seq[string]): void =

  var filters_CArray = newSeq[struct_miqt_string](len(filters))
  for i in 0..<len(filters):
    filters_CArray[i] = struct_miqt_string(data: filters[i], len: csize_t(len(filters[i])))

  fcQDirModel_setNameFilters(self.h, struct_miqt_array(len: csize_t(len(filters)), data: if len(filters) == 0: nil else: addr(filters_CArray[0])))

proc nameFilters*(self: QDirModel, ): seq[string] =

  var v_ma = fcQDirModel_nameFilters(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setFilter*(self: QDirModel, filters: gen_qdir.QDirFilter): void =

  fcQDirModel_setFilter(self.h, cint(filters))

proc filter*(self: QDirModel, ): gen_qdir.QDirFilter =

  gen_qdir.QDirFilter(fcQDirModel_filter(self.h))

proc setSorting*(self: QDirModel, sort: gen_qdir.QDirSortFlag): void =

  fcQDirModel_setSorting(self.h, cint(sort))

proc sorting*(self: QDirModel, ): gen_qdir.QDirSortFlag =

  gen_qdir.QDirSortFlag(fcQDirModel_sorting(self.h))

proc setResolveSymlinks*(self: QDirModel, enable: bool): void =

  fcQDirModel_setResolveSymlinks(self.h, enable)

proc resolveSymlinks*(self: QDirModel, ): bool =

  fcQDirModel_resolveSymlinks(self.h)

proc setReadOnly*(self: QDirModel, enable: bool): void =

  fcQDirModel_setReadOnly(self.h, enable)

proc isReadOnly*(self: QDirModel, ): bool =

  fcQDirModel_isReadOnly(self.h)

proc setLazyChildCount*(self: QDirModel, enable: bool): void =

  fcQDirModel_setLazyChildCount(self.h, enable)

proc lazyChildCount*(self: QDirModel, ): bool =

  fcQDirModel_lazyChildCount(self.h)

proc indexWithPath*(self: QDirModel, path: string): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQDirModel_indexWithPath(self.h, struct_miqt_string(data: path, len: csize_t(len(path)))))

proc isDir*(self: QDirModel, index: gen_qabstractitemmodel.QModelIndex): bool =

  fcQDirModel_isDir(self.h, index.h)

proc mkdir*(self: QDirModel, parent: gen_qabstractitemmodel.QModelIndex, name: string): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQDirModel_mkdir(self.h, parent.h, struct_miqt_string(data: name, len: csize_t(len(name)))))

proc rmdir*(self: QDirModel, index: gen_qabstractitemmodel.QModelIndex): bool =

  fcQDirModel_rmdir(self.h, index.h)

proc remove*(self: QDirModel, index: gen_qabstractitemmodel.QModelIndex): bool =

  fcQDirModel_remove(self.h, index.h)

proc filePath*(self: QDirModel, index: gen_qabstractitemmodel.QModelIndex): string =

  let v_ms = fcQDirModel_filePath(self.h, index.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileName*(self: QDirModel, index: gen_qabstractitemmodel.QModelIndex): string =

  let v_ms = fcQDirModel_fileName(self.h, index.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileIcon*(self: QDirModel, index: gen_qabstractitemmodel.QModelIndex): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQDirModel_fileIcon(self.h, index.h))

proc fileInfo*(self: QDirModel, index: gen_qabstractitemmodel.QModelIndex): gen_qfileinfo.QFileInfo =

  gen_qfileinfo.QFileInfo(h: fcQDirModel_fileInfo(self.h, index.h))

proc refresh*(self: QDirModel, ): void =

  fcQDirModel_refresh(self.h)

proc tr2*(_: type QDirModel, s: cstring, c: cstring): string =

  let v_ms = fcQDirModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QDirModel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDirModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QDirModel, s: cstring, c: cstring): string =

  let v_ms = fcQDirModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QDirModel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDirModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc index2*(self: QDirModel, path: string, column: cint): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQDirModel_index2(self.h, struct_miqt_string(data: path, len: csize_t(len(path))), column))

proc refresh1*(self: QDirModel, parent: gen_qabstractitemmodel.QModelIndex): void =

  fcQDirModel_refresh1(self.h, parent.h)

proc callVirtualBase_metacall(self: QDirModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQDirModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDirModelmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QDirModel, slot: proc(super: QDirModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QDirModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_metacall(self: ptr cQDirModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDirModel_metacall ".} =
  type Cb = proc(super: QDirModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QDirModel(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_index(self: QDirModel, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQDirModel_virtualbase_index(self.h, row, column, parent.h))

type QDirModelindexBase* = proc(row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onindex*(self: QDirModel, slot: proc(super: QDirModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QDirModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_index(self: ptr cQDirModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QDirModel_index ".} =
  type Cb = proc(super: QDirModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_index(QDirModel(h: self), row, column, parent)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_parent(self: QDirModel, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQDirModel_virtualbase_parent(self.h, child.h))

type QDirModelparentBase* = proc(child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onparent*(self: QDirModel, slot: proc(super: QDirModelparentBase, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QDirModelparentBase, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_parent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_parent(self: ptr cQDirModel, slot: int, child: pointer): pointer {.exportc: "miqt_exec_callback_QDirModel_parent ".} =
  type Cb = proc(super: QDirModelparentBase, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(child: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_parent(QDirModel(h: self), child)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: child)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_rowCount(self: QDirModel, parent: gen_qabstractitemmodel.QModelIndex): cint =


  fQDirModel_virtualbase_rowCount(self.h, parent.h)

type QDirModelrowCountBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): cint
proc onrowCount*(self: QDirModel, slot: proc(super: QDirModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(super: QDirModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_rowCount(self: ptr cQDirModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QDirModel_rowCount ".} =
  type Cb = proc(super: QDirModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_rowCount(QDirModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_columnCount(self: QDirModel, parent: gen_qabstractitemmodel.QModelIndex): cint =


  fQDirModel_virtualbase_columnCount(self.h, parent.h)

type QDirModelcolumnCountBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): cint
proc oncolumnCount*(self: QDirModel, slot: proc(super: QDirModelcolumnCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(super: QDirModelcolumnCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_columnCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_columnCount(self: ptr cQDirModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QDirModel_columnCount ".} =
  type Cb = proc(super: QDirModelcolumnCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_columnCount(QDirModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_data(self: QDirModel, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQDirModel_virtualbase_data(self.h, index.h, role))

type QDirModeldataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
proc ondata*(self: QDirModel, slot: proc(super: QDirModeldataBase, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QDirModeldataBase, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_data(self: ptr cQDirModel, slot: int, index: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QDirModel_data ".} =
  type Cb = proc(super: QDirModeldataBase, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, role: cint): auto =
    callVirtualBase_data(QDirModel(h: self), index, role)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_setData(self: QDirModel, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool =


  fQDirModel_virtualbase_setData(self.h, index.h, value.h, role)

type QDirModelsetDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
proc onsetData*(self: QDirModel, slot: proc(super: QDirModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QDirModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_setData(self: ptr cQDirModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QDirModel_setData ".} =
  type Cb = proc(super: QDirModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setData(QDirModel(h: self), index, value, role)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qvariant.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_headerData(self: QDirModel, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQDirModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QDirModelheaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
proc onheaderData*(self: QDirModel, slot: proc(super: QDirModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QDirModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_headerData(self: ptr cQDirModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QDirModel_headerData ".} =
  type Cb = proc(super: QDirModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, role: cint): auto =
    callVirtualBase_headerData(QDirModel(h: self), section, orientation, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_hasChildren(self: QDirModel, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQDirModel_virtualbase_hasChildren(self.h, index.h)

type QDirModelhasChildrenBase* = proc(index: gen_qabstractitemmodel.QModelIndex): bool
proc onhasChildren*(self: QDirModel, slot: proc(super: QDirModelhasChildrenBase, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QDirModelhasChildrenBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_hasChildren(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_hasChildren(self: ptr cQDirModel, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QDirModel_hasChildren ".} =
  type Cb = proc(super: QDirModelhasChildrenBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_hasChildren(QDirModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_flags(self: QDirModel, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag =


  gen_qnamespace.ItemFlag(fQDirModel_virtualbase_flags(self.h, index.h))

type QDirModelflagsBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
proc onflags*(self: QDirModel, slot: proc(super: QDirModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag) =
  # TODO check subclass
  type Cb = proc(super: QDirModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_flags(self: ptr cQDirModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QDirModel_flags ".} =
  type Cb = proc(super: QDirModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_flags(QDirModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  cint(virtualReturn)
proc callVirtualBase_sort(self: QDirModel, column: cint, order: gen_qnamespace.SortOrder): void =


  fQDirModel_virtualbase_sort(self.h, column, cint(order))

type QDirModelsortBase* = proc(column: cint, order: gen_qnamespace.SortOrder): void
proc onsort*(self: QDirModel, slot: proc(super: QDirModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void) =
  # TODO check subclass
  type Cb = proc(super: QDirModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_sort(self: ptr cQDirModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QDirModel_sort ".} =
  type Cb = proc(super: QDirModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, order: gen_qnamespace.SortOrder): auto =
    callVirtualBase_sort(QDirModel(h: self), column, order)
  let slotval1 = column

  let slotval2 = gen_qnamespace.SortOrder(order)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_mimeTypes(self: QDirModel, ): seq[string] =


  var v_ma = fQDirModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QDirModelmimeTypesBase* = proc(): seq[string]
proc onmimeTypes*(self: QDirModel, slot: proc(super: QDirModelmimeTypesBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QDirModelmimeTypesBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_mimeTypes(self: ptr cQDirModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QDirModel_mimeTypes ".} =
  type Cb = proc(super: QDirModelmimeTypesBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mimeTypes(QDirModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_mimeData(self: QDirModel, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData =

  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h


  gen_qmimedata.QMimeData(h: fQDirModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QDirModelmimeDataBase* = proc(indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
proc onmimeData*(self: QDirModel, slot: proc(super: QDirModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData) =
  # TODO check subclass
  type Cb = proc(super: QDirModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_mimeData(self: ptr cQDirModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QDirModel_mimeData ".} =
  type Cb = proc(super: QDirModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(indexes: seq[gen_qabstractitemmodel.QModelIndex]): auto =
    callVirtualBase_mimeData(QDirModel(h: self), indexes)
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_dropMimeData(self: QDirModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQDirModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QDirModeldropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc ondropMimeData*(self: QDirModel, slot: proc(super: QDirModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QDirModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_dropMimeData(self: ptr cQDirModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QDirModel_dropMimeData ".} =
  type Cb = proc(super: QDirModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_dropMimeData(QDirModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_supportedDropActions(self: QDirModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQDirModel_virtualbase_supportedDropActions(self.h))

type QDirModelsupportedDropActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDropActions*(self: QDirModel, slot: proc(super: QDirModelsupportedDropActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QDirModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_supportedDropActions(self: ptr cQDirModel, slot: int): cint {.exportc: "miqt_exec_callback_QDirModel_supportedDropActions ".} =
  type Cb = proc(super: QDirModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDropActions(QDirModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_sibling(self: QDirModel, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQDirModel_virtualbase_sibling(self.h, row, column, idx.h))

type QDirModelsiblingBase* = proc(row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onsibling*(self: QDirModel, slot: proc(super: QDirModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QDirModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_sibling(self: ptr cQDirModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QDirModel_sibling ".} =
  type Cb = proc(super: QDirModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_sibling(QDirModel(h: self), row, column, idx)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: idx)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_setHeaderData(self: QDirModel, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool =


  fQDirModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QDirModelsetHeaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
proc onsetHeaderData*(self: QDirModel, slot: proc(super: QDirModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QDirModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_setHeaderData(self: ptr cQDirModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QDirModel_setHeaderData ".} =
  type Cb = proc(super: QDirModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setHeaderData(QDirModel(h: self), section, orientation, value, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = gen_qvariant.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_itemData(self: QDirModel, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant] =


  var v_mm = fQDirModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QDirModelitemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
proc onitemData*(self: QDirModel, slot: proc(super: QDirModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]) =
  # TODO check subclass
  type Cb = proc(super: QDirModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_itemData(self: ptr cQDirModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QDirModel_itemData ".} =
  type Cb = proc(super: QDirModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_itemData(QDirModel(h: self), index)
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
proc callVirtualBase_setItemData(self: QDirModel, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool =

  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1


  fQDirModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QDirModelsetItemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
proc onsetItemData*(self: QDirModel, slot: proc(super: QDirModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool) =
  # TODO check subclass
  type Cb = proc(super: QDirModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_setItemData(self: ptr cQDirModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QDirModel_setItemData ".} =
  type Cb = proc(super: QDirModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): auto =
    callVirtualBase_setItemData(QDirModel(h: self), index, roles)
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
proc callVirtualBase_canDropMimeData(self: QDirModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQDirModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QDirModelcanDropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oncanDropMimeData*(self: QDirModel, slot: proc(super: QDirModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QDirModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_canDropMimeData(self: ptr cQDirModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QDirModel_canDropMimeData ".} =
  type Cb = proc(super: QDirModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_canDropMimeData(QDirModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_supportedDragActions(self: QDirModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQDirModel_virtualbase_supportedDragActions(self.h))

type QDirModelsupportedDragActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDragActions*(self: QDirModel, slot: proc(super: QDirModelsupportedDragActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QDirModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_supportedDragActions(self: ptr cQDirModel, slot: int): cint {.exportc: "miqt_exec_callback_QDirModel_supportedDragActions ".} =
  type Cb = proc(super: QDirModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDragActions(QDirModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_insertRows(self: QDirModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQDirModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QDirModelinsertRowsBase* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oninsertRows*(self: QDirModel, slot: proc(super: QDirModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QDirModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_insertRows(self: ptr cQDirModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QDirModel_insertRows ".} =
  type Cb = proc(super: QDirModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_insertRows(QDirModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_insertColumns(self: QDirModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQDirModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QDirModelinsertColumnsBase* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oninsertColumns*(self: QDirModel, slot: proc(super: QDirModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QDirModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_insertColumns(self: ptr cQDirModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QDirModel_insertColumns ".} =
  type Cb = proc(super: QDirModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_insertColumns(QDirModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeRows(self: QDirModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQDirModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QDirModelremoveRowsBase* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc onremoveRows*(self: QDirModel, slot: proc(super: QDirModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QDirModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_removeRows(self: ptr cQDirModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QDirModel_removeRows ".} =
  type Cb = proc(super: QDirModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_removeRows(QDirModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeColumns(self: QDirModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQDirModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QDirModelremoveColumnsBase* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc onremoveColumns*(self: QDirModel, slot: proc(super: QDirModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QDirModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_removeColumns(self: ptr cQDirModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QDirModel_removeColumns ".} =
  type Cb = proc(super: QDirModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_removeColumns(QDirModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_moveRows(self: QDirModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =


  fQDirModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QDirModelmoveRowsBase* = proc(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: QDirModel, slot: proc(super: QDirModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QDirModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_moveRows(self: ptr cQDirModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QDirModel_moveRows ".} =
  type Cb = proc(super: QDirModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveRows(QDirModel(h: self), sourceParent, sourceRow, count, destinationParent, destinationChild)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_moveColumns(self: QDirModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =


  fQDirModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QDirModelmoveColumnsBase* = proc(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: QDirModel, slot: proc(super: QDirModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QDirModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_moveColumns(self: ptr cQDirModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QDirModel_moveColumns ".} =
  type Cb = proc(super: QDirModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveColumns(QDirModel(h: self), sourceParent, sourceColumn, count, destinationParent, destinationChild)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_fetchMore(self: QDirModel, parent: gen_qabstractitemmodel.QModelIndex): void =


  fQDirModel_virtualbase_fetchMore(self.h, parent.h)

type QDirModelfetchMoreBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): void
proc onfetchMore*(self: QDirModel, slot: proc(super: QDirModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QDirModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_fetchMore(self: ptr cQDirModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QDirModel_fetchMore ".} =
  type Cb = proc(super: QDirModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_fetchMore(QDirModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_canFetchMore(self: QDirModel, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQDirModel_virtualbase_canFetchMore(self.h, parent.h)

type QDirModelcanFetchMoreBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): bool
proc oncanFetchMore*(self: QDirModel, slot: proc(super: QDirModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QDirModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_canFetchMore(self: ptr cQDirModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QDirModel_canFetchMore ".} =
  type Cb = proc(super: QDirModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_canFetchMore(QDirModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_buddy(self: QDirModel, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQDirModel_virtualbase_buddy(self.h, index.h))

type QDirModelbuddyBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onbuddy*(self: QDirModel, slot: proc(super: QDirModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QDirModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_buddy(self: ptr cQDirModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QDirModel_buddy ".} =
  type Cb = proc(super: QDirModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_buddy(QDirModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_match(self: QDirModel, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex] =


  var v_ma = fQDirModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

type QDirModelmatchBase* = proc(start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
proc onmatch*(self: QDirModel, slot: proc(super: QDirModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QDirModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_match(self: ptr cQDirModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QDirModel_match ".} =
  type Cb = proc(super: QDirModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): auto =
    callVirtualBase_match(QDirModel(h: self), start, role, value, hits, flags)
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
proc callVirtualBase_span(self: QDirModel, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize =


  gen_qsize.QSize(h: fQDirModel_virtualbase_span(self.h, index.h))

type QDirModelspanBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
proc onspan*(self: QDirModel, slot: proc(super: QDirModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QDirModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_span(self: ptr cQDirModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QDirModel_span ".} =
  type Cb = proc(super: QDirModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_span(QDirModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_roleNames(self: QDirModel, ): Table[cint,seq[byte]] =


  var v_mm = fQDirModel_virtualbase_roleNames(self.h)
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

type QDirModelroleNamesBase* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: QDirModel, slot: proc(super: QDirModelroleNamesBase): Table[cint,seq[byte]]) =
  # TODO check subclass
  type Cb = proc(super: QDirModelroleNamesBase): Table[cint,seq[byte]]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_roleNames(self: ptr cQDirModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QDirModel_roleNames ".} =
  type Cb = proc(super: QDirModelroleNamesBase): Table[cint,seq[byte]]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_roleNames(QDirModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc callVirtualBase_submit(self: QDirModel, ): bool =


  fQDirModel_virtualbase_submit(self.h)

type QDirModelsubmitBase* = proc(): bool
proc onsubmit*(self: QDirModel, slot: proc(super: QDirModelsubmitBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QDirModelsubmitBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_submit(self: ptr cQDirModel, slot: int): bool {.exportc: "miqt_exec_callback_QDirModel_submit ".} =
  type Cb = proc(super: QDirModelsubmitBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_submit(QDirModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_revert(self: QDirModel, ): void =


  fQDirModel_virtualbase_revert(self.h)

type QDirModelrevertBase* = proc(): void
proc onrevert*(self: QDirModel, slot: proc(super: QDirModelrevertBase): void) =
  # TODO check subclass
  type Cb = proc(super: QDirModelrevertBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_revert(self: ptr cQDirModel, slot: int): void {.exportc: "miqt_exec_callback_QDirModel_revert ".} =
  type Cb = proc(super: QDirModelrevertBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_revert(QDirModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_event(self: QDirModel, event: gen_qcoreevent.QEvent): bool =


  fQDirModel_virtualbase_event(self.h, event.h)

type QDirModeleventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QDirModel, slot: proc(super: QDirModeleventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDirModeleventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_event(self: ptr cQDirModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDirModel_event ".} =
  type Cb = proc(super: QDirModeleventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QDirModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QDirModel, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQDirModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDirModeleventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QDirModel, slot: proc(super: QDirModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDirModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_eventFilter(self: ptr cQDirModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDirModel_eventFilter ".} =
  type Cb = proc(super: QDirModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QDirModel(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QDirModel, event: gen_qcoreevent.QTimerEvent): void =


  fQDirModel_virtualbase_timerEvent(self.h, event.h)

type QDirModeltimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QDirModel, slot: proc(super: QDirModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDirModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_timerEvent(self: ptr cQDirModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDirModel_timerEvent ".} =
  type Cb = proc(super: QDirModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QDirModel(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QDirModel, event: gen_qcoreevent.QChildEvent): void =


  fQDirModel_virtualbase_childEvent(self.h, event.h)

type QDirModelchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QDirModel, slot: proc(super: QDirModelchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDirModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_childEvent(self: ptr cQDirModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDirModel_childEvent ".} =
  type Cb = proc(super: QDirModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QDirModel(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QDirModel, event: gen_qcoreevent.QEvent): void =


  fQDirModel_virtualbase_customEvent(self.h, event.h)

type QDirModelcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QDirModel, slot: proc(super: QDirModelcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDirModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_customEvent(self: ptr cQDirModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDirModel_customEvent ".} =
  type Cb = proc(super: QDirModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QDirModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QDirModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQDirModel_virtualbase_connectNotify(self.h, signal.h)

type QDirModelconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QDirModel, slot: proc(super: QDirModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDirModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_connectNotify(self: ptr cQDirModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDirModel_connectNotify ".} =
  type Cb = proc(super: QDirModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QDirModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QDirModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQDirModel_virtualbase_disconnectNotify(self.h, signal.h)

type QDirModeldisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QDirModel, slot: proc(super: QDirModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDirModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDirModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDirModel_disconnectNotify(self: ptr cQDirModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDirModel_disconnectNotify ".} =
  type Cb = proc(super: QDirModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QDirModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QDirModel): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQDirModel_staticMetaObject())
proc delete*(self: QDirModel) =
  fcQDirModel_delete(self.h)
