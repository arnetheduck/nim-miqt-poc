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
{.compile("gen_qvariantanimation.cpp", cflags).}


import gen_qvariantanimation_types
export gen_qvariantanimation_types

import
  gen_qabstractanimation,
  gen_qcoreevent,
  gen_qeasingcurve,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvariant
export
  gen_qabstractanimation,
  gen_qcoreevent,
  gen_qeasingcurve,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qvariant

type cQVariantAnimation*{.exportc: "QVariantAnimation", incompleteStruct.} = object

proc fcQVariantAnimation_new(): ptr cQVariantAnimation {.importc: "QVariantAnimation_new".}
proc fcQVariantAnimation_new2(parent: pointer): ptr cQVariantAnimation {.importc: "QVariantAnimation_new2".}
proc fcQVariantAnimation_metaObject(self: pointer, ): pointer {.importc: "QVariantAnimation_metaObject".}
proc fcQVariantAnimation_metacast(self: pointer, param1: cstring): pointer {.importc: "QVariantAnimation_metacast".}
proc fcQVariantAnimation_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QVariantAnimation_metacall".}
proc fcQVariantAnimation_tr(s: cstring): struct_miqt_string {.importc: "QVariantAnimation_tr".}
proc fcQVariantAnimation_startValue(self: pointer, ): pointer {.importc: "QVariantAnimation_startValue".}
proc fcQVariantAnimation_setStartValue(self: pointer, value: pointer): void {.importc: "QVariantAnimation_setStartValue".}
proc fcQVariantAnimation_endValue(self: pointer, ): pointer {.importc: "QVariantAnimation_endValue".}
proc fcQVariantAnimation_setEndValue(self: pointer, value: pointer): void {.importc: "QVariantAnimation_setEndValue".}
proc fcQVariantAnimation_keyValueAt(self: pointer, step: float64): pointer {.importc: "QVariantAnimation_keyValueAt".}
proc fcQVariantAnimation_setKeyValueAt(self: pointer, step: float64, value: pointer): void {.importc: "QVariantAnimation_setKeyValueAt".}
proc fcQVariantAnimation_keyValues(self: pointer, ): struct_miqt_array {.importc: "QVariantAnimation_keyValues".}
proc fcQVariantAnimation_setKeyValues(self: pointer, values: struct_miqt_array): void {.importc: "QVariantAnimation_setKeyValues".}
proc fcQVariantAnimation_currentValue(self: pointer, ): pointer {.importc: "QVariantAnimation_currentValue".}
proc fcQVariantAnimation_duration(self: pointer, ): cint {.importc: "QVariantAnimation_duration".}
proc fcQVariantAnimation_setDuration(self: pointer, msecs: cint): void {.importc: "QVariantAnimation_setDuration".}
proc fcQVariantAnimation_easingCurve(self: pointer, ): pointer {.importc: "QVariantAnimation_easingCurve".}
proc fcQVariantAnimation_setEasingCurve(self: pointer, easing: pointer): void {.importc: "QVariantAnimation_setEasingCurve".}
proc fcQVariantAnimation_valueChanged(self: pointer, value: pointer): void {.importc: "QVariantAnimation_valueChanged".}
proc fQVariantAnimation_connect_valueChanged(self: pointer, slot: int) {.importc: "QVariantAnimation_connect_valueChanged".}
proc fcQVariantAnimation_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QVariantAnimation_tr2".}
proc fcQVariantAnimation_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QVariantAnimation_tr3".}
proc fQVariantAnimation_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QVariantAnimation_virtualbase_metaObject".}
proc fcQVariantAnimation_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_metaObject".}
proc fQVariantAnimation_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QVariantAnimation_virtualbase_metacast".}
proc fcQVariantAnimation_override_virtual_metacast(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_metacast".}
proc fQVariantAnimation_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QVariantAnimation_virtualbase_metacall".}
proc fcQVariantAnimation_override_virtual_metacall(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_metacall".}
proc fQVariantAnimation_virtualbase_duration(self: pointer, ): cint{.importc: "QVariantAnimation_virtualbase_duration".}
proc fcQVariantAnimation_override_virtual_duration(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_duration".}
proc fQVariantAnimation_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QVariantAnimation_virtualbase_event".}
proc fcQVariantAnimation_override_virtual_event(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_event".}
proc fQVariantAnimation_virtualbase_updateCurrentTime(self: pointer, param1: cint): void{.importc: "QVariantAnimation_virtualbase_updateCurrentTime".}
proc fcQVariantAnimation_override_virtual_updateCurrentTime(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_updateCurrentTime".}
proc fQVariantAnimation_virtualbase_updateState(self: pointer, newState: cint, oldState: cint): void{.importc: "QVariantAnimation_virtualbase_updateState".}
proc fcQVariantAnimation_override_virtual_updateState(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_updateState".}
proc fQVariantAnimation_virtualbase_updateCurrentValue(self: pointer, value: pointer): void{.importc: "QVariantAnimation_virtualbase_updateCurrentValue".}
proc fcQVariantAnimation_override_virtual_updateCurrentValue(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_updateCurrentValue".}
proc fQVariantAnimation_virtualbase_interpolated(self: pointer, fromVal: pointer, to: pointer, progress: float64): pointer{.importc: "QVariantAnimation_virtualbase_interpolated".}
proc fcQVariantAnimation_override_virtual_interpolated(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_interpolated".}
proc fQVariantAnimation_virtualbase_updateDirection(self: pointer, direction: cint): void{.importc: "QVariantAnimation_virtualbase_updateDirection".}
proc fcQVariantAnimation_override_virtual_updateDirection(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_updateDirection".}
proc fQVariantAnimation_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QVariantAnimation_virtualbase_eventFilter".}
proc fcQVariantAnimation_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_eventFilter".}
proc fQVariantAnimation_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QVariantAnimation_virtualbase_timerEvent".}
proc fcQVariantAnimation_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_timerEvent".}
proc fQVariantAnimation_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QVariantAnimation_virtualbase_childEvent".}
proc fcQVariantAnimation_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_childEvent".}
proc fQVariantAnimation_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QVariantAnimation_virtualbase_customEvent".}
proc fcQVariantAnimation_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_customEvent".}
proc fQVariantAnimation_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QVariantAnimation_virtualbase_connectNotify".}
proc fcQVariantAnimation_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_connectNotify".}
proc fQVariantAnimation_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QVariantAnimation_virtualbase_disconnectNotify".}
proc fcQVariantAnimation_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QVariantAnimation_override_virtual_disconnectNotify".}
proc fcQVariantAnimation_staticMetaObject(): pointer {.importc: "QVariantAnimation_staticMetaObject".}
proc fcQVariantAnimation_delete(self: pointer) {.importc: "QVariantAnimation_delete".}


func init*(T: type QVariantAnimation, h: ptr cQVariantAnimation): QVariantAnimation =
  T(h: h)
proc create*(T: type QVariantAnimation, ): QVariantAnimation =

  QVariantAnimation.init(fcQVariantAnimation_new())
proc create*(T: type QVariantAnimation, parent: gen_qobject.QObject): QVariantAnimation =

  QVariantAnimation.init(fcQVariantAnimation_new2(parent.h))
proc metaObject*(self: QVariantAnimation, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQVariantAnimation_metaObject(self.h))

proc metacast*(self: QVariantAnimation, param1: cstring): pointer =

  fcQVariantAnimation_metacast(self.h, param1)

proc metacall*(self: QVariantAnimation, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQVariantAnimation_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QVariantAnimation, s: cstring): string =

  let v_ms = fcQVariantAnimation_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc startValue*(self: QVariantAnimation, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQVariantAnimation_startValue(self.h))

proc setStartValue*(self: QVariantAnimation, value: gen_qvariant.QVariant): void =

  fcQVariantAnimation_setStartValue(self.h, value.h)

proc endValue*(self: QVariantAnimation, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQVariantAnimation_endValue(self.h))

proc setEndValue*(self: QVariantAnimation, value: gen_qvariant.QVariant): void =

  fcQVariantAnimation_setEndValue(self.h, value.h)

proc keyValueAt*(self: QVariantAnimation, step: float64): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQVariantAnimation_keyValueAt(self.h, step))

proc setKeyValueAt*(self: QVariantAnimation, step: float64, value: gen_qvariant.QVariant): void =

  fcQVariantAnimation_setKeyValueAt(self.h, step, value.h)

proc keyValues*(self: QVariantAnimation, ): seq[tuple[first: float64, second: gen_qvariant.QVariant]] =

  var v_ma = fcQVariantAnimation_keyValues(self.h)
  var vx_ret = newSeq[tuple[first: float64, second: gen_qvariant.QVariant]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_map]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_mm = v_outCast[i]
    var vx_lv_First_CArray = cast[ptr UncheckedArray[float64]](vx_lv_mm.keys)
    var vx_lv_Second_CArray = cast[ptr UncheckedArray[pointer]](vx_lv_mm.values)
    var vx_lv_entry_First = vx_lv_First_CArray[0]

    var vx_lv_entry_Second = gen_qvariant.QVariant(h: vx_lv_Second_CArray[0])

    vx_ret[i] = (first: vx_lv_entry_First , second: vx_lv_entry_Second )
  vx_ret

proc setKeyValues*(self: QVariantAnimation, values: seq[tuple[first: float64, second: gen_qvariant.QVariant]]): void =

  var values_CArray = newSeq[struct_miqt_map](len(values))
  for i in 0..<len(values):
    var values_i_CArray_First: float64
    var values_i_CArray_Second: pointer
    values_i_CArray_First = values[i].first
    values_i_CArray_Second = values[i].second.h
    values_CArray[i] = struct_miqt_map(len: 1,keys: addr(values_i_CArray_First),values: addr(values_i_CArray_Second),)

  fcQVariantAnimation_setKeyValues(self.h, struct_miqt_array(len: csize_t(len(values)), data: if len(values) == 0: nil else: addr(values_CArray[0])))

proc currentValue*(self: QVariantAnimation, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQVariantAnimation_currentValue(self.h))

proc duration*(self: QVariantAnimation, ): cint =

  fcQVariantAnimation_duration(self.h)

proc setDuration*(self: QVariantAnimation, msecs: cint): void =

  fcQVariantAnimation_setDuration(self.h, msecs)

proc easingCurve*(self: QVariantAnimation, ): gen_qeasingcurve.QEasingCurve =

  gen_qeasingcurve.QEasingCurve(h: fcQVariantAnimation_easingCurve(self.h))

proc setEasingCurve*(self: QVariantAnimation, easing: gen_qeasingcurve.QEasingCurve): void =

  fcQVariantAnimation_setEasingCurve(self.h, easing.h)

proc valueChanged*(self: QVariantAnimation, value: gen_qvariant.QVariant): void =

  fcQVariantAnimation_valueChanged(self.h, value.h)

proc miqt_exec_callback_QVariantAnimation_valueChanged(slot: int, value: pointer) {.exportc.} =
  type Cb = proc(value: gen_qvariant.QVariant)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qvariant.QVariant(h: value)


  nimfunc[](slotval1)

proc onvalueChanged*(self: QVariantAnimation, slot: proc(value: gen_qvariant.QVariant)) =
  type Cb = proc(value: gen_qvariant.QVariant)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQVariantAnimation_connect_valueChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QVariantAnimation, s: cstring, c: cstring): string =

  let v_ms = fcQVariantAnimation_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QVariantAnimation, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQVariantAnimation_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QVariantAnimation, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQVariantAnimation_virtualbase_metaObject(self.h))

type QVariantAnimationmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QVariantAnimation, slot: proc(super: QVariantAnimationmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QVariantAnimationmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_metaObject(self: ptr cQVariantAnimation, slot: int): pointer {.exportc: "miqt_exec_callback_QVariantAnimation_metaObject ".} =
  type Cb = proc(super: QVariantAnimationmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QVariantAnimation(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QVariantAnimation, param1: cstring): pointer =


  fQVariantAnimation_virtualbase_metacast(self.h, param1)

type QVariantAnimationmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QVariantAnimation, slot: proc(super: QVariantAnimationmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QVariantAnimationmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_metacast(self: ptr cQVariantAnimation, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QVariantAnimation_metacast ".} =
  type Cb = proc(super: QVariantAnimationmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QVariantAnimation(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QVariantAnimation, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQVariantAnimation_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QVariantAnimationmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QVariantAnimation, slot: proc(super: QVariantAnimationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QVariantAnimationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_metacall(self: ptr cQVariantAnimation, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QVariantAnimation_metacall ".} =
  type Cb = proc(super: QVariantAnimationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QVariantAnimation(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_duration(self: QVariantAnimation, ): cint =


  fQVariantAnimation_virtualbase_duration(self.h)

type QVariantAnimationdurationBase* = proc(): cint
proc onduration*(self: QVariantAnimation, slot: proc(super: QVariantAnimationdurationBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QVariantAnimationdurationBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_duration(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_duration(self: ptr cQVariantAnimation, slot: int): cint {.exportc: "miqt_exec_callback_QVariantAnimation_duration ".} =
  type Cb = proc(super: QVariantAnimationdurationBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_duration(QVariantAnimation(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_event(self: QVariantAnimation, event: gen_qcoreevent.QEvent): bool =


  fQVariantAnimation_virtualbase_event(self.h, event.h)

type QVariantAnimationeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QVariantAnimation, slot: proc(super: QVariantAnimationeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QVariantAnimationeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_event(self: ptr cQVariantAnimation, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QVariantAnimation_event ".} =
  type Cb = proc(super: QVariantAnimationeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QVariantAnimation(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_updateCurrentTime(self: QVariantAnimation, param1: cint): void =


  fQVariantAnimation_virtualbase_updateCurrentTime(self.h, param1)

type QVariantAnimationupdateCurrentTimeBase* = proc(param1: cint): void
proc onupdateCurrentTime*(self: QVariantAnimation, slot: proc(super: QVariantAnimationupdateCurrentTimeBase, param1: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QVariantAnimationupdateCurrentTimeBase, param1: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_updateCurrentTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_updateCurrentTime(self: ptr cQVariantAnimation, slot: int, param1: cint): void {.exportc: "miqt_exec_callback_QVariantAnimation_updateCurrentTime ".} =
  type Cb = proc(super: QVariantAnimationupdateCurrentTimeBase, param1: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_updateCurrentTime(QVariantAnimation(h: self), param1)
  let slotval1 = param1


  nimfunc[](superCall, slotval1)
proc callVirtualBase_updateState(self: QVariantAnimation, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void =


  fQVariantAnimation_virtualbase_updateState(self.h, cint(newState), cint(oldState))

type QVariantAnimationupdateStateBase* = proc(newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void
proc onupdateState*(self: QVariantAnimation, slot: proc(super: QVariantAnimationupdateStateBase, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void) =
  # TODO check subclass
  type Cb = proc(super: QVariantAnimationupdateStateBase, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_updateState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_updateState(self: ptr cQVariantAnimation, slot: int, newState: cint, oldState: cint): void {.exportc: "miqt_exec_callback_QVariantAnimation_updateState ".} =
  type Cb = proc(super: QVariantAnimationupdateStateBase, newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(newState: gen_qabstractanimation.QAbstractAnimationState, oldState: gen_qabstractanimation.QAbstractAnimationState): auto =
    callVirtualBase_updateState(QVariantAnimation(h: self), newState, oldState)
  let slotval1 = gen_qabstractanimation.QAbstractAnimationState(newState)

  let slotval2 = gen_qabstractanimation.QAbstractAnimationState(oldState)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_updateCurrentValue(self: QVariantAnimation, value: gen_qvariant.QVariant): void =


  fQVariantAnimation_virtualbase_updateCurrentValue(self.h, value.h)

type QVariantAnimationupdateCurrentValueBase* = proc(value: gen_qvariant.QVariant): void
proc onupdateCurrentValue*(self: QVariantAnimation, slot: proc(super: QVariantAnimationupdateCurrentValueBase, value: gen_qvariant.QVariant): void) =
  # TODO check subclass
  type Cb = proc(super: QVariantAnimationupdateCurrentValueBase, value: gen_qvariant.QVariant): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_updateCurrentValue(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_updateCurrentValue(self: ptr cQVariantAnimation, slot: int, value: pointer): void {.exportc: "miqt_exec_callback_QVariantAnimation_updateCurrentValue ".} =
  type Cb = proc(super: QVariantAnimationupdateCurrentValueBase, value: gen_qvariant.QVariant): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: gen_qvariant.QVariant): auto =
    callVirtualBase_updateCurrentValue(QVariantAnimation(h: self), value)
  let slotval1 = gen_qvariant.QVariant(h: value)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_interpolated(self: QVariantAnimation, fromVal: gen_qvariant.QVariant, to: gen_qvariant.QVariant, progress: float64): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQVariantAnimation_virtualbase_interpolated(self.h, fromVal.h, to.h, progress))

type QVariantAnimationinterpolatedBase* = proc(fromVal: gen_qvariant.QVariant, to: gen_qvariant.QVariant, progress: float64): gen_qvariant.QVariant
proc oninterpolated*(self: QVariantAnimation, slot: proc(super: QVariantAnimationinterpolatedBase, fromVal: gen_qvariant.QVariant, to: gen_qvariant.QVariant, progress: float64): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QVariantAnimationinterpolatedBase, fromVal: gen_qvariant.QVariant, to: gen_qvariant.QVariant, progress: float64): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_interpolated(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_interpolated(self: ptr cQVariantAnimation, slot: int, fromVal: pointer, to: pointer, progress: float64): pointer {.exportc: "miqt_exec_callback_QVariantAnimation_interpolated ".} =
  type Cb = proc(super: QVariantAnimationinterpolatedBase, fromVal: gen_qvariant.QVariant, to: gen_qvariant.QVariant, progress: float64): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(fromVal: gen_qvariant.QVariant, to: gen_qvariant.QVariant, progress: float64): auto =
    callVirtualBase_interpolated(QVariantAnimation(h: self), fromVal, to, progress)
  let slotval1 = gen_qvariant.QVariant(h: fromVal)

  let slotval2 = gen_qvariant.QVariant(h: to)

  let slotval3 = progress


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_updateDirection(self: QVariantAnimation, direction: gen_qabstractanimation.QAbstractAnimationDirection): void =


  fQVariantAnimation_virtualbase_updateDirection(self.h, cint(direction))

type QVariantAnimationupdateDirectionBase* = proc(direction: gen_qabstractanimation.QAbstractAnimationDirection): void
proc onupdateDirection*(self: QVariantAnimation, slot: proc(super: QVariantAnimationupdateDirectionBase, direction: gen_qabstractanimation.QAbstractAnimationDirection): void) =
  # TODO check subclass
  type Cb = proc(super: QVariantAnimationupdateDirectionBase, direction: gen_qabstractanimation.QAbstractAnimationDirection): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_updateDirection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_updateDirection(self: ptr cQVariantAnimation, slot: int, direction: cint): void {.exportc: "miqt_exec_callback_QVariantAnimation_updateDirection ".} =
  type Cb = proc(super: QVariantAnimationupdateDirectionBase, direction: gen_qabstractanimation.QAbstractAnimationDirection): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(direction: gen_qabstractanimation.QAbstractAnimationDirection): auto =
    callVirtualBase_updateDirection(QVariantAnimation(h: self), direction)
  let slotval1 = gen_qabstractanimation.QAbstractAnimationDirection(direction)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventFilter(self: QVariantAnimation, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQVariantAnimation_virtualbase_eventFilter(self.h, watched.h, event.h)

type QVariantAnimationeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QVariantAnimation, slot: proc(super: QVariantAnimationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QVariantAnimationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_eventFilter(self: ptr cQVariantAnimation, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QVariantAnimation_eventFilter ".} =
  type Cb = proc(super: QVariantAnimationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QVariantAnimation(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QVariantAnimation, event: gen_qcoreevent.QTimerEvent): void =


  fQVariantAnimation_virtualbase_timerEvent(self.h, event.h)

type QVariantAnimationtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QVariantAnimation, slot: proc(super: QVariantAnimationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVariantAnimationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_timerEvent(self: ptr cQVariantAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVariantAnimation_timerEvent ".} =
  type Cb = proc(super: QVariantAnimationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QVariantAnimation(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QVariantAnimation, event: gen_qcoreevent.QChildEvent): void =


  fQVariantAnimation_virtualbase_childEvent(self.h, event.h)

type QVariantAnimationchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QVariantAnimation, slot: proc(super: QVariantAnimationchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVariantAnimationchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_childEvent(self: ptr cQVariantAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVariantAnimation_childEvent ".} =
  type Cb = proc(super: QVariantAnimationchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QVariantAnimation(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QVariantAnimation, event: gen_qcoreevent.QEvent): void =


  fQVariantAnimation_virtualbase_customEvent(self.h, event.h)

type QVariantAnimationcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QVariantAnimation, slot: proc(super: QVariantAnimationcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QVariantAnimationcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_customEvent(self: ptr cQVariantAnimation, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QVariantAnimation_customEvent ".} =
  type Cb = proc(super: QVariantAnimationcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QVariantAnimation(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QVariantAnimation, signal: gen_qmetaobject.QMetaMethod): void =


  fQVariantAnimation_virtualbase_connectNotify(self.h, signal.h)

type QVariantAnimationconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QVariantAnimation, slot: proc(super: QVariantAnimationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QVariantAnimationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_connectNotify(self: ptr cQVariantAnimation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVariantAnimation_connectNotify ".} =
  type Cb = proc(super: QVariantAnimationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QVariantAnimation(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QVariantAnimation, signal: gen_qmetaobject.QMetaMethod): void =


  fQVariantAnimation_virtualbase_disconnectNotify(self.h, signal.h)

type QVariantAnimationdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QVariantAnimation, slot: proc(super: QVariantAnimationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QVariantAnimationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQVariantAnimation_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QVariantAnimation_disconnectNotify(self: ptr cQVariantAnimation, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QVariantAnimation_disconnectNotify ".} =
  type Cb = proc(super: QVariantAnimationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QVariantAnimation(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QVariantAnimation): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQVariantAnimation_staticMetaObject())
proc delete*(self: QVariantAnimation) =
  fcQVariantAnimation_delete(self.h)
