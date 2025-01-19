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
{.compile("gen_qstatemachine.cpp", cflags).}


type QStateMachineEventPriority* = cint
const
  QStateMachineNormalPriority* = 0
  QStateMachineHighPriority* = 1



type QStateMachineError* = cint
const
  QStateMachineNoError* = 0
  QStateMachineNoInitialStateError* = 1
  QStateMachineNoDefaultStateInHistoryStateError* = 2
  QStateMachineNoCommonAncestorForTransitionError* = 3
  QStateMachineStateMachineChildModeSetToParallelError* = 4



import gen_qstatemachine_types
export gen_qstatemachine_types

import
  gen_qabstractanimation,
  gen_qabstractstate,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qstate,
  std/sets
export
  gen_qabstractanimation,
  gen_qabstractstate,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qstate

type cQStateMachine*{.exportc: "QStateMachine", incompleteStruct.} = object
type cQStateMachineSignalEvent*{.exportc: "QStateMachine__SignalEvent", incompleteStruct.} = object
type cQStateMachineWrappedEvent*{.exportc: "QStateMachine__WrappedEvent", incompleteStruct.} = object

proc fcQStateMachine_new(): ptr cQStateMachine {.importc: "QStateMachine_new".}
proc fcQStateMachine_new2(childMode: cint): ptr cQStateMachine {.importc: "QStateMachine_new2".}
proc fcQStateMachine_new3(parent: pointer): ptr cQStateMachine {.importc: "QStateMachine_new3".}
proc fcQStateMachine_new4(childMode: cint, parent: pointer): ptr cQStateMachine {.importc: "QStateMachine_new4".}
proc fcQStateMachine_metaObject(self: pointer, ): pointer {.importc: "QStateMachine_metaObject".}
proc fcQStateMachine_metacast(self: pointer, param1: cstring): pointer {.importc: "QStateMachine_metacast".}
proc fcQStateMachine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStateMachine_metacall".}
proc fcQStateMachine_tr(s: cstring): struct_miqt_string {.importc: "QStateMachine_tr".}
proc fcQStateMachine_trUtf8(s: cstring): struct_miqt_string {.importc: "QStateMachine_trUtf8".}
proc fcQStateMachine_addState(self: pointer, state: pointer): void {.importc: "QStateMachine_addState".}
proc fcQStateMachine_removeState(self: pointer, state: pointer): void {.importc: "QStateMachine_removeState".}
proc fcQStateMachine_error(self: pointer, ): cint {.importc: "QStateMachine_error".}
proc fcQStateMachine_errorString(self: pointer, ): struct_miqt_string {.importc: "QStateMachine_errorString".}
proc fcQStateMachine_clearError(self: pointer, ): void {.importc: "QStateMachine_clearError".}
proc fcQStateMachine_isRunning(self: pointer, ): bool {.importc: "QStateMachine_isRunning".}
proc fcQStateMachine_isAnimated(self: pointer, ): bool {.importc: "QStateMachine_isAnimated".}
proc fcQStateMachine_setAnimated(self: pointer, enabled: bool): void {.importc: "QStateMachine_setAnimated".}
proc fcQStateMachine_addDefaultAnimation(self: pointer, animation: pointer): void {.importc: "QStateMachine_addDefaultAnimation".}
proc fcQStateMachine_defaultAnimations(self: pointer, ): struct_miqt_array {.importc: "QStateMachine_defaultAnimations".}
proc fcQStateMachine_removeDefaultAnimation(self: pointer, animation: pointer): void {.importc: "QStateMachine_removeDefaultAnimation".}
proc fcQStateMachine_globalRestorePolicy(self: pointer, ): cint {.importc: "QStateMachine_globalRestorePolicy".}
proc fcQStateMachine_setGlobalRestorePolicy(self: pointer, restorePolicy: cint): void {.importc: "QStateMachine_setGlobalRestorePolicy".}
proc fcQStateMachine_postEvent(self: pointer, event: pointer): void {.importc: "QStateMachine_postEvent".}
proc fcQStateMachine_postDelayedEvent(self: pointer, event: pointer, delay: cint): cint {.importc: "QStateMachine_postDelayedEvent".}
proc fcQStateMachine_cancelDelayedEvent(self: pointer, id: cint): bool {.importc: "QStateMachine_cancelDelayedEvent".}
proc fcQStateMachine_configuration(self: pointer, ): HashSet[pointer] {.importc: "QStateMachine_configuration".}
proc fcQStateMachine_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QStateMachine_eventFilter".}
proc fcQStateMachine_start(self: pointer, ): void {.importc: "QStateMachine_start".}
proc fcQStateMachine_stop(self: pointer, ): void {.importc: "QStateMachine_stop".}
proc fcQStateMachine_setRunning(self: pointer, running: bool): void {.importc: "QStateMachine_setRunning".}
proc fcQStateMachine_runningChanged(self: pointer, running: bool): void {.importc: "QStateMachine_runningChanged".}
proc fQStateMachine_connect_runningChanged(self: pointer, slot: int) {.importc: "QStateMachine_connect_runningChanged".}
proc fcQStateMachine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStateMachine_tr2".}
proc fcQStateMachine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStateMachine_tr3".}
proc fcQStateMachine_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QStateMachine_trUtf82".}
proc fcQStateMachine_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStateMachine_trUtf83".}
proc fcQStateMachine_postEvent2(self: pointer, event: pointer, priority: cint): void {.importc: "QStateMachine_postEvent2".}
proc fQStateMachine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QStateMachine_virtualbase_metacall".}
proc fcQStateMachine_override_virtual_metacall(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_metacall".}
proc fQStateMachine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QStateMachine_virtualbase_eventFilter".}
proc fcQStateMachine_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_eventFilter".}
proc fQStateMachine_virtualbase_onEntry(self: pointer, event: pointer): void{.importc: "QStateMachine_virtualbase_onEntry".}
proc fcQStateMachine_override_virtual_onEntry(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_onEntry".}
proc fQStateMachine_virtualbase_onExit(self: pointer, event: pointer): void{.importc: "QStateMachine_virtualbase_onExit".}
proc fcQStateMachine_override_virtual_onExit(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_onExit".}
proc fQStateMachine_virtualbase_beginSelectTransitions(self: pointer, event: pointer): void{.importc: "QStateMachine_virtualbase_beginSelectTransitions".}
proc fcQStateMachine_override_virtual_beginSelectTransitions(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_beginSelectTransitions".}
proc fQStateMachine_virtualbase_endSelectTransitions(self: pointer, event: pointer): void{.importc: "QStateMachine_virtualbase_endSelectTransitions".}
proc fcQStateMachine_override_virtual_endSelectTransitions(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_endSelectTransitions".}
proc fQStateMachine_virtualbase_beginMicrostep(self: pointer, event: pointer): void{.importc: "QStateMachine_virtualbase_beginMicrostep".}
proc fcQStateMachine_override_virtual_beginMicrostep(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_beginMicrostep".}
proc fQStateMachine_virtualbase_endMicrostep(self: pointer, event: pointer): void{.importc: "QStateMachine_virtualbase_endMicrostep".}
proc fcQStateMachine_override_virtual_endMicrostep(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_endMicrostep".}
proc fQStateMachine_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QStateMachine_virtualbase_event".}
proc fcQStateMachine_override_virtual_event(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_event".}
proc fQStateMachine_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QStateMachine_virtualbase_timerEvent".}
proc fcQStateMachine_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_timerEvent".}
proc fQStateMachine_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QStateMachine_virtualbase_childEvent".}
proc fcQStateMachine_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_childEvent".}
proc fQStateMachine_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QStateMachine_virtualbase_customEvent".}
proc fcQStateMachine_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_customEvent".}
proc fQStateMachine_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QStateMachine_virtualbase_connectNotify".}
proc fcQStateMachine_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_connectNotify".}
proc fQStateMachine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QStateMachine_virtualbase_disconnectNotify".}
proc fcQStateMachine_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QStateMachine_override_virtual_disconnectNotify".}
proc fcQStateMachine_staticMetaObject(): pointer {.importc: "QStateMachine_staticMetaObject".}
proc fcQStateMachine_delete(self: pointer) {.importc: "QStateMachine_delete".}
proc fcQStateMachineSignalEvent_new(param1: pointer): ptr cQStateMachineSignalEvent {.importc: "QStateMachine__SignalEvent_new".}
proc fcQStateMachineSignalEvent_sender(self: pointer, ): pointer {.importc: "QStateMachine__SignalEvent_sender".}
proc fcQStateMachineSignalEvent_signalIndex(self: pointer, ): cint {.importc: "QStateMachine__SignalEvent_signalIndex".}
proc fcQStateMachineSignalEvent_delete(self: pointer) {.importc: "QStateMachine__SignalEvent_delete".}
proc fcQStateMachineWrappedEvent_new(objectVal: pointer, event: pointer): ptr cQStateMachineWrappedEvent {.importc: "QStateMachine__WrappedEvent_new".}
proc fcQStateMachineWrappedEvent_new2(param1: pointer): ptr cQStateMachineWrappedEvent {.importc: "QStateMachine__WrappedEvent_new2".}
proc fcQStateMachineWrappedEvent_objectX(self: pointer, ): pointer {.importc: "QStateMachine__WrappedEvent_object".}
proc fcQStateMachineWrappedEvent_event(self: pointer, ): pointer {.importc: "QStateMachine__WrappedEvent_event".}
proc fcQStateMachineWrappedEvent_delete(self: pointer) {.importc: "QStateMachine__WrappedEvent_delete".}


func init*(T: type QStateMachine, h: ptr cQStateMachine): QStateMachine =
  T(h: h)
proc create*(T: type QStateMachine, ): QStateMachine =

  QStateMachine.init(fcQStateMachine_new())
proc create*(T: type QStateMachine, childMode: gen_qstate.QStateChildMode): QStateMachine =

  QStateMachine.init(fcQStateMachine_new2(cint(childMode)))
proc create*(T: type QStateMachine, parent: gen_qobject.QObject): QStateMachine =

  QStateMachine.init(fcQStateMachine_new3(parent.h))
proc create*(T: type QStateMachine, childMode: gen_qstate.QStateChildMode, parent: gen_qobject.QObject): QStateMachine =

  QStateMachine.init(fcQStateMachine_new4(cint(childMode), parent.h))
proc metaObject*(self: QStateMachine, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQStateMachine_metaObject(self.h))

proc metacast*(self: QStateMachine, param1: cstring): pointer =

  fcQStateMachine_metacast(self.h, param1)

proc metacall*(self: QStateMachine, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQStateMachine_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QStateMachine, s: cstring): string =

  let v_ms = fcQStateMachine_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QStateMachine, s: cstring): string =

  let v_ms = fcQStateMachine_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addState*(self: QStateMachine, state: gen_qabstractstate.QAbstractState): void =

  fcQStateMachine_addState(self.h, state.h)

proc removeState*(self: QStateMachine, state: gen_qabstractstate.QAbstractState): void =

  fcQStateMachine_removeState(self.h, state.h)

proc error*(self: QStateMachine, ): QStateMachineError =

  QStateMachineError(fcQStateMachine_error(self.h))

proc errorString*(self: QStateMachine, ): string =

  let v_ms = fcQStateMachine_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clearError*(self: QStateMachine, ): void =

  fcQStateMachine_clearError(self.h)

proc isRunning*(self: QStateMachine, ): bool =

  fcQStateMachine_isRunning(self.h)

proc isAnimated*(self: QStateMachine, ): bool =

  fcQStateMachine_isAnimated(self.h)

proc setAnimated*(self: QStateMachine, enabled: bool): void =

  fcQStateMachine_setAnimated(self.h, enabled)

proc addDefaultAnimation*(self: QStateMachine, animation: gen_qabstractanimation.QAbstractAnimation): void =

  fcQStateMachine_addDefaultAnimation(self.h, animation.h)

proc defaultAnimations*(self: QStateMachine, ): seq[gen_qabstractanimation.QAbstractAnimation] =

  var v_ma = fcQStateMachine_defaultAnimations(self.h)
  var vx_ret = newSeq[gen_qabstractanimation.QAbstractAnimation](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qabstractanimation.QAbstractAnimation(h: v_outCast[i])
  vx_ret

proc removeDefaultAnimation*(self: QStateMachine, animation: gen_qabstractanimation.QAbstractAnimation): void =

  fcQStateMachine_removeDefaultAnimation(self.h, animation.h)

proc globalRestorePolicy*(self: QStateMachine, ): gen_qstate.QStateRestorePolicy =

  gen_qstate.QStateRestorePolicy(fcQStateMachine_globalRestorePolicy(self.h))

proc setGlobalRestorePolicy*(self: QStateMachine, restorePolicy: gen_qstate.QStateRestorePolicy): void =

  fcQStateMachine_setGlobalRestorePolicy(self.h, cint(restorePolicy))

proc postEvent*(self: QStateMachine, event: gen_qcoreevent.QEvent): void =

  fcQStateMachine_postEvent(self.h, event.h)

proc postDelayedEvent*(self: QStateMachine, event: gen_qcoreevent.QEvent, delay: cint): cint =

  fcQStateMachine_postDelayedEvent(self.h, event.h, delay)

proc cancelDelayedEvent*(self: QStateMachine, id: cint): bool =

  fcQStateMachine_cancelDelayedEvent(self.h, id)

proc configuration*(self: QStateMachine, ): HashSet[gen_qabstractstate.QAbstractState] =

  var v_ma = fcQStateMachine_configuration(self.h)
  vx_ret: HashSet[gen_qabstractstate.QAbstractState])
  v_outCast = cast[ptr UncheckedArray[pointer](v_ma.data))
  for i in 0..<v_ma.len:
    vx_ret.incl gen_qabstractstate.QAbstractState(h: v_outCast[i])
  vx_ret

proc eventFilter*(self: QStateMachine, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fcQStateMachine_eventFilter(self.h, watched.h, event.h)

proc start*(self: QStateMachine, ): void =

  fcQStateMachine_start(self.h)

proc stop*(self: QStateMachine, ): void =

  fcQStateMachine_stop(self.h)

proc setRunning*(self: QStateMachine, running: bool): void =

  fcQStateMachine_setRunning(self.h, running)

proc runningChanged*(self: QStateMachine, running: bool): void =

  fcQStateMachine_runningChanged(self.h, running)

proc miqt_exec_callback_QStateMachine_runningChanged(slot: int, running: bool) {.exportc.} =
  type Cb = proc(running: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = running


  nimfunc[](slotval1)

proc onrunningChanged*(self: QStateMachine, slot: proc(running: bool)) =
  type Cb = proc(running: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQStateMachine_connect_runningChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QStateMachine, s: cstring, c: cstring): string =

  let v_ms = fcQStateMachine_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QStateMachine, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQStateMachine_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QStateMachine, s: cstring, c: cstring): string =

  let v_ms = fcQStateMachine_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QStateMachine, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQStateMachine_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc postEvent2*(self: QStateMachine, event: gen_qcoreevent.QEvent, priority: QStateMachineEventPriority): void =

  fcQStateMachine_postEvent2(self.h, event.h, cint(priority))

proc callVirtualBase_metacall(self: QStateMachine, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQStateMachine_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QStateMachinemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QStateMachine, slot: proc(super: QStateMachinemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QStateMachinemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_metacall(self: ptr cQStateMachine, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QStateMachine_metacall ".} =
  type Cb = proc(super: QStateMachinemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QStateMachine(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QStateMachine, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQStateMachine_virtualbase_eventFilter(self.h, watched.h, event.h)

type QStateMachineeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QStateMachine, slot: proc(super: QStateMachineeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QStateMachineeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_eventFilter(self: ptr cQStateMachine, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QStateMachine_eventFilter ".} =
  type Cb = proc(super: QStateMachineeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QStateMachine(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_onEntry(self: QStateMachine, event: gen_qcoreevent.QEvent): void =


  fQStateMachine_virtualbase_onEntry(self.h, event.h)

type QStateMachineonEntryBase* = proc(event: gen_qcoreevent.QEvent): void
proc ononEntry*(self: QStateMachine, slot: proc(super: QStateMachineonEntryBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStateMachineonEntryBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_onEntry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_onEntry(self: ptr cQStateMachine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_onEntry ".} =
  type Cb = proc(super: QStateMachineonEntryBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_onEntry(QStateMachine(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_onExit(self: QStateMachine, event: gen_qcoreevent.QEvent): void =


  fQStateMachine_virtualbase_onExit(self.h, event.h)

type QStateMachineonExitBase* = proc(event: gen_qcoreevent.QEvent): void
proc ononExit*(self: QStateMachine, slot: proc(super: QStateMachineonExitBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStateMachineonExitBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_onExit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_onExit(self: ptr cQStateMachine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_onExit ".} =
  type Cb = proc(super: QStateMachineonExitBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_onExit(QStateMachine(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_beginSelectTransitions(self: QStateMachine, event: gen_qcoreevent.QEvent): void =


  fQStateMachine_virtualbase_beginSelectTransitions(self.h, event.h)

type QStateMachinebeginSelectTransitionsBase* = proc(event: gen_qcoreevent.QEvent): void
proc onbeginSelectTransitions*(self: QStateMachine, slot: proc(super: QStateMachinebeginSelectTransitionsBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStateMachinebeginSelectTransitionsBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_beginSelectTransitions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_beginSelectTransitions(self: ptr cQStateMachine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_beginSelectTransitions ".} =
  type Cb = proc(super: QStateMachinebeginSelectTransitionsBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_beginSelectTransitions(QStateMachine(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_endSelectTransitions(self: QStateMachine, event: gen_qcoreevent.QEvent): void =


  fQStateMachine_virtualbase_endSelectTransitions(self.h, event.h)

type QStateMachineendSelectTransitionsBase* = proc(event: gen_qcoreevent.QEvent): void
proc onendSelectTransitions*(self: QStateMachine, slot: proc(super: QStateMachineendSelectTransitionsBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStateMachineendSelectTransitionsBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_endSelectTransitions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_endSelectTransitions(self: ptr cQStateMachine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_endSelectTransitions ".} =
  type Cb = proc(super: QStateMachineendSelectTransitionsBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_endSelectTransitions(QStateMachine(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_beginMicrostep(self: QStateMachine, event: gen_qcoreevent.QEvent): void =


  fQStateMachine_virtualbase_beginMicrostep(self.h, event.h)

type QStateMachinebeginMicrostepBase* = proc(event: gen_qcoreevent.QEvent): void
proc onbeginMicrostep*(self: QStateMachine, slot: proc(super: QStateMachinebeginMicrostepBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStateMachinebeginMicrostepBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_beginMicrostep(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_beginMicrostep(self: ptr cQStateMachine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_beginMicrostep ".} =
  type Cb = proc(super: QStateMachinebeginMicrostepBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_beginMicrostep(QStateMachine(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_endMicrostep(self: QStateMachine, event: gen_qcoreevent.QEvent): void =


  fQStateMachine_virtualbase_endMicrostep(self.h, event.h)

type QStateMachineendMicrostepBase* = proc(event: gen_qcoreevent.QEvent): void
proc onendMicrostep*(self: QStateMachine, slot: proc(super: QStateMachineendMicrostepBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStateMachineendMicrostepBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_endMicrostep(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_endMicrostep(self: ptr cQStateMachine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_endMicrostep ".} =
  type Cb = proc(super: QStateMachineendMicrostepBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_endMicrostep(QStateMachine(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QStateMachine, e: gen_qcoreevent.QEvent): bool =


  fQStateMachine_virtualbase_event(self.h, e.h)

type QStateMachineeventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QStateMachine, slot: proc(super: QStateMachineeventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QStateMachineeventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_event(self: ptr cQStateMachine, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QStateMachine_event ".} =
  type Cb = proc(super: QStateMachineeventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QStateMachine(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QStateMachine, event: gen_qcoreevent.QTimerEvent): void =


  fQStateMachine_virtualbase_timerEvent(self.h, event.h)

type QStateMachinetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QStateMachine, slot: proc(super: QStateMachinetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStateMachinetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_timerEvent(self: ptr cQStateMachine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_timerEvent ".} =
  type Cb = proc(super: QStateMachinetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QStateMachine(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QStateMachine, event: gen_qcoreevent.QChildEvent): void =


  fQStateMachine_virtualbase_childEvent(self.h, event.h)

type QStateMachinechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QStateMachine, slot: proc(super: QStateMachinechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStateMachinechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_childEvent(self: ptr cQStateMachine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_childEvent ".} =
  type Cb = proc(super: QStateMachinechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QStateMachine(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QStateMachine, event: gen_qcoreevent.QEvent): void =


  fQStateMachine_virtualbase_customEvent(self.h, event.h)

type QStateMachinecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QStateMachine, slot: proc(super: QStateMachinecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStateMachinecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_customEvent(self: ptr cQStateMachine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_customEvent ".} =
  type Cb = proc(super: QStateMachinecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QStateMachine(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QStateMachine, signal: gen_qmetaobject.QMetaMethod): void =


  fQStateMachine_virtualbase_connectNotify(self.h, signal.h)

type QStateMachineconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QStateMachine, slot: proc(super: QStateMachineconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QStateMachineconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_connectNotify(self: ptr cQStateMachine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_connectNotify ".} =
  type Cb = proc(super: QStateMachineconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QStateMachine(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QStateMachine, signal: gen_qmetaobject.QMetaMethod): void =


  fQStateMachine_virtualbase_disconnectNotify(self.h, signal.h)

type QStateMachinedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QStateMachine, slot: proc(super: QStateMachinedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QStateMachinedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStateMachine_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStateMachine_disconnectNotify(self: ptr cQStateMachine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStateMachine_disconnectNotify ".} =
  type Cb = proc(super: QStateMachinedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QStateMachine(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QStateMachine): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQStateMachine_staticMetaObject())
proc delete*(self: QStateMachine) =
  fcQStateMachine_delete(self.h)

func init*(T: type QStateMachineSignalEvent, h: ptr cQStateMachineSignalEvent): QStateMachineSignalEvent =
  T(h: h)
proc create*(T: type QStateMachineSignalEvent, param1: QStateMachineSignalEvent): QStateMachineSignalEvent =

  QStateMachineSignalEvent.init(fcQStateMachineSignalEvent_new(param1.h))
proc sender*(self: QStateMachineSignalEvent, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQStateMachineSignalEvent_sender(self.h))

proc signalIndex*(self: QStateMachineSignalEvent, ): cint =

  fcQStateMachineSignalEvent_signalIndex(self.h)

proc delete*(self: QStateMachineSignalEvent) =
  fcQStateMachineSignalEvent_delete(self.h)

func init*(T: type QStateMachineWrappedEvent, h: ptr cQStateMachineWrappedEvent): QStateMachineWrappedEvent =
  T(h: h)
proc create*(T: type QStateMachineWrappedEvent, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): QStateMachineWrappedEvent =

  QStateMachineWrappedEvent.init(fcQStateMachineWrappedEvent_new(objectVal.h, event.h))
proc create*(T: type QStateMachineWrappedEvent, param1: QStateMachineWrappedEvent): QStateMachineWrappedEvent =

  QStateMachineWrappedEvent.init(fcQStateMachineWrappedEvent_new2(param1.h))
proc objectX*(self: QStateMachineWrappedEvent, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQStateMachineWrappedEvent_objectX(self.h))

proc event*(self: QStateMachineWrappedEvent, ): gen_qcoreevent.QEvent =

  gen_qcoreevent.QEvent(h: fcQStateMachineWrappedEvent_event(self.h))

proc delete*(self: QStateMachineWrappedEvent) =
  fcQStateMachineWrappedEvent_delete(self.h)
