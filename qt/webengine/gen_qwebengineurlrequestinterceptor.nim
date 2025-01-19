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
proc fcQWebEngineUrlRequestInterceptor_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebEngineUrlRequestInterceptor_trUtf8".}
proc fcQWebEngineUrlRequestInterceptor_interceptRequest(self: pointer, info: pointer): void {.importc: "QWebEngineUrlRequestInterceptor_interceptRequest".}
proc fcQWebEngineUrlRequestInterceptor_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineUrlRequestInterceptor_tr2".}
proc fcQWebEngineUrlRequestInterceptor_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineUrlRequestInterceptor_tr3".}
proc fcQWebEngineUrlRequestInterceptor_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineUrlRequestInterceptor_trUtf82".}
proc fcQWebEngineUrlRequestInterceptor_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineUrlRequestInterceptor_trUtf83".}
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


func init*(T: type QWebEngineUrlRequestInterceptor, h: ptr cQWebEngineUrlRequestInterceptor): QWebEngineUrlRequestInterceptor =
  T(h: h)
proc create*(T: type QWebEngineUrlRequestInterceptor, ): QWebEngineUrlRequestInterceptor =

  QWebEngineUrlRequestInterceptor.init(fcQWebEngineUrlRequestInterceptor_new())
proc create*(T: type QWebEngineUrlRequestInterceptor, p: gen_qobject.QObject): QWebEngineUrlRequestInterceptor =

  QWebEngineUrlRequestInterceptor.init(fcQWebEngineUrlRequestInterceptor_new2(p.h))
proc metaObject*(self: QWebEngineUrlRequestInterceptor, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebEngineUrlRequestInterceptor_metaObject(self.h))

proc metacast*(self: QWebEngineUrlRequestInterceptor, param1: cstring): pointer =

  fcQWebEngineUrlRequestInterceptor_metacast(self.h, param1)

proc metacall*(self: QWebEngineUrlRequestInterceptor, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWebEngineUrlRequestInterceptor_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWebEngineUrlRequestInterceptor, s: cstring): string =

  let v_ms = fcQWebEngineUrlRequestInterceptor_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QWebEngineUrlRequestInterceptor, s: cstring): string =

  let v_ms = fcQWebEngineUrlRequestInterceptor_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc interceptRequest*(self: QWebEngineUrlRequestInterceptor, info: gen_qwebengineurlrequestinfo.QWebEngineUrlRequestInfo): void =

  fcQWebEngineUrlRequestInterceptor_interceptRequest(self.h, info.h)

proc tr2*(_: type QWebEngineUrlRequestInterceptor, s: cstring, c: cstring): string =

  let v_ms = fcQWebEngineUrlRequestInterceptor_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWebEngineUrlRequestInterceptor, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebEngineUrlRequestInterceptor_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QWebEngineUrlRequestInterceptor, s: cstring, c: cstring): string =

  let v_ms = fcQWebEngineUrlRequestInterceptor_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QWebEngineUrlRequestInterceptor, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebEngineUrlRequestInterceptor_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QWebEngineUrlRequestInterceptor, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQWebEngineUrlRequestInterceptor_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWebEngineUrlRequestInterceptormetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QWebEngineUrlRequestInterceptor, slot: proc(super: QWebEngineUrlRequestInterceptormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineUrlRequestInterceptormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_metacall(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_metacall ".} =
  type Cb = proc(super: QWebEngineUrlRequestInterceptormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QWebEngineUrlRequestInterceptor(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QWebEngineUrlRequestInterceptorinterceptRequestBase* = proc(info: gen_qwebengineurlrequestinfo.QWebEngineUrlRequestInfo): void
proc oninterceptRequest*(self: QWebEngineUrlRequestInterceptor, slot: proc(info: gen_qwebengineurlrequestinfo.QWebEngineUrlRequestInfo): void) =
  # TODO check subclass
  type Cb = proc(info: gen_qwebengineurlrequestinfo.QWebEngineUrlRequestInfo): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_interceptRequest(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_interceptRequest(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, info: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_interceptRequest ".} =
  type Cb = proc(info: gen_qwebengineurlrequestinfo.QWebEngineUrlRequestInfo): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwebengineurlrequestinfo.QWebEngineUrlRequestInfo(h: info)


  nimfunc[](slotval1)
proc callVirtualBase_event(self: QWebEngineUrlRequestInterceptor, event: gen_qcoreevent.QEvent): bool =


  fQWebEngineUrlRequestInterceptor_virtualbase_event(self.h, event.h)

type QWebEngineUrlRequestInterceptoreventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QWebEngineUrlRequestInterceptor, slot: proc(super: QWebEngineUrlRequestInterceptoreventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineUrlRequestInterceptoreventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_event(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_event ".} =
  type Cb = proc(super: QWebEngineUrlRequestInterceptoreventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QWebEngineUrlRequestInterceptor(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QWebEngineUrlRequestInterceptor, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQWebEngineUrlRequestInterceptor_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebEngineUrlRequestInterceptoreventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QWebEngineUrlRequestInterceptor, slot: proc(super: QWebEngineUrlRequestInterceptoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineUrlRequestInterceptoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_eventFilter(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_eventFilter ".} =
  type Cb = proc(super: QWebEngineUrlRequestInterceptoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QWebEngineUrlRequestInterceptor(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QWebEngineUrlRequestInterceptor, event: gen_qcoreevent.QTimerEvent): void =


  fQWebEngineUrlRequestInterceptor_virtualbase_timerEvent(self.h, event.h)

type QWebEngineUrlRequestInterceptortimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QWebEngineUrlRequestInterceptor, slot: proc(super: QWebEngineUrlRequestInterceptortimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineUrlRequestInterceptortimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_timerEvent(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_timerEvent ".} =
  type Cb = proc(super: QWebEngineUrlRequestInterceptortimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QWebEngineUrlRequestInterceptor(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QWebEngineUrlRequestInterceptor, event: gen_qcoreevent.QChildEvent): void =


  fQWebEngineUrlRequestInterceptor_virtualbase_childEvent(self.h, event.h)

type QWebEngineUrlRequestInterceptorchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QWebEngineUrlRequestInterceptor, slot: proc(super: QWebEngineUrlRequestInterceptorchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineUrlRequestInterceptorchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_childEvent(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_childEvent ".} =
  type Cb = proc(super: QWebEngineUrlRequestInterceptorchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QWebEngineUrlRequestInterceptor(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QWebEngineUrlRequestInterceptor, event: gen_qcoreevent.QEvent): void =


  fQWebEngineUrlRequestInterceptor_virtualbase_customEvent(self.h, event.h)

type QWebEngineUrlRequestInterceptorcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QWebEngineUrlRequestInterceptor, slot: proc(super: QWebEngineUrlRequestInterceptorcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineUrlRequestInterceptorcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_customEvent(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_customEvent ".} =
  type Cb = proc(super: QWebEngineUrlRequestInterceptorcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QWebEngineUrlRequestInterceptor(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QWebEngineUrlRequestInterceptor, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebEngineUrlRequestInterceptor_virtualbase_connectNotify(self.h, signal.h)

type QWebEngineUrlRequestInterceptorconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QWebEngineUrlRequestInterceptor, slot: proc(super: QWebEngineUrlRequestInterceptorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineUrlRequestInterceptorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_connectNotify(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_connectNotify ".} =
  type Cb = proc(super: QWebEngineUrlRequestInterceptorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QWebEngineUrlRequestInterceptor(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QWebEngineUrlRequestInterceptor, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebEngineUrlRequestInterceptor_virtualbase_disconnectNotify(self.h, signal.h)

type QWebEngineUrlRequestInterceptordisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QWebEngineUrlRequestInterceptor, slot: proc(super: QWebEngineUrlRequestInterceptordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineUrlRequestInterceptordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlRequestInterceptor_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlRequestInterceptor_disconnectNotify(self: ptr cQWebEngineUrlRequestInterceptor, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlRequestInterceptor_disconnectNotify ".} =
  type Cb = proc(super: QWebEngineUrlRequestInterceptordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QWebEngineUrlRequestInterceptor(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QWebEngineUrlRequestInterceptor): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQWebEngineUrlRequestInterceptor_staticMetaObject())
proc delete*(self: QWebEngineUrlRequestInterceptor) =
  fcQWebEngineUrlRequestInterceptor_delete(self.h)
