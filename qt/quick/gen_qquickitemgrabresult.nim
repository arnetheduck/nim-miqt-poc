import Qt5Quick_libs

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

const cflags = gorge("pkg-config -cflags Qt5Quick")
{.compile("gen_qquickitemgrabresult.cpp", cflags).}


import gen_qquickitemgrabresult_types
export gen_qquickitemgrabresult_types

import
  gen_qimage,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl
export
  gen_qimage,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl

type cQQuickItemGrabResult*{.exportc: "QQuickItemGrabResult", incompleteStruct.} = object

proc fcQQuickItemGrabResult_metaObject(self: pointer, ): pointer {.importc: "QQuickItemGrabResult_metaObject".}
proc fcQQuickItemGrabResult_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickItemGrabResult_metacast".}
proc fcQQuickItemGrabResult_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickItemGrabResult_metacall".}
proc fcQQuickItemGrabResult_tr(s: cstring): struct_miqt_string {.importc: "QQuickItemGrabResult_tr".}
proc fcQQuickItemGrabResult_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickItemGrabResult_trUtf8".}
proc fcQQuickItemGrabResult_image(self: pointer, ): pointer {.importc: "QQuickItemGrabResult_image".}
proc fcQQuickItemGrabResult_url(self: pointer, ): pointer {.importc: "QQuickItemGrabResult_url".}
proc fcQQuickItemGrabResult_saveToFile(self: pointer, fileName: struct_miqt_string): bool {.importc: "QQuickItemGrabResult_saveToFile".}
proc fcQQuickItemGrabResult_saveToFileWithFileName(self: pointer, fileName: struct_miqt_string): bool {.importc: "QQuickItemGrabResult_saveToFileWithFileName".}
proc fcQQuickItemGrabResult_ready(self: pointer, ): void {.importc: "QQuickItemGrabResult_ready".}
proc fQQuickItemGrabResult_connect_ready(self: pointer, slot: int) {.importc: "QQuickItemGrabResult_connect_ready".}
proc fcQQuickItemGrabResult_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickItemGrabResult_tr2".}
proc fcQQuickItemGrabResult_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickItemGrabResult_tr3".}
proc fcQQuickItemGrabResult_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickItemGrabResult_trUtf82".}
proc fcQQuickItemGrabResult_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickItemGrabResult_trUtf83".}
proc fcQQuickItemGrabResult_staticMetaObject(): pointer {.importc: "QQuickItemGrabResult_staticMetaObject".}
proc fcQQuickItemGrabResult_delete(self: pointer) {.importc: "QQuickItemGrabResult_delete".}


func init*(T: type QQuickItemGrabResult, h: ptr cQQuickItemGrabResult): QQuickItemGrabResult =
  T(h: h)
proc metaObject*(self: QQuickItemGrabResult, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQuickItemGrabResult_metaObject(self.h))

proc metacast*(self: QQuickItemGrabResult, param1: cstring): pointer =

  fcQQuickItemGrabResult_metacast(self.h, param1)

proc metacall*(self: QQuickItemGrabResult, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQQuickItemGrabResult_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QQuickItemGrabResult, s: cstring): string =

  let v_ms = fcQQuickItemGrabResult_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QQuickItemGrabResult, s: cstring): string =

  let v_ms = fcQQuickItemGrabResult_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc image*(self: QQuickItemGrabResult, ): gen_qimage.QImage =

  gen_qimage.QImage(h: fcQQuickItemGrabResult_image(self.h))

proc url*(self: QQuickItemGrabResult, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQQuickItemGrabResult_url(self.h))

proc saveToFile*(self: QQuickItemGrabResult, fileName: string): bool =

  fcQQuickItemGrabResult_saveToFile(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc saveToFileWithFileName*(self: QQuickItemGrabResult, fileName: string): bool =

  fcQQuickItemGrabResult_saveToFileWithFileName(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc ready*(self: QQuickItemGrabResult, ): void =

  fcQQuickItemGrabResult_ready(self.h)

proc miqt_exec_callback_QQuickItemGrabResult_ready(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onready*(self: QQuickItemGrabResult, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickItemGrabResult_connect_ready(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QQuickItemGrabResult, s: cstring, c: cstring): string =

  let v_ms = fcQQuickItemGrabResult_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QQuickItemGrabResult, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickItemGrabResult_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QQuickItemGrabResult, s: cstring, c: cstring): string =

  let v_ms = fcQQuickItemGrabResult_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QQuickItemGrabResult, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickItemGrabResult_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QQuickItemGrabResult): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQQuickItemGrabResult_staticMetaObject())
proc delete*(self: QQuickItemGrabResult) =
  fcQQuickItemGrabResult_delete(self.h)
