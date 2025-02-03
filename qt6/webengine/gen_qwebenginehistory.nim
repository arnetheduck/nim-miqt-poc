import Qt6WebEngineWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6WebEngineWidgets")
{.compile("gen_qwebenginehistory.cpp", cflags).}


type QWebEngineHistoryModelRoles* = cint
const
  QWebEngineHistoryModelUrlRole* = 256
  QWebEngineHistoryModelTitleRole* = 257
  QWebEngineHistoryModelOffsetRole* = 258
  QWebEngineHistoryModelIconUrlRole* = 259



import gen_qwebenginehistory_types
export gen_qwebenginehistory_types

import
  gen_qabstractitemmodel,
  gen_qdatetime,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl,
  gen_qvariant,
  std/tables
export
  gen_qabstractitemmodel,
  gen_qdatetime,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl,
  gen_qvariant

type cQWebEngineHistoryItem*{.exportc: "QWebEngineHistoryItem", incompleteStruct.} = object
type cQWebEngineHistoryModel*{.exportc: "QWebEngineHistoryModel", incompleteStruct.} = object
type cQWebEngineHistory*{.exportc: "QWebEngineHistory", incompleteStruct.} = object

proc fcQWebEngineHistoryItem_new(other: pointer): ptr cQWebEngineHistoryItem {.importc: "QWebEngineHistoryItem_new".}
proc fcQWebEngineHistoryItem_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebEngineHistoryItem_operatorAssign".}
proc fcQWebEngineHistoryItem_originalUrl(self: pointer, ): pointer {.importc: "QWebEngineHistoryItem_originalUrl".}
proc fcQWebEngineHistoryItem_url(self: pointer, ): pointer {.importc: "QWebEngineHistoryItem_url".}
proc fcQWebEngineHistoryItem_title(self: pointer, ): struct_miqt_string {.importc: "QWebEngineHistoryItem_title".}
proc fcQWebEngineHistoryItem_lastVisited(self: pointer, ): pointer {.importc: "QWebEngineHistoryItem_lastVisited".}
proc fcQWebEngineHistoryItem_iconUrl(self: pointer, ): pointer {.importc: "QWebEngineHistoryItem_iconUrl".}
proc fcQWebEngineHistoryItem_isValid(self: pointer, ): bool {.importc: "QWebEngineHistoryItem_isValid".}
proc fcQWebEngineHistoryItem_swap(self: pointer, other: pointer): void {.importc: "QWebEngineHistoryItem_swap".}
proc fcQWebEngineHistoryItem_delete(self: pointer) {.importc: "QWebEngineHistoryItem_delete".}
proc fcQWebEngineHistoryModel_metaObject(self: pointer, ): pointer {.importc: "QWebEngineHistoryModel_metaObject".}
proc fcQWebEngineHistoryModel_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineHistoryModel_metacast".}
proc fcQWebEngineHistoryModel_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineHistoryModel_metacall".}
proc fcQWebEngineHistoryModel_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineHistoryModel_tr".}
proc fcQWebEngineHistoryModel_rowCount(self: pointer, parent: pointer): cint {.importc: "QWebEngineHistoryModel_rowCount".}
proc fcQWebEngineHistoryModel_data(self: pointer, index: pointer, role: cint): pointer {.importc: "QWebEngineHistoryModel_data".}
proc fcQWebEngineHistoryModel_roleNames(self: pointer, ): struct_miqt_map {.importc: "QWebEngineHistoryModel_roleNames".}
proc fcQWebEngineHistoryModel_reset(self: pointer, ): void {.importc: "QWebEngineHistoryModel_reset".}
proc fcQWebEngineHistoryModel_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineHistoryModel_tr2".}
proc fcQWebEngineHistoryModel_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineHistoryModel_tr3".}
proc fcQWebEngineHistory_metaObject(self: pointer, ): pointer {.importc: "QWebEngineHistory_metaObject".}
proc fcQWebEngineHistory_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineHistory_metacast".}
proc fcQWebEngineHistory_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineHistory_metacall".}
proc fcQWebEngineHistory_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineHistory_tr".}
proc fcQWebEngineHistory_clear(self: pointer, ): void {.importc: "QWebEngineHistory_clear".}
proc fcQWebEngineHistory_items(self: pointer, ): struct_miqt_array {.importc: "QWebEngineHistory_items".}
proc fcQWebEngineHistory_backItems(self: pointer, maxItems: cint): struct_miqt_array {.importc: "QWebEngineHistory_backItems".}
proc fcQWebEngineHistory_forwardItems(self: pointer, maxItems: cint): struct_miqt_array {.importc: "QWebEngineHistory_forwardItems".}
proc fcQWebEngineHistory_canGoBack(self: pointer, ): bool {.importc: "QWebEngineHistory_canGoBack".}
proc fcQWebEngineHistory_canGoForward(self: pointer, ): bool {.importc: "QWebEngineHistory_canGoForward".}
proc fcQWebEngineHistory_back(self: pointer, ): void {.importc: "QWebEngineHistory_back".}
proc fcQWebEngineHistory_forward(self: pointer, ): void {.importc: "QWebEngineHistory_forward".}
proc fcQWebEngineHistory_goToItem(self: pointer, item: pointer): void {.importc: "QWebEngineHistory_goToItem".}
proc fcQWebEngineHistory_backItem(self: pointer, ): pointer {.importc: "QWebEngineHistory_backItem".}
proc fcQWebEngineHistory_currentItem(self: pointer, ): pointer {.importc: "QWebEngineHistory_currentItem".}
proc fcQWebEngineHistory_forwardItem(self: pointer, ): pointer {.importc: "QWebEngineHistory_forwardItem".}
proc fcQWebEngineHistory_itemAt(self: pointer, i: cint): pointer {.importc: "QWebEngineHistory_itemAt".}
proc fcQWebEngineHistory_currentItemIndex(self: pointer, ): cint {.importc: "QWebEngineHistory_currentItemIndex".}
proc fcQWebEngineHistory_count(self: pointer, ): cint {.importc: "QWebEngineHistory_count".}
proc fcQWebEngineHistory_itemsModel(self: pointer, ): pointer {.importc: "QWebEngineHistory_itemsModel".}
proc fcQWebEngineHistory_backItemsModel(self: pointer, ): pointer {.importc: "QWebEngineHistory_backItemsModel".}
proc fcQWebEngineHistory_forwardItemsModel(self: pointer, ): pointer {.importc: "QWebEngineHistory_forwardItemsModel".}
proc fcQWebEngineHistory_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineHistory_tr2".}
proc fcQWebEngineHistory_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineHistory_tr3".}


func init*(T: type QWebEngineHistoryItem, h: ptr cQWebEngineHistoryItem): QWebEngineHistoryItem =
  T(h: h)
proc create*(T: type QWebEngineHistoryItem, other: QWebEngineHistoryItem): QWebEngineHistoryItem =

  QWebEngineHistoryItem.init(fcQWebEngineHistoryItem_new(other.h))
proc operatorAssign*(self: QWebEngineHistoryItem, other: QWebEngineHistoryItem): void =

  fcQWebEngineHistoryItem_operatorAssign(self.h, other.h)

proc originalUrl*(self: QWebEngineHistoryItem, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineHistoryItem_originalUrl(self.h))

proc url*(self: QWebEngineHistoryItem, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineHistoryItem_url(self.h))

proc title*(self: QWebEngineHistoryItem, ): string =

  let v_ms = fcQWebEngineHistoryItem_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc lastVisited*(self: QWebEngineHistoryItem, ): gen_qdatetime.QDateTime =

  gen_qdatetime.QDateTime(h: fcQWebEngineHistoryItem_lastVisited(self.h))

proc iconUrl*(self: QWebEngineHistoryItem, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineHistoryItem_iconUrl(self.h))

proc isValid*(self: QWebEngineHistoryItem, ): bool =

  fcQWebEngineHistoryItem_isValid(self.h)

proc swap*(self: QWebEngineHistoryItem, other: QWebEngineHistoryItem): void =

  fcQWebEngineHistoryItem_swap(self.h, other.h)

proc delete*(self: QWebEngineHistoryItem) =
  fcQWebEngineHistoryItem_delete(self.h)

func init*(T: type QWebEngineHistoryModel, h: ptr cQWebEngineHistoryModel): QWebEngineHistoryModel =
  T(h: h)
proc metaObject*(self: QWebEngineHistoryModel, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebEngineHistoryModel_metaObject(self.h))

proc metacast*(self: QWebEngineHistoryModel, param1: cstring): pointer =

  fcQWebEngineHistoryModel_metacast(self.h, param1)

proc metacall*(self: QWebEngineHistoryModel, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWebEngineHistoryModel_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWebEngineHistoryModel, s: cstring): string =

  let v_ms = fcQWebEngineHistoryModel_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc rowCount*(self: QWebEngineHistoryModel, parent: gen_qabstractitemmodel.QModelIndex): cint =

  fcQWebEngineHistoryModel_rowCount(self.h, parent.h)

proc data*(self: QWebEngineHistoryModel, index: gen_qabstractitemmodel.QModelIndex, role: cint): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQWebEngineHistoryModel_data(self.h, index.h, role))

proc roleNames*(self: QWebEngineHistoryModel, ): Table[cint,seq[byte]] =

  var v_mm = fcQWebEngineHistoryModel_roleNames(self.h)
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

proc reset*(self: QWebEngineHistoryModel, ): void =

  fcQWebEngineHistoryModel_reset(self.h)

proc tr2*(_: type QWebEngineHistoryModel, s: cstring, c: cstring): string =

  let v_ms = fcQWebEngineHistoryModel_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWebEngineHistoryModel, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebEngineHistoryModel_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret


func init*(T: type QWebEngineHistory, h: ptr cQWebEngineHistory): QWebEngineHistory =
  T(h: h)
proc metaObject*(self: QWebEngineHistory, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebEngineHistory_metaObject(self.h))

proc metacast*(self: QWebEngineHistory, param1: cstring): pointer =

  fcQWebEngineHistory_metacast(self.h, param1)

proc metacall*(self: QWebEngineHistory, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWebEngineHistory_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWebEngineHistory, s: cstring): string =

  let v_ms = fcQWebEngineHistory_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clear*(self: QWebEngineHistory, ): void =

  fcQWebEngineHistory_clear(self.h)

proc items*(self: QWebEngineHistory, ): seq[QWebEngineHistoryItem] =

  var v_ma = fcQWebEngineHistory_items(self.h)
  var vx_ret = newSeq[QWebEngineHistoryItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QWebEngineHistoryItem(h: v_outCast[i])
  vx_ret

proc backItems*(self: QWebEngineHistory, maxItems: cint): seq[QWebEngineHistoryItem] =

  var v_ma = fcQWebEngineHistory_backItems(self.h, maxItems)
  var vx_ret = newSeq[QWebEngineHistoryItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QWebEngineHistoryItem(h: v_outCast[i])
  vx_ret

proc forwardItems*(self: QWebEngineHistory, maxItems: cint): seq[QWebEngineHistoryItem] =

  var v_ma = fcQWebEngineHistory_forwardItems(self.h, maxItems)
  var vx_ret = newSeq[QWebEngineHistoryItem](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QWebEngineHistoryItem(h: v_outCast[i])
  vx_ret

proc canGoBack*(self: QWebEngineHistory, ): bool =

  fcQWebEngineHistory_canGoBack(self.h)

proc canGoForward*(self: QWebEngineHistory, ): bool =

  fcQWebEngineHistory_canGoForward(self.h)

proc back*(self: QWebEngineHistory, ): void =

  fcQWebEngineHistory_back(self.h)

proc forward*(self: QWebEngineHistory, ): void =

  fcQWebEngineHistory_forward(self.h)

proc goToItem*(self: QWebEngineHistory, item: QWebEngineHistoryItem): void =

  fcQWebEngineHistory_goToItem(self.h, item.h)

proc backItem*(self: QWebEngineHistory, ): QWebEngineHistoryItem =

  QWebEngineHistoryItem(h: fcQWebEngineHistory_backItem(self.h))

proc currentItem*(self: QWebEngineHistory, ): QWebEngineHistoryItem =

  QWebEngineHistoryItem(h: fcQWebEngineHistory_currentItem(self.h))

proc forwardItem*(self: QWebEngineHistory, ): QWebEngineHistoryItem =

  QWebEngineHistoryItem(h: fcQWebEngineHistory_forwardItem(self.h))

proc itemAt*(self: QWebEngineHistory, i: cint): QWebEngineHistoryItem =

  QWebEngineHistoryItem(h: fcQWebEngineHistory_itemAt(self.h, i))

proc currentItemIndex*(self: QWebEngineHistory, ): cint =

  fcQWebEngineHistory_currentItemIndex(self.h)

proc count*(self: QWebEngineHistory, ): cint =

  fcQWebEngineHistory_count(self.h)

proc itemsModel*(self: QWebEngineHistory, ): QWebEngineHistoryModel =

  QWebEngineHistoryModel(h: fcQWebEngineHistory_itemsModel(self.h))

proc backItemsModel*(self: QWebEngineHistory, ): QWebEngineHistoryModel =

  QWebEngineHistoryModel(h: fcQWebEngineHistory_backItemsModel(self.h))

proc forwardItemsModel*(self: QWebEngineHistory, ): QWebEngineHistoryModel =

  QWebEngineHistoryModel(h: fcQWebEngineHistory_forwardItemsModel(self.h))

proc tr2*(_: type QWebEngineHistory, s: cstring, c: cstring): string =

  let v_ms = fcQWebEngineHistory_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWebEngineHistory, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebEngineHistory_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

