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
{.compile("gen_qpropertyanimation.cpp", cflags).}


import gen_qpropertyanimation_types
export gen_qpropertyanimation_types

import
  gen_qabstractanimation,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvariant,
  gen_qvariantanimation
export
  gen_qabstractanimation,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvariant,
  gen_qvariantanimation

type cQPropertyAnimation*{.exportc: "QPropertyAnimation", incompleteStruct.} = object

proc fcQPropertyAnimation_new(): ptr cQPropertyAnimation {.importc: "QPropertyAnimation_new".}
proc fcQPropertyAnimation_new2(target: pointer, propertyName: struct_miqt_string): ptr cQPropertyAnimation {.importc: "QPropertyAnimation_new2".}
proc fcQPropertyAnimation_new3(parent: pointer): ptr cQPropertyAnimation {.importc: "QPropertyAnimation_new3".}
proc fcQPropertyAnimation_new4(target: pointer, propertyName: struct_miqt_string, parent: pointer): ptr cQPropertyAnimation {.importc: "QPropertyAnimation_new4".}
proc fcQPropertyAnimation_metaObject(self: pointer, ): pointer {.importc: "QPropertyAnimation_metaObject".}
proc fcQPropertyAnimation_metacast(self: pointer, param1: cstring): pointer {.importc: "QPropertyAnimation_metacast".}
proc fcQPropertyAnimation_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPropertyAnimation_metacall".}
proc fcQPropertyAnimation_tr(s: cstring): struct_miqt_string {.importc: "QPropertyAnimation_tr".}
proc fcQPropertyAnimation_targetObject(self: pointer, ): pointer {.importc: "QPropertyAnimation_targetObject".}
proc fcQPropertyAnimation_setTargetObject(self: pointer, target: pointer): void {.importc: "QPropertyAnimation_setTargetObject".}
proc fcQPropertyAnimation_propertyName(self: pointer, ): struct_miqt_string {.importc: "QPropertyAnimation_propertyName".}
proc fcQPropertyAnimation_setPropertyName(self: pointer, propertyName: struct_miqt_string): void {.importc: "QPropertyAnimation_setPropertyName".}
proc fcQPropertyAnimation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPropertyAnimation_tr2".}
proc fcQPropertyAnimation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPropertyAnimation_tr3".}
proc fQPropertyAnimation_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPropertyAnimation_virtualbase_metacall".}
proc fcQPropertyAnimation_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_metacall".}
proc fQPropertyAnimation_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPropertyAnimation_virtualbase_event".}
proc fcQPropertyAnimation_override_virtual_event(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_event".}
proc fQPropertyAnimation_virtualbase_updateCurrentValue(self: pointer, value: pointer): void{.importc: "QPropertyAnimation_virtualbase_updateCurrentValue".}
proc fcQPropertyAnimation_override_virtual_updateCurrentValue(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_updateCurrentValue".}
proc fQPropertyAnimation_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void{.importc: "QPropertyAnimation_virtualbase_updateState".}
proc fcQPropertyAnimation_override_virtual_updateState(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_updateState".}
proc fQPropertyAnimation_virtualbase_duration(self: pointer, ): cint{.importc: "QPropertyAnimation_virtualbase_duration".}
proc fcQPropertyAnimation_override_virtual_duration(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_duration".}
proc fQPropertyAnimation_virtualbase_updateCurrentTime(self: pointer, param1: cint): void{.importc: "QPropertyAnimation_virtualbase_updateCurrentTime".}
proc fcQPropertyAnimation_override_virtual_updateCurrentTime(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_updateCurrentTime".}
proc fQPropertyAnimation_virtualbase_interpolated(self: pointer, fromVal: pointer, to: pointer, progress: float64): pointer{.importc: "QPropertyAnimation_virtualbase_interpolated".}
proc fcQPropertyAnimation_override_virtual_interpolated(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_interpolated".}
proc fQPropertyAnimation_virtualbase_updateDirection(self: pointer, direction: cint): void{.importc: "QPropertyAnimation_virtualbase_updateDirection".}
proc fcQPropertyAnimation_override_virtual_updateDirection(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_updateDirection".}
proc fQPropertyAnimation_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QPropertyAnimation_virtualbase_eventFilter".}
proc fcQPropertyAnimation_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_eventFilter".}
proc fQPropertyAnimation_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPropertyAnimation_virtualbase_timerEvent".}
proc fcQPropertyAnimation_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_timerEvent".}
proc fQPropertyAnimation_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPropertyAnimation_virtualbase_childEvent".}
proc fcQPropertyAnimation_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_childEvent".}
proc fQPropertyAnimation_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPropertyAnimation_virtualbase_customEvent".}
proc fcQPropertyAnimation_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_customEvent".}
proc fQPropertyAnimation_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPropertyAnimation_virtualbase_connectNotify".}
proc fcQPropertyAnimation_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_connectNotify".}
proc fQPropertyAnimation_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPropertyAnimation_virtualbase_disconnectNotify".}
proc fcQPropertyAnimation_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPropertyAnimation_override_virtual_disconnectNotify".}
proc fcQPropertyAnimation_staticMetaObject(): pointer {.importc: "QPropertyAnimation_staticMetaObject".}
proc fcQPropertyAnimation_delete(self: pointer) {.importc: "QPropertyAnimation_delete".}


func init*(T: type QPropertyAnimation, h: ptr cQPropertyAnimation): QPropertyAnimation =
  T(h: h)
proc create*(T: type QPropertyAnimation, ): QPropertyAnimation =

  QPropertyAnimation.init(fcQPropertyAnimation_new())
proc create*(T: type QPropertyAnimation, target: gen_qobject.QObject, propertyName: seq[byte]): QPropertyAnimation =

  QPropertyAnimation.init(fcQPropertyAnimation_new2(target.h, struct_miqt_string(data: cast[cstring](if len(propertyName) == 0: nil else: unsafeAddr propertyName[0]), len: csize_t(len(propertyName)))))
proc create*(T: type QPropertyAnimation, parent: gen_qobject.QObject): QPropertyAnimation =

  QPropertyAnimation.init(fcQPropertyAnimation_new3(parent.h))
proc create*(T: type QPropertyAnimation, target: gen_qobject.QObject, propertyName: seq[byte], parent: gen_qobject.QObject): QPropertyAnimation =

  QPropertyAnimation.init(fcQPropertyAnimation_new4(target.h, struct_miqt_string(data: cast[cstring](if len(propertyName) == 0: nil else: unsafeAddr propertyName[0]), len: csize_t(len(propertyName))), parent.h))
proc metaObject*(self: QPropertyAnimation, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQPropertyAnimation_metaObject(self.h))

proc metacast*(self: QPropertyAnimation, param1: cstring): pointer =

  fcQPropertyAnimation_metacast(self.h, param1)

proc metacall*(self: QPropertyAnimation, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQPropertyAnimation_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QPropertyAnimation, s: cstring): string =

  let v_ms = fcQPropertyAnimation_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc targetObject*(self: QPropertyAnimation, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQPropertyAnimation_targetObject(self.h))

proc setTargetObject*(self: QPropertyAnimation, target: gen_qobject.QObject): void =

  fcQPropertyAnimation_setTargetObject(self.h, target.h)

proc propertyName*(self: QPropertyAnimation, ): seq[byte] =

  var v_bytearray = fcQPropertyAnimation_propertyName(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setPropertyName*(self: QPropertyAnimation, propertyName: seq[byte]): void =

  fcQPropertyAnimation_setPropertyName(self.h, struct_miqt_string(data: cast[cstring](if len(propertyName) == 0: nil else: unsafeAddr propertyName[0]), len: csize_t(len(propertyName))))

proc tr2*(_: type QPropertyAnimation, s: cstring, c: cstring): string =

  let v_ms = fcQPropertyAnimation_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QPropertyAnimation, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPropertyAnimation_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QPropertyAnimation, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQPropertyAnimation_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPropertyAnimationmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QPropertyAnimation, slot: proc(super: QPropertyAnimationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QPropertyAnimationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_metacall(self: ptr cQPropertyAnimation, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPropertyAnimation_metacall ".} =
  type Cb = proc(super: QPropertyAnimationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QPropertyAnimation(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QPropertyAnimation, event: gen_qcoreevent.QEvent): bool =


  fQPropertyAnimation_virtualbase_event(self.h, event.h)

type QPropertyAnimationeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QPropertyAnimation, slot: proc(super: QPropertyAnimationeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPropertyAnimationeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_event(self: ptr cQPropertyAnimation, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPropertyAnimation_event ".} =
  type Cb = proc(super: QPropertyAnimationeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QPropertyAnimation(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_updateCurrentValue(self: QPropertyAnimation, value: gen_qvariant.QVariant): void =


  fQPropertyAnimation_virtualbase_updateCurrentValue(self.h, value.h)

type QPropertyAnimationupdateCurrentValueBase* = proc(value: gen_qvariant.QVariant): void
proc onupdateCurrentValue*(self: QPropertyAnimation, slot: proc(super: QPropertyAnimationupdateCurrentValueBase, value: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QPropertyAnimationupdateCurrentValueBase, value: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_updateCurrentValue(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_updateCurrentValue(self: ptr cQPropertyAnimation, slot: int, value: pointer): void {.exportc: "miqt_exec_callback_QPropertyAnimation_updateCurrentValue ".} =
  type Cb = proc(super: QPropertyAnimationupdateCurrentValueBase, value: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: gen_qvariant.QVariant): auto =
    callVirtualBase_updateCurrentValue(QPropertyAnimation(h: self), value)
  let slotval1 = gen_qvariant.QVariant(h: value)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_updateState(self: QPropertyAnimation, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void =


  fQPropertyAnimation_virtualbase_updateState(self.h, cint(newState), cint(oldState))

type QPropertyAnimationupdateStateBase* = proc(newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void
proc onupdateState*(self: QPropertyAnimation, slot: proc(super: QPropertyAnimationupdateStateBase, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void) =
  # TODO check subclass
  type Cb = proc(super: QPropertyAnimationupdateStateBase, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_updateState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_updateState(self: ptr cQPropertyAnimation, slot: int, newState: cint, oldState: cint): void {.exportc: "miqt_exec_callback_QPropertyAnimation_updateState ".} =
  type Cb = proc(super: QPropertyAnimationupdateStateBase, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): auto =
    callVirtualBase_updateState(QPropertyAnimation(h: self), newState, oldState)
  let slotval1 = gen_qabstractanimation.QAbstractAnimationState(newState)

  let slotval2 = gen_qabstractanimation.QAbstractAnimationState(oldState)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_duration(self: QPropertyAnimation, ): cint =


  fQPropertyAnimation_virtualbase_duration(self.h)

type QPropertyAnimationdurationBase* = proc(): cint
proc onduration*(self: QPropertyAnimation, slot: proc(super: QPropertyAnimationdurationBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QPropertyAnimationdurationBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_duration(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_duration(self: ptr cQPropertyAnimation, slot: int): cint {.exportc: "miqt_exec_callback_QPropertyAnimation_duration ".} =
  type Cb = proc(super: QPropertyAnimationdurationBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_duration(QPropertyAnimation(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_updateCurrentTime(self: QPropertyAnimation, param1: cint): void =


  fQPropertyAnimation_virtualbase_updateCurrentTime(self.h, param1)

type QPropertyAnimationupdateCurrentTimeBase* = proc(param1: cint): void
proc onupdateCurrentTime*(self: QPropertyAnimation, slot: proc(super: QPropertyAnimationupdateCurrentTimeBase, param1: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QPropertyAnimationupdateCurrentTimeBase, param1: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_updateCurrentTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_updateCurrentTime(self: ptr cQPropertyAnimation, slot: int, param1: cint): void {.exportc: "miqt_exec_callback_QPropertyAnimation_updateCurrentTime ".} =
  type Cb = proc(super: QPropertyAnimationupdateCurrentTimeBase, param1: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_updateCurrentTime(QPropertyAnimation(h: self), param1)
  let slotval1 = param1


  nimfunc[](superCall, slotval1)
proc callVirtualBase_interpolated(self: QPropertyAnimation, fromVal: gen_qvariant.QVariant, to: gen_qvariant.QVariant, progress: float64): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQPropertyAnimation_virtualbase_interpolated(self.h, fromVal.h, to.h, progress))

type QPropertyAnimationinterpolatedBase* = proc(fromVal: gen_qvariant.QVariant, to: gen_qvariant.QVariant, progress: float64): gen_qvariant.QVariant
proc oninterpolated*(self: QPropertyAnimation, slot: proc(super: QPropertyAnimationinterpolatedBase, fromVal: gen_qvariant.QVariant, to: gen_qvariant.QVariant, progress: float64): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QPropertyAnimationinterpolatedBase, fromVal: gen_qvariant.QVariant, to: gen_qvariant.QVariant, progress: float64): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_interpolated(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_interpolated(self: ptr cQPropertyAnimation, slot: int, fromVal: pointer, to: pointer, progress: float64): pointer {.exportc: "miqt_exec_callback_QPropertyAnimation_interpolated ".} =
  type Cb = proc(super: QPropertyAnimationinterpolatedBase, fromVal: gen_qvariant.QVariant, to: gen_qvariant.QVariant, progress: float64): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fromVal: gen_qvariant.QVariant, to: gen_qvariant.QVariant, progress: float64): auto =
    callVirtualBase_interpolated(QPropertyAnimation(h: self), fromVal, to, progress)
  let slotval1 = gen_qvariant.QVariant(h: fromVal)

  let slotval2 = gen_qvariant.QVariant(h: to)

  let slotval3 = progress


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_updateDirection(self: QPropertyAnimation, direction: gen_qabstractanimation.QAbstractAnimationDirection): void =


  fQPropertyAnimation_virtualbase_updateDirection(self.h, cint(direction))

type QPropertyAnimationupdateDirectionBase* = proc(direction: gen_qabstractanimation.QAbstractAnimationDirection): void
proc onupdateDirection*(self: QPropertyAnimation, slot: proc(super: QPropertyAnimationupdateDirectionBase, direction: gen_qabstractanimation.QAbstractAnimationDirection): void) =
  # TODO check subclass
  type Cb = proc(super: QPropertyAnimationupdateDirectionBase, direction: gen_qabstractanimation.QAbstractAnimationDirection): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_updateDirection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_updateDirection(self: ptr cQPropertyAnimation, slot: int, direction: cint): void {.exportc: "miqt_exec_callback_QPropertyAnimation_updateDirection ".} =
  type Cb = proc(super: QPropertyAnimationupdateDirectionBase, direction: gen_qabstractanimation.QAbstractAnimationDirection): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(direction: gen_qabstractanimation.QAbstractAnimationDirection): auto =
    callVirtualBase_updateDirection(QPropertyAnimation(h: self), direction)
  let slotval1 = gen_qabstractanimation.QAbstractAnimationDirection(direction)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QPropertyAnimation, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQPropertyAnimation_virtualbase_eventFilter(self.h, watched.h, event.h)

type QPropertyAnimationeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QPropertyAnimation, slot: proc(super: QPropertyAnimationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPropertyAnimationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_eventFilter(self: ptr cQPropertyAnimation, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QPropertyAnimation_eventFilter ".} =
  type Cb = proc(super: QPropertyAnimationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QPropertyAnimation(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QPropertyAnimation, event: gen_qcoreevent.QTimerEvent): void =


  fQPropertyAnimation_virtualbase_timerEvent(self.h, event.h)

type QPropertyAnimationtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QPropertyAnimation, slot: proc(super: QPropertyAnimationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPropertyAnimationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_timerEvent(self: ptr cQPropertyAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPropertyAnimation_timerEvent ".} =
  type Cb = proc(super: QPropertyAnimationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QPropertyAnimation(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QPropertyAnimation, event: gen_qcoreevent.QChildEvent): void =


  fQPropertyAnimation_virtualbase_childEvent(self.h, event.h)

type QPropertyAnimationchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QPropertyAnimation, slot: proc(super: QPropertyAnimationchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPropertyAnimationchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_childEvent(self: ptr cQPropertyAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPropertyAnimation_childEvent ".} =
  type Cb = proc(super: QPropertyAnimationchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QPropertyAnimation(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QPropertyAnimation, event: gen_qcoreevent.QEvent): void =


  fQPropertyAnimation_virtualbase_customEvent(self.h, event.h)

type QPropertyAnimationcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QPropertyAnimation, slot: proc(super: QPropertyAnimationcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPropertyAnimationcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_customEvent(self: ptr cQPropertyAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPropertyAnimation_customEvent ".} =
  type Cb = proc(super: QPropertyAnimationcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QPropertyAnimation(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QPropertyAnimation, signal: gen_qmetaobject.QMetaMethod): void =


  fQPropertyAnimation_virtualbase_connectNotify(self.h, signal.h)

type QPropertyAnimationconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QPropertyAnimation, slot: proc(super: QPropertyAnimationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPropertyAnimationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_connectNotify(self: ptr cQPropertyAnimation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPropertyAnimation_connectNotify ".} =
  type Cb = proc(super: QPropertyAnimationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QPropertyAnimation(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QPropertyAnimation, signal: gen_qmetaobject.QMetaMethod): void =


  fQPropertyAnimation_virtualbase_disconnectNotify(self.h, signal.h)

type QPropertyAnimationdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QPropertyAnimation, slot: proc(super: QPropertyAnimationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPropertyAnimationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPropertyAnimation_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPropertyAnimation_disconnectNotify(self: ptr cQPropertyAnimation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPropertyAnimation_disconnectNotify ".} =
  type Cb = proc(super: QPropertyAnimationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QPropertyAnimation(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QPropertyAnimation): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQPropertyAnimation_staticMetaObject())
proc delete*(self: QPropertyAnimation) =
  fcQPropertyAnimation_delete(self.h)
