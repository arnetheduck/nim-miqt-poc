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
{.compile("gen_qpauseanimation.cpp", cflags).}


import gen_qpauseanimation_types
export gen_qpauseanimation_types

import
  gen_qabstractanimation,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qabstractanimation,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQPauseAnimation*{.exportc: "QPauseAnimation", incompleteStruct.} = object

proc fcQPauseAnimation_new(): ptr cQPauseAnimation {.importc: "QPauseAnimation_new".}
proc fcQPauseAnimation_new2(msecs: cint): ptr cQPauseAnimation {.importc: "QPauseAnimation_new2".}
proc fcQPauseAnimation_new3(parent: pointer): ptr cQPauseAnimation {.importc: "QPauseAnimation_new3".}
proc fcQPauseAnimation_new4(msecs: cint, parent: pointer): ptr cQPauseAnimation {.importc: "QPauseAnimation_new4".}
proc fcQPauseAnimation_metaObject(self: pointer, ): pointer {.importc: "QPauseAnimation_metaObject".}
proc fcQPauseAnimation_metacast(self: pointer, param1: cstring): pointer {.importc: "QPauseAnimation_metacast".}
proc fcQPauseAnimation_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPauseAnimation_metacall".}
proc fcQPauseAnimation_tr(s: cstring): struct_miqt_string {.importc: "QPauseAnimation_tr".}
proc fcQPauseAnimation_trUtf8(s: cstring): struct_miqt_string {.importc: "QPauseAnimation_trUtf8".}
proc fcQPauseAnimation_duration(self: pointer, ): cint {.importc: "QPauseAnimation_duration".}
proc fcQPauseAnimation_setDuration(self: pointer, msecs: cint): void {.importc: "QPauseAnimation_setDuration".}
proc fcQPauseAnimation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPauseAnimation_tr2".}
proc fcQPauseAnimation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPauseAnimation_tr3".}
proc fcQPauseAnimation_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPauseAnimation_trUtf82".}
proc fcQPauseAnimation_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPauseAnimation_trUtf83".}
proc fQPauseAnimation_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPauseAnimation_virtualbase_metacall".}
proc fcQPauseAnimation_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_metacall".}
proc fQPauseAnimation_virtualbase_duration(self: pointer, ): cint{.importc: "QPauseAnimation_virtualbase_duration".}
proc fcQPauseAnimation_override_virtual_duration(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_duration".}
proc fQPauseAnimation_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QPauseAnimation_virtualbase_event".}
proc fcQPauseAnimation_override_virtual_event(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_event".}
proc fQPauseAnimation_virtualbase_updateCurrentTime(self: pointer, param1: cint): void{.importc: "QPauseAnimation_virtualbase_updateCurrentTime".}
proc fcQPauseAnimation_override_virtual_updateCurrentTime(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_updateCurrentTime".}
proc fQPauseAnimation_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void{.importc: "QPauseAnimation_virtualbase_updateState".}
proc fcQPauseAnimation_override_virtual_updateState(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_updateState".}
proc fQPauseAnimation_virtualbase_updateDirection(self: pointer, direction: cint): void{.importc: "QPauseAnimation_virtualbase_updateDirection".}
proc fcQPauseAnimation_override_virtual_updateDirection(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_updateDirection".}
proc fQPauseAnimation_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QPauseAnimation_virtualbase_eventFilter".}
proc fcQPauseAnimation_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_eventFilter".}
proc fQPauseAnimation_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPauseAnimation_virtualbase_timerEvent".}
proc fcQPauseAnimation_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_timerEvent".}
proc fQPauseAnimation_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPauseAnimation_virtualbase_childEvent".}
proc fcQPauseAnimation_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_childEvent".}
proc fQPauseAnimation_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPauseAnimation_virtualbase_customEvent".}
proc fcQPauseAnimation_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_customEvent".}
proc fQPauseAnimation_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPauseAnimation_virtualbase_connectNotify".}
proc fcQPauseAnimation_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_connectNotify".}
proc fQPauseAnimation_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPauseAnimation_virtualbase_disconnectNotify".}
proc fcQPauseAnimation_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPauseAnimation_override_virtual_disconnectNotify".}
proc fcQPauseAnimation_delete(self: pointer) {.importc: "QPauseAnimation_delete".}


func init*(T: type QPauseAnimation, h: ptr cQPauseAnimation): QPauseAnimation =
  T(h: h)
proc create*(T: type QPauseAnimation, ): QPauseAnimation =

  QPauseAnimation.init(fcQPauseAnimation_new())
proc create*(T: type QPauseAnimation, msecs: cint): QPauseAnimation =

  QPauseAnimation.init(fcQPauseAnimation_new2(msecs))
proc create*(T: type QPauseAnimation, parent: gen_qobject.QObject): QPauseAnimation =

  QPauseAnimation.init(fcQPauseAnimation_new3(parent.h))
proc create*(T: type QPauseAnimation, msecs: cint, parent: gen_qobject.QObject): QPauseAnimation =

  QPauseAnimation.init(fcQPauseAnimation_new4(msecs, parent.h))
proc metaObject*(self: QPauseAnimation, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQPauseAnimation_metaObject(self.h))

proc metacast*(self: QPauseAnimation, param1: cstring): pointer =

  fcQPauseAnimation_metacast(self.h, param1)

proc metacall*(self: QPauseAnimation, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQPauseAnimation_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QPauseAnimation, s: cstring): string =

  let v_ms = fcQPauseAnimation_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QPauseAnimation, s: cstring): string =

  let v_ms = fcQPauseAnimation_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc duration*(self: QPauseAnimation, ): cint =

  fcQPauseAnimation_duration(self.h)

proc setDuration*(self: QPauseAnimation, msecs: cint): void =

  fcQPauseAnimation_setDuration(self.h, msecs)

proc tr2*(_: type QPauseAnimation, s: cstring, c: cstring): string =

  let v_ms = fcQPauseAnimation_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QPauseAnimation, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPauseAnimation_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QPauseAnimation, s: cstring, c: cstring): string =

  let v_ms = fcQPauseAnimation_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QPauseAnimation, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPauseAnimation_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QPauseAnimation, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQPauseAnimation_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPauseAnimationmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QPauseAnimation, slot: proc(super: QPauseAnimationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QPauseAnimationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_metacall(self: ptr cQPauseAnimation, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPauseAnimation_metacall ".} =
  type Cb = proc(super: QPauseAnimationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QPauseAnimation(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_duration(self: QPauseAnimation, ): cint =


  fQPauseAnimation_virtualbase_duration(self.h)

type QPauseAnimationdurationBase* = proc(): cint
proc onduration*(self: QPauseAnimation, slot: proc(super: QPauseAnimationdurationBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QPauseAnimationdurationBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_duration(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_duration(self: ptr cQPauseAnimation, slot: int): cint {.exportc: "miqt_exec_callback_QPauseAnimation_duration ".} =
  type Cb = proc(super: QPauseAnimationdurationBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_duration(QPauseAnimation(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_event(self: QPauseAnimation, e: gen_qcoreevent.QEvent): bool =


  fQPauseAnimation_virtualbase_event(self.h, e.h)

type QPauseAnimationeventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QPauseAnimation, slot: proc(super: QPauseAnimationeventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPauseAnimationeventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_event(self: ptr cQPauseAnimation, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QPauseAnimation_event ".} =
  type Cb = proc(super: QPauseAnimationeventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QPauseAnimation(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_updateCurrentTime(self: QPauseAnimation, param1: cint): void =


  fQPauseAnimation_virtualbase_updateCurrentTime(self.h, param1)

type QPauseAnimationupdateCurrentTimeBase* = proc(param1: cint): void
proc onupdateCurrentTime*(self: QPauseAnimation, slot: proc(super: QPauseAnimationupdateCurrentTimeBase, param1: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QPauseAnimationupdateCurrentTimeBase, param1: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_updateCurrentTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_updateCurrentTime(self: ptr cQPauseAnimation, slot: int, param1: cint): void {.exportc: "miqt_exec_callback_QPauseAnimation_updateCurrentTime ".} =
  type Cb = proc(super: QPauseAnimationupdateCurrentTimeBase, param1: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_updateCurrentTime(QPauseAnimation(h: self), param1)
  let slotval1 = param1


  nimfunc[](superCall, slotval1)
proc callVirtualBase_updateState(self: QPauseAnimation, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void =


  fQPauseAnimation_virtualbase_updateState(self.h, cint(newState), cint(oldState))

type QPauseAnimationupdateStateBase* = proc(newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void
proc onupdateState*(self: QPauseAnimation, slot: proc(super: QPauseAnimationupdateStateBase, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void) =
  # TODO check subclass
  type Cb = proc(super: QPauseAnimationupdateStateBase, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_updateState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_updateState(self: ptr cQPauseAnimation, slot: int, newState: cint, oldState: cint): void {.exportc: "miqt_exec_callback_QPauseAnimation_updateState ".} =
  type Cb = proc(super: QPauseAnimationupdateStateBase, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): auto =
    callVirtualBase_updateState(QPauseAnimation(h: self), newState, oldState)
  let slotval1 = gen_qabstractanimation.QAbstractAnimationState(newState)

  let slotval2 = gen_qabstractanimation.QAbstractAnimationState(oldState)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_updateDirection(self: QPauseAnimation, direction: gen_qabstractanimation.QAbstractAnimationDirection): void =


  fQPauseAnimation_virtualbase_updateDirection(self.h, cint(direction))

type QPauseAnimationupdateDirectionBase* = proc(direction: gen_qabstractanimation.QAbstractAnimationDirection): void
proc onupdateDirection*(self: QPauseAnimation, slot: proc(super: QPauseAnimationupdateDirectionBase, direction: gen_qabstractanimation.QAbstractAnimationDirection): void) =
  # TODO check subclass
  type Cb = proc(super: QPauseAnimationupdateDirectionBase, direction: gen_qabstractanimation.QAbstractAnimationDirection): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_updateDirection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_updateDirection(self: ptr cQPauseAnimation, slot: int, direction: cint): void {.exportc: "miqt_exec_callback_QPauseAnimation_updateDirection ".} =
  type Cb = proc(super: QPauseAnimationupdateDirectionBase, direction: gen_qabstractanimation.QAbstractAnimationDirection): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(direction: gen_qabstractanimation.QAbstractAnimationDirection): auto =
    callVirtualBase_updateDirection(QPauseAnimation(h: self), direction)
  let slotval1 = gen_qabstractanimation.QAbstractAnimationDirection(direction)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QPauseAnimation, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQPauseAnimation_virtualbase_eventFilter(self.h, watched.h, event.h)

type QPauseAnimationeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QPauseAnimation, slot: proc(super: QPauseAnimationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPauseAnimationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_eventFilter(self: ptr cQPauseAnimation, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QPauseAnimation_eventFilter ".} =
  type Cb = proc(super: QPauseAnimationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QPauseAnimation(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QPauseAnimation, event: gen_qcoreevent.QTimerEvent): void =


  fQPauseAnimation_virtualbase_timerEvent(self.h, event.h)

type QPauseAnimationtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QPauseAnimation, slot: proc(super: QPauseAnimationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPauseAnimationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_timerEvent(self: ptr cQPauseAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPauseAnimation_timerEvent ".} =
  type Cb = proc(super: QPauseAnimationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QPauseAnimation(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QPauseAnimation, event: gen_qcoreevent.QChildEvent): void =


  fQPauseAnimation_virtualbase_childEvent(self.h, event.h)

type QPauseAnimationchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QPauseAnimation, slot: proc(super: QPauseAnimationchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPauseAnimationchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_childEvent(self: ptr cQPauseAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPauseAnimation_childEvent ".} =
  type Cb = proc(super: QPauseAnimationchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QPauseAnimation(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QPauseAnimation, event: gen_qcoreevent.QEvent): void =


  fQPauseAnimation_virtualbase_customEvent(self.h, event.h)

type QPauseAnimationcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QPauseAnimation, slot: proc(super: QPauseAnimationcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPauseAnimationcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_customEvent(self: ptr cQPauseAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPauseAnimation_customEvent ".} =
  type Cb = proc(super: QPauseAnimationcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QPauseAnimation(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QPauseAnimation, signal: gen_qmetaobject.QMetaMethod): void =


  fQPauseAnimation_virtualbase_connectNotify(self.h, signal.h)

type QPauseAnimationconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QPauseAnimation, slot: proc(super: QPauseAnimationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPauseAnimationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_connectNotify(self: ptr cQPauseAnimation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPauseAnimation_connectNotify ".} =
  type Cb = proc(super: QPauseAnimationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QPauseAnimation(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QPauseAnimation, signal: gen_qmetaobject.QMetaMethod): void =


  fQPauseAnimation_virtualbase_disconnectNotify(self.h, signal.h)

type QPauseAnimationdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QPauseAnimation, slot: proc(super: QPauseAnimationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPauseAnimationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPauseAnimation_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPauseAnimation_disconnectNotify(self: ptr cQPauseAnimation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPauseAnimation_disconnectNotify ".} =
  type Cb = proc(super: QPauseAnimationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QPauseAnimation(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QPauseAnimation) =
  fcQPauseAnimation_delete(self.h)
