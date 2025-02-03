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
{.compile("gen_qwebenginenotification.cpp", cflags).}


import gen_qwebenginenotification_types
export gen_qwebenginenotification_types

import
  gen_qimage,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl
export
  gen_qimage,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl

type cQWebEngineNotification*{.exportc: "QWebEngineNotification", incompleteStruct.} = object

proc fcQWebEngineNotification_metaObject(self: pointer, ): pointer {.importc: "QWebEngineNotification_metaObject".}
proc fcQWebEngineNotification_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineNotification_metacast".}
proc fcQWebEngineNotification_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineNotification_metacall".}
proc fcQWebEngineNotification_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineNotification_tr".}
proc fcQWebEngineNotification_matches(self: pointer, other: pointer): bool {.importc: "QWebEngineNotification_matches".}
proc fcQWebEngineNotification_origin(self: pointer, ): pointer {.importc: "QWebEngineNotification_origin".}
proc fcQWebEngineNotification_icon(self: pointer, ): pointer {.importc: "QWebEngineNotification_icon".}
proc fcQWebEngineNotification_title(self: pointer, ): struct_miqt_string {.importc: "QWebEngineNotification_title".}
proc fcQWebEngineNotification_message(self: pointer, ): struct_miqt_string {.importc: "QWebEngineNotification_message".}
proc fcQWebEngineNotification_tag(self: pointer, ): struct_miqt_string {.importc: "QWebEngineNotification_tag".}
proc fcQWebEngineNotification_language(self: pointer, ): struct_miqt_string {.importc: "QWebEngineNotification_language".}
proc fcQWebEngineNotification_direction(self: pointer, ): cint {.importc: "QWebEngineNotification_direction".}
proc fcQWebEngineNotification_show(self: pointer, ): void {.importc: "QWebEngineNotification_show".}
proc fcQWebEngineNotification_click(self: pointer, ): void {.importc: "QWebEngineNotification_click".}
proc fcQWebEngineNotification_close(self: pointer, ): void {.importc: "QWebEngineNotification_close".}
proc fcQWebEngineNotification_closed(self: pointer, ): void {.importc: "QWebEngineNotification_closed".}
proc fQWebEngineNotification_connect_closed(self: pointer, slot: int) {.importc: "QWebEngineNotification_connect_closed".}
proc fcQWebEngineNotification_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineNotification_tr2".}
proc fcQWebEngineNotification_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineNotification_tr3".}
proc fcQWebEngineNotification_delete(self: pointer) {.importc: "QWebEngineNotification_delete".}


func init*(T: type QWebEngineNotification, h: ptr cQWebEngineNotification): QWebEngineNotification =
  T(h: h)
proc metaObject*(self: QWebEngineNotification, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebEngineNotification_metaObject(self.h))

proc metacast*(self: QWebEngineNotification, param1: cstring): pointer =

  fcQWebEngineNotification_metacast(self.h, param1)

proc metacall*(self: QWebEngineNotification, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWebEngineNotification_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWebEngineNotification, s: cstring): string =

  let v_ms = fcQWebEngineNotification_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc matches*(self: QWebEngineNotification, other: QWebEngineNotification): bool =

  fcQWebEngineNotification_matches(self.h, other.h)

proc origin*(self: QWebEngineNotification, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineNotification_origin(self.h))

proc icon*(self: QWebEngineNotification, ): gen_qimage.QImage =

  gen_qimage.QImage(h: fcQWebEngineNotification_icon(self.h))

proc title*(self: QWebEngineNotification, ): string =

  let v_ms = fcQWebEngineNotification_title(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc message*(self: QWebEngineNotification, ): string =

  let v_ms = fcQWebEngineNotification_message(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tag*(self: QWebEngineNotification, ): string =

  let v_ms = fcQWebEngineNotification_tag(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc language*(self: QWebEngineNotification, ): string =

  let v_ms = fcQWebEngineNotification_language(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc direction*(self: QWebEngineNotification, ): gen_qnamespace.LayoutDirection =

  gen_qnamespace.LayoutDirection(fcQWebEngineNotification_direction(self.h))

proc show*(self: QWebEngineNotification, ): void =

  fcQWebEngineNotification_show(self.h)

proc click*(self: QWebEngineNotification, ): void =

  fcQWebEngineNotification_click(self.h)

proc close*(self: QWebEngineNotification, ): void =

  fcQWebEngineNotification_close(self.h)

proc closed*(self: QWebEngineNotification, ): void =

  fcQWebEngineNotification_closed(self.h)

proc miqt_exec_callback_QWebEngineNotification_closed(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onclosed*(self: QWebEngineNotification, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineNotification_connect_closed(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QWebEngineNotification, s: cstring, c: cstring): string =

  let v_ms = fcQWebEngineNotification_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWebEngineNotification, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebEngineNotification_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QWebEngineNotification) =
  fcQWebEngineNotification_delete(self.h)
