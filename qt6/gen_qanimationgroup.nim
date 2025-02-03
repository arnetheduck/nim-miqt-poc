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
{.compile("gen_qanimationgroup.cpp", cflags).}


import gen_qanimationgroup_types
export gen_qanimationgroup_types

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

type cQAnimationGroup*{.exportc: "QAnimationGroup", incompleteStruct.} = object

proc fcQAnimationGroup_new(): ptr cQAnimationGroup {.importc: "QAnimationGroup_new".}
proc fcQAnimationGroup_new2(parent: pointer): ptr cQAnimationGroup {.importc: "QAnimationGroup_new2".}
proc fcQAnimationGroup_metaObject(self: pointer, ): pointer {.importc: "QAnimationGroup_metaObject".}
proc fcQAnimationGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QAnimationGroup_metacast".}
proc fcQAnimationGroup_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAnimationGroup_metacall".}
proc fcQAnimationGroup_tr(s: cstring): struct_miqt_string {.importc: "QAnimationGroup_tr".}
proc fcQAnimationGroup_animationAt(self: pointer, index: cint): pointer {.importc: "QAnimationGroup_animationAt".}
proc fcQAnimationGroup_animationCount(self: pointer, ): cint {.importc: "QAnimationGroup_animationCount".}
proc fcQAnimationGroup_indexOfAnimation(self: pointer, animation: pointer): cint {.importc: "QAnimationGroup_indexOfAnimation".}
proc fcQAnimationGroup_addAnimation(self: pointer, animation: pointer): void {.importc: "QAnimationGroup_addAnimation".}
proc fcQAnimationGroup_insertAnimation(self: pointer, index: cint, animation: pointer): void {.importc: "QAnimationGroup_insertAnimation".}
proc fcQAnimationGroup_removeAnimation(self: pointer, animation: pointer): void {.importc: "QAnimationGroup_removeAnimation".}
proc fcQAnimationGroup_takeAnimation(self: pointer, index: cint): pointer {.importc: "QAnimationGroup_takeAnimation".}
proc fcQAnimationGroup_clear(self: pointer, ): void {.importc: "QAnimationGroup_clear".}
proc fcQAnimationGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAnimationGroup_tr2".}
proc fcQAnimationGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAnimationGroup_tr3".}
proc fQAnimationGroup_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAnimationGroup_virtualbase_metacall".}
proc fcQAnimationGroup_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_metacall".}
proc fQAnimationGroup_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAnimationGroup_virtualbase_event".}
proc fcQAnimationGroup_override_virtual_event(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_event".}
proc fcQAnimationGroup_override_virtual_duration(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_duration".}
proc fcQAnimationGroup_override_virtual_updateCurrentTime(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_updateCurrentTime".}
proc fQAnimationGroup_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void{.importc: "QAnimationGroup_virtualbase_updateState".}
proc fcQAnimationGroup_override_virtual_updateState(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_updateState".}
proc fQAnimationGroup_virtualbase_updateDirection(self: pointer, direction: cint): void{.importc: "QAnimationGroup_virtualbase_updateDirection".}
proc fcQAnimationGroup_override_virtual_updateDirection(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_updateDirection".}
proc fQAnimationGroup_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAnimationGroup_virtualbase_eventFilter".}
proc fcQAnimationGroup_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_eventFilter".}
proc fQAnimationGroup_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAnimationGroup_virtualbase_timerEvent".}
proc fcQAnimationGroup_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_timerEvent".}
proc fQAnimationGroup_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAnimationGroup_virtualbase_childEvent".}
proc fcQAnimationGroup_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_childEvent".}
proc fQAnimationGroup_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAnimationGroup_virtualbase_customEvent".}
proc fcQAnimationGroup_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_customEvent".}
proc fQAnimationGroup_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAnimationGroup_virtualbase_connectNotify".}
proc fcQAnimationGroup_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_connectNotify".}
proc fQAnimationGroup_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAnimationGroup_virtualbase_disconnectNotify".}
proc fcQAnimationGroup_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAnimationGroup_override_virtual_disconnectNotify".}
proc fcQAnimationGroup_delete(self: pointer) {.importc: "QAnimationGroup_delete".}


func init*(T: type QAnimationGroup, h: ptr cQAnimationGroup): QAnimationGroup =
  T(h: h)
proc create*(T: type QAnimationGroup, ): QAnimationGroup =

  QAnimationGroup.init(fcQAnimationGroup_new())
proc create*(T: type QAnimationGroup, parent: gen_qobject.QObject): QAnimationGroup =

  QAnimationGroup.init(fcQAnimationGroup_new2(parent.h))
proc metaObject*(self: QAnimationGroup, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAnimationGroup_metaObject(self.h))

proc metacast*(self: QAnimationGroup, param1: cstring): pointer =

  fcQAnimationGroup_metacast(self.h, param1)

proc metacall*(self: QAnimationGroup, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAnimationGroup_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAnimationGroup, s: cstring): string =

  let v_ms = fcQAnimationGroup_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc animationAt*(self: QAnimationGroup, index: cint): gen_qabstractanimation.QAbstractAnimation =

  gen_qabstractanimation.QAbstractAnimation(h: fcQAnimationGroup_animationAt(self.h, index))

proc animationCount*(self: QAnimationGroup, ): cint =

  fcQAnimationGroup_animationCount(self.h)

proc indexOfAnimation*(self: QAnimationGroup, animation: gen_qabstractanimation.QAbstractAnimation): cint =

  fcQAnimationGroup_indexOfAnimation(self.h, animation.h)

proc addAnimation*(self: QAnimationGroup, animation: gen_qabstractanimation.QAbstractAnimation): void =

  fcQAnimationGroup_addAnimation(self.h, animation.h)

proc insertAnimation*(self: QAnimationGroup, index: cint, animation: gen_qabstractanimation.QAbstractAnimation): void =

  fcQAnimationGroup_insertAnimation(self.h, index, animation.h)

proc removeAnimation*(self: QAnimationGroup, animation: gen_qabstractanimation.QAbstractAnimation): void =

  fcQAnimationGroup_removeAnimation(self.h, animation.h)

proc takeAnimation*(self: QAnimationGroup, index: cint): gen_qabstractanimation.QAbstractAnimation =

  gen_qabstractanimation.QAbstractAnimation(h: fcQAnimationGroup_takeAnimation(self.h, index))

proc clear*(self: QAnimationGroup, ): void =

  fcQAnimationGroup_clear(self.h)

proc tr2*(_: type QAnimationGroup, s: cstring, c: cstring): string =

  let v_ms = fcQAnimationGroup_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAnimationGroup, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAnimationGroup_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QAnimationGroup, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAnimationGroup_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAnimationGroupmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAnimationGroup, slot: proc(super: QAnimationGroupmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAnimationGroupmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_metacall(self: ptr cQAnimationGroup, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAnimationGroup_metacall ".} =
  type Cb = proc(super: QAnimationGroupmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAnimationGroup(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QAnimationGroup, event: gen_qcoreevent.QEvent): bool =


  fQAnimationGroup_virtualbase_event(self.h, event.h)

type QAnimationGroupeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAnimationGroup, slot: proc(super: QAnimationGroupeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAnimationGroupeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_event(self: ptr cQAnimationGroup, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAnimationGroup_event ".} =
  type Cb = proc(super: QAnimationGroupeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAnimationGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
type QAnimationGroupdurationBase* = proc(): cint
proc onduration*(self: QAnimationGroup, slot: proc(): cint) =
  # TODO check subclass
  type Cb = proc(): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_duration(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_duration(self: ptr cQAnimationGroup, slot: int): cint {.exportc: "miqt_exec_callback_QAnimationGroup_duration ".} =
  type Cb = proc(): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QAnimationGroupupdateCurrentTimeBase* = proc(currentTime: cint): void
proc onupdateCurrentTime*(self: QAnimationGroup, slot: proc(currentTime: cint): void) =
  # TODO check subclass
  type Cb = proc(currentTime: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_updateCurrentTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_updateCurrentTime(self: ptr cQAnimationGroup, slot: int, currentTime: cint): void {.exportc: "miqt_exec_callback_QAnimationGroup_updateCurrentTime ".} =
  type Cb = proc(currentTime: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = currentTime


  nimfunc[](slotval1)
proc callVirtualBase_updateState(self: QAnimationGroup, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void =


  fQAnimationGroup_virtualbase_updateState(self.h, cint(newState), cint(oldState))

type QAnimationGroupupdateStateBase* = proc(newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void
proc onupdateState*(self: QAnimationGroup, slot: proc(super: QAnimationGroupupdateStateBase, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void) =
  # TODO check subclass
  type Cb = proc(super: QAnimationGroupupdateStateBase, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_updateState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_updateState(self: ptr cQAnimationGroup, slot: int, newState: cint, oldState: cint): void {.exportc: "miqt_exec_callback_QAnimationGroup_updateState ".} =
  type Cb = proc(super: QAnimationGroupupdateStateBase, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): auto =
    callVirtualBase_updateState(QAnimationGroup(h: self), newState, oldState)
  let slotval1 = gen_qabstractanimation.QAbstractAnimationState(newState)

  let slotval2 = gen_qabstractanimation.QAbstractAnimationState(oldState)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_updateDirection(self: QAnimationGroup, direction: gen_qabstractanimation.QAbstractAnimationDirection): void =


  fQAnimationGroup_virtualbase_updateDirection(self.h, cint(direction))

type QAnimationGroupupdateDirectionBase* = proc(direction: gen_qabstractanimation.QAbstractAnimationDirection): void
proc onupdateDirection*(self: QAnimationGroup, slot: proc(super: QAnimationGroupupdateDirectionBase, direction: gen_qabstractanimation.QAbstractAnimationDirection): void) =
  # TODO check subclass
  type Cb = proc(super: QAnimationGroupupdateDirectionBase, direction: gen_qabstractanimation.QAbstractAnimationDirection): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_updateDirection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_updateDirection(self: ptr cQAnimationGroup, slot: int, direction: cint): void {.exportc: "miqt_exec_callback_QAnimationGroup_updateDirection ".} =
  type Cb = proc(super: QAnimationGroupupdateDirectionBase, direction: gen_qabstractanimation.QAbstractAnimationDirection): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(direction: gen_qabstractanimation.QAbstractAnimationDirection): auto =
    callVirtualBase_updateDirection(QAnimationGroup(h: self), direction)
  let slotval1 = gen_qabstractanimation.QAbstractAnimationDirection(direction)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QAnimationGroup, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAnimationGroup_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAnimationGroupeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAnimationGroup, slot: proc(super: QAnimationGroupeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAnimationGroupeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_eventFilter(self: ptr cQAnimationGroup, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAnimationGroup_eventFilter ".} =
  type Cb = proc(super: QAnimationGroupeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAnimationGroup(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAnimationGroup, event: gen_qcoreevent.QTimerEvent): void =


  fQAnimationGroup_virtualbase_timerEvent(self.h, event.h)

type QAnimationGrouptimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAnimationGroup, slot: proc(super: QAnimationGrouptimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAnimationGrouptimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_timerEvent(self: ptr cQAnimationGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAnimationGroup_timerEvent ".} =
  type Cb = proc(super: QAnimationGrouptimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAnimationGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAnimationGroup, event: gen_qcoreevent.QChildEvent): void =


  fQAnimationGroup_virtualbase_childEvent(self.h, event.h)

type QAnimationGroupchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAnimationGroup, slot: proc(super: QAnimationGroupchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAnimationGroupchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_childEvent(self: ptr cQAnimationGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAnimationGroup_childEvent ".} =
  type Cb = proc(super: QAnimationGroupchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAnimationGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAnimationGroup, event: gen_qcoreevent.QEvent): void =


  fQAnimationGroup_virtualbase_customEvent(self.h, event.h)

type QAnimationGroupcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAnimationGroup, slot: proc(super: QAnimationGroupcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAnimationGroupcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_customEvent(self: ptr cQAnimationGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAnimationGroup_customEvent ".} =
  type Cb = proc(super: QAnimationGroupcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAnimationGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAnimationGroup, signal: gen_qmetaobject.QMetaMethod): void =


  fQAnimationGroup_virtualbase_connectNotify(self.h, signal.h)

type QAnimationGroupconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAnimationGroup, slot: proc(super: QAnimationGroupconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAnimationGroupconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_connectNotify(self: ptr cQAnimationGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAnimationGroup_connectNotify ".} =
  type Cb = proc(super: QAnimationGroupconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAnimationGroup(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAnimationGroup, signal: gen_qmetaobject.QMetaMethod): void =


  fQAnimationGroup_virtualbase_disconnectNotify(self.h, signal.h)

type QAnimationGroupdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAnimationGroup, slot: proc(super: QAnimationGroupdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAnimationGroupdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAnimationGroup_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAnimationGroup_disconnectNotify(self: ptr cQAnimationGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAnimationGroup_disconnectNotify ".} =
  type Cb = proc(super: QAnimationGroupdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAnimationGroup(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QAnimationGroup) =
  fcQAnimationGroup_delete(self.h)
