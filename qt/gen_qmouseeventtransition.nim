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
{.compile("gen_qmouseeventtransition.cpp", cflags).}


import gen_qmouseeventtransition_types
export gen_qmouseeventtransition_types

import
  gen_qcoreevent,
  gen_qeventtransition,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainterpath,
  gen_qstate
export
  gen_qcoreevent,
  gen_qeventtransition,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainterpath,
  gen_qstate

type cQMouseEventTransition*{.exportc: "QMouseEventTransition", incompleteStruct.} = object

proc fcQMouseEventTransition_new(): ptr cQMouseEventTransition {.importc: "QMouseEventTransition_new".}
proc fcQMouseEventTransition_new2(objectVal: pointer, typeVal: cint, button: cint): ptr cQMouseEventTransition {.importc: "QMouseEventTransition_new2".}
proc fcQMouseEventTransition_new3(sourceState: pointer): ptr cQMouseEventTransition {.importc: "QMouseEventTransition_new3".}
proc fcQMouseEventTransition_new4(objectVal: pointer, typeVal: cint, button: cint, sourceState: pointer): ptr cQMouseEventTransition {.importc: "QMouseEventTransition_new4".}
proc fcQMouseEventTransition_metaObject(self: pointer, ): pointer {.importc: "QMouseEventTransition_metaObject".}
proc fcQMouseEventTransition_metacast(self: pointer, param1: cstring): pointer {.importc: "QMouseEventTransition_metacast".}
proc fcQMouseEventTransition_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMouseEventTransition_metacall".}
proc fcQMouseEventTransition_tr(s: cstring): struct_miqt_string {.importc: "QMouseEventTransition_tr".}
proc fcQMouseEventTransition_trUtf8(s: cstring): struct_miqt_string {.importc: "QMouseEventTransition_trUtf8".}
proc fcQMouseEventTransition_button(self: pointer, ): cint {.importc: "QMouseEventTransition_button".}
proc fcQMouseEventTransition_setButton(self: pointer, button: cint): void {.importc: "QMouseEventTransition_setButton".}
proc fcQMouseEventTransition_modifierMask(self: pointer, ): cint {.importc: "QMouseEventTransition_modifierMask".}
proc fcQMouseEventTransition_setModifierMask(self: pointer, modifiers: cint): void {.importc: "QMouseEventTransition_setModifierMask".}
proc fcQMouseEventTransition_hitTestPath(self: pointer, ): pointer {.importc: "QMouseEventTransition_hitTestPath".}
proc fcQMouseEventTransition_setHitTestPath(self: pointer, path: pointer): void {.importc: "QMouseEventTransition_setHitTestPath".}
proc fcQMouseEventTransition_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMouseEventTransition_tr2".}
proc fcQMouseEventTransition_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMouseEventTransition_tr3".}
proc fcQMouseEventTransition_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMouseEventTransition_trUtf82".}
proc fcQMouseEventTransition_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMouseEventTransition_trUtf83".}
proc fQMouseEventTransition_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QMouseEventTransition_virtualbase_metaObject".}
proc fcQMouseEventTransition_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_metaObject".}
proc fQMouseEventTransition_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QMouseEventTransition_virtualbase_metacast".}
proc fcQMouseEventTransition_override_virtual_metacast(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_metacast".}
proc fQMouseEventTransition_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMouseEventTransition_virtualbase_metacall".}
proc fcQMouseEventTransition_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_metacall".}
proc fQMouseEventTransition_virtualbase_onTransition(self: pointer, event: pointer): void{.importc: "QMouseEventTransition_virtualbase_onTransition".}
proc fcQMouseEventTransition_override_virtual_onTransition(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_onTransition".}
proc fQMouseEventTransition_virtualbase_eventTest(self: pointer, event: pointer): bool{.importc: "QMouseEventTransition_virtualbase_eventTest".}
proc fcQMouseEventTransition_override_virtual_eventTest(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_eventTest".}
proc fQMouseEventTransition_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QMouseEventTransition_virtualbase_event".}
proc fcQMouseEventTransition_override_virtual_event(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_event".}
proc fQMouseEventTransition_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QMouseEventTransition_virtualbase_eventFilter".}
proc fcQMouseEventTransition_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_eventFilter".}
proc fQMouseEventTransition_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QMouseEventTransition_virtualbase_timerEvent".}
proc fcQMouseEventTransition_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_timerEvent".}
proc fQMouseEventTransition_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMouseEventTransition_virtualbase_childEvent".}
proc fcQMouseEventTransition_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_childEvent".}
proc fQMouseEventTransition_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMouseEventTransition_virtualbase_customEvent".}
proc fcQMouseEventTransition_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_customEvent".}
proc fQMouseEventTransition_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMouseEventTransition_virtualbase_connectNotify".}
proc fcQMouseEventTransition_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_connectNotify".}
proc fQMouseEventTransition_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMouseEventTransition_virtualbase_disconnectNotify".}
proc fcQMouseEventTransition_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMouseEventTransition_override_virtual_disconnectNotify".}
proc fcQMouseEventTransition_staticMetaObject(): pointer {.importc: "QMouseEventTransition_staticMetaObject".}
proc fcQMouseEventTransition_delete(self: pointer) {.importc: "QMouseEventTransition_delete".}


func init*(T: type QMouseEventTransition, h: ptr cQMouseEventTransition): QMouseEventTransition =
  T(h: h)
proc create*(T: type QMouseEventTransition, ): QMouseEventTransition =

  QMouseEventTransition.init(fcQMouseEventTransition_new())
proc create*(T: type QMouseEventTransition, objectVal: gen_qobject.QObject, typeVal: gen_qcoreevent.QEventType, button: gen_qnamespace.MouseButton): QMouseEventTransition =

  QMouseEventTransition.init(fcQMouseEventTransition_new2(objectVal.h, cint(typeVal), cint(button)))
proc create*(T: type QMouseEventTransition, sourceState: gen_qstate.QState): QMouseEventTransition =

  QMouseEventTransition.init(fcQMouseEventTransition_new3(sourceState.h))
proc create*(T: type QMouseEventTransition, objectVal: gen_qobject.QObject, typeVal: gen_qcoreevent.QEventType, button: gen_qnamespace.MouseButton, sourceState: gen_qstate.QState): QMouseEventTransition =

  QMouseEventTransition.init(fcQMouseEventTransition_new4(objectVal.h, cint(typeVal), cint(button), sourceState.h))
proc metaObject*(self: QMouseEventTransition, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMouseEventTransition_metaObject(self.h))

proc metacast*(self: QMouseEventTransition, param1: cstring): pointer =

  fcQMouseEventTransition_metacast(self.h, param1)

proc metacall*(self: QMouseEventTransition, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMouseEventTransition_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMouseEventTransition, s: cstring): string =

  let v_ms = fcQMouseEventTransition_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QMouseEventTransition, s: cstring): string =

  let v_ms = fcQMouseEventTransition_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc button*(self: QMouseEventTransition, ): gen_qnamespace.MouseButton =

  gen_qnamespace.MouseButton(fcQMouseEventTransition_button(self.h))

proc setButton*(self: QMouseEventTransition, button: gen_qnamespace.MouseButton): void =

  fcQMouseEventTransition_setButton(self.h, cint(button))

proc modifierMask*(self: QMouseEventTransition, ): gen_qnamespace.KeyboardModifier =

  gen_qnamespace.KeyboardModifier(fcQMouseEventTransition_modifierMask(self.h))

proc setModifierMask*(self: QMouseEventTransition, modifiers: gen_qnamespace.KeyboardModifier): void =

  fcQMouseEventTransition_setModifierMask(self.h, cint(modifiers))

proc hitTestPath*(self: QMouseEventTransition, ): gen_qpainterpath.QPainterPath =

  gen_qpainterpath.QPainterPath(h: fcQMouseEventTransition_hitTestPath(self.h))

proc setHitTestPath*(self: QMouseEventTransition, path: gen_qpainterpath.QPainterPath): void =

  fcQMouseEventTransition_setHitTestPath(self.h, path.h)

proc tr2*(_: type QMouseEventTransition, s: cstring, c: cstring): string =

  let v_ms = fcQMouseEventTransition_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMouseEventTransition, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMouseEventTransition_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QMouseEventTransition, s: cstring, c: cstring): string =

  let v_ms = fcQMouseEventTransition_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QMouseEventTransition, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMouseEventTransition_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QMouseEventTransition, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQMouseEventTransition_virtualbase_metaObject(self.h))

type QMouseEventTransitionmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QMouseEventTransition, slot: proc(super: QMouseEventTransitionmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QMouseEventTransitionmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_metaObject(self: ptr cQMouseEventTransition, slot: int): pointer {.exportc: "miqt_exec_callback_QMouseEventTransition_metaObject ".} =
  type Cb = proc(super: QMouseEventTransitionmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QMouseEventTransition(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QMouseEventTransition, param1: cstring): pointer =


  fQMouseEventTransition_virtualbase_metacast(self.h, param1)

type QMouseEventTransitionmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QMouseEventTransition, slot: proc(super: QMouseEventTransitionmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QMouseEventTransitionmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_metacast(self: ptr cQMouseEventTransition, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QMouseEventTransition_metacast ".} =
  type Cb = proc(super: QMouseEventTransitionmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QMouseEventTransition(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QMouseEventTransition, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQMouseEventTransition_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMouseEventTransitionmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QMouseEventTransition, slot: proc(super: QMouseEventTransitionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QMouseEventTransitionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_metacall(self: ptr cQMouseEventTransition, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMouseEventTransition_metacall ".} =
  type Cb = proc(super: QMouseEventTransitionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QMouseEventTransition(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_onTransition(self: QMouseEventTransition, event: gen_qcoreevent.QEvent): void =


  fQMouseEventTransition_virtualbase_onTransition(self.h, event.h)

type QMouseEventTransitiononTransitionBase* = proc(event: gen_qcoreevent.QEvent): void
proc ononTransition*(self: QMouseEventTransition, slot: proc(super: QMouseEventTransitiononTransitionBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMouseEventTransitiononTransitionBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_onTransition(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_onTransition(self: ptr cQMouseEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMouseEventTransition_onTransition ".} =
  type Cb = proc(super: QMouseEventTransitiononTransitionBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_onTransition(QMouseEventTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventTest(self: QMouseEventTransition, event: gen_qcoreevent.QEvent): bool =


  fQMouseEventTransition_virtualbase_eventTest(self.h, event.h)

type QMouseEventTransitioneventTestBase* = proc(event: gen_qcoreevent.QEvent): bool
proc oneventTest*(self: QMouseEventTransition, slot: proc(super: QMouseEventTransitioneventTestBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMouseEventTransitioneventTestBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_eventTest(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_eventTest(self: ptr cQMouseEventTransition, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMouseEventTransition_eventTest ".} =
  type Cb = proc(super: QMouseEventTransitioneventTestBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventTest(QMouseEventTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QMouseEventTransition, e: gen_qcoreevent.QEvent): bool =


  fQMouseEventTransition_virtualbase_event(self.h, e.h)

type QMouseEventTransitioneventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QMouseEventTransition, slot: proc(super: QMouseEventTransitioneventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMouseEventTransitioneventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_event(self: ptr cQMouseEventTransition, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QMouseEventTransition_event ".} =
  type Cb = proc(super: QMouseEventTransitioneventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QMouseEventTransition(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QMouseEventTransition, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQMouseEventTransition_virtualbase_eventFilter(self.h, watched.h, event.h)

type QMouseEventTransitioneventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QMouseEventTransition, slot: proc(super: QMouseEventTransitioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMouseEventTransitioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_eventFilter(self: ptr cQMouseEventTransition, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMouseEventTransition_eventFilter ".} =
  type Cb = proc(super: QMouseEventTransitioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QMouseEventTransition(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QMouseEventTransition, event: gen_qcoreevent.QTimerEvent): void =


  fQMouseEventTransition_virtualbase_timerEvent(self.h, event.h)

type QMouseEventTransitiontimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QMouseEventTransition, slot: proc(super: QMouseEventTransitiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMouseEventTransitiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_timerEvent(self: ptr cQMouseEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMouseEventTransition_timerEvent ".} =
  type Cb = proc(super: QMouseEventTransitiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QMouseEventTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QMouseEventTransition, event: gen_qcoreevent.QChildEvent): void =


  fQMouseEventTransition_virtualbase_childEvent(self.h, event.h)

type QMouseEventTransitionchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QMouseEventTransition, slot: proc(super: QMouseEventTransitionchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMouseEventTransitionchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_childEvent(self: ptr cQMouseEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMouseEventTransition_childEvent ".} =
  type Cb = proc(super: QMouseEventTransitionchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QMouseEventTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QMouseEventTransition, event: gen_qcoreevent.QEvent): void =


  fQMouseEventTransition_virtualbase_customEvent(self.h, event.h)

type QMouseEventTransitioncustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QMouseEventTransition, slot: proc(super: QMouseEventTransitioncustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMouseEventTransitioncustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_customEvent(self: ptr cQMouseEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMouseEventTransition_customEvent ".} =
  type Cb = proc(super: QMouseEventTransitioncustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QMouseEventTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QMouseEventTransition, signal: gen_qmetaobject.QMetaMethod): void =


  fQMouseEventTransition_virtualbase_connectNotify(self.h, signal.h)

type QMouseEventTransitionconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QMouseEventTransition, slot: proc(super: QMouseEventTransitionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMouseEventTransitionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_connectNotify(self: ptr cQMouseEventTransition, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMouseEventTransition_connectNotify ".} =
  type Cb = proc(super: QMouseEventTransitionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QMouseEventTransition(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QMouseEventTransition, signal: gen_qmetaobject.QMetaMethod): void =


  fQMouseEventTransition_virtualbase_disconnectNotify(self.h, signal.h)

type QMouseEventTransitiondisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QMouseEventTransition, slot: proc(super: QMouseEventTransitiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMouseEventTransitiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMouseEventTransition_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMouseEventTransition_disconnectNotify(self: ptr cQMouseEventTransition, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMouseEventTransition_disconnectNotify ".} =
  type Cb = proc(super: QMouseEventTransitiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QMouseEventTransition(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QMouseEventTransition): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQMouseEventTransition_staticMetaObject())
proc delete*(self: QMouseEventTransition) =
  fcQMouseEventTransition_delete(self.h)
