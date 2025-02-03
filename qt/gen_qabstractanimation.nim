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
{.compile("gen_qabstractanimation.cpp", cflags).}


type QAbstractAnimationDirection* = cint
const
  QAbstractAnimationForward* = 0
  QAbstractAnimationBackward* = 1



type QAbstractAnimationState* = cint
const
  QAbstractAnimationStopped* = 0
  QAbstractAnimationPaused* = 1
  QAbstractAnimationRunning* = 2



type QAbstractAnimationDeletionPolicy* = cint
const
  QAbstractAnimationKeepWhenStopped* = 0
  QAbstractAnimationDeleteWhenStopped* = 1



import gen_qabstractanimation_types
export gen_qabstractanimation_types

import
  gen_qanimationgroup,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qanimationgroup,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQAbstractAnimation*{.exportc: "QAbstractAnimation", incompleteStruct.} = object
type cQAnimationDriver*{.exportc: "QAnimationDriver", incompleteStruct.} = object

proc fcQAbstractAnimation_new(): ptr cQAbstractAnimation {.importc: "QAbstractAnimation_new".}
proc fcQAbstractAnimation_new2(parent: pointer): ptr cQAbstractAnimation {.importc: "QAbstractAnimation_new2".}
proc fcQAbstractAnimation_metaObject(self: pointer, ): pointer {.importc: "QAbstractAnimation_metaObject".}
proc fcQAbstractAnimation_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractAnimation_metacast".}
proc fcQAbstractAnimation_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractAnimation_metacall".}
proc fcQAbstractAnimation_tr(s: cstring): struct_miqt_string {.importc: "QAbstractAnimation_tr".}
proc fcQAbstractAnimation_trUtf8(s: cstring): struct_miqt_string {.importc: "QAbstractAnimation_trUtf8".}
proc fcQAbstractAnimation_state(self: pointer, ): cint {.importc: "QAbstractAnimation_state".}
proc fcQAbstractAnimation_group(self: pointer, ): pointer {.importc: "QAbstractAnimation_group".}
proc fcQAbstractAnimation_direction(self: pointer, ): cint {.importc: "QAbstractAnimation_direction".}
proc fcQAbstractAnimation_setDirection(self: pointer, direction: cint): void {.importc: "QAbstractAnimation_setDirection".}
proc fcQAbstractAnimation_currentTime(self: pointer, ): cint {.importc: "QAbstractAnimation_currentTime".}
proc fcQAbstractAnimation_currentLoopTime(self: pointer, ): cint {.importc: "QAbstractAnimation_currentLoopTime".}
proc fcQAbstractAnimation_loopCount(self: pointer, ): cint {.importc: "QAbstractAnimation_loopCount".}
proc fcQAbstractAnimation_setLoopCount(self: pointer, loopCount: cint): void {.importc: "QAbstractAnimation_setLoopCount".}
proc fcQAbstractAnimation_currentLoop(self: pointer, ): cint {.importc: "QAbstractAnimation_currentLoop".}
proc fcQAbstractAnimation_duration(self: pointer, ): cint {.importc: "QAbstractAnimation_duration".}
proc fcQAbstractAnimation_totalDuration(self: pointer, ): cint {.importc: "QAbstractAnimation_totalDuration".}
proc fcQAbstractAnimation_finished(self: pointer, ): void {.importc: "QAbstractAnimation_finished".}
proc fQAbstractAnimation_connect_finished(self: pointer, slot: int) {.importc: "QAbstractAnimation_connect_finished".}
proc fcQAbstractAnimation_stateChanged(self: pointer, newState: cint, oldState: cint): void {.importc: "QAbstractAnimation_stateChanged".}
proc fQAbstractAnimation_connect_stateChanged(self: pointer, slot: int) {.importc: "QAbstractAnimation_connect_stateChanged".}
proc fcQAbstractAnimation_currentLoopChanged(self: pointer, currentLoop: cint): void {.importc: "QAbstractAnimation_currentLoopChanged".}
proc fQAbstractAnimation_connect_currentLoopChanged(self: pointer, slot: int) {.importc: "QAbstractAnimation_connect_currentLoopChanged".}
proc fcQAbstractAnimation_directionChanged(self: pointer, param1: cint): void {.importc: "QAbstractAnimation_directionChanged".}
proc fQAbstractAnimation_connect_directionChanged(self: pointer, slot: int) {.importc: "QAbstractAnimation_connect_directionChanged".}
proc fcQAbstractAnimation_start(self: pointer, ): void {.importc: "QAbstractAnimation_start".}
proc fcQAbstractAnimation_pause(self: pointer, ): void {.importc: "QAbstractAnimation_pause".}
proc fcQAbstractAnimation_resume(self: pointer, ): void {.importc: "QAbstractAnimation_resume".}
proc fcQAbstractAnimation_setPaused(self: pointer, paused: bool): void {.importc: "QAbstractAnimation_setPaused".}
proc fcQAbstractAnimation_stop(self: pointer, ): void {.importc: "QAbstractAnimation_stop".}
proc fcQAbstractAnimation_setCurrentTime(self: pointer, msecs: cint): void {.importc: "QAbstractAnimation_setCurrentTime".}
proc fcQAbstractAnimation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractAnimation_tr2".}
proc fcQAbstractAnimation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractAnimation_tr3".}
proc fcQAbstractAnimation_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractAnimation_trUtf82".}
proc fcQAbstractAnimation_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractAnimation_trUtf83".}
proc fcQAbstractAnimation_start1(self: pointer, policy: cint): void {.importc: "QAbstractAnimation_start1".}
proc fQAbstractAnimation_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractAnimation_virtualbase_metacall".}
proc fcQAbstractAnimation_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_metacall".}
proc fcQAbstractAnimation_override_virtual_duration(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_duration".}
proc fQAbstractAnimation_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractAnimation_virtualbase_event".}
proc fcQAbstractAnimation_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_event".}
proc fcQAbstractAnimation_override_virtual_updateCurrentTime(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_updateCurrentTime".}
proc fQAbstractAnimation_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void{.importc: "QAbstractAnimation_virtualbase_updateState".}
proc fcQAbstractAnimation_override_virtual_updateState(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_updateState".}
proc fQAbstractAnimation_virtualbase_updateDirection(self: pointer, direction: cint): void{.importc: "QAbstractAnimation_virtualbase_updateDirection".}
proc fcQAbstractAnimation_override_virtual_updateDirection(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_updateDirection".}
proc fQAbstractAnimation_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractAnimation_virtualbase_eventFilter".}
proc fcQAbstractAnimation_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_eventFilter".}
proc fQAbstractAnimation_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractAnimation_virtualbase_timerEvent".}
proc fcQAbstractAnimation_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_timerEvent".}
proc fQAbstractAnimation_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractAnimation_virtualbase_childEvent".}
proc fcQAbstractAnimation_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_childEvent".}
proc fQAbstractAnimation_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractAnimation_virtualbase_customEvent".}
proc fcQAbstractAnimation_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_customEvent".}
proc fQAbstractAnimation_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractAnimation_virtualbase_connectNotify".}
proc fcQAbstractAnimation_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_connectNotify".}
proc fQAbstractAnimation_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractAnimation_virtualbase_disconnectNotify".}
proc fcQAbstractAnimation_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractAnimation_override_virtual_disconnectNotify".}
proc fcQAbstractAnimation_delete(self: pointer) {.importc: "QAbstractAnimation_delete".}
proc fcQAnimationDriver_new(): ptr cQAnimationDriver {.importc: "QAnimationDriver_new".}
proc fcQAnimationDriver_new2(parent: pointer): ptr cQAnimationDriver {.importc: "QAnimationDriver_new2".}
proc fcQAnimationDriver_metaObject(self: pointer, ): pointer {.importc: "QAnimationDriver_metaObject".}
proc fcQAnimationDriver_metacast(self: pointer, param1: cstring): pointer {.importc: "QAnimationDriver_metacast".}
proc fcQAnimationDriver_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAnimationDriver_metacall".}
proc fcQAnimationDriver_tr(s: cstring): struct_miqt_string {.importc: "QAnimationDriver_tr".}
proc fcQAnimationDriver_trUtf8(s: cstring): struct_miqt_string {.importc: "QAnimationDriver_trUtf8".}
proc fcQAnimationDriver_advance(self: pointer, ): void {.importc: "QAnimationDriver_advance".}
proc fcQAnimationDriver_install(self: pointer, ): void {.importc: "QAnimationDriver_install".}
proc fcQAnimationDriver_uninstall(self: pointer, ): void {.importc: "QAnimationDriver_uninstall".}
proc fcQAnimationDriver_isRunning(self: pointer, ): bool {.importc: "QAnimationDriver_isRunning".}
proc fcQAnimationDriver_elapsed(self: pointer, ): clonglong {.importc: "QAnimationDriver_elapsed".}
proc fcQAnimationDriver_setStartTime(self: pointer, startTime: clonglong): void {.importc: "QAnimationDriver_setStartTime".}
proc fcQAnimationDriver_startTime(self: pointer, ): clonglong {.importc: "QAnimationDriver_startTime".}
proc fcQAnimationDriver_started(self: pointer, ): void {.importc: "QAnimationDriver_started".}
proc fQAnimationDriver_connect_started(self: pointer, slot: int) {.importc: "QAnimationDriver_connect_started".}
proc fcQAnimationDriver_stopped(self: pointer, ): void {.importc: "QAnimationDriver_stopped".}
proc fQAnimationDriver_connect_stopped(self: pointer, slot: int) {.importc: "QAnimationDriver_connect_stopped".}
proc fcQAnimationDriver_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAnimationDriver_tr2".}
proc fcQAnimationDriver_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAnimationDriver_tr3".}
proc fcQAnimationDriver_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAnimationDriver_trUtf82".}
proc fcQAnimationDriver_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAnimationDriver_trUtf83".}
proc fQAnimationDriver_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAnimationDriver_virtualbase_metacall".}
proc fcQAnimationDriver_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_metacall".}
proc fQAnimationDriver_virtualbase_advance(self: pointer, ): void{.importc: "QAnimationDriver_virtualbase_advance".}
proc fcQAnimationDriver_override_virtual_advance(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_advance".}
proc fQAnimationDriver_virtualbase_elapsed(self: pointer, ): clonglong{.importc: "QAnimationDriver_virtualbase_elapsed".}
proc fcQAnimationDriver_override_virtual_elapsed(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_elapsed".}
proc fQAnimationDriver_virtualbase_start(self: pointer, ): void{.importc: "QAnimationDriver_virtualbase_start".}
proc fcQAnimationDriver_override_virtual_start(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_start".}
proc fQAnimationDriver_virtualbase_stop(self: pointer, ): void{.importc: "QAnimationDriver_virtualbase_stop".}
proc fcQAnimationDriver_override_virtual_stop(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_stop".}
proc fQAnimationDriver_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAnimationDriver_virtualbase_event".}
proc fcQAnimationDriver_override_virtual_event(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_event".}
proc fQAnimationDriver_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAnimationDriver_virtualbase_eventFilter".}
proc fcQAnimationDriver_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_eventFilter".}
proc fQAnimationDriver_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAnimationDriver_virtualbase_timerEvent".}
proc fcQAnimationDriver_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_timerEvent".}
proc fQAnimationDriver_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAnimationDriver_virtualbase_childEvent".}
proc fcQAnimationDriver_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_childEvent".}
proc fQAnimationDriver_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAnimationDriver_virtualbase_customEvent".}
proc fcQAnimationDriver_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_customEvent".}
proc fQAnimationDriver_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAnimationDriver_virtualbase_connectNotify".}
proc fcQAnimationDriver_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_connectNotify".}
proc fQAnimationDriver_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAnimationDriver_virtualbase_disconnectNotify".}
proc fcQAnimationDriver_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAnimationDriver_override_virtual_disconnectNotify".}
proc fcQAnimationDriver_delete(self: pointer) {.importc: "QAnimationDriver_delete".}


func init*(T: type QAbstractAnimation, h: ptr cQAbstractAnimation): QAbstractAnimation =
  T(h: h)
proc create*(T: type QAbstractAnimation, ): QAbstractAnimation =

  QAbstractAnimation.init(fcQAbstractAnimation_new())
proc create*(T: type QAbstractAnimation, parent: gen_qobject.QObject): QAbstractAnimation =

  QAbstractAnimation.init(fcQAbstractAnimation_new2(parent.h))
proc metaObject*(self: QAbstractAnimation, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAbstractAnimation_metaObject(self.h))

proc metacast*(self: QAbstractAnimation, param1: cstring): pointer =

  fcQAbstractAnimation_metacast(self.h, param1)

proc metacall*(self: QAbstractAnimation, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAbstractAnimation_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAbstractAnimation, s: cstring): string =

  let v_ms = fcQAbstractAnimation_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QAbstractAnimation, s: cstring): string =

  let v_ms = fcQAbstractAnimation_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc state*(self: QAbstractAnimation, ): QAbstractAnimationState =

  QAbstractAnimationState(fcQAbstractAnimation_state(self.h))

proc group*(self: QAbstractAnimation, ): gen_qanimationgroup.QAnimationGroup =

  gen_qanimationgroup.QAnimationGroup(h: fcQAbstractAnimation_group(self.h))

proc direction*(self: QAbstractAnimation, ): QAbstractAnimationDirection =

  QAbstractAnimationDirection(fcQAbstractAnimation_direction(self.h))

proc setDirection*(self: QAbstractAnimation, direction: QAbstractAnimationDirection): void =

  fcQAbstractAnimation_setDirection(self.h, cint(direction))

proc currentTime*(self: QAbstractAnimation, ): cint =

  fcQAbstractAnimation_currentTime(self.h)

proc currentLoopTime*(self: QAbstractAnimation, ): cint =

  fcQAbstractAnimation_currentLoopTime(self.h)

proc loopCount*(self: QAbstractAnimation, ): cint =

  fcQAbstractAnimation_loopCount(self.h)

proc setLoopCount*(self: QAbstractAnimation, loopCount: cint): void =

  fcQAbstractAnimation_setLoopCount(self.h, loopCount)

proc currentLoop*(self: QAbstractAnimation, ): cint =

  fcQAbstractAnimation_currentLoop(self.h)

proc duration*(self: QAbstractAnimation, ): cint =

  fcQAbstractAnimation_duration(self.h)

proc totalDuration*(self: QAbstractAnimation, ): cint =

  fcQAbstractAnimation_totalDuration(self.h)

proc finished*(self: QAbstractAnimation, ): void =

  fcQAbstractAnimation_finished(self.h)

proc miqt_exec_callback_QAbstractAnimation_finished(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onfinished*(self: QAbstractAnimation, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractAnimation_connect_finished(self.h, cast[int](addr tmp[]))
proc stateChanged*(self: QAbstractAnimation, newState: QAbstractAnimationState, oldState: QAbstractAnimationState): void =

  fcQAbstractAnimation_stateChanged(self.h, cint(newState), cint(oldState))

proc miqt_exec_callback_QAbstractAnimation_stateChanged(slot: int, newState: cint, oldState: cint) {.exportc.} =
  type Cb = proc(newState: QAbstractAnimationState, oldState: QAbstractAnimationState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QAbstractAnimationState(newState)

  let slotval2 = QAbstractAnimationState(oldState)


  nimfunc[](slotval1, slotval2)

proc onstateChanged*(self: QAbstractAnimation, slot: proc(newState: QAbstractAnimationState, oldState: QAbstractAnimationState)) =
  type Cb = proc(newState: QAbstractAnimationState, oldState: QAbstractAnimationState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractAnimation_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc currentLoopChanged*(self: QAbstractAnimation, currentLoop: cint): void =

  fcQAbstractAnimation_currentLoopChanged(self.h, currentLoop)

proc miqt_exec_callback_QAbstractAnimation_currentLoopChanged(slot: int, currentLoop: cint) {.exportc.} =
  type Cb = proc(currentLoop: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = currentLoop


  nimfunc[](slotval1)

proc oncurrentLoopChanged*(self: QAbstractAnimation, slot: proc(currentLoop: cint)) =
  type Cb = proc(currentLoop: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractAnimation_connect_currentLoopChanged(self.h, cast[int](addr tmp[]))
proc directionChanged*(self: QAbstractAnimation, param1: QAbstractAnimationDirection): void =

  fcQAbstractAnimation_directionChanged(self.h, cint(param1))

proc miqt_exec_callback_QAbstractAnimation_directionChanged(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: QAbstractAnimationDirection)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QAbstractAnimationDirection(param1)


  nimfunc[](slotval1)

proc ondirectionChanged*(self: QAbstractAnimation, slot: proc(param1: QAbstractAnimationDirection)) =
  type Cb = proc(param1: QAbstractAnimationDirection)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractAnimation_connect_directionChanged(self.h, cast[int](addr tmp[]))
proc start*(self: QAbstractAnimation, ): void =

  fcQAbstractAnimation_start(self.h)

proc pause*(self: QAbstractAnimation, ): void =

  fcQAbstractAnimation_pause(self.h)

proc resume*(self: QAbstractAnimation, ): void =

  fcQAbstractAnimation_resume(self.h)

proc setPaused*(self: QAbstractAnimation, paused: bool): void =

  fcQAbstractAnimation_setPaused(self.h, paused)

proc stop*(self: QAbstractAnimation, ): void =

  fcQAbstractAnimation_stop(self.h)

proc setCurrentTime*(self: QAbstractAnimation, msecs: cint): void =

  fcQAbstractAnimation_setCurrentTime(self.h, msecs)

proc tr2*(_: type QAbstractAnimation, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractAnimation_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAbstractAnimation, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractAnimation_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QAbstractAnimation, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractAnimation_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAbstractAnimation, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractAnimation_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc start1*(self: QAbstractAnimation, policy: QAbstractAnimationDeletionPolicy): void =

  fcQAbstractAnimation_start1(self.h, cint(policy))

proc callVirtualBase_metacall(self: QAbstractAnimation, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAbstractAnimation_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractAnimationmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAbstractAnimation, slot: proc(super: QAbstractAnimationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractAnimationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_metacall(self: ptr cQAbstractAnimation, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractAnimation_metacall ".} =
  type Cb = proc(super: QAbstractAnimationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAbstractAnimation(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QAbstractAnimationdurationBase* = proc(): cint
proc onduration*(self: QAbstractAnimation, slot: proc(): cint) =
  # TODO check subclass
  type Cb = proc(): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_duration(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_duration(self: ptr cQAbstractAnimation, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractAnimation_duration ".} =
  type Cb = proc(): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_event(self: QAbstractAnimation, event: gen_qcoreevent.QEvent): bool =


  fQAbstractAnimation_virtualbase_event(self.h, event.h)

type QAbstractAnimationeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAbstractAnimation, slot: proc(super: QAbstractAnimationeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractAnimationeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_event(self: ptr cQAbstractAnimation, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractAnimation_event ".} =
  type Cb = proc(super: QAbstractAnimationeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAbstractAnimation(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
type QAbstractAnimationupdateCurrentTimeBase* = proc(currentTime: cint): void
proc onupdateCurrentTime*(self: QAbstractAnimation, slot: proc(currentTime: cint): void) =
  # TODO check subclass
  type Cb = proc(currentTime: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_updateCurrentTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_updateCurrentTime(self: ptr cQAbstractAnimation, slot: int, currentTime: cint): void {.exportc: "miqt_exec_callback_QAbstractAnimation_updateCurrentTime ".} =
  type Cb = proc(currentTime: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = currentTime


  nimfunc[](slotval1)
proc callVirtualBase_updateState(self: QAbstractAnimation, newState: QAbstractAnimationState, oldState: QAbstractAnimationState): void =


  fQAbstractAnimation_virtualbase_updateState(self.h, cint(newState), cint(oldState))

type QAbstractAnimationupdateStateBase* = proc(newState: QAbstractAnimationState, oldState: QAbstractAnimationState): void
proc onupdateState*(self: QAbstractAnimation, slot: proc(super: QAbstractAnimationupdateStateBase, newState: QAbstractAnimationState, oldState: QAbstractAnimationState): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractAnimationupdateStateBase, newState: QAbstractAnimationState, oldState: QAbstractAnimationState): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_updateState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_updateState(self: ptr cQAbstractAnimation, slot: int, newState: cint, oldState: cint): void {.exportc: "miqt_exec_callback_QAbstractAnimation_updateState ".} =
  type Cb = proc(super: QAbstractAnimationupdateStateBase, newState: QAbstractAnimationState, oldState: QAbstractAnimationState): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(newState: QAbstractAnimationState, oldState: QAbstractAnimationState): auto =
    callVirtualBase_updateState(QAbstractAnimation(h: self), newState, oldState)
  let slotval1 = QAbstractAnimationState(newState)

  let slotval2 = QAbstractAnimationState(oldState)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_updateDirection(self: QAbstractAnimation, direction: QAbstractAnimationDirection): void =


  fQAbstractAnimation_virtualbase_updateDirection(self.h, cint(direction))

type QAbstractAnimationupdateDirectionBase* = proc(direction: QAbstractAnimationDirection): void
proc onupdateDirection*(self: QAbstractAnimation, slot: proc(super: QAbstractAnimationupdateDirectionBase, direction: QAbstractAnimationDirection): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractAnimationupdateDirectionBase, direction: QAbstractAnimationDirection): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_updateDirection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_updateDirection(self: ptr cQAbstractAnimation, slot: int, direction: cint): void {.exportc: "miqt_exec_callback_QAbstractAnimation_updateDirection ".} =
  type Cb = proc(super: QAbstractAnimationupdateDirectionBase, direction: QAbstractAnimationDirection): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(direction: QAbstractAnimationDirection): auto =
    callVirtualBase_updateDirection(QAbstractAnimation(h: self), direction)
  let slotval1 = QAbstractAnimationDirection(direction)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QAbstractAnimation, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAbstractAnimation_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractAnimationeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAbstractAnimation, slot: proc(super: QAbstractAnimationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractAnimationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_eventFilter(self: ptr cQAbstractAnimation, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractAnimation_eventFilter ".} =
  type Cb = proc(super: QAbstractAnimationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAbstractAnimation(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAbstractAnimation, event: gen_qcoreevent.QTimerEvent): void =


  fQAbstractAnimation_virtualbase_timerEvent(self.h, event.h)

type QAbstractAnimationtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAbstractAnimation, slot: proc(super: QAbstractAnimationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractAnimationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_timerEvent(self: ptr cQAbstractAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractAnimation_timerEvent ".} =
  type Cb = proc(super: QAbstractAnimationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAbstractAnimation(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAbstractAnimation, event: gen_qcoreevent.QChildEvent): void =


  fQAbstractAnimation_virtualbase_childEvent(self.h, event.h)

type QAbstractAnimationchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAbstractAnimation, slot: proc(super: QAbstractAnimationchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractAnimationchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_childEvent(self: ptr cQAbstractAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractAnimation_childEvent ".} =
  type Cb = proc(super: QAbstractAnimationchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAbstractAnimation(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAbstractAnimation, event: gen_qcoreevent.QEvent): void =


  fQAbstractAnimation_virtualbase_customEvent(self.h, event.h)

type QAbstractAnimationcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAbstractAnimation, slot: proc(super: QAbstractAnimationcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractAnimationcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_customEvent(self: ptr cQAbstractAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractAnimation_customEvent ".} =
  type Cb = proc(super: QAbstractAnimationcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAbstractAnimation(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAbstractAnimation, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractAnimation_virtualbase_connectNotify(self.h, signal.h)

type QAbstractAnimationconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAbstractAnimation, slot: proc(super: QAbstractAnimationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractAnimationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_connectNotify(self: ptr cQAbstractAnimation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractAnimation_connectNotify ".} =
  type Cb = proc(super: QAbstractAnimationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAbstractAnimation(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAbstractAnimation, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractAnimation_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractAnimationdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAbstractAnimation, slot: proc(super: QAbstractAnimationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractAnimationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractAnimation_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractAnimation_disconnectNotify(self: ptr cQAbstractAnimation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractAnimation_disconnectNotify ".} =
  type Cb = proc(super: QAbstractAnimationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAbstractAnimation(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QAbstractAnimation) =
  fcQAbstractAnimation_delete(self.h)

func init*(T: type QAnimationDriver, h: ptr cQAnimationDriver): QAnimationDriver =
  T(h: h)
proc create*(T: type QAnimationDriver, ): QAnimationDriver =

  QAnimationDriver.init(fcQAnimationDriver_new())
proc create*(T: type QAnimationDriver, parent: gen_qobject.QObject): QAnimationDriver =

  QAnimationDriver.init(fcQAnimationDriver_new2(parent.h))
proc metaObject*(self: QAnimationDriver, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAnimationDriver_metaObject(self.h))

proc metacast*(self: QAnimationDriver, param1: cstring): pointer =

  fcQAnimationDriver_metacast(self.h, param1)

proc metacall*(self: QAnimationDriver, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAnimationDriver_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAnimationDriver, s: cstring): string =

  let v_ms = fcQAnimationDriver_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QAnimationDriver, s: cstring): string =

  let v_ms = fcQAnimationDriver_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc advance*(self: QAnimationDriver, ): void =

  fcQAnimationDriver_advance(self.h)

proc install*(self: QAnimationDriver, ): void =

  fcQAnimationDriver_install(self.h)

proc uninstall*(self: QAnimationDriver, ): void =

  fcQAnimationDriver_uninstall(self.h)

proc isRunning*(self: QAnimationDriver, ): bool =

  fcQAnimationDriver_isRunning(self.h)

proc elapsed*(self: QAnimationDriver, ): clonglong =

  fcQAnimationDriver_elapsed(self.h)

proc setStartTime*(self: QAnimationDriver, startTime: clonglong): void =

  fcQAnimationDriver_setStartTime(self.h, startTime)

proc startTime*(self: QAnimationDriver, ): clonglong =

  fcQAnimationDriver_startTime(self.h)

proc started*(self: QAnimationDriver, ): void =

  fcQAnimationDriver_started(self.h)

proc miqt_exec_callback_QAnimationDriver_started(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onstarted*(self: QAnimationDriver, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAnimationDriver_connect_started(self.h, cast[int](addr tmp[]))
proc stopped*(self: QAnimationDriver, ): void =

  fcQAnimationDriver_stopped(self.h)

proc miqt_exec_callback_QAnimationDriver_stopped(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onstopped*(self: QAnimationDriver, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAnimationDriver_connect_stopped(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAnimationDriver, s: cstring, c: cstring): string =

  let v_ms = fcQAnimationDriver_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAnimationDriver, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAnimationDriver_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QAnimationDriver, s: cstring, c: cstring): string =

  let v_ms = fcQAnimationDriver_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAnimationDriver, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAnimationDriver_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QAnimationDriver, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAnimationDriver_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAnimationDrivermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAnimationDriver, slot: proc(super: QAnimationDrivermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAnimationDrivermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_metacall(self: ptr cQAnimationDriver, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAnimationDriver_metacall ".} =
  type Cb = proc(super: QAnimationDrivermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAnimationDriver(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_advance(self: QAnimationDriver, ): void =


  fQAnimationDriver_virtualbase_advance(self.h)

type QAnimationDriveradvanceBase* = proc(): void
proc onadvance*(self: QAnimationDriver, slot: proc(super: QAnimationDriveradvanceBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAnimationDriveradvanceBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_advance(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_advance(self: ptr cQAnimationDriver, slot: int): void {.exportc: "miqt_exec_callback_QAnimationDriver_advance ".} =
  type Cb = proc(super: QAnimationDriveradvanceBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_advance(QAnimationDriver(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_elapsed(self: QAnimationDriver, ): clonglong =


  fQAnimationDriver_virtualbase_elapsed(self.h)

type QAnimationDriverelapsedBase* = proc(): clonglong
proc onelapsed*(self: QAnimationDriver, slot: proc(super: QAnimationDriverelapsedBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QAnimationDriverelapsedBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_elapsed(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_elapsed(self: ptr cQAnimationDriver, slot: int): clonglong {.exportc: "miqt_exec_callback_QAnimationDriver_elapsed ".} =
  type Cb = proc(super: QAnimationDriverelapsedBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_elapsed(QAnimationDriver(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_start(self: QAnimationDriver, ): void =


  fQAnimationDriver_virtualbase_start(self.h)

type QAnimationDriverstartBase* = proc(): void
proc onstart*(self: QAnimationDriver, slot: proc(super: QAnimationDriverstartBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAnimationDriverstartBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_start(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_start(self: ptr cQAnimationDriver, slot: int): void {.exportc: "miqt_exec_callback_QAnimationDriver_start ".} =
  type Cb = proc(super: QAnimationDriverstartBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_start(QAnimationDriver(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_stop(self: QAnimationDriver, ): void =


  fQAnimationDriver_virtualbase_stop(self.h)

type QAnimationDriverstopBase* = proc(): void
proc onstop*(self: QAnimationDriver, slot: proc(super: QAnimationDriverstopBase): void) =
  # TODO check subclass
  type Cb = proc(super: QAnimationDriverstopBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_stop(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_stop(self: ptr cQAnimationDriver, slot: int): void {.exportc: "miqt_exec_callback_QAnimationDriver_stop ".} =
  type Cb = proc(super: QAnimationDriverstopBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_stop(QAnimationDriver(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_event(self: QAnimationDriver, event: gen_qcoreevent.QEvent): bool =


  fQAnimationDriver_virtualbase_event(self.h, event.h)

type QAnimationDrivereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAnimationDriver, slot: proc(super: QAnimationDrivereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAnimationDrivereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_event(self: ptr cQAnimationDriver, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAnimationDriver_event ".} =
  type Cb = proc(super: QAnimationDrivereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAnimationDriver(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAnimationDriver, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAnimationDriver_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAnimationDrivereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAnimationDriver, slot: proc(super: QAnimationDrivereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAnimationDrivereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_eventFilter(self: ptr cQAnimationDriver, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAnimationDriver_eventFilter ".} =
  type Cb = proc(super: QAnimationDrivereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAnimationDriver(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAnimationDriver, event: gen_qcoreevent.QTimerEvent): void =


  fQAnimationDriver_virtualbase_timerEvent(self.h, event.h)

type QAnimationDrivertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAnimationDriver, slot: proc(super: QAnimationDrivertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAnimationDrivertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_timerEvent(self: ptr cQAnimationDriver, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAnimationDriver_timerEvent ".} =
  type Cb = proc(super: QAnimationDrivertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAnimationDriver(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAnimationDriver, event: gen_qcoreevent.QChildEvent): void =


  fQAnimationDriver_virtualbase_childEvent(self.h, event.h)

type QAnimationDriverchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAnimationDriver, slot: proc(super: QAnimationDriverchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAnimationDriverchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_childEvent(self: ptr cQAnimationDriver, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAnimationDriver_childEvent ".} =
  type Cb = proc(super: QAnimationDriverchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAnimationDriver(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAnimationDriver, event: gen_qcoreevent.QEvent): void =


  fQAnimationDriver_virtualbase_customEvent(self.h, event.h)

type QAnimationDrivercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAnimationDriver, slot: proc(super: QAnimationDrivercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAnimationDrivercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_customEvent(self: ptr cQAnimationDriver, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAnimationDriver_customEvent ".} =
  type Cb = proc(super: QAnimationDrivercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAnimationDriver(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAnimationDriver, signal: gen_qmetaobject.QMetaMethod): void =


  fQAnimationDriver_virtualbase_connectNotify(self.h, signal.h)

type QAnimationDriverconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAnimationDriver, slot: proc(super: QAnimationDriverconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAnimationDriverconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_connectNotify(self: ptr cQAnimationDriver, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAnimationDriver_connectNotify ".} =
  type Cb = proc(super: QAnimationDriverconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAnimationDriver(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAnimationDriver, signal: gen_qmetaobject.QMetaMethod): void =


  fQAnimationDriver_virtualbase_disconnectNotify(self.h, signal.h)

type QAnimationDriverdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAnimationDriver, slot: proc(super: QAnimationDriverdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAnimationDriverdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationDriver_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationDriver_disconnectNotify(self: ptr cQAnimationDriver, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAnimationDriver_disconnectNotify ".} =
  type Cb = proc(super: QAnimationDriverdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAnimationDriver(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QAnimationDriver) =
  fcQAnimationDriver_delete(self.h)
