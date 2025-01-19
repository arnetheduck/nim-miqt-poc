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
{.compile("gen_qparallelanimationgroup.cpp", cflags).}


import gen_qparallelanimationgroup_types
export gen_qparallelanimationgroup_types

import
  gen_qabstractanimation,
  gen_qanimationgroup,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qabstractanimation,
  gen_qanimationgroup,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQParallelAnimationGroup*{.exportc: "QParallelAnimationGroup", incompleteStruct.} = object

proc fcQParallelAnimationGroup_new(): ptr cQParallelAnimationGroup {.importc: "QParallelAnimationGroup_new".}
proc fcQParallelAnimationGroup_new2(parent: pointer): ptr cQParallelAnimationGroup {.importc: "QParallelAnimationGroup_new2".}
proc fcQParallelAnimationGroup_metaObject(self: pointer, ): pointer {.importc: "QParallelAnimationGroup_metaObject".}
proc fcQParallelAnimationGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QParallelAnimationGroup_metacast".}
proc fcQParallelAnimationGroup_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QParallelAnimationGroup_metacall".}
proc fcQParallelAnimationGroup_tr(s: cstring): struct_miqt_string {.importc: "QParallelAnimationGroup_tr".}
proc fcQParallelAnimationGroup_trUtf8(s: cstring): struct_miqt_string {.importc: "QParallelAnimationGroup_trUtf8".}
proc fcQParallelAnimationGroup_duration(self: pointer, ): cint {.importc: "QParallelAnimationGroup_duration".}
proc fcQParallelAnimationGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QParallelAnimationGroup_tr2".}
proc fcQParallelAnimationGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QParallelAnimationGroup_tr3".}
proc fcQParallelAnimationGroup_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QParallelAnimationGroup_trUtf82".}
proc fcQParallelAnimationGroup_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QParallelAnimationGroup_trUtf83".}
proc fQParallelAnimationGroup_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QParallelAnimationGroup_virtualbase_metacall".}
proc fcQParallelAnimationGroup_override_virtual_metacall(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_metacall".}
proc fQParallelAnimationGroup_virtualbase_duration(self: pointer, ): cint{.importc: "QParallelAnimationGroup_virtualbase_duration".}
proc fcQParallelAnimationGroup_override_virtual_duration(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_duration".}
proc fQParallelAnimationGroup_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QParallelAnimationGroup_virtualbase_event".}
proc fcQParallelAnimationGroup_override_virtual_event(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_event".}
proc fQParallelAnimationGroup_virtualbase_updateCurrentTime(self: pointer, currentTime: cint): void{.importc: "QParallelAnimationGroup_virtualbase_updateCurrentTime".}
proc fcQParallelAnimationGroup_override_virtual_updateCurrentTime(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_updateCurrentTime".}
proc fQParallelAnimationGroup_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void{.importc: "QParallelAnimationGroup_virtualbase_updateState".}
proc fcQParallelAnimationGroup_override_virtual_updateState(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_updateState".}
proc fQParallelAnimationGroup_virtualbase_updateDirection(self: pointer, direction: cint): void{.importc: "QParallelAnimationGroup_virtualbase_updateDirection".}
proc fcQParallelAnimationGroup_override_virtual_updateDirection(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_updateDirection".}
proc fQParallelAnimationGroup_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QParallelAnimationGroup_virtualbase_eventFilter".}
proc fcQParallelAnimationGroup_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_eventFilter".}
proc fQParallelAnimationGroup_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QParallelAnimationGroup_virtualbase_timerEvent".}
proc fcQParallelAnimationGroup_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_timerEvent".}
proc fQParallelAnimationGroup_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QParallelAnimationGroup_virtualbase_childEvent".}
proc fcQParallelAnimationGroup_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_childEvent".}
proc fQParallelAnimationGroup_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QParallelAnimationGroup_virtualbase_customEvent".}
proc fcQParallelAnimationGroup_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_customEvent".}
proc fQParallelAnimationGroup_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QParallelAnimationGroup_virtualbase_connectNotify".}
proc fcQParallelAnimationGroup_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_connectNotify".}
proc fQParallelAnimationGroup_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QParallelAnimationGroup_virtualbase_disconnectNotify".}
proc fcQParallelAnimationGroup_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QParallelAnimationGroup_override_virtual_disconnectNotify".}
proc fcQParallelAnimationGroup_staticMetaObject(): pointer {.importc: "QParallelAnimationGroup_staticMetaObject".}
proc fcQParallelAnimationGroup_delete(self: pointer) {.importc: "QParallelAnimationGroup_delete".}


func init*(T: type QParallelAnimationGroup, h: ptr cQParallelAnimationGroup): QParallelAnimationGroup =
  T(h: h)
proc create*(T: type QParallelAnimationGroup, ): QParallelAnimationGroup =

  QParallelAnimationGroup.init(fcQParallelAnimationGroup_new())
proc create*(T: type QParallelAnimationGroup, parent: gen_qobject.QObject): QParallelAnimationGroup =

  QParallelAnimationGroup.init(fcQParallelAnimationGroup_new2(parent.h))
proc metaObject*(self: QParallelAnimationGroup, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQParallelAnimationGroup_metaObject(self.h))

proc metacast*(self: QParallelAnimationGroup, param1: cstring): pointer =

  fcQParallelAnimationGroup_metacast(self.h, param1)

proc metacall*(self: QParallelAnimationGroup, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQParallelAnimationGroup_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QParallelAnimationGroup, s: cstring): string =

  let v_ms = fcQParallelAnimationGroup_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QParallelAnimationGroup, s: cstring): string =

  let v_ms = fcQParallelAnimationGroup_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc duration*(self: QParallelAnimationGroup, ): cint =

  fcQParallelAnimationGroup_duration(self.h)

proc tr2*(_: type QParallelAnimationGroup, s: cstring, c: cstring): string =

  let v_ms = fcQParallelAnimationGroup_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QParallelAnimationGroup, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQParallelAnimationGroup_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QParallelAnimationGroup, s: cstring, c: cstring): string =

  let v_ms = fcQParallelAnimationGroup_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QParallelAnimationGroup, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQParallelAnimationGroup_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QParallelAnimationGroup, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQParallelAnimationGroup_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QParallelAnimationGroupmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QParallelAnimationGroup, slot: proc(super: QParallelAnimationGroupmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QParallelAnimationGroupmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_metacall(self: ptr cQParallelAnimationGroup, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QParallelAnimationGroup_metacall ".} =
  type Cb = proc(super: QParallelAnimationGroupmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QParallelAnimationGroup(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_duration(self: QParallelAnimationGroup, ): cint =


  fQParallelAnimationGroup_virtualbase_duration(self.h)

type QParallelAnimationGroupdurationBase* = proc(): cint
proc onduration*(self: QParallelAnimationGroup, slot: proc(super: QParallelAnimationGroupdurationBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QParallelAnimationGroupdurationBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_duration(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_duration(self: ptr cQParallelAnimationGroup, slot: int): cint {.exportc: "miqt_exec_callback_QParallelAnimationGroup_duration ".} =
  type Cb = proc(super: QParallelAnimationGroupdurationBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_duration(QParallelAnimationGroup(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_event(self: QParallelAnimationGroup, event: gen_qcoreevent.QEvent): bool =


  fQParallelAnimationGroup_virtualbase_event(self.h, event.h)

type QParallelAnimationGroupeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QParallelAnimationGroup, slot: proc(super: QParallelAnimationGroupeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QParallelAnimationGroupeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_event(self: ptr cQParallelAnimationGroup, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QParallelAnimationGroup_event ".} =
  type Cb = proc(super: QParallelAnimationGroupeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QParallelAnimationGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_updateCurrentTime(self: QParallelAnimationGroup, currentTime: cint): void =


  fQParallelAnimationGroup_virtualbase_updateCurrentTime(self.h, currentTime)

type QParallelAnimationGroupupdateCurrentTimeBase* = proc(currentTime: cint): void
proc onupdateCurrentTime*(self: QParallelAnimationGroup, slot: proc(super: QParallelAnimationGroupupdateCurrentTimeBase, currentTime: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QParallelAnimationGroupupdateCurrentTimeBase, currentTime: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_updateCurrentTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_updateCurrentTime(self: ptr cQParallelAnimationGroup, slot: int, currentTime: cint): void {.exportc: "miqt_exec_callback_QParallelAnimationGroup_updateCurrentTime ".} =
  type Cb = proc(super: QParallelAnimationGroupupdateCurrentTimeBase, currentTime: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(currentTime: cint): auto =
    callVirtualBase_updateCurrentTime(QParallelAnimationGroup(h: self), currentTime)
  let slotval1 = currentTime


  nimfunc[](superCall, slotval1)
proc callVirtualBase_updateState(self: QParallelAnimationGroup, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void =


  fQParallelAnimationGroup_virtualbase_updateState(self.h, cint(newState), cint(oldState))

type QParallelAnimationGroupupdateStateBase* = proc(newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void
proc onupdateState*(self: QParallelAnimationGroup, slot: proc(super: QParallelAnimationGroupupdateStateBase, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void) =
  # TODO check subclass
  type Cb = proc(super: QParallelAnimationGroupupdateStateBase, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_updateState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_updateState(self: ptr cQParallelAnimationGroup, slot: int, newState: cint, oldState: cint): void {.exportc: "miqt_exec_callback_QParallelAnimationGroup_updateState ".} =
  type Cb = proc(super: QParallelAnimationGroupupdateStateBase, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): auto =
    callVirtualBase_updateState(QParallelAnimationGroup(h: self), newState, oldState)
  let slotval1 = gen_qabstractanimation.QAbstractAnimationState(newState)

  let slotval2 = gen_qabstractanimation.QAbstractAnimationState(oldState)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_updateDirection(self: QParallelAnimationGroup, direction: gen_qabstractanimation.QAbstractAnimationDirection): void =


  fQParallelAnimationGroup_virtualbase_updateDirection(self.h, cint(direction))

type QParallelAnimationGroupupdateDirectionBase* = proc(direction: gen_qabstractanimation.QAbstractAnimationDirection): void
proc onupdateDirection*(self: QParallelAnimationGroup, slot: proc(super: QParallelAnimationGroupupdateDirectionBase, direction: gen_qabstractanimation.QAbstractAnimationDirection): void) =
  # TODO check subclass
  type Cb = proc(super: QParallelAnimationGroupupdateDirectionBase, direction: gen_qabstractanimation.QAbstractAnimationDirection): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_updateDirection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_updateDirection(self: ptr cQParallelAnimationGroup, slot: int, direction: cint): void {.exportc: "miqt_exec_callback_QParallelAnimationGroup_updateDirection ".} =
  type Cb = proc(super: QParallelAnimationGroupupdateDirectionBase, direction: gen_qabstractanimation.QAbstractAnimationDirection): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(direction: gen_qabstractanimation.QAbstractAnimationDirection): auto =
    callVirtualBase_updateDirection(QParallelAnimationGroup(h: self), direction)
  let slotval1 = gen_qabstractanimation.QAbstractAnimationDirection(direction)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QParallelAnimationGroup, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQParallelAnimationGroup_virtualbase_eventFilter(self.h, watched.h, event.h)

type QParallelAnimationGroupeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QParallelAnimationGroup, slot: proc(super: QParallelAnimationGroupeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QParallelAnimationGroupeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_eventFilter(self: ptr cQParallelAnimationGroup, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QParallelAnimationGroup_eventFilter ".} =
  type Cb = proc(super: QParallelAnimationGroupeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QParallelAnimationGroup(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QParallelAnimationGroup, event: gen_qcoreevent.QTimerEvent): void =


  fQParallelAnimationGroup_virtualbase_timerEvent(self.h, event.h)

type QParallelAnimationGrouptimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QParallelAnimationGroup, slot: proc(super: QParallelAnimationGrouptimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QParallelAnimationGrouptimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_timerEvent(self: ptr cQParallelAnimationGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QParallelAnimationGroup_timerEvent ".} =
  type Cb = proc(super: QParallelAnimationGrouptimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QParallelAnimationGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QParallelAnimationGroup, event: gen_qcoreevent.QChildEvent): void =


  fQParallelAnimationGroup_virtualbase_childEvent(self.h, event.h)

type QParallelAnimationGroupchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QParallelAnimationGroup, slot: proc(super: QParallelAnimationGroupchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QParallelAnimationGroupchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_childEvent(self: ptr cQParallelAnimationGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QParallelAnimationGroup_childEvent ".} =
  type Cb = proc(super: QParallelAnimationGroupchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QParallelAnimationGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QParallelAnimationGroup, event: gen_qcoreevent.QEvent): void =


  fQParallelAnimationGroup_virtualbase_customEvent(self.h, event.h)

type QParallelAnimationGroupcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QParallelAnimationGroup, slot: proc(super: QParallelAnimationGroupcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QParallelAnimationGroupcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_customEvent(self: ptr cQParallelAnimationGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QParallelAnimationGroup_customEvent ".} =
  type Cb = proc(super: QParallelAnimationGroupcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QParallelAnimationGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QParallelAnimationGroup, signal: gen_qmetaobject.QMetaMethod): void =


  fQParallelAnimationGroup_virtualbase_connectNotify(self.h, signal.h)

type QParallelAnimationGroupconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QParallelAnimationGroup, slot: proc(super: QParallelAnimationGroupconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QParallelAnimationGroupconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_connectNotify(self: ptr cQParallelAnimationGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QParallelAnimationGroup_connectNotify ".} =
  type Cb = proc(super: QParallelAnimationGroupconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QParallelAnimationGroup(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QParallelAnimationGroup, signal: gen_qmetaobject.QMetaMethod): void =


  fQParallelAnimationGroup_virtualbase_disconnectNotify(self.h, signal.h)

type QParallelAnimationGroupdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QParallelAnimationGroup, slot: proc(super: QParallelAnimationGroupdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QParallelAnimationGroupdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQParallelAnimationGroup_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QParallelAnimationGroup_disconnectNotify(self: ptr cQParallelAnimationGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QParallelAnimationGroup_disconnectNotify ".} =
  type Cb = proc(super: QParallelAnimationGroupdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QParallelAnimationGroup(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QParallelAnimationGroup): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQParallelAnimationGroup_staticMetaObject())
proc delete*(self: QParallelAnimationGroup) =
  fcQParallelAnimationGroup_delete(self.h)
