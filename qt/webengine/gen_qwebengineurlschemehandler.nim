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
{.compile("gen_qwebengineurlschemehandler.cpp", cflags).}


import gen_qwebengineurlschemehandler_types
export gen_qwebengineurlschemehandler_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qwebengineurlrequestjob
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qwebengineurlrequestjob

type cQWebEngineUrlSchemeHandler*{.exportc: "QWebEngineUrlSchemeHandler", incompleteStruct.} = object

proc fcQWebEngineUrlSchemeHandler_new(): ptr cQWebEngineUrlSchemeHandler {.importc: "QWebEngineUrlSchemeHandler_new".}
proc fcQWebEngineUrlSchemeHandler_new2(parent: pointer): ptr cQWebEngineUrlSchemeHandler {.importc: "QWebEngineUrlSchemeHandler_new2".}
proc fcQWebEngineUrlSchemeHandler_metaObject(self: pointer, ): pointer {.importc: "QWebEngineUrlSchemeHandler_metaObject".}
proc fcQWebEngineUrlSchemeHandler_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineUrlSchemeHandler_metacast".}
proc fcQWebEngineUrlSchemeHandler_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineUrlSchemeHandler_metacall".}
proc fcQWebEngineUrlSchemeHandler_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineUrlSchemeHandler_tr".}
proc fcQWebEngineUrlSchemeHandler_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebEngineUrlSchemeHandler_trUtf8".}
proc fcQWebEngineUrlSchemeHandler_requestStarted(self: pointer, param1: pointer): void {.importc: "QWebEngineUrlSchemeHandler_requestStarted".}
proc fcQWebEngineUrlSchemeHandler_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineUrlSchemeHandler_tr2".}
proc fcQWebEngineUrlSchemeHandler_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineUrlSchemeHandler_tr3".}
proc fcQWebEngineUrlSchemeHandler_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineUrlSchemeHandler_trUtf82".}
proc fcQWebEngineUrlSchemeHandler_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineUrlSchemeHandler_trUtf83".}
proc fQWebEngineUrlSchemeHandler_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWebEngineUrlSchemeHandler_virtualbase_metacall".}
proc fcQWebEngineUrlSchemeHandler_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWebEngineUrlSchemeHandler_override_virtual_metacall".}
proc fcQWebEngineUrlSchemeHandler_override_virtual_requestStarted(self: pointer, slot: int) {.importc: "QWebEngineUrlSchemeHandler_override_virtual_requestStarted".}
proc fQWebEngineUrlSchemeHandler_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWebEngineUrlSchemeHandler_virtualbase_event".}
proc fcQWebEngineUrlSchemeHandler_override_virtual_event(self: pointer, slot: int) {.importc: "QWebEngineUrlSchemeHandler_override_virtual_event".}
proc fQWebEngineUrlSchemeHandler_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebEngineUrlSchemeHandler_virtualbase_eventFilter".}
proc fcQWebEngineUrlSchemeHandler_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebEngineUrlSchemeHandler_override_virtual_eventFilter".}
proc fQWebEngineUrlSchemeHandler_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebEngineUrlSchemeHandler_virtualbase_timerEvent".}
proc fcQWebEngineUrlSchemeHandler_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebEngineUrlSchemeHandler_override_virtual_timerEvent".}
proc fQWebEngineUrlSchemeHandler_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebEngineUrlSchemeHandler_virtualbase_childEvent".}
proc fcQWebEngineUrlSchemeHandler_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebEngineUrlSchemeHandler_override_virtual_childEvent".}
proc fQWebEngineUrlSchemeHandler_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebEngineUrlSchemeHandler_virtualbase_customEvent".}
proc fcQWebEngineUrlSchemeHandler_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebEngineUrlSchemeHandler_override_virtual_customEvent".}
proc fQWebEngineUrlSchemeHandler_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebEngineUrlSchemeHandler_virtualbase_connectNotify".}
proc fcQWebEngineUrlSchemeHandler_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebEngineUrlSchemeHandler_override_virtual_connectNotify".}
proc fQWebEngineUrlSchemeHandler_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebEngineUrlSchemeHandler_virtualbase_disconnectNotify".}
proc fcQWebEngineUrlSchemeHandler_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebEngineUrlSchemeHandler_override_virtual_disconnectNotify".}
proc fcQWebEngineUrlSchemeHandler_delete(self: pointer) {.importc: "QWebEngineUrlSchemeHandler_delete".}


func init*(T: type QWebEngineUrlSchemeHandler, h: ptr cQWebEngineUrlSchemeHandler): QWebEngineUrlSchemeHandler =
  T(h: h)
proc create*(T: type QWebEngineUrlSchemeHandler, ): QWebEngineUrlSchemeHandler =

  QWebEngineUrlSchemeHandler.init(fcQWebEngineUrlSchemeHandler_new())
proc create*(T: type QWebEngineUrlSchemeHandler, parent: gen_qobject.QObject): QWebEngineUrlSchemeHandler =

  QWebEngineUrlSchemeHandler.init(fcQWebEngineUrlSchemeHandler_new2(parent.h))
proc metaObject*(self: QWebEngineUrlSchemeHandler, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebEngineUrlSchemeHandler_metaObject(self.h))

proc metacast*(self: QWebEngineUrlSchemeHandler, param1: cstring): pointer =

  fcQWebEngineUrlSchemeHandler_metacast(self.h, param1)

proc metacall*(self: QWebEngineUrlSchemeHandler, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWebEngineUrlSchemeHandler_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWebEngineUrlSchemeHandler, s: cstring): string =

  let v_ms = fcQWebEngineUrlSchemeHandler_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QWebEngineUrlSchemeHandler, s: cstring): string =

  let v_ms = fcQWebEngineUrlSchemeHandler_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc requestStarted*(self: QWebEngineUrlSchemeHandler, param1: gen_qwebengineurlrequestjob.QWebEngineUrlRequestJob): void =

  fcQWebEngineUrlSchemeHandler_requestStarted(self.h, param1.h)

proc tr2*(_: type QWebEngineUrlSchemeHandler, s: cstring, c: cstring): string =

  let v_ms = fcQWebEngineUrlSchemeHandler_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWebEngineUrlSchemeHandler, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebEngineUrlSchemeHandler_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QWebEngineUrlSchemeHandler, s: cstring, c: cstring): string =

  let v_ms = fcQWebEngineUrlSchemeHandler_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QWebEngineUrlSchemeHandler, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebEngineUrlSchemeHandler_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QWebEngineUrlSchemeHandler, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQWebEngineUrlSchemeHandler_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWebEngineUrlSchemeHandlermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QWebEngineUrlSchemeHandler, slot: proc(super: QWebEngineUrlSchemeHandlermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineUrlSchemeHandlermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlSchemeHandler_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlSchemeHandler_metacall(self: ptr cQWebEngineUrlSchemeHandler, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWebEngineUrlSchemeHandler_metacall ".} =
  type Cb = proc(super: QWebEngineUrlSchemeHandlermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QWebEngineUrlSchemeHandler(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QWebEngineUrlSchemeHandlerrequestStartedBase* = proc(param1: gen_qwebengineurlrequestjob.QWebEngineUrlRequestJob): void
proc onrequestStarted*(self: QWebEngineUrlSchemeHandler, slot: proc(param1: gen_qwebengineurlrequestjob.QWebEngineUrlRequestJob): void) =
  # TODO check subclass
  type Cb = proc(param1: gen_qwebengineurlrequestjob.QWebEngineUrlRequestJob): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlSchemeHandler_override_virtual_requestStarted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlSchemeHandler_requestStarted(self: ptr cQWebEngineUrlSchemeHandler, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlSchemeHandler_requestStarted ".} =
  type Cb = proc(param1: gen_qwebengineurlrequestjob.QWebEngineUrlRequestJob): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwebengineurlrequestjob.QWebEngineUrlRequestJob(h: param1)


  nimfunc[](slotval1)
proc callVirtualBase_event(self: QWebEngineUrlSchemeHandler, event: gen_qcoreevent.QEvent): bool =


  fQWebEngineUrlSchemeHandler_virtualbase_event(self.h, event.h)

type QWebEngineUrlSchemeHandlereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QWebEngineUrlSchemeHandler, slot: proc(super: QWebEngineUrlSchemeHandlereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineUrlSchemeHandlereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlSchemeHandler_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlSchemeHandler_event(self: ptr cQWebEngineUrlSchemeHandler, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWebEngineUrlSchemeHandler_event ".} =
  type Cb = proc(super: QWebEngineUrlSchemeHandlereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QWebEngineUrlSchemeHandler(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QWebEngineUrlSchemeHandler, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQWebEngineUrlSchemeHandler_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebEngineUrlSchemeHandlereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QWebEngineUrlSchemeHandler, slot: proc(super: QWebEngineUrlSchemeHandlereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineUrlSchemeHandlereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlSchemeHandler_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlSchemeHandler_eventFilter(self: ptr cQWebEngineUrlSchemeHandler, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebEngineUrlSchemeHandler_eventFilter ".} =
  type Cb = proc(super: QWebEngineUrlSchemeHandlereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QWebEngineUrlSchemeHandler(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QWebEngineUrlSchemeHandler, event: gen_qcoreevent.QTimerEvent): void =


  fQWebEngineUrlSchemeHandler_virtualbase_timerEvent(self.h, event.h)

type QWebEngineUrlSchemeHandlertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QWebEngineUrlSchemeHandler, slot: proc(super: QWebEngineUrlSchemeHandlertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineUrlSchemeHandlertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlSchemeHandler_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlSchemeHandler_timerEvent(self: ptr cQWebEngineUrlSchemeHandler, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlSchemeHandler_timerEvent ".} =
  type Cb = proc(super: QWebEngineUrlSchemeHandlertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QWebEngineUrlSchemeHandler(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QWebEngineUrlSchemeHandler, event: gen_qcoreevent.QChildEvent): void =


  fQWebEngineUrlSchemeHandler_virtualbase_childEvent(self.h, event.h)

type QWebEngineUrlSchemeHandlerchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QWebEngineUrlSchemeHandler, slot: proc(super: QWebEngineUrlSchemeHandlerchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineUrlSchemeHandlerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlSchemeHandler_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlSchemeHandler_childEvent(self: ptr cQWebEngineUrlSchemeHandler, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlSchemeHandler_childEvent ".} =
  type Cb = proc(super: QWebEngineUrlSchemeHandlerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QWebEngineUrlSchemeHandler(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QWebEngineUrlSchemeHandler, event: gen_qcoreevent.QEvent): void =


  fQWebEngineUrlSchemeHandler_virtualbase_customEvent(self.h, event.h)

type QWebEngineUrlSchemeHandlercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QWebEngineUrlSchemeHandler, slot: proc(super: QWebEngineUrlSchemeHandlercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineUrlSchemeHandlercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlSchemeHandler_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlSchemeHandler_customEvent(self: ptr cQWebEngineUrlSchemeHandler, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlSchemeHandler_customEvent ".} =
  type Cb = proc(super: QWebEngineUrlSchemeHandlercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QWebEngineUrlSchemeHandler(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QWebEngineUrlSchemeHandler, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebEngineUrlSchemeHandler_virtualbase_connectNotify(self.h, signal.h)

type QWebEngineUrlSchemeHandlerconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QWebEngineUrlSchemeHandler, slot: proc(super: QWebEngineUrlSchemeHandlerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineUrlSchemeHandlerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlSchemeHandler_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlSchemeHandler_connectNotify(self: ptr cQWebEngineUrlSchemeHandler, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlSchemeHandler_connectNotify ".} =
  type Cb = proc(super: QWebEngineUrlSchemeHandlerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QWebEngineUrlSchemeHandler(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QWebEngineUrlSchemeHandler, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebEngineUrlSchemeHandler_virtualbase_disconnectNotify(self.h, signal.h)

type QWebEngineUrlSchemeHandlerdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QWebEngineUrlSchemeHandler, slot: proc(super: QWebEngineUrlSchemeHandlerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebEngineUrlSchemeHandlerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebEngineUrlSchemeHandler_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebEngineUrlSchemeHandler_disconnectNotify(self: ptr cQWebEngineUrlSchemeHandler, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebEngineUrlSchemeHandler_disconnectNotify ".} =
  type Cb = proc(super: QWebEngineUrlSchemeHandlerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QWebEngineUrlSchemeHandler(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QWebEngineUrlSchemeHandler) =
  fcQWebEngineUrlSchemeHandler_delete(self.h)
