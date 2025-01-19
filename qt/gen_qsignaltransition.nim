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
{.compile("gen_qsignaltransition.cpp", cflags).}


import gen_qsignaltransition_types
export gen_qsignaltransition_types

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

type cQSignalTransition*{.exportc: "QSignalTransition", incompleteStruct.} = object

proc fcQSignalTransition_new(): ptr cQSignalTransition {.importc: "QSignalTransition_new".}
proc fcQSignalTransition_new2(sender: pointer, signal: cstring): ptr cQSignalTransition {.importc: "QSignalTransition_new2".}
proc fcQSignalTransition_new3(sourceState: pointer): ptr cQSignalTransition {.importc: "QSignalTransition_new3".}
proc fcQSignalTransition_new4(sender: pointer, signal: cstring, sourceState: pointer): ptr cQSignalTransition {.importc: "QSignalTransition_new4".}
proc fcQSignalTransition_metaObject(self: pointer, ): pointer {.importc: "QSignalTransition_metaObject".}
proc fcQSignalTransition_metacast(self: pointer, param1: cstring): pointer {.importc: "QSignalTransition_metacast".}
proc fcQSignalTransition_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSignalTransition_metacall".}
proc fcQSignalTransition_tr(s: cstring): struct_miqt_string {.importc: "QSignalTransition_tr".}
proc fcQSignalTransition_trUtf8(s: cstring): struct_miqt_string {.importc: "QSignalTransition_trUtf8".}
proc fcQSignalTransition_senderObject(self: pointer, ): pointer {.importc: "QSignalTransition_senderObject".}
proc fcQSignalTransition_setSenderObject(self: pointer, sender: pointer): void {.importc: "QSignalTransition_setSenderObject".}
proc fcQSignalTransition_signal(self: pointer, ): struct_miqt_string {.importc: "QSignalTransition_signal".}
proc fcQSignalTransition_setSignal(self: pointer, signal: struct_miqt_string): void {.importc: "QSignalTransition_setSignal".}
proc fcQSignalTransition_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSignalTransition_tr2".}
proc fcQSignalTransition_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSignalTransition_tr3".}
proc fcQSignalTransition_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSignalTransition_trUtf82".}
proc fcQSignalTransition_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSignalTransition_trUtf83".}
proc fQSignalTransition_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSignalTransition_virtualbase_metacall".}
proc fcQSignalTransition_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSignalTransition_override_virtual_metacall".}
proc fQSignalTransition_virtualbase_eventTest(self: pointer, event: pointer): bool{.importc: "QSignalTransition_virtualbase_eventTest".}
proc fcQSignalTransition_override_virtual_eventTest(self: pointer, slot: int) {.importc: "QSignalTransition_override_virtual_eventTest".}
proc fQSignalTransition_virtualbase_onTransition(self: pointer, event: pointer): void{.importc: "QSignalTransition_virtualbase_onTransition".}
proc fcQSignalTransition_override_virtual_onTransition(self: pointer, slot: int) {.importc: "QSignalTransition_override_virtual_onTransition".}
proc fQSignalTransition_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QSignalTransition_virtualbase_event".}
proc fcQSignalTransition_override_virtual_event(self: pointer, slot: int) {.importc: "QSignalTransition_override_virtual_event".}
proc fQSignalTransition_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSignalTransition_virtualbase_eventFilter".}
proc fcQSignalTransition_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSignalTransition_override_virtual_eventFilter".}
proc fQSignalTransition_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSignalTransition_virtualbase_timerEvent".}
proc fcQSignalTransition_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSignalTransition_override_virtual_timerEvent".}
proc fQSignalTransition_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSignalTransition_virtualbase_childEvent".}
proc fcQSignalTransition_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSignalTransition_override_virtual_childEvent".}
proc fQSignalTransition_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSignalTransition_virtualbase_customEvent".}
proc fcQSignalTransition_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSignalTransition_override_virtual_customEvent".}
proc fQSignalTransition_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSignalTransition_virtualbase_connectNotify".}
proc fcQSignalTransition_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSignalTransition_override_virtual_connectNotify".}
proc fQSignalTransition_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSignalTransition_virtualbase_disconnectNotify".}
proc fcQSignalTransition_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSignalTransition_override_virtual_disconnectNotify".}
proc fcQSignalTransition_staticMetaObject(): pointer {.importc: "QSignalTransition_staticMetaObject".}
proc fcQSignalTransition_delete(self: pointer) {.importc: "QSignalTransition_delete".}


func init*(T: type QSignalTransition, h: ptr cQSignalTransition): QSignalTransition =
  T(h: h)
proc create*(T: type QSignalTransition, ): QSignalTransition =

  QSignalTransition.init(fcQSignalTransition_new())
proc create*(T: type QSignalTransition, sender: gen_qobject.QObject, signal: cstring): QSignalTransition =

  QSignalTransition.init(fcQSignalTransition_new2(sender.h, signal))
proc create*(T: type QSignalTransition, sourceState: gen_qstate.QState): QSignalTransition =

  QSignalTransition.init(fcQSignalTransition_new3(sourceState.h))
proc create*(T: type QSignalTransition, sender: gen_qobject.QObject, signal: cstring, sourceState: gen_qstate.QState): QSignalTransition =

  QSignalTransition.init(fcQSignalTransition_new4(sender.h, signal, sourceState.h))
proc metaObject*(self: QSignalTransition, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSignalTransition_metaObject(self.h))

proc metacast*(self: QSignalTransition, param1: cstring): pointer =

  fcQSignalTransition_metacast(self.h, param1)

proc metacall*(self: QSignalTransition, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSignalTransition_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSignalTransition, s: cstring): string =

  let v_ms = fcQSignalTransition_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QSignalTransition, s: cstring): string =

  let v_ms = fcQSignalTransition_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc senderObject*(self: QSignalTransition, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQSignalTransition_senderObject(self.h))

proc setSenderObject*(self: QSignalTransition, sender: gen_qobject.QObject): void =

  fcQSignalTransition_setSenderObject(self.h, sender.h)

proc signal*(self: QSignalTransition, ): seq[byte] =

  var v_bytearray = fcQSignalTransition_signal(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setSignal*(self: QSignalTransition, signal: seq[byte]): void =

  fcQSignalTransition_setSignal(self.h, struct_miqt_string(data: cast[cstring](if len(signal) == 0: nil else: unsafeAddr signal[0]), len: csize_t(len(signal))))

proc tr2*(_: type QSignalTransition, s: cstring, c: cstring): string =

  let v_ms = fcQSignalTransition_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSignalTransition, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSignalTransition_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QSignalTransition, s: cstring, c: cstring): string =

  let v_ms = fcQSignalTransition_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QSignalTransition, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSignalTransition_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QSignalTransition, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSignalTransition_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSignalTransitionmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSignalTransition, slot: proc(super: QSignalTransitionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSignalTransitionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalTransition_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalTransition_metacall(self: ptr cQSignalTransition, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSignalTransition_metacall ".} =
  type Cb = proc(super: QSignalTransitionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSignalTransition(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_eventTest(self: QSignalTransition, event: gen_qcoreevent.QEvent): bool =


  fQSignalTransition_virtualbase_eventTest(self.h, event.h)

type QSignalTransitioneventTestBase* = proc(event: gen_qcoreevent.QEvent): bool
proc oneventTest*(self: QSignalTransition, slot: proc(super: QSignalTransitioneventTestBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSignalTransitioneventTestBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalTransition_override_virtual_eventTest(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalTransition_eventTest(self: ptr cQSignalTransition, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSignalTransition_eventTest ".} =
  type Cb = proc(super: QSignalTransitioneventTestBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventTest(QSignalTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_onTransition(self: QSignalTransition, event: gen_qcoreevent.QEvent): void =


  fQSignalTransition_virtualbase_onTransition(self.h, event.h)

type QSignalTransitiononTransitionBase* = proc(event: gen_qcoreevent.QEvent): void
proc ononTransition*(self: QSignalTransition, slot: proc(super: QSignalTransitiononTransitionBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSignalTransitiononTransitionBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalTransition_override_virtual_onTransition(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalTransition_onTransition(self: ptr cQSignalTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSignalTransition_onTransition ".} =
  type Cb = proc(super: QSignalTransitiononTransitionBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_onTransition(QSignalTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QSignalTransition, e: gen_qcoreevent.QEvent): bool =


  fQSignalTransition_virtualbase_event(self.h, e.h)

type QSignalTransitioneventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSignalTransition, slot: proc(super: QSignalTransitioneventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSignalTransitioneventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalTransition_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalTransition_event(self: ptr cQSignalTransition, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QSignalTransition_event ".} =
  type Cb = proc(super: QSignalTransitioneventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSignalTransition(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSignalTransition, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSignalTransition_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSignalTransitioneventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSignalTransition, slot: proc(super: QSignalTransitioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSignalTransitioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalTransition_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalTransition_eventFilter(self: ptr cQSignalTransition, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSignalTransition_eventFilter ".} =
  type Cb = proc(super: QSignalTransitioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSignalTransition(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSignalTransition, event: gen_qcoreevent.QTimerEvent): void =


  fQSignalTransition_virtualbase_timerEvent(self.h, event.h)

type QSignalTransitiontimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSignalTransition, slot: proc(super: QSignalTransitiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSignalTransitiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalTransition_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalTransition_timerEvent(self: ptr cQSignalTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSignalTransition_timerEvent ".} =
  type Cb = proc(super: QSignalTransitiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSignalTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSignalTransition, event: gen_qcoreevent.QChildEvent): void =


  fQSignalTransition_virtualbase_childEvent(self.h, event.h)

type QSignalTransitionchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSignalTransition, slot: proc(super: QSignalTransitionchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSignalTransitionchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalTransition_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalTransition_childEvent(self: ptr cQSignalTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSignalTransition_childEvent ".} =
  type Cb = proc(super: QSignalTransitionchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSignalTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSignalTransition, event: gen_qcoreevent.QEvent): void =


  fQSignalTransition_virtualbase_customEvent(self.h, event.h)

type QSignalTransitioncustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSignalTransition, slot: proc(super: QSignalTransitioncustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSignalTransitioncustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalTransition_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalTransition_customEvent(self: ptr cQSignalTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSignalTransition_customEvent ".} =
  type Cb = proc(super: QSignalTransitioncustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSignalTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSignalTransition, signal: gen_qmetaobject.QMetaMethod): void =


  fQSignalTransition_virtualbase_connectNotify(self.h, signal.h)

type QSignalTransitionconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSignalTransition, slot: proc(super: QSignalTransitionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSignalTransitionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalTransition_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalTransition_connectNotify(self: ptr cQSignalTransition, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSignalTransition_connectNotify ".} =
  type Cb = proc(super: QSignalTransitionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSignalTransition(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSignalTransition, signal: gen_qmetaobject.QMetaMethod): void =


  fQSignalTransition_virtualbase_disconnectNotify(self.h, signal.h)

type QSignalTransitiondisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSignalTransition, slot: proc(super: QSignalTransitiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSignalTransitiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalTransition_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalTransition_disconnectNotify(self: ptr cQSignalTransition, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSignalTransition_disconnectNotify ".} =
  type Cb = proc(super: QSignalTransitiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSignalTransition(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QSignalTransition): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSignalTransition_staticMetaObject())
proc delete*(self: QSignalTransition) =
  fcQSignalTransition_delete(self.h)
