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
{.compile("gen_qwebenginequotarequest.cpp", cflags).}


import gen_qwebenginequotarequest_types
export gen_qwebenginequotarequest_types

import
  gen_qobjectdefs,
  gen_qurl
export
  gen_qobjectdefs,
  gen_qurl

type cQWebEngineQuotaRequest*{.exportc: "QWebEngineQuotaRequest", incompleteStruct.} = object

proc fcQWebEngineQuotaRequest_new(): ptr cQWebEngineQuotaRequest {.importc: "QWebEngineQuotaRequest_new".}
proc fcQWebEngineQuotaRequest_new2(param1: pointer): ptr cQWebEngineQuotaRequest {.importc: "QWebEngineQuotaRequest_new2".}
proc fcQWebEngineQuotaRequest_accept(self: pointer, ): void {.importc: "QWebEngineQuotaRequest_accept".}
proc fcQWebEngineQuotaRequest_reject(self: pointer, ): void {.importc: "QWebEngineQuotaRequest_reject".}
proc fcQWebEngineQuotaRequest_origin(self: pointer, ): pointer {.importc: "QWebEngineQuotaRequest_origin".}
proc fcQWebEngineQuotaRequest_requestedSize(self: pointer, ): clonglong {.importc: "QWebEngineQuotaRequest_requestedSize".}
proc fcQWebEngineQuotaRequest_operatorEqual(self: pointer, that: pointer): bool {.importc: "QWebEngineQuotaRequest_operatorEqual".}
proc fcQWebEngineQuotaRequest_operatorNotEqual(self: pointer, that: pointer): bool {.importc: "QWebEngineQuotaRequest_operatorNotEqual".}
proc fcQWebEngineQuotaRequest_staticMetaObject(): pointer {.importc: "QWebEngineQuotaRequest_staticMetaObject".}
proc fcQWebEngineQuotaRequest_delete(self: pointer) {.importc: "QWebEngineQuotaRequest_delete".}


func init*(T: type gen_qwebenginequotarequest_types.QWebEngineQuotaRequest, h: ptr cQWebEngineQuotaRequest): gen_qwebenginequotarequest_types.QWebEngineQuotaRequest =
  T(h: h)
proc create*(T: type gen_qwebenginequotarequest_types.QWebEngineQuotaRequest, ): gen_qwebenginequotarequest_types.QWebEngineQuotaRequest =

  gen_qwebenginequotarequest_types.QWebEngineQuotaRequest.init(fcQWebEngineQuotaRequest_new())
proc create*(T: type gen_qwebenginequotarequest_types.QWebEngineQuotaRequest, param1: gen_qwebenginequotarequest_types.QWebEngineQuotaRequest): gen_qwebenginequotarequest_types.QWebEngineQuotaRequest =

  gen_qwebenginequotarequest_types.QWebEngineQuotaRequest.init(fcQWebEngineQuotaRequest_new2(param1.h))
proc accept*(self: gen_qwebenginequotarequest_types.QWebEngineQuotaRequest, ): void =

  fcQWebEngineQuotaRequest_accept(self.h)

proc reject*(self: gen_qwebenginequotarequest_types.QWebEngineQuotaRequest, ): void =

  fcQWebEngineQuotaRequest_reject(self.h)

proc origin*(self: gen_qwebenginequotarequest_types.QWebEngineQuotaRequest, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineQuotaRequest_origin(self.h))

proc requestedSize*(self: gen_qwebenginequotarequest_types.QWebEngineQuotaRequest, ): clonglong =

  fcQWebEngineQuotaRequest_requestedSize(self.h)

proc operatorEqual*(self: gen_qwebenginequotarequest_types.QWebEngineQuotaRequest, that: gen_qwebenginequotarequest_types.QWebEngineQuotaRequest): bool =

  fcQWebEngineQuotaRequest_operatorEqual(self.h, that.h)

proc operatorNotEqual*(self: gen_qwebenginequotarequest_types.QWebEngineQuotaRequest, that: gen_qwebenginequotarequest_types.QWebEngineQuotaRequest): bool =

  fcQWebEngineQuotaRequest_operatorNotEqual(self.h, that.h)

proc staticMetaObject*(_: type gen_qwebenginequotarequest_types.QWebEngineQuotaRequest): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQWebEngineQuotaRequest_staticMetaObject())
proc delete*(self: gen_qwebenginequotarequest_types.QWebEngineQuotaRequest) =
  fcQWebEngineQuotaRequest_delete(self.h)
