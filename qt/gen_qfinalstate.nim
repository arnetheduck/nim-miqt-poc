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
{.compile("gen_qfinalstate.cpp", cflags).}


import gen_qfinalstate_types
export gen_qfinalstate_types

import
  gen_qabstractstate,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qstate
export
  gen_qabstractstate,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qstate

type cQFinalState*{.exportc: "QFinalState", incompleteStruct.} = object

proc fcQFinalState_new(): ptr cQFinalState {.importc: "QFinalState_new".}
proc fcQFinalState_new2(parent: pointer): ptr cQFinalState {.importc: "QFinalState_new2".}
proc fcQFinalState_metaObject(self: pointer, ): pointer {.importc: "QFinalState_metaObject".}
proc fcQFinalState_metacast(self: pointer, param1: cstring): pointer {.importc: "QFinalState_metacast".}
proc fcQFinalState_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFinalState_metacall".}
proc fcQFinalState_tr(s: cstring): struct_miqt_string {.importc: "QFinalState_tr".}
proc fcQFinalState_trUtf8(s: cstring): struct_miqt_string {.importc: "QFinalState_trUtf8".}
proc fcQFinalState_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFinalState_tr2".}
proc fcQFinalState_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFinalState_tr3".}
proc fcQFinalState_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QFinalState_trUtf82".}
proc fcQFinalState_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFinalState_trUtf83".}
proc fQFinalState_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QFinalState_virtualbase_metaObject".}
proc fcQFinalState_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_metaObject".}
proc fQFinalState_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QFinalState_virtualbase_metacast".}
proc fcQFinalState_override_virtual_metacast(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_metacast".}
proc fQFinalState_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QFinalState_virtualbase_metacall".}
proc fcQFinalState_override_virtual_metacall(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_metacall".}
proc fQFinalState_virtualbase_onEntry(self: pointer, event: pointer): void{.importc: "QFinalState_virtualbase_onEntry".}
proc fcQFinalState_override_virtual_onEntry(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_onEntry".}
proc fQFinalState_virtualbase_onExit(self: pointer, event: pointer): void{.importc: "QFinalState_virtualbase_onExit".}
proc fcQFinalState_override_virtual_onExit(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_onExit".}
proc fQFinalState_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QFinalState_virtualbase_event".}
proc fcQFinalState_override_virtual_event(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_event".}
proc fQFinalState_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QFinalState_virtualbase_eventFilter".}
proc fcQFinalState_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_eventFilter".}
proc fQFinalState_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFinalState_virtualbase_timerEvent".}
proc fcQFinalState_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_timerEvent".}
proc fQFinalState_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QFinalState_virtualbase_childEvent".}
proc fcQFinalState_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_childEvent".}
proc fQFinalState_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFinalState_virtualbase_customEvent".}
proc fcQFinalState_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_customEvent".}
proc fQFinalState_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFinalState_virtualbase_connectNotify".}
proc fcQFinalState_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_connectNotify".}
proc fQFinalState_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFinalState_virtualbase_disconnectNotify".}
proc fcQFinalState_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFinalState_override_virtual_disconnectNotify".}
proc fcQFinalState_staticMetaObject(): pointer {.importc: "QFinalState_staticMetaObject".}
proc fcQFinalState_delete(self: pointer) {.importc: "QFinalState_delete".}


func init*(T: type QFinalState, h: ptr cQFinalState): QFinalState =
  T(h: h)
proc create*(T: type QFinalState, ): QFinalState =

  QFinalState.init(fcQFinalState_new())
proc create*(T: type QFinalState, parent: gen_qstate.QState): QFinalState =

  QFinalState.init(fcQFinalState_new2(parent.h))
proc metaObject*(self: QFinalState, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQFinalState_metaObject(self.h))

proc metacast*(self: QFinalState, param1: cstring): pointer =

  fcQFinalState_metacast(self.h, param1)

proc metacall*(self: QFinalState, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQFinalState_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QFinalState, s: cstring): string =

  let v_ms = fcQFinalState_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QFinalState, s: cstring): string =

  let v_ms = fcQFinalState_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type QFinalState, s: cstring, c: cstring): string =

  let v_ms = fcQFinalState_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QFinalState, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQFinalState_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QFinalState, s: cstring, c: cstring): string =

  let v_ms = fcQFinalState_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QFinalState, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQFinalState_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QFinalState, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQFinalState_virtualbase_metaObject(self.h))

type QFinalStatemetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QFinalState, slot: proc(super: QFinalStatemetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QFinalStatemetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_metaObject(self: ptr cQFinalState, slot: int): pointer {.exportc: "miqt_exec_callback_QFinalState_metaObject ".} =
  type Cb = proc(super: QFinalStatemetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QFinalState(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QFinalState, param1: cstring): pointer =


  fQFinalState_virtualbase_metacast(self.h, param1)

type QFinalStatemetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QFinalState, slot: proc(super: QFinalStatemetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QFinalStatemetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_metacast(self: ptr cQFinalState, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QFinalState_metacast ".} =
  type Cb = proc(super: QFinalStatemetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QFinalState(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QFinalState, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQFinalState_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QFinalStatemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QFinalState, slot: proc(super: QFinalStatemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QFinalStatemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_metacall(self: ptr cQFinalState, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QFinalState_metacall ".} =
  type Cb = proc(super: QFinalStatemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QFinalState(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_onEntry(self: QFinalState, event: gen_qcoreevent.QEvent): void =


  fQFinalState_virtualbase_onEntry(self.h, event.h)

type QFinalStateonEntryBase* = proc(event: gen_qcoreevent.QEvent): void
proc ononEntry*(self: QFinalState, slot: proc(super: QFinalStateonEntryBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFinalStateonEntryBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_onEntry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_onEntry(self: ptr cQFinalState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFinalState_onEntry ".} =
  type Cb = proc(super: QFinalStateonEntryBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_onEntry(QFinalState(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_onExit(self: QFinalState, event: gen_qcoreevent.QEvent): void =


  fQFinalState_virtualbase_onExit(self.h, event.h)

type QFinalStateonExitBase* = proc(event: gen_qcoreevent.QEvent): void
proc ononExit*(self: QFinalState, slot: proc(super: QFinalStateonExitBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFinalStateonExitBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_onExit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_onExit(self: ptr cQFinalState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFinalState_onExit ".} =
  type Cb = proc(super: QFinalStateonExitBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_onExit(QFinalState(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QFinalState, e: gen_qcoreevent.QEvent): bool =


  fQFinalState_virtualbase_event(self.h, e.h)

type QFinalStateeventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QFinalState, slot: proc(super: QFinalStateeventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFinalStateeventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_event(self: ptr cQFinalState, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QFinalState_event ".} =
  type Cb = proc(super: QFinalStateeventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QFinalState(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QFinalState, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQFinalState_virtualbase_eventFilter(self.h, watched.h, event.h)

type QFinalStateeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QFinalState, slot: proc(super: QFinalStateeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFinalStateeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_eventFilter(self: ptr cQFinalState, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QFinalState_eventFilter ".} =
  type Cb = proc(super: QFinalStateeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QFinalState(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QFinalState, event: gen_qcoreevent.QTimerEvent): void =


  fQFinalState_virtualbase_timerEvent(self.h, event.h)

type QFinalStatetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QFinalState, slot: proc(super: QFinalStatetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFinalStatetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_timerEvent(self: ptr cQFinalState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFinalState_timerEvent ".} =
  type Cb = proc(super: QFinalStatetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QFinalState(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QFinalState, event: gen_qcoreevent.QChildEvent): void =


  fQFinalState_virtualbase_childEvent(self.h, event.h)

type QFinalStatechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QFinalState, slot: proc(super: QFinalStatechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFinalStatechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_childEvent(self: ptr cQFinalState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFinalState_childEvent ".} =
  type Cb = proc(super: QFinalStatechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QFinalState(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QFinalState, event: gen_qcoreevent.QEvent): void =


  fQFinalState_virtualbase_customEvent(self.h, event.h)

type QFinalStatecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QFinalState, slot: proc(super: QFinalStatecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFinalStatecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_customEvent(self: ptr cQFinalState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFinalState_customEvent ".} =
  type Cb = proc(super: QFinalStatecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QFinalState(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QFinalState, signal: gen_qmetaobject.QMetaMethod): void =


  fQFinalState_virtualbase_connectNotify(self.h, signal.h)

type QFinalStateconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QFinalState, slot: proc(super: QFinalStateconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFinalStateconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_connectNotify(self: ptr cQFinalState, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFinalState_connectNotify ".} =
  type Cb = proc(super: QFinalStateconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QFinalState(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QFinalState, signal: gen_qmetaobject.QMetaMethod): void =


  fQFinalState_virtualbase_disconnectNotify(self.h, signal.h)

type QFinalStatedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QFinalState, slot: proc(super: QFinalStatedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFinalStatedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFinalState_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFinalState_disconnectNotify(self: ptr cQFinalState, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFinalState_disconnectNotify ".} =
  type Cb = proc(super: QFinalStatedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QFinalState(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QFinalState): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQFinalState_staticMetaObject())
proc delete*(self: QFinalState) =
  fcQFinalState_delete(self.h)
