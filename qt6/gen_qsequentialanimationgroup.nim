import Qt6Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6Widgets")
{.compile("gen_qsequentialanimationgroup.cpp", cflags).}


import gen_qsequentialanimationgroup_types
export gen_qsequentialanimationgroup_types

import
  gen_qabstractanimation,
  gen_qanimationgroup,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpauseanimation
export
  gen_qabstractanimation,
  gen_qanimationgroup,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpauseanimation

type cQSequentialAnimationGroup*{.exportc: "QSequentialAnimationGroup", incompleteStruct.} = object

proc fcQSequentialAnimationGroup_new(): ptr cQSequentialAnimationGroup {.importc: "QSequentialAnimationGroup_new".}
proc fcQSequentialAnimationGroup_new2(parent: pointer): ptr cQSequentialAnimationGroup {.importc: "QSequentialAnimationGroup_new2".}
proc fcQSequentialAnimationGroup_metaObject(self: pointer, ): pointer {.importc: "QSequentialAnimationGroup_metaObject".}
proc fcQSequentialAnimationGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QSequentialAnimationGroup_metacast".}
proc fcQSequentialAnimationGroup_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSequentialAnimationGroup_metacall".}
proc fcQSequentialAnimationGroup_tr(s: cstring): struct_miqt_string {.importc: "QSequentialAnimationGroup_tr".}
proc fcQSequentialAnimationGroup_addPause(self: pointer, msecs: cint): pointer {.importc: "QSequentialAnimationGroup_addPause".}
proc fcQSequentialAnimationGroup_insertPause(self: pointer, index: cint, msecs: cint): pointer {.importc: "QSequentialAnimationGroup_insertPause".}
proc fcQSequentialAnimationGroup_currentAnimation(self: pointer, ): pointer {.importc: "QSequentialAnimationGroup_currentAnimation".}
proc fcQSequentialAnimationGroup_duration(self: pointer, ): cint {.importc: "QSequentialAnimationGroup_duration".}
proc fcQSequentialAnimationGroup_currentAnimationChanged(self: pointer, current: pointer): void {.importc: "QSequentialAnimationGroup_currentAnimationChanged".}
proc fQSequentialAnimationGroup_connect_currentAnimationChanged(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_connect_currentAnimationChanged".}
proc fcQSequentialAnimationGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSequentialAnimationGroup_tr2".}
proc fcQSequentialAnimationGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSequentialAnimationGroup_tr3".}
proc fQSequentialAnimationGroup_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSequentialAnimationGroup_virtualbase_metaObject".}
proc fcQSequentialAnimationGroup_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_metaObject".}
proc fQSequentialAnimationGroup_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSequentialAnimationGroup_virtualbase_metacast".}
proc fcQSequentialAnimationGroup_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_metacast".}
proc fQSequentialAnimationGroup_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSequentialAnimationGroup_virtualbase_metacall".}
proc fcQSequentialAnimationGroup_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_metacall".}
proc fQSequentialAnimationGroup_virtualbase_duration(self: pointer, ): cint{.importc: "QSequentialAnimationGroup_virtualbase_duration".}
proc fcQSequentialAnimationGroup_override_virtual_duration(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_duration".}
proc fQSequentialAnimationGroup_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSequentialAnimationGroup_virtualbase_event".}
proc fcQSequentialAnimationGroup_override_virtual_event(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_event".}
proc fQSequentialAnimationGroup_virtualbase_updateCurrentTime(self: pointer, param1: cint): void{.importc: "QSequentialAnimationGroup_virtualbase_updateCurrentTime".}
proc fcQSequentialAnimationGroup_override_virtual_updateCurrentTime(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_updateCurrentTime".}
proc fQSequentialAnimationGroup_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void{.importc: "QSequentialAnimationGroup_virtualbase_updateState".}
proc fcQSequentialAnimationGroup_override_virtual_updateState(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_updateState".}
proc fQSequentialAnimationGroup_virtualbase_updateDirection(self: pointer, direction: cint): void{.importc: "QSequentialAnimationGroup_virtualbase_updateDirection".}
proc fcQSequentialAnimationGroup_override_virtual_updateDirection(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_updateDirection".}
proc fQSequentialAnimationGroup_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSequentialAnimationGroup_virtualbase_eventFilter".}
proc fcQSequentialAnimationGroup_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_eventFilter".}
proc fQSequentialAnimationGroup_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSequentialAnimationGroup_virtualbase_timerEvent".}
proc fcQSequentialAnimationGroup_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_timerEvent".}
proc fQSequentialAnimationGroup_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSequentialAnimationGroup_virtualbase_childEvent".}
proc fcQSequentialAnimationGroup_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_childEvent".}
proc fQSequentialAnimationGroup_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSequentialAnimationGroup_virtualbase_customEvent".}
proc fcQSequentialAnimationGroup_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_customEvent".}
proc fQSequentialAnimationGroup_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSequentialAnimationGroup_virtualbase_connectNotify".}
proc fcQSequentialAnimationGroup_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_connectNotify".}
proc fQSequentialAnimationGroup_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSequentialAnimationGroup_virtualbase_disconnectNotify".}
proc fcQSequentialAnimationGroup_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSequentialAnimationGroup_override_virtual_disconnectNotify".}
proc fcQSequentialAnimationGroup_staticMetaObject(): pointer {.importc: "QSequentialAnimationGroup_staticMetaObject".}
proc fcQSequentialAnimationGroup_delete(self: pointer) {.importc: "QSequentialAnimationGroup_delete".}


func init*(T: type QSequentialAnimationGroup, h: ptr cQSequentialAnimationGroup): QSequentialAnimationGroup =
  T(h: h)
proc create*(T: type QSequentialAnimationGroup, ): QSequentialAnimationGroup =

  QSequentialAnimationGroup.init(fcQSequentialAnimationGroup_new())
proc create*(T: type QSequentialAnimationGroup, parent: gen_qobject.QObject): QSequentialAnimationGroup =

  QSequentialAnimationGroup.init(fcQSequentialAnimationGroup_new2(parent.h))
proc metaObject*(self: QSequentialAnimationGroup, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSequentialAnimationGroup_metaObject(self.h))

proc metacast*(self: QSequentialAnimationGroup, param1: cstring): pointer =

  fcQSequentialAnimationGroup_metacast(self.h, param1)

proc metacall*(self: QSequentialAnimationGroup, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSequentialAnimationGroup_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSequentialAnimationGroup, s: cstring): string =

  let v_ms = fcQSequentialAnimationGroup_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addPause*(self: QSequentialAnimationGroup, msecs: cint): gen_qpauseanimation.QPauseAnimation =

  gen_qpauseanimation.QPauseAnimation(h: fcQSequentialAnimationGroup_addPause(self.h, msecs))

proc insertPause*(self: QSequentialAnimationGroup, index: cint, msecs: cint): gen_qpauseanimation.QPauseAnimation =

  gen_qpauseanimation.QPauseAnimation(h: fcQSequentialAnimationGroup_insertPause(self.h, index, msecs))

proc currentAnimation*(self: QSequentialAnimationGroup, ): gen_qabstractanimation.QAbstractAnimation =

  gen_qabstractanimation.QAbstractAnimation(h: fcQSequentialAnimationGroup_currentAnimation(self.h))

proc duration*(self: QSequentialAnimationGroup, ): cint =

  fcQSequentialAnimationGroup_duration(self.h)

proc currentAnimationChanged*(self: QSequentialAnimationGroup, current: gen_qabstractanimation.QAbstractAnimation): void =

  fcQSequentialAnimationGroup_currentAnimationChanged(self.h, current.h)

proc miqt_exec_callback_QSequentialAnimationGroup_currentAnimationChanged(slot: int, current: pointer) {.exportc.} =
  type Cb = proc(current: gen_qabstractanimation.QAbstractAnimation)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractanimation.QAbstractAnimation(h: current)


  nimfunc[](slotval1)

proc oncurrentAnimationChanged*(self: QSequentialAnimationGroup, slot: proc(current: gen_qabstractanimation.QAbstractAnimation)) =
  type Cb = proc(current: gen_qabstractanimation.QAbstractAnimation)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQSequentialAnimationGroup_connect_currentAnimationChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QSequentialAnimationGroup, s: cstring, c: cstring): string =

  let v_ms = fcQSequentialAnimationGroup_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSequentialAnimationGroup, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSequentialAnimationGroup_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QSequentialAnimationGroup, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQSequentialAnimationGroup_virtualbase_metaObject(self.h))

type QSequentialAnimationGroupmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QSequentialAnimationGroup, slot: proc(super: QSequentialAnimationGroupmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QSequentialAnimationGroupmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_metaObject(self: ptr cQSequentialAnimationGroup, slot: int): pointer {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_metaObject ".} =
  type Cb = proc(super: QSequentialAnimationGroupmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QSequentialAnimationGroup(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QSequentialAnimationGroup, param1: cstring): pointer =


  fQSequentialAnimationGroup_virtualbase_metacast(self.h, param1)

type QSequentialAnimationGroupmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QSequentialAnimationGroup, slot: proc(super: QSequentialAnimationGroupmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QSequentialAnimationGroupmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_metacast(self: ptr cQSequentialAnimationGroup, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_metacast ".} =
  type Cb = proc(super: QSequentialAnimationGroupmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QSequentialAnimationGroup(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QSequentialAnimationGroup, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSequentialAnimationGroup_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSequentialAnimationGroupmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSequentialAnimationGroup, slot: proc(super: QSequentialAnimationGroupmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSequentialAnimationGroupmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_metacall(self: ptr cQSequentialAnimationGroup, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_metacall ".} =
  type Cb = proc(super: QSequentialAnimationGroupmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSequentialAnimationGroup(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_duration(self: QSequentialAnimationGroup, ): cint =


  fQSequentialAnimationGroup_virtualbase_duration(self.h)

type QSequentialAnimationGroupdurationBase* = proc(): cint
proc onduration*(self: QSequentialAnimationGroup, slot: proc(super: QSequentialAnimationGroupdurationBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QSequentialAnimationGroupdurationBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_duration(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_duration(self: ptr cQSequentialAnimationGroup, slot: int): cint {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_duration ".} =
  type Cb = proc(super: QSequentialAnimationGroupdurationBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_duration(QSequentialAnimationGroup(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_event(self: QSequentialAnimationGroup, event: gen_qcoreevent.QEvent): bool =


  fQSequentialAnimationGroup_virtualbase_event(self.h, event.h)

type QSequentialAnimationGroupeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSequentialAnimationGroup, slot: proc(super: QSequentialAnimationGroupeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSequentialAnimationGroupeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_event(self: ptr cQSequentialAnimationGroup, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_event ".} =
  type Cb = proc(super: QSequentialAnimationGroupeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSequentialAnimationGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_updateCurrentTime(self: QSequentialAnimationGroup, param1: cint): void =


  fQSequentialAnimationGroup_virtualbase_updateCurrentTime(self.h, param1)

type QSequentialAnimationGroupupdateCurrentTimeBase* = proc(param1: cint): void
proc onupdateCurrentTime*(self: QSequentialAnimationGroup, slot: proc(super: QSequentialAnimationGroupupdateCurrentTimeBase, param1: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QSequentialAnimationGroupupdateCurrentTimeBase, param1: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_updateCurrentTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_updateCurrentTime(self: ptr cQSequentialAnimationGroup, slot: int, param1: cint): void {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_updateCurrentTime ".} =
  type Cb = proc(super: QSequentialAnimationGroupupdateCurrentTimeBase, param1: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_updateCurrentTime(QSequentialAnimationGroup(h: self), param1)
  let slotval1 = param1


  nimfunc[](superCall, slotval1)
proc callVirtualBase_updateState(self: QSequentialAnimationGroup, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void =


  fQSequentialAnimationGroup_virtualbase_updateState(self.h, cint(newState), cint(oldState))

type QSequentialAnimationGroupupdateStateBase* = proc(newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void
proc onupdateState*(self: QSequentialAnimationGroup, slot: proc(super: QSequentialAnimationGroupupdateStateBase, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void) =
  # TODO check subclass
  type Cb = proc(super: QSequentialAnimationGroupupdateStateBase, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_updateState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_updateState(self: ptr cQSequentialAnimationGroup, slot: int, newState: cint, oldState: cint): void {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_updateState ".} =
  type Cb = proc(super: QSequentialAnimationGroupupdateStateBase, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): auto =
    callVirtualBase_updateState(QSequentialAnimationGroup(h: self), newState, oldState)
  let slotval1 = gen_qabstractanimation.QAbstractAnimationState(newState)

  let slotval2 = gen_qabstractanimation.QAbstractAnimationState(oldState)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_updateDirection(self: QSequentialAnimationGroup, direction: gen_qabstractanimation.QAbstractAnimationDirection): void =


  fQSequentialAnimationGroup_virtualbase_updateDirection(self.h, cint(direction))

type QSequentialAnimationGroupupdateDirectionBase* = proc(direction: gen_qabstractanimation.QAbstractAnimationDirection): void
proc onupdateDirection*(self: QSequentialAnimationGroup, slot: proc(super: QSequentialAnimationGroupupdateDirectionBase, direction: gen_qabstractanimation.QAbstractAnimationDirection): void) =
  # TODO check subclass
  type Cb = proc(super: QSequentialAnimationGroupupdateDirectionBase, direction: gen_qabstractanimation.QAbstractAnimationDirection): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_updateDirection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_updateDirection(self: ptr cQSequentialAnimationGroup, slot: int, direction: cint): void {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_updateDirection ".} =
  type Cb = proc(super: QSequentialAnimationGroupupdateDirectionBase, direction: gen_qabstractanimation.QAbstractAnimationDirection): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(direction: gen_qabstractanimation.QAbstractAnimationDirection): auto =
    callVirtualBase_updateDirection(QSequentialAnimationGroup(h: self), direction)
  let slotval1 = gen_qabstractanimation.QAbstractAnimationDirection(direction)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QSequentialAnimationGroup, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSequentialAnimationGroup_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSequentialAnimationGroupeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSequentialAnimationGroup, slot: proc(super: QSequentialAnimationGroupeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSequentialAnimationGroupeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_eventFilter(self: ptr cQSequentialAnimationGroup, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_eventFilter ".} =
  type Cb = proc(super: QSequentialAnimationGroupeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSequentialAnimationGroup(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSequentialAnimationGroup, event: gen_qcoreevent.QTimerEvent): void =


  fQSequentialAnimationGroup_virtualbase_timerEvent(self.h, event.h)

type QSequentialAnimationGrouptimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSequentialAnimationGroup, slot: proc(super: QSequentialAnimationGrouptimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSequentialAnimationGrouptimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_timerEvent(self: ptr cQSequentialAnimationGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_timerEvent ".} =
  type Cb = proc(super: QSequentialAnimationGrouptimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSequentialAnimationGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSequentialAnimationGroup, event: gen_qcoreevent.QChildEvent): void =


  fQSequentialAnimationGroup_virtualbase_childEvent(self.h, event.h)

type QSequentialAnimationGroupchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSequentialAnimationGroup, slot: proc(super: QSequentialAnimationGroupchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSequentialAnimationGroupchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_childEvent(self: ptr cQSequentialAnimationGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_childEvent ".} =
  type Cb = proc(super: QSequentialAnimationGroupchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSequentialAnimationGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSequentialAnimationGroup, event: gen_qcoreevent.QEvent): void =


  fQSequentialAnimationGroup_virtualbase_customEvent(self.h, event.h)

type QSequentialAnimationGroupcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSequentialAnimationGroup, slot: proc(super: QSequentialAnimationGroupcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSequentialAnimationGroupcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_customEvent(self: ptr cQSequentialAnimationGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_customEvent ".} =
  type Cb = proc(super: QSequentialAnimationGroupcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSequentialAnimationGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSequentialAnimationGroup, signal: gen_qmetaobject.QMetaMethod): void =


  fQSequentialAnimationGroup_virtualbase_connectNotify(self.h, signal.h)

type QSequentialAnimationGroupconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSequentialAnimationGroup, slot: proc(super: QSequentialAnimationGroupconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSequentialAnimationGroupconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_connectNotify(self: ptr cQSequentialAnimationGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_connectNotify ".} =
  type Cb = proc(super: QSequentialAnimationGroupconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSequentialAnimationGroup(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSequentialAnimationGroup, signal: gen_qmetaobject.QMetaMethod): void =


  fQSequentialAnimationGroup_virtualbase_disconnectNotify(self.h, signal.h)

type QSequentialAnimationGroupdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSequentialAnimationGroup, slot: proc(super: QSequentialAnimationGroupdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSequentialAnimationGroupdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSequentialAnimationGroup_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSequentialAnimationGroup_disconnectNotify(self: ptr cQSequentialAnimationGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSequentialAnimationGroup_disconnectNotify ".} =
  type Cb = proc(super: QSequentialAnimationGroupdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSequentialAnimationGroup(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QSequentialAnimationGroup): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSequentialAnimationGroup_staticMetaObject())
proc delete*(self: QSequentialAnimationGroup) =
  fcQSequentialAnimationGroup_delete(self.h)
