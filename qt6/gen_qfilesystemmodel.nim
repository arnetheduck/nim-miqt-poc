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
{.compile("gen_qfilesystemmodel.cpp", cflags).}


type QFileSystemModelRoles* = cint
const
  QFileSystemModelFileIconRole* = 1
  QFileSystemModelFilePathRole* = 257
  QFileSystemModelFileNameRole* = 258
  QFileSystemModelFilePermissions* = 259



type QFileSystemModelOption* = cint
const
  QFileSystemModelDontWatchForChanges* = 1
  QFileSystemModelDontResolveSymlinks* = 2
  QFileSystemModelDontUseCustomDirectoryIcons* = 4



import gen_qfilesystemmodel_types
export gen_qfilesystemmodel_types

import
  gen_qabstractfileiconprovider,
  gen_qabstractitemmodel,
  gen_qcoreevent,
  gen_qdatetime,
  gen_qdir,
  gen_qfiledevice,
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
  gen_qabstractfileiconprovider,
  gen_qabstractitemmodel,
  gen_qcoreevent,
  gen_qdatetime,
  gen_qdir,
  gen_qfiledevice,
  gen_qfileinfo,
  gen_qicon,
  gen_qmetaobject,
  gen_qmimedata,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsize,
  gen_qvariant

type cQFileSystemModel*{.exportc: "QFileSystemModel", incompleteStruct.} = object

proc fcQFileSystemModel_new(): ptr cQFileSystemModel {.importc: "QFileSystemModel_new".}
proc fcQFileSystemModel_new2(parent: pointer): ptr cQFileSystemModel {.importc: "QFileSystemModel_new2".}
proc fcQFileSystemModel_metaObject(self: pointer, ): pointer {.importc: "QFileSystemModel_metaObject".}
proc fcQFileSystemModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QFileSystemModel_metacast".}
proc fcQFileSystemModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFileSystemModel_metacall".}
proc fcQFileSystemModel_tr(s: cstring): struct_miqt_string {.importc: "QFileSystemModel_tr".}
proc fcQFileSystemModel_rootPathChanged(self: pointer, newPath: struct_miqt_string): void {.importc: "QFileSystemModel_rootPathChanged".}
proc fQFileSystemModel_connect_rootPathChanged(self: pointer, slot: int) {.importc: "QFileSystemModel_connect_rootPathChanged".}
proc fcQFileSystemModel_fileRenamed(self: pointer, path: struct_miqt_string, oldName: struct_miqt_string, newName: struct_miqt_string): void {.importc: "QFileSystemModel_fileRenamed".}
proc fQFileSystemModel_connect_fileRenamed(self: pointer, slot: int) {.importc: "QFileSystemModel_connect_fileRenamed".}
proc fcQFileSystemModel_directoryLoaded(self: pointer, path: struct_miqt_string): void {.importc: "QFileSystemModel_directoryLoaded".}
proc fQFileSystemModel_connect_directoryLoaded(self: pointer, slot: int) {.importc: "QFileSystemModel_connect_directoryLoaded".}
proc fcQFileSystemModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QFileSystemModel_index".}
proc fcQFileSystemModel_indexWithPath(self: pointer, path: struct_miqt_string): pointer {.importc: "QFileSystemModel_indexWithPath".}
proc fcQFileSystemModel_parent(self: pointer, child: pointer): pointer {.importc: "QFileSystemModel_parent".}
proc fcQFileSystemModel_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QFileSystemModel_sibling".}
proc fcQFileSystemModel_hasChildren(self: pointer, parent: pointer): bool {.importc: "QFileSystemModel_hasChildren".}
proc fcQFileSystemModel_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QFileSystemModel_canFetchMore".}
proc fcQFileSystemModel_fetchMore(self: pointer, parent: pointer): void {.importc: "QFileSystemModel_fetchMore".}
proc fcQFileSystemModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QFileSystemModel_rowCount".}
proc fcQFileSystemModel_columnCount(self: pointer, parent: pointer): cint {.importc: "QFileSystemModel_columnCount".}
proc fcQFileSystemModel_myComputer(self: pointer, ): pointer {.importc: "QFileSystemModel_myComputer".}
proc fcQFileSystemModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QFileSystemModel_data".}
proc fcQFileSystemModel_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QFileSystemModel_setData".}
proc fcQFileSystemModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QFileSystemModel_headerData".}
proc fcQFileSystemModel_flags(self: pointer, index: pointer): cint {.importc: "QFileSystemModel_flags".}
proc fcQFileSystemModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QFileSystemModel_sort".}
proc fcQFileSystemModel_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QFileSystemModel_mimeTypes".}
proc fcQFileSystemModel_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QFileSystemModel_mimeData".}
proc fcQFileSystemModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QFileSystemModel_dropMimeData".}
proc fcQFileSystemModel_supportedDropActions(self: pointer, ): cint {.importc: "QFileSystemModel_supportedDropActions".}
proc fcQFileSystemModel_roleNames(self: pointer, ): struct_miqt_map {.importc: "QFileSystemModel_roleNames".}
proc fcQFileSystemModel_setRootPath(self: pointer, path: struct_miqt_string): pointer {.importc: "QFileSystemModel_setRootPath".}
proc fcQFileSystemModel_rootPath(self: pointer, ): struct_miqt_string {.importc: "QFileSystemModel_rootPath".}
proc fcQFileSystemModel_rootDirectory(self: pointer, ): pointer {.importc: "QFileSystemModel_rootDirectory".}
proc fcQFileSystemModel_setIconProvider(self: pointer, provider: pointer): void {.importc: "QFileSystemModel_setIconProvider".}
proc fcQFileSystemModel_iconProvider(self: pointer, ): pointer {.importc: "QFileSystemModel_iconProvider".}
proc fcQFileSystemModel_setFilter(self: pointer, filters: cint): void {.importc: "QFileSystemModel_setFilter".}
proc fcQFileSystemModel_filter(self: pointer, ): cint {.importc: "QFileSystemModel_filter".}
proc fcQFileSystemModel_setResolveSymlinks(self: pointer, enable: bool): void {.importc: "QFileSystemModel_setResolveSymlinks".}
proc fcQFileSystemModel_resolveSymlinks(self: pointer, ): bool {.importc: "QFileSystemModel_resolveSymlinks".}
proc fcQFileSystemModel_setReadOnly(self: pointer, enable: bool): void {.importc: "QFileSystemModel_setReadOnly".}
proc fcQFileSystemModel_isReadOnly(self: pointer, ): bool {.importc: "QFileSystemModel_isReadOnly".}
proc fcQFileSystemModel_setNameFilterDisables(self: pointer, enable: bool): void {.importc: "QFileSystemModel_setNameFilterDisables".}
proc fcQFileSystemModel_nameFilterDisables(self: pointer, ): bool {.importc: "QFileSystemModel_nameFilterDisables".}
proc fcQFileSystemModel_setNameFilters(self: pointer, filters: struct_miqt_array): void {.importc: "QFileSystemModel_setNameFilters".}
proc fcQFileSystemModel_nameFilters(self: pointer, ): struct_miqt_array {.importc: "QFileSystemModel_nameFilters".}
proc fcQFileSystemModel_setOption(self: pointer, option: cint): void {.importc: "QFileSystemModel_setOption".}
proc fcQFileSystemModel_testOption(self: pointer, option: cint): bool {.importc: "QFileSystemModel_testOption".}
proc fcQFileSystemModel_setOptions(self: pointer, options: cint): void {.importc: "QFileSystemModel_setOptions".}
proc fcQFileSystemModel_options(self: pointer, ): cint {.importc: "QFileSystemModel_options".}
proc fcQFileSystemModel_filePath(self: pointer, index: pointer): struct_miqt_string {.importc: "QFileSystemModel_filePath".}
proc fcQFileSystemModel_isDir(self: pointer, index: pointer): bool {.importc: "QFileSystemModel_isDir".}
proc fcQFileSystemModel_size(self: pointer, index: pointer): clonglong {.importc: "QFileSystemModel_size".}
proc fcQFileSystemModel_typeX(self: pointer, index: pointer): struct_miqt_string {.importc: "QFileSystemModel_type".}
proc fcQFileSystemModel_lastModified(self: pointer, index: pointer): pointer {.importc: "QFileSystemModel_lastModified".}
proc fcQFileSystemModel_mkdir(self: pointer, parent: pointer, name: struct_miqt_string): pointer {.importc: "QFileSystemModel_mkdir".}
proc fcQFileSystemModel_rmdir(self: pointer, index: pointer): bool {.importc: "QFileSystemModel_rmdir".}
proc fcQFileSystemModel_fileName(self: pointer, index: pointer): struct_miqt_string {.importc: "QFileSystemModel_fileName".}
proc fcQFileSystemModel_fileIcon(self: pointer, index: pointer): pointer {.importc: "QFileSystemModel_fileIcon".}
proc fcQFileSystemModel_permissions(self: pointer, index: pointer): cint {.importc: "QFileSystemModel_permissions".}
proc fcQFileSystemModel_fileInfo(self: pointer, index: pointer): pointer {.importc: "QFileSystemModel_fileInfo".}
proc fcQFileSystemModel_remove(self: pointer, index: pointer): bool {.importc: "QFileSystemModel_remove".}
proc fcQFileSystemModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFileSystemModel_tr2".}
proc fcQFileSystemModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFileSystemModel_tr3".}
proc fcQFileSystemModel_index2(self: pointer, path: struct_miqt_string, column: cint): pointer {.importc: "QFileSystemModel_index2".}
proc fcQFileSystemModel_myComputer1(self: pointer, role: cint): pointer {.importc: "QFileSystemModel_myComputer1".}
proc fcQFileSystemModel_setOption2(self: pointer, option: cint, on: bool): void {.importc: "QFileSystemModel_setOption2".}
proc fQFileSystemModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QFileSystemModel_virtualbase_metacall".}
proc fcQFileSystemModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_metacall".}
proc fQFileSystemModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer{.importc: "QFileSystemModel_virtualbase_index".}
proc fcQFileSystemModel_override_virtual_index(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_index".}
proc fQFileSystemModel_virtualbase_parent(self: pointer, child: pointer): pointer{.importc: "QFileSystemModel_virtualbase_parent".}
proc fcQFileSystemModel_override_virtual_parent(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_parent".}
proc fQFileSystemModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QFileSystemModel_virtualbase_sibling".}
proc fcQFileSystemModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_sibling".}
proc fQFileSystemModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool{.importc: "QFileSystemModel_virtualbase_hasChildren".}
proc fcQFileSystemModel_override_virtual_hasChildren(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_hasChildren".}
proc fQFileSystemModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QFileSystemModel_virtualbase_canFetchMore".}
proc fcQFileSystemModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_canFetchMore".}
proc fQFileSystemModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QFileSystemModel_virtualbase_fetchMore".}
proc fcQFileSystemModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_fetchMore".}
proc fQFileSystemModel_virtualbase_rowCount(self: pointer, parent: pointer): cint{.importc: "QFileSystemModel_virtualbase_rowCount".}
proc fcQFileSystemModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_rowCount".}
proc fQFileSystemModel_virtualbase_columnCount(self: pointer, parent: pointer): cint{.importc: "QFileSystemModel_virtualbase_columnCount".}
proc fcQFileSystemModel_override_virtual_columnCount(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_columnCount".}
proc fQFileSystemModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer{.importc: "QFileSystemModel_virtualbase_data".}
proc fcQFileSystemModel_override_virtual_data(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_data".}
proc fQFileSystemModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QFileSystemModel_virtualbase_setData".}
proc fcQFileSystemModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_setData".}
proc fQFileSystemModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QFileSystemModel_virtualbase_headerData".}
proc fcQFileSystemModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_headerData".}
proc fQFileSystemModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QFileSystemModel_virtualbase_flags".}
proc fcQFileSystemModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_flags".}
proc fQFileSystemModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QFileSystemModel_virtualbase_sort".}
proc fcQFileSystemModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_sort".}
proc fQFileSystemModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QFileSystemModel_virtualbase_mimeTypes".}
proc fcQFileSystemModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_mimeTypes".}
proc fQFileSystemModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QFileSystemModel_virtualbase_mimeData".}
proc fcQFileSystemModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_mimeData".}
proc fQFileSystemModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QFileSystemModel_virtualbase_dropMimeData".}
proc fcQFileSystemModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_dropMimeData".}
proc fQFileSystemModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QFileSystemModel_virtualbase_supportedDropActions".}
proc fcQFileSystemModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_supportedDropActions".}
proc fQFileSystemModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QFileSystemModel_virtualbase_roleNames".}
proc fcQFileSystemModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_roleNames".}
proc fQFileSystemModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFileSystemModel_virtualbase_timerEvent".}
proc fcQFileSystemModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_timerEvent".}
proc fQFileSystemModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QFileSystemModel_virtualbase_event".}
proc fcQFileSystemModel_override_virtual_event(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_event".}
proc fQFileSystemModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QFileSystemModel_virtualbase_setHeaderData".}
proc fcQFileSystemModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_setHeaderData".}
proc fQFileSystemModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QFileSystemModel_virtualbase_itemData".}
proc fcQFileSystemModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_itemData".}
proc fQFileSystemModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QFileSystemModel_virtualbase_setItemData".}
proc fcQFileSystemModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_setItemData".}
proc fQFileSystemModel_virtualbase_clearItemData(self: pointer, index: pointer): bool{.importc: "QFileSystemModel_virtualbase_clearItemData".}
proc fcQFileSystemModel_override_virtual_clearItemData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_clearItemData".}
proc fQFileSystemModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QFileSystemModel_virtualbase_canDropMimeData".}
proc fcQFileSystemModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_canDropMimeData".}
proc fQFileSystemModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QFileSystemModel_virtualbase_supportedDragActions".}
proc fcQFileSystemModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_supportedDragActions".}
proc fQFileSystemModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QFileSystemModel_virtualbase_insertRows".}
proc fcQFileSystemModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_insertRows".}
proc fQFileSystemModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QFileSystemModel_virtualbase_insertColumns".}
proc fcQFileSystemModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_insertColumns".}
proc fQFileSystemModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QFileSystemModel_virtualbase_removeRows".}
proc fcQFileSystemModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_removeRows".}
proc fQFileSystemModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QFileSystemModel_virtualbase_removeColumns".}
proc fcQFileSystemModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_removeColumns".}
proc fQFileSystemModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QFileSystemModel_virtualbase_moveRows".}
proc fcQFileSystemModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_moveRows".}
proc fQFileSystemModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QFileSystemModel_virtualbase_moveColumns".}
proc fcQFileSystemModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_moveColumns".}
proc fQFileSystemModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QFileSystemModel_virtualbase_buddy".}
proc fcQFileSystemModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_buddy".}
proc fQFileSystemModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QFileSystemModel_virtualbase_match".}
proc fcQFileSystemModel_override_virtual_match(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_match".}
proc fQFileSystemModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QFileSystemModel_virtualbase_span".}
proc fcQFileSystemModel_override_virtual_span(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_span".}
proc fQFileSystemModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void{.importc: "QFileSystemModel_virtualbase_multiData".}
proc fcQFileSystemModel_override_virtual_multiData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_multiData".}
proc fQFileSystemModel_virtualbase_submit(self: pointer, ): bool{.importc: "QFileSystemModel_virtualbase_submit".}
proc fcQFileSystemModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_submit".}
proc fQFileSystemModel_virtualbase_revert(self: pointer, ): void{.importc: "QFileSystemModel_virtualbase_revert".}
proc fcQFileSystemModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_revert".}
proc fQFileSystemModel_virtualbase_resetInternalData(self: pointer, ): void{.importc: "QFileSystemModel_virtualbase_resetInternalData".}
proc fcQFileSystemModel_override_virtual_resetInternalData(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_resetInternalData".}
proc fQFileSystemModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QFileSystemModel_virtualbase_eventFilter".}
proc fcQFileSystemModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_eventFilter".}
proc fQFileSystemModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QFileSystemModel_virtualbase_childEvent".}
proc fcQFileSystemModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_childEvent".}
proc fQFileSystemModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFileSystemModel_virtualbase_customEvent".}
proc fcQFileSystemModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_customEvent".}
proc fQFileSystemModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFileSystemModel_virtualbase_connectNotify".}
proc fcQFileSystemModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_connectNotify".}
proc fQFileSystemModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFileSystemModel_virtualbase_disconnectNotify".}
proc fcQFileSystemModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFileSystemModel_override_virtual_disconnectNotify".}
proc fcQFileSystemModel_delete(self: pointer) {.importc: "QFileSystemModel_delete".}


func init*(T: type QFileSystemModel, h: ptr cQFileSystemModel): QFileSystemModel =
  T(h: h)
proc create*(T: type QFileSystemModel, ): QFileSystemModel =

  QFileSystemModel.init(fcQFileSystemModel_new())
proc create*(T: type QFileSystemModel, parent: gen_qobject.QObject): QFileSystemModel =

  QFileSystemModel.init(fcQFileSystemModel_new2(parent.h))
proc metaObject*(self: QFileSystemModel, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQFileSystemModel_metaObject(self.h))

proc metacast*(self: QFileSystemModel, param1: cstring): pointer =

  fcQFileSystemModel_metacast(self.h, param1)

proc metacall*(self: QFileSystemModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQFileSystemModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QFileSystemModel, s: cstring): string =

  let v_ms = fcQFileSystemModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc rootPathChanged*(self: QFileSystemModel, newPath: string): void =

  fcQFileSystemModel_rootPathChanged(self.h, struct_miqt_string(data: newPath, len: csize_t(len(newPath))))

proc miqt_exec_callback_QFileSystemModel_rootPathChanged(slot: int, newPath: struct_miqt_string) {.exportc.} =
  type Cb = proc(newPath: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vnewPath_ms = newPath
  let vnewPathx_ret = string.fromBytes(toOpenArrayByte(vnewPath_ms.data, 0, int(vnewPath_ms.len)-1))
  c_free(vnewPath_ms.data)
  let slotval1 = vnewPathx_ret


  nimfunc[](slotval1)

proc onrootPathChanged*(self: QFileSystemModel, slot: proc(newPath: string)) =
  type Cb = proc(newPath: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFileSystemModel_connect_rootPathChanged(self.h, cast[int](addr tmp[]))
proc fileRenamed*(self: QFileSystemModel, path: string, oldName: string, newName: string): void =

  fcQFileSystemModel_fileRenamed(self.h, struct_miqt_string(data: path, len: csize_t(len(path))), struct_miqt_string(data: oldName, len: csize_t(len(oldName))), struct_miqt_string(data: newName, len: csize_t(len(newName))))

proc miqt_exec_callback_QFileSystemModel_fileRenamed(slot: int, path: struct_miqt_string, oldName: struct_miqt_string, newName: struct_miqt_string) {.exportc.} =
  type Cb = proc(path: string, oldName: string, newName: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vpath_ms = path
  let vpathx_ret = string.fromBytes(toOpenArrayByte(vpath_ms.data, 0, int(vpath_ms.len)-1))
  c_free(vpath_ms.data)
  let slotval1 = vpathx_ret

  let voldName_ms = oldName
  let voldNamex_ret = string.fromBytes(toOpenArrayByte(voldName_ms.data, 0, int(voldName_ms.len)-1))
  c_free(voldName_ms.data)
  let slotval2 = voldNamex_ret

  let vnewName_ms = newName
  let vnewNamex_ret = string.fromBytes(toOpenArrayByte(vnewName_ms.data, 0, int(vnewName_ms.len)-1))
  c_free(vnewName_ms.data)
  let slotval3 = vnewNamex_ret


  nimfunc[](slotval1, slotval2, slotval3)

proc onfileRenamed*(self: QFileSystemModel, slot: proc(path: string, oldName: string, newName: string)) =
  type Cb = proc(path: string, oldName: string, newName: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFileSystemModel_connect_fileRenamed(self.h, cast[int](addr tmp[]))
proc directoryLoaded*(self: QFileSystemModel, path: string): void =

  fcQFileSystemModel_directoryLoaded(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))

proc miqt_exec_callback_QFileSystemModel_directoryLoaded(slot: int, path: struct_miqt_string) {.exportc.} =
  type Cb = proc(path: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vpath_ms = path
  let vpathx_ret = string.fromBytes(toOpenArrayByte(vpath_ms.data, 0, int(vpath_ms.len)-1))
  c_free(vpath_ms.data)
  let slotval1 = vpathx_ret


  nimfunc[](slotval1)

proc ondirectoryLoaded*(self: QFileSystemModel, slot: proc(path: string)) =
  type Cb = proc(path: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQFileSystemModel_connect_directoryLoaded(self.h, cast[int](addr tmp[]))
proc index*(self: QFileSystemModel, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQFileSystemModel_index(self.h, row, column, parent.h))

proc indexWithPath*(self: QFileSystemModel, path: string): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQFileSystemModel_indexWithPath(self.h, struct_miqt_string(data: path, len: csize_t(len(path)))))

proc parent*(self: QFileSystemModel, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQFileSystemModel_parent(self.h, child.h))

proc sibling*(self: QFileSystemModel, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQFileSystemModel_sibling(self.h, row, column, idx.h))

proc hasChildren*(self: QFileSystemModel, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQFileSystemModel_hasChildren(self.h, parent.h)

proc canFetchMore*(self: QFileSystemModel, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQFileSystemModel_canFetchMore(self.h, parent.h)

proc fetchMore*(self: QFileSystemModel, parent: gen_qabstractitemmodel.QModelIndex): void =

  fcQFileSystemModel_fetchMore(self.h, parent.h)

proc rowCount*(self: QFileSystemModel, parent: gen_qabstractitemmodel.QModelIndex): cint =

  fcQFileSystemModel_rowCount(self.h, parent.h)

proc columnCount*(self: QFileSystemModel, parent: gen_qabstractitemmodel.QModelIndex): cint =

  fcQFileSystemModel_columnCount(self.h, parent.h)

proc myComputer*(self: QFileSystemModel, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQFileSystemModel_myComputer(self.h))

proc data*(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQFileSystemModel_data(self.h, index.h, role))

proc setData*(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool =

  fcQFileSystemModel_setData(self.h, index.h, value.h, role)

proc headerData*(self: QFileSystemModel, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQFileSystemModel_headerData(self.h, section, cint(orientation), role))

proc flags*(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag =

  gen_qnamespace.ItemFlag(fcQFileSystemModel_flags(self.h, index.h))

proc sort*(self: QFileSystemModel, column: cint, order: gen_qnamespace.SortOrder): void =

  fcQFileSystemModel_sort(self.h, column, cint(order))

proc mimeTypes*(self: QFileSystemModel, ): seq[string] =

  var v_ma = fcQFileSystemModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc mimeData*(self: QFileSystemModel, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData =

  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata.QMimeData(h: fcQFileSystemModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc dropMimeData*(self: QFileSystemModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQFileSystemModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc supportedDropActions*(self: QFileSystemModel, ): gen_qnamespace.DropAction =

  gen_qnamespace.DropAction(fcQFileSystemModel_supportedDropActions(self.h))

proc roleNames*(self: QFileSystemModel, ): Table[cint,seq[byte]] =

  var v_mm = fcQFileSystemModel_roleNames(self.h)
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

proc setRootPath*(self: QFileSystemModel, path: string): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQFileSystemModel_setRootPath(self.h, struct_miqt_string(data: path, len: csize_t(len(path)))))

proc rootPath*(self: QFileSystemModel, ): string =

  let v_ms = fcQFileSystemModel_rootPath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc rootDirectory*(self: QFileSystemModel, ): gen_qdir.QDir =

  gen_qdir.QDir(h: fcQFileSystemModel_rootDirectory(self.h))

proc setIconProvider*(self: QFileSystemModel, provider: gen_qabstractfileiconprovider.QAbstractFileIconProvider): void =

  fcQFileSystemModel_setIconProvider(self.h, provider.h)

proc iconProvider*(self: QFileSystemModel, ): gen_qabstractfileiconprovider.QAbstractFileIconProvider =

  gen_qabstractfileiconprovider.QAbstractFileIconProvider(h: fcQFileSystemModel_iconProvider(self.h))

proc setFilter*(self: QFileSystemModel, filters: gen_qdir.QDirFilter): void =

  fcQFileSystemModel_setFilter(self.h, cint(filters))

proc filter*(self: QFileSystemModel, ): gen_qdir.QDirFilter =

  gen_qdir.QDirFilter(fcQFileSystemModel_filter(self.h))

proc setResolveSymlinks*(self: QFileSystemModel, enable: bool): void =

  fcQFileSystemModel_setResolveSymlinks(self.h, enable)

proc resolveSymlinks*(self: QFileSystemModel, ): bool =

  fcQFileSystemModel_resolveSymlinks(self.h)

proc setReadOnly*(self: QFileSystemModel, enable: bool): void =

  fcQFileSystemModel_setReadOnly(self.h, enable)

proc isReadOnly*(self: QFileSystemModel, ): bool =

  fcQFileSystemModel_isReadOnly(self.h)

proc setNameFilterDisables*(self: QFileSystemModel, enable: bool): void =

  fcQFileSystemModel_setNameFilterDisables(self.h, enable)

proc nameFilterDisables*(self: QFileSystemModel, ): bool =

  fcQFileSystemModel_nameFilterDisables(self.h)

proc setNameFilters*(self: QFileSystemModel, filters: seq[string]): void =

  var filters_CArray = newSeq[struct_miqt_string](len(filters))
  for i in 0..<len(filters):
    filters_CArray[i] = struct_miqt_string(data: filters[i], len: csize_t(len(filters[i])))

  fcQFileSystemModel_setNameFilters(self.h, struct_miqt_array(len: csize_t(len(filters)), data: if len(filters) == 0: nil else: addr(filters_CArray[0])))

proc nameFilters*(self: QFileSystemModel, ): seq[string] =

  var v_ma = fcQFileSystemModel_nameFilters(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setOption*(self: QFileSystemModel, option: QFileSystemModelOption): void =

  fcQFileSystemModel_setOption(self.h, cint(option))

proc testOption*(self: QFileSystemModel, option: QFileSystemModelOption): bool =

  fcQFileSystemModel_testOption(self.h, cint(option))

proc setOptions*(self: QFileSystemModel, options: QFileSystemModelOption): void =

  fcQFileSystemModel_setOptions(self.h, cint(options))

proc options*(self: QFileSystemModel, ): QFileSystemModelOption =

  QFileSystemModelOption(fcQFileSystemModel_options(self.h))

proc filePath*(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex): string =

  let v_ms = fcQFileSystemModel_filePath(self.h, index.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isDir*(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex): bool =

  fcQFileSystemModel_isDir(self.h, index.h)

proc size*(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex): clonglong =

  fcQFileSystemModel_size(self.h, index.h)

proc typeX*(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex): string =

  let v_ms = fcQFileSystemModel_typeX(self.h, index.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc lastModified*(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex): gen_qdatetime.QDateTime =

  gen_qdatetime.QDateTime(h: fcQFileSystemModel_lastModified(self.h, index.h))

proc mkdir*(self: QFileSystemModel, parent: gen_qabstractitemmodel.QModelIndex, name: string): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQFileSystemModel_mkdir(self.h, parent.h, struct_miqt_string(data: name, len: csize_t(len(name)))))

proc rmdir*(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex): bool =

  fcQFileSystemModel_rmdir(self.h, index.h)

proc fileName*(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex): string =

  let v_ms = fcQFileSystemModel_fileName(self.h, index.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileIcon*(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQFileSystemModel_fileIcon(self.h, index.h))

proc permissions*(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex): gen_qfiledevice.QFileDevicePermission =

  gen_qfiledevice.QFileDevicePermission(fcQFileSystemModel_permissions(self.h, index.h))

proc fileInfo*(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex): gen_qfileinfo.QFileInfo =

  gen_qfileinfo.QFileInfo(h: fcQFileSystemModel_fileInfo(self.h, index.h))

proc remove*(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex): bool =

  fcQFileSystemModel_remove(self.h, index.h)

proc tr2*(_: type QFileSystemModel, s: cstring, c: cstring): string =

  let v_ms = fcQFileSystemModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QFileSystemModel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQFileSystemModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc index2*(self: QFileSystemModel, path: string, column: cint): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQFileSystemModel_index2(self.h, struct_miqt_string(data: path, len: csize_t(len(path))), column))

proc myComputer1*(self: QFileSystemModel, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQFileSystemModel_myComputer1(self.h, role))

proc setOption2*(self: QFileSystemModel, option: QFileSystemModelOption, on: bool): void =

  fcQFileSystemModel_setOption2(self.h, cint(option), on)

proc callVirtualBase_metacall(self: QFileSystemModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQFileSystemModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QFileSystemModelmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QFileSystemModel, slot: proc(super: QFileSystemModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_metacall(self: ptr cQFileSystemModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QFileSystemModel_metacall ".} =
  type Cb = proc(super: QFileSystemModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QFileSystemModel(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_index(self: QFileSystemModel, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQFileSystemModel_virtualbase_index(self.h, row, column, parent.h))

type QFileSystemModelindexBase* = proc(row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onindex*(self: QFileSystemModel, slot: proc(super: QFileSystemModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_index(self: ptr cQFileSystemModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QFileSystemModel_index ".} =
  type Cb = proc(super: QFileSystemModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_index(QFileSystemModel(h: self), row, column, parent)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_parent(self: QFileSystemModel, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQFileSystemModel_virtualbase_parent(self.h, child.h))

type QFileSystemModelparentBase* = proc(child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onparent*(self: QFileSystemModel, slot: proc(super: QFileSystemModelparentBase, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelparentBase, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_parent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_parent(self: ptr cQFileSystemModel, slot: int, child: pointer): pointer {.exportc: "miqt_exec_callback_QFileSystemModel_parent ".} =
  type Cb = proc(super: QFileSystemModelparentBase, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(child: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_parent(QFileSystemModel(h: self), child)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: child)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sibling(self: QFileSystemModel, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQFileSystemModel_virtualbase_sibling(self.h, row, column, idx.h))

type QFileSystemModelsiblingBase* = proc(row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onsibling*(self: QFileSystemModel, slot: proc(super: QFileSystemModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_sibling(self: ptr cQFileSystemModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QFileSystemModel_sibling ".} =
  type Cb = proc(super: QFileSystemModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_sibling(QFileSystemModel(h: self), row, column, idx)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: idx)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_hasChildren(self: QFileSystemModel, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQFileSystemModel_virtualbase_hasChildren(self.h, parent.h)

type QFileSystemModelhasChildrenBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): bool
proc onhasChildren*(self: QFileSystemModel, slot: proc(super: QFileSystemModelhasChildrenBase, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelhasChildrenBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_hasChildren(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_hasChildren(self: ptr cQFileSystemModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_hasChildren ".} =
  type Cb = proc(super: QFileSystemModelhasChildrenBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_hasChildren(QFileSystemModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_canFetchMore(self: QFileSystemModel, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQFileSystemModel_virtualbase_canFetchMore(self.h, parent.h)

type QFileSystemModelcanFetchMoreBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): bool
proc oncanFetchMore*(self: QFileSystemModel, slot: proc(super: QFileSystemModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_canFetchMore(self: ptr cQFileSystemModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_canFetchMore ".} =
  type Cb = proc(super: QFileSystemModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_canFetchMore(QFileSystemModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_fetchMore(self: QFileSystemModel, parent: gen_qabstractitemmodel.QModelIndex): void =


  fQFileSystemModel_virtualbase_fetchMore(self.h, parent.h)

type QFileSystemModelfetchMoreBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): void
proc onfetchMore*(self: QFileSystemModel, slot: proc(super: QFileSystemModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_fetchMore(self: ptr cQFileSystemModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QFileSystemModel_fetchMore ".} =
  type Cb = proc(super: QFileSystemModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_fetchMore(QFileSystemModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_rowCount(self: QFileSystemModel, parent: gen_qabstractitemmodel.QModelIndex): cint =


  fQFileSystemModel_virtualbase_rowCount(self.h, parent.h)

type QFileSystemModelrowCountBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): cint
proc onrowCount*(self: QFileSystemModel, slot: proc(super: QFileSystemModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_rowCount(self: ptr cQFileSystemModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QFileSystemModel_rowCount ".} =
  type Cb = proc(super: QFileSystemModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_rowCount(QFileSystemModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_columnCount(self: QFileSystemModel, parent: gen_qabstractitemmodel.QModelIndex): cint =


  fQFileSystemModel_virtualbase_columnCount(self.h, parent.h)

type QFileSystemModelcolumnCountBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): cint
proc oncolumnCount*(self: QFileSystemModel, slot: proc(super: QFileSystemModelcolumnCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelcolumnCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_columnCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_columnCount(self: ptr cQFileSystemModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QFileSystemModel_columnCount ".} =
  type Cb = proc(super: QFileSystemModelcolumnCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_columnCount(QFileSystemModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_data(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQFileSystemModel_virtualbase_data(self.h, index.h, role))

type QFileSystemModeldataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
proc ondata*(self: QFileSystemModel, slot: proc(super: QFileSystemModeldataBase, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModeldataBase, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_data(self: ptr cQFileSystemModel, slot: int, index: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QFileSystemModel_data ".} =
  type Cb = proc(super: QFileSystemModeldataBase, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, role: cint): auto =
    callVirtualBase_data(QFileSystemModel(h: self), index, role)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_setData(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool =


  fQFileSystemModel_virtualbase_setData(self.h, index.h, value.h, role)

type QFileSystemModelsetDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
proc onsetData*(self: QFileSystemModel, slot: proc(super: QFileSystemModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_setData(self: ptr cQFileSystemModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QFileSystemModel_setData ".} =
  type Cb = proc(super: QFileSystemModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setData(QFileSystemModel(h: self), index, value, role)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qvariant.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_headerData(self: QFileSystemModel, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQFileSystemModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QFileSystemModelheaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
proc onheaderData*(self: QFileSystemModel, slot: proc(super: QFileSystemModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_headerData(self: ptr cQFileSystemModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QFileSystemModel_headerData ".} =
  type Cb = proc(super: QFileSystemModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, role: cint): auto =
    callVirtualBase_headerData(QFileSystemModel(h: self), section, orientation, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_flags(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag =


  gen_qnamespace.ItemFlag(fQFileSystemModel_virtualbase_flags(self.h, index.h))

type QFileSystemModelflagsBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
proc onflags*(self: QFileSystemModel, slot: proc(super: QFileSystemModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_flags(self: ptr cQFileSystemModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QFileSystemModel_flags ".} =
  type Cb = proc(super: QFileSystemModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_flags(QFileSystemModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  cint(virtualReturn)
proc callVirtualBase_sort(self: QFileSystemModel, column: cint, order: gen_qnamespace.SortOrder): void =


  fQFileSystemModel_virtualbase_sort(self.h, column, cint(order))

type QFileSystemModelsortBase* = proc(column: cint, order: gen_qnamespace.SortOrder): void
proc onsort*(self: QFileSystemModel, slot: proc(super: QFileSystemModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_sort(self: ptr cQFileSystemModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QFileSystemModel_sort ".} =
  type Cb = proc(super: QFileSystemModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, order: gen_qnamespace.SortOrder): auto =
    callVirtualBase_sort(QFileSystemModel(h: self), column, order)
  let slotval1 = column

  let slotval2 = gen_qnamespace.SortOrder(order)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_mimeTypes(self: QFileSystemModel, ): seq[string] =


  var v_ma = fQFileSystemModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QFileSystemModelmimeTypesBase* = proc(): seq[string]
proc onmimeTypes*(self: QFileSystemModel, slot: proc(super: QFileSystemModelmimeTypesBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelmimeTypesBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_mimeTypes(self: ptr cQFileSystemModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QFileSystemModel_mimeTypes ".} =
  type Cb = proc(super: QFileSystemModelmimeTypesBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mimeTypes(QFileSystemModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_mimeData(self: QFileSystemModel, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData =

  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h


  gen_qmimedata.QMimeData(h: fQFileSystemModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QFileSystemModelmimeDataBase* = proc(indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
proc onmimeData*(self: QFileSystemModel, slot: proc(super: QFileSystemModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_mimeData(self: ptr cQFileSystemModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QFileSystemModel_mimeData ".} =
  type Cb = proc(super: QFileSystemModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(indexes: seq[gen_qabstractitemmodel.QModelIndex]): auto =
    callVirtualBase_mimeData(QFileSystemModel(h: self), indexes)
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_dropMimeData(self: QFileSystemModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQFileSystemModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QFileSystemModeldropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc ondropMimeData*(self: QFileSystemModel, slot: proc(super: QFileSystemModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_dropMimeData(self: ptr cQFileSystemModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_dropMimeData ".} =
  type Cb = proc(super: QFileSystemModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_dropMimeData(QFileSystemModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_supportedDropActions(self: QFileSystemModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQFileSystemModel_virtualbase_supportedDropActions(self.h))

type QFileSystemModelsupportedDropActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDropActions*(self: QFileSystemModel, slot: proc(super: QFileSystemModelsupportedDropActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_supportedDropActions(self: ptr cQFileSystemModel, slot: int): cint {.exportc: "miqt_exec_callback_QFileSystemModel_supportedDropActions ".} =
  type Cb = proc(super: QFileSystemModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDropActions(QFileSystemModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_roleNames(self: QFileSystemModel, ): Table[cint,seq[byte]] =


  var v_mm = fQFileSystemModel_virtualbase_roleNames(self.h)
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

type QFileSystemModelroleNamesBase* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: QFileSystemModel, slot: proc(super: QFileSystemModelroleNamesBase): Table[cint,seq[byte]]) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelroleNamesBase): Table[cint,seq[byte]]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_roleNames(self: ptr cQFileSystemModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QFileSystemModel_roleNames ".} =
  type Cb = proc(super: QFileSystemModelroleNamesBase): Table[cint,seq[byte]]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_roleNames(QFileSystemModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc callVirtualBase_timerEvent(self: QFileSystemModel, event: gen_qcoreevent.QTimerEvent): void =


  fQFileSystemModel_virtualbase_timerEvent(self.h, event.h)

type QFileSystemModeltimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QFileSystemModel, slot: proc(super: QFileSystemModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_timerEvent(self: ptr cQFileSystemModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileSystemModel_timerEvent ".} =
  type Cb = proc(super: QFileSystemModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QFileSystemModel(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QFileSystemModel, event: gen_qcoreevent.QEvent): bool =


  fQFileSystemModel_virtualbase_event(self.h, event.h)

type QFileSystemModeleventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QFileSystemModel, slot: proc(super: QFileSystemModeleventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModeleventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_event(self: ptr cQFileSystemModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_event ".} =
  type Cb = proc(super: QFileSystemModeleventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QFileSystemModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_setHeaderData(self: QFileSystemModel, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool =


  fQFileSystemModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QFileSystemModelsetHeaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
proc onsetHeaderData*(self: QFileSystemModel, slot: proc(super: QFileSystemModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_setHeaderData(self: ptr cQFileSystemModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QFileSystemModel_setHeaderData ".} =
  type Cb = proc(super: QFileSystemModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setHeaderData(QFileSystemModel(h: self), section, orientation, value, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = gen_qvariant.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_itemData(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant] =


  var v_mm = fQFileSystemModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QFileSystemModelitemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
proc onitemData*(self: QFileSystemModel, slot: proc(super: QFileSystemModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_itemData(self: ptr cQFileSystemModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QFileSystemModel_itemData ".} =
  type Cb = proc(super: QFileSystemModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_itemData(QFileSystemModel(h: self), index)
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
proc callVirtualBase_setItemData(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool =

  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1


  fQFileSystemModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QFileSystemModelsetItemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
proc onsetItemData*(self: QFileSystemModel, slot: proc(super: QFileSystemModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_setItemData(self: ptr cQFileSystemModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QFileSystemModel_setItemData ".} =
  type Cb = proc(super: QFileSystemModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): auto =
    callVirtualBase_setItemData(QFileSystemModel(h: self), index, roles)
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
proc callVirtualBase_clearItemData(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQFileSystemModel_virtualbase_clearItemData(self.h, index.h)

type QFileSystemModelclearItemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex): bool
proc onclearItemData*(self: QFileSystemModel, slot: proc(super: QFileSystemModelclearItemDataBase, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelclearItemDataBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_clearItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_clearItemData(self: ptr cQFileSystemModel, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_clearItemData ".} =
  type Cb = proc(super: QFileSystemModelclearItemDataBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_clearItemData(QFileSystemModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_canDropMimeData(self: QFileSystemModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQFileSystemModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QFileSystemModelcanDropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oncanDropMimeData*(self: QFileSystemModel, slot: proc(super: QFileSystemModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_canDropMimeData(self: ptr cQFileSystemModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_canDropMimeData ".} =
  type Cb = proc(super: QFileSystemModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_canDropMimeData(QFileSystemModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_supportedDragActions(self: QFileSystemModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQFileSystemModel_virtualbase_supportedDragActions(self.h))

type QFileSystemModelsupportedDragActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDragActions*(self: QFileSystemModel, slot: proc(super: QFileSystemModelsupportedDragActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_supportedDragActions(self: ptr cQFileSystemModel, slot: int): cint {.exportc: "miqt_exec_callback_QFileSystemModel_supportedDragActions ".} =
  type Cb = proc(super: QFileSystemModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDragActions(QFileSystemModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_insertRows(self: QFileSystemModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQFileSystemModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QFileSystemModelinsertRowsBase* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oninsertRows*(self: QFileSystemModel, slot: proc(super: QFileSystemModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_insertRows(self: ptr cQFileSystemModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_insertRows ".} =
  type Cb = proc(super: QFileSystemModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_insertRows(QFileSystemModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_insertColumns(self: QFileSystemModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQFileSystemModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QFileSystemModelinsertColumnsBase* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oninsertColumns*(self: QFileSystemModel, slot: proc(super: QFileSystemModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_insertColumns(self: ptr cQFileSystemModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_insertColumns ".} =
  type Cb = proc(super: QFileSystemModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_insertColumns(QFileSystemModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeRows(self: QFileSystemModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQFileSystemModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QFileSystemModelremoveRowsBase* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc onremoveRows*(self: QFileSystemModel, slot: proc(super: QFileSystemModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_removeRows(self: ptr cQFileSystemModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_removeRows ".} =
  type Cb = proc(super: QFileSystemModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_removeRows(QFileSystemModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeColumns(self: QFileSystemModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQFileSystemModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QFileSystemModelremoveColumnsBase* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc onremoveColumns*(self: QFileSystemModel, slot: proc(super: QFileSystemModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_removeColumns(self: ptr cQFileSystemModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_removeColumns ".} =
  type Cb = proc(super: QFileSystemModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_removeColumns(QFileSystemModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_moveRows(self: QFileSystemModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =


  fQFileSystemModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QFileSystemModelmoveRowsBase* = proc(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: QFileSystemModel, slot: proc(super: QFileSystemModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_moveRows(self: ptr cQFileSystemModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QFileSystemModel_moveRows ".} =
  type Cb = proc(super: QFileSystemModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveRows(QFileSystemModel(h: self), sourceParent, sourceRow, count, destinationParent, destinationChild)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_moveColumns(self: QFileSystemModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =


  fQFileSystemModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QFileSystemModelmoveColumnsBase* = proc(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: QFileSystemModel, slot: proc(super: QFileSystemModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_moveColumns(self: ptr cQFileSystemModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QFileSystemModel_moveColumns ".} =
  type Cb = proc(super: QFileSystemModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveColumns(QFileSystemModel(h: self), sourceParent, sourceColumn, count, destinationParent, destinationChild)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_buddy(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQFileSystemModel_virtualbase_buddy(self.h, index.h))

type QFileSystemModelbuddyBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onbuddy*(self: QFileSystemModel, slot: proc(super: QFileSystemModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_buddy(self: ptr cQFileSystemModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QFileSystemModel_buddy ".} =
  type Cb = proc(super: QFileSystemModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_buddy(QFileSystemModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_match(self: QFileSystemModel, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex] =


  var v_ma = fQFileSystemModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

type QFileSystemModelmatchBase* = proc(start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
proc onmatch*(self: QFileSystemModel, slot: proc(super: QFileSystemModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_match(self: ptr cQFileSystemModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QFileSystemModel_match ".} =
  type Cb = proc(super: QFileSystemModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): auto =
    callVirtualBase_match(QFileSystemModel(h: self), start, role, value, hits, flags)
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
proc callVirtualBase_span(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize =


  gen_qsize.QSize(h: fQFileSystemModel_virtualbase_span(self.h, index.h))

type QFileSystemModelspanBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
proc onspan*(self: QFileSystemModel, slot: proc(super: QFileSystemModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_span(self: ptr cQFileSystemModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QFileSystemModel_span ".} =
  type Cb = proc(super: QFileSystemModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_span(QFileSystemModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_multiData(self: QFileSystemModel, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void =


  fQFileSystemModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

type QFileSystemModelmultiDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
proc onmultiData*(self: QFileSystemModel, slot: proc(super: QFileSystemModelmultiDataBase, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelmultiDataBase, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_multiData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_multiData(self: ptr cQFileSystemModel, slot: int, index: pointer, roleDataSpan: pointer): void {.exportc: "miqt_exec_callback_QFileSystemModel_multiData ".} =
  type Cb = proc(super: QFileSystemModelmultiDataBase, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): auto =
    callVirtualBase_multiData(QFileSystemModel(h: self), index, roleDataSpan)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemmodel.QModelRoleDataSpan(h: roleDataSpan)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_submit(self: QFileSystemModel, ): bool =


  fQFileSystemModel_virtualbase_submit(self.h)

type QFileSystemModelsubmitBase* = proc(): bool
proc onsubmit*(self: QFileSystemModel, slot: proc(super: QFileSystemModelsubmitBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelsubmitBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_submit(self: ptr cQFileSystemModel, slot: int): bool {.exportc: "miqt_exec_callback_QFileSystemModel_submit ".} =
  type Cb = proc(super: QFileSystemModelsubmitBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_submit(QFileSystemModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_revert(self: QFileSystemModel, ): void =


  fQFileSystemModel_virtualbase_revert(self.h)

type QFileSystemModelrevertBase* = proc(): void
proc onrevert*(self: QFileSystemModel, slot: proc(super: QFileSystemModelrevertBase): void) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelrevertBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_revert(self: ptr cQFileSystemModel, slot: int): void {.exportc: "miqt_exec_callback_QFileSystemModel_revert ".} =
  type Cb = proc(super: QFileSystemModelrevertBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_revert(QFileSystemModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_resetInternalData(self: QFileSystemModel, ): void =


  fQFileSystemModel_virtualbase_resetInternalData(self.h)

type QFileSystemModelresetInternalDataBase* = proc(): void
proc onresetInternalData*(self: QFileSystemModel, slot: proc(super: QFileSystemModelresetInternalDataBase): void) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelresetInternalDataBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_resetInternalData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_resetInternalData(self: ptr cQFileSystemModel, slot: int): void {.exportc: "miqt_exec_callback_QFileSystemModel_resetInternalData ".} =
  type Cb = proc(super: QFileSystemModelresetInternalDataBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_resetInternalData(QFileSystemModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_eventFilter(self: QFileSystemModel, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQFileSystemModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QFileSystemModeleventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QFileSystemModel, slot: proc(super: QFileSystemModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_eventFilter(self: ptr cQFileSystemModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QFileSystemModel_eventFilter ".} =
  type Cb = proc(super: QFileSystemModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QFileSystemModel(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QFileSystemModel, event: gen_qcoreevent.QChildEvent): void =


  fQFileSystemModel_virtualbase_childEvent(self.h, event.h)

type QFileSystemModelchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QFileSystemModel, slot: proc(super: QFileSystemModelchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_childEvent(self: ptr cQFileSystemModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileSystemModel_childEvent ".} =
  type Cb = proc(super: QFileSystemModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QFileSystemModel(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QFileSystemModel, event: gen_qcoreevent.QEvent): void =


  fQFileSystemModel_virtualbase_customEvent(self.h, event.h)

type QFileSystemModelcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QFileSystemModel, slot: proc(super: QFileSystemModelcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_customEvent(self: ptr cQFileSystemModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFileSystemModel_customEvent ".} =
  type Cb = proc(super: QFileSystemModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QFileSystemModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QFileSystemModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQFileSystemModel_virtualbase_connectNotify(self.h, signal.h)

type QFileSystemModelconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QFileSystemModel, slot: proc(super: QFileSystemModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_connectNotify(self: ptr cQFileSystemModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFileSystemModel_connectNotify ".} =
  type Cb = proc(super: QFileSystemModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QFileSystemModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QFileSystemModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQFileSystemModel_virtualbase_disconnectNotify(self.h, signal.h)

type QFileSystemModeldisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QFileSystemModel, slot: proc(super: QFileSystemModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFileSystemModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileSystemModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileSystemModel_disconnectNotify(self: ptr cQFileSystemModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFileSystemModel_disconnectNotify ".} =
  type Cb = proc(super: QFileSystemModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QFileSystemModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QFileSystemModel) =
  fcQFileSystemModel_delete(self.h)
