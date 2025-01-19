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
{.compile("gen_qhistorystate.cpp", cflags).}


type QHistoryStateHistoryType* = cint
const
  QHistoryStateShallowHistory* = 0
  QHistoryStateDeepHistory* = 1



import gen_qhistorystate_types
export gen_qhistorystate_types

import
  gen_qabstractstate,
  gen_qabstracttransition,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qstate
export
  gen_qabstractstate,
  gen_qabstracttransition,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qstate

type cQHistoryState*{.exportc: "QHistoryState", incompleteStruct.} = object

proc fcQHistoryState_new(): ptr cQHistoryState {.importc: "QHistoryState_new".}
proc fcQHistoryState_new2(typeVal: cint): ptr cQHistoryState {.importc: "QHistoryState_new2".}
proc fcQHistoryState_new3(parent: pointer): ptr cQHistoryState {.importc: "QHistoryState_new3".}
proc fcQHistoryState_new4(typeVal: cint, parent: pointer): ptr cQHistoryState {.importc: "QHistoryState_new4".}
proc fcQHistoryState_metaObject(self: pointer, ): pointer {.importc: "QHistoryState_metaObject".}
proc fcQHistoryState_metacast(self: pointer, param1: cstring): pointer {.importc: "QHistoryState_metacast".}
proc fcQHistoryState_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QHistoryState_metacall".}
proc fcQHistoryState_tr(s: cstring): struct_miqt_string {.importc: "QHistoryState_tr".}
proc fcQHistoryState_trUtf8(s: cstring): struct_miqt_string {.importc: "QHistoryState_trUtf8".}
proc fcQHistoryState_defaultTransition(self: pointer, ): pointer {.importc: "QHistoryState_defaultTransition".}
proc fcQHistoryState_setDefaultTransition(self: pointer, transition: pointer): void {.importc: "QHistoryState_setDefaultTransition".}
proc fcQHistoryState_defaultState(self: pointer, ): pointer {.importc: "QHistoryState_defaultState".}
proc fcQHistoryState_setDefaultState(self: pointer, state: pointer): void {.importc: "QHistoryState_setDefaultState".}
proc fcQHistoryState_historyType(self: pointer, ): cint {.importc: "QHistoryState_historyType".}
proc fcQHistoryState_setHistoryType(self: pointer, typeVal: cint): void {.importc: "QHistoryState_setHistoryType".}
proc fcQHistoryState_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QHistoryState_tr2".}
proc fcQHistoryState_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHistoryState_tr3".}
proc fcQHistoryState_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QHistoryState_trUtf82".}
proc fcQHistoryState_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QHistoryState_trUtf83".}
proc fQHistoryState_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QHistoryState_virtualbase_metacall".}
proc fcQHistoryState_override_virtual_metacall(self: pointer, slot: int) {.importc: "QHistoryState_override_virtual_metacall".}
proc fQHistoryState_virtualbase_onEntry(self: pointer, event: pointer): void{.importc: "QHistoryState_virtualbase_onEntry".}
proc fcQHistoryState_override_virtual_onEntry(self: pointer, slot: int) {.importc: "QHistoryState_override_virtual_onEntry".}
proc fQHistoryState_virtualbase_onExit(self: pointer, event: pointer): void{.importc: "QHistoryState_virtualbase_onExit".}
proc fcQHistoryState_override_virtual_onExit(self: pointer, slot: int) {.importc: "QHistoryState_override_virtual_onExit".}
proc fQHistoryState_virtualbase_event(self: pointer, e: pointer): bool{.importc: "QHistoryState_virtualbase_event".}
proc fcQHistoryState_override_virtual_event(self: pointer, slot: int) {.importc: "QHistoryState_override_virtual_event".}
proc fQHistoryState_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QHistoryState_virtualbase_eventFilter".}
proc fcQHistoryState_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QHistoryState_override_virtual_eventFilter".}
proc fQHistoryState_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QHistoryState_virtualbase_timerEvent".}
proc fcQHistoryState_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QHistoryState_override_virtual_timerEvent".}
proc fQHistoryState_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QHistoryState_virtualbase_childEvent".}
proc fcQHistoryState_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QHistoryState_override_virtual_childEvent".}
proc fQHistoryState_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QHistoryState_virtualbase_customEvent".}
proc fcQHistoryState_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QHistoryState_override_virtual_customEvent".}
proc fQHistoryState_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QHistoryState_virtualbase_connectNotify".}
proc fcQHistoryState_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QHistoryState_override_virtual_connectNotify".}
proc fQHistoryState_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QHistoryState_virtualbase_disconnectNotify".}
proc fcQHistoryState_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QHistoryState_override_virtual_disconnectNotify".}
proc fcQHistoryState_staticMetaObject(): pointer {.importc: "QHistoryState_staticMetaObject".}
proc fcQHistoryState_delete(self: pointer) {.importc: "QHistoryState_delete".}


func init*(T: type QHistoryState, h: ptr cQHistoryState): QHistoryState =
  T(h: h)
proc create*(T: type QHistoryState, ): QHistoryState =

  QHistoryState.init(fcQHistoryState_new())
proc create*(T: type QHistoryState, typeVal: QHistoryStateHistoryType): QHistoryState =

  QHistoryState.init(fcQHistoryState_new2(cint(typeVal)))
proc create*(T: type QHistoryState, parent: gen_qstate.QState): QHistoryState =

  QHistoryState.init(fcQHistoryState_new3(parent.h))
proc create*(T: type QHistoryState, typeVal: QHistoryStateHistoryType, parent: gen_qstate.QState): QHistoryState =

  QHistoryState.init(fcQHistoryState_new4(cint(typeVal), parent.h))
proc metaObject*(self: QHistoryState, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQHistoryState_metaObject(self.h))

proc metacast*(self: QHistoryState, param1: cstring): pointer =

  fcQHistoryState_metacast(self.h, param1)

proc metacall*(self: QHistoryState, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQHistoryState_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QHistoryState, s: cstring): string =

  let v_ms = fcQHistoryState_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QHistoryState, s: cstring): string =

  let v_ms = fcQHistoryState_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc defaultTransition*(self: QHistoryState, ): gen_qabstracttransition.QAbstractTransition =

  gen_qabstracttransition.QAbstractTransition(h: fcQHistoryState_defaultTransition(self.h))

proc setDefaultTransition*(self: QHistoryState, transition: gen_qabstracttransition.QAbstractTransition): void =

  fcQHistoryState_setDefaultTransition(self.h, transition.h)

proc defaultState*(self: QHistoryState, ): gen_qabstractstate.QAbstractState =

  gen_qabstractstate.QAbstractState(h: fcQHistoryState_defaultState(self.h))

proc setDefaultState*(self: QHistoryState, state: gen_qabstractstate.QAbstractState): void =

  fcQHistoryState_setDefaultState(self.h, state.h)

proc historyType*(self: QHistoryState, ): QHistoryStateHistoryType =

  QHistoryStateHistoryType(fcQHistoryState_historyType(self.h))

proc setHistoryType*(self: QHistoryState, typeVal: QHistoryStateHistoryType): void =

  fcQHistoryState_setHistoryType(self.h, cint(typeVal))

proc tr2*(_: type QHistoryState, s: cstring, c: cstring): string =

  let v_ms = fcQHistoryState_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QHistoryState, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQHistoryState_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QHistoryState, s: cstring, c: cstring): string =

  let v_ms = fcQHistoryState_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QHistoryState, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQHistoryState_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QHistoryState, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQHistoryState_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QHistoryStatemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QHistoryState, slot: proc(super: QHistoryStatemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QHistoryStatemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHistoryState_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHistoryState_metacall(self: ptr cQHistoryState, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QHistoryState_metacall ".} =
  type Cb = proc(super: QHistoryStatemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QHistoryState(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_onEntry(self: QHistoryState, event: gen_qcoreevent.QEvent): void =


  fQHistoryState_virtualbase_onEntry(self.h, event.h)

type QHistoryStateonEntryBase* = proc(event: gen_qcoreevent.QEvent): void
proc ononEntry*(self: QHistoryState, slot: proc(super: QHistoryStateonEntryBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHistoryStateonEntryBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHistoryState_override_virtual_onEntry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHistoryState_onEntry(self: ptr cQHistoryState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHistoryState_onEntry ".} =
  type Cb = proc(super: QHistoryStateonEntryBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_onEntry(QHistoryState(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_onExit(self: QHistoryState, event: gen_qcoreevent.QEvent): void =


  fQHistoryState_virtualbase_onExit(self.h, event.h)

type QHistoryStateonExitBase* = proc(event: gen_qcoreevent.QEvent): void
proc ononExit*(self: QHistoryState, slot: proc(super: QHistoryStateonExitBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHistoryStateonExitBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHistoryState_override_virtual_onExit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHistoryState_onExit(self: ptr cQHistoryState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHistoryState_onExit ".} =
  type Cb = proc(super: QHistoryStateonExitBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_onExit(QHistoryState(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QHistoryState, e: gen_qcoreevent.QEvent): bool =


  fQHistoryState_virtualbase_event(self.h, e.h)

type QHistoryStateeventBase* = proc(e: gen_qcoreevent.QEvent): bool
proc onevent*(self: QHistoryState, slot: proc(super: QHistoryStateeventBase, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QHistoryStateeventBase, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHistoryState_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHistoryState_event(self: ptr cQHistoryState, slot: int, e: pointer): bool {.exportc: "miqt_exec_callback_QHistoryState_event ".} =
  type Cb = proc(super: QHistoryStateeventBase, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QHistoryState(h: self), e)
  let slotval1 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QHistoryState, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQHistoryState_virtualbase_eventFilter(self.h, watched.h, event.h)

type QHistoryStateeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QHistoryState, slot: proc(super: QHistoryStateeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QHistoryStateeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHistoryState_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHistoryState_eventFilter(self: ptr cQHistoryState, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QHistoryState_eventFilter ".} =
  type Cb = proc(super: QHistoryStateeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QHistoryState(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QHistoryState, event: gen_qcoreevent.QTimerEvent): void =


  fQHistoryState_virtualbase_timerEvent(self.h, event.h)

type QHistoryStatetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QHistoryState, slot: proc(super: QHistoryStatetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHistoryStatetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHistoryState_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHistoryState_timerEvent(self: ptr cQHistoryState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHistoryState_timerEvent ".} =
  type Cb = proc(super: QHistoryStatetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QHistoryState(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QHistoryState, event: gen_qcoreevent.QChildEvent): void =


  fQHistoryState_virtualbase_childEvent(self.h, event.h)

type QHistoryStatechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QHistoryState, slot: proc(super: QHistoryStatechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHistoryStatechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHistoryState_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHistoryState_childEvent(self: ptr cQHistoryState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHistoryState_childEvent ".} =
  type Cb = proc(super: QHistoryStatechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QHistoryState(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QHistoryState, event: gen_qcoreevent.QEvent): void =


  fQHistoryState_virtualbase_customEvent(self.h, event.h)

type QHistoryStatecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QHistoryState, slot: proc(super: QHistoryStatecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QHistoryStatecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHistoryState_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHistoryState_customEvent(self: ptr cQHistoryState, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QHistoryState_customEvent ".} =
  type Cb = proc(super: QHistoryStatecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QHistoryState(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QHistoryState, signal: gen_qmetaobject.QMetaMethod): void =


  fQHistoryState_virtualbase_connectNotify(self.h, signal.h)

type QHistoryStateconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QHistoryState, slot: proc(super: QHistoryStateconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QHistoryStateconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHistoryState_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHistoryState_connectNotify(self: ptr cQHistoryState, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QHistoryState_connectNotify ".} =
  type Cb = proc(super: QHistoryStateconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QHistoryState(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QHistoryState, signal: gen_qmetaobject.QMetaMethod): void =


  fQHistoryState_virtualbase_disconnectNotify(self.h, signal.h)

type QHistoryStatedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QHistoryState, slot: proc(super: QHistoryStatedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QHistoryStatedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQHistoryState_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QHistoryState_disconnectNotify(self: ptr cQHistoryState, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QHistoryState_disconnectNotify ".} =
  type Cb = proc(super: QHistoryStatedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QHistoryState(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QHistoryState): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQHistoryState_staticMetaObject())
proc delete*(self: QHistoryState) =
  fcQHistoryState_delete(self.h)
