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
{.compile("gen_qwebengineurlrequestinterceptor.cpp", cflags).}


import gen_qwebengineurlrequestinterceptor_types
export gen_qwebengineurlrequestinterceptor_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qwebengineurlrequestinfo
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qwebengineurlrequestinfo

type cQWebEngineUrlRequestInterceptor*{.exportc: "QWebEngineUrlRequestInterceptor", incompleteStruct.} = object

proc fcQWebEngineUrlRequestInterceptor_new(): ptr cQWebEngineUrlRequestInterceptor {.importc: "QWebEngineUrlRequestInterceptor_new".}
proc fcQWebEngineUrlRequestInterceptor_new2(p: pointer): ptr cQWebEngineUrlRequestInterceptor {.importc: "QWebEngineUrlRequestInterceptor_new2".}
proc fcQWebEngineUrlRequestInterceptor_metaObject(self: pointer, ): pointer {.importc: "QWebEngineUrlRequestInterceptor_metaObject".}
proc fcQWebEngineUrlRequestInterceptor_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineUrlRequestInterceptor_metacast".}
proc fcQWebEngineUrlRequestInterceptor_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineUrlRequestInterceptor_metacall".}
proc fcQWebEngineUrlRequestInterceptor_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineUrlRequestInterceptor_tr".}
proc fcQWebEngineUrlRequestInterceptor_interceptRequest(self: pointer, info: pointer): void {.importc: "QWebEngineUrlRequestInterceptor_interceptRequest".}
proc fcQWebEngineUrlRequestInterceptor_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineUrlRequestInterceptor_tr2".}
proc fcQWebEngineUrlRequestInterceptor_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineUrlRequestInterceptor_tr3".}
proc fQWebEngineUrlRequestInterceptor_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QWebEngineUrlRequestInterceptor_virtualbase_metaObject".}
proc fcQWebEngineUrlRequestInterceptor_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QWebEngineUrlRequestInterceptor_override_virtual_metaObject".}
proc fQWebEngineUrlRequestInterceptor_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QWebEngineUrlRequestInterceptor_virtualbase_metacast".}
proc fcQWebEngineUrlRequestInterceptor_override_virtual_metacast(self: pointer, slot: int) {.importc: "QWebEngineUrlRequestInterceptor_override_virtual_metacast".}
proc fQWebEngineUrlRequestInterceptor_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWebEngineUrlRequestInterceptor_virtualbase_metacall".}
proc fcQWebEngineUrlRequestInterceptor_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWebEngineUrlRequestInterceptor_override_virtual_metacall".}
proc fcQWebEngineUrlRequestInterceptor_override_virtual_interceptRequest(self: pointer, slot: int) {.importc: "QWebEngineUrlRequestInterceptor_override_virtual_interceptRequest".}
proc fQWebEngineUrlRequestInterceptor_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWebEngineUrlRequestInterceptor_virtualbase_event".}
proc fcQWebEngineUrlRequestInterceptor_override_virtual_event(self: pointer, slot: int) {.importc: "QWebEngineUrlRequestInterceptor_override_virtual_event".}
proc fQWebEngineUrlRequestInterceptor_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebEngineUrlRequestInterceptor_virtualbase_eventFilter".}
proc fcQWebEngineUrlRequestInterceptor_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebEngineUrlRequestInterceptor_override_virtual_eventFilter".}
proc fQWebEngineUrlRequestInterceptor_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebEngineUrlRequestInterceptor_virtualbase_timerEvent".}
proc fcQWebEngineUrlRequestInterceptor_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebEngineUrlRequestInterceptor_override_virtual_timerEvent".}
proc fQWebEngineUrlRequestInterceptor_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebEngineUrlRequestInterceptor_virtualbase_childEvent".}
proc fcQWebEngineUrlRequestInterceptor_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebEngineUrlRequestInterceptor_override_virtual_childEvent".}
proc fQWebEngineUrlRequestInterceptor_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebEngineUrlRequestInterceptor_virtualbase_customEvent".}
proc fcQWebEngineUrlRequestInterceptor_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebEngineUrlRequestInterceptor_override_virtual_customEvent".}
proc fQWebEngineUrlRequestInterceptor_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebEngineUrlRequestInterceptor_virtualbase_connectNotify".}
proc fcQWebEngineUrlRequestInterceptor_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebEngineUrlRequestInterceptor_override_virtual_connectNotify".}
proc fQWebEngineUrlRequestInterceptor_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebEngineUrlRequestInterceptor_virtualbase_disconnectNotify".}
proc fcQWebEngineUrlRequestInterceptor_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebEngineUrlRequestInterceptor_override_virtual_disconnectNotify".}
proc fcQWebEngineUrlRequestInterceptor_staticMetaObject(): pointer {.importc: "QWebEngineUrlRequestInterceptor_staticMetaObject".}
proc fcQWebEngineUrlRequestInterceptor_delete(self: pointer) {.importc: "QWebEngineUrlRequestInterceptor_delete".}


func init*(T: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, h: ptr cQWebEngineUrlRequestInterceptor): gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor =
  T(h: h)
proc create*(T: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, ): gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor =

  gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor.init(fcQWebEngineUrlRequestInterceptor_new())
proc create*(T: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, p: gen_qobject.QObject): gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor =

  gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor.init(fcQWebEngineUrlRequestInterceptor_new2(p.h))
proc metaObject*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebEngineUrlRequestInterceptor_metaObject(self.h))

proc metacast*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, param1: cstring): pointer =

  fcQWebEngineUrlRequestInterceptor_metacast(self.h, param1)

proc metacall*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, param1: cint, param2: cint, param3: pointer): cint =

  fcQWebEngineUrlRequestInterceptor_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, s: cstring): string =

  let v_ms = fcQWebEngineUrlRequestInterceptor_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc interceptRequest*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, info: gen_qwebengineurlrequestinfo.QWebEngineUrlRequestInfo): void =

  fcQWebEngineUrlRequestInterceptor_interceptRequest(self.h, info.h)

proc tr2*(_: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, s: cstring, c: cstring): string =

  let v_ms = fcQWebEngineUrlRequestInterceptor_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebEngineUrlRequestInterceptor_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QWebEngineUrlRequestInterceptormetaObject*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQWebEngineUrlRequestInterceptor_virtualbase_metaObject(self.h))

type QWebEngineUrlRequestInterceptormetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, slot: QWebEngineUrlRequestInterceptormetaObjectProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlRequestInterceptormetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_metaObject(self: ptr cQWebEngineUrlRequestInterceptor, slot: int): pointer {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_metaObject ".} =
  var nimfunc = cast[ptr QWebEngineUrlRequestInterceptormetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QWebEngineUrlRequestInterceptormetacast*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, param1: cstring): pointer =

  fQWebEngineUrlRequestInterceptor_virtualbase_metacast(self.h, param1)

type QWebEngineUrlRequestInterceptormetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, slot: QWebEngineUrlRequestInterceptormetacastProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlRequestInterceptormetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_metacast(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_metacast ".} =
  var nimfunc = cast[ptr QWebEngineUrlRequestInterceptormetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebEngineUrlRequestInterceptormetacall*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, param1: cint, param2: cint, param3: pointer): cint =

  fQWebEngineUrlRequestInterceptor_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWebEngineUrlRequestInterceptormetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, slot: QWebEngineUrlRequestInterceptormetacallProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlRequestInterceptormetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_metacall(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_metacall ".} =
  var nimfunc = cast[ptr QWebEngineUrlRequestInterceptormetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QWebEngineUrlRequestInterceptorinterceptRequestProc* = proc(info: gen_qwebengineurlrequestinfo.QWebEngineUrlRequestInfo): void
proc oninterceptRequest*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, slot: QWebEngineUrlRequestInterceptorinterceptRequestProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlRequestInterceptorinterceptRequestProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_interceptRequest(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_interceptRequest(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, info: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_interceptRequest ".} =
  var nimfunc = cast[ptr QWebEngineUrlRequestInterceptorinterceptRequestProc](cast[pointer](slot))
  let slotval1 = gen_qwebengineurlrequestinfo.QWebEngineUrlRequestInfo(h: info)


  nimfunc[](slotval1)
proc QWebEngineUrlRequestInterceptorevent*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, event: gen_qcoreevent.QEvent): bool =

  fQWebEngineUrlRequestInterceptor_virtualbase_event(self.h, event.h)

type QWebEngineUrlRequestInterceptoreventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, slot: QWebEngineUrlRequestInterceptoreventProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlRequestInterceptoreventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_event(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_event ".} =
  var nimfunc = cast[ptr QWebEngineUrlRequestInterceptoreventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QWebEngineUrlRequestInterceptoreventFilter*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQWebEngineUrlRequestInterceptor_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebEngineUrlRequestInterceptoreventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, slot: QWebEngineUrlRequestInterceptoreventFilterProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlRequestInterceptoreventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_eventFilter(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_eventFilter ".} =
  var nimfunc = cast[ptr QWebEngineUrlRequestInterceptoreventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QWebEngineUrlRequestInterceptortimerEvent*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, event: gen_qcoreevent.QTimerEvent): void =

  fQWebEngineUrlRequestInterceptor_virtualbase_timerEvent(self.h, event.h)

type QWebEngineUrlRequestInterceptortimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, slot: QWebEngineUrlRequestInterceptortimerEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlRequestInterceptortimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_timerEvent(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_timerEvent ".} =
  var nimfunc = cast[ptr QWebEngineUrlRequestInterceptortimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineUrlRequestInterceptorchildEvent*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, event: gen_qcoreevent.QChildEvent): void =

  fQWebEngineUrlRequestInterceptor_virtualbase_childEvent(self.h, event.h)

type QWebEngineUrlRequestInterceptorchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, slot: QWebEngineUrlRequestInterceptorchildEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlRequestInterceptorchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_childEvent(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_childEvent ".} =
  var nimfunc = cast[ptr QWebEngineUrlRequestInterceptorchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineUrlRequestInterceptorcustomEvent*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, event: gen_qcoreevent.QEvent): void =

  fQWebEngineUrlRequestInterceptor_virtualbase_customEvent(self.h, event.h)

type QWebEngineUrlRequestInterceptorcustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, slot: QWebEngineUrlRequestInterceptorcustomEventProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlRequestInterceptorcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_customEvent(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_customEvent ".} =
  var nimfunc = cast[ptr QWebEngineUrlRequestInterceptorcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QWebEngineUrlRequestInterceptorconnectNotify*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, signal: gen_qmetaobject.QMetaMethod): void =

  fQWebEngineUrlRequestInterceptor_virtualbase_connectNotify(self.h, signal.h)

type QWebEngineUrlRequestInterceptorconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, slot: QWebEngineUrlRequestInterceptorconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlRequestInterceptorconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_connectNotify(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_connectNotify ".} =
  var nimfunc = cast[ptr QWebEngineUrlRequestInterceptorconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QWebEngineUrlRequestInterceptordisconnectNotify*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, signal: gen_qmetaobject.QMetaMethod): void =

  fQWebEngineUrlRequestInterceptor_virtualbase_disconnectNotify(self.h, signal.h)

type QWebEngineUrlRequestInterceptordisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor, slot: QWebEngineUrlRequestInterceptordisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QWebEngineUrlRequestInterceptordisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_disconnectNotify(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_disconnectNotify ".} =
  var nimfunc = cast[ptr QWebEngineUrlRequestInterceptordisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQWebEngineUrlRequestInterceptor_staticMetaObject())
proc delete*(self: gen_qwebengineurlrequestinterceptor_types.QWebEngineUrlRequestInterceptor) =
  fcQWebEngineUrlRequestInterceptor_delete(self.h)
