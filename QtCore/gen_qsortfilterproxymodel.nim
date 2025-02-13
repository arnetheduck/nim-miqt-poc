import Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")
{.compile("gen_qsortfilterproxymodel.cpp", cflags).}


import gen_qsortfilterproxymodel_types
export gen_qsortfilterproxymodel_types

import
  gen_qabstractitemmodel_types,
  gen_qabstractproxymodel,
  gen_qcoreevent_types,
  gen_qitemselectionmodel_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qregexp_types,
  gen_qregularexpression_types,
  gen_qsize_types,
  gen_qvariant_types,
  std/tables
export
  gen_qabstractitemmodel_types,
  gen_qabstractproxymodel,
  gen_qcoreevent_types,
  gen_qitemselectionmodel_types,
  gen_qmetaobject_types,
  gen_qmimedata_types,
  gen_qobject_types,
  gen_qobjectdefs_types,
  gen_qregexp_types,
  gen_qregularexpression_types,
  gen_qsize_types,
  gen_qvariant_types

type cQSortFilterProxyModel*{.exportc: "QSortFilterProxyModel", incompleteStruct.} = object

proc fcQSortFilterProxyModel_metaObject(self: pointer, ): pointer {.importc: "QSortFilterProxyModel_metaObject".}
proc fcQSortFilterProxyModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QSortFilterProxyModel_metacast".}
proc fcQSortFilterProxyModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSortFilterProxyModel_metacall".}
proc fcQSortFilterProxyModel_tr(s: cstring): struct_miqt_string {.importc: "QSortFilterProxyModel_tr".}
proc fcQSortFilterProxyModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QSortFilterProxyModel_trUtf8".}
proc fcQSortFilterProxyModel_setSourceModel(self: pointer, sourceModel: pointer): void {.importc: "QSortFilterProxyModel_setSourceModel".}
proc fcQSortFilterProxyModel_mapToSource(self: pointer, proxyIndex: pointer): pointer {.importc: "QSortFilterProxyModel_mapToSource".}
proc fcQSortFilterProxyModel_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.importc: "QSortFilterProxyModel_mapFromSource".}
proc fcQSortFilterProxyModel_mapSelectionToSource(self: pointer, proxySelection: pointer): pointer {.importc: "QSortFilterProxyModel_mapSelectionToSource".}
proc fcQSortFilterProxyModel_mapSelectionFromSource(self: pointer, sourceSelection: pointer): pointer {.importc: "QSortFilterProxyModel_mapSelectionFromSource".}
proc fcQSortFilterProxyModel_filterRegExp(self: pointer, ): pointer {.importc: "QSortFilterProxyModel_filterRegExp".}
proc fcQSortFilterProxyModel_filterRegularExpression(self: pointer, ): pointer {.importc: "QSortFilterProxyModel_filterRegularExpression".}
proc fcQSortFilterProxyModel_filterKeyColumn(self: pointer, ): cint {.importc: "QSortFilterProxyModel_filterKeyColumn".}
proc fcQSortFilterProxyModel_setFilterKeyColumn(self: pointer, column: cint): void {.importc: "QSortFilterProxyModel_setFilterKeyColumn".}
proc fcQSortFilterProxyModel_filterCaseSensitivity(self: pointer, ): cint {.importc: "QSortFilterProxyModel_filterCaseSensitivity".}
proc fcQSortFilterProxyModel_setFilterCaseSensitivity(self: pointer, cs: cint): void {.importc: "QSortFilterProxyModel_setFilterCaseSensitivity".}
proc fcQSortFilterProxyModel_sortCaseSensitivity(self: pointer, ): cint {.importc: "QSortFilterProxyModel_sortCaseSensitivity".}
proc fcQSortFilterProxyModel_setSortCaseSensitivity(self: pointer, cs: cint): void {.importc: "QSortFilterProxyModel_setSortCaseSensitivity".}
proc fcQSortFilterProxyModel_isSortLocaleAware(self: pointer, ): bool {.importc: "QSortFilterProxyModel_isSortLocaleAware".}
proc fcQSortFilterProxyModel_setSortLocaleAware(self: pointer, on: bool): void {.importc: "QSortFilterProxyModel_setSortLocaleAware".}
proc fcQSortFilterProxyModel_sortColumn(self: pointer, ): cint {.importc: "QSortFilterProxyModel_sortColumn".}
proc fcQSortFilterProxyModel_sortOrder(self: pointer, ): cint {.importc: "QSortFilterProxyModel_sortOrder".}
proc fcQSortFilterProxyModel_dynamicSortFilter(self: pointer, ): bool {.importc: "QSortFilterProxyModel_dynamicSortFilter".}
proc fcQSortFilterProxyModel_setDynamicSortFilter(self: pointer, enable: bool): void {.importc: "QSortFilterProxyModel_setDynamicSortFilter".}
proc fcQSortFilterProxyModel_sortRole(self: pointer, ): cint {.importc: "QSortFilterProxyModel_sortRole".}
proc fcQSortFilterProxyModel_setSortRole(self: pointer, role: cint): void {.importc: "QSortFilterProxyModel_setSortRole".}
proc fcQSortFilterProxyModel_filterRole(self: pointer, ): cint {.importc: "QSortFilterProxyModel_filterRole".}
proc fcQSortFilterProxyModel_setFilterRole(self: pointer, role: cint): void {.importc: "QSortFilterProxyModel_setFilterRole".}
proc fcQSortFilterProxyModel_isRecursiveFilteringEnabled(self: pointer, ): bool {.importc: "QSortFilterProxyModel_isRecursiveFilteringEnabled".}
proc fcQSortFilterProxyModel_setRecursiveFilteringEnabled(self: pointer, recursive: bool): void {.importc: "QSortFilterProxyModel_setRecursiveFilteringEnabled".}
proc fcQSortFilterProxyModel_setFilterRegExp(self: pointer, pattern: struct_miqt_string): void {.importc: "QSortFilterProxyModel_setFilterRegExp".}
proc fcQSortFilterProxyModel_setFilterRegExpWithRegExp(self: pointer, regExp: pointer): void {.importc: "QSortFilterProxyModel_setFilterRegExpWithRegExp".}
proc fcQSortFilterProxyModel_setFilterRegularExpression(self: pointer, pattern: struct_miqt_string): void {.importc: "QSortFilterProxyModel_setFilterRegularExpression".}
proc fcQSortFilterProxyModel_setFilterRegularExpressionWithRegularExpression(self: pointer, regularExpression: pointer): void {.importc: "QSortFilterProxyModel_setFilterRegularExpressionWithRegularExpression".}
proc fcQSortFilterProxyModel_setFilterWildcard(self: pointer, pattern: struct_miqt_string): void {.importc: "QSortFilterProxyModel_setFilterWildcard".}
proc fcQSortFilterProxyModel_setFilterFixedString(self: pointer, pattern: struct_miqt_string): void {.importc: "QSortFilterProxyModel_setFilterFixedString".}
proc fcQSortFilterProxyModel_clear(self: pointer, ): void {.importc: "QSortFilterProxyModel_clear".}
proc fcQSortFilterProxyModel_invalidate(self: pointer, ): void {.importc: "QSortFilterProxyModel_invalidate".}
proc fcQSortFilterProxyModel_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QSortFilterProxyModel_index".}
proc fcQSortFilterProxyModel_parent(self: pointer, child: pointer): pointer {.importc: "QSortFilterProxyModel_parent".}
proc fcQSortFilterProxyModel_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QSortFilterProxyModel_sibling".}
proc fcQSortFilterProxyModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QSortFilterProxyModel_rowCount".}
proc fcQSortFilterProxyModel_columnCount(self: pointer, parent: pointer): cint {.importc: "QSortFilterProxyModel_columnCount".}
proc fcQSortFilterProxyModel_hasChildren(self: pointer, parent: pointer): bool {.importc: "QSortFilterProxyModel_hasChildren".}
proc fcQSortFilterProxyModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QSortFilterProxyModel_data".}
proc fcQSortFilterProxyModel_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QSortFilterProxyModel_setData".}
proc fcQSortFilterProxyModel_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QSortFilterProxyModel_headerData".}
proc fcQSortFilterProxyModel_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QSortFilterProxyModel_setHeaderData".}
proc fcQSortFilterProxyModel_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QSortFilterProxyModel_mimeData".}
proc fcQSortFilterProxyModel_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_dropMimeData".}
proc fcQSortFilterProxyModel_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_insertRows".}
proc fcQSortFilterProxyModel_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_insertColumns".}
proc fcQSortFilterProxyModel_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_removeRows".}
proc fcQSortFilterProxyModel_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_removeColumns".}
proc fcQSortFilterProxyModel_fetchMore(self: pointer, parent: pointer): void {.importc: "QSortFilterProxyModel_fetchMore".}
proc fcQSortFilterProxyModel_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QSortFilterProxyModel_canFetchMore".}
proc fcQSortFilterProxyModel_flags(self: pointer, index: pointer): cint {.importc: "QSortFilterProxyModel_flags".}
proc fcQSortFilterProxyModel_buddy(self: pointer, index: pointer): pointer {.importc: "QSortFilterProxyModel_buddy".}
proc fcQSortFilterProxyModel_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QSortFilterProxyModel_match".}
proc fcQSortFilterProxyModel_span(self: pointer, index: pointer): pointer {.importc: "QSortFilterProxyModel_span".}
proc fcQSortFilterProxyModel_sort(self: pointer, column: cint, order: cint): void {.importc: "QSortFilterProxyModel_sort".}
proc fcQSortFilterProxyModel_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QSortFilterProxyModel_mimeTypes".}
proc fcQSortFilterProxyModel_supportedDropActions(self: pointer, ): cint {.importc: "QSortFilterProxyModel_supportedDropActions".}
proc fcQSortFilterProxyModel_dynamicSortFilterChanged(self: pointer, dynamicSortFilter: bool): void {.importc: "QSortFilterProxyModel_dynamicSortFilterChanged".}
proc fcQSortFilterProxyModel_connect_dynamicSortFilterChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_dynamicSortFilterChanged".}
proc fcQSortFilterProxyModel_filterCaseSensitivityChanged(self: pointer, filterCaseSensitivity: cint): void {.importc: "QSortFilterProxyModel_filterCaseSensitivityChanged".}
proc fcQSortFilterProxyModel_connect_filterCaseSensitivityChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_filterCaseSensitivityChanged".}
proc fcQSortFilterProxyModel_sortCaseSensitivityChanged(self: pointer, sortCaseSensitivity: cint): void {.importc: "QSortFilterProxyModel_sortCaseSensitivityChanged".}
proc fcQSortFilterProxyModel_connect_sortCaseSensitivityChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_sortCaseSensitivityChanged".}
proc fcQSortFilterProxyModel_sortLocaleAwareChanged(self: pointer, sortLocaleAware: bool): void {.importc: "QSortFilterProxyModel_sortLocaleAwareChanged".}
proc fcQSortFilterProxyModel_connect_sortLocaleAwareChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_sortLocaleAwareChanged".}
proc fcQSortFilterProxyModel_sortRoleChanged(self: pointer, sortRole: cint): void {.importc: "QSortFilterProxyModel_sortRoleChanged".}
proc fcQSortFilterProxyModel_connect_sortRoleChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_sortRoleChanged".}
proc fcQSortFilterProxyModel_filterRoleChanged(self: pointer, filterRole: cint): void {.importc: "QSortFilterProxyModel_filterRoleChanged".}
proc fcQSortFilterProxyModel_connect_filterRoleChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_filterRoleChanged".}
proc fcQSortFilterProxyModel_recursiveFilteringEnabledChanged(self: pointer, recursiveFilteringEnabled: bool): void {.importc: "QSortFilterProxyModel_recursiveFilteringEnabledChanged".}
proc fcQSortFilterProxyModel_connect_recursiveFilteringEnabledChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_recursiveFilteringEnabledChanged".}
proc fcQSortFilterProxyModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSortFilterProxyModel_tr2".}
proc fcQSortFilterProxyModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSortFilterProxyModel_tr3".}
proc fcQSortFilterProxyModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSortFilterProxyModel_trUtf82".}
proc fcQSortFilterProxyModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSortFilterProxyModel_trUtf83".}
type cQSortFilterProxyModelVTable = object
  destructor*: proc(vtbl: ptr cQSortFilterProxyModelVTable, self: ptr cQSortFilterProxyModel) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  setSourceModel*: proc(vtbl, self: pointer, sourceModel: pointer): void {.cdecl, raises: [], gcsafe.}
  mapToSource*: proc(vtbl, self: pointer, proxyIndex: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapFromSource*: proc(vtbl, self: pointer, sourceIndex: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapSelectionToSource*: proc(vtbl, self: pointer, proxySelection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  mapSelectionFromSource*: proc(vtbl, self: pointer, sourceSelection: pointer): pointer {.cdecl, raises: [], gcsafe.}
  filterAcceptsRow*: proc(vtbl, self: pointer, source_row: cint, source_parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  filterAcceptsColumn*: proc(vtbl, self: pointer, source_column: cint, source_parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  lessThan*: proc(vtbl, self: pointer, source_left: pointer, source_right: pointer): bool {.cdecl, raises: [], gcsafe.}
  index*: proc(vtbl, self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl, raises: [], gcsafe.}
  parent*: proc(vtbl, self: pointer, child: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sibling*: proc(vtbl, self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl, raises: [], gcsafe.}
  rowCount*: proc(vtbl, self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  columnCount*: proc(vtbl, self: pointer, parent: pointer): cint {.cdecl, raises: [], gcsafe.}
  hasChildren*: proc(vtbl, self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  data*: proc(vtbl, self: pointer, index: pointer, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setData*: proc(vtbl, self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  headerData*: proc(vtbl, self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl, raises: [], gcsafe.}
  setHeaderData*: proc(vtbl, self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl, raises: [], gcsafe.}
  mimeData*: proc(vtbl, self: pointer, indexes: struct_miqt_array): pointer {.cdecl, raises: [], gcsafe.}
  dropMimeData*: proc(vtbl, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertRows*: proc(vtbl, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  insertColumns*: proc(vtbl, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeRows*: proc(vtbl, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  removeColumns*: proc(vtbl, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  fetchMore*: proc(vtbl, self: pointer, parent: pointer): void {.cdecl, raises: [], gcsafe.}
  canFetchMore*: proc(vtbl, self: pointer, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  flags*: proc(vtbl, self: pointer, index: pointer): cint {.cdecl, raises: [], gcsafe.}
  buddy*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  match*: proc(vtbl, self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  span*: proc(vtbl, self: pointer, index: pointer): pointer {.cdecl, raises: [], gcsafe.}
  sort*: proc(vtbl, self: pointer, column: cint, order: cint): void {.cdecl, raises: [], gcsafe.}
  mimeTypes*: proc(vtbl, self: pointer, ): struct_miqt_array {.cdecl, raises: [], gcsafe.}
  supportedDropActions*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  submit*: proc(vtbl, self: pointer, ): bool {.cdecl, raises: [], gcsafe.}
  revert*: proc(vtbl, self: pointer, ): void {.cdecl, raises: [], gcsafe.}
  itemData*: proc(vtbl, self: pointer, index: pointer): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  setItemData*: proc(vtbl, self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl, raises: [], gcsafe.}
  canDropMimeData*: proc(vtbl, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl, raises: [], gcsafe.}
  supportedDragActions*: proc(vtbl, self: pointer, ): cint {.cdecl, raises: [], gcsafe.}
  moveRows*: proc(vtbl, self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  moveColumns*: proc(vtbl, self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl, raises: [], gcsafe.}
  roleNames*: proc(vtbl, self: pointer, ): struct_miqt_map {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQSortFilterProxyModel_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QSortFilterProxyModel_virtualbase_metaObject".}
proc fcQSortFilterProxyModel_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QSortFilterProxyModel_virtualbase_metacast".}
proc fcQSortFilterProxyModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSortFilterProxyModel_virtualbase_metacall".}
proc fcQSortFilterProxyModel_virtualbase_setSourceModel(self: pointer, sourceModel: pointer): void {.importc: "QSortFilterProxyModel_virtualbase_setSourceModel".}
proc fcQSortFilterProxyModel_virtualbase_mapToSource(self: pointer, proxyIndex: pointer): pointer {.importc: "QSortFilterProxyModel_virtualbase_mapToSource".}
proc fcQSortFilterProxyModel_virtualbase_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.importc: "QSortFilterProxyModel_virtualbase_mapFromSource".}
proc fcQSortFilterProxyModel_virtualbase_mapSelectionToSource(self: pointer, proxySelection: pointer): pointer {.importc: "QSortFilterProxyModel_virtualbase_mapSelectionToSource".}
proc fcQSortFilterProxyModel_virtualbase_mapSelectionFromSource(self: pointer, sourceSelection: pointer): pointer {.importc: "QSortFilterProxyModel_virtualbase_mapSelectionFromSource".}
proc fcQSortFilterProxyModel_virtualbase_filterAcceptsRow(self: pointer, source_row: cint, source_parent: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_filterAcceptsRow".}
proc fcQSortFilterProxyModel_virtualbase_filterAcceptsColumn(self: pointer, source_column: cint, source_parent: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_filterAcceptsColumn".}
proc fcQSortFilterProxyModel_virtualbase_lessThan(self: pointer, source_left: pointer, source_right: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_lessThan".}
proc fcQSortFilterProxyModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer {.importc: "QSortFilterProxyModel_virtualbase_index".}
proc fcQSortFilterProxyModel_virtualbase_parent(self: pointer, child: pointer): pointer {.importc: "QSortFilterProxyModel_virtualbase_parent".}
proc fcQSortFilterProxyModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer {.importc: "QSortFilterProxyModel_virtualbase_sibling".}
proc fcQSortFilterProxyModel_virtualbase_rowCount(self: pointer, parent: pointer): cint {.importc: "QSortFilterProxyModel_virtualbase_rowCount".}
proc fcQSortFilterProxyModel_virtualbase_columnCount(self: pointer, parent: pointer): cint {.importc: "QSortFilterProxyModel_virtualbase_columnCount".}
proc fcQSortFilterProxyModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_hasChildren".}
proc fcQSortFilterProxyModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QSortFilterProxyModel_virtualbase_data".}
proc fcQSortFilterProxyModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool {.importc: "QSortFilterProxyModel_virtualbase_setData".}
proc fcQSortFilterProxyModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer {.importc: "QSortFilterProxyModel_virtualbase_headerData".}
proc fcQSortFilterProxyModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.importc: "QSortFilterProxyModel_virtualbase_setHeaderData".}
proc fcQSortFilterProxyModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer {.importc: "QSortFilterProxyModel_virtualbase_mimeData".}
proc fcQSortFilterProxyModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_dropMimeData".}
proc fcQSortFilterProxyModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_insertRows".}
proc fcQSortFilterProxyModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_insertColumns".}
proc fcQSortFilterProxyModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_removeRows".}
proc fcQSortFilterProxyModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_removeColumns".}
proc fcQSortFilterProxyModel_virtualbase_fetchMore(self: pointer, parent: pointer): void {.importc: "QSortFilterProxyModel_virtualbase_fetchMore".}
proc fcQSortFilterProxyModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_canFetchMore".}
proc fcQSortFilterProxyModel_virtualbase_flags(self: pointer, index: pointer): cint {.importc: "QSortFilterProxyModel_virtualbase_flags".}
proc fcQSortFilterProxyModel_virtualbase_buddy(self: pointer, index: pointer): pointer {.importc: "QSortFilterProxyModel_virtualbase_buddy".}
proc fcQSortFilterProxyModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.importc: "QSortFilterProxyModel_virtualbase_match".}
proc fcQSortFilterProxyModel_virtualbase_span(self: pointer, index: pointer): pointer {.importc: "QSortFilterProxyModel_virtualbase_span".}
proc fcQSortFilterProxyModel_virtualbase_sort(self: pointer, column: cint, order: cint): void {.importc: "QSortFilterProxyModel_virtualbase_sort".}
proc fcQSortFilterProxyModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array {.importc: "QSortFilterProxyModel_virtualbase_mimeTypes".}
proc fcQSortFilterProxyModel_virtualbase_supportedDropActions(self: pointer, ): cint {.importc: "QSortFilterProxyModel_virtualbase_supportedDropActions".}
proc fcQSortFilterProxyModel_virtualbase_submit(self: pointer, ): bool {.importc: "QSortFilterProxyModel_virtualbase_submit".}
proc fcQSortFilterProxyModel_virtualbase_revert(self: pointer, ): void {.importc: "QSortFilterProxyModel_virtualbase_revert".}
proc fcQSortFilterProxyModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map {.importc: "QSortFilterProxyModel_virtualbase_itemData".}
proc fcQSortFilterProxyModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool {.importc: "QSortFilterProxyModel_virtualbase_setItemData".}
proc fcQSortFilterProxyModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_canDropMimeData".}
proc fcQSortFilterProxyModel_virtualbase_supportedDragActions(self: pointer, ): cint {.importc: "QSortFilterProxyModel_virtualbase_supportedDragActions".}
proc fcQSortFilterProxyModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QSortFilterProxyModel_virtualbase_moveRows".}
proc fcQSortFilterProxyModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.importc: "QSortFilterProxyModel_virtualbase_moveColumns".}
proc fcQSortFilterProxyModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map {.importc: "QSortFilterProxyModel_virtualbase_roleNames".}
proc fcQSortFilterProxyModel_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_event".}
proc fcQSortFilterProxyModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QSortFilterProxyModel_virtualbase_eventFilter".}
proc fcQSortFilterProxyModel_virtualbase_timerEvent(self: pointer, event: pointer): void {.importc: "QSortFilterProxyModel_virtualbase_timerEvent".}
proc fcQSortFilterProxyModel_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QSortFilterProxyModel_virtualbase_childEvent".}
proc fcQSortFilterProxyModel_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QSortFilterProxyModel_virtualbase_customEvent".}
proc fcQSortFilterProxyModel_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QSortFilterProxyModel_virtualbase_connectNotify".}
proc fcQSortFilterProxyModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QSortFilterProxyModel_virtualbase_disconnectNotify".}
proc fcQSortFilterProxyModel_new(vtbl: pointer, ): ptr cQSortFilterProxyModel {.importc: "QSortFilterProxyModel_new".}
proc fcQSortFilterProxyModel_new2(vtbl: pointer, parent: pointer): ptr cQSortFilterProxyModel {.importc: "QSortFilterProxyModel_new2".}
proc fcQSortFilterProxyModel_staticMetaObject(): pointer {.importc: "QSortFilterProxyModel_staticMetaObject".}
proc fcQSortFilterProxyModel_delete(self: pointer) {.importc: "QSortFilterProxyModel_delete".}

proc metaObject*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSortFilterProxyModel_metaObject(self.h))

proc metacast*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, param1: cstring): pointer =
  fcQSortFilterProxyModel_metacast(self.h, param1)

proc metacall*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQSortFilterProxyModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel, s: cstring): string =
  let v_ms = fcQSortFilterProxyModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel, s: cstring): string =
  let v_ms = fcQSortFilterProxyModel_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSourceModel*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQSortFilterProxyModel_setSourceModel(self.h, sourceModel.h)

proc mapToSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_mapToSource(self.h, proxyIndex.h))

proc mapFromSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_mapFromSource(self.h, sourceIndex.h))

proc mapSelectionToSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, proxySelection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQSortFilterProxyModel_mapSelectionToSource(self.h, proxySelection.h))

proc mapSelectionFromSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceSelection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQSortFilterProxyModel_mapSelectionFromSource(self.h, sourceSelection.h))

proc filterRegExp*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): gen_qregexp_types.QRegExp =
  gen_qregexp_types.QRegExp(h: fcQSortFilterProxyModel_filterRegExp(self.h))

proc filterRegularExpression*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): gen_qregularexpression_types.QRegularExpression =
  gen_qregularexpression_types.QRegularExpression(h: fcQSortFilterProxyModel_filterRegularExpression(self.h))

proc filterKeyColumn*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): cint =
  fcQSortFilterProxyModel_filterKeyColumn(self.h)

proc setFilterKeyColumn*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, column: cint): void =
  fcQSortFilterProxyModel_setFilterKeyColumn(self.h, column)

proc filterCaseSensitivity*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): cint =
  cint(fcQSortFilterProxyModel_filterCaseSensitivity(self.h))

proc setFilterCaseSensitivity*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, cs: cint): void =
  fcQSortFilterProxyModel_setFilterCaseSensitivity(self.h, cint(cs))

proc sortCaseSensitivity*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): cint =
  cint(fcQSortFilterProxyModel_sortCaseSensitivity(self.h))

proc setSortCaseSensitivity*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, cs: cint): void =
  fcQSortFilterProxyModel_setSortCaseSensitivity(self.h, cint(cs))

proc isSortLocaleAware*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): bool =
  fcQSortFilterProxyModel_isSortLocaleAware(self.h)

proc setSortLocaleAware*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, on: bool): void =
  fcQSortFilterProxyModel_setSortLocaleAware(self.h, on)

proc sortColumn*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): cint =
  fcQSortFilterProxyModel_sortColumn(self.h)

proc sortOrder*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): cint =
  cint(fcQSortFilterProxyModel_sortOrder(self.h))

proc dynamicSortFilter*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): bool =
  fcQSortFilterProxyModel_dynamicSortFilter(self.h)

proc setDynamicSortFilter*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, enable: bool): void =
  fcQSortFilterProxyModel_setDynamicSortFilter(self.h, enable)

proc sortRole*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): cint =
  fcQSortFilterProxyModel_sortRole(self.h)

proc setSortRole*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, role: cint): void =
  fcQSortFilterProxyModel_setSortRole(self.h, role)

proc filterRole*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): cint =
  fcQSortFilterProxyModel_filterRole(self.h)

proc setFilterRole*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, role: cint): void =
  fcQSortFilterProxyModel_setFilterRole(self.h, role)

proc isRecursiveFilteringEnabled*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): bool =
  fcQSortFilterProxyModel_isRecursiveFilteringEnabled(self.h)

proc setRecursiveFilteringEnabled*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, recursive: bool): void =
  fcQSortFilterProxyModel_setRecursiveFilteringEnabled(self.h, recursive)

proc setFilterRegExp*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, pattern: string): void =
  fcQSortFilterProxyModel_setFilterRegExp(self.h, struct_miqt_string(data: pattern, len: csize_t(len(pattern))))

proc setFilterRegExp*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, regExp: gen_qregexp_types.QRegExp): void =
  fcQSortFilterProxyModel_setFilterRegExpWithRegExp(self.h, regExp.h)

proc setFilterRegularExpression*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, pattern: string): void =
  fcQSortFilterProxyModel_setFilterRegularExpression(self.h, struct_miqt_string(data: pattern, len: csize_t(len(pattern))))

proc setFilterRegularExpression*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, regularExpression: gen_qregularexpression_types.QRegularExpression): void =
  fcQSortFilterProxyModel_setFilterRegularExpressionWithRegularExpression(self.h, regularExpression.h)

proc setFilterWildcard*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, pattern: string): void =
  fcQSortFilterProxyModel_setFilterWildcard(self.h, struct_miqt_string(data: pattern, len: csize_t(len(pattern))))

proc setFilterFixedString*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, pattern: string): void =
  fcQSortFilterProxyModel_setFilterFixedString(self.h, struct_miqt_string(data: pattern, len: csize_t(len(pattern))))

proc clear*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): void =
  fcQSortFilterProxyModel_clear(self.h)

proc invalidate*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): void =
  fcQSortFilterProxyModel_invalidate(self.h)

proc index*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_index(self.h, row, column, parent.h))

proc parent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_parent(self.h, child.h))

proc sibling*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_sibling(self.h, row, column, idx.h))

proc rowCount*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQSortFilterProxyModel_rowCount(self.h, parent.h)

proc columnCount*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQSortFilterProxyModel_columnCount(self.h, parent.h)

proc hasChildren*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_hasChildren(self.h, parent.h)

proc data*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSortFilterProxyModel_data(self.h, index.h, role))

proc setData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQSortFilterProxyModel_setData(self.h, index.h, value.h, role)

proc headerData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSortFilterProxyModel_headerData(self.h, section, cint(orientation), role))

proc setHeaderData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQSortFilterProxyModel_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc mimeData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQSortFilterProxyModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc dropMimeData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc insertRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_insertRows(self.h, row, count, parent.h)

proc insertColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_insertColumns(self.h, column, count, parent.h)

proc removeRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_removeRows(self.h, row, count, parent.h)

proc removeColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_removeColumns(self.h, column, count, parent.h)

proc fetchMore*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQSortFilterProxyModel_fetchMore(self.h, parent.h)

proc canFetchMore*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_canFetchMore(self.h, parent.h)

proc flags*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQSortFilterProxyModel_flags(self.h, index.h))

proc buddy*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_buddy(self.h, index.h))

proc match*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQSortFilterProxyModel_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc span*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSortFilterProxyModel_span(self.h, index.h))

proc sort*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, column: cint, order: cint): void =
  fcQSortFilterProxyModel_sort(self.h, column, cint(order))

proc mimeTypes*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): seq[string] =
  var v_ma = fcQSortFilterProxyModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc supportedDropActions*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): cint =
  cint(fcQSortFilterProxyModel_supportedDropActions(self.h))

proc dynamicSortFilterChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, dynamicSortFilter: bool): void =
  fcQSortFilterProxyModel_dynamicSortFilterChanged(self.h, dynamicSortFilter)

type QSortFilterProxyModeldynamicSortFilterChangedSlot* = proc(dynamicSortFilter: bool)
proc miqt_exec_callback_cQSortFilterProxyModel_dynamicSortFilterChanged(slot: int, dynamicSortFilter: bool) {.exportc: "miqt_exec_callback_QSortFilterProxyModel_dynamicSortFilterChanged".} =
  let nimfunc = cast[ptr QSortFilterProxyModeldynamicSortFilterChangedSlot](cast[pointer](slot))
  let slotval1 = dynamicSortFilter

  nimfunc[](slotval1)

proc miqt_exec_callback_cQSortFilterProxyModel_dynamicSortFilterChanged_release(slot: int) {.exportc: "miqt_exec_callback_QSortFilterProxyModel_dynamicSortFilterChanged_release".} =
  let nimfunc = cast[ref QSortFilterProxyModeldynamicSortFilterChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc ondynamicSortFilterChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModeldynamicSortFilterChangedSlot) =
  var tmp = new QSortFilterProxyModeldynamicSortFilterChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_connect_dynamicSortFilterChanged(self.h, cast[int](addr tmp[]))

proc filterCaseSensitivityChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, filterCaseSensitivity: cint): void =
  fcQSortFilterProxyModel_filterCaseSensitivityChanged(self.h, cint(filterCaseSensitivity))

type QSortFilterProxyModelfilterCaseSensitivityChangedSlot* = proc(filterCaseSensitivity: cint)
proc miqt_exec_callback_cQSortFilterProxyModel_filterCaseSensitivityChanged(slot: int, filterCaseSensitivity: cint) {.exportc: "miqt_exec_callback_QSortFilterProxyModel_filterCaseSensitivityChanged".} =
  let nimfunc = cast[ptr QSortFilterProxyModelfilterCaseSensitivityChangedSlot](cast[pointer](slot))
  let slotval1 = cint(filterCaseSensitivity)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQSortFilterProxyModel_filterCaseSensitivityChanged_release(slot: int) {.exportc: "miqt_exec_callback_QSortFilterProxyModel_filterCaseSensitivityChanged_release".} =
  let nimfunc = cast[ref QSortFilterProxyModelfilterCaseSensitivityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfilterCaseSensitivityChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelfilterCaseSensitivityChangedSlot) =
  var tmp = new QSortFilterProxyModelfilterCaseSensitivityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_connect_filterCaseSensitivityChanged(self.h, cast[int](addr tmp[]))

proc sortCaseSensitivityChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sortCaseSensitivity: cint): void =
  fcQSortFilterProxyModel_sortCaseSensitivityChanged(self.h, cint(sortCaseSensitivity))

type QSortFilterProxyModelsortCaseSensitivityChangedSlot* = proc(sortCaseSensitivity: cint)
proc miqt_exec_callback_cQSortFilterProxyModel_sortCaseSensitivityChanged(slot: int, sortCaseSensitivity: cint) {.exportc: "miqt_exec_callback_QSortFilterProxyModel_sortCaseSensitivityChanged".} =
  let nimfunc = cast[ptr QSortFilterProxyModelsortCaseSensitivityChangedSlot](cast[pointer](slot))
  let slotval1 = cint(sortCaseSensitivity)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQSortFilterProxyModel_sortCaseSensitivityChanged_release(slot: int) {.exportc: "miqt_exec_callback_QSortFilterProxyModel_sortCaseSensitivityChanged_release".} =
  let nimfunc = cast[ref QSortFilterProxyModelsortCaseSensitivityChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsortCaseSensitivityChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelsortCaseSensitivityChangedSlot) =
  var tmp = new QSortFilterProxyModelsortCaseSensitivityChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_connect_sortCaseSensitivityChanged(self.h, cast[int](addr tmp[]))

proc sortLocaleAwareChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sortLocaleAware: bool): void =
  fcQSortFilterProxyModel_sortLocaleAwareChanged(self.h, sortLocaleAware)

type QSortFilterProxyModelsortLocaleAwareChangedSlot* = proc(sortLocaleAware: bool)
proc miqt_exec_callback_cQSortFilterProxyModel_sortLocaleAwareChanged(slot: int, sortLocaleAware: bool) {.exportc: "miqt_exec_callback_QSortFilterProxyModel_sortLocaleAwareChanged".} =
  let nimfunc = cast[ptr QSortFilterProxyModelsortLocaleAwareChangedSlot](cast[pointer](slot))
  let slotval1 = sortLocaleAware

  nimfunc[](slotval1)

proc miqt_exec_callback_cQSortFilterProxyModel_sortLocaleAwareChanged_release(slot: int) {.exportc: "miqt_exec_callback_QSortFilterProxyModel_sortLocaleAwareChanged_release".} =
  let nimfunc = cast[ref QSortFilterProxyModelsortLocaleAwareChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsortLocaleAwareChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelsortLocaleAwareChangedSlot) =
  var tmp = new QSortFilterProxyModelsortLocaleAwareChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_connect_sortLocaleAwareChanged(self.h, cast[int](addr tmp[]))

proc sortRoleChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sortRole: cint): void =
  fcQSortFilterProxyModel_sortRoleChanged(self.h, sortRole)

type QSortFilterProxyModelsortRoleChangedSlot* = proc(sortRole: cint)
proc miqt_exec_callback_cQSortFilterProxyModel_sortRoleChanged(slot: int, sortRole: cint) {.exportc: "miqt_exec_callback_QSortFilterProxyModel_sortRoleChanged".} =
  let nimfunc = cast[ptr QSortFilterProxyModelsortRoleChangedSlot](cast[pointer](slot))
  let slotval1 = sortRole

  nimfunc[](slotval1)

proc miqt_exec_callback_cQSortFilterProxyModel_sortRoleChanged_release(slot: int) {.exportc: "miqt_exec_callback_QSortFilterProxyModel_sortRoleChanged_release".} =
  let nimfunc = cast[ref QSortFilterProxyModelsortRoleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsortRoleChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelsortRoleChangedSlot) =
  var tmp = new QSortFilterProxyModelsortRoleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_connect_sortRoleChanged(self.h, cast[int](addr tmp[]))

proc filterRoleChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, filterRole: cint): void =
  fcQSortFilterProxyModel_filterRoleChanged(self.h, filterRole)

type QSortFilterProxyModelfilterRoleChangedSlot* = proc(filterRole: cint)
proc miqt_exec_callback_cQSortFilterProxyModel_filterRoleChanged(slot: int, filterRole: cint) {.exportc: "miqt_exec_callback_QSortFilterProxyModel_filterRoleChanged".} =
  let nimfunc = cast[ptr QSortFilterProxyModelfilterRoleChangedSlot](cast[pointer](slot))
  let slotval1 = filterRole

  nimfunc[](slotval1)

proc miqt_exec_callback_cQSortFilterProxyModel_filterRoleChanged_release(slot: int) {.exportc: "miqt_exec_callback_QSortFilterProxyModel_filterRoleChanged_release".} =
  let nimfunc = cast[ref QSortFilterProxyModelfilterRoleChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onfilterRoleChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelfilterRoleChangedSlot) =
  var tmp = new QSortFilterProxyModelfilterRoleChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_connect_filterRoleChanged(self.h, cast[int](addr tmp[]))

proc recursiveFilteringEnabledChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, recursiveFilteringEnabled: bool): void =
  fcQSortFilterProxyModel_recursiveFilteringEnabledChanged(self.h, recursiveFilteringEnabled)

type QSortFilterProxyModelrecursiveFilteringEnabledChangedSlot* = proc(recursiveFilteringEnabled: bool)
proc miqt_exec_callback_cQSortFilterProxyModel_recursiveFilteringEnabledChanged(slot: int, recursiveFilteringEnabled: bool) {.exportc: "miqt_exec_callback_QSortFilterProxyModel_recursiveFilteringEnabledChanged".} =
  let nimfunc = cast[ptr QSortFilterProxyModelrecursiveFilteringEnabledChangedSlot](cast[pointer](slot))
  let slotval1 = recursiveFilteringEnabled

  nimfunc[](slotval1)

proc miqt_exec_callback_cQSortFilterProxyModel_recursiveFilteringEnabledChanged_release(slot: int) {.exportc: "miqt_exec_callback_QSortFilterProxyModel_recursiveFilteringEnabledChanged_release".} =
  let nimfunc = cast[ref QSortFilterProxyModelrecursiveFilteringEnabledChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrecursiveFilteringEnabledChanged*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, slot: QSortFilterProxyModelrecursiveFilteringEnabledChangedSlot) =
  var tmp = new QSortFilterProxyModelrecursiveFilteringEnabledChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_connect_recursiveFilteringEnabledChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel, s: cstring, c: cstring): string =
  let v_ms = fcQSortFilterProxyModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSortFilterProxyModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel, s: cstring, c: cstring): string =
  let v_ms = fcQSortFilterProxyModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSortFilterProxyModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QSortFilterProxyModelmetaObjectProc* = proc(self: QSortFilterProxyModel): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QSortFilterProxyModelmetacastProc* = proc(self: QSortFilterProxyModel, param1: cstring): pointer {.raises: [], gcsafe.}
type QSortFilterProxyModelmetacallProc* = proc(self: QSortFilterProxyModel, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QSortFilterProxyModelsetSourceModelProc* = proc(self: QSortFilterProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void {.raises: [], gcsafe.}
type QSortFilterProxyModelmapToSourceProc* = proc(self: QSortFilterProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSortFilterProxyModelmapFromSourceProc* = proc(self: QSortFilterProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSortFilterProxyModelmapSelectionToSourceProc* = proc(self: QSortFilterProxyModel, proxySelection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.raises: [], gcsafe.}
type QSortFilterProxyModelmapSelectionFromSourceProc* = proc(self: QSortFilterProxyModel, sourceSelection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection {.raises: [], gcsafe.}
type QSortFilterProxyModelfilterAcceptsRowProc* = proc(self: QSortFilterProxyModel, source_row: cint, source_parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelfilterAcceptsColumnProc* = proc(self: QSortFilterProxyModel, source_column: cint, source_parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModellessThanProc* = proc(self: QSortFilterProxyModel, source_left: gen_qabstractitemmodel_types.QModelIndex, source_right: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelindexProc* = proc(self: QSortFilterProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSortFilterProxyModelparentProc* = proc(self: QSortFilterProxyModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSortFilterProxyModelsiblingProc* = proc(self: QSortFilterProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSortFilterProxyModelrowCountProc* = proc(self: QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QSortFilterProxyModelcolumnCountProc* = proc(self: QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QSortFilterProxyModelhasChildrenProc* = proc(self: QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModeldataProc* = proc(self: QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QSortFilterProxyModelsetDataProc* = proc(self: QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelheaderDataProc* = proc(self: QSortFilterProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant {.raises: [], gcsafe.}
type QSortFilterProxyModelsetHeaderDataProc* = proc(self: QSortFilterProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelmimeDataProc* = proc(self: QSortFilterProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData {.raises: [], gcsafe.}
type QSortFilterProxyModeldropMimeDataProc* = proc(self: QSortFilterProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelinsertRowsProc* = proc(self: QSortFilterProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelinsertColumnsProc* = proc(self: QSortFilterProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelremoveRowsProc* = proc(self: QSortFilterProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelremoveColumnsProc* = proc(self: QSortFilterProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelfetchMoreProc* = proc(self: QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void {.raises: [], gcsafe.}
type QSortFilterProxyModelcanFetchMoreProc* = proc(self: QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelflagsProc* = proc(self: QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint {.raises: [], gcsafe.}
type QSortFilterProxyModelbuddyProc* = proc(self: QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex {.raises: [], gcsafe.}
type QSortFilterProxyModelmatchProc* = proc(self: QSortFilterProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] {.raises: [], gcsafe.}
type QSortFilterProxyModelspanProc* = proc(self: QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize {.raises: [], gcsafe.}
type QSortFilterProxyModelsortProc* = proc(self: QSortFilterProxyModel, column: cint, order: cint): void {.raises: [], gcsafe.}
type QSortFilterProxyModelmimeTypesProc* = proc(self: QSortFilterProxyModel): seq[string] {.raises: [], gcsafe.}
type QSortFilterProxyModelsupportedDropActionsProc* = proc(self: QSortFilterProxyModel): cint {.raises: [], gcsafe.}
type QSortFilterProxyModelsubmitProc* = proc(self: QSortFilterProxyModel): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelrevertProc* = proc(self: QSortFilterProxyModel): void {.raises: [], gcsafe.}
type QSortFilterProxyModelitemDataProc* = proc(self: QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] {.raises: [], gcsafe.}
type QSortFilterProxyModelsetItemDataProc* = proc(self: QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelcanDropMimeDataProc* = proc(self: QSortFilterProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelsupportedDragActionsProc* = proc(self: QSortFilterProxyModel): cint {.raises: [], gcsafe.}
type QSortFilterProxyModelmoveRowsProc* = proc(self: QSortFilterProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelmoveColumnsProc* = proc(self: QSortFilterProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool {.raises: [], gcsafe.}
type QSortFilterProxyModelroleNamesProc* = proc(self: QSortFilterProxyModel): Table[cint,seq[byte]] {.raises: [], gcsafe.}
type QSortFilterProxyModeleventProc* = proc(self: QSortFilterProxyModel, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSortFilterProxyModeleventFilterProc* = proc(self: QSortFilterProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QSortFilterProxyModeltimerEventProc* = proc(self: QSortFilterProxyModel, event: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QSortFilterProxyModelchildEventProc* = proc(self: QSortFilterProxyModel, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QSortFilterProxyModelcustomEventProc* = proc(self: QSortFilterProxyModel, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QSortFilterProxyModelconnectNotifyProc* = proc(self: QSortFilterProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSortFilterProxyModeldisconnectNotifyProc* = proc(self: QSortFilterProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QSortFilterProxyModelVTable* = object
  vtbl: cQSortFilterProxyModelVTable
  metaObject*: QSortFilterProxyModelmetaObjectProc
  metacast*: QSortFilterProxyModelmetacastProc
  metacall*: QSortFilterProxyModelmetacallProc
  setSourceModel*: QSortFilterProxyModelsetSourceModelProc
  mapToSource*: QSortFilterProxyModelmapToSourceProc
  mapFromSource*: QSortFilterProxyModelmapFromSourceProc
  mapSelectionToSource*: QSortFilterProxyModelmapSelectionToSourceProc
  mapSelectionFromSource*: QSortFilterProxyModelmapSelectionFromSourceProc
  filterAcceptsRow*: QSortFilterProxyModelfilterAcceptsRowProc
  filterAcceptsColumn*: QSortFilterProxyModelfilterAcceptsColumnProc
  lessThan*: QSortFilterProxyModellessThanProc
  index*: QSortFilterProxyModelindexProc
  parent*: QSortFilterProxyModelparentProc
  sibling*: QSortFilterProxyModelsiblingProc
  rowCount*: QSortFilterProxyModelrowCountProc
  columnCount*: QSortFilterProxyModelcolumnCountProc
  hasChildren*: QSortFilterProxyModelhasChildrenProc
  data*: QSortFilterProxyModeldataProc
  setData*: QSortFilterProxyModelsetDataProc
  headerData*: QSortFilterProxyModelheaderDataProc
  setHeaderData*: QSortFilterProxyModelsetHeaderDataProc
  mimeData*: QSortFilterProxyModelmimeDataProc
  dropMimeData*: QSortFilterProxyModeldropMimeDataProc
  insertRows*: QSortFilterProxyModelinsertRowsProc
  insertColumns*: QSortFilterProxyModelinsertColumnsProc
  removeRows*: QSortFilterProxyModelremoveRowsProc
  removeColumns*: QSortFilterProxyModelremoveColumnsProc
  fetchMore*: QSortFilterProxyModelfetchMoreProc
  canFetchMore*: QSortFilterProxyModelcanFetchMoreProc
  flags*: QSortFilterProxyModelflagsProc
  buddy*: QSortFilterProxyModelbuddyProc
  match*: QSortFilterProxyModelmatchProc
  span*: QSortFilterProxyModelspanProc
  sort*: QSortFilterProxyModelsortProc
  mimeTypes*: QSortFilterProxyModelmimeTypesProc
  supportedDropActions*: QSortFilterProxyModelsupportedDropActionsProc
  submit*: QSortFilterProxyModelsubmitProc
  revert*: QSortFilterProxyModelrevertProc
  itemData*: QSortFilterProxyModelitemDataProc
  setItemData*: QSortFilterProxyModelsetItemDataProc
  canDropMimeData*: QSortFilterProxyModelcanDropMimeDataProc
  supportedDragActions*: QSortFilterProxyModelsupportedDragActionsProc
  moveRows*: QSortFilterProxyModelmoveRowsProc
  moveColumns*: QSortFilterProxyModelmoveColumnsProc
  roleNames*: QSortFilterProxyModelroleNamesProc
  event*: QSortFilterProxyModeleventProc
  eventFilter*: QSortFilterProxyModeleventFilterProc
  timerEvent*: QSortFilterProxyModeltimerEventProc
  childEvent*: QSortFilterProxyModelchildEventProc
  customEvent*: QSortFilterProxyModelcustomEventProc
  connectNotify*: QSortFilterProxyModelconnectNotifyProc
  disconnectNotify*: QSortFilterProxyModeldisconnectNotifyProc
proc QSortFilterProxyModelmetaObject*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSortFilterProxyModel_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQSortFilterProxyModel_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QSortFilterProxyModelmetacast*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, param1: cstring): pointer =
  fcQSortFilterProxyModel_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQSortFilterProxyModel_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QSortFilterProxyModelmetacall*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, param1: cint, param2: cint, param3: pointer): cint =
  fcQSortFilterProxyModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQSortFilterProxyModel_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSortFilterProxyModelsetSourceModel*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceModel: gen_qabstractitemmodel_types.QAbstractItemModel): void =
  fcQSortFilterProxyModel_virtualbase_setSourceModel(self.h, sourceModel.h)

proc miqt_exec_callback_cQSortFilterProxyModel_setSourceModel(vtbl: pointer, self: pointer, sourceModel: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QAbstractItemModel(h: sourceModel)
  vtbl[].setSourceModel(self, slotval1)

proc QSortFilterProxyModelmapToSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, proxyIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_virtualbase_mapToSource(self.h, proxyIndex.h))

proc miqt_exec_callback_cQSortFilterProxyModel_mapToSource(vtbl: pointer, self: pointer, proxyIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: proxyIndex)
  let virtualReturn = vtbl[].mapToSource(self, slotval1)
  virtualReturn.h

proc QSortFilterProxyModelmapFromSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceIndex: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_virtualbase_mapFromSource(self.h, sourceIndex.h))

proc miqt_exec_callback_cQSortFilterProxyModel_mapFromSource(vtbl: pointer, self: pointer, sourceIndex: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceIndex)
  let virtualReturn = vtbl[].mapFromSource(self, slotval1)
  virtualReturn.h

proc QSortFilterProxyModelmapSelectionToSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, proxySelection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQSortFilterProxyModel_virtualbase_mapSelectionToSource(self.h, proxySelection.h))

proc miqt_exec_callback_cQSortFilterProxyModel_mapSelectionToSource(vtbl: pointer, self: pointer, proxySelection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: proxySelection)
  let virtualReturn = vtbl[].mapSelectionToSource(self, slotval1)
  virtualReturn.h

proc QSortFilterProxyModelmapSelectionFromSource*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceSelection: gen_qitemselectionmodel_types.QItemSelection): gen_qitemselectionmodel_types.QItemSelection =
  gen_qitemselectionmodel_types.QItemSelection(h: fcQSortFilterProxyModel_virtualbase_mapSelectionFromSource(self.h, sourceSelection.h))

proc miqt_exec_callback_cQSortFilterProxyModel_mapSelectionFromSource(vtbl: pointer, self: pointer, sourceSelection: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qitemselectionmodel_types.QItemSelection(h: sourceSelection)
  let virtualReturn = vtbl[].mapSelectionFromSource(self, slotval1)
  virtualReturn.h

proc QSortFilterProxyModelfilterAcceptsRow*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, source_row: cint, source_parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_filterAcceptsRow(self.h, source_row, source_parent.h)

proc miqt_exec_callback_cQSortFilterProxyModel_filterAcceptsRow(vtbl: pointer, self: pointer, source_row: cint, source_parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = source_row
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: source_parent)
  let virtualReturn = vtbl[].filterAcceptsRow(self, slotval1, slotval2)
  virtualReturn

proc QSortFilterProxyModelfilterAcceptsColumn*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, source_column: cint, source_parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_filterAcceptsColumn(self.h, source_column, source_parent.h)

proc miqt_exec_callback_cQSortFilterProxyModel_filterAcceptsColumn(vtbl: pointer, self: pointer, source_column: cint, source_parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = source_column
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: source_parent)
  let virtualReturn = vtbl[].filterAcceptsColumn(self, slotval1, slotval2)
  virtualReturn

proc QSortFilterProxyModellessThan*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, source_left: gen_qabstractitemmodel_types.QModelIndex, source_right: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_lessThan(self.h, source_left.h, source_right.h)

proc miqt_exec_callback_cQSortFilterProxyModel_lessThan(vtbl: pointer, self: pointer, source_left: pointer, source_right: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: source_left)
  let slotval2 = gen_qabstractitemmodel_types.QModelIndex(h: source_right)
  let virtualReturn = vtbl[].lessThan(self, slotval1, slotval2)
  virtualReturn

proc QSortFilterProxyModelindex*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_virtualbase_index(self.h, row, column, parent.h))

proc miqt_exec_callback_cQSortFilterProxyModel_index(vtbl: pointer, self: pointer, row: cint, column: cint, parent: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let virtualReturn = vtbl[].index(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QSortFilterProxyModelparent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, child: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_virtualbase_parent(self.h, child.h))

proc miqt_exec_callback_cQSortFilterProxyModel_parent(vtbl: pointer, self: pointer, child: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: child)
  let virtualReturn = vtbl[].parent(self, slotval1)
  virtualReturn.h

proc QSortFilterProxyModelsibling*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_virtualbase_sibling(self.h, row, column, idx.h))

proc miqt_exec_callback_cQSortFilterProxyModel_sibling(vtbl: pointer, self: pointer, row: cint, column: cint, idx: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = row
  let slotval2 = column
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: idx)
  let virtualReturn = vtbl[].sibling(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QSortFilterProxyModelrowCount*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQSortFilterProxyModel_virtualbase_rowCount(self.h, parent.h)

proc miqt_exec_callback_cQSortFilterProxyModel_rowCount(vtbl: pointer, self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let virtualReturn = vtbl[].rowCount(self, slotval1)
  virtualReturn

proc QSortFilterProxyModelcolumnCount*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): cint =
  fcQSortFilterProxyModel_virtualbase_columnCount(self.h, parent.h)

proc miqt_exec_callback_cQSortFilterProxyModel_columnCount(vtbl: pointer, self: pointer, parent: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let virtualReturn = vtbl[].columnCount(self, slotval1)
  virtualReturn

proc QSortFilterProxyModelhasChildren*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_hasChildren(self.h, parent.h)

proc miqt_exec_callback_cQSortFilterProxyModel_hasChildren(vtbl: pointer, self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let virtualReturn = vtbl[].hasChildren(self, slotval1)
  virtualReturn

proc QSortFilterProxyModeldata*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSortFilterProxyModel_virtualbase_data(self.h, index.h, role))

proc miqt_exec_callback_cQSortFilterProxyModel_data(vtbl: pointer, self: pointer, index: pointer, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = role
  let virtualReturn = vtbl[].data(self, slotval1, slotval2)
  virtualReturn.h

proc QSortFilterProxyModelsetData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQSortFilterProxyModel_virtualbase_setData(self.h, index.h, value.h, role)

proc miqt_exec_callback_cQSortFilterProxyModel_setData(vtbl: pointer, self: pointer, index: pointer, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let slotval2 = gen_qvariant_types.QVariant(h: value)
  let slotval3 = role
  let virtualReturn = vtbl[].setData(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSortFilterProxyModelheaderData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, section: cint, orientation: cint, role: cint): gen_qvariant_types.QVariant =
  gen_qvariant_types.QVariant(h: fcQSortFilterProxyModel_virtualbase_headerData(self.h, section, cint(orientation), role))

proc miqt_exec_callback_cQSortFilterProxyModel_headerData(vtbl: pointer, self: pointer, section: cint, orientation: cint, role: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = role
  let virtualReturn = vtbl[].headerData(self, slotval1, slotval2, slotval3)
  virtualReturn.h

proc QSortFilterProxyModelsetHeaderData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, section: cint, orientation: cint, value: gen_qvariant_types.QVariant, role: cint): bool =
  fcQSortFilterProxyModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc miqt_exec_callback_cQSortFilterProxyModel_setHeaderData(vtbl: pointer, self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = section
  let slotval2 = cint(orientation)
  let slotval3 = gen_qvariant_types.QVariant(h: value)
  let slotval4 = role
  let virtualReturn = vtbl[].setHeaderData(self, slotval1, slotval2, slotval3, slotval4)
  virtualReturn

proc QSortFilterProxyModelmimeData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, indexes: seq[gen_qabstractitemmodel_types.QModelIndex]): gen_qmimedata_types.QMimeData =
  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata_types.QMimeData(h: fcQSortFilterProxyModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc miqt_exec_callback_cQSortFilterProxyModel_mimeData(vtbl: pointer, self: pointer, indexes: struct_miqt_array): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret
  let virtualReturn = vtbl[].mimeData(self, slotval1)
  virtualReturn.h

proc QSortFilterProxyModeldropMimeData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc miqt_exec_callback_cQSortFilterProxyModel_dropMimeData(vtbl: pointer, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let virtualReturn = vtbl[].dropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QSortFilterProxyModelinsertRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_insertRows(self.h, row, count, parent.h)

proc miqt_exec_callback_cQSortFilterProxyModel_insertRows(vtbl: pointer, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let virtualReturn = vtbl[].insertRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSortFilterProxyModelinsertColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_insertColumns(self.h, column, count, parent.h)

proc miqt_exec_callback_cQSortFilterProxyModel_insertColumns(vtbl: pointer, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let virtualReturn = vtbl[].insertColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSortFilterProxyModelremoveRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_removeRows(self.h, row, count, parent.h)

proc miqt_exec_callback_cQSortFilterProxyModel_removeRows(vtbl: pointer, self: pointer, row: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = row
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let virtualReturn = vtbl[].removeRows(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSortFilterProxyModelremoveColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_removeColumns(self.h, column, count, parent.h)

proc miqt_exec_callback_cQSortFilterProxyModel_removeColumns(vtbl: pointer, self: pointer, column: cint, count: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = column
  let slotval2 = count
  let slotval3 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let virtualReturn = vtbl[].removeColumns(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QSortFilterProxyModelfetchMore*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): void =
  fcQSortFilterProxyModel_virtualbase_fetchMore(self.h, parent.h)

proc miqt_exec_callback_cQSortFilterProxyModel_fetchMore(vtbl: pointer, self: pointer, parent: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  vtbl[].fetchMore(self, slotval1)

proc QSortFilterProxyModelcanFetchMore*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_canFetchMore(self.h, parent.h)

proc miqt_exec_callback_cQSortFilterProxyModel_canFetchMore(vtbl: pointer, self: pointer, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let virtualReturn = vtbl[].canFetchMore(self, slotval1)
  virtualReturn

proc QSortFilterProxyModelflags*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): cint =
  cint(fcQSortFilterProxyModel_virtualbase_flags(self.h, index.h))

proc miqt_exec_callback_cQSortFilterProxyModel_flags(vtbl: pointer, self: pointer, index: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let virtualReturn = vtbl[].flags(self, slotval1)
  cint(virtualReturn)

proc QSortFilterProxyModelbuddy*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qabstractitemmodel_types.QModelIndex =
  gen_qabstractitemmodel_types.QModelIndex(h: fcQSortFilterProxyModel_virtualbase_buddy(self.h, index.h))

proc miqt_exec_callback_cQSortFilterProxyModel_buddy(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let virtualReturn = vtbl[].buddy(self, slotval1)
  virtualReturn.h

proc QSortFilterProxyModelmatch*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, start: gen_qabstractitemmodel_types.QModelIndex, role: cint, value: gen_qvariant_types.QVariant, hits: cint, flags: cint): seq[gen_qabstractitemmodel_types.QModelIndex] =
  var v_ma = fcQSortFilterProxyModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel_types.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel_types.QModelIndex(h: v_outCast[i])
  vx_ret

proc miqt_exec_callback_cQSortFilterProxyModel_match(vtbl: pointer, self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: start)
  let slotval2 = role
  let slotval3 = gen_qvariant_types.QVariant(h: value)
  let slotval4 = hits
  let slotval5 = cint(flags)
  let virtualReturn = vtbl[].match(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QSortFilterProxyModelspan*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): gen_qsize_types.QSize =
  gen_qsize_types.QSize(h: fcQSortFilterProxyModel_virtualbase_span(self.h, index.h))

proc miqt_exec_callback_cQSortFilterProxyModel_span(vtbl: pointer, self: pointer, index: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let virtualReturn = vtbl[].span(self, slotval1)
  virtualReturn.h

proc QSortFilterProxyModelsort*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, column: cint, order: cint): void =
  fcQSortFilterProxyModel_virtualbase_sort(self.h, column, cint(order))

proc miqt_exec_callback_cQSortFilterProxyModel_sort(vtbl: pointer, self: pointer, column: cint, order: cint): void {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = column
  let slotval2 = cint(order)
  vtbl[].sort(self, slotval1, slotval2)

proc QSortFilterProxyModelmimeTypes*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): seq[string] =
  var v_ma = fcQSortFilterProxyModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc miqt_exec_callback_cQSortFilterProxyModel_mimeTypes(vtbl: pointer, self: pointer): struct_miqt_array {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let virtualReturn = vtbl[].mimeTypes(self)
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))

  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))

proc QSortFilterProxyModelsupportedDropActions*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): cint =
  cint(fcQSortFilterProxyModel_virtualbase_supportedDropActions(self.h))

proc miqt_exec_callback_cQSortFilterProxyModel_supportedDropActions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let virtualReturn = vtbl[].supportedDropActions(self)
  cint(virtualReturn)

proc QSortFilterProxyModelsubmit*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): bool =
  fcQSortFilterProxyModel_virtualbase_submit(self.h)

proc miqt_exec_callback_cQSortFilterProxyModel_submit(vtbl: pointer, self: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let virtualReturn = vtbl[].submit(self)
  virtualReturn

proc QSortFilterProxyModelrevert*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): void =
  fcQSortFilterProxyModel_virtualbase_revert(self.h)

proc miqt_exec_callback_cQSortFilterProxyModel_revert(vtbl: pointer, self: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  vtbl[].revert(self)

proc QSortFilterProxyModelitemData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex): Table[cint,gen_qvariant_types.QVariant] =
  var v_mm = fcQSortFilterProxyModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant_types.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant_types.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

proc miqt_exec_callback_cQSortFilterProxyModel_itemData(vtbl: pointer, self: pointer, index: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  let virtualReturn = vtbl[].itemData(self, slotval1)
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[pointer](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = virtualReturn_v.h
    virtualReturn_ctr += 1

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc QSortFilterProxyModelsetItemData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, index: gen_qabstractitemmodel_types.QModelIndex, roles: Table[cint,gen_qvariant_types.QVariant]): bool =
  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1

  fcQSortFilterProxyModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

proc miqt_exec_callback_cQSortFilterProxyModel_setItemData(vtbl: pointer, self: pointer, index: pointer, roles: struct_miqt_map): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: index)
  var vroles_mm = roles
  var vrolesx_ret: Table[cint, gen_qvariant_types.QVariant]
  var vroles_Keys = cast[ptr UncheckedArray[cint]](vroles_mm.keys)
  var vroles_Values = cast[ptr UncheckedArray[pointer]](vroles_mm.values)
  for i in 0..<vroles_mm.len:
    var vroles_entry_Key = vroles_Keys[i]

    var vroles_entry_Value = gen_qvariant_types.QVariant(h: vroles_Values[i])

    vrolesx_ret[vroles_entry_Key] = vroles_entry_Value
  let slotval2 = vrolesx_ret
  let virtualReturn = vtbl[].setItemData(self, slotval1, slotval2)
  virtualReturn

proc QSortFilterProxyModelcanDropMimeData*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, data: gen_qmimedata_types.QMimeData, action: cint, row: cint, column: cint, parent: gen_qabstractitemmodel_types.QModelIndex): bool =
  fcQSortFilterProxyModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc miqt_exec_callback_cQSortFilterProxyModel_canDropMimeData(vtbl: pointer, self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qmimedata_types.QMimeData(h: data)
  let slotval2 = cint(action)
  let slotval3 = row
  let slotval4 = column
  let slotval5 = gen_qabstractitemmodel_types.QModelIndex(h: parent)
  let virtualReturn = vtbl[].canDropMimeData(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QSortFilterProxyModelsupportedDragActions*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): cint =
  cint(fcQSortFilterProxyModel_virtualbase_supportedDragActions(self.h))

proc miqt_exec_callback_cQSortFilterProxyModel_supportedDragActions(vtbl: pointer, self: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let virtualReturn = vtbl[].supportedDragActions(self)
  cint(virtualReturn)

proc QSortFilterProxyModelmoveRows*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQSortFilterProxyModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

proc miqt_exec_callback_cQSortFilterProxyModel_moveRows(vtbl: pointer, self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)
  let slotval2 = sourceRow
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)
  let slotval5 = destinationChild
  let virtualReturn = vtbl[].moveRows(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QSortFilterProxyModelmoveColumns*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, sourceParent: gen_qabstractitemmodel_types.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel_types.QModelIndex, destinationChild: cint): bool =
  fcQSortFilterProxyModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

proc miqt_exec_callback_cQSortFilterProxyModel_moveColumns(vtbl: pointer, self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qabstractitemmodel_types.QModelIndex(h: sourceParent)
  let slotval2 = sourceColumn
  let slotval3 = count
  let slotval4 = gen_qabstractitemmodel_types.QModelIndex(h: destinationParent)
  let slotval5 = destinationChild
  let virtualReturn = vtbl[].moveColumns(self, slotval1, slotval2, slotval3, slotval4, slotval5)
  virtualReturn

proc QSortFilterProxyModelroleNames*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, ): Table[cint,seq[byte]] =
  var v_mm = fcQSortFilterProxyModel_virtualbase_roleNames(self.h)
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

proc miqt_exec_callback_cQSortFilterProxyModel_roleNames(vtbl: pointer, self: pointer): struct_miqt_map {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let virtualReturn = vtbl[].roleNames(self)
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1

  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)

proc QSortFilterProxyModelevent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, event: gen_qcoreevent_types.QEvent): bool =
  fcQSortFilterProxyModel_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQSortFilterProxyModel_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QSortFilterProxyModeleventFilter*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQSortFilterProxyModel_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQSortFilterProxyModel_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QSortFilterProxyModeltimerEvent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, event: gen_qcoreevent_types.QTimerEvent): void =
  fcQSortFilterProxyModel_virtualbase_timerEvent(self.h, event.h)

proc miqt_exec_callback_cQSortFilterProxyModel_timerEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)
  vtbl[].timerEvent(self, slotval1)

proc QSortFilterProxyModelchildEvent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, event: gen_qcoreevent_types.QChildEvent): void =
  fcQSortFilterProxyModel_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQSortFilterProxyModel_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QSortFilterProxyModelcustomEvent*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, event: gen_qcoreevent_types.QEvent): void =
  fcQSortFilterProxyModel_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQSortFilterProxyModel_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QSortFilterProxyModelconnectNotify*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSortFilterProxyModel_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSortFilterProxyModel_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QSortFilterProxyModeldisconnectNotify*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQSortFilterProxyModel_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQSortFilterProxyModel_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QSortFilterProxyModelVTable](vtbl)
  let self = QSortFilterProxyModel(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc create*(T: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel,
    vtbl: ref QSortFilterProxyModelVTable = nil): gen_qsortfilterproxymodel_types.QSortFilterProxyModel =
  let vtbl = if vtbl == nil: new QSortFilterProxyModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSortFilterProxyModelVTable, _: ptr cQSortFilterProxyModel) {.cdecl.} =
    let vtbl = cast[ref QSortFilterProxyModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSortFilterProxyModel_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSortFilterProxyModel_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSortFilterProxyModel_metacall
  if not isNil(vtbl.setSourceModel):
    vtbl[].vtbl.setSourceModel = miqt_exec_callback_cQSortFilterProxyModel_setSourceModel
  if not isNil(vtbl.mapToSource):
    vtbl[].vtbl.mapToSource = miqt_exec_callback_cQSortFilterProxyModel_mapToSource
  if not isNil(vtbl.mapFromSource):
    vtbl[].vtbl.mapFromSource = miqt_exec_callback_cQSortFilterProxyModel_mapFromSource
  if not isNil(vtbl.mapSelectionToSource):
    vtbl[].vtbl.mapSelectionToSource = miqt_exec_callback_cQSortFilterProxyModel_mapSelectionToSource
  if not isNil(vtbl.mapSelectionFromSource):
    vtbl[].vtbl.mapSelectionFromSource = miqt_exec_callback_cQSortFilterProxyModel_mapSelectionFromSource
  if not isNil(vtbl.filterAcceptsRow):
    vtbl[].vtbl.filterAcceptsRow = miqt_exec_callback_cQSortFilterProxyModel_filterAcceptsRow
  if not isNil(vtbl.filterAcceptsColumn):
    vtbl[].vtbl.filterAcceptsColumn = miqt_exec_callback_cQSortFilterProxyModel_filterAcceptsColumn
  if not isNil(vtbl.lessThan):
    vtbl[].vtbl.lessThan = miqt_exec_callback_cQSortFilterProxyModel_lessThan
  if not isNil(vtbl.index):
    vtbl[].vtbl.index = miqt_exec_callback_cQSortFilterProxyModel_index
  if not isNil(vtbl.parent):
    vtbl[].vtbl.parent = miqt_exec_callback_cQSortFilterProxyModel_parent
  if not isNil(vtbl.sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQSortFilterProxyModel_sibling
  if not isNil(vtbl.rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQSortFilterProxyModel_rowCount
  if not isNil(vtbl.columnCount):
    vtbl[].vtbl.columnCount = miqt_exec_callback_cQSortFilterProxyModel_columnCount
  if not isNil(vtbl.hasChildren):
    vtbl[].vtbl.hasChildren = miqt_exec_callback_cQSortFilterProxyModel_hasChildren
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQSortFilterProxyModel_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQSortFilterProxyModel_setData
  if not isNil(vtbl.headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQSortFilterProxyModel_headerData
  if not isNil(vtbl.setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQSortFilterProxyModel_setHeaderData
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQSortFilterProxyModel_mimeData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQSortFilterProxyModel_dropMimeData
  if not isNil(vtbl.insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQSortFilterProxyModel_insertRows
  if not isNil(vtbl.insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQSortFilterProxyModel_insertColumns
  if not isNil(vtbl.removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQSortFilterProxyModel_removeRows
  if not isNil(vtbl.removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQSortFilterProxyModel_removeColumns
  if not isNil(vtbl.fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQSortFilterProxyModel_fetchMore
  if not isNil(vtbl.canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQSortFilterProxyModel_canFetchMore
  if not isNil(vtbl.flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQSortFilterProxyModel_flags
  if not isNil(vtbl.buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQSortFilterProxyModel_buddy
  if not isNil(vtbl.match):
    vtbl[].vtbl.match = miqt_exec_callback_cQSortFilterProxyModel_match
  if not isNil(vtbl.span):
    vtbl[].vtbl.span = miqt_exec_callback_cQSortFilterProxyModel_span
  if not isNil(vtbl.sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQSortFilterProxyModel_sort
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQSortFilterProxyModel_mimeTypes
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQSortFilterProxyModel_supportedDropActions
  if not isNil(vtbl.submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQSortFilterProxyModel_submit
  if not isNil(vtbl.revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQSortFilterProxyModel_revert
  if not isNil(vtbl.itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQSortFilterProxyModel_itemData
  if not isNil(vtbl.setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQSortFilterProxyModel_setItemData
  if not isNil(vtbl.canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQSortFilterProxyModel_canDropMimeData
  if not isNil(vtbl.supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQSortFilterProxyModel_supportedDragActions
  if not isNil(vtbl.moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQSortFilterProxyModel_moveRows
  if not isNil(vtbl.moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQSortFilterProxyModel_moveColumns
  if not isNil(vtbl.roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQSortFilterProxyModel_roleNames
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSortFilterProxyModel_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSortFilterProxyModel_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSortFilterProxyModel_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSortFilterProxyModel_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSortFilterProxyModel_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSortFilterProxyModel_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSortFilterProxyModel_disconnectNotify
  gen_qsortfilterproxymodel_types.QSortFilterProxyModel(h: fcQSortFilterProxyModel_new(addr(vtbl[]), ))

proc create*(T: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel,
    parent: gen_qobject_types.QObject,
    vtbl: ref QSortFilterProxyModelVTable = nil): gen_qsortfilterproxymodel_types.QSortFilterProxyModel =
  let vtbl = if vtbl == nil: new QSortFilterProxyModelVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQSortFilterProxyModelVTable, _: ptr cQSortFilterProxyModel) {.cdecl.} =
    let vtbl = cast[ref QSortFilterProxyModelVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQSortFilterProxyModel_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQSortFilterProxyModel_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQSortFilterProxyModel_metacall
  if not isNil(vtbl.setSourceModel):
    vtbl[].vtbl.setSourceModel = miqt_exec_callback_cQSortFilterProxyModel_setSourceModel
  if not isNil(vtbl.mapToSource):
    vtbl[].vtbl.mapToSource = miqt_exec_callback_cQSortFilterProxyModel_mapToSource
  if not isNil(vtbl.mapFromSource):
    vtbl[].vtbl.mapFromSource = miqt_exec_callback_cQSortFilterProxyModel_mapFromSource
  if not isNil(vtbl.mapSelectionToSource):
    vtbl[].vtbl.mapSelectionToSource = miqt_exec_callback_cQSortFilterProxyModel_mapSelectionToSource
  if not isNil(vtbl.mapSelectionFromSource):
    vtbl[].vtbl.mapSelectionFromSource = miqt_exec_callback_cQSortFilterProxyModel_mapSelectionFromSource
  if not isNil(vtbl.filterAcceptsRow):
    vtbl[].vtbl.filterAcceptsRow = miqt_exec_callback_cQSortFilterProxyModel_filterAcceptsRow
  if not isNil(vtbl.filterAcceptsColumn):
    vtbl[].vtbl.filterAcceptsColumn = miqt_exec_callback_cQSortFilterProxyModel_filterAcceptsColumn
  if not isNil(vtbl.lessThan):
    vtbl[].vtbl.lessThan = miqt_exec_callback_cQSortFilterProxyModel_lessThan
  if not isNil(vtbl.index):
    vtbl[].vtbl.index = miqt_exec_callback_cQSortFilterProxyModel_index
  if not isNil(vtbl.parent):
    vtbl[].vtbl.parent = miqt_exec_callback_cQSortFilterProxyModel_parent
  if not isNil(vtbl.sibling):
    vtbl[].vtbl.sibling = miqt_exec_callback_cQSortFilterProxyModel_sibling
  if not isNil(vtbl.rowCount):
    vtbl[].vtbl.rowCount = miqt_exec_callback_cQSortFilterProxyModel_rowCount
  if not isNil(vtbl.columnCount):
    vtbl[].vtbl.columnCount = miqt_exec_callback_cQSortFilterProxyModel_columnCount
  if not isNil(vtbl.hasChildren):
    vtbl[].vtbl.hasChildren = miqt_exec_callback_cQSortFilterProxyModel_hasChildren
  if not isNil(vtbl.data):
    vtbl[].vtbl.data = miqt_exec_callback_cQSortFilterProxyModel_data
  if not isNil(vtbl.setData):
    vtbl[].vtbl.setData = miqt_exec_callback_cQSortFilterProxyModel_setData
  if not isNil(vtbl.headerData):
    vtbl[].vtbl.headerData = miqt_exec_callback_cQSortFilterProxyModel_headerData
  if not isNil(vtbl.setHeaderData):
    vtbl[].vtbl.setHeaderData = miqt_exec_callback_cQSortFilterProxyModel_setHeaderData
  if not isNil(vtbl.mimeData):
    vtbl[].vtbl.mimeData = miqt_exec_callback_cQSortFilterProxyModel_mimeData
  if not isNil(vtbl.dropMimeData):
    vtbl[].vtbl.dropMimeData = miqt_exec_callback_cQSortFilterProxyModel_dropMimeData
  if not isNil(vtbl.insertRows):
    vtbl[].vtbl.insertRows = miqt_exec_callback_cQSortFilterProxyModel_insertRows
  if not isNil(vtbl.insertColumns):
    vtbl[].vtbl.insertColumns = miqt_exec_callback_cQSortFilterProxyModel_insertColumns
  if not isNil(vtbl.removeRows):
    vtbl[].vtbl.removeRows = miqt_exec_callback_cQSortFilterProxyModel_removeRows
  if not isNil(vtbl.removeColumns):
    vtbl[].vtbl.removeColumns = miqt_exec_callback_cQSortFilterProxyModel_removeColumns
  if not isNil(vtbl.fetchMore):
    vtbl[].vtbl.fetchMore = miqt_exec_callback_cQSortFilterProxyModel_fetchMore
  if not isNil(vtbl.canFetchMore):
    vtbl[].vtbl.canFetchMore = miqt_exec_callback_cQSortFilterProxyModel_canFetchMore
  if not isNil(vtbl.flags):
    vtbl[].vtbl.flags = miqt_exec_callback_cQSortFilterProxyModel_flags
  if not isNil(vtbl.buddy):
    vtbl[].vtbl.buddy = miqt_exec_callback_cQSortFilterProxyModel_buddy
  if not isNil(vtbl.match):
    vtbl[].vtbl.match = miqt_exec_callback_cQSortFilterProxyModel_match
  if not isNil(vtbl.span):
    vtbl[].vtbl.span = miqt_exec_callback_cQSortFilterProxyModel_span
  if not isNil(vtbl.sort):
    vtbl[].vtbl.sort = miqt_exec_callback_cQSortFilterProxyModel_sort
  if not isNil(vtbl.mimeTypes):
    vtbl[].vtbl.mimeTypes = miqt_exec_callback_cQSortFilterProxyModel_mimeTypes
  if not isNil(vtbl.supportedDropActions):
    vtbl[].vtbl.supportedDropActions = miqt_exec_callback_cQSortFilterProxyModel_supportedDropActions
  if not isNil(vtbl.submit):
    vtbl[].vtbl.submit = miqt_exec_callback_cQSortFilterProxyModel_submit
  if not isNil(vtbl.revert):
    vtbl[].vtbl.revert = miqt_exec_callback_cQSortFilterProxyModel_revert
  if not isNil(vtbl.itemData):
    vtbl[].vtbl.itemData = miqt_exec_callback_cQSortFilterProxyModel_itemData
  if not isNil(vtbl.setItemData):
    vtbl[].vtbl.setItemData = miqt_exec_callback_cQSortFilterProxyModel_setItemData
  if not isNil(vtbl.canDropMimeData):
    vtbl[].vtbl.canDropMimeData = miqt_exec_callback_cQSortFilterProxyModel_canDropMimeData
  if not isNil(vtbl.supportedDragActions):
    vtbl[].vtbl.supportedDragActions = miqt_exec_callback_cQSortFilterProxyModel_supportedDragActions
  if not isNil(vtbl.moveRows):
    vtbl[].vtbl.moveRows = miqt_exec_callback_cQSortFilterProxyModel_moveRows
  if not isNil(vtbl.moveColumns):
    vtbl[].vtbl.moveColumns = miqt_exec_callback_cQSortFilterProxyModel_moveColumns
  if not isNil(vtbl.roleNames):
    vtbl[].vtbl.roleNames = miqt_exec_callback_cQSortFilterProxyModel_roleNames
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQSortFilterProxyModel_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQSortFilterProxyModel_eventFilter
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQSortFilterProxyModel_timerEvent
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQSortFilterProxyModel_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQSortFilterProxyModel_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQSortFilterProxyModel_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQSortFilterProxyModel_disconnectNotify
  gen_qsortfilterproxymodel_types.QSortFilterProxyModel(h: fcQSortFilterProxyModel_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qsortfilterproxymodel_types.QSortFilterProxyModel): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSortFilterProxyModel_staticMetaObject())
proc delete*(self: gen_qsortfilterproxymodel_types.QSortFilterProxyModel) =
  fcQSortFilterProxyModel_delete(self.h)
