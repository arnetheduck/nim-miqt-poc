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
{.compile("gen_qtimer.cpp", cflags).}


import gen_qtimer_types
export gen_qtimer_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs

type cQTimer*{.exportc: "QTimer", incompleteStruct.} = object

proc fcQTimer_new(): ptr cQTimer {.importc: "QTimer_new".}
proc fcQTimer_new2(parent: pointer): ptr cQTimer {.importc: "QTimer_new2".}
proc fcQTimer_metaObject(self: pointer, ): pointer {.importc: "QTimer_metaObject".}
proc fcQTimer_metacast(self: pointer, param1: cstring): pointer {.importc: "QTimer_metacast".}
proc fcQTimer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTimer_metacall".}
proc fcQTimer_tr(s: cstring): struct_miqt_string {.importc: "QTimer_tr".}
proc fcQTimer_trUtf8(s: cstring): struct_miqt_string {.importc: "QTimer_trUtf8".}
proc fcQTimer_isActive(self: pointer, ): bool {.importc: "QTimer_isActive".}
proc fcQTimer_timerId(self: pointer, ): cint {.importc: "QTimer_timerId".}
proc fcQTimer_setInterval(self: pointer, msec: cint): void {.importc: "QTimer_setInterval".}
proc fcQTimer_interval(self: pointer, ): cint {.importc: "QTimer_interval".}
proc fcQTimer_remainingTime(self: pointer, ): cint {.importc: "QTimer_remainingTime".}
proc fcQTimer_setTimerType(self: pointer, atype: cint): void {.importc: "QTimer_setTimerType".}
proc fcQTimer_timerType(self: pointer, ): cint {.importc: "QTimer_timerType".}
proc fcQTimer_setSingleShot(self: pointer, singleShot: bool): void {.importc: "QTimer_setSingleShot".}
proc fcQTimer_isSingleShot(self: pointer, ): bool {.importc: "QTimer_isSingleShot".}
proc fcQTimer_start(self: pointer, msec: cint): void {.importc: "QTimer_start".}
proc fcQTimer_start2(self: pointer, ): void {.importc: "QTimer_start2".}
proc fcQTimer_stop(self: pointer, ): void {.importc: "QTimer_stop".}
proc fcQTimer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTimer_tr2".}
proc fcQTimer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTimer_tr3".}
proc fcQTimer_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTimer_trUtf82".}
proc fcQTimer_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTimer_trUtf83".}
proc fQTimer_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTimer_virtualbase_metaObject".}
proc fcQTimer_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTimer_override_virtual_metaObject".}
proc fQTimer_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTimer_virtualbase_metacast".}
proc fcQTimer_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTimer_override_virtual_metacast".}
proc fQTimer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTimer_virtualbase_metacall".}
proc fcQTimer_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTimer_override_virtual_metacall".}
proc fQTimer_virtualbase_timerEvent(self: pointer, param1: pointer): void{.importc: "QTimer_virtualbase_timerEvent".}
proc fcQTimer_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTimer_override_virtual_timerEvent".}
proc fQTimer_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTimer_virtualbase_event".}
proc fcQTimer_override_virtual_event(self: pointer, slot: int) {.importc: "QTimer_override_virtual_event".}
proc fQTimer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTimer_virtualbase_eventFilter".}
proc fcQTimer_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTimer_override_virtual_eventFilter".}
proc fQTimer_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTimer_virtualbase_childEvent".}
proc fcQTimer_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTimer_override_virtual_childEvent".}
proc fQTimer_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTimer_virtualbase_customEvent".}
proc fcQTimer_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTimer_override_virtual_customEvent".}
proc fQTimer_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTimer_virtualbase_connectNotify".}
proc fcQTimer_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTimer_override_virtual_connectNotify".}
proc fQTimer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTimer_virtualbase_disconnectNotify".}
proc fcQTimer_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTimer_override_virtual_disconnectNotify".}
proc fcQTimer_staticMetaObject(): pointer {.importc: "QTimer_staticMetaObject".}
proc fcQTimer_delete(self: pointer) {.importc: "QTimer_delete".}


func init*(T: type QTimer, h: ptr cQTimer): QTimer =
  T(h: h)
proc create*(T: type QTimer, ): QTimer =

  QTimer.init(fcQTimer_new())
proc create*(T: type QTimer, parent: gen_qobject.QObject): QTimer =

  QTimer.init(fcQTimer_new2(parent.h))
proc metaObject*(self: QTimer, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTimer_metaObject(self.h))

proc metacast*(self: QTimer, param1: cstring): pointer =

  fcQTimer_metacast(self.h, param1)

proc metacall*(self: QTimer, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTimer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTimer, s: cstring): string =

  let v_ms = fcQTimer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QTimer, s: cstring): string =

  let v_ms = fcQTimer_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isActive*(self: QTimer, ): bool =

  fcQTimer_isActive(self.h)

proc timerId*(self: QTimer, ): cint =

  fcQTimer_timerId(self.h)

proc setInterval*(self: QTimer, msec: cint): void =

  fcQTimer_setInterval(self.h, msec)

proc interval*(self: QTimer, ): cint =

  fcQTimer_interval(self.h)

proc remainingTime*(self: QTimer, ): cint =

  fcQTimer_remainingTime(self.h)

proc setTimerType*(self: QTimer, atype: gen_qnamespace.TimerType): void =

  fcQTimer_setTimerType(self.h, cint(atype))

proc timerType*(self: QTimer, ): gen_qnamespace.TimerType =

  gen_qnamespace.TimerType(fcQTimer_timerType(self.h))

proc setSingleShot*(self: QTimer, singleShot: bool): void =

  fcQTimer_setSingleShot(self.h, singleShot)

proc isSingleShot*(self: QTimer, ): bool =

  fcQTimer_isSingleShot(self.h)

proc start*(self: QTimer, msec: cint): void =

  fcQTimer_start(self.h, msec)

proc start2*(self: QTimer, ): void =

  fcQTimer_start2(self.h)

proc stop*(self: QTimer, ): void =

  fcQTimer_stop(self.h)

proc tr2*(_: type QTimer, s: cstring, c: cstring): string =

  let v_ms = fcQTimer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTimer, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTimer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QTimer, s: cstring, c: cstring): string =

  let v_ms = fcQTimer_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QTimer, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTimer_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QTimer, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQTimer_virtualbase_metaObject(self.h))

type QTimermetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QTimer, slot: proc(super: QTimermetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QTimermetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimer_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimer_metaObject(self: ptr cQTimer, slot: int): pointer {.exportc: "miqt_exec_callback_QTimer_metaObject ".} =
  type Cb = proc(super: QTimermetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QTimer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QTimer, param1: cstring): pointer =


  fQTimer_virtualbase_metacast(self.h, param1)

type QTimermetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QTimer, slot: proc(super: QTimermetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QTimermetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimer_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimer_metacast(self: ptr cQTimer, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTimer_metacast ".} =
  type Cb = proc(super: QTimermetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QTimer(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QTimer, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTimer_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTimermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTimer, slot: proc(super: QTimermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTimermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimer_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimer_metacall(self: ptr cQTimer, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTimer_metacall ".} =
  type Cb = proc(super: QTimermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTimer(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QTimer, param1: gen_qcoreevent.QTimerEvent): void =


  fQTimer_virtualbase_timerEvent(self.h, param1.h)

type QTimertimerEventBase* = proc(param1: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTimer, slot: proc(super: QTimertimerEventBase, param1: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimertimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimer_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimer_timerEvent(self: ptr cQTimer, slot: int, param1: pointer): void {.exportc: "miqt_exec_callback_QTimer_timerEvent ".} =
  type Cb = proc(super: QTimertimerEventBase, param1: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTimer(h: self), param1)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QTimer, event: gen_qcoreevent.QEvent): bool =


  fQTimer_virtualbase_event(self.h, event.h)

type QTimereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTimer, slot: proc(super: QTimereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTimereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimer_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimer_event(self: ptr cQTimer, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTimer_event ".} =
  type Cb = proc(super: QTimereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTimer(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QTimer, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQTimer_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTimereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTimer, slot: proc(super: QTimereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTimereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimer_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimer_eventFilter(self: ptr cQTimer, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTimer_eventFilter ".} =
  type Cb = proc(super: QTimereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTimer(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QTimer, event: gen_qcoreevent.QChildEvent): void =


  fQTimer_virtualbase_childEvent(self.h, event.h)

type QTimerchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTimer, slot: proc(super: QTimerchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimer_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimer_childEvent(self: ptr cQTimer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimer_childEvent ".} =
  type Cb = proc(super: QTimerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTimer(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTimer, event: gen_qcoreevent.QEvent): void =


  fQTimer_virtualbase_customEvent(self.h, event.h)

type QTimercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTimer, slot: proc(super: QTimercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimer_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimer_customEvent(self: ptr cQTimer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimer_customEvent ".} =
  type Cb = proc(super: QTimercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTimer(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTimer, signal: gen_qmetaobject.QMetaMethod): void =


  fQTimer_virtualbase_connectNotify(self.h, signal.h)

type QTimerconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTimer, slot: proc(super: QTimerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTimerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimer_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimer_connectNotify(self: ptr cQTimer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTimer_connectNotify ".} =
  type Cb = proc(super: QTimerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTimer(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTimer, signal: gen_qmetaobject.QMetaMethod): void =


  fQTimer_virtualbase_disconnectNotify(self.h, signal.h)

type QTimerdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTimer, slot: proc(super: QTimerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTimerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimer_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimer_disconnectNotify(self: ptr cQTimer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTimer_disconnectNotify ".} =
  type Cb = proc(super: QTimerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTimer(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QTimer): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQTimer_staticMetaObject())
proc delete*(self: QTimer) =
  fcQTimer_delete(self.h)
