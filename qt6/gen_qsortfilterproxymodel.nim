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
{.compile("gen_qsortfilterproxymodel.cpp", cflags).}


import gen_qsortfilterproxymodel_types
export gen_qsortfilterproxymodel_types

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
  gen_qregularexpression,
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
  gen_qregularexpression,
  gen_qsize,
  gen_qvariant

type cQSortFilterProxyModel*{.exportc: "QSortFilterProxyModel", incompleteStruct.} = object

proc fcQSortFilterProxyModel_new(): ptr cQSortFilterProxyModel {.importc: "QSortFilterProxyModel_new".}
proc fcQSortFilterProxyModel_new2(parent: pointer): ptr cQSortFilterProxyModel {.importc: "QSortFilterProxyModel_new2".}
proc fcQSortFilterProxyModel_metaObject(self: pointer, ): pointer {.importc: "QSortFilterProxyModel_metaObject".}
proc fcQSortFilterProxyModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QSortFilterProxyModel_metacast".}
proc fcQSortFilterProxyModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSortFilterProxyModel_metacall".}
proc fcQSortFilterProxyModel_tr(s: cstring): struct_miqt_string {.importc: "QSortFilterProxyModel_tr".}
proc fcQSortFilterProxyModel_setSourceModel(self: pointer, sourceModel: pointer): void {.importc: "QSortFilterProxyModel_setSourceModel".}
proc fcQSortFilterProxyModel_mapToSource(self: pointer, proxyIndex: pointer): pointer {.importc: "QSortFilterProxyModel_mapToSource".}
proc fcQSortFilterProxyModel_mapFromSource(self: pointer, sourceIndex: pointer): pointer {.importc: "QSortFilterProxyModel_mapFromSource".}
proc fcQSortFilterProxyModel_mapSelectionToSource(self: pointer, proxySelection: pointer): pointer {.importc: "QSortFilterProxyModel_mapSelectionToSource".}
proc fcQSortFilterProxyModel_mapSelectionFromSource(self: pointer, sourceSelection: pointer): pointer {.importc: "QSortFilterProxyModel_mapSelectionFromSource".}
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
proc fcQSortFilterProxyModel_autoAcceptChildRows(self: pointer, ): bool {.importc: "QSortFilterProxyModel_autoAcceptChildRows".}
proc fcQSortFilterProxyModel_setAutoAcceptChildRows(self: pointer, accept: bool): void {.importc: "QSortFilterProxyModel_setAutoAcceptChildRows".}
proc fcQSortFilterProxyModel_setFilterRegularExpression(self: pointer, pattern: struct_miqt_string): void {.importc: "QSortFilterProxyModel_setFilterRegularExpression".}
proc fcQSortFilterProxyModel_setFilterRegularExpressionWithRegularExpression(self: pointer, regularExpression: pointer): void {.importc: "QSortFilterProxyModel_setFilterRegularExpressionWithRegularExpression".}
proc fcQSortFilterProxyModel_setFilterWildcard(self: pointer, pattern: struct_miqt_string): void {.importc: "QSortFilterProxyModel_setFilterWildcard".}
proc fcQSortFilterProxyModel_setFilterFixedString(self: pointer, pattern: struct_miqt_string): void {.importc: "QSortFilterProxyModel_setFilterFixedString".}
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
proc fQSortFilterProxyModel_connect_dynamicSortFilterChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_dynamicSortFilterChanged".}
proc fcQSortFilterProxyModel_filterCaseSensitivityChanged(self: pointer, filterCaseSensitivity: cint): void {.importc: "QSortFilterProxyModel_filterCaseSensitivityChanged".}
proc fQSortFilterProxyModel_connect_filterCaseSensitivityChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_filterCaseSensitivityChanged".}
proc fcQSortFilterProxyModel_sortCaseSensitivityChanged(self: pointer, sortCaseSensitivity: cint): void {.importc: "QSortFilterProxyModel_sortCaseSensitivityChanged".}
proc fQSortFilterProxyModel_connect_sortCaseSensitivityChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_sortCaseSensitivityChanged".}
proc fcQSortFilterProxyModel_sortLocaleAwareChanged(self: pointer, sortLocaleAware: bool): void {.importc: "QSortFilterProxyModel_sortLocaleAwareChanged".}
proc fQSortFilterProxyModel_connect_sortLocaleAwareChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_sortLocaleAwareChanged".}
proc fcQSortFilterProxyModel_sortRoleChanged(self: pointer, sortRole: cint): void {.importc: "QSortFilterProxyModel_sortRoleChanged".}
proc fQSortFilterProxyModel_connect_sortRoleChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_sortRoleChanged".}
proc fcQSortFilterProxyModel_filterRoleChanged(self: pointer, filterRole: cint): void {.importc: "QSortFilterProxyModel_filterRoleChanged".}
proc fQSortFilterProxyModel_connect_filterRoleChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_filterRoleChanged".}
proc fcQSortFilterProxyModel_recursiveFilteringEnabledChanged(self: pointer, recursiveFilteringEnabled: bool): void {.importc: "QSortFilterProxyModel_recursiveFilteringEnabledChanged".}
proc fQSortFilterProxyModel_connect_recursiveFilteringEnabledChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_recursiveFilteringEnabledChanged".}
proc fcQSortFilterProxyModel_autoAcceptChildRowsChanged(self: pointer, autoAcceptChildRows: bool): void {.importc: "QSortFilterProxyModel_autoAcceptChildRowsChanged".}
proc fQSortFilterProxyModel_connect_autoAcceptChildRowsChanged(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_connect_autoAcceptChildRowsChanged".}
proc fcQSortFilterProxyModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSortFilterProxyModel_tr2".}
proc fcQSortFilterProxyModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSortFilterProxyModel_tr3".}
proc fQSortFilterProxyModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSortFilterProxyModel_virtualbase_metacall".}
proc fcQSortFilterProxyModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_metacall".}
proc fQSortFilterProxyModel_virtualbase_setSourceModel(self: pointer, sourceModel: pointer): void{.importc: "QSortFilterProxyModel_virtualbase_setSourceModel".}
proc fcQSortFilterProxyModel_override_virtual_setSourceModel(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_setSourceModel".}
proc fQSortFilterProxyModel_virtualbase_mapToSource(self: pointer, proxyIndex: pointer): pointer{.importc: "QSortFilterProxyModel_virtualbase_mapToSource".}
proc fcQSortFilterProxyModel_override_virtual_mapToSource(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_mapToSource".}
proc fQSortFilterProxyModel_virtualbase_mapFromSource(self: pointer, sourceIndex: pointer): pointer{.importc: "QSortFilterProxyModel_virtualbase_mapFromSource".}
proc fcQSortFilterProxyModel_override_virtual_mapFromSource(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_mapFromSource".}
proc fQSortFilterProxyModel_virtualbase_mapSelectionToSource(self: pointer, proxySelection: pointer): pointer{.importc: "QSortFilterProxyModel_virtualbase_mapSelectionToSource".}
proc fcQSortFilterProxyModel_override_virtual_mapSelectionToSource(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_mapSelectionToSource".}
proc fQSortFilterProxyModel_virtualbase_mapSelectionFromSource(self: pointer, sourceSelection: pointer): pointer{.importc: "QSortFilterProxyModel_virtualbase_mapSelectionFromSource".}
proc fcQSortFilterProxyModel_override_virtual_mapSelectionFromSource(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_mapSelectionFromSource".}
proc fQSortFilterProxyModel_virtualbase_filterAcceptsRow(self: pointer, source_row: cint, source_parent: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_filterAcceptsRow".}
proc fcQSortFilterProxyModel_override_virtual_filterAcceptsRow(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_filterAcceptsRow".}
proc fQSortFilterProxyModel_virtualbase_filterAcceptsColumn(self: pointer, source_column: cint, source_parent: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_filterAcceptsColumn".}
proc fcQSortFilterProxyModel_override_virtual_filterAcceptsColumn(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_filterAcceptsColumn".}
proc fQSortFilterProxyModel_virtualbase_lessThan(self: pointer, source_left: pointer, source_right: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_lessThan".}
proc fcQSortFilterProxyModel_override_virtual_lessThan(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_lessThan".}
proc fQSortFilterProxyModel_virtualbase_index(self: pointer, row: cint, column: cint, parent: pointer): pointer{.importc: "QSortFilterProxyModel_virtualbase_index".}
proc fcQSortFilterProxyModel_override_virtual_index(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_index".}
proc fQSortFilterProxyModel_virtualbase_parent(self: pointer, child: pointer): pointer{.importc: "QSortFilterProxyModel_virtualbase_parent".}
proc fcQSortFilterProxyModel_override_virtual_parent(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_parent".}
proc fQSortFilterProxyModel_virtualbase_sibling(self: pointer, row: cint, column: cint, idx: pointer): pointer{.importc: "QSortFilterProxyModel_virtualbase_sibling".}
proc fcQSortFilterProxyModel_override_virtual_sibling(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_sibling".}
proc fQSortFilterProxyModel_virtualbase_rowCount(self: pointer, parent: pointer): cint{.importc: "QSortFilterProxyModel_virtualbase_rowCount".}
proc fcQSortFilterProxyModel_override_virtual_rowCount(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_rowCount".}
proc fQSortFilterProxyModel_virtualbase_columnCount(self: pointer, parent: pointer): cint{.importc: "QSortFilterProxyModel_virtualbase_columnCount".}
proc fcQSortFilterProxyModel_override_virtual_columnCount(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_columnCount".}
proc fQSortFilterProxyModel_virtualbase_hasChildren(self: pointer, parent: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_hasChildren".}
proc fcQSortFilterProxyModel_override_virtual_hasChildren(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_hasChildren".}
proc fQSortFilterProxyModel_virtualbase_data(self: pointer, index: pointer, role: cint): pointer{.importc: "QSortFilterProxyModel_virtualbase_data".}
proc fcQSortFilterProxyModel_override_virtual_data(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_data".}
proc fQSortFilterProxyModel_virtualbase_setData(self: pointer, index: pointer, value: pointer, role: cint): bool{.importc: "QSortFilterProxyModel_virtualbase_setData".}
proc fcQSortFilterProxyModel_override_virtual_setData(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_setData".}
proc fQSortFilterProxyModel_virtualbase_headerData(self: pointer, section: cint, orientation: cint, role: cint): pointer{.importc: "QSortFilterProxyModel_virtualbase_headerData".}
proc fcQSortFilterProxyModel_override_virtual_headerData(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_headerData".}
proc fQSortFilterProxyModel_virtualbase_setHeaderData(self: pointer, section: cint, orientation: cint, value: pointer, role: cint): bool{.importc: "QSortFilterProxyModel_virtualbase_setHeaderData".}
proc fcQSortFilterProxyModel_override_virtual_setHeaderData(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_setHeaderData".}
proc fQSortFilterProxyModel_virtualbase_mimeData(self: pointer, indexes: struct_miqt_array): pointer{.importc: "QSortFilterProxyModel_virtualbase_mimeData".}
proc fcQSortFilterProxyModel_override_virtual_mimeData(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_mimeData".}
proc fQSortFilterProxyModel_virtualbase_dropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_dropMimeData".}
proc fcQSortFilterProxyModel_override_virtual_dropMimeData(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_dropMimeData".}
proc fQSortFilterProxyModel_virtualbase_insertRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_insertRows".}
proc fcQSortFilterProxyModel_override_virtual_insertRows(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_insertRows".}
proc fQSortFilterProxyModel_virtualbase_insertColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_insertColumns".}
proc fcQSortFilterProxyModel_override_virtual_insertColumns(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_insertColumns".}
proc fQSortFilterProxyModel_virtualbase_removeRows(self: pointer, row: cint, count: cint, parent: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_removeRows".}
proc fcQSortFilterProxyModel_override_virtual_removeRows(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_removeRows".}
proc fQSortFilterProxyModel_virtualbase_removeColumns(self: pointer, column: cint, count: cint, parent: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_removeColumns".}
proc fcQSortFilterProxyModel_override_virtual_removeColumns(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_removeColumns".}
proc fQSortFilterProxyModel_virtualbase_fetchMore(self: pointer, parent: pointer): void{.importc: "QSortFilterProxyModel_virtualbase_fetchMore".}
proc fcQSortFilterProxyModel_override_virtual_fetchMore(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_fetchMore".}
proc fQSortFilterProxyModel_virtualbase_canFetchMore(self: pointer, parent: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_canFetchMore".}
proc fcQSortFilterProxyModel_override_virtual_canFetchMore(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_canFetchMore".}
proc fQSortFilterProxyModel_virtualbase_flags(self: pointer, index: pointer): cint{.importc: "QSortFilterProxyModel_virtualbase_flags".}
proc fcQSortFilterProxyModel_override_virtual_flags(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_flags".}
proc fQSortFilterProxyModel_virtualbase_buddy(self: pointer, index: pointer): pointer{.importc: "QSortFilterProxyModel_virtualbase_buddy".}
proc fcQSortFilterProxyModel_override_virtual_buddy(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_buddy".}
proc fQSortFilterProxyModel_virtualbase_match(self: pointer, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array{.importc: "QSortFilterProxyModel_virtualbase_match".}
proc fcQSortFilterProxyModel_override_virtual_match(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_match".}
proc fQSortFilterProxyModel_virtualbase_span(self: pointer, index: pointer): pointer{.importc: "QSortFilterProxyModel_virtualbase_span".}
proc fcQSortFilterProxyModel_override_virtual_span(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_span".}
proc fQSortFilterProxyModel_virtualbase_sort(self: pointer, column: cint, order: cint): void{.importc: "QSortFilterProxyModel_virtualbase_sort".}
proc fcQSortFilterProxyModel_override_virtual_sort(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_sort".}
proc fQSortFilterProxyModel_virtualbase_mimeTypes(self: pointer, ): struct_miqt_array{.importc: "QSortFilterProxyModel_virtualbase_mimeTypes".}
proc fcQSortFilterProxyModel_override_virtual_mimeTypes(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_mimeTypes".}
proc fQSortFilterProxyModel_virtualbase_supportedDropActions(self: pointer, ): cint{.importc: "QSortFilterProxyModel_virtualbase_supportedDropActions".}
proc fcQSortFilterProxyModel_override_virtual_supportedDropActions(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_supportedDropActions".}
proc fQSortFilterProxyModel_virtualbase_submit(self: pointer, ): bool{.importc: "QSortFilterProxyModel_virtualbase_submit".}
proc fcQSortFilterProxyModel_override_virtual_submit(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_submit".}
proc fQSortFilterProxyModel_virtualbase_revert(self: pointer, ): void{.importc: "QSortFilterProxyModel_virtualbase_revert".}
proc fcQSortFilterProxyModel_override_virtual_revert(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_revert".}
proc fQSortFilterProxyModel_virtualbase_itemData(self: pointer, index: pointer): struct_miqt_map{.importc: "QSortFilterProxyModel_virtualbase_itemData".}
proc fcQSortFilterProxyModel_override_virtual_itemData(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_itemData".}
proc fQSortFilterProxyModel_virtualbase_setItemData(self: pointer, index: pointer, roles: struct_miqt_map): bool{.importc: "QSortFilterProxyModel_virtualbase_setItemData".}
proc fcQSortFilterProxyModel_override_virtual_setItemData(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_setItemData".}
proc fQSortFilterProxyModel_virtualbase_clearItemData(self: pointer, index: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_clearItemData".}
proc fcQSortFilterProxyModel_override_virtual_clearItemData(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_clearItemData".}
proc fQSortFilterProxyModel_virtualbase_canDropMimeData(self: pointer, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_canDropMimeData".}
proc fcQSortFilterProxyModel_override_virtual_canDropMimeData(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_canDropMimeData".}
proc fQSortFilterProxyModel_virtualbase_supportedDragActions(self: pointer, ): cint{.importc: "QSortFilterProxyModel_virtualbase_supportedDragActions".}
proc fcQSortFilterProxyModel_override_virtual_supportedDragActions(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_supportedDragActions".}
proc fQSortFilterProxyModel_virtualbase_roleNames(self: pointer, ): struct_miqt_map{.importc: "QSortFilterProxyModel_virtualbase_roleNames".}
proc fcQSortFilterProxyModel_override_virtual_roleNames(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_roleNames".}
proc fQSortFilterProxyModel_virtualbase_moveRows(self: pointer, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QSortFilterProxyModel_virtualbase_moveRows".}
proc fcQSortFilterProxyModel_override_virtual_moveRows(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_moveRows".}
proc fQSortFilterProxyModel_virtualbase_moveColumns(self: pointer, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool{.importc: "QSortFilterProxyModel_virtualbase_moveColumns".}
proc fcQSortFilterProxyModel_override_virtual_moveColumns(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_moveColumns".}
proc fQSortFilterProxyModel_virtualbase_multiData(self: pointer, index: pointer, roleDataSpan: pointer): void{.importc: "QSortFilterProxyModel_virtualbase_multiData".}
proc fcQSortFilterProxyModel_override_virtual_multiData(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_multiData".}
proc fQSortFilterProxyModel_virtualbase_resetInternalData(self: pointer, ): void{.importc: "QSortFilterProxyModel_virtualbase_resetInternalData".}
proc fcQSortFilterProxyModel_override_virtual_resetInternalData(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_resetInternalData".}
proc fQSortFilterProxyModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_event".}
proc fcQSortFilterProxyModel_override_virtual_event(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_event".}
proc fQSortFilterProxyModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSortFilterProxyModel_virtualbase_eventFilter".}
proc fcQSortFilterProxyModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_eventFilter".}
proc fQSortFilterProxyModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSortFilterProxyModel_virtualbase_timerEvent".}
proc fcQSortFilterProxyModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_timerEvent".}
proc fQSortFilterProxyModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSortFilterProxyModel_virtualbase_childEvent".}
proc fcQSortFilterProxyModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_childEvent".}
proc fQSortFilterProxyModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSortFilterProxyModel_virtualbase_customEvent".}
proc fcQSortFilterProxyModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_customEvent".}
proc fQSortFilterProxyModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSortFilterProxyModel_virtualbase_connectNotify".}
proc fcQSortFilterProxyModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_connectNotify".}
proc fQSortFilterProxyModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSortFilterProxyModel_virtualbase_disconnectNotify".}
proc fcQSortFilterProxyModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSortFilterProxyModel_override_virtual_disconnectNotify".}
proc fcQSortFilterProxyModel_staticMetaObject(): pointer {.importc: "QSortFilterProxyModel_staticMetaObject".}
proc fcQSortFilterProxyModel_delete(self: pointer) {.importc: "QSortFilterProxyModel_delete".}


func init*(T: type QSortFilterProxyModel, h: ptr cQSortFilterProxyModel): QSortFilterProxyModel =
  T(h: h)
proc create*(T: type QSortFilterProxyModel, ): QSortFilterProxyModel =

  QSortFilterProxyModel.init(fcQSortFilterProxyModel_new())
proc create*(T: type QSortFilterProxyModel, parent: gen_qobject.QObject): QSortFilterProxyModel =

  QSortFilterProxyModel.init(fcQSortFilterProxyModel_new2(parent.h))
proc metaObject*(self: QSortFilterProxyModel, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSortFilterProxyModel_metaObject(self.h))

proc metacast*(self: QSortFilterProxyModel, param1: cstring): pointer =

  fcQSortFilterProxyModel_metacast(self.h, param1)

proc metacall*(self: QSortFilterProxyModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSortFilterProxyModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSortFilterProxyModel, s: cstring): string =

  let v_ms = fcQSortFilterProxyModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSourceModel*(self: QSortFilterProxyModel, sourceModel: gen_qabstractitemmodel.QAbstractItemModel): void =

  fcQSortFilterProxyModel_setSourceModel(self.h, sourceModel.h)

proc mapToSource*(self: QSortFilterProxyModel, proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQSortFilterProxyModel_mapToSource(self.h, proxyIndex.h))

proc mapFromSource*(self: QSortFilterProxyModel, sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQSortFilterProxyModel_mapFromSource(self.h, sourceIndex.h))

proc mapSelectionToSource*(self: QSortFilterProxyModel, proxySelection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection =

  gen_qitemselectionmodel.QItemSelection(h: fcQSortFilterProxyModel_mapSelectionToSource(self.h, proxySelection.h))

proc mapSelectionFromSource*(self: QSortFilterProxyModel, sourceSelection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection =

  gen_qitemselectionmodel.QItemSelection(h: fcQSortFilterProxyModel_mapSelectionFromSource(self.h, sourceSelection.h))

proc filterRegularExpression*(self: QSortFilterProxyModel, ): gen_qregularexpression.QRegularExpression =

  gen_qregularexpression.QRegularExpression(h: fcQSortFilterProxyModel_filterRegularExpression(self.h))

proc filterKeyColumn*(self: QSortFilterProxyModel, ): cint =

  fcQSortFilterProxyModel_filterKeyColumn(self.h)

proc setFilterKeyColumn*(self: QSortFilterProxyModel, column: cint): void =

  fcQSortFilterProxyModel_setFilterKeyColumn(self.h, column)

proc filterCaseSensitivity*(self: QSortFilterProxyModel, ): gen_qnamespace.CaseSensitivity =

  gen_qnamespace.CaseSensitivity(fcQSortFilterProxyModel_filterCaseSensitivity(self.h))

proc setFilterCaseSensitivity*(self: QSortFilterProxyModel, cs: gen_qnamespace.CaseSensitivity): void =

  fcQSortFilterProxyModel_setFilterCaseSensitivity(self.h, cint(cs))

proc sortCaseSensitivity*(self: QSortFilterProxyModel, ): gen_qnamespace.CaseSensitivity =

  gen_qnamespace.CaseSensitivity(fcQSortFilterProxyModel_sortCaseSensitivity(self.h))

proc setSortCaseSensitivity*(self: QSortFilterProxyModel, cs: gen_qnamespace.CaseSensitivity): void =

  fcQSortFilterProxyModel_setSortCaseSensitivity(self.h, cint(cs))

proc isSortLocaleAware*(self: QSortFilterProxyModel, ): bool =

  fcQSortFilterProxyModel_isSortLocaleAware(self.h)

proc setSortLocaleAware*(self: QSortFilterProxyModel, on: bool): void =

  fcQSortFilterProxyModel_setSortLocaleAware(self.h, on)

proc sortColumn*(self: QSortFilterProxyModel, ): cint =

  fcQSortFilterProxyModel_sortColumn(self.h)

proc sortOrder*(self: QSortFilterProxyModel, ): gen_qnamespace.SortOrder =

  gen_qnamespace.SortOrder(fcQSortFilterProxyModel_sortOrder(self.h))

proc dynamicSortFilter*(self: QSortFilterProxyModel, ): bool =

  fcQSortFilterProxyModel_dynamicSortFilter(self.h)

proc setDynamicSortFilter*(self: QSortFilterProxyModel, enable: bool): void =

  fcQSortFilterProxyModel_setDynamicSortFilter(self.h, enable)

proc sortRole*(self: QSortFilterProxyModel, ): cint =

  fcQSortFilterProxyModel_sortRole(self.h)

proc setSortRole*(self: QSortFilterProxyModel, role: cint): void =

  fcQSortFilterProxyModel_setSortRole(self.h, role)

proc filterRole*(self: QSortFilterProxyModel, ): cint =

  fcQSortFilterProxyModel_filterRole(self.h)

proc setFilterRole*(self: QSortFilterProxyModel, role: cint): void =

  fcQSortFilterProxyModel_setFilterRole(self.h, role)

proc isRecursiveFilteringEnabled*(self: QSortFilterProxyModel, ): bool =

  fcQSortFilterProxyModel_isRecursiveFilteringEnabled(self.h)

proc setRecursiveFilteringEnabled*(self: QSortFilterProxyModel, recursive: bool): void =

  fcQSortFilterProxyModel_setRecursiveFilteringEnabled(self.h, recursive)

proc autoAcceptChildRows*(self: QSortFilterProxyModel, ): bool =

  fcQSortFilterProxyModel_autoAcceptChildRows(self.h)

proc setAutoAcceptChildRows*(self: QSortFilterProxyModel, accept: bool): void =

  fcQSortFilterProxyModel_setAutoAcceptChildRows(self.h, accept)

proc setFilterRegularExpression*(self: QSortFilterProxyModel, pattern: string): void =

  fcQSortFilterProxyModel_setFilterRegularExpression(self.h, struct_miqt_string(data: pattern, len: csize_t(len(pattern))))

proc setFilterRegularExpressionWithRegularExpression*(self: QSortFilterProxyModel, regularExpression: gen_qregularexpression.QRegularExpression): void =

  fcQSortFilterProxyModel_setFilterRegularExpressionWithRegularExpression(self.h, regularExpression.h)

proc setFilterWildcard*(self: QSortFilterProxyModel, pattern: string): void =

  fcQSortFilterProxyModel_setFilterWildcard(self.h, struct_miqt_string(data: pattern, len: csize_t(len(pattern))))

proc setFilterFixedString*(self: QSortFilterProxyModel, pattern: string): void =

  fcQSortFilterProxyModel_setFilterFixedString(self.h, struct_miqt_string(data: pattern, len: csize_t(len(pattern))))

proc invalidate*(self: QSortFilterProxyModel, ): void =

  fcQSortFilterProxyModel_invalidate(self.h)

proc index*(self: QSortFilterProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQSortFilterProxyModel_index(self.h, row, column, parent.h))

proc parent*(self: QSortFilterProxyModel, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQSortFilterProxyModel_parent(self.h, child.h))

proc sibling*(self: QSortFilterProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQSortFilterProxyModel_sibling(self.h, row, column, idx.h))

proc rowCount*(self: QSortFilterProxyModel, parent: gen_qabstractitemmodel.QModelIndex): cint =

  fcQSortFilterProxyModel_rowCount(self.h, parent.h)

proc columnCount*(self: QSortFilterProxyModel, parent: gen_qabstractitemmodel.QModelIndex): cint =

  fcQSortFilterProxyModel_columnCount(self.h, parent.h)

proc hasChildren*(self: QSortFilterProxyModel, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQSortFilterProxyModel_hasChildren(self.h, parent.h)

proc data*(self: QSortFilterProxyModel, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQSortFilterProxyModel_data(self.h, index.h, role))

proc setData*(self: QSortFilterProxyModel, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool =

  fcQSortFilterProxyModel_setData(self.h, index.h, value.h, role)

proc headerData*(self: QSortFilterProxyModel, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQSortFilterProxyModel_headerData(self.h, section, cint(orientation), role))

proc setHeaderData*(self: QSortFilterProxyModel, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool =

  fcQSortFilterProxyModel_setHeaderData(self.h, section, cint(orientation), value.h, role)

proc mimeData*(self: QSortFilterProxyModel, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData =

  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h

  gen_qmimedata.QMimeData(h: fcQSortFilterProxyModel_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

proc dropMimeData*(self: QSortFilterProxyModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQSortFilterProxyModel_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

proc insertRows*(self: QSortFilterProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQSortFilterProxyModel_insertRows(self.h, row, count, parent.h)

proc insertColumns*(self: QSortFilterProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQSortFilterProxyModel_insertColumns(self.h, column, count, parent.h)

proc removeRows*(self: QSortFilterProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQSortFilterProxyModel_removeRows(self.h, row, count, parent.h)

proc removeColumns*(self: QSortFilterProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQSortFilterProxyModel_removeColumns(self.h, column, count, parent.h)

proc fetchMore*(self: QSortFilterProxyModel, parent: gen_qabstractitemmodel.QModelIndex): void =

  fcQSortFilterProxyModel_fetchMore(self.h, parent.h)

proc canFetchMore*(self: QSortFilterProxyModel, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQSortFilterProxyModel_canFetchMore(self.h, parent.h)

proc flags*(self: QSortFilterProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag =

  gen_qnamespace.ItemFlag(fcQSortFilterProxyModel_flags(self.h, index.h))

proc buddy*(self: QSortFilterProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQSortFilterProxyModel_buddy(self.h, index.h))

proc match*(self: QSortFilterProxyModel, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex] =

  var v_ma = fcQSortFilterProxyModel_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

proc span*(self: QSortFilterProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQSortFilterProxyModel_span(self.h, index.h))

proc sort*(self: QSortFilterProxyModel, column: cint, order: gen_qnamespace.SortOrder): void =

  fcQSortFilterProxyModel_sort(self.h, column, cint(order))

proc mimeTypes*(self: QSortFilterProxyModel, ): seq[string] =

  var v_ma = fcQSortFilterProxyModel_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc supportedDropActions*(self: QSortFilterProxyModel, ): gen_qnamespace.DropAction =

  gen_qnamespace.DropAction(fcQSortFilterProxyModel_supportedDropActions(self.h))

proc dynamicSortFilterChanged*(self: QSortFilterProxyModel, dynamicSortFilter: bool): void =

  fcQSortFilterProxyModel_dynamicSortFilterChanged(self.h, dynamicSortFilter)

proc miqt_exec_callback_QSortFilterProxyModel_dynamicSortFilterChanged(slot: int, dynamicSortFilter: bool) {.exportc.} =
  type Cb = proc(dynamicSortFilter: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = dynamicSortFilter


  nimfunc[](slotval1)

proc ondynamicSortFilterChanged*(self: QSortFilterProxyModel, slot: proc(dynamicSortFilter: bool)) =
  type Cb = proc(dynamicSortFilter: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSortFilterProxyModel_connect_dynamicSortFilterChanged(self.h, cast[int](addr tmp[]))
proc filterCaseSensitivityChanged*(self: QSortFilterProxyModel, filterCaseSensitivity: gen_qnamespace.CaseSensitivity): void =

  fcQSortFilterProxyModel_filterCaseSensitivityChanged(self.h, cint(filterCaseSensitivity))

proc miqt_exec_callback_QSortFilterProxyModel_filterCaseSensitivityChanged(slot: int, filterCaseSensitivity: cint) {.exportc.} =
  type Cb = proc(filterCaseSensitivity: gen_qnamespace.CaseSensitivity)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.CaseSensitivity(filterCaseSensitivity)


  nimfunc[](slotval1)

proc onfilterCaseSensitivityChanged*(self: QSortFilterProxyModel, slot: proc(filterCaseSensitivity: gen_qnamespace.CaseSensitivity)) =
  type Cb = proc(filterCaseSensitivity: gen_qnamespace.CaseSensitivity)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSortFilterProxyModel_connect_filterCaseSensitivityChanged(self.h, cast[int](addr tmp[]))
proc sortCaseSensitivityChanged*(self: QSortFilterProxyModel, sortCaseSensitivity: gen_qnamespace.CaseSensitivity): void =

  fcQSortFilterProxyModel_sortCaseSensitivityChanged(self.h, cint(sortCaseSensitivity))

proc miqt_exec_callback_QSortFilterProxyModel_sortCaseSensitivityChanged(slot: int, sortCaseSensitivity: cint) {.exportc.} =
  type Cb = proc(sortCaseSensitivity: gen_qnamespace.CaseSensitivity)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qnamespace.CaseSensitivity(sortCaseSensitivity)


  nimfunc[](slotval1)

proc onsortCaseSensitivityChanged*(self: QSortFilterProxyModel, slot: proc(sortCaseSensitivity: gen_qnamespace.CaseSensitivity)) =
  type Cb = proc(sortCaseSensitivity: gen_qnamespace.CaseSensitivity)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSortFilterProxyModel_connect_sortCaseSensitivityChanged(self.h, cast[int](addr tmp[]))
proc sortLocaleAwareChanged*(self: QSortFilterProxyModel, sortLocaleAware: bool): void =

  fcQSortFilterProxyModel_sortLocaleAwareChanged(self.h, sortLocaleAware)

proc miqt_exec_callback_QSortFilterProxyModel_sortLocaleAwareChanged(slot: int, sortLocaleAware: bool) {.exportc.} =
  type Cb = proc(sortLocaleAware: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = sortLocaleAware


  nimfunc[](slotval1)

proc onsortLocaleAwareChanged*(self: QSortFilterProxyModel, slot: proc(sortLocaleAware: bool)) =
  type Cb = proc(sortLocaleAware: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSortFilterProxyModel_connect_sortLocaleAwareChanged(self.h, cast[int](addr tmp[]))
proc sortRoleChanged*(self: QSortFilterProxyModel, sortRole: cint): void =

  fcQSortFilterProxyModel_sortRoleChanged(self.h, sortRole)

proc miqt_exec_callback_QSortFilterProxyModel_sortRoleChanged(slot: int, sortRole: cint) {.exportc.} =
  type Cb = proc(sortRole: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = sortRole


  nimfunc[](slotval1)

proc onsortRoleChanged*(self: QSortFilterProxyModel, slot: proc(sortRole: cint)) =
  type Cb = proc(sortRole: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSortFilterProxyModel_connect_sortRoleChanged(self.h, cast[int](addr tmp[]))
proc filterRoleChanged*(self: QSortFilterProxyModel, filterRole: cint): void =

  fcQSortFilterProxyModel_filterRoleChanged(self.h, filterRole)

proc miqt_exec_callback_QSortFilterProxyModel_filterRoleChanged(slot: int, filterRole: cint) {.exportc.} =
  type Cb = proc(filterRole: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = filterRole


  nimfunc[](slotval1)

proc onfilterRoleChanged*(self: QSortFilterProxyModel, slot: proc(filterRole: cint)) =
  type Cb = proc(filterRole: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSortFilterProxyModel_connect_filterRoleChanged(self.h, cast[int](addr tmp[]))
proc recursiveFilteringEnabledChanged*(self: QSortFilterProxyModel, recursiveFilteringEnabled: bool): void =

  fcQSortFilterProxyModel_recursiveFilteringEnabledChanged(self.h, recursiveFilteringEnabled)

proc miqt_exec_callback_QSortFilterProxyModel_recursiveFilteringEnabledChanged(slot: int, recursiveFilteringEnabled: bool) {.exportc.} =
  type Cb = proc(recursiveFilteringEnabled: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = recursiveFilteringEnabled


  nimfunc[](slotval1)

proc onrecursiveFilteringEnabledChanged*(self: QSortFilterProxyModel, slot: proc(recursiveFilteringEnabled: bool)) =
  type Cb = proc(recursiveFilteringEnabled: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSortFilterProxyModel_connect_recursiveFilteringEnabledChanged(self.h, cast[int](addr tmp[]))
proc autoAcceptChildRowsChanged*(self: QSortFilterProxyModel, autoAcceptChildRows: bool): void =

  fcQSortFilterProxyModel_autoAcceptChildRowsChanged(self.h, autoAcceptChildRows)

proc miqt_exec_callback_QSortFilterProxyModel_autoAcceptChildRowsChanged(slot: int, autoAcceptChildRows: bool) {.exportc.} =
  type Cb = proc(autoAcceptChildRows: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = autoAcceptChildRows


  nimfunc[](slotval1)

proc onautoAcceptChildRowsChanged*(self: QSortFilterProxyModel, slot: proc(autoAcceptChildRows: bool)) =
  type Cb = proc(autoAcceptChildRows: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSortFilterProxyModel_connect_autoAcceptChildRowsChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QSortFilterProxyModel, s: cstring, c: cstring): string =

  let v_ms = fcQSortFilterProxyModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSortFilterProxyModel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSortFilterProxyModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QSortFilterProxyModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSortFilterProxyModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSortFilterProxyModelmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_metacall(self: ptr cQSortFilterProxyModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSortFilterProxyModel_metacall ".} =
  type Cb = proc(super: QSortFilterProxyModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSortFilterProxyModel(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setSourceModel(self: QSortFilterProxyModel, sourceModel: gen_qabstractitemmodel.QAbstractItemModel): void =


  fQSortFilterProxyModel_virtualbase_setSourceModel(self.h, sourceModel.h)

type QSortFilterProxyModelsetSourceModelBase* = proc(sourceModel: gen_qabstractitemmodel.QAbstractItemModel): void
proc onsetSourceModel*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelsetSourceModelBase, sourceModel: gen_qabstractitemmodel.QAbstractItemModel): void) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelsetSourceModelBase, sourceModel: gen_qabstractitemmodel.QAbstractItemModel): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_setSourceModel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_setSourceModel(self: ptr cQSortFilterProxyModel, slot: int, sourceModel: pointer): void {.exportc: "miqt_exec_callback_QSortFilterProxyModel_setSourceModel ".} =
  type Cb = proc(super: QSortFilterProxyModelsetSourceModelBase, sourceModel: gen_qabstractitemmodel.QAbstractItemModel): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceModel: gen_qabstractitemmodel.QAbstractItemModel): auto =
    callVirtualBase_setSourceModel(QSortFilterProxyModel(h: self), sourceModel)
  let slotval1 = gen_qabstractitemmodel.QAbstractItemModel(h: sourceModel)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_mapToSource(self: QSortFilterProxyModel, proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQSortFilterProxyModel_virtualbase_mapToSource(self.h, proxyIndex.h))

type QSortFilterProxyModelmapToSourceBase* = proc(proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onmapToSource*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelmapToSourceBase, proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelmapToSourceBase, proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_mapToSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_mapToSource(self: ptr cQSortFilterProxyModel, slot: int, proxyIndex: pointer): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_mapToSource ".} =
  type Cb = proc(super: QSortFilterProxyModelmapToSourceBase, proxyIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(proxyIndex: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_mapToSource(QSortFilterProxyModel(h: self), proxyIndex)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: proxyIndex)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_mapFromSource(self: QSortFilterProxyModel, sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQSortFilterProxyModel_virtualbase_mapFromSource(self.h, sourceIndex.h))

type QSortFilterProxyModelmapFromSourceBase* = proc(sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onmapFromSource*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelmapFromSourceBase, sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelmapFromSourceBase, sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_mapFromSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_mapFromSource(self: ptr cQSortFilterProxyModel, slot: int, sourceIndex: pointer): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_mapFromSource ".} =
  type Cb = proc(super: QSortFilterProxyModelmapFromSourceBase, sourceIndex: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceIndex: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_mapFromSource(QSortFilterProxyModel(h: self), sourceIndex)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceIndex)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_mapSelectionToSource(self: QSortFilterProxyModel, proxySelection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection =


  gen_qitemselectionmodel.QItemSelection(h: fQSortFilterProxyModel_virtualbase_mapSelectionToSource(self.h, proxySelection.h))

type QSortFilterProxyModelmapSelectionToSourceBase* = proc(proxySelection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
proc onmapSelectionToSource*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelmapSelectionToSourceBase, proxySelection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelmapSelectionToSourceBase, proxySelection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_mapSelectionToSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_mapSelectionToSource(self: ptr cQSortFilterProxyModel, slot: int, proxySelection: pointer): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_mapSelectionToSource ".} =
  type Cb = proc(super: QSortFilterProxyModelmapSelectionToSourceBase, proxySelection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(proxySelection: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_mapSelectionToSource(QSortFilterProxyModel(h: self), proxySelection)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: proxySelection)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_mapSelectionFromSource(self: QSortFilterProxyModel, sourceSelection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection =


  gen_qitemselectionmodel.QItemSelection(h: fQSortFilterProxyModel_virtualbase_mapSelectionFromSource(self.h, sourceSelection.h))

type QSortFilterProxyModelmapSelectionFromSourceBase* = proc(sourceSelection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
proc onmapSelectionFromSource*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelmapSelectionFromSourceBase, sourceSelection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelmapSelectionFromSourceBase, sourceSelection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_mapSelectionFromSource(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_mapSelectionFromSource(self: ptr cQSortFilterProxyModel, slot: int, sourceSelection: pointer): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_mapSelectionFromSource ".} =
  type Cb = proc(super: QSortFilterProxyModelmapSelectionFromSourceBase, sourceSelection: gen_qitemselectionmodel.QItemSelection): gen_qitemselectionmodel.QItemSelection
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceSelection: gen_qitemselectionmodel.QItemSelection): auto =
    callVirtualBase_mapSelectionFromSource(QSortFilterProxyModel(h: self), sourceSelection)
  let slotval1 = gen_qitemselectionmodel.QItemSelection(h: sourceSelection)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_filterAcceptsRow(self: QSortFilterProxyModel, source_row: cint, source_parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQSortFilterProxyModel_virtualbase_filterAcceptsRow(self.h, source_row, source_parent.h)

type QSortFilterProxyModelfilterAcceptsRowBase* = proc(source_row: cint, source_parent: gen_qabstractitemmodel.QModelIndex): bool
proc onfilterAcceptsRow*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelfilterAcceptsRowBase, source_row: cint, source_parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelfilterAcceptsRowBase, source_row: cint, source_parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_filterAcceptsRow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_filterAcceptsRow(self: ptr cQSortFilterProxyModel, slot: int, source_row: cint, source_parent: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_filterAcceptsRow ".} =
  type Cb = proc(super: QSortFilterProxyModelfilterAcceptsRowBase, source_row: cint, source_parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(source_row: cint, source_parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_filterAcceptsRow(QSortFilterProxyModel(h: self), source_row, source_parent)
  let slotval1 = source_row

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: source_parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_filterAcceptsColumn(self: QSortFilterProxyModel, source_column: cint, source_parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQSortFilterProxyModel_virtualbase_filterAcceptsColumn(self.h, source_column, source_parent.h)

type QSortFilterProxyModelfilterAcceptsColumnBase* = proc(source_column: cint, source_parent: gen_qabstractitemmodel.QModelIndex): bool
proc onfilterAcceptsColumn*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelfilterAcceptsColumnBase, source_column: cint, source_parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelfilterAcceptsColumnBase, source_column: cint, source_parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_filterAcceptsColumn(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_filterAcceptsColumn(self: ptr cQSortFilterProxyModel, slot: int, source_column: cint, source_parent: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_filterAcceptsColumn ".} =
  type Cb = proc(super: QSortFilterProxyModelfilterAcceptsColumnBase, source_column: cint, source_parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(source_column: cint, source_parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_filterAcceptsColumn(QSortFilterProxyModel(h: self), source_column, source_parent)
  let slotval1 = source_column

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: source_parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_lessThan(self: QSortFilterProxyModel, source_left: gen_qabstractitemmodel.QModelIndex, source_right: gen_qabstractitemmodel.QModelIndex): bool =


  fQSortFilterProxyModel_virtualbase_lessThan(self.h, source_left.h, source_right.h)

type QSortFilterProxyModellessThanBase* = proc(source_left: gen_qabstractitemmodel.QModelIndex, source_right: gen_qabstractitemmodel.QModelIndex): bool
proc onlessThan*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModellessThanBase, source_left: gen_qabstractitemmodel.QModelIndex, source_right: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModellessThanBase, source_left: gen_qabstractitemmodel.QModelIndex, source_right: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_lessThan(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_lessThan(self: ptr cQSortFilterProxyModel, slot: int, source_left: pointer, source_right: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_lessThan ".} =
  type Cb = proc(super: QSortFilterProxyModellessThanBase, source_left: gen_qabstractitemmodel.QModelIndex, source_right: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(source_left: gen_qabstractitemmodel.QModelIndex, source_right: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_lessThan(QSortFilterProxyModel(h: self), source_left, source_right)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: source_left)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: source_right)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_index(self: QSortFilterProxyModel, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQSortFilterProxyModel_virtualbase_index(self.h, row, column, parent.h))

type QSortFilterProxyModelindexBase* = proc(row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onindex*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_index(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_index(self: ptr cQSortFilterProxyModel, slot: int, row: cint, column: cint, parent: pointer): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_index ".} =
  type Cb = proc(super: QSortFilterProxyModelindexBase, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_index(QSortFilterProxyModel(h: self), row, column, parent)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_parent(self: QSortFilterProxyModel, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQSortFilterProxyModel_virtualbase_parent(self.h, child.h))

type QSortFilterProxyModelparentBase* = proc(child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onparent*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelparentBase, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelparentBase, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_parent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_parent(self: ptr cQSortFilterProxyModel, slot: int, child: pointer): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_parent ".} =
  type Cb = proc(super: QSortFilterProxyModelparentBase, child: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(child: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_parent(QSortFilterProxyModel(h: self), child)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: child)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sibling(self: QSortFilterProxyModel, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQSortFilterProxyModel_virtualbase_sibling(self.h, row, column, idx.h))

type QSortFilterProxyModelsiblingBase* = proc(row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onsibling*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_sibling(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_sibling(self: ptr cQSortFilterProxyModel, slot: int, row: cint, column: cint, idx: pointer): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_sibling ".} =
  type Cb = proc(super: QSortFilterProxyModelsiblingBase, row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, column: cint, idx: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_sibling(QSortFilterProxyModel(h: self), row, column, idx)
  let slotval1 = row

  let slotval2 = column

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: idx)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_rowCount(self: QSortFilterProxyModel, parent: gen_qabstractitemmodel.QModelIndex): cint =


  fQSortFilterProxyModel_virtualbase_rowCount(self.h, parent.h)

type QSortFilterProxyModelrowCountBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): cint
proc onrowCount*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_rowCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_rowCount(self: ptr cQSortFilterProxyModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QSortFilterProxyModel_rowCount ".} =
  type Cb = proc(super: QSortFilterProxyModelrowCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_rowCount(QSortFilterProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_columnCount(self: QSortFilterProxyModel, parent: gen_qabstractitemmodel.QModelIndex): cint =


  fQSortFilterProxyModel_virtualbase_columnCount(self.h, parent.h)

type QSortFilterProxyModelcolumnCountBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): cint
proc oncolumnCount*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelcolumnCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelcolumnCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_columnCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_columnCount(self: ptr cQSortFilterProxyModel, slot: int, parent: pointer): cint {.exportc: "miqt_exec_callback_QSortFilterProxyModel_columnCount ".} =
  type Cb = proc(super: QSortFilterProxyModelcolumnCountBase, parent: gen_qabstractitemmodel.QModelIndex): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_columnCount(QSortFilterProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_hasChildren(self: QSortFilterProxyModel, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQSortFilterProxyModel_virtualbase_hasChildren(self.h, parent.h)

type QSortFilterProxyModelhasChildrenBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): bool
proc onhasChildren*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelhasChildrenBase, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelhasChildrenBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_hasChildren(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_hasChildren(self: ptr cQSortFilterProxyModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_hasChildren ".} =
  type Cb = proc(super: QSortFilterProxyModelhasChildrenBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_hasChildren(QSortFilterProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_data(self: QSortFilterProxyModel, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQSortFilterProxyModel_virtualbase_data(self.h, index.h, role))

type QSortFilterProxyModeldataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
proc ondata*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModeldataBase, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModeldataBase, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_data(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_data(self: ptr cQSortFilterProxyModel, slot: int, index: pointer, role: cint): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_data ".} =
  type Cb = proc(super: QSortFilterProxyModeldataBase, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, role: cint): auto =
    callVirtualBase_data(QSortFilterProxyModel(h: self), index, role)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_setData(self: QSortFilterProxyModel, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool =


  fQSortFilterProxyModel_virtualbase_setData(self.h, index.h, value.h, role)

type QSortFilterProxyModelsetDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
proc onsetData*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_setData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_setData(self: ptr cQSortFilterProxyModel, slot: int, index: pointer, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_setData ".} =
  type Cb = proc(super: QSortFilterProxyModelsetDataBase, index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setData(QSortFilterProxyModel(h: self), index, value, role)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qvariant.QVariant(h: value)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_headerData(self: QSortFilterProxyModel, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQSortFilterProxyModel_virtualbase_headerData(self.h, section, cint(orientation), role))

type QSortFilterProxyModelheaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
proc onheaderData*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_headerData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_headerData(self: ptr cQSortFilterProxyModel, slot: int, section: cint, orientation: cint, role: cint): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_headerData ".} =
  type Cb = proc(super: QSortFilterProxyModelheaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, role: cint): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, role: cint): auto =
    callVirtualBase_headerData(QSortFilterProxyModel(h: self), section, orientation, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_setHeaderData(self: QSortFilterProxyModel, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool =


  fQSortFilterProxyModel_virtualbase_setHeaderData(self.h, section, cint(orientation), value.h, role)

type QSortFilterProxyModelsetHeaderDataBase* = proc(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
proc onsetHeaderData*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_setHeaderData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_setHeaderData(self: ptr cQSortFilterProxyModel, slot: int, section: cint, orientation: cint, value: pointer, role: cint): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_setHeaderData ".} =
  type Cb = proc(super: QSortFilterProxyModelsetHeaderDataBase, section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(section: cint, orientation: gen_qnamespace.Orientation, value: gen_qvariant.QVariant, role: cint): auto =
    callVirtualBase_setHeaderData(QSortFilterProxyModel(h: self), section, orientation, value, role)
  let slotval1 = section

  let slotval2 = gen_qnamespace.Orientation(orientation)

  let slotval3 = gen_qvariant.QVariant(h: value)

  let slotval4 = role


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_mimeData(self: QSortFilterProxyModel, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData =

  var indexes_CArray = newSeq[pointer](len(indexes))
  for i in 0..<len(indexes):
    indexes_CArray[i] = indexes[i].h


  gen_qmimedata.QMimeData(h: fQSortFilterProxyModel_virtualbase_mimeData(self.h, struct_miqt_array(len: csize_t(len(indexes)), data: if len(indexes) == 0: nil else: addr(indexes_CArray[0]))))

type QSortFilterProxyModelmimeDataBase* = proc(indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
proc onmimeData*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_mimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_mimeData(self: ptr cQSortFilterProxyModel, slot: int, indexes: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_mimeData ".} =
  type Cb = proc(super: QSortFilterProxyModelmimeDataBase, indexes: seq[gen_qabstractitemmodel.QModelIndex]): gen_qmimedata.QMimeData
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(indexes: seq[gen_qabstractitemmodel.QModelIndex]): auto =
    callVirtualBase_mimeData(QSortFilterProxyModel(h: self), indexes)
  var vindexes_ma = indexes
  var vindexesx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(vindexes_ma.len))
  let vindexes_outCast = cast[ptr UncheckedArray[pointer]](vindexes_ma.data)
  for i in 0 ..< vindexes_ma.len:
    vindexesx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: vindexes_outCast[i])
  let slotval1 = vindexesx_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_dropMimeData(self: QSortFilterProxyModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQSortFilterProxyModel_virtualbase_dropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QSortFilterProxyModeldropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc ondropMimeData*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_dropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_dropMimeData(self: ptr cQSortFilterProxyModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_dropMimeData ".} =
  type Cb = proc(super: QSortFilterProxyModeldropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_dropMimeData(QSortFilterProxyModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_insertRows(self: QSortFilterProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQSortFilterProxyModel_virtualbase_insertRows(self.h, row, count, parent.h)

type QSortFilterProxyModelinsertRowsBase* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oninsertRows*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_insertRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_insertRows(self: ptr cQSortFilterProxyModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_insertRows ".} =
  type Cb = proc(super: QSortFilterProxyModelinsertRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_insertRows(QSortFilterProxyModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_insertColumns(self: QSortFilterProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQSortFilterProxyModel_virtualbase_insertColumns(self.h, column, count, parent.h)

type QSortFilterProxyModelinsertColumnsBase* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oninsertColumns*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_insertColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_insertColumns(self: ptr cQSortFilterProxyModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_insertColumns ".} =
  type Cb = proc(super: QSortFilterProxyModelinsertColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_insertColumns(QSortFilterProxyModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeRows(self: QSortFilterProxyModel, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQSortFilterProxyModel_virtualbase_removeRows(self.h, row, count, parent.h)

type QSortFilterProxyModelremoveRowsBase* = proc(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc onremoveRows*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_removeRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_removeRows(self: ptr cQSortFilterProxyModel, slot: int, row: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_removeRows ".} =
  type Cb = proc(super: QSortFilterProxyModelremoveRowsBase, row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(row: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_removeRows(QSortFilterProxyModel(h: self), row, count, parent)
  let slotval1 = row

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_removeColumns(self: QSortFilterProxyModel, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQSortFilterProxyModel_virtualbase_removeColumns(self.h, column, count, parent.h)

type QSortFilterProxyModelremoveColumnsBase* = proc(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc onremoveColumns*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_removeColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_removeColumns(self: ptr cQSortFilterProxyModel, slot: int, column: cint, count: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_removeColumns ".} =
  type Cb = proc(super: QSortFilterProxyModelremoveColumnsBase, column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, count: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_removeColumns(QSortFilterProxyModel(h: self), column, count, parent)
  let slotval1 = column

  let slotval2 = count

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_fetchMore(self: QSortFilterProxyModel, parent: gen_qabstractitemmodel.QModelIndex): void =


  fQSortFilterProxyModel_virtualbase_fetchMore(self.h, parent.h)

type QSortFilterProxyModelfetchMoreBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): void
proc onfetchMore*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_fetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_fetchMore(self: ptr cQSortFilterProxyModel, slot: int, parent: pointer): void {.exportc: "miqt_exec_callback_QSortFilterProxyModel_fetchMore ".} =
  type Cb = proc(super: QSortFilterProxyModelfetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_fetchMore(QSortFilterProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_canFetchMore(self: QSortFilterProxyModel, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQSortFilterProxyModel_virtualbase_canFetchMore(self.h, parent.h)

type QSortFilterProxyModelcanFetchMoreBase* = proc(parent: gen_qabstractitemmodel.QModelIndex): bool
proc oncanFetchMore*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_canFetchMore(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_canFetchMore(self: ptr cQSortFilterProxyModel, slot: int, parent: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_canFetchMore ".} =
  type Cb = proc(super: QSortFilterProxyModelcanFetchMoreBase, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_canFetchMore(QSortFilterProxyModel(h: self), parent)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_flags(self: QSortFilterProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag =


  gen_qnamespace.ItemFlag(fQSortFilterProxyModel_virtualbase_flags(self.h, index.h))

type QSortFilterProxyModelflagsBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
proc onflags*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_flags(self: ptr cQSortFilterProxyModel, slot: int, index: pointer): cint {.exportc: "miqt_exec_callback_QSortFilterProxyModel_flags ".} =
  type Cb = proc(super: QSortFilterProxyModelflagsBase, index: gen_qabstractitemmodel.QModelIndex): gen_qnamespace.ItemFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_flags(QSortFilterProxyModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  cint(virtualReturn)
proc callVirtualBase_buddy(self: QSortFilterProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex =


  gen_qabstractitemmodel.QModelIndex(h: fQSortFilterProxyModel_virtualbase_buddy(self.h, index.h))

type QSortFilterProxyModelbuddyBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
proc onbuddy*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_buddy(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_buddy(self: ptr cQSortFilterProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_buddy ".} =
  type Cb = proc(super: QSortFilterProxyModelbuddyBase, index: gen_qabstractitemmodel.QModelIndex): gen_qabstractitemmodel.QModelIndex
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_buddy(QSortFilterProxyModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_match(self: QSortFilterProxyModel, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex] =


  var v_ma = fQSortFilterProxyModel_virtualbase_match(self.h, start.h, role, value.h, hits, cint(flags))
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

type QSortFilterProxyModelmatchBase* = proc(start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
proc onmatch*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_match(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_match(self: ptr cQSortFilterProxyModel, slot: int, start: pointer, role: cint, value: pointer, hits: cint, flags: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QSortFilterProxyModel_match ".} =
  type Cb = proc(super: QSortFilterProxyModelmatchBase, start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): seq[gen_qabstractitemmodel.QModelIndex]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(start: gen_qabstractitemmodel.QModelIndex, role: cint, value: gen_qvariant.QVariant, hits: cint, flags: gen_qnamespace.MatchFlag): auto =
    callVirtualBase_match(QSortFilterProxyModel(h: self), start, role, value, hits, flags)
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
proc callVirtualBase_span(self: QSortFilterProxyModel, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize =


  gen_qsize.QSize(h: fQSortFilterProxyModel_virtualbase_span(self.h, index.h))

type QSortFilterProxyModelspanBase* = proc(index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
proc onspan*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_span(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_span(self: ptr cQSortFilterProxyModel, slot: int, index: pointer): pointer {.exportc: "miqt_exec_callback_QSortFilterProxyModel_span ".} =
  type Cb = proc(super: QSortFilterProxyModelspanBase, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_span(QSortFilterProxyModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sort(self: QSortFilterProxyModel, column: cint, order: gen_qnamespace.SortOrder): void =


  fQSortFilterProxyModel_virtualbase_sort(self.h, column, cint(order))

type QSortFilterProxyModelsortBase* = proc(column: cint, order: gen_qnamespace.SortOrder): void
proc onsort*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_sort(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_sort(self: ptr cQSortFilterProxyModel, slot: int, column: cint, order: cint): void {.exportc: "miqt_exec_callback_QSortFilterProxyModel_sort ".} =
  type Cb = proc(super: QSortFilterProxyModelsortBase, column: cint, order: gen_qnamespace.SortOrder): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(column: cint, order: gen_qnamespace.SortOrder): auto =
    callVirtualBase_sort(QSortFilterProxyModel(h: self), column, order)
  let slotval1 = column

  let slotval2 = gen_qnamespace.SortOrder(order)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_mimeTypes(self: QSortFilterProxyModel, ): seq[string] =


  var v_ma = fQSortFilterProxyModel_virtualbase_mimeTypes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QSortFilterProxyModelmimeTypesBase* = proc(): seq[string]
proc onmimeTypes*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelmimeTypesBase): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelmimeTypesBase): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_mimeTypes(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_mimeTypes(self: ptr cQSortFilterProxyModel, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QSortFilterProxyModel_mimeTypes ".} =
  type Cb = proc(super: QSortFilterProxyModelmimeTypesBase): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mimeTypes(QSortFilterProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_supportedDropActions(self: QSortFilterProxyModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQSortFilterProxyModel_virtualbase_supportedDropActions(self.h))

type QSortFilterProxyModelsupportedDropActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDropActions*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelsupportedDropActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_supportedDropActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_supportedDropActions(self: ptr cQSortFilterProxyModel, slot: int): cint {.exportc: "miqt_exec_callback_QSortFilterProxyModel_supportedDropActions ".} =
  type Cb = proc(super: QSortFilterProxyModelsupportedDropActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDropActions(QSortFilterProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_submit(self: QSortFilterProxyModel, ): bool =


  fQSortFilterProxyModel_virtualbase_submit(self.h)

type QSortFilterProxyModelsubmitBase* = proc(): bool
proc onsubmit*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelsubmitBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelsubmitBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_submit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_submit(self: ptr cQSortFilterProxyModel, slot: int): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_submit ".} =
  type Cb = proc(super: QSortFilterProxyModelsubmitBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_submit(QSortFilterProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_revert(self: QSortFilterProxyModel, ): void =


  fQSortFilterProxyModel_virtualbase_revert(self.h)

type QSortFilterProxyModelrevertBase* = proc(): void
proc onrevert*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelrevertBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelrevertBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_revert(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_revert(self: ptr cQSortFilterProxyModel, slot: int): void {.exportc: "miqt_exec_callback_QSortFilterProxyModel_revert ".} =
  type Cb = proc(super: QSortFilterProxyModelrevertBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_revert(QSortFilterProxyModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_itemData(self: QSortFilterProxyModel, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant] =


  var v_mm = fQSortFilterProxyModel_virtualbase_itemData(self.h, index.h)
  var vx_ret: Table[cint, gen_qvariant.QVariant]
  var v_Keys = cast[ptr UncheckedArray[cint]](v_mm.keys)
  var v_Values = cast[ptr UncheckedArray[pointer]](v_mm.values)
  for i in 0..<v_mm.len:
    var v_entry_Key = v_Keys[i]

    var v_entry_Value = gen_qvariant.QVariant(h: v_Values[i])

    vx_ret[v_entry_Key] = v_entry_Value
  vx_ret

type QSortFilterProxyModelitemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
proc onitemData*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_itemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_itemData(self: ptr cQSortFilterProxyModel, slot: int, index: pointer): struct_miqt_map {.exportc: "miqt_exec_callback_QSortFilterProxyModel_itemData ".} =
  type Cb = proc(super: QSortFilterProxyModelitemDataBase, index: gen_qabstractitemmodel.QModelIndex): Table[cint,gen_qvariant.QVariant]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_itemData(QSortFilterProxyModel(h: self), index)
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
proc callVirtualBase_setItemData(self: QSortFilterProxyModel, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool =

  var roles_Keys_CArray = newSeq[cint](len(roles))
  var roles_Values_CArray = newSeq[pointer](len(roles))
  var roles_ctr = 0
  for rolesk, rolesv in roles:
    roles_Keys_CArray[roles_ctr] = roles_k
    roles_Values_CArray[roles_ctr] = roles_v.h
    roles_ctr += 1


  fQSortFilterProxyModel_virtualbase_setItemData(self.h, index.h, struct_miqt_map(len: csize_t(len(roles)),keys: if len(roles) == 0: nil else: addr(roles_Keys_CArray[0]), values: if len(roles) == 0: nil else: addr(roles_Values_CArray[0]),))

type QSortFilterProxyModelsetItemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
proc onsetItemData*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_setItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_setItemData(self: ptr cQSortFilterProxyModel, slot: int, index: pointer, roles: struct_miqt_map): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_setItemData ".} =
  type Cb = proc(super: QSortFilterProxyModelsetItemDataBase, index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, roles: Table[cint,gen_qvariant.QVariant]): auto =
    callVirtualBase_setItemData(QSortFilterProxyModel(h: self), index, roles)
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
proc callVirtualBase_clearItemData(self: QSortFilterProxyModel, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQSortFilterProxyModel_virtualbase_clearItemData(self.h, index.h)

type QSortFilterProxyModelclearItemDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex): bool
proc onclearItemData*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelclearItemDataBase, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelclearItemDataBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_clearItemData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_clearItemData(self: ptr cQSortFilterProxyModel, slot: int, index: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_clearItemData ".} =
  type Cb = proc(super: QSortFilterProxyModelclearItemDataBase, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_clearItemData(QSortFilterProxyModel(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_canDropMimeData(self: QSortFilterProxyModel, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =


  fQSortFilterProxyModel_virtualbase_canDropMimeData(self.h, data.h, cint(action), row, column, parent.h)

type QSortFilterProxyModelcanDropMimeDataBase* = proc(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
proc oncanDropMimeData*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_canDropMimeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_canDropMimeData(self: ptr cQSortFilterProxyModel, slot: int, data: pointer, action: cint, row: cint, column: cint, parent: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_canDropMimeData ".} =
  type Cb = proc(super: QSortFilterProxyModelcanDropMimeDataBase, data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: gen_qmimedata.QMimeData, action: gen_qnamespace.DropAction, row: cint, column: cint, parent: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_canDropMimeData(QSortFilterProxyModel(h: self), data, action, row, column, parent)
  let slotval1 = gen_qmimedata.QMimeData(h: data)

  let slotval2 = gen_qnamespace.DropAction(action)

  let slotval3 = row

  let slotval4 = column

  let slotval5 = gen_qabstractitemmodel.QModelIndex(h: parent)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_supportedDragActions(self: QSortFilterProxyModel, ): gen_qnamespace.DropAction =


  gen_qnamespace.DropAction(fQSortFilterProxyModel_virtualbase_supportedDragActions(self.h))

type QSortFilterProxyModelsupportedDragActionsBase* = proc(): gen_qnamespace.DropAction
proc onsupportedDragActions*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelsupportedDragActionsBase): gen_qnamespace.DropAction) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_supportedDragActions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_supportedDragActions(self: ptr cQSortFilterProxyModel, slot: int): cint {.exportc: "miqt_exec_callback_QSortFilterProxyModel_supportedDragActions ".} =
  type Cb = proc(super: QSortFilterProxyModelsupportedDragActionsBase): gen_qnamespace.DropAction
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_supportedDragActions(QSortFilterProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_roleNames(self: QSortFilterProxyModel, ): Table[cint,seq[byte]] =


  var v_mm = fQSortFilterProxyModel_virtualbase_roleNames(self.h)
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

type QSortFilterProxyModelroleNamesBase* = proc(): Table[cint,seq[byte]]
proc onroleNames*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelroleNamesBase): Table[cint,seq[byte]]) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelroleNamesBase): Table[cint,seq[byte]]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_roleNames(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_roleNames(self: ptr cQSortFilterProxyModel, slot: int): struct_miqt_map {.exportc: "miqt_exec_callback_QSortFilterProxyModel_roleNames ".} =
  type Cb = proc(super: QSortFilterProxyModelroleNamesBase): Table[cint,seq[byte]]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_roleNames(QSortFilterProxyModel(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_Keys_CArray = newSeq[cint](len(virtualReturn))
  var virtualReturn_Values_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  var virtualReturn_ctr = 0
  for virtualReturnk, virtualReturnv in virtualReturn:
    virtualReturn_Keys_CArray[virtualReturn_ctr] = virtualReturn_k
    virtualReturn_Values_CArray[virtualReturn_ctr] = struct_miqt_string(data: cast[cstring](if len(virtualReturn_v) == 0: nil else: unsafeAddr virtualReturn_v[0]), len: csize_t(len(virtualReturn_v)))
    virtualReturn_ctr += 1


  struct_miqt_map(len: csize_t(len(virtualReturn)),keys: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Keys_CArray[0]), values: if len(virtualReturn) == 0: nil else: addr(virtualReturn_Values_CArray[0]),)
proc callVirtualBase_moveRows(self: QSortFilterProxyModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =


  fQSortFilterProxyModel_virtualbase_moveRows(self.h, sourceParent.h, sourceRow, count, destinationParent.h, destinationChild)

type QSortFilterProxyModelmoveRowsBase* = proc(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
proc onmoveRows*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_moveRows(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_moveRows(self: ptr cQSortFilterProxyModel, slot: int, sourceParent: pointer, sourceRow: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_moveRows ".} =
  type Cb = proc(super: QSortFilterProxyModelmoveRowsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceRow: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveRows(QSortFilterProxyModel(h: self), sourceParent, sourceRow, count, destinationParent, destinationChild)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceParent)

  let slotval2 = sourceRow

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_moveColumns(self: QSortFilterProxyModel, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool =


  fQSortFilterProxyModel_virtualbase_moveColumns(self.h, sourceParent.h, sourceColumn, count, destinationParent.h, destinationChild)

type QSortFilterProxyModelmoveColumnsBase* = proc(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
proc onmoveColumns*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_moveColumns(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_moveColumns(self: ptr cQSortFilterProxyModel, slot: int, sourceParent: pointer, sourceColumn: cint, count: cint, destinationParent: pointer, destinationChild: cint): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_moveColumns ".} =
  type Cb = proc(super: QSortFilterProxyModelmoveColumnsBase, sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceParent: gen_qabstractitemmodel.QModelIndex, sourceColumn: cint, count: cint, destinationParent: gen_qabstractitemmodel.QModelIndex, destinationChild: cint): auto =
    callVirtualBase_moveColumns(QSortFilterProxyModel(h: self), sourceParent, sourceColumn, count, destinationParent, destinationChild)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: sourceParent)

  let slotval2 = sourceColumn

  let slotval3 = count

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: destinationParent)

  let slotval5 = destinationChild


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4, slotval5 )

  virtualReturn
proc callVirtualBase_multiData(self: QSortFilterProxyModel, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void =


  fQSortFilterProxyModel_virtualbase_multiData(self.h, index.h, roleDataSpan.h)

type QSortFilterProxyModelmultiDataBase* = proc(index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
proc onmultiData*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelmultiDataBase, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelmultiDataBase, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_multiData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_multiData(self: ptr cQSortFilterProxyModel, slot: int, index: pointer, roleDataSpan: pointer): void {.exportc: "miqt_exec_callback_QSortFilterProxyModel_multiData ".} =
  type Cb = proc(super: QSortFilterProxyModelmultiDataBase, index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, roleDataSpan: gen_qabstractitemmodel.QModelRoleDataSpan): auto =
    callVirtualBase_multiData(QSortFilterProxyModel(h: self), index, roleDataSpan)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = gen_qabstractitemmodel.QModelRoleDataSpan(h: roleDataSpan)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_resetInternalData(self: QSortFilterProxyModel, ): void =


  fQSortFilterProxyModel_virtualbase_resetInternalData(self.h)

type QSortFilterProxyModelresetInternalDataBase* = proc(): void
proc onresetInternalData*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelresetInternalDataBase): void) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelresetInternalDataBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_resetInternalData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_resetInternalData(self: ptr cQSortFilterProxyModel, slot: int): void {.exportc: "miqt_exec_callback_QSortFilterProxyModel_resetInternalData ".} =
  type Cb = proc(super: QSortFilterProxyModelresetInternalDataBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_resetInternalData(QSortFilterProxyModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_event(self: QSortFilterProxyModel, event: gen_qcoreevent.QEvent): bool =


  fQSortFilterProxyModel_virtualbase_event(self.h, event.h)

type QSortFilterProxyModeleventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModeleventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModeleventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_event(self: ptr cQSortFilterProxyModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_event ".} =
  type Cb = proc(super: QSortFilterProxyModeleventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSortFilterProxyModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSortFilterProxyModel, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSortFilterProxyModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSortFilterProxyModeleventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_eventFilter(self: ptr cQSortFilterProxyModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSortFilterProxyModel_eventFilter ".} =
  type Cb = proc(super: QSortFilterProxyModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSortFilterProxyModel(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSortFilterProxyModel, event: gen_qcoreevent.QTimerEvent): void =


  fQSortFilterProxyModel_virtualbase_timerEvent(self.h, event.h)

type QSortFilterProxyModeltimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_timerEvent(self: ptr cQSortFilterProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSortFilterProxyModel_timerEvent ".} =
  type Cb = proc(super: QSortFilterProxyModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSortFilterProxyModel(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSortFilterProxyModel, event: gen_qcoreevent.QChildEvent): void =


  fQSortFilterProxyModel_virtualbase_childEvent(self.h, event.h)

type QSortFilterProxyModelchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_childEvent(self: ptr cQSortFilterProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSortFilterProxyModel_childEvent ".} =
  type Cb = proc(super: QSortFilterProxyModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSortFilterProxyModel(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSortFilterProxyModel, event: gen_qcoreevent.QEvent): void =


  fQSortFilterProxyModel_virtualbase_customEvent(self.h, event.h)

type QSortFilterProxyModelcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_customEvent(self: ptr cQSortFilterProxyModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSortFilterProxyModel_customEvent ".} =
  type Cb = proc(super: QSortFilterProxyModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSortFilterProxyModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSortFilterProxyModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQSortFilterProxyModel_virtualbase_connectNotify(self.h, signal.h)

type QSortFilterProxyModelconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_connectNotify(self: ptr cQSortFilterProxyModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSortFilterProxyModel_connectNotify ".} =
  type Cb = proc(super: QSortFilterProxyModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSortFilterProxyModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSortFilterProxyModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQSortFilterProxyModel_virtualbase_disconnectNotify(self.h, signal.h)

type QSortFilterProxyModeldisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSortFilterProxyModel, slot: proc(super: QSortFilterProxyModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSortFilterProxyModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSortFilterProxyModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSortFilterProxyModel_disconnectNotify(self: ptr cQSortFilterProxyModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSortFilterProxyModel_disconnectNotify ".} =
  type Cb = proc(super: QSortFilterProxyModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSortFilterProxyModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QSortFilterProxyModel): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSortFilterProxyModel_staticMetaObject())
proc delete*(self: QSortFilterProxyModel) =
  fcQSortFilterProxyModel_delete(self.h)
