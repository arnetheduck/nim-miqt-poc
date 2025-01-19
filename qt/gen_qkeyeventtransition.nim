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
{.compile("gen_qkeyeventtransition.cpp", cflags).}


import gen_qkeyeventtransition_types
export gen_qkeyeventtransition_types

import
  gen_qcoreevent,
  gen_qeventtransition,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qstate
export
  gen_qcoreevent,
  gen_qeventtransition,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qstate

type cQKeyEventTransition*{.exportc: "QKeyEventTransition", incompleteStruct.} = object

proc fcQKeyEventTransition_new(): ptr cQKeyEventTransition {.importc: "QKeyEventTransition_new".}
proc fcQKeyEventTransition_new2(objectVal: pointer, typeVal: cint, key: cint): ptr cQKeyEventTransition {.importc: "QKeyEventTransition_new2".}
proc fcQKeyEventTransition_new3(sourceState: pointer): ptr cQKeyEventTransition {.importc: "QKeyEventTransition_new3".}
proc fcQKeyEventTransition_new4(objectVal: pointer, typeVal: cint, key: cint, sourceState: pointer): ptr cQKeyEventTransition {.importc: "QKeyEventTransition_new4".}
proc fcQKeyEventTransition_metaObject(self: pointer, ): pointer {.importc: "QKeyEventTransition_metaObject".}
proc fcQKeyEventTransition_metacast(self: pointer, param1: cstring): pointer {.importc: "QKeyEventTransition_metacast".}
proc fcQKeyEventTransition_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QKeyEventTransition_metacall".}
proc fcQKeyEventTransition_tr(s: cstring): struct_miqt_string {.importc: "QKeyEventTransition_tr".}
proc fcQKeyEventTransition_trUtf8(s: cstring): struct_miqt_string {.importc: "QKeyEventTransition_trUtf8".}
proc fcQKeyEventTransition_key(self: pointer, ): cint {.importc: "QKeyEventTransition_key".}
proc fcQKeyEventTransition_setKey(self: pointer, key: cint): void {.importc: "QKeyEventTransition_setKey".}
proc fcQKeyEventTransition_modifierMask(self: pointer, ): cint {.importc: "QKeyEventTransition_modifierMask".}
proc fcQKeyEventTransition_setModifierMask(self: pointer, modifiers: cint): void {.importc: "QKeyEventTransition_setModifierMask".}
proc fcQKeyEventTransition_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QKeyEventTransition_tr2".}
proc fcQKeyEventTransition_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QKeyEventTransition_tr3".}
proc fcQKeyEventTransition_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QKeyEventTransition_trUtf82".}
proc fcQKeyEventTransition_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QKeyEventTransition_trUtf83".}
proc fQKeyEventTransition_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QKeyEventTransition_virtualbase_metacall".}
proc fcQKeyEventTransition_override_virtual_metacall(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_metacall".}
proc fQKeyEventTransition_virtualbase_onTransition(self: pointer, event: pointer): void{.importc: "QKeyEventTransition_virtualbase_onTransition".}
proc fcQKeyEventTransition_override_virtual_onTransition(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_onTransition".}
proc fQKeyEventTransition_virtualbase_eventTest(self: pointer, event: pointer): bool{.importc: "QKeyEventTransition_virtualbase_eventTest".}
proc fcQKeyEventTransition_override_virtual_eventTest(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_eventTest".}
proc fQKeyEventTransition_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QKeyEventTransition_virtualbase_event".}
proc fcQKeyEventTransition_override_virtual_event(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_event".}
proc fQKeyEventTransition_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QKeyEventTransition_virtualbase_eventFilter".}
proc fcQKeyEventTransition_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_eventFilter".}
proc fQKeyEventTransition_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QKeyEventTransition_virtualbase_timerEvent".}
proc fcQKeyEventTransition_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_timerEvent".}
proc fQKeyEventTransition_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QKeyEventTransition_virtualbase_childEvent".}
proc fcQKeyEventTransition_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_childEvent".}
proc fQKeyEventTransition_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QKeyEventTransition_virtualbase_customEvent".}
proc fcQKeyEventTransition_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_customEvent".}
proc fQKeyEventTransition_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QKeyEventTransition_virtualbase_connectNotify".}
proc fcQKeyEventTransition_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_connectNotify".}
proc fQKeyEventTransition_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QKeyEventTransition_virtualbase_disconnectNotify".}
proc fcQKeyEventTransition_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QKeyEventTransition_override_virtual_disconnectNotify".}
proc fcQKeyEventTransition_staticMetaObject(): pointer {.importc: "QKeyEventTransition_staticMetaObject".}
proc fcQKeyEventTransition_delete(self: pointer) {.importc: "QKeyEventTransition_delete".}


func init*(T: type QKeyEventTransition, h: ptr cQKeyEventTransition): QKeyEventTransition =
  T(h: h)
proc create*(T: type QKeyEventTransition, ): QKeyEventTransition =

  QKeyEventTransition.init(fcQKeyEventTransition_new())
proc create*(T: type QKeyEventTransition, objectVal: gen_qobject.QObject, typeVal: gen_qcoreevent.QEventType, key: cint): QKeyEventTransition =

  QKeyEventTransition.init(fcQKeyEventTransition_new2(objectVal.h, cint(typeVal), key))
proc create*(T: type QKeyEventTransition, sourceState: gen_qstate.QState): QKeyEventTransition =

  QKeyEventTransition.init(fcQKeyEventTransition_new3(sourceState.h))
proc create*(T: type QKeyEventTransition, objectVal: gen_qobject.QObject, typeVal: gen_qcoreevent.QEventType, key: cint, sourceState: gen_qstate.QState): QKeyEventTransition =

  QKeyEventTransition.init(fcQKeyEventTransition_new4(objectVal.h, cint(typeVal), key, sourceState.h))
proc metaObject*(self: QKeyEventTransition, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQKeyEventTransition_metaObject(self.h))

proc metacast*(self: QKeyEventTransition, param1: cstring): pointer =

  fcQKeyEventTransition_metacast(self.h, param1)

proc metacall*(self: QKeyEventTransition, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQKeyEventTransition_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QKeyEventTransition, s: cstring): string =

  let v_ms = fcQKeyEventTransition_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QKeyEventTransition, s: cstring): string =

  let v_ms = fcQKeyEventTransition_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc key*(self: QKeyEventTransition, ): cint =

  fcQKeyEventTransition_key(self.h)

proc setKey*(self: QKeyEventTransition, key: cint): void =

  fcQKeyEventTransition_setKey(self.h, key)

proc modifierMask*(self: QKeyEventTransition, ): gen_qnamespace.KeyboardModifier =

  gen_qnamespace.KeyboardModifier(fcQKeyEventTransition_modifierMask(self.h))

proc setModifierMask*(self: QKeyEventTransition, modifiers: gen_qnamespace.KeyboardModifier): void =

  fcQKeyEventTransition_setModifierMask(self.h, cint(modifiers))

proc tr2*(_: type QKeyEventTransition, s: cstring, c: cstring): string =

  let v_ms = fcQKeyEventTransition_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QKeyEventTransition, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQKeyEventTransition_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QKeyEventTransition, s: cstring, c: cstring): string =

  let v_ms = fcQKeyEventTransition_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QKeyEventTransition, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQKeyEventTransition_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QKeyEventTransition, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQKeyEventTransition_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QKeyEventTransitionmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QKeyEventTransition, slot: proc(super: QKeyEventTransitionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QKeyEventTransitionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_metacall(self: ptr cQKeyEventTransition, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QKeyEventTransition_metacall ".} =
  type Cb = proc(super: QKeyEventTransitionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QKeyEventTransition(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_onTransition(self: QKeyEventTransition, event: gen_qcoreevent.QEvent): void =


  fQKeyEventTransition_virtualbase_onTransition(self.h, event.h)

type QKeyEventTransitiononTransitionBase* = proc(event: gen_qcoreevent.QEvent): void
proc ononTransition*(self: QKeyEventTransition, slot: proc(super: QKeyEventTransitiononTransitionBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeyEventTransitiononTransitionBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_onTransition(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_onTransition(self: ptr cQKeyEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeyEventTransition_onTransition ".} =
  type Cb = proc(super: QKeyEventTransitiononTransitionBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_onTransition(QKeyEventTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_eventTest(self: QKeyEventTransition, event: gen_qcoreevent.QEvent): bool =


  fQKeyEventTransition_virtualbase_eventTest(self.h, event.h)

type QKeyEventTransitioneventTestBase* = proc(event: gen_qcoreevent.QEvent): bool
proc oneventTest*(self: QKeyEventTransition, slot: proc(super: QKeyEventTransitioneventTestBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QKeyEventTransitioneventTestBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_eventTest(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_eventTest(self: ptr cQKeyEventTransition, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QKeyEventTransition_eventTest ".} =
  type Cb = proc(super: QKeyEventTransitioneventTestBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventTest(QKeyEventTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QKeyEventTransition, e: gen_qcoreevent.QEvent): bool =


  fQKeyEventTransition_virtualbase_event(self.h, e.h)

type QKeyEventTransitioneventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QKeyEventTransition, slot: proc(super: QKeyEventTransitioneventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QKeyEventTransitioneventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_event(self: ptr cQKeyEventTransition, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QKeyEventTransition_event ".} =
  type Cb = proc(super: QKeyEventTransitioneventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QKeyEventTransition(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QKeyEventTransition, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQKeyEventTransition_virtualbase_eventFilter(self.h, watched.h, event.h)

type QKeyEventTransitioneventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QKeyEventTransition, slot: proc(super: QKeyEventTransitioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QKeyEventTransitioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_eventFilter(self: ptr cQKeyEventTransition, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QKeyEventTransition_eventFilter ".} =
  type Cb = proc(super: QKeyEventTransitioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QKeyEventTransition(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QKeyEventTransition, event: gen_qcoreevent.QTimerEvent): void =


  fQKeyEventTransition_virtualbase_timerEvent(self.h, event.h)

type QKeyEventTransitiontimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QKeyEventTransition, slot: proc(super: QKeyEventTransitiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeyEventTransitiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_timerEvent(self: ptr cQKeyEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeyEventTransition_timerEvent ".} =
  type Cb = proc(super: QKeyEventTransitiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QKeyEventTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QKeyEventTransition, event: gen_qcoreevent.QChildEvent): void =


  fQKeyEventTransition_virtualbase_childEvent(self.h, event.h)

type QKeyEventTransitionchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QKeyEventTransition, slot: proc(super: QKeyEventTransitionchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeyEventTransitionchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_childEvent(self: ptr cQKeyEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeyEventTransition_childEvent ".} =
  type Cb = proc(super: QKeyEventTransitionchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QKeyEventTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QKeyEventTransition, event: gen_qcoreevent.QEvent): void =


  fQKeyEventTransition_virtualbase_customEvent(self.h, event.h)

type QKeyEventTransitioncustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QKeyEventTransition, slot: proc(super: QKeyEventTransitioncustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QKeyEventTransitioncustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_customEvent(self: ptr cQKeyEventTransition, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QKeyEventTransition_customEvent ".} =
  type Cb = proc(super: QKeyEventTransitioncustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QKeyEventTransition(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QKeyEventTransition, signal: gen_qmetaobject.QMetaMethod): void =


  fQKeyEventTransition_virtualbase_connectNotify(self.h, signal.h)

type QKeyEventTransitionconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QKeyEventTransition, slot: proc(super: QKeyEventTransitionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QKeyEventTransitionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_connectNotify(self: ptr cQKeyEventTransition, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QKeyEventTransition_connectNotify ".} =
  type Cb = proc(super: QKeyEventTransitionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QKeyEventTransition(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QKeyEventTransition, signal: gen_qmetaobject.QMetaMethod): void =


  fQKeyEventTransition_virtualbase_disconnectNotify(self.h, signal.h)

type QKeyEventTransitiondisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QKeyEventTransition, slot: proc(super: QKeyEventTransitiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QKeyEventTransitiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQKeyEventTransition_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QKeyEventTransition_disconnectNotify(self: ptr cQKeyEventTransition, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QKeyEventTransition_disconnectNotify ".} =
  type Cb = proc(super: QKeyEventTransitiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QKeyEventTransition(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QKeyEventTransition): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQKeyEventTransition_staticMetaObject())
proc delete*(self: QKeyEventTransition) =
  fcQKeyEventTransition_delete(self.h)
