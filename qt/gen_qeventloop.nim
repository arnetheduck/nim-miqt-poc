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
{.compile("gen_qeventloop.cpp", cflags).}


type QEventLoopProcessEventsFlag* = cint
const
  QEventLoopAllEvents* = 0
  QEventLoopExcludeUserInputEvents* = 1
  QEventLoopExcludeSocketNotifiers* = 2
  QEventLoopWaitForMoreEvents* = 4
  QEventLoopX11ExcludeTimers* = 8
  QEventLoopEventLoopExec* = 32
  QEventLoopDialogExec* = 64



import gen_qeventloop_types
export gen_qeventloop_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qthread
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qthread

type cQEventLoop*{.exportc: "QEventLoop", incompleteStruct.} = object
type cQEventLoopLocker*{.exportc: "QEventLoopLocker", incompleteStruct.} = object

proc fcQEventLoop_new(): ptr cQEventLoop {.importc: "QEventLoop_new".}
proc fcQEventLoop_new2(parent: pointer): ptr cQEventLoop {.importc: "QEventLoop_new2".}
proc fcQEventLoop_metaObject(self: pointer, ): pointer {.importc: "QEventLoop_metaObject".}
proc fcQEventLoop_metacast(self: pointer, param1: cstring): pointer {.importc: "QEventLoop_metacast".}
proc fcQEventLoop_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QEventLoop_metacall".}
proc fcQEventLoop_tr(s: cstring): struct_miqt_string {.importc: "QEventLoop_tr".}
proc fcQEventLoop_trUtf8(s: cstring): struct_miqt_string {.importc: "QEventLoop_trUtf8".}
proc fcQEventLoop_processEvents(self: pointer, ): bool {.importc: "QEventLoop_processEvents".}
proc fcQEventLoop_processEvents2(self: pointer, flags: cint, maximumTime: cint): void {.importc: "QEventLoop_processEvents2".}
proc fcQEventLoop_exec(self: pointer, ): cint {.importc: "QEventLoop_exec".}
proc fcQEventLoop_exit(self: pointer, ): void {.importc: "QEventLoop_exit".}
proc fcQEventLoop_isRunning(self: pointer, ): bool {.importc: "QEventLoop_isRunning".}
proc fcQEventLoop_wakeUp(self: pointer, ): void {.importc: "QEventLoop_wakeUp".}
proc fcQEventLoop_event(self: pointer, event: pointer): bool {.importc: "QEventLoop_event".}
proc fcQEventLoop_quit(self: pointer, ): void {.importc: "QEventLoop_quit".}
proc fcQEventLoop_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QEventLoop_tr2".}
proc fcQEventLoop_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QEventLoop_tr3".}
proc fcQEventLoop_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QEventLoop_trUtf82".}
proc fcQEventLoop_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QEventLoop_trUtf83".}
proc fcQEventLoop_processEvents1(self: pointer, flags: cint): bool {.importc: "QEventLoop_processEvents1".}
proc fcQEventLoop_exec1(self: pointer, flags: cint): cint {.importc: "QEventLoop_exec1".}
proc fcQEventLoop_exit1(self: pointer, returnCode: cint): void {.importc: "QEventLoop_exit1".}
proc fQEventLoop_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QEventLoop_virtualbase_metacall".}
proc fcQEventLoop_override_virtual_metacall(self: pointer, slot: int) {.importc: "QEventLoop_override_virtual_metacall".}
proc fQEventLoop_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QEventLoop_virtualbase_event".}
proc fcQEventLoop_override_virtual_event(self: pointer, slot: int) {.importc: "QEventLoop_override_virtual_event".}
proc fQEventLoop_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QEventLoop_virtualbase_eventFilter".}
proc fcQEventLoop_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QEventLoop_override_virtual_eventFilter".}
proc fQEventLoop_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QEventLoop_virtualbase_timerEvent".}
proc fcQEventLoop_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QEventLoop_override_virtual_timerEvent".}
proc fQEventLoop_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QEventLoop_virtualbase_childEvent".}
proc fcQEventLoop_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QEventLoop_override_virtual_childEvent".}
proc fQEventLoop_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QEventLoop_virtualbase_customEvent".}
proc fcQEventLoop_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QEventLoop_override_virtual_customEvent".}
proc fQEventLoop_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QEventLoop_virtualbase_connectNotify".}
proc fcQEventLoop_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QEventLoop_override_virtual_connectNotify".}
proc fQEventLoop_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QEventLoop_virtualbase_disconnectNotify".}
proc fcQEventLoop_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QEventLoop_override_virtual_disconnectNotify".}
proc fcQEventLoop_delete(self: pointer) {.importc: "QEventLoop_delete".}
proc fcQEventLoopLocker_new(): ptr cQEventLoopLocker {.importc: "QEventLoopLocker_new".}
proc fcQEventLoopLocker_new2(loop: pointer): ptr cQEventLoopLocker {.importc: "QEventLoopLocker_new2".}
proc fcQEventLoopLocker_new3(thread: pointer): ptr cQEventLoopLocker {.importc: "QEventLoopLocker_new3".}
proc fcQEventLoopLocker_delete(self: pointer) {.importc: "QEventLoopLocker_delete".}


func init*(T: type QEventLoop, h: ptr cQEventLoop): QEventLoop =
  T(h: h)
proc create*(T: type QEventLoop, ): QEventLoop =

  QEventLoop.init(fcQEventLoop_new())
proc create*(T: type QEventLoop, parent: gen_qobject.QObject): QEventLoop =

  QEventLoop.init(fcQEventLoop_new2(parent.h))
proc metaObject*(self: QEventLoop, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQEventLoop_metaObject(self.h))

proc metacast*(self: QEventLoop, param1: cstring): pointer =

  fcQEventLoop_metacast(self.h, param1)

proc metacall*(self: QEventLoop, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQEventLoop_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QEventLoop, s: cstring): string =

  let v_ms = fcQEventLoop_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QEventLoop, s: cstring): string =

  let v_ms = fcQEventLoop_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc processEvents*(self: QEventLoop, ): bool =

  fcQEventLoop_processEvents(self.h)

proc processEvents2*(self: QEventLoop, flags: QEventLoopProcessEventsFlag, maximumTime: cint): void =

  fcQEventLoop_processEvents2(self.h, cint(flags), maximumTime)

proc exec*(self: QEventLoop, ): cint =

  fcQEventLoop_exec(self.h)

proc exit*(self: QEventLoop, ): void =

  fcQEventLoop_exit(self.h)

proc isRunning*(self: QEventLoop, ): bool =

  fcQEventLoop_isRunning(self.h)

proc wakeUp*(self: QEventLoop, ): void =

  fcQEventLoop_wakeUp(self.h)

proc event*(self: QEventLoop, event: gen_qcoreevent.QEvent): bool =

  fcQEventLoop_event(self.h, event.h)

proc quit*(self: QEventLoop, ): void =

  fcQEventLoop_quit(self.h)

proc tr2*(_: type QEventLoop, s: cstring, c: cstring): string =

  let v_ms = fcQEventLoop_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QEventLoop, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQEventLoop_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QEventLoop, s: cstring, c: cstring): string =

  let v_ms = fcQEventLoop_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QEventLoop, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQEventLoop_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc processEvents1*(self: QEventLoop, flags: QEventLoopProcessEventsFlag): bool =

  fcQEventLoop_processEvents1(self.h, cint(flags))

proc exec1*(self: QEventLoop, flags: QEventLoopProcessEventsFlag): cint =

  fcQEventLoop_exec1(self.h, cint(flags))

proc exit1*(self: QEventLoop, returnCode: cint): void =

  fcQEventLoop_exit1(self.h, returnCode)

proc callVirtualBase_metacall(self: QEventLoop, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQEventLoop_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QEventLoopmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QEventLoop, slot: proc(super: QEventLoopmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QEventLoopmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEventLoop_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventLoop_metacall(self: ptr cQEventLoop, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QEventLoop_metacall ".} =
  type Cb = proc(super: QEventLoopmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QEventLoop(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QEventLoop, event: gen_qcoreevent.QEvent): bool =


  fQEventLoop_virtualbase_event(self.h, event.h)

type QEventLoopeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QEventLoop, slot: proc(super: QEventLoopeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QEventLoopeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEventLoop_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventLoop_event(self: ptr cQEventLoop, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QEventLoop_event ".} =
  type Cb = proc(super: QEventLoopeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QEventLoop(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QEventLoop, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQEventLoop_virtualbase_eventFilter(self.h, watched.h, event.h)

type QEventLoopeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QEventLoop, slot: proc(super: QEventLoopeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QEventLoopeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEventLoop_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventLoop_eventFilter(self: ptr cQEventLoop, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QEventLoop_eventFilter ".} =
  type Cb = proc(super: QEventLoopeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QEventLoop(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QEventLoop, event: gen_qcoreevent.QTimerEvent): void =


  fQEventLoop_virtualbase_timerEvent(self.h, event.h)

type QEventLooptimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QEventLoop, slot: proc(super: QEventLooptimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QEventLooptimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEventLoop_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventLoop_timerEvent(self: ptr cQEventLoop, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QEventLoop_timerEvent ".} =
  type Cb = proc(super: QEventLooptimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QEventLoop(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QEventLoop, event: gen_qcoreevent.QChildEvent): void =


  fQEventLoop_virtualbase_childEvent(self.h, event.h)

type QEventLoopchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QEventLoop, slot: proc(super: QEventLoopchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QEventLoopchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEventLoop_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventLoop_childEvent(self: ptr cQEventLoop, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QEventLoop_childEvent ".} =
  type Cb = proc(super: QEventLoopchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QEventLoop(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QEventLoop, event: gen_qcoreevent.QEvent): void =


  fQEventLoop_virtualbase_customEvent(self.h, event.h)

type QEventLoopcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QEventLoop, slot: proc(super: QEventLoopcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QEventLoopcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEventLoop_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventLoop_customEvent(self: ptr cQEventLoop, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QEventLoop_customEvent ".} =
  type Cb = proc(super: QEventLoopcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QEventLoop(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QEventLoop, signal: gen_qmetaobject.QMetaMethod): void =


  fQEventLoop_virtualbase_connectNotify(self.h, signal.h)

type QEventLoopconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QEventLoop, slot: proc(super: QEventLoopconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QEventLoopconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEventLoop_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventLoop_connectNotify(self: ptr cQEventLoop, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QEventLoop_connectNotify ".} =
  type Cb = proc(super: QEventLoopconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QEventLoop(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QEventLoop, signal: gen_qmetaobject.QMetaMethod): void =


  fQEventLoop_virtualbase_disconnectNotify(self.h, signal.h)

type QEventLoopdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QEventLoop, slot: proc(super: QEventLoopdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QEventLoopdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEventLoop_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEventLoop_disconnectNotify(self: ptr cQEventLoop, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QEventLoop_disconnectNotify ".} =
  type Cb = proc(super: QEventLoopdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QEventLoop(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QEventLoop) =
  fcQEventLoop_delete(self.h)

func init*(T: type QEventLoopLocker, h: ptr cQEventLoopLocker): QEventLoopLocker =
  T(h: h)
proc create*(T: type QEventLoopLocker, ): QEventLoopLocker =

  QEventLoopLocker.init(fcQEventLoopLocker_new())
proc create*(T: type QEventLoopLocker, loop: QEventLoop): QEventLoopLocker =

  QEventLoopLocker.init(fcQEventLoopLocker_new2(loop.h))
proc create2*(T: type QEventLoopLocker, thread: gen_qthread.QThread): QEventLoopLocker =

  QEventLoopLocker.init(fcQEventLoopLocker_new3(thread.h))
proc delete*(self: QEventLoopLocker) =
  fcQEventLoopLocker_delete(self.h)
