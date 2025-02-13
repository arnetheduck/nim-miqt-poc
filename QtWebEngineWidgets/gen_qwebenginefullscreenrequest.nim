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

const cflags = gorge("pkg-config --cflags Qt5WebEngineWidgets")
{.compile("gen_qwebenginefullscreenrequest.cpp", cflags).}


import gen_qwebenginefullscreenrequest_types
export gen_qwebenginefullscreenrequest_types

import
  gen_qobjectdefs,
  gen_qurl_types
export
  gen_qobjectdefs,
  gen_qurl_types

type cQWebEngineFullScreenRequest*{.exportc: "QWebEngineFullScreenRequest", incompleteStruct.} = object

proc fcQWebEngineFullScreenRequest_new(param1: pointer): ptr cQWebEngineFullScreenRequest {.importc: "QWebEngineFullScreenRequest_new".}
proc fcQWebEngineFullScreenRequest_reject(self: pointer, ): void {.importc: "QWebEngineFullScreenRequest_reject".}
proc fcQWebEngineFullScreenRequest_accept(self: pointer, ): void {.importc: "QWebEngineFullScreenRequest_accept".}
proc fcQWebEngineFullScreenRequest_toggleOn(self: pointer, ): bool {.importc: "QWebEngineFullScreenRequest_toggleOn".}
proc fcQWebEngineFullScreenRequest_origin(self: pointer, ): pointer {.importc: "QWebEngineFullScreenRequest_origin".}
proc fcQWebEngineFullScreenRequest_staticMetaObject(): pointer {.importc: "QWebEngineFullScreenRequest_staticMetaObject".}
proc fcQWebEngineFullScreenRequest_delete(self: pointer) {.importc: "QWebEngineFullScreenRequest_delete".}


func init*(T: type gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest, h: ptr cQWebEngineFullScreenRequest): gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest =
  T(h: h)
proc create*(T: type gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest, param1: gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest): gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest =
  gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest.init(fcQWebEngineFullScreenRequest_new(param1.h))

proc reject*(self: gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest, ): void =
  fcQWebEngineFullScreenRequest_reject(self.h)

proc accept*(self: gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest, ): void =
  fcQWebEngineFullScreenRequest_accept(self.h)

proc toggleOn*(self: gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest, ): bool =
  fcQWebEngineFullScreenRequest_toggleOn(self.h)

proc origin*(self: gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineFullScreenRequest_origin(self.h))

proc staticMetaObject*(_: type gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQWebEngineFullScreenRequest_staticMetaObject())
proc delete*(self: gen_qwebenginefullscreenrequest_types.QWebEngineFullScreenRequest) =
  fcQWebEngineFullScreenRequest_delete(self.h)
