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
{.compile("gen_qwebenginenavigationrequest.cpp", cflags).}


type QWebEngineNavigationRequestNavigationType* = cint
const
  QWebEngineNavigationRequestLinkClickedNavigation* = 0
  QWebEngineNavigationRequestTypedNavigation* = 1
  QWebEngineNavigationRequestFormSubmittedNavigation* = 2
  QWebEngineNavigationRequestBackForwardNavigation* = 3
  QWebEngineNavigationRequestReloadNavigation* = 4
  QWebEngineNavigationRequestOtherNavigation* = 5
  QWebEngineNavigationRequestRedirectNavigation* = 6



type QWebEngineNavigationRequestNavigationRequestAction* = cint
const
  QWebEngineNavigationRequestAcceptRequest* = 0
  QWebEngineNavigationRequestIgnoreRequest* = 255



import gen_qwebenginenavigationrequest_types
export gen_qwebenginenavigationrequest_types

import
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl
export
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl

type cQWebEngineNavigationRequest*{.exportc: "QWebEngineNavigationRequest", incompleteStruct.} = object

proc fcQWebEngineNavigationRequest_metaObject(self: pointer, ): pointer {.importc: "QWebEngineNavigationRequest_metaObject".}
proc fcQWebEngineNavigationRequest_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineNavigationRequest_metacast".}
proc fcQWebEngineNavigationRequest_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineNavigationRequest_metacall".}
proc fcQWebEngineNavigationRequest_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineNavigationRequest_tr".}
proc fcQWebEngineNavigationRequest_url(self: pointer, ): pointer {.importc: "QWebEngineNavigationRequest_url".}
proc fcQWebEngineNavigationRequest_isMainFrame(self: pointer, ): bool {.importc: "QWebEngineNavigationRequest_isMainFrame".}
proc fcQWebEngineNavigationRequest_navigationType(self: pointer, ): cint {.importc: "QWebEngineNavigationRequest_navigationType".}
proc fcQWebEngineNavigationRequest_accept(self: pointer, ): void {.importc: "QWebEngineNavigationRequest_accept".}
proc fcQWebEngineNavigationRequest_reject(self: pointer, ): void {.importc: "QWebEngineNavigationRequest_reject".}
proc fcQWebEngineNavigationRequest_actionChanged(self: pointer, ): void {.importc: "QWebEngineNavigationRequest_actionChanged".}
proc fQWebEngineNavigationRequest_connect_actionChanged(self: pointer, slot: int) {.importc: "QWebEngineNavigationRequest_connect_actionChanged".}
proc fcQWebEngineNavigationRequest_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineNavigationRequest_tr2".}
proc fcQWebEngineNavigationRequest_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineNavigationRequest_tr3".}
proc fcQWebEngineNavigationRequest_staticMetaObject(): pointer {.importc: "QWebEngineNavigationRequest_staticMetaObject".}
proc fcQWebEngineNavigationRequest_delete(self: pointer) {.importc: "QWebEngineNavigationRequest_delete".}


func init*(T: type QWebEngineNavigationRequest, h: ptr cQWebEngineNavigationRequest): QWebEngineNavigationRequest =
  T(h: h)
proc metaObject*(self: QWebEngineNavigationRequest, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebEngineNavigationRequest_metaObject(self.h))

proc metacast*(self: QWebEngineNavigationRequest, param1: cstring): pointer =

  fcQWebEngineNavigationRequest_metacast(self.h, param1)

proc metacall*(self: QWebEngineNavigationRequest, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWebEngineNavigationRequest_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWebEngineNavigationRequest, s: cstring): string =

  let v_ms = fcQWebEngineNavigationRequest_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc url*(self: QWebEngineNavigationRequest, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineNavigationRequest_url(self.h))

proc isMainFrame*(self: QWebEngineNavigationRequest, ): bool =

  fcQWebEngineNavigationRequest_isMainFrame(self.h)

proc navigationType*(self: QWebEngineNavigationRequest, ): QWebEngineNavigationRequestNavigationType =

  QWebEngineNavigationRequestNavigationType(fcQWebEngineNavigationRequest_navigationType(self.h))

proc accept*(self: QWebEngineNavigationRequest, ): void =

  fcQWebEngineNavigationRequest_accept(self.h)

proc reject*(self: QWebEngineNavigationRequest, ): void =

  fcQWebEngineNavigationRequest_reject(self.h)

proc actionChanged*(self: QWebEngineNavigationRequest, ): void =

  fcQWebEngineNavigationRequest_actionChanged(self.h)

proc miqt_exec_callback_QWebEngineNavigationRequest_actionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onactionChanged*(self: QWebEngineNavigationRequest, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebEngineNavigationRequest_connect_actionChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QWebEngineNavigationRequest, s: cstring, c: cstring): string =

  let v_ms = fcQWebEngineNavigationRequest_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWebEngineNavigationRequest, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebEngineNavigationRequest_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QWebEngineNavigationRequest): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQWebEngineNavigationRequest_staticMetaObject())
proc delete*(self: QWebEngineNavigationRequest) =
  fcQWebEngineNavigationRequest_delete(self.h)
