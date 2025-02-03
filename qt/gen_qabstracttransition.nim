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
{.compile("gen_qabstracttransition.cpp", cflags).}


type QAbstractTransitionTransitionType* = cint
const
  QAbstractTransitionExternalTransition* = 0
  QAbstractTransitionInternalTransition* = 1



import gen_qabstracttransition_types
export gen_qabstracttransition_types

import
  gen_qabstractanimation,
  gen_qabstractstate,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qstate,
  gen_qstatemachine
export
  gen_qabstractanimation,
  gen_qabstractstate,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qstate,
  gen_qstatemachine

type cQAbstractTransition*{.exportc: "QAbstractTransition", incompleteStruct.} = object

proc fcQAbstractTransition_new(): ptr cQAbstractTransition {.importc: "QAbstractTransition_new".}
proc fcQAbstractTransition_new2(sourceState: pointer): ptr cQAbstractTransition {.importc: "QAbstractTransition_new2".}
proc fcQAbstractTransition_metaObject(self: pointer, ): pointer {.importc: "QAbstractTransition_metaObject".}
proc fcQAbstractTransition_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractTransition_metacast".}
proc fcQAbstractTransition_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractTransition_metacall".}
proc fcQAbstractTransition_tr(s: cstring): struct_miqt_string {.importc: "QAbstractTransition_tr".}
proc fcQAbstractTransition_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractTransition_trUtf8".}
proc fcQAbstractTransition_sourceState(self: pointer, ): pointer {.importc: "QAbstractTransition_sourceState".}
proc fcQAbstractTransition_targetState(self: pointer, ): pointer {.importc: "QAbstractTransition_targetState".}
proc fcQAbstractTransition_setTargetState(self: pointer, target: pointer): void {.importc: "QAbstractTransition_setTargetState".}
proc fcQAbstractTransition_targetStates(self: pointer, ): struct_miqt_array {.importc: "QAbstractTransition_targetStates".}
proc fcQAbstractTransition_setTargetStates(self: pointer, targets: struct_miqt_array): void {.importc: "QAbstractTransition_setTargetStates".}
proc fcQAbstractTransition_transitionType(self: pointer, ): cint {.importc: "QAbstractTransition_transitionType".}
proc fcQAbstractTransition_setTransitionType(self: pointer, typeVal: cint): void {.importc: "QAbstractTransition_setTransitionType".}
proc fcQAbstractTransition_machine(self: pointer, ): pointer {.importc: "QAbstractTransition_machine".}
proc fcQAbstractTransition_addAnimation(self: pointer, animation: pointer): void {.importc: "QAbstractTransition_addAnimation".}
proc fcQAbstractTransition_removeAnimation(self: pointer, animation: pointer): void {.importc: "QAbstractTransition_removeAnimation".}
proc fcQAbstractTransition_animations(self: pointer, ): struct_miqt_array {.importc: "QAbstractTransition_animations".}
proc fcQAbstractTransition_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractTransition_tr2".}
proc fcQAbstractTransition_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractTransition_tr3".}
proc fcQAbstractTransition_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractTransition_trUtf82".}
proc fcQAbstractTransition_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractTransition_trUtf83".}
proc fQAbstractTransition_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractTransition_virtualbase_metacall".}
proc fcQAbstractTransition_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_metacall".}
proc fcQAbstractTransition_override_virtual_eventTest(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_eventTest".}
proc fcQAbstractTransition_override_virtual_onTransition(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_onTransition".}
proc fQAbstractTransition_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QAbstractTransition_virtualbase_event".}
proc fcQAbstractTransition_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_event".}
proc fQAbstractTransition_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractTransition_virtualbase_eventFilter".}
proc fcQAbstractTransition_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_eventFilter".}
proc fQAbstractTransition_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractTransition_virtualbase_timerEvent".}
proc fcQAbstractTransition_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_timerEvent".}
proc fQAbstractTransition_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractTransition_virtualbase_childEvent".}
proc fcQAbstractTransition_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_childEvent".}
proc fQAbstractTransition_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractTransition_virtualbase_customEvent".}
proc fcQAbstractTransition_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_customEvent".}
proc fQAbstractTransition_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractTransition_virtualbase_connectNotify".}
proc fcQAbstractTransition_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_connectNotify".}
proc fQAbstractTransition_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractTransition_virtualbase_disconnectNotify".}
proc fcQAbstractTransition_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractTransition_override_virtual_disconnectNotify".}
proc fcQAbstractTransition_delete(self: pointer) {.importc: "QAbstractTransition_delete".}


func init*(T: type QAbstractTransition, h: ptr cQAbstractTransition): QAbstractTransition =
  T(h: h)
proc create*(T: type QAbstractTransition, ): QAbstractTransition =

  QAbstractTransition.init(fcQAbstractTransition_new())
proc create*(T: type QAbstractTransition, sourceState: gen_qstate.QState): QAbstractTransition =

  QAbstractTransition.init(fcQAbstractTransition_new2(sourceState.h))
proc metaObject*(self: QAbstractTransition, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAbstractTransition_metaObject(self.h))

proc metacast*(self: QAbstractTransition, param1: cstring): pointer =

  fcQAbstractTransition_metacast(self.h, param1)

proc metacall*(self: QAbstractTransition, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAbstractTransition_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAbstractTransition, s: cstring): string =

  let v_ms = fcQAbstractTransition_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QAbstractTransition, s: cstring): string =

  let v_ms = fcQAbstractTransition_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sourceState*(self: QAbstractTransition, ): gen_qstate.QState =

  gen_qstate.QState(h: fcQAbstractTransition_sourceState(self.h))

proc targetState*(self: QAbstractTransition, ): gen_qabstractstate.QAbstractState =

  gen_qabstractstate.QAbstractState(h: fcQAbstractTransition_targetState(self.h))

proc setTargetState*(self: QAbstractTransition, target: gen_qabstractstate.QAbstractState): void =

  fcQAbstractTransition_setTargetState(self.h, target.h)

proc targetStates*(self: QAbstractTransition, ): seq[gen_qabstractstate.QAbstractState] =

  var v_ma = fcQAbstractTransition_targetStates(self.h)
  var vx_ret = newSeq[gen_qabstractstate.QAbstractState](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractstate.QAbstractState(h: v_outCast[i])
  vx_ret

proc setTargetStates*(self: QAbstractTransition, targets: seq[gen_qabstractstate.QAbstractState]): void =

  var targets_CArray = newSeq[pointer](len(targets))
  for i in 0..<len(targets):
    targets_CArray[i] = targets[i].h

  fcQAbstractTransition_setTargetStates(self.h, struct_miqt_array(len: csize_t(len(targets)), data: if len(targets) == 0: nil else: addr(targets_CArray[0])))

proc transitionType*(self: QAbstractTransition, ): QAbstractTransitionTransitionType =

  QAbstractTransitionTransitionType(fcQAbstractTransition_transitionType(self.h))

proc setTransitionType*(self: QAbstractTransition, typeVal: QAbstractTransitionTransitionType): void =

  fcQAbstractTransition_setTransitionType(self.h, cint(typeVal))

proc machine*(self: QAbstractTransition, ): gen_qstatemachine.QStateMachine =

  gen_qstatemachine.QStateMachine(h: fcQAbstractTransition_machine(self.h))

proc addAnimation*(self: QAbstractTransition, animation: gen_qabstractanimation.QAbstractAnimation): void =

  fcQAbstractTransition_addAnimation(self.h, animation.h)

proc removeAnimation*(self: QAbstractTransition, animation: gen_qabstractanimation.QAbstractAnimation): void =

  fcQAbstractTransition_removeAnimation(self.h, animation.h)

proc animations*(self: QAbstractTransition, ): seq[gen_qabstractanimation.QAbstractAnimation] =

  var v_ma = fcQAbstractTransition_animations(self.h)
  var vx_ret = newSeq[gen_qabstractanimation.QAbstractAnimation](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractanimation.QAbstractAnimation(h: v_outCast[i])
  vx_ret

proc tr2*(_: type QAbstractTransition, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractTransition_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAbstractTransition, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractTransition_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QAbstractTransition, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractTransition_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAbstractTransition, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractTransition_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QAbstractTransition, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAbstractTransition_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractTransitionmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAbstractTransition, slot: proc(super: QAbstractTransitionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTransitionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_metacall(self: ptr cQAbstractTransition, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractTransition_metacall ".} =
  type Cb = proc(super: QAbstractTransitionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAbstractTransition(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QAbstractTransitioneventTestBase* = proc(event: gen_qcoreevent.QEvent): bool
proc oneventTest*(self: QAbstractTransition, slot: proc(event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_eventTest(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_eventTest(self: ptr cQAbstractTransition, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTransition_eventTest ".} =
  type Cb = proc(event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
type QAbstractTransitiononTransitionBase* = proc(event: gen_qcoreevent.QEvent): void
proc ononTransition*(self: QAbstractTransition, slot: proc(event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_onTransition(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_onTransition(self: ptr cQAbstractTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractTransition_onTransition ".} =
  type Cb = proc(event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc callVirtualBase_event(self: QAbstractTransition, e: gen_qcoreevent.QEvent): bool =


  fQAbstractTransition_virtualbase_event(self.h, e.h)

type QAbstractTransitioneventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAbstractTransition, slot: proc(super: QAbstractTransitioneventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTransitioneventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_event(self: ptr cQAbstractTransition, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTransition_event ".} =
  type Cb = proc(super: QAbstractTransitioneventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAbstractTransition(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAbstractTransition, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAbstractTransition_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractTransitioneventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAbstractTransition, slot: proc(super: QAbstractTransitioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTransitioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_eventFilter(self: ptr cQAbstractTransition, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractTransition_eventFilter ".} =
  type Cb = proc(super: QAbstractTransitioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAbstractTransition(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAbstractTransition, event: gen_qcoreevent.QTimerEvent): void =


  fQAbstractTransition_virtualbase_timerEvent(self.h, event.h)

type QAbstractTransitiontimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAbstractTransition, slot: proc(super: QAbstractTransitiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTransitiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_timerEvent(self: ptr cQAbstractTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractTransition_timerEvent ".} =
  type Cb = proc(super: QAbstractTransitiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAbstractTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAbstractTransition, event: gen_qcoreevent.QChildEvent): void =


  fQAbstractTransition_virtualbase_childEvent(self.h, event.h)

type QAbstractTransitionchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAbstractTransition, slot: proc(super: QAbstractTransitionchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTransitionchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_childEvent(self: ptr cQAbstractTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractTransition_childEvent ".} =
  type Cb = proc(super: QAbstractTransitionchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAbstractTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAbstractTransition, event: gen_qcoreevent.QEvent): void =


  fQAbstractTransition_virtualbase_customEvent(self.h, event.h)

type QAbstractTransitioncustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAbstractTransition, slot: proc(super: QAbstractTransitioncustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTransitioncustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_customEvent(self: ptr cQAbstractTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractTransition_customEvent ".} =
  type Cb = proc(super: QAbstractTransitioncustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAbstractTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAbstractTransition, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractTransition_virtualbase_connectNotify(self.h, signal.h)

type QAbstractTransitionconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAbstractTransition, slot: proc(super: QAbstractTransitionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTransitionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_connectNotify(self: ptr cQAbstractTransition, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractTransition_connectNotify ".} =
  type Cb = proc(super: QAbstractTransitionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAbstractTransition(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAbstractTransition, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractTransition_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractTransitiondisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAbstractTransition, slot: proc(super: QAbstractTransitiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractTransitiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractTransition_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractTransition_disconnectNotify(self: ptr cQAbstractTransition, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractTransition_disconnectNotify ".} =
  type Cb = proc(super: QAbstractTransitiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAbstractTransition(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QAbstractTransition) =
  fcQAbstractTransition_delete(self.h)
