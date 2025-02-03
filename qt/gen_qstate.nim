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
{.compile("gen_qstate.cpp", cflags).}


type QStateChildMode* = cint
const
  QStateExclusiveStates* = 0
  QStateParallelStates* = 1



type QStateRestorePolicy* = cint
const
  QStateDontRestoreProperties* = 0
  QStateRestoreProperties* = 1



import gen_qstate_types
export gen_qstate_types

import
  gen_qabstractstate,
  gen_qabstracttransition,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsignaltransition,
  gen_qvariant
export
  gen_qabstractstate,
  gen_qabstracttransition,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsignaltransition,
  gen_qvariant

type cQState*{.exportc: "QState", incompleteStruct.} = object

proc fcQState_new(): ptr cQState {.importc: "QState_new".}
proc fcQState_new2(childMode: cint): ptr cQState {.importc: "QState_new2".}
proc fcQState_new3(parent: pointer): ptr cQState {.importc: "QState_new3".}
proc fcQState_new4(childMode: cint, parent: pointer): ptr cQState {.importc: "QState_new4".}
proc fcQState_metaObject(self: pointer, ): pointer {.importc: "QState_metaObject".}
proc fcQState_metacast(self: pointer, param1: cstring): pointer {.importc: "QState_metacast".}
proc fcQState_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QState_metacall".}
proc fcQState_tr(s: cstring): struct_miqt_string {.importc: "QState_tr".}
proc fcQState_trUtf8(s: cstring): struct_miqt_string {.importc: "QState_trUtf8".}
proc fcQState_errorState(self: pointer, ): pointer {.importc: "QState_errorState".}
proc fcQState_setErrorState(self: pointer, state: pointer): void {.importc: "QState_setErrorState".}
proc fcQState_addTransition(self: pointer, transition: pointer): void {.importc: "QState_addTransition".}
proc fcQState_addTransition2(self: pointer, sender: pointer, signal: cstring, target: pointer): pointer {.importc: "QState_addTransition2".}
proc fcQState_addTransitionWithTarget(self: pointer, target: pointer): pointer {.importc: "QState_addTransitionWithTarget".}
proc fcQState_removeTransition(self: pointer, transition: pointer): void {.importc: "QState_removeTransition".}
proc fcQState_transitions(self: pointer, ): struct_miqt_array {.importc: "QState_transitions".}
proc fcQState_initialState(self: pointer, ): pointer {.importc: "QState_initialState".}
proc fcQState_setInitialState(self: pointer, state: pointer): void {.importc: "QState_setInitialState".}
proc fcQState_childMode(self: pointer, ): cint {.importc: "QState_childMode".}
proc fcQState_setChildMode(self: pointer, mode: cint): void {.importc: "QState_setChildMode".}
proc fcQState_assignProperty(self: pointer, objectVal: pointer, name: cstring, value: pointer): void {.importc: "QState_assignProperty".}
proc fcQState_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QState_tr2".}
proc fcQState_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QState_tr3".}
proc fcQState_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QState_trUtf82".}
proc fcQState_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QState_trUtf83".}
proc fQState_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QState_virtualbase_metacall".}
proc fcQState_override_virtual_metacall(self: pointer, slot: int) {.importc: "QState_override_virtual_metacall".}
proc fQState_virtualbase_onEntry(self: pointer, event: pointer): void{.importc: "QState_virtualbase_onEntry".}
proc fcQState_override_virtual_onEntry(self: pointer, slot: int) {.importc: "QState_override_virtual_onEntry".}
proc fQState_virtualbase_onExit(self: pointer, event: pointer): void{.importc: "QState_virtualbase_onExit".}
proc fcQState_override_virtual_onExit(self: pointer, slot: int) {.importc: "QState_override_virtual_onExit".}
proc fQState_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QState_virtualbase_event".}
proc fcQState_override_virtual_event(self: pointer, slot: int) {.importc: "QState_override_virtual_event".}
proc fQState_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QState_virtualbase_eventFilter".}
proc fcQState_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QState_override_virtual_eventFilter".}
proc fQState_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QState_virtualbase_timerEvent".}
proc fcQState_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QState_override_virtual_timerEvent".}
proc fQState_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QState_virtualbase_childEvent".}
proc fcQState_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QState_override_virtual_childEvent".}
proc fQState_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QState_virtualbase_customEvent".}
proc fcQState_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QState_override_virtual_customEvent".}
proc fQState_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QState_virtualbase_connectNotify".}
proc fcQState_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QState_override_virtual_connectNotify".}
proc fQState_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QState_virtualbase_disconnectNotify".}
proc fcQState_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QState_override_virtual_disconnectNotify".}
proc fcQState_delete(self: pointer) {.importc: "QState_delete".}


func init*(T: type QState, h: ptr cQState): QState =
  T(h: h)
proc create*(T: type QState, ): QState =

  QState.init(fcQState_new())
proc create*(T: type QState, childMode: QStateChildMode): QState =

  QState.init(fcQState_new2(cint(childMode)))
proc create*(T: type QState, parent: QState): QState =

  QState.init(fcQState_new3(parent.h))
proc create*(T: type QState, childMode: QStateChildMode, parent: QState): QState =

  QState.init(fcQState_new4(cint(childMode), parent.h))
proc metaObject*(self: QState, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQState_metaObject(self.h))

proc metacast*(self: QState, param1: cstring): pointer =

  fcQState_metacast(self.h, param1)

proc metacall*(self: QState, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQState_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QState, s: cstring): string =

  let v_ms = fcQState_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QState, s: cstring): string =

  let v_ms = fcQState_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc errorState*(self: QState, ): gen_qabstractstate.QAbstractState =

  gen_qabstractstate.QAbstractState(h: fcQState_errorState(self.h))

proc setErrorState*(self: QState, state: gen_qabstractstate.QAbstractState): void =

  fcQState_setErrorState(self.h, state.h)

proc addTransition*(self: QState, transition: gen_qabstracttransition.QAbstractTransition): void =

  fcQState_addTransition(self.h, transition.h)

proc addTransition2*(self: QState, sender: gen_qobject.QObject, signal: cstring, target: gen_qabstractstate.QAbstractState): gen_qsignaltransition.QSignalTransition =

  gen_qsignaltransition.QSignalTransition(h: fcQState_addTransition2(self.h, sender.h, signal, target.h))

proc addTransitionWithTarget*(self: QState, target: gen_qabstractstate.QAbstractState): gen_qabstracttransition.QAbstractTransition =

  gen_qabstracttransition.QAbstractTransition(h: fcQState_addTransitionWithTarget(self.h, target.h))

proc removeTransition*(self: QState, transition: gen_qabstracttransition.QAbstractTransition): void =

  fcQState_removeTransition(self.h, transition.h)

proc transitions*(self: QState, ): seq[gen_qabstracttransition.QAbstractTransition] =

  var v_ma = fcQState_transitions(self.h)
  var vx_ret = newSeq[gen_qabstracttransition.QAbstractTransition](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstracttransition.QAbstractTransition(h: v_outCast[i])
  vx_ret

proc initialState*(self: QState, ): gen_qabstractstate.QAbstractState =

  gen_qabstractstate.QAbstractState(h: fcQState_initialState(self.h))

proc setInitialState*(self: QState, state: gen_qabstractstate.QAbstractState): void =

  fcQState_setInitialState(self.h, state.h)

proc childMode*(self: QState, ): QStateChildMode =

  QStateChildMode(fcQState_childMode(self.h))

proc setChildMode*(self: QState, mode: QStateChildMode): void =

  fcQState_setChildMode(self.h, cint(mode))

proc assignProperty*(self: QState, objectVal: gen_qobject.QObject, name: cstring, value: gen_qvariant.QVariant): void =

  fcQState_assignProperty(self.h, objectVal.h, name, value.h)

proc tr2*(_: type QState, s: cstring, c: cstring): string =

  let v_ms = fcQState_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QState, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQState_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QState, s: cstring, c: cstring): string =

  let v_ms = fcQState_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QState, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQState_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QState, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQState_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QStatemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QState, slot: proc(super: QStatemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QStatemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQState_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QState_metacall(self: ptr cQState, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QState_metacall ".} =
  type Cb = proc(super: QStatemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QState(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_onEntry(self: QState, event: gen_qcoreevent.QEvent): void =


  fQState_virtualbase_onEntry(self.h, event.h)

type QStateonEntryBase* = proc(event: gen_qcoreevent.QEvent): void
proc ononEntry*(self: QState, slot: proc(super: QStateonEntryBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStateonEntryBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQState_override_virtual_onEntry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QState_onEntry(self: ptr cQState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QState_onEntry ".} =
  type Cb = proc(super: QStateonEntryBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_onEntry(QState(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_onExit(self: QState, event: gen_qcoreevent.QEvent): void =


  fQState_virtualbase_onExit(self.h, event.h)

type QStateonExitBase* = proc(event: gen_qcoreevent.QEvent): void
proc ononExit*(self: QState, slot: proc(super: QStateonExitBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStateonExitBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQState_override_virtual_onExit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QState_onExit(self: ptr cQState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QState_onExit ".} =
  type Cb = proc(super: QStateonExitBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_onExit(QState(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QState, e: gen_qcoreevent.QEvent): bool =


  fQState_virtualbase_event(self.h, e.h)

type QStateeventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QState, slot: proc(super: QStateeventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QStateeventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQState_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QState_event(self: ptr cQState, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QState_event ".} =
  type Cb = proc(super: QStateeventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QState(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QState, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQState_virtualbase_eventFilter(self.h, watched.h, event.h)

type QStateeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QState, slot: proc(super: QStateeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QStateeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQState_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QState_eventFilter(self: ptr cQState, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QState_eventFilter ".} =
  type Cb = proc(super: QStateeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QState(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QState, event: gen_qcoreevent.QTimerEvent): void =


  fQState_virtualbase_timerEvent(self.h, event.h)

type QStatetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QState, slot: proc(super: QStatetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQState_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QState_timerEvent(self: ptr cQState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QState_timerEvent ".} =
  type Cb = proc(super: QStatetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QState(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QState, event: gen_qcoreevent.QChildEvent): void =


  fQState_virtualbase_childEvent(self.h, event.h)

type QStatechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QState, slot: proc(super: QStatechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQState_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QState_childEvent(self: ptr cQState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QState_childEvent ".} =
  type Cb = proc(super: QStatechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QState(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QState, event: gen_qcoreevent.QEvent): void =


  fQState_virtualbase_customEvent(self.h, event.h)

type QStatecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QState, slot: proc(super: QStatecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStatecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQState_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QState_customEvent(self: ptr cQState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QState_customEvent ".} =
  type Cb = proc(super: QStatecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QState(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QState, signal: gen_qmetaobject.QMetaMethod): void =


  fQState_virtualbase_connectNotify(self.h, signal.h)

type QStateconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QState, slot: proc(super: QStateconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QStateconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQState_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QState_connectNotify(self: ptr cQState, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QState_connectNotify ".} =
  type Cb = proc(super: QStateconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QState(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QState, signal: gen_qmetaobject.QMetaMethod): void =


  fQState_virtualbase_disconnectNotify(self.h, signal.h)

type QStatedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QState, slot: proc(super: QStatedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QStatedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQState_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QState_disconnectNotify(self: ptr cQState, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QState_disconnectNotify ".} =
  type Cb = proc(super: QStatedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QState(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QState) =
  fcQState_delete(self.h)
