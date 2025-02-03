import Qt5Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5Widgets")
{.compile("gen_qobjectcleanuphandler.cpp", cflags).}


import gen_qobjectcleanuphandler_types
export gen_qobjectcleanuphandler_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQObjectCleanupHandler*{.exportc: "QObjectCleanupHandler", incompleteStruct.} = object

proc fcQObjectCleanupHandler_new(): ptr cQObjectCleanupHandler {.importc: "QObjectCleanupHandler_new".}
proc fcQObjectCleanupHandler_metaObject(self: pointer, ): pointer {.importc: "QObjectCleanupHandler_metaObject".}
proc fcQObjectCleanupHandler_metacast(self: pointer, param1: cstring): pointer {.importc: "QObjectCleanupHandler_metacast".}
proc fcQObjectCleanupHandler_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QObjectCleanupHandler_metacall".}
proc fcQObjectCleanupHandler_tr(s: cstring): struct_miqt_string {.importc: "QObjectCleanupHandler_tr".}
proc fcQObjectCleanupHandler_trUtf8(s: cstring): struct_miqt_string {.importc: "QObjectCleanupHandler_trUtf8".}
proc fcQObjectCleanupHandler_add(self: pointer, objectVal: pointer): pointer {.importc: "QObjectCleanupHandler_add".}
proc fcQObjectCleanupHandler_remove(self: pointer, objectVal: pointer): void {.importc: "QObjectCleanupHandler_remove".}
proc fcQObjectCleanupHandler_isEmpty(self: pointer, ): bool {.importc: "QObjectCleanupHandler_isEmpty".}
proc fcQObjectCleanupHandler_clear(self: pointer, ): void {.importc: "QObjectCleanupHandler_clear".}
proc fcQObjectCleanupHandler_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QObjectCleanupHandler_tr2".}
proc fcQObjectCleanupHandler_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QObjectCleanupHandler_tr3".}
proc fcQObjectCleanupHandler_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QObjectCleanupHandler_trUtf82".}
proc fcQObjectCleanupHandler_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QObjectCleanupHandler_trUtf83".}
proc fQObjectCleanupHandler_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QObjectCleanupHandler_virtualbase_metacall".}
proc fcQObjectCleanupHandler_override_virtual_metacall(self: pointer, slot: int) {.importc: "QObjectCleanupHandler_override_virtual_metacall".}
proc fQObjectCleanupHandler_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QObjectCleanupHandler_virtualbase_event".}
proc fcQObjectCleanupHandler_override_virtual_event(self: pointer, slot: int) {.importc: "QObjectCleanupHandler_override_virtual_event".}
proc fQObjectCleanupHandler_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QObjectCleanupHandler_virtualbase_eventFilter".}
proc fcQObjectCleanupHandler_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QObjectCleanupHandler_override_virtual_eventFilter".}
proc fQObjectCleanupHandler_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QObjectCleanupHandler_virtualbase_timerEvent".}
proc fcQObjectCleanupHandler_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QObjectCleanupHandler_override_virtual_timerEvent".}
proc fQObjectCleanupHandler_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QObjectCleanupHandler_virtualbase_childEvent".}
proc fcQObjectCleanupHandler_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QObjectCleanupHandler_override_virtual_childEvent".}
proc fQObjectCleanupHandler_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QObjectCleanupHandler_virtualbase_customEvent".}
proc fcQObjectCleanupHandler_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QObjectCleanupHandler_override_virtual_customEvent".}
proc fQObjectCleanupHandler_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QObjectCleanupHandler_virtualbase_connectNotify".}
proc fcQObjectCleanupHandler_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QObjectCleanupHandler_override_virtual_connectNotify".}
proc fQObjectCleanupHandler_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QObjectCleanupHandler_virtualbase_disconnectNotify".}
proc fcQObjectCleanupHandler_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QObjectCleanupHandler_override_virtual_disconnectNotify".}
proc fcQObjectCleanupHandler_delete(self: pointer) {.importc: "QObjectCleanupHandler_delete".}


func init*(T: type QObjectCleanupHandler, h: ptr cQObjectCleanupHandler): QObjectCleanupHandler =
  T(h: h)
proc create*(T: type QObjectCleanupHandler, ): QObjectCleanupHandler =

  QObjectCleanupHandler.init(fcQObjectCleanupHandler_new())
proc metaObject*(self: QObjectCleanupHandler, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQObjectCleanupHandler_metaObject(self.h))

proc metacast*(self: QObjectCleanupHandler, param1: cstring): pointer =

  fcQObjectCleanupHandler_metacast(self.h, param1)

proc metacall*(self: QObjectCleanupHandler, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQObjectCleanupHandler_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QObjectCleanupHandler, s: cstring): string =

  let v_ms = fcQObjectCleanupHandler_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QObjectCleanupHandler, s: cstring): string =

  let v_ms = fcQObjectCleanupHandler_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc add*(self: QObjectCleanupHandler, objectVal: gen_qobject.QObject): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQObjectCleanupHandler_add(self.h, objectVal.h))

proc remove*(self: QObjectCleanupHandler, objectVal: gen_qobject.QObject): void =

  fcQObjectCleanupHandler_remove(self.h, objectVal.h)

proc isEmpty*(self: QObjectCleanupHandler, ): bool =

  fcQObjectCleanupHandler_isEmpty(self.h)

proc clear*(self: QObjectCleanupHandler, ): void =

  fcQObjectCleanupHandler_clear(self.h)

proc tr2*(_: type QObjectCleanupHandler, s: cstring, c: cstring): string =

  let v_ms = fcQObjectCleanupHandler_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QObjectCleanupHandler, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQObjectCleanupHandler_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QObjectCleanupHandler, s: cstring, c: cstring): string =

  let v_ms = fcQObjectCleanupHandler_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QObjectCleanupHandler, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQObjectCleanupHandler_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QObjectCleanupHandler, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQObjectCleanupHandler_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QObjectCleanupHandlermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QObjectCleanupHandler, slot: proc(super: QObjectCleanupHandlermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QObjectCleanupHandlermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQObjectCleanupHandler_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObjectCleanupHandler_metacall(self: ptr cQObjectCleanupHandler, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QObjectCleanupHandler_metacall ".} =
  type Cb = proc(super: QObjectCleanupHandlermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QObjectCleanupHandler(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QObjectCleanupHandler, event: gen_qcoreevent.QEvent): bool =


  fQObjectCleanupHandler_virtualbase_event(self.h, event.h)

type QObjectCleanupHandlereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QObjectCleanupHandler, slot: proc(super: QObjectCleanupHandlereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QObjectCleanupHandlereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQObjectCleanupHandler_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObjectCleanupHandler_event(self: ptr cQObjectCleanupHandler, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QObjectCleanupHandler_event ".} =
  type Cb = proc(super: QObjectCleanupHandlereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QObjectCleanupHandler(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QObjectCleanupHandler, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQObjectCleanupHandler_virtualbase_eventFilter(self.h, watched.h, event.h)

type QObjectCleanupHandlereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QObjectCleanupHandler, slot: proc(super: QObjectCleanupHandlereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QObjectCleanupHandlereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQObjectCleanupHandler_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObjectCleanupHandler_eventFilter(self: ptr cQObjectCleanupHandler, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QObjectCleanupHandler_eventFilter ".} =
  type Cb = proc(super: QObjectCleanupHandlereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QObjectCleanupHandler(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QObjectCleanupHandler, event: gen_qcoreevent.QTimerEvent): void =


  fQObjectCleanupHandler_virtualbase_timerEvent(self.h, event.h)

type QObjectCleanupHandlertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QObjectCleanupHandler, slot: proc(super: QObjectCleanupHandlertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QObjectCleanupHandlertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQObjectCleanupHandler_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObjectCleanupHandler_timerEvent(self: ptr cQObjectCleanupHandler, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QObjectCleanupHandler_timerEvent ".} =
  type Cb = proc(super: QObjectCleanupHandlertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QObjectCleanupHandler(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QObjectCleanupHandler, event: gen_qcoreevent.QChildEvent): void =


  fQObjectCleanupHandler_virtualbase_childEvent(self.h, event.h)

type QObjectCleanupHandlerchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QObjectCleanupHandler, slot: proc(super: QObjectCleanupHandlerchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QObjectCleanupHandlerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQObjectCleanupHandler_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObjectCleanupHandler_childEvent(self: ptr cQObjectCleanupHandler, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QObjectCleanupHandler_childEvent ".} =
  type Cb = proc(super: QObjectCleanupHandlerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QObjectCleanupHandler(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QObjectCleanupHandler, event: gen_qcoreevent.QEvent): void =


  fQObjectCleanupHandler_virtualbase_customEvent(self.h, event.h)

type QObjectCleanupHandlercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QObjectCleanupHandler, slot: proc(super: QObjectCleanupHandlercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QObjectCleanupHandlercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQObjectCleanupHandler_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObjectCleanupHandler_customEvent(self: ptr cQObjectCleanupHandler, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QObjectCleanupHandler_customEvent ".} =
  type Cb = proc(super: QObjectCleanupHandlercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QObjectCleanupHandler(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QObjectCleanupHandler, signal: gen_qmetaobject.QMetaMethod): void =


  fQObjectCleanupHandler_virtualbase_connectNotify(self.h, signal.h)

type QObjectCleanupHandlerconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QObjectCleanupHandler, slot: proc(super: QObjectCleanupHandlerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QObjectCleanupHandlerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQObjectCleanupHandler_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObjectCleanupHandler_connectNotify(self: ptr cQObjectCleanupHandler, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QObjectCleanupHandler_connectNotify ".} =
  type Cb = proc(super: QObjectCleanupHandlerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QObjectCleanupHandler(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QObjectCleanupHandler, signal: gen_qmetaobject.QMetaMethod): void =


  fQObjectCleanupHandler_virtualbase_disconnectNotify(self.h, signal.h)

type QObjectCleanupHandlerdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QObjectCleanupHandler, slot: proc(super: QObjectCleanupHandlerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QObjectCleanupHandlerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQObjectCleanupHandler_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QObjectCleanupHandler_disconnectNotify(self: ptr cQObjectCleanupHandler, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QObjectCleanupHandler_disconnectNotify ".} =
  type Cb = proc(super: QObjectCleanupHandlerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QObjectCleanupHandler(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QObjectCleanupHandler) =
  fcQObjectCleanupHandler_delete(self.h)
