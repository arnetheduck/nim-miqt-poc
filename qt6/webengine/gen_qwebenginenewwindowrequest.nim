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
{.compile("gen_qwebenginenewwindowrequest.cpp", cflags).}


type QWebEngineNewWindowRequestDestinationType* = cint
const
  QWebEngineNewWindowRequestInNewWindow* = 0
  QWebEngineNewWindowRequestInNewTab* = 1
  QWebEngineNewWindowRequestInNewDialog* = 2
  QWebEngineNewWindowRequestInNewBackgroundTab* = 3



import gen_qwebenginenewwindowrequest_types
export gen_qwebenginenewwindowrequest_types

import
  gen_qobject,
  gen_qobjectdefs,
  gen_qrect,
  gen_qurl,
  gen_qwebenginepage
export
  gen_qobject,
  gen_qobjectdefs,
  gen_qrect,
  gen_qurl,
  gen_qwebenginepage

type cQWebEngineNewWindowRequest*{.exportc: "QWebEngineNewWindowRequest", incompleteStruct.} = object

proc fcQWebEngineNewWindowRequest_metaObject(self: pointer, ): pointer {.importc: "QWebEngineNewWindowRequest_metaObject".}
proc fcQWebEngineNewWindowRequest_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineNewWindowRequest_metacast".}
proc fcQWebEngineNewWindowRequest_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineNewWindowRequest_metacall".}
proc fcQWebEngineNewWindowRequest_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineNewWindowRequest_tr".}
proc fcQWebEngineNewWindowRequest_destination(self: pointer, ): cint {.importc: "QWebEngineNewWindowRequest_destination".}
proc fcQWebEngineNewWindowRequest_requestedUrl(self: pointer, ): pointer {.importc: "QWebEngineNewWindowRequest_requestedUrl".}
proc fcQWebEngineNewWindowRequest_requestedGeometry(self: pointer, ): pointer {.importc: "QWebEngineNewWindowRequest_requestedGeometry".}
proc fcQWebEngineNewWindowRequest_isUserInitiated(self: pointer, ): bool {.importc: "QWebEngineNewWindowRequest_isUserInitiated".}
proc fcQWebEngineNewWindowRequest_openIn(self: pointer, param1: pointer): void {.importc: "QWebEngineNewWindowRequest_openIn".}
proc fcQWebEngineNewWindowRequest_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineNewWindowRequest_tr2".}
proc fcQWebEngineNewWindowRequest_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineNewWindowRequest_tr3".}
proc fcQWebEngineNewWindowRequest_delete(self: pointer) {.importc: "QWebEngineNewWindowRequest_delete".}


func init*(T: type QWebEngineNewWindowRequest, h: ptr cQWebEngineNewWindowRequest): QWebEngineNewWindowRequest =
  T(h: h)
proc metaObject*(self: QWebEngineNewWindowRequest, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebEngineNewWindowRequest_metaObject(self.h))

proc metacast*(self: QWebEngineNewWindowRequest, param1: cstring): pointer =

  fcQWebEngineNewWindowRequest_metacast(self.h, param1)

proc metacall*(self: QWebEngineNewWindowRequest, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWebEngineNewWindowRequest_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWebEngineNewWindowRequest, s: cstring): string =

  let v_ms = fcQWebEngineNewWindowRequest_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc destination*(self: QWebEngineNewWindowRequest, ): QWebEngineNewWindowRequestDestinationType =

  QWebEngineNewWindowRequestDestinationType(fcQWebEngineNewWindowRequest_destination(self.h))

proc requestedUrl*(self: QWebEngineNewWindowRequest, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineNewWindowRequest_requestedUrl(self.h))

proc requestedGeometry*(self: QWebEngineNewWindowRequest, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQWebEngineNewWindowRequest_requestedGeometry(self.h))

proc isUserInitiated*(self: QWebEngineNewWindowRequest, ): bool =

  fcQWebEngineNewWindowRequest_isUserInitiated(self.h)

proc openIn*(self: QWebEngineNewWindowRequest, param1: gen_qwebenginepage.QWebEnginePage): void =

  fcQWebEngineNewWindowRequest_openIn(self.h, param1.h)

proc tr2*(_: type QWebEngineNewWindowRequest, s: cstring, c: cstring): string =

  let v_ms = fcQWebEngineNewWindowRequest_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWebEngineNewWindowRequest, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebEngineNewWindowRequest_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QWebEngineNewWindowRequest) =
  fcQWebEngineNewWindowRequest_delete(self.h)
