import Qt5WebEngineWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5WebEngineWidgets")
{.compile("gen_qwebenginehistory.cpp", cflags).}


import gen_qwebenginehistory_types
export gen_qwebenginehistory_types

import
  gen_qdatetime,
  gen_qurl
export
  gen_qdatetime,
  gen_qurl

type cQWebEngineHistoryItem*{.exportc: "QWebEngineHistoryItem", incompleteStruct.} = object
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

func init*(T: type QWebEngineHistory, h: ptr cQWebEngineHistory): QWebEngineHistory =
  T(h: h)
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

