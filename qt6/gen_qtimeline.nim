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
{.compile("gen_qtimeline.cpp", cflags).}


type QTimeLineState* = cint
const
  QTimeLineNotRunning* = 0
  QTimeLinePaused* = 1
  QTimeLineRunning* = 2



type QTimeLineDirection* = cint
const
  QTimeLineForward* = 0
  QTimeLineBackward* = 1



import gen_qtimeline_types
export gen_qtimeline_types

import
  gen_qcoreevent,
  gen_qeasingcurve,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qcoreevent,
  gen_qeasingcurve,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQTimeLine*{.exportc: "QTimeLine", incompleteStruct.} = object

proc fcQTimeLine_new(): ptr cQTimeLine {.importc: "QTimeLine_new".}
proc fcQTimeLine_new2(duration: cint): ptr cQTimeLine {.importc: "QTimeLine_new2".}
proc fcQTimeLine_new3(duration: cint, parent: pointer): ptr cQTimeLine {.importc: "QTimeLine_new3".}
proc fcQTimeLine_metaObject(self: pointer, ): pointer {.importc: "QTimeLine_metaObject".}
proc fcQTimeLine_metacast(self: pointer, param1: cstring): pointer {.importc: "QTimeLine_metacast".}
proc fcQTimeLine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTimeLine_metacall".}
proc fcQTimeLine_tr(s: cstring): struct_miqt_string {.importc: "QTimeLine_tr".}
proc fcQTimeLine_state(self: pointer, ): cint {.importc: "QTimeLine_state".}
proc fcQTimeLine_loopCount(self: pointer, ): cint {.importc: "QTimeLine_loopCount".}
proc fcQTimeLine_setLoopCount(self: pointer, count: cint): void {.importc: "QTimeLine_setLoopCount".}
proc fcQTimeLine_direction(self: pointer, ): cint {.importc: "QTimeLine_direction".}
proc fcQTimeLine_setDirection(self: pointer, direction: cint): void {.importc: "QTimeLine_setDirection".}
proc fcQTimeLine_duration(self: pointer, ): cint {.importc: "QTimeLine_duration".}
proc fcQTimeLine_setDuration(self: pointer, duration: cint): void {.importc: "QTimeLine_setDuration".}
proc fcQTimeLine_startFrame(self: pointer, ): cint {.importc: "QTimeLine_startFrame".}
proc fcQTimeLine_setStartFrame(self: pointer, frame: cint): void {.importc: "QTimeLine_setStartFrame".}
proc fcQTimeLine_endFrame(self: pointer, ): cint {.importc: "QTimeLine_endFrame".}
proc fcQTimeLine_setEndFrame(self: pointer, frame: cint): void {.importc: "QTimeLine_setEndFrame".}
proc fcQTimeLine_setFrameRange(self: pointer, startFrame: cint, endFrame: cint): void {.importc: "QTimeLine_setFrameRange".}
proc fcQTimeLine_updateInterval(self: pointer, ): cint {.importc: "QTimeLine_updateInterval".}
proc fcQTimeLine_setUpdateInterval(self: pointer, interval: cint): void {.importc: "QTimeLine_setUpdateInterval".}
proc fcQTimeLine_easingCurve(self: pointer, ): pointer {.importc: "QTimeLine_easingCurve".}
proc fcQTimeLine_setEasingCurve(self: pointer, curve: pointer): void {.importc: "QTimeLine_setEasingCurve".}
proc fcQTimeLine_currentTime(self: pointer, ): cint {.importc: "QTimeLine_currentTime".}
proc fcQTimeLine_currentFrame(self: pointer, ): cint {.importc: "QTimeLine_currentFrame".}
proc fcQTimeLine_currentValue(self: pointer, ): float64 {.importc: "QTimeLine_currentValue".}
proc fcQTimeLine_frameForTime(self: pointer, msec: cint): cint {.importc: "QTimeLine_frameForTime".}
proc fcQTimeLine_valueForTime(self: pointer, msec: cint): float64 {.importc: "QTimeLine_valueForTime".}
proc fcQTimeLine_start(self: pointer, ): void {.importc: "QTimeLine_start".}
proc fcQTimeLine_resume(self: pointer, ): void {.importc: "QTimeLine_resume".}
proc fcQTimeLine_stop(self: pointer, ): void {.importc: "QTimeLine_stop".}
proc fcQTimeLine_setPaused(self: pointer, paused: bool): void {.importc: "QTimeLine_setPaused".}
proc fcQTimeLine_setCurrentTime(self: pointer, msec: cint): void {.importc: "QTimeLine_setCurrentTime".}
proc fcQTimeLine_toggleDirection(self: pointer, ): void {.importc: "QTimeLine_toggleDirection".}
proc fcQTimeLine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTimeLine_tr2".}
proc fcQTimeLine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTimeLine_tr3".}
proc fQTimeLine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTimeLine_virtualbase_metacall".}
proc fcQTimeLine_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTimeLine_override_virtual_metacall".}
proc fQTimeLine_virtualbase_valueForTime(self: pointer, msec: cint): float64{.importc: "QTimeLine_virtualbase_valueForTime".}
proc fcQTimeLine_override_virtual_valueForTime(self: pointer, slot: int) {.importc: "QTimeLine_override_virtual_valueForTime".}
proc fQTimeLine_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTimeLine_virtualbase_timerEvent".}
proc fcQTimeLine_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTimeLine_override_virtual_timerEvent".}
proc fQTimeLine_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTimeLine_virtualbase_event".}
proc fcQTimeLine_override_virtual_event(self: pointer, slot: int) {.importc: "QTimeLine_override_virtual_event".}
proc fQTimeLine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTimeLine_virtualbase_eventFilter".}
proc fcQTimeLine_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTimeLine_override_virtual_eventFilter".}
proc fQTimeLine_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTimeLine_virtualbase_childEvent".}
proc fcQTimeLine_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTimeLine_override_virtual_childEvent".}
proc fQTimeLine_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTimeLine_virtualbase_customEvent".}
proc fcQTimeLine_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTimeLine_override_virtual_customEvent".}
proc fQTimeLine_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTimeLine_virtualbase_connectNotify".}
proc fcQTimeLine_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTimeLine_override_virtual_connectNotify".}
proc fQTimeLine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTimeLine_virtualbase_disconnectNotify".}
proc fcQTimeLine_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTimeLine_override_virtual_disconnectNotify".}
proc fcQTimeLine_staticMetaObject(): pointer {.importc: "QTimeLine_staticMetaObject".}
proc fcQTimeLine_delete(self: pointer) {.importc: "QTimeLine_delete".}


func init*(T: type QTimeLine, h: ptr cQTimeLine): QTimeLine =
  T(h: h)
proc create*(T: type QTimeLine, ): QTimeLine =

  QTimeLine.init(fcQTimeLine_new())
proc create*(T: type QTimeLine, duration: cint): QTimeLine =

  QTimeLine.init(fcQTimeLine_new2(duration))
proc create*(T: type QTimeLine, duration: cint, parent: gen_qobject.QObject): QTimeLine =

  QTimeLine.init(fcQTimeLine_new3(duration, parent.h))
proc metaObject*(self: QTimeLine, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTimeLine_metaObject(self.h))

proc metacast*(self: QTimeLine, param1: cstring): pointer =

  fcQTimeLine_metacast(self.h, param1)

proc metacall*(self: QTimeLine, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTimeLine_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTimeLine, s: cstring): string =

  let v_ms = fcQTimeLine_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc state*(self: QTimeLine, ): QTimeLineState =

  QTimeLineState(fcQTimeLine_state(self.h))

proc loopCount*(self: QTimeLine, ): cint =

  fcQTimeLine_loopCount(self.h)

proc setLoopCount*(self: QTimeLine, count: cint): void =

  fcQTimeLine_setLoopCount(self.h, count)

proc direction*(self: QTimeLine, ): QTimeLineDirection =

  QTimeLineDirection(fcQTimeLine_direction(self.h))

proc setDirection*(self: QTimeLine, direction: QTimeLineDirection): void =

  fcQTimeLine_setDirection(self.h, cint(direction))

proc duration*(self: QTimeLine, ): cint =

  fcQTimeLine_duration(self.h)

proc setDuration*(self: QTimeLine, duration: cint): void =

  fcQTimeLine_setDuration(self.h, duration)

proc startFrame*(self: QTimeLine, ): cint =

  fcQTimeLine_startFrame(self.h)

proc setStartFrame*(self: QTimeLine, frame: cint): void =

  fcQTimeLine_setStartFrame(self.h, frame)

proc endFrame*(self: QTimeLine, ): cint =

  fcQTimeLine_endFrame(self.h)

proc setEndFrame*(self: QTimeLine, frame: cint): void =

  fcQTimeLine_setEndFrame(self.h, frame)

proc setFrameRange*(self: QTimeLine, startFrame: cint, endFrame: cint): void =

  fcQTimeLine_setFrameRange(self.h, startFrame, endFrame)

proc updateInterval*(self: QTimeLine, ): cint =

  fcQTimeLine_updateInterval(self.h)

proc setUpdateInterval*(self: QTimeLine, interval: cint): void =

  fcQTimeLine_setUpdateInterval(self.h, interval)

proc easingCurve*(self: QTimeLine, ): gen_qeasingcurve.QEasingCurve =

  gen_qeasingcurve.QEasingCurve(h: fcQTimeLine_easingCurve(self.h))

proc setEasingCurve*(self: QTimeLine, curve: gen_qeasingcurve.QEasingCurve): void =

  fcQTimeLine_setEasingCurve(self.h, curve.h)

proc currentTime*(self: QTimeLine, ): cint =

  fcQTimeLine_currentTime(self.h)

proc currentFrame*(self: QTimeLine, ): cint =

  fcQTimeLine_currentFrame(self.h)

proc currentValue*(self: QTimeLine, ): float64 =

  fcQTimeLine_currentValue(self.h)

proc frameForTime*(self: QTimeLine, msec: cint): cint =

  fcQTimeLine_frameForTime(self.h, msec)

proc valueForTime*(self: QTimeLine, msec: cint): float64 =

  fcQTimeLine_valueForTime(self.h, msec)

proc start*(self: QTimeLine, ): void =

  fcQTimeLine_start(self.h)

proc resume*(self: QTimeLine, ): void =

  fcQTimeLine_resume(self.h)

proc stop*(self: QTimeLine, ): void =

  fcQTimeLine_stop(self.h)

proc setPaused*(self: QTimeLine, paused: bool): void =

  fcQTimeLine_setPaused(self.h, paused)

proc setCurrentTime*(self: QTimeLine, msec: cint): void =

  fcQTimeLine_setCurrentTime(self.h, msec)

proc toggleDirection*(self: QTimeLine, ): void =

  fcQTimeLine_toggleDirection(self.h)

proc tr2*(_: type QTimeLine, s: cstring, c: cstring): string =

  let v_ms = fcQTimeLine_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTimeLine, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTimeLine_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QTimeLine, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTimeLine_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTimeLinemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTimeLine, slot: proc(super: QTimeLinemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTimeLinemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeLine_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeLine_metacall(self: ptr cQTimeLine, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTimeLine_metacall ".} =
  type Cb = proc(super: QTimeLinemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTimeLine(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_valueForTime(self: QTimeLine, msec: cint): float64 =


  fQTimeLine_virtualbase_valueForTime(self.h, msec)

type QTimeLinevalueForTimeBase* = proc(msec: cint): float64
proc onvalueForTime*(self: QTimeLine, slot: proc(super: QTimeLinevalueForTimeBase, msec: cint): float64) =
  # TODO check subclass
  type Cb = proc(super: QTimeLinevalueForTimeBase, msec: cint): float64
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeLine_override_virtual_valueForTime(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeLine_valueForTime(self: ptr cQTimeLine, slot: int, msec: cint): float64 {.exportc: "miqt_exec_callback_QTimeLine_valueForTime ".} =
  type Cb = proc(super: QTimeLinevalueForTimeBase, msec: cint): float64
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msec: cint): auto =
    callVirtualBase_valueForTime(QTimeLine(h: self), msec)
  let slotval1 = msec


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QTimeLine, event: gen_qcoreevent.QTimerEvent): void =


  fQTimeLine_virtualbase_timerEvent(self.h, event.h)

type QTimeLinetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTimeLine, slot: proc(super: QTimeLinetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeLinetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeLine_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeLine_timerEvent(self: ptr cQTimeLine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeLine_timerEvent ".} =
  type Cb = proc(super: QTimeLinetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTimeLine(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QTimeLine, event: gen_qcoreevent.QEvent): bool =


  fQTimeLine_virtualbase_event(self.h, event.h)

type QTimeLineeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTimeLine, slot: proc(super: QTimeLineeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTimeLineeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeLine_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeLine_event(self: ptr cQTimeLine, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTimeLine_event ".} =
  type Cb = proc(super: QTimeLineeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTimeLine(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QTimeLine, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQTimeLine_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTimeLineeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTimeLine, slot: proc(super: QTimeLineeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTimeLineeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeLine_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeLine_eventFilter(self: ptr cQTimeLine, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTimeLine_eventFilter ".} =
  type Cb = proc(super: QTimeLineeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTimeLine(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_childEvent(self: QTimeLine, event: gen_qcoreevent.QChildEvent): void =


  fQTimeLine_virtualbase_childEvent(self.h, event.h)

type QTimeLinechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTimeLine, slot: proc(super: QTimeLinechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeLinechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeLine_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeLine_childEvent(self: ptr cQTimeLine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeLine_childEvent ".} =
  type Cb = proc(super: QTimeLinechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTimeLine(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTimeLine, event: gen_qcoreevent.QEvent): void =


  fQTimeLine_virtualbase_customEvent(self.h, event.h)

type QTimeLinecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTimeLine, slot: proc(super: QTimeLinecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeLinecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeLine_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeLine_customEvent(self: ptr cQTimeLine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTimeLine_customEvent ".} =
  type Cb = proc(super: QTimeLinecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTimeLine(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTimeLine, signal: gen_qmetaobject.QMetaMethod): void =


  fQTimeLine_virtualbase_connectNotify(self.h, signal.h)

type QTimeLineconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTimeLine, slot: proc(super: QTimeLineconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeLineconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeLine_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeLine_connectNotify(self: ptr cQTimeLine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTimeLine_connectNotify ".} =
  type Cb = proc(super: QTimeLineconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTimeLine(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTimeLine, signal: gen_qmetaobject.QMetaMethod): void =


  fQTimeLine_virtualbase_disconnectNotify(self.h, signal.h)

type QTimeLinedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTimeLine, slot: proc(super: QTimeLinedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTimeLinedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimeLine_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimeLine_disconnectNotify(self: ptr cQTimeLine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTimeLine_disconnectNotify ".} =
  type Cb = proc(super: QTimeLinedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTimeLine(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QTimeLine): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQTimeLine_staticMetaObject())
proc delete*(self: QTimeLine) =
  fcQTimeLine_delete(self.h)
