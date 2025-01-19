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
{.compile("gen_qeventtransition.cpp", cflags).}


import gen_qeventtransition_types
export gen_qeventtransition_types

import
  gen_qabstracttransition,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qstate
export
  gen_qabstracttransition,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qstate

type cQEventTransition*{.exportc: "QEventTransition", incompleteStruct.} = object

proc fcQEventTransition_new(): ptr cQEventTransition {.importc: "QEventTransition_new".}
proc fcQEventTransition_new2(objectVal: pointer, typeVal: cint): ptr cQEventTransition {.importc: "QEventTransition_new2".}
proc fcQEventTransition_new3(sourceState: pointer): ptr cQEventTransition {.importc: "QEventTransition_new3".}
proc fcQEventTransition_new4(objectVal: pointer, typeVal: cint, sourceState: pointer): ptr cQEventTransition {.importc: "QEventTransition_new4".}
proc fcQEventTransition_metaObject(self: pointer, ): pointer {.importc: "QEventTransition_metaObject".}
proc fcQEventTransition_metacast(self: pointer, param1: cstring): pointer {.importc: "QEventTransition_metacast".}
proc fcQEventTransition_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QEventTransition_metacall".}
proc fcQEventTransition_tr(s: cstring): struct_miqt_string {.importc: "QEventTransition_tr".}
proc fcQEventTransition_trUtf8(s: cstring): struct_miqt_string {.importc: "QEventTransition_trUtf8".}
proc fcQEventTransition_eventSource(self: pointer, ): pointer {.importc: "QEventTransition_eventSource".}
proc fcQEventTransition_setEventSource(self: pointer, objectVal: pointer): void {.importc: "QEventTransition_setEventSource".}
proc fcQEventTransition_eventType(self: pointer, ): cint {.importc: "QEventTransition_eventType".}
proc fcQEventTransition_setEventType(self: pointer, typeVal: cint): void {.importc: "QEventTransition_setEventType".}
proc fcQEventTransition_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QEventTransition_tr2".}
proc fcQEventTransition_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QEventTransition_tr3".}
proc fcQEventTransition_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QEventTransition_trUtf82".}
proc fcQEventTransition_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QEventTransition_trUtf83".}
proc fQEventTransition_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QEventTransition_virtualbase_metacall".}
proc fcQEventTransition_override_virtual_metacall(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_metacall".}
proc fQEventTransition_virtualbase_eventTest(self: pointer, event: pointer): bool{.importc: "QEventTransition_virtualbase_eventTest".}
proc fcQEventTransition_override_virtual_eventTest(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_eventTest".}
proc fQEventTransition_virtualbase_onTransition(self: pointer, event: pointer): void{.importc: "QEventTransition_virtualbase_onTransition".}
proc fcQEventTransition_override_virtual_onTransition(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_onTransition".}
proc fQEventTransition_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QEventTransition_virtualbase_event".}
proc fcQEventTransition_override_virtual_event(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_event".}
proc fQEventTransition_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QEventTransition_virtualbase_eventFilter".}
proc fcQEventTransition_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_eventFilter".}
proc fQEventTransition_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QEventTransition_virtualbase_timerEvent".}
proc fcQEventTransition_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_timerEvent".}
proc fQEventTransition_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QEventTransition_virtualbase_childEvent".}
proc fcQEventTransition_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_childEvent".}
proc fQEventTransition_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QEventTransition_virtualbase_customEvent".}
proc fcQEventTransition_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_customEvent".}
proc fQEventTransition_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QEventTransition_virtualbase_connectNotify".}
proc fcQEventTransition_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_connectNotify".}
proc fQEventTransition_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QEventTransition_virtualbase_disconnectNotify".}
proc fcQEventTransition_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QEventTransition_override_virtual_disconnectNotify".}
proc fcQEventTransition_staticMetaObject(): pointer {.importc: "QEventTransition_staticMetaObject".}
proc fcQEventTransition_delete(self: pointer) {.importc: "QEventTransition_delete".}


func init*(T: type QEventTransition, h: ptr cQEventTransition): QEventTransition =
  T(h: h)
proc create*(T: type QEventTransition, ): QEventTransition =

  QEventTransition.init(fcQEventTransition_new())
proc create*(T: type QEventTransition, objectVal: gen_qobject.QObject, typeVal: gen_qcoreevent.QEventType): QEventTransition =

  QEventTransition.init(fcQEventTransition_new2(objectVal.h, cint(typeVal)))
proc create*(T: type QEventTransition, sourceState: gen_qstate.QState): QEventTransition =

  QEventTransition.init(fcQEventTransition_new3(sourceState.h))
proc create*(T: type QEventTransition, objectVal: gen_qobject.QObject, typeVal: gen_qcoreevent.QEventType, sourceState: gen_qstate.QState): QEventTransition =

  QEventTransition.init(fcQEventTransition_new4(objectVal.h, cint(typeVal), sourceState.h))
proc metaObject*(self: QEventTransition, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQEventTransition_metaObject(self.h))

proc metacast*(self: QEventTransition, param1: cstring): pointer =

  fcQEventTransition_metacast(self.h, param1)

proc metacall*(self: QEventTransition, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQEventTransition_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QEventTransition, s: cstring): string =

  let v_ms = fcQEventTransition_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QEventTransition, s: cstring): string =

  let v_ms = fcQEventTransition_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc eventSource*(self: QEventTransition, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQEventTransition_eventSource(self.h))

proc setEventSource*(self: QEventTransition, objectVal: gen_qobject.QObject): void =

  fcQEventTransition_setEventSource(self.h, objectVal.h)

proc eventType*(self: QEventTransition, ): gen_qcoreevent.QEventType =

  gen_qcoreevent.QEventType(fcQEventTransition_eventType(self.h))

proc setEventType*(self: QEventTransition, typeVal: gen_qcoreevent.QEventType): void =

  fcQEventTransition_setEventType(self.h, cint(typeVal))

proc tr2*(_: type QEventTransition, s: cstring, c: cstring): string =

  let v_ms = fcQEventTransition_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QEventTransition, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQEventTransition_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QEventTransition, s: cstring, c: cstring): string =

  let v_ms = fcQEventTransition_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QEventTransition, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQEventTransition_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QEventTransition, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQEventTransition_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QEventTransitionmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QEventTransition, slot: proc(super: QEventTransitionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QEventTransitionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_metacall(self: ptr cQEventTransition, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QEventTransition_metacall ".} =
  type Cb = proc(super: QEventTransitionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QEventTransition(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_eventTest(self: QEventTransition, event: gen_qcoreevent.QEvent): bool =


  fQEventTransition_virtualbase_eventTest(self.h, event.h)

type QEventTransitioneventTestBase* = proc(event: gen_qcoreevent.QEvent): bool
proc oneventTest*(self: QEventTransition, slot: proc(super: QEventTransitioneventTestBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QEventTransitioneventTestBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_eventTest(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_eventTest(self: ptr cQEventTransition, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QEventTransition_eventTest ".} =
  type Cb = proc(super: QEventTransitioneventTestBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventTest(QEventTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_onTransition(self: QEventTransition, event: gen_qcoreevent.QEvent): void =


  fQEventTransition_virtualbase_onTransition(self.h, event.h)

type QEventTransitiononTransitionBase* = proc(event: gen_qcoreevent.QEvent): void
proc ononTransition*(self: QEventTransition, slot: proc(super: QEventTransitiononTransitionBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QEventTransitiononTransitionBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_onTransition(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_onTransition(self: ptr cQEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QEventTransition_onTransition ".} =
  type Cb = proc(super: QEventTransitiononTransitionBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_onTransition(QEventTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QEventTransition, e: gen_qcoreevent.QEvent): bool =


  fQEventTransition_virtualbase_event(self.h, e.h)

type QEventTransitioneventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QEventTransition, slot: proc(super: QEventTransitioneventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QEventTransitioneventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_event(self: ptr cQEventTransition, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QEventTransition_event ".} =
  type Cb = proc(super: QEventTransitioneventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QEventTransition(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QEventTransition, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQEventTransition_virtualbase_eventFilter(self.h, watched.h, event.h)

type QEventTransitioneventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QEventTransition, slot: proc(super: QEventTransitioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QEventTransitioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_eventFilter(self: ptr cQEventTransition, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QEventTransition_eventFilter ".} =
  type Cb = proc(super: QEventTransitioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QEventTransition(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QEventTransition, event: gen_qcoreevent.QTimerEvent): void =


  fQEventTransition_virtualbase_timerEvent(self.h, event.h)

type QEventTransitiontimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QEventTransition, slot: proc(super: QEventTransitiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QEventTransitiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_timerEvent(self: ptr cQEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QEventTransition_timerEvent ".} =
  type Cb = proc(super: QEventTransitiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QEventTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QEventTransition, event: gen_qcoreevent.QChildEvent): void =


  fQEventTransition_virtualbase_childEvent(self.h, event.h)

type QEventTransitionchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QEventTransition, slot: proc(super: QEventTransitionchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QEventTransitionchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_childEvent(self: ptr cQEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QEventTransition_childEvent ".} =
  type Cb = proc(super: QEventTransitionchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QEventTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QEventTransition, event: gen_qcoreevent.QEvent): void =


  fQEventTransition_virtualbase_customEvent(self.h, event.h)

type QEventTransitioncustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QEventTransition, slot: proc(super: QEventTransitioncustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QEventTransitioncustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_customEvent(self: ptr cQEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QEventTransition_customEvent ".} =
  type Cb = proc(super: QEventTransitioncustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QEventTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QEventTransition, signal: gen_qmetaobject.QMetaMethod): void =


  fQEventTransition_virtualbase_connectNotify(self.h, signal.h)

type QEventTransitionconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QEventTransition, slot: proc(super: QEventTransitionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QEventTransitionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_connectNotify(self: ptr cQEventTransition, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QEventTransition_connectNotify ".} =
  type Cb = proc(super: QEventTransitionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QEventTransition(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QEventTransition, signal: gen_qmetaobject.QMetaMethod): void =


  fQEventTransition_virtualbase_disconnectNotify(self.h, signal.h)

type QEventTransitiondisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QEventTransition, slot: proc(super: QEventTransitiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QEventTransitiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEventTransition_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventTransition_disconnectNotify(self: ptr cQEventTransition, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QEventTransition_disconnectNotify ".} =
  type Cb = proc(super: QEventTransitiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QEventTransition(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QEventTransition): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQEventTransition_staticMetaObject())
proc delete*(self: QEventTransition) =
  fcQEventTransition_delete(self.h)
