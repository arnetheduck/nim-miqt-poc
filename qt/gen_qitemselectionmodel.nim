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
{.compile("gen_qitemselectionmodel.cpp", cflags).}


type QItemSelectionModelSelectionFlag* = cint
const
  QItemSelectionModelNoUpdate* = 0
  QItemSelectionModelClear* = 1
  QItemSelectionModelSelect* = 2
  QItemSelectionModelDeselect* = 4
  QItemSelectionModelToggle* = 8
  QItemSelectionModelCurrent* = 16
  QItemSelectionModelRows* = 32
  QItemSelectionModelColumns* = 64
  QItemSelectionModelSelectCurrent* = 18
  QItemSelectionModelToggleCurrent* = 24
  QItemSelectionModelClearAndSelect* = 3



import gen_qitemselectionmodel_types
export gen_qitemselectionmodel_types

import
  gen_qabstractitemmodel,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qabstractitemmodel,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQItemSelectionRange*{.exportc: "QItemSelectionRange", incompleteStruct.} = object
type cQItemSelectionModel*{.exportc: "QItemSelectionModel", incompleteStruct.} = object
type cQItemSelection*{.exportc: "QItemSelection", incompleteStruct.} = object

proc fcQItemSelectionRange_new(): ptr cQItemSelectionRange {.importc: "QItemSelectionRange_new".}
proc fcQItemSelectionRange_new2(other: pointer): ptr cQItemSelectionRange {.importc: "QItemSelectionRange_new2".}
proc fcQItemSelectionRange_new3(topL: pointer, bottomR: pointer): ptr cQItemSelectionRange {.importc: "QItemSelectionRange_new3".}
proc fcQItemSelectionRange_new4(index: pointer): ptr cQItemSelectionRange {.importc: "QItemSelectionRange_new4".}
proc fcQItemSelectionRange_operatorAssign(self: pointer, other: pointer): void {.importc: "QItemSelectionRange_operatorAssign".}
proc fcQItemSelectionRange_swap(self: pointer, other: pointer): void {.importc: "QItemSelectionRange_swap".}
proc fcQItemSelectionRange_top(self: pointer, ): cint {.importc: "QItemSelectionRange_top".}
proc fcQItemSelectionRange_left(self: pointer, ): cint {.importc: "QItemSelectionRange_left".}
proc fcQItemSelectionRange_bottom(self: pointer, ): cint {.importc: "QItemSelectionRange_bottom".}
proc fcQItemSelectionRange_right(self: pointer, ): cint {.importc: "QItemSelectionRange_right".}
proc fcQItemSelectionRange_width(self: pointer, ): cint {.importc: "QItemSelectionRange_width".}
proc fcQItemSelectionRange_height(self: pointer, ): cint {.importc: "QItemSelectionRange_height".}
proc fcQItemSelectionRange_topLeft(self: pointer, ): pointer {.importc: "QItemSelectionRange_topLeft".}
proc fcQItemSelectionRange_bottomRight(self: pointer, ): pointer {.importc: "QItemSelectionRange_bottomRight".}
proc fcQItemSelectionRange_parent(self: pointer, ): pointer {.importc: "QItemSelectionRange_parent".}
proc fcQItemSelectionRange_model(self: pointer, ): pointer {.importc: "QItemSelectionRange_model".}
proc fcQItemSelectionRange_contains(self: pointer, index: pointer): bool {.importc: "QItemSelectionRange_contains".}
proc fcQItemSelectionRange_contains2(self: pointer, row: cint, column: cint, parentIndex: pointer): bool {.importc: "QItemSelectionRange_contains2".}
proc fcQItemSelectionRange_intersects(self: pointer, other: pointer): bool {.importc: "QItemSelectionRange_intersects".}
proc fcQItemSelectionRange_intersected(self: pointer, other: pointer): pointer {.importc: "QItemSelectionRange_intersected".}
proc fcQItemSelectionRange_operatorEqual(self: pointer, other: pointer): bool {.importc: "QItemSelectionRange_operatorEqual".}
proc fcQItemSelectionRange_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QItemSelectionRange_operatorNotEqual".}
proc fcQItemSelectionRange_operatorLesser(self: pointer, other: pointer): bool {.importc: "QItemSelectionRange_operatorLesser".}
proc fcQItemSelectionRange_isValid(self: pointer, ): bool {.importc: "QItemSelectionRange_isValid".}
proc fcQItemSelectionRange_isEmpty(self: pointer, ): bool {.importc: "QItemSelectionRange_isEmpty".}
proc fcQItemSelectionRange_indexes(self: pointer, ): struct_miqt_array {.importc: "QItemSelectionRange_indexes".}
proc fcQItemSelectionRange_delete(self: pointer) {.importc: "QItemSelectionRange_delete".}
proc fcQItemSelectionModel_new(): ptr cQItemSelectionModel {.importc: "QItemSelectionModel_new".}
proc fcQItemSelectionModel_new2(model: pointer, parent: pointer): ptr cQItemSelectionModel {.importc: "QItemSelectionModel_new2".}
proc fcQItemSelectionModel_new3(model: pointer): ptr cQItemSelectionModel {.importc: "QItemSelectionModel_new3".}
proc fcQItemSelectionModel_metaObject(self: pointer, ): pointer {.importc: "QItemSelectionModel_metaObject".}
proc fcQItemSelectionModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QItemSelectionModel_metacast".}
proc fcQItemSelectionModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QItemSelectionModel_metacall".}
proc fcQItemSelectionModel_tr(s: cstring): struct_miqt_string {.importc: "QItemSelectionModel_tr".}
proc fcQItemSelectionModel_trUtf8(s: cstring): struct_miqt_string {.importc: "QItemSelectionModel_trUtf8".}
proc fcQItemSelectionModel_currentIndex(self: pointer, ): pointer {.importc: "QItemSelectionModel_currentIndex".}
proc fcQItemSelectionModel_isSelected(self: pointer, index: pointer): bool {.importc: "QItemSelectionModel_isSelected".}
proc fcQItemSelectionModel_isRowSelected(self: pointer, row: cint): bool {.importc: "QItemSelectionModel_isRowSelected".}
proc fcQItemSelectionModel_isColumnSelected(self: pointer, column: cint): bool {.importc: "QItemSelectionModel_isColumnSelected".}
proc fcQItemSelectionModel_rowIntersectsSelection(self: pointer, row: cint): bool {.importc: "QItemSelectionModel_rowIntersectsSelection".}
proc fcQItemSelectionModel_columnIntersectsSelection(self: pointer, column: cint): bool {.importc: "QItemSelectionModel_columnIntersectsSelection".}
proc fcQItemSelectionModel_hasSelection(self: pointer, ): bool {.importc: "QItemSelectionModel_hasSelection".}
proc fcQItemSelectionModel_selectedIndexes(self: pointer, ): struct_miqt_array {.importc: "QItemSelectionModel_selectedIndexes".}
proc fcQItemSelectionModel_selectedRows(self: pointer, ): struct_miqt_array {.importc: "QItemSelectionModel_selectedRows".}
proc fcQItemSelectionModel_selectedColumns(self: pointer, ): struct_miqt_array {.importc: "QItemSelectionModel_selectedColumns".}
proc fcQItemSelectionModel_selection(self: pointer, ): pointer {.importc: "QItemSelectionModel_selection".}
proc fcQItemSelectionModel_model(self: pointer, ): pointer {.importc: "QItemSelectionModel_model".}
proc fcQItemSelectionModel_model2(self: pointer, ): pointer {.importc: "QItemSelectionModel_model2".}
proc fcQItemSelectionModel_setModel(self: pointer, model: pointer): void {.importc: "QItemSelectionModel_setModel".}
proc fcQItemSelectionModel_setCurrentIndex(self: pointer, index: pointer, command: cint): void {.importc: "QItemSelectionModel_setCurrentIndex".}
proc fcQItemSelectionModel_select(self: pointer, index: pointer, command: cint): void {.importc: "QItemSelectionModel_select".}
proc fcQItemSelectionModel_select2(self: pointer, selection: pointer, command: cint): void {.importc: "QItemSelectionModel_select2".}
proc fcQItemSelectionModel_clear(self: pointer, ): void {.importc: "QItemSelectionModel_clear".}
proc fcQItemSelectionModel_reset(self: pointer, ): void {.importc: "QItemSelectionModel_reset".}
proc fcQItemSelectionModel_clearSelection(self: pointer, ): void {.importc: "QItemSelectionModel_clearSelection".}
proc fcQItemSelectionModel_clearCurrentIndex(self: pointer, ): void {.importc: "QItemSelectionModel_clearCurrentIndex".}
proc fcQItemSelectionModel_selectionChanged(self: pointer, selected: pointer, deselected: pointer): void {.importc: "QItemSelectionModel_selectionChanged".}
proc fQItemSelectionModel_connect_selectionChanged(self: pointer, slot: int) {.importc: "QItemSelectionModel_connect_selectionChanged".}
proc fcQItemSelectionModel_currentChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QItemSelectionModel_currentChanged".}
proc fQItemSelectionModel_connect_currentChanged(self: pointer, slot: int) {.importc: "QItemSelectionModel_connect_currentChanged".}
proc fcQItemSelectionModel_currentRowChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QItemSelectionModel_currentRowChanged".}
proc fQItemSelectionModel_connect_currentRowChanged(self: pointer, slot: int) {.importc: "QItemSelectionModel_connect_currentRowChanged".}
proc fcQItemSelectionModel_currentColumnChanged(self: pointer, current: pointer, previous: pointer): void {.importc: "QItemSelectionModel_currentColumnChanged".}
proc fQItemSelectionModel_connect_currentColumnChanged(self: pointer, slot: int) {.importc: "QItemSelectionModel_connect_currentColumnChanged".}
proc fcQItemSelectionModel_modelChanged(self: pointer, model: pointer): void {.importc: "QItemSelectionModel_modelChanged".}
proc fQItemSelectionModel_connect_modelChanged(self: pointer, slot: int) {.importc: "QItemSelectionModel_connect_modelChanged".}
proc fcQItemSelectionModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QItemSelectionModel_tr2".}
proc fcQItemSelectionModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QItemSelectionModel_tr3".}
proc fcQItemSelectionModel_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QItemSelectionModel_trUtf82".}
proc fcQItemSelectionModel_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QItemSelectionModel_trUtf83".}
proc fcQItemSelectionModel_isRowSelected2(self: pointer, row: cint, parent: pointer): bool {.importc: "QItemSelectionModel_isRowSelected2".}
proc fcQItemSelectionModel_isColumnSelected2(self: pointer, column: cint, parent: pointer): bool {.importc: "QItemSelectionModel_isColumnSelected2".}
proc fcQItemSelectionModel_rowIntersectsSelection2(self: pointer, row: cint, parent: pointer): bool {.importc: "QItemSelectionModel_rowIntersectsSelection2".}
proc fcQItemSelectionModel_columnIntersectsSelection2(self: pointer, column: cint, parent: pointer): bool {.importc: "QItemSelectionModel_columnIntersectsSelection2".}
proc fcQItemSelectionModel_selectedRows1(self: pointer, column: cint): struct_miqt_array {.importc: "QItemSelectionModel_selectedRows1".}
proc fcQItemSelectionModel_selectedColumns1(self: pointer, row: cint): struct_miqt_array {.importc: "QItemSelectionModel_selectedColumns1".}
proc fQItemSelectionModel_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QItemSelectionModel_virtualbase_metaObject".}
proc fcQItemSelectionModel_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_metaObject".}
proc fQItemSelectionModel_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QItemSelectionModel_virtualbase_metacast".}
proc fcQItemSelectionModel_override_virtual_metacast(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_metacast".}
proc fQItemSelectionModel_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QItemSelectionModel_virtualbase_metacall".}
proc fcQItemSelectionModel_override_virtual_metacall(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_metacall".}
proc fQItemSelectionModel_virtualbase_setCurrentIndex(self: pointer, index: pointer, command: cint): void{.importc: "QItemSelectionModel_virtualbase_setCurrentIndex".}
proc fcQItemSelectionModel_override_virtual_setCurrentIndex(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_setCurrentIndex".}
proc fQItemSelectionModel_virtualbase_select(self: pointer, index: pointer, command: cint): void{.importc: "QItemSelectionModel_virtualbase_select".}
proc fcQItemSelectionModel_override_virtual_select(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_select".}
proc fQItemSelectionModel_virtualbase_select2(self: pointer, selection: pointer, command: cint): void{.importc: "QItemSelectionModel_virtualbase_select2".}
proc fcQItemSelectionModel_override_virtual_select2(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_select2".}
proc fQItemSelectionModel_virtualbase_clear(self: pointer, ): void{.importc: "QItemSelectionModel_virtualbase_clear".}
proc fcQItemSelectionModel_override_virtual_clear(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_clear".}
proc fQItemSelectionModel_virtualbase_reset(self: pointer, ): void{.importc: "QItemSelectionModel_virtualbase_reset".}
proc fcQItemSelectionModel_override_virtual_reset(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_reset".}
proc fQItemSelectionModel_virtualbase_clearCurrentIndex(self: pointer, ): void{.importc: "QItemSelectionModel_virtualbase_clearCurrentIndex".}
proc fcQItemSelectionModel_override_virtual_clearCurrentIndex(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_clearCurrentIndex".}
proc fQItemSelectionModel_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QItemSelectionModel_virtualbase_event".}
proc fcQItemSelectionModel_override_virtual_event(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_event".}
proc fQItemSelectionModel_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QItemSelectionModel_virtualbase_eventFilter".}
proc fcQItemSelectionModel_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_eventFilter".}
proc fQItemSelectionModel_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QItemSelectionModel_virtualbase_timerEvent".}
proc fcQItemSelectionModel_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_timerEvent".}
proc fQItemSelectionModel_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QItemSelectionModel_virtualbase_childEvent".}
proc fcQItemSelectionModel_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_childEvent".}
proc fQItemSelectionModel_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QItemSelectionModel_virtualbase_customEvent".}
proc fcQItemSelectionModel_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_customEvent".}
proc fQItemSelectionModel_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QItemSelectionModel_virtualbase_connectNotify".}
proc fcQItemSelectionModel_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_connectNotify".}
proc fQItemSelectionModel_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QItemSelectionModel_virtualbase_disconnectNotify".}
proc fcQItemSelectionModel_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QItemSelectionModel_override_virtual_disconnectNotify".}
proc fcQItemSelectionModel_staticMetaObject(): pointer {.importc: "QItemSelectionModel_staticMetaObject".}
proc fcQItemSelectionModel_delete(self: pointer) {.importc: "QItemSelectionModel_delete".}
proc fcQItemSelection_new(): ptr cQItemSelection {.importc: "QItemSelection_new".}
proc fcQItemSelection_new2(topLeft: pointer, bottomRight: pointer): ptr cQItemSelection {.importc: "QItemSelection_new2".}
proc fcQItemSelection_select(self: pointer, topLeft: pointer, bottomRight: pointer): void {.importc: "QItemSelection_select".}
proc fcQItemSelection_contains(self: pointer, index: pointer): bool {.importc: "QItemSelection_contains".}
proc fcQItemSelection_indexes(self: pointer, ): struct_miqt_array {.importc: "QItemSelection_indexes".}
proc fcQItemSelection_merge(self: pointer, other: pointer, command: cint): void {.importc: "QItemSelection_merge".}
proc fcQItemSelection_split(range: pointer, other: pointer, resultVal: pointer): void {.importc: "QItemSelection_split".}
proc fcQItemSelection_operatorAssign(self: pointer, param1: pointer): void {.importc: "QItemSelection_operatorAssign".}
proc fcQItemSelection_delete(self: pointer) {.importc: "QItemSelection_delete".}


func init*(T: type QItemSelectionRange, h: ptr cQItemSelectionRange): QItemSelectionRange =
  T(h: h)
proc create*(T: type QItemSelectionRange, ): QItemSelectionRange =

  QItemSelectionRange.init(fcQItemSelectionRange_new())
proc create*(T: type QItemSelectionRange, other: QItemSelectionRange): QItemSelectionRange =

  QItemSelectionRange.init(fcQItemSelectionRange_new2(other.h))
proc create*(T: type QItemSelectionRange, topL: gen_qabstractitemmodel.QModelIndex, bottomR: gen_qabstractitemmodel.QModelIndex): QItemSelectionRange =

  QItemSelectionRange.init(fcQItemSelectionRange_new3(topL.h, bottomR.h))
proc create2*(T: type QItemSelectionRange, index: gen_qabstractitemmodel.QModelIndex): QItemSelectionRange =

  QItemSelectionRange.init(fcQItemSelectionRange_new4(index.h))
proc operatorAssign*(self: QItemSelectionRange, other: QItemSelectionRange): void =

  fcQItemSelectionRange_operatorAssign(self.h, other.h)

proc swap*(self: QItemSelectionRange, other: QItemSelectionRange): void =

  fcQItemSelectionRange_swap(self.h, other.h)

proc top*(self: QItemSelectionRange, ): cint =

  fcQItemSelectionRange_top(self.h)

proc left*(self: QItemSelectionRange, ): cint =

  fcQItemSelectionRange_left(self.h)

proc bottom*(self: QItemSelectionRange, ): cint =

  fcQItemSelectionRange_bottom(self.h)

proc right*(self: QItemSelectionRange, ): cint =

  fcQItemSelectionRange_right(self.h)

proc width*(self: QItemSelectionRange, ): cint =

  fcQItemSelectionRange_width(self.h)

proc height*(self: QItemSelectionRange, ): cint =

  fcQItemSelectionRange_height(self.h)

proc topLeft*(self: QItemSelectionRange, ): gen_qabstractitemmodel.QPersistentModelIndex =

  gen_qabstractitemmodel.QPersistentModelIndex(h: fcQItemSelectionRange_topLeft(self.h))

proc bottomRight*(self: QItemSelectionRange, ): gen_qabstractitemmodel.QPersistentModelIndex =

  gen_qabstractitemmodel.QPersistentModelIndex(h: fcQItemSelectionRange_bottomRight(self.h))

proc parent*(self: QItemSelectionRange, ): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQItemSelectionRange_parent(self.h))

proc model*(self: QItemSelectionRange, ): gen_qabstractitemmodel.QAbstractItemModel =

  gen_qabstractitemmodel.QAbstractItemModel(h: fcQItemSelectionRange_model(self.h))

proc contains*(self: QItemSelectionRange, index: gen_qabstractitemmodel.QModelIndex): bool =

  fcQItemSelectionRange_contains(self.h, index.h)

proc contains2*(self: QItemSelectionRange, row: cint, column: cint, parentIndex: gen_qabstractitemmodel.QModelIndex): bool =

  fcQItemSelectionRange_contains2(self.h, row, column, parentIndex.h)

proc intersects*(self: QItemSelectionRange, other: QItemSelectionRange): bool =

  fcQItemSelectionRange_intersects(self.h, other.h)

proc intersected*(self: QItemSelectionRange, other: QItemSelectionRange): QItemSelectionRange =

  QItemSelectionRange(h: fcQItemSelectionRange_intersected(self.h, other.h))

proc operatorEqual*(self: QItemSelectionRange, other: QItemSelectionRange): bool =

  fcQItemSelectionRange_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QItemSelectionRange, other: QItemSelectionRange): bool =

  fcQItemSelectionRange_operatorNotEqual(self.h, other.h)

proc operatorLesser*(self: QItemSelectionRange, other: QItemSelectionRange): bool =

  fcQItemSelectionRange_operatorLesser(self.h, other.h)

proc isValid*(self: QItemSelectionRange, ): bool =

  fcQItemSelectionRange_isValid(self.h)

proc isEmpty*(self: QItemSelectionRange, ): bool =

  fcQItemSelectionRange_isEmpty(self.h)

proc indexes*(self: QItemSelectionRange, ): seq[gen_qabstractitemmodel.QModelIndex] =

  var v_ma = fcQItemSelectionRange_indexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

proc delete*(self: QItemSelectionRange) =
  fcQItemSelectionRange_delete(self.h)

func init*(T: type QItemSelectionModel, h: ptr cQItemSelectionModel): QItemSelectionModel =
  T(h: h)
proc create*(T: type QItemSelectionModel, ): QItemSelectionModel =

  QItemSelectionModel.init(fcQItemSelectionModel_new())
proc create*(T: type QItemSelectionModel, model: gen_qabstractitemmodel.QAbstractItemModel, parent: gen_qobject.QObject): QItemSelectionModel =

  QItemSelectionModel.init(fcQItemSelectionModel_new2(model.h, parent.h))
proc create*(T: type QItemSelectionModel, model: gen_qabstractitemmodel.QAbstractItemModel): QItemSelectionModel =

  QItemSelectionModel.init(fcQItemSelectionModel_new3(model.h))
proc metaObject*(self: QItemSelectionModel, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQItemSelectionModel_metaObject(self.h))

proc metacast*(self: QItemSelectionModel, param1: cstring): pointer =

  fcQItemSelectionModel_metacast(self.h, param1)

proc metacall*(self: QItemSelectionModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQItemSelectionModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QItemSelectionModel, s: cstring): string =

  let v_ms = fcQItemSelectionModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QItemSelectionModel, s: cstring): string =

  let v_ms = fcQItemSelectionModel_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc currentIndex*(self: QItemSelectionModel, ): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQItemSelectionModel_currentIndex(self.h))

proc isSelected*(self: QItemSelectionModel, index: gen_qabstractitemmodel.QModelIndex): bool =

  fcQItemSelectionModel_isSelected(self.h, index.h)

proc isRowSelected*(self: QItemSelectionModel, row: cint): bool =

  fcQItemSelectionModel_isRowSelected(self.h, row)

proc isColumnSelected*(self: QItemSelectionModel, column: cint): bool =

  fcQItemSelectionModel_isColumnSelected(self.h, column)

proc rowIntersectsSelection*(self: QItemSelectionModel, row: cint): bool =

  fcQItemSelectionModel_rowIntersectsSelection(self.h, row)

proc columnIntersectsSelection*(self: QItemSelectionModel, column: cint): bool =

  fcQItemSelectionModel_columnIntersectsSelection(self.h, column)

proc hasSelection*(self: QItemSelectionModel, ): bool =

  fcQItemSelectionModel_hasSelection(self.h)

proc selectedIndexes*(self: QItemSelectionModel, ): seq[gen_qabstractitemmodel.QModelIndex] =

  var v_ma = fcQItemSelectionModel_selectedIndexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

proc selectedRows*(self: QItemSelectionModel, ): seq[gen_qabstractitemmodel.QModelIndex] =

  var v_ma = fcQItemSelectionModel_selectedRows(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

proc selectedColumns*(self: QItemSelectionModel, ): seq[gen_qabstractitemmodel.QModelIndex] =

  var v_ma = fcQItemSelectionModel_selectedColumns(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

proc selection*(self: QItemSelectionModel, ): QItemSelection =

  QItemSelection(h: fcQItemSelectionModel_selection(self.h))

proc model*(self: QItemSelectionModel, ): gen_qabstractitemmodel.QAbstractItemModel =

  gen_qabstractitemmodel.QAbstractItemModel(h: fcQItemSelectionModel_model(self.h))

proc model2*(self: QItemSelectionModel, ): gen_qabstractitemmodel.QAbstractItemModel =

  gen_qabstractitemmodel.QAbstractItemModel(h: fcQItemSelectionModel_model2(self.h))

proc setModel*(self: QItemSelectionModel, model: gen_qabstractitemmodel.QAbstractItemModel): void =

  fcQItemSelectionModel_setModel(self.h, model.h)

proc setCurrentIndex*(self: QItemSelectionModel, index: gen_qabstractitemmodel.QModelIndex, command: QItemSelectionModelSelectionFlag): void =

  fcQItemSelectionModel_setCurrentIndex(self.h, index.h, cint(command))

proc select*(self: QItemSelectionModel, index: gen_qabstractitemmodel.QModelIndex, command: QItemSelectionModelSelectionFlag): void =

  fcQItemSelectionModel_select(self.h, index.h, cint(command))

proc select2*(self: QItemSelectionModel, selection: QItemSelection, command: QItemSelectionModelSelectionFlag): void =

  fcQItemSelectionModel_select2(self.h, selection.h, cint(command))

proc clear*(self: QItemSelectionModel, ): void =

  fcQItemSelectionModel_clear(self.h)

proc reset*(self: QItemSelectionModel, ): void =

  fcQItemSelectionModel_reset(self.h)

proc clearSelection*(self: QItemSelectionModel, ): void =

  fcQItemSelectionModel_clearSelection(self.h)

proc clearCurrentIndex*(self: QItemSelectionModel, ): void =

  fcQItemSelectionModel_clearCurrentIndex(self.h)

proc selectionChanged*(self: QItemSelectionModel, selected: QItemSelection, deselected: QItemSelection): void =

  fcQItemSelectionModel_selectionChanged(self.h, selected.h, deselected.h)

proc miqt_exec_callback_QItemSelectionModel_selectionChanged(slot: int, selected: pointer, deselected: pointer) {.exportc.} =
  type Cb = proc(selected: QItemSelection, deselected: QItemSelection)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QItemSelection(h: selected)

  let slotval2 = QItemSelection(h: deselected)


  nimfunc[](slotval1, slotval2)

proc onselectionChanged*(self: QItemSelectionModel, slot: proc(selected: QItemSelection, deselected: QItemSelection)) =
  type Cb = proc(selected: QItemSelection, deselected: QItemSelection)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQItemSelectionModel_connect_selectionChanged(self.h, cast[int](addr tmp[]))
proc currentChanged*(self: QItemSelectionModel, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void =

  fcQItemSelectionModel_currentChanged(self.h, current.h, previous.h)

proc miqt_exec_callback_QItemSelectionModel_currentChanged(slot: int, current: pointer, previous: pointer) {.exportc.} =
  type Cb = proc(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: previous)


  nimfunc[](slotval1, slotval2)

proc oncurrentChanged*(self: QItemSelectionModel, slot: proc(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex)) =
  type Cb = proc(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQItemSelectionModel_connect_currentChanged(self.h, cast[int](addr tmp[]))
proc currentRowChanged*(self: QItemSelectionModel, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void =

  fcQItemSelectionModel_currentRowChanged(self.h, current.h, previous.h)

proc miqt_exec_callback_QItemSelectionModel_currentRowChanged(slot: int, current: pointer, previous: pointer) {.exportc.} =
  type Cb = proc(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: previous)


  nimfunc[](slotval1, slotval2)

proc oncurrentRowChanged*(self: QItemSelectionModel, slot: proc(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex)) =
  type Cb = proc(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQItemSelectionModel_connect_currentRowChanged(self.h, cast[int](addr tmp[]))
proc currentColumnChanged*(self: QItemSelectionModel, current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex): void =

  fcQItemSelectionModel_currentColumnChanged(self.h, current.h, previous.h)

proc miqt_exec_callback_QItemSelectionModel_currentColumnChanged(slot: int, current: pointer, previous: pointer) {.exportc.} =
  type Cb = proc(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: current)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: previous)


  nimfunc[](slotval1, slotval2)

proc oncurrentColumnChanged*(self: QItemSelectionModel, slot: proc(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex)) =
  type Cb = proc(current: gen_qabstractitemmodel.QModelIndex, previous: gen_qabstractitemmodel.QModelIndex)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQItemSelectionModel_connect_currentColumnChanged(self.h, cast[int](addr tmp[]))
proc modelChanged*(self: QItemSelectionModel, model: gen_qabstractitemmodel.QAbstractItemModel): void =

  fcQItemSelectionModel_modelChanged(self.h, model.h)

proc miqt_exec_callback_QItemSelectionModel_modelChanged(slot: int, model: pointer) {.exportc.} =
  type Cb = proc(model: gen_qabstractitemmodel.QAbstractItemModel)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QAbstractItemModel(h: model)


  nimfunc[](slotval1)

proc onmodelChanged*(self: QItemSelectionModel, slot: proc(model: gen_qabstractitemmodel.QAbstractItemModel)) =
  type Cb = proc(model: gen_qabstractitemmodel.QAbstractItemModel)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQItemSelectionModel_connect_modelChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QItemSelectionModel, s: cstring, c: cstring): string =

  let v_ms = fcQItemSelectionModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QItemSelectionModel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQItemSelectionModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QItemSelectionModel, s: cstring, c: cstring): string =

  let v_ms = fcQItemSelectionModel_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QItemSelectionModel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQItemSelectionModel_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isRowSelected2*(self: QItemSelectionModel, row: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQItemSelectionModel_isRowSelected2(self.h, row, parent.h)

proc isColumnSelected2*(self: QItemSelectionModel, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQItemSelectionModel_isColumnSelected2(self.h, column, parent.h)

proc rowIntersectsSelection2*(self: QItemSelectionModel, row: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQItemSelectionModel_rowIntersectsSelection2(self.h, row, parent.h)

proc columnIntersectsSelection2*(self: QItemSelectionModel, column: cint, parent: gen_qabstractitemmodel.QModelIndex): bool =

  fcQItemSelectionModel_columnIntersectsSelection2(self.h, column, parent.h)

proc selectedRows1*(self: QItemSelectionModel, column: cint): seq[gen_qabstractitemmodel.QModelIndex] =

  var v_ma = fcQItemSelectionModel_selectedRows1(self.h, column)
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

proc selectedColumns1*(self: QItemSelectionModel, row: cint): seq[gen_qabstractitemmodel.QModelIndex] =

  var v_ma = fcQItemSelectionModel_selectedColumns1(self.h, row)
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

proc callVirtualBase_metaObject(self: QItemSelectionModel, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQItemSelectionModel_virtualbase_metaObject(self.h))

type QItemSelectionModelmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QItemSelectionModel, slot: proc(super: QItemSelectionModelmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QItemSelectionModelmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_metaObject(self: ptr cQItemSelectionModel, slot: int): pointer {.exportc: "miqt_exec_callback_QItemSelectionModel_metaObject ".} =
  type Cb = proc(super: QItemSelectionModelmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QItemSelectionModel(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QItemSelectionModel, param1: cstring): pointer =


  fQItemSelectionModel_virtualbase_metacast(self.h, param1)

type QItemSelectionModelmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QItemSelectionModel, slot: proc(super: QItemSelectionModelmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QItemSelectionModelmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_metacast(self: ptr cQItemSelectionModel, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QItemSelectionModel_metacast ".} =
  type Cb = proc(super: QItemSelectionModelmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QItemSelectionModel(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QItemSelectionModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQItemSelectionModel_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QItemSelectionModelmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QItemSelectionModel, slot: proc(super: QItemSelectionModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QItemSelectionModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_metacall(self: ptr cQItemSelectionModel, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QItemSelectionModel_metacall ".} =
  type Cb = proc(super: QItemSelectionModelmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QItemSelectionModel(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setCurrentIndex(self: QItemSelectionModel, index: gen_qabstractitemmodel.QModelIndex, command: QItemSelectionModelSelectionFlag): void =


  fQItemSelectionModel_virtualbase_setCurrentIndex(self.h, index.h, cint(command))

type QItemSelectionModelsetCurrentIndexBase* = proc(index: gen_qabstractitemmodel.QModelIndex, command: QItemSelectionModelSelectionFlag): void
proc onsetCurrentIndex*(self: QItemSelectionModel, slot: proc(super: QItemSelectionModelsetCurrentIndexBase, index: gen_qabstractitemmodel.QModelIndex, command: QItemSelectionModelSelectionFlag): void) =
  # TODO check subclass
  type Cb = proc(super: QItemSelectionModelsetCurrentIndexBase, index: gen_qabstractitemmodel.QModelIndex, command: QItemSelectionModelSelectionFlag): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_setCurrentIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_setCurrentIndex(self: ptr cQItemSelectionModel, slot: int, index: pointer, command: cint): void {.exportc: "miqt_exec_callback_QItemSelectionModel_setCurrentIndex ".} =
  type Cb = proc(super: QItemSelectionModelsetCurrentIndexBase, index: gen_qabstractitemmodel.QModelIndex, command: QItemSelectionModelSelectionFlag): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, command: QItemSelectionModelSelectionFlag): auto =
    callVirtualBase_setCurrentIndex(QItemSelectionModel(h: self), index, command)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = QItemSelectionModelSelectionFlag(command)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_select(self: QItemSelectionModel, index: gen_qabstractitemmodel.QModelIndex, command: QItemSelectionModelSelectionFlag): void =


  fQItemSelectionModel_virtualbase_select(self.h, index.h, cint(command))

type QItemSelectionModelselectBase* = proc(index: gen_qabstractitemmodel.QModelIndex, command: QItemSelectionModelSelectionFlag): void
proc onselect*(self: QItemSelectionModel, slot: proc(super: QItemSelectionModelselectBase, index: gen_qabstractitemmodel.QModelIndex, command: QItemSelectionModelSelectionFlag): void) =
  # TODO check subclass
  type Cb = proc(super: QItemSelectionModelselectBase, index: gen_qabstractitemmodel.QModelIndex, command: QItemSelectionModelSelectionFlag): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_select(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_select(self: ptr cQItemSelectionModel, slot: int, index: pointer, command: cint): void {.exportc: "miqt_exec_callback_QItemSelectionModel_select ".} =
  type Cb = proc(super: QItemSelectionModelselectBase, index: gen_qabstractitemmodel.QModelIndex, command: QItemSelectionModelSelectionFlag): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex, command: QItemSelectionModelSelectionFlag): auto =
    callVirtualBase_select(QItemSelectionModel(h: self), index, command)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)

  let slotval2 = QItemSelectionModelSelectionFlag(command)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_select2(self: QItemSelectionModel, selection: QItemSelection, command: QItemSelectionModelSelectionFlag): void =


  fQItemSelectionModel_virtualbase_select2(self.h, selection.h, cint(command))

type QItemSelectionModelselect2Base* = proc(selection: QItemSelection, command: QItemSelectionModelSelectionFlag): void
proc onselect2*(self: QItemSelectionModel, slot: proc(super: QItemSelectionModelselect2Base, selection: QItemSelection, command: QItemSelectionModelSelectionFlag): void) =
  # TODO check subclass
  type Cb = proc(super: QItemSelectionModelselect2Base, selection: QItemSelection, command: QItemSelectionModelSelectionFlag): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_select2(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_select2(self: ptr cQItemSelectionModel, slot: int, selection: pointer, command: cint): void {.exportc: "miqt_exec_callback_QItemSelectionModel_select2 ".} =
  type Cb = proc(super: QItemSelectionModelselect2Base, selection: QItemSelection, command: QItemSelectionModelSelectionFlag): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(selection: QItemSelection, command: QItemSelectionModelSelectionFlag): auto =
    callVirtualBase_select2(QItemSelectionModel(h: self), selection, command)
  let slotval1 = QItemSelection(h: selection)

  let slotval2 = QItemSelectionModelSelectionFlag(command)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_clear(self: QItemSelectionModel, ): void =


  fQItemSelectionModel_virtualbase_clear(self.h)

type QItemSelectionModelclearBase* = proc(): void
proc onclear*(self: QItemSelectionModel, slot: proc(super: QItemSelectionModelclearBase): void) =
  # TODO check subclass
  type Cb = proc(super: QItemSelectionModelclearBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_clear(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_clear(self: ptr cQItemSelectionModel, slot: int): void {.exportc: "miqt_exec_callback_QItemSelectionModel_clear ".} =
  type Cb = proc(super: QItemSelectionModelclearBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clear(QItemSelectionModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_reset(self: QItemSelectionModel, ): void =


  fQItemSelectionModel_virtualbase_reset(self.h)

type QItemSelectionModelresetBase* = proc(): void
proc onreset*(self: QItemSelectionModel, slot: proc(super: QItemSelectionModelresetBase): void) =
  # TODO check subclass
  type Cb = proc(super: QItemSelectionModelresetBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_reset(self: ptr cQItemSelectionModel, slot: int): void {.exportc: "miqt_exec_callback_QItemSelectionModel_reset ".} =
  type Cb = proc(super: QItemSelectionModelresetBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QItemSelectionModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_clearCurrentIndex(self: QItemSelectionModel, ): void =


  fQItemSelectionModel_virtualbase_clearCurrentIndex(self.h)

type QItemSelectionModelclearCurrentIndexBase* = proc(): void
proc onclearCurrentIndex*(self: QItemSelectionModel, slot: proc(super: QItemSelectionModelclearCurrentIndexBase): void) =
  # TODO check subclass
  type Cb = proc(super: QItemSelectionModelclearCurrentIndexBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_clearCurrentIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_clearCurrentIndex(self: ptr cQItemSelectionModel, slot: int): void {.exportc: "miqt_exec_callback_QItemSelectionModel_clearCurrentIndex ".} =
  type Cb = proc(super: QItemSelectionModelclearCurrentIndexBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clearCurrentIndex(QItemSelectionModel(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_event(self: QItemSelectionModel, event: gen_qcoreevent.QEvent): bool =


  fQItemSelectionModel_virtualbase_event(self.h, event.h)

type QItemSelectionModeleventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QItemSelectionModel, slot: proc(super: QItemSelectionModeleventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QItemSelectionModeleventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_event(self: ptr cQItemSelectionModel, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QItemSelectionModel_event ".} =
  type Cb = proc(super: QItemSelectionModeleventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QItemSelectionModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QItemSelectionModel, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQItemSelectionModel_virtualbase_eventFilter(self.h, watched.h, event.h)

type QItemSelectionModeleventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QItemSelectionModel, slot: proc(super: QItemSelectionModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QItemSelectionModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_eventFilter(self: ptr cQItemSelectionModel, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QItemSelectionModel_eventFilter ".} =
  type Cb = proc(super: QItemSelectionModeleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QItemSelectionModel(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QItemSelectionModel, event: gen_qcoreevent.QTimerEvent): void =


  fQItemSelectionModel_virtualbase_timerEvent(self.h, event.h)

type QItemSelectionModeltimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QItemSelectionModel, slot: proc(super: QItemSelectionModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QItemSelectionModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_timerEvent(self: ptr cQItemSelectionModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QItemSelectionModel_timerEvent ".} =
  type Cb = proc(super: QItemSelectionModeltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QItemSelectionModel(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QItemSelectionModel, event: gen_qcoreevent.QChildEvent): void =


  fQItemSelectionModel_virtualbase_childEvent(self.h, event.h)

type QItemSelectionModelchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QItemSelectionModel, slot: proc(super: QItemSelectionModelchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QItemSelectionModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_childEvent(self: ptr cQItemSelectionModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QItemSelectionModel_childEvent ".} =
  type Cb = proc(super: QItemSelectionModelchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QItemSelectionModel(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QItemSelectionModel, event: gen_qcoreevent.QEvent): void =


  fQItemSelectionModel_virtualbase_customEvent(self.h, event.h)

type QItemSelectionModelcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QItemSelectionModel, slot: proc(super: QItemSelectionModelcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QItemSelectionModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_customEvent(self: ptr cQItemSelectionModel, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QItemSelectionModel_customEvent ".} =
  type Cb = proc(super: QItemSelectionModelcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QItemSelectionModel(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QItemSelectionModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQItemSelectionModel_virtualbase_connectNotify(self.h, signal.h)

type QItemSelectionModelconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QItemSelectionModel, slot: proc(super: QItemSelectionModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QItemSelectionModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_connectNotify(self: ptr cQItemSelectionModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QItemSelectionModel_connectNotify ".} =
  type Cb = proc(super: QItemSelectionModelconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QItemSelectionModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QItemSelectionModel, signal: gen_qmetaobject.QMetaMethod): void =


  fQItemSelectionModel_virtualbase_disconnectNotify(self.h, signal.h)

type QItemSelectionModeldisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QItemSelectionModel, slot: proc(super: QItemSelectionModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QItemSelectionModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemSelectionModel_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemSelectionModel_disconnectNotify(self: ptr cQItemSelectionModel, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QItemSelectionModel_disconnectNotify ".} =
  type Cb = proc(super: QItemSelectionModeldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QItemSelectionModel(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QItemSelectionModel): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQItemSelectionModel_staticMetaObject())
proc delete*(self: QItemSelectionModel) =
  fcQItemSelectionModel_delete(self.h)

func init*(T: type QItemSelection, h: ptr cQItemSelection): QItemSelection =
  T(h: h)
proc create*(T: type QItemSelection, ): QItemSelection =

  QItemSelection.init(fcQItemSelection_new())
proc create*(T: type QItemSelection, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex): QItemSelection =

  QItemSelection.init(fcQItemSelection_new2(topLeft.h, bottomRight.h))
proc select*(self: QItemSelection, topLeft: gen_qabstractitemmodel.QModelIndex, bottomRight: gen_qabstractitemmodel.QModelIndex): void =

  fcQItemSelection_select(self.h, topLeft.h, bottomRight.h)

proc contains*(self: QItemSelection, index: gen_qabstractitemmodel.QModelIndex): bool =

  fcQItemSelection_contains(self.h, index.h)

proc indexes*(self: QItemSelection, ): seq[gen_qabstractitemmodel.QModelIndex] =

  var v_ma = fcQItemSelection_indexes(self.h)
  var vx_ret = newSeq[gen_qabstractitemmodel.QModelIndex](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractitemmodel.QModelIndex(h: v_outCast[i])
  vx_ret

proc merge*(self: QItemSelection, other: QItemSelection, command: QItemSelectionModelSelectionFlag): void =

  fcQItemSelection_merge(self.h, other.h, cint(command))

proc split*(_: type QItemSelection, range: QItemSelectionRange, other: QItemSelectionRange, resultVal: QItemSelection): void =

  fcQItemSelection_split(range.h, other.h, resultVal.h)

proc operatorAssign*(self: QItemSelection, param1: QItemSelection): void =

  fcQItemSelection_operatorAssign(self.h, param1.h)

proc delete*(self: QItemSelection) =
  fcQItemSelection_delete(self.h)
