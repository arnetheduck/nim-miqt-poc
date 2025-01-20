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
{.compile("gen_qthread.cpp", cflags).}


type QThreadPriority* = cint
const
  QThreadIdlePriority* = 0
  QThreadLowestPriority* = 1
  QThreadLowPriority* = 2
  QThreadNormalPriority* = 3
  QThreadHighPriority* = 4
  QThreadHighestPriority* = 5
  QThreadTimeCriticalPriority* = 6
  QThreadInheritPriority* = 7



import gen_qthread_types
export gen_qthread_types

import
  gen_qabstracteventdispatcher,
  gen_qcoreevent,
  gen_qdeadlinetimer,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qabstracteventdispatcher,
  gen_qcoreevent,
  gen_qdeadlinetimer,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQThread*{.exportc: "QThread", incompleteStruct.} = object

proc fcQThread_new(): ptr cQThread {.importc: "QThread_new".}
proc fcQThread_new2(parent: pointer): ptr cQThread {.importc: "QThread_new2".}
proc fcQThread_metaObject(self: pointer, ): pointer {.importc: "QThread_metaObject".}
proc fcQThread_metacast(self: pointer, param1: cstring): pointer {.importc: "QThread_metacast".}
proc fcQThread_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QThread_metacall".}
proc fcQThread_tr(s: cstring): struct_miqt_string {.importc: "QThread_tr".}
proc fcQThread_trUtf8(s: cstring): struct_miqt_string {.importc: "QThread_trUtf8".}
proc fcQThread_currentThreadId(): pointer {.importc: "QThread_currentThreadId".}
proc fcQThread_currentThread(): pointer {.importc: "QThread_currentThread".}
proc fcQThread_idealThreadCount(): cint {.importc: "QThread_idealThreadCount".}
proc fcQThread_yieldCurrentThread(): void {.importc: "QThread_yieldCurrentThread".}
proc fcQThread_setPriority(self: pointer, priority: cint): void {.importc: "QThread_setPriority".}
proc fcQThread_priority(self: pointer, ): cint {.importc: "QThread_priority".}
proc fcQThread_isFinished(self: pointer, ): bool {.importc: "QThread_isFinished".}
proc fcQThread_isRunning(self: pointer, ): bool {.importc: "QThread_isRunning".}
proc fcQThread_requestInterruption(self: pointer, ): void {.importc: "QThread_requestInterruption".}
proc fcQThread_isInterruptionRequested(self: pointer, ): bool {.importc: "QThread_isInterruptionRequested".}
proc fcQThread_setStackSize(self: pointer, stackSize: cuint): void {.importc: "QThread_setStackSize".}
proc fcQThread_stackSize(self: pointer, ): cuint {.importc: "QThread_stackSize".}
proc fcQThread_exit(self: pointer, ): void {.importc: "QThread_exit".}
proc fcQThread_eventDispatcher(self: pointer, ): pointer {.importc: "QThread_eventDispatcher".}
proc fcQThread_setEventDispatcher(self: pointer, eventDispatcher: pointer): void {.importc: "QThread_setEventDispatcher".}
proc fcQThread_event(self: pointer, event: pointer): bool {.importc: "QThread_event".}
proc fcQThread_loopLevel(self: pointer, ): cint {.importc: "QThread_loopLevel".}
proc fcQThread_start(self: pointer, ): void {.importc: "QThread_start".}
proc fcQThread_terminate(self: pointer, ): void {.importc: "QThread_terminate".}
proc fcQThread_quit(self: pointer, ): void {.importc: "QThread_quit".}
proc fcQThread_wait(self: pointer, ): bool {.importc: "QThread_wait".}
proc fcQThread_waitWithTime(self: pointer, time: culong): bool {.importc: "QThread_waitWithTime".}
proc fcQThread_sleep(param1: culong): void {.importc: "QThread_sleep".}
proc fcQThread_msleep(param1: culong): void {.importc: "QThread_msleep".}
proc fcQThread_usleep(param1: culong): void {.importc: "QThread_usleep".}
proc fcQThread_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QThread_tr2".}
proc fcQThread_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QThread_tr3".}
proc fcQThread_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QThread_trUtf82".}
proc fcQThread_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QThread_trUtf83".}
proc fcQThread_exit1(self: pointer, retcode: cint): void {.importc: "QThread_exit1".}
proc fcQThread_start1(self: pointer, param1: cint): void {.importc: "QThread_start1".}
proc fcQThread_wait1(self: pointer, deadline: pointer): bool {.importc: "QThread_wait1".}
proc fQThread_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QThread_virtualbase_metaObject".}
proc fcQThread_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QThread_override_virtual_metaObject".}
proc fQThread_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QThread_virtualbase_metacast".}
proc fcQThread_override_virtual_metacast(self: pointer, slot: int) {.importc: "QThread_override_virtual_metacast".}
proc fQThread_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QThread_virtualbase_metacall".}
proc fcQThread_override_virtual_metacall(self: pointer, slot: int) {.importc: "QThread_override_virtual_metacall".}
proc fQThread_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QThread_virtualbase_event".}
proc fcQThread_override_virtual_event(self: pointer, slot: int) {.importc: "QThread_override_virtual_event".}
proc fQThread_virtualbase_run(self: pointer, ): void{.importc: "QThread_virtualbase_run".}
proc fcQThread_override_virtual_run(self: pointer, slot: int) {.importc: "QThread_override_virtual_run".}
proc fQThread_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QThread_virtualbase_eventFilter".}
proc fcQThread_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QThread_override_virtual_eventFilter".}
proc fQThread_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QThread_virtualbase_timerEvent".}
proc fcQThread_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QThread_override_virtual_timerEvent".}
proc fQThread_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QThread_virtualbase_childEvent".}
proc fcQThread_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QThread_override_virtual_childEvent".}
proc fQThread_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QThread_virtualbase_customEvent".}
proc fcQThread_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QThread_override_virtual_customEvent".}
proc fQThread_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QThread_virtualbase_connectNotify".}
proc fcQThread_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QThread_override_virtual_connectNotify".}
proc fQThread_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QThread_virtualbase_disconnectNotify".}
proc fcQThread_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QThread_override_virtual_disconnectNotify".}
proc fcQThread_staticMetaObject(): pointer {.importc: "QThread_staticMetaObject".}
proc fcQThread_delete(self: pointer) {.importc: "QThread_delete".}


func init*(T: type QThread, h: ptr cQThread): QThread =
  T(h: h)
proc create*(T: type QThread, ): QThread =

  QThread.init(fcQThread_new())
proc create*(T: type QThread, parent: gen_qobject.QObject): QThread =

  QThread.init(fcQThread_new2(parent.h))
proc metaObject*(self: QThread, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQThread_metaObject(self.h))

proc metacast*(self: QThread, param1: cstring): pointer =

  fcQThread_metacast(self.h, param1)

proc metacall*(self: QThread, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQThread_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QThread, s: cstring): string =

  let v_ms = fcQThread_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QThread, s: cstring): string =

  let v_ms = fcQThread_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc currentThreadId*(_: type QThread, ): pointer =

  fcQThread_currentThreadId()

proc currentThread*(_: type QThread, ): QThread =

  QThread(h: fcQThread_currentThread())

proc idealThreadCount*(_: type QThread, ): cint =

  fcQThread_idealThreadCount()

proc yieldCurrentThread*(_: type QThread, ): void =

  fcQThread_yieldCurrentThread()

proc setPriority*(self: QThread, priority: QThreadPriority): void =

  fcQThread_setPriority(self.h, cint(priority))

proc priority*(self: QThread, ): QThreadPriority =

  QThreadPriority(fcQThread_priority(self.h))

proc isFinished*(self: QThread, ): bool =

  fcQThread_isFinished(self.h)

proc isRunning*(self: QThread, ): bool =

  fcQThread_isRunning(self.h)

proc requestInterruption*(self: QThread, ): void =

  fcQThread_requestInterruption(self.h)

proc isInterruptionRequested*(self: QThread, ): bool =

  fcQThread_isInterruptionRequested(self.h)

proc setStackSize*(self: QThread, stackSize: cuint): void =

  fcQThread_setStackSize(self.h, stackSize)

proc stackSize*(self: QThread, ): cuint =

  fcQThread_stackSize(self.h)

proc exit*(self: QThread, ): void =

  fcQThread_exit(self.h)

proc eventDispatcher*(self: QThread, ): gen_qabstracteventdispatcher.QAbstractEventDispatcher =

  gen_qabstracteventdispatcher.QAbstractEventDispatcher(h: fcQThread_eventDispatcher(self.h))

proc setEventDispatcher*(self: QThread, eventDispatcher: gen_qabstracteventdispatcher.QAbstractEventDispatcher): void =

  fcQThread_setEventDispatcher(self.h, eventDispatcher.h)

proc event*(self: QThread, event: gen_qcoreevent.QEvent): bool =

  fcQThread_event(self.h, event.h)

proc loopLevel*(self: QThread, ): cint =

  fcQThread_loopLevel(self.h)

proc start*(self: QThread, ): void =

  fcQThread_start(self.h)

proc terminate*(self: QThread, ): void =

  fcQThread_terminate(self.h)

proc quit*(self: QThread, ): void =

  fcQThread_quit(self.h)

proc wait*(self: QThread, ): bool =

  fcQThread_wait(self.h)

proc waitWithTime*(self: QThread, time: culong): bool =

  fcQThread_waitWithTime(self.h, time)

proc sleep*(_: type QThread, param1: culong): void =

  fcQThread_sleep(param1)

proc msleep*(_: type QThread, param1: culong): void =

  fcQThread_msleep(param1)

proc usleep*(_: type QThread, param1: culong): void =

  fcQThread_usleep(param1)

proc tr2*(_: type QThread, s: cstring, c: cstring): string =

  let v_ms = fcQThread_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QThread, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQThread_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QThread, s: cstring, c: cstring): string =

  let v_ms = fcQThread_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QThread, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQThread_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc exit1*(self: QThread, retcode: cint): void =

  fcQThread_exit1(self.h, retcode)

proc start1*(self: QThread, param1: QThreadPriority): void =

  fcQThread_start1(self.h, cint(param1))

proc wait1*(self: QThread, deadline: gen_qdeadlinetimer.QDeadlineTimer): bool =

  fcQThread_wait1(self.h, deadline.h)

proc callVirtualBase_metaObject(self: QThread, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQThread_virtualbase_metaObject(self.h))

type QThreadmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QThread, slot: proc(super: QThreadmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QThreadmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQThread_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThread_metaObject(self: ptr cQThread, slot: int): pointer {.exportc: "miqt_exec_callback_QThread_metaObject ".} =
  type Cb = proc(super: QThreadmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QThread(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QThread, param1: cstring): pointer =


  fQThread_virtualbase_metacast(self.h, param1)

type QThreadmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QThread, slot: proc(super: QThreadmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QThreadmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQThread_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThread_metacast(self: ptr cQThread, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QThread_metacast ".} =
  type Cb = proc(super: QThreadmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QThread(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QThread, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQThread_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QThreadmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QThread, slot: proc(super: QThreadmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QThreadmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQThread_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThread_metacall(self: ptr cQThread, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QThread_metacall ".} =
  type Cb = proc(super: QThreadmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QThread(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QThread, event: gen_qcoreevent.QEvent): bool =


  fQThread_virtualbase_event(self.h, event.h)

type QThreadeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QThread, slot: proc(super: QThreadeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QThreadeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQThread_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThread_event(self: ptr cQThread, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QThread_event ".} =
  type Cb = proc(super: QThreadeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QThread(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_run(self: QThread, ): void =


  fQThread_virtualbase_run(self.h)

type QThreadrunBase* = proc(): void
proc onrun*(self: QThread, slot: proc(super: QThreadrunBase): void) =
  # TODO check subclass
  type Cb = proc(super: QThreadrunBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQThread_override_virtual_run(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThread_run(self: ptr cQThread, slot: int): void {.exportc: "miqt_exec_callback_QThread_run ".} =
  type Cb = proc(super: QThreadrunBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_run(QThread(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_eventFilter(self: QThread, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQThread_virtualbase_eventFilter(self.h, watched.h, event.h)

type QThreadeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QThread, slot: proc(super: QThreadeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QThreadeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQThread_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThread_eventFilter(self: ptr cQThread, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QThread_eventFilter ".} =
  type Cb = proc(super: QThreadeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QThread(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QThread, event: gen_qcoreevent.QTimerEvent): void =


  fQThread_virtualbase_timerEvent(self.h, event.h)

type QThreadtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QThread, slot: proc(super: QThreadtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QThreadtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQThread_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThread_timerEvent(self: ptr cQThread, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QThread_timerEvent ".} =
  type Cb = proc(super: QThreadtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QThread(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QThread, event: gen_qcoreevent.QChildEvent): void =


  fQThread_virtualbase_childEvent(self.h, event.h)

type QThreadchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QThread, slot: proc(super: QThreadchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QThreadchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQThread_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThread_childEvent(self: ptr cQThread, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QThread_childEvent ".} =
  type Cb = proc(super: QThreadchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QThread(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QThread, event: gen_qcoreevent.QEvent): void =


  fQThread_virtualbase_customEvent(self.h, event.h)

type QThreadcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QThread, slot: proc(super: QThreadcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QThreadcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQThread_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThread_customEvent(self: ptr cQThread, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QThread_customEvent ".} =
  type Cb = proc(super: QThreadcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QThread(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QThread, signal: gen_qmetaobject.QMetaMethod): void =


  fQThread_virtualbase_connectNotify(self.h, signal.h)

type QThreadconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QThread, slot: proc(super: QThreadconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QThreadconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQThread_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThread_connectNotify(self: ptr cQThread, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QThread_connectNotify ".} =
  type Cb = proc(super: QThreadconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QThread(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QThread, signal: gen_qmetaobject.QMetaMethod): void =


  fQThread_virtualbase_disconnectNotify(self.h, signal.h)

type QThreaddisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QThread, slot: proc(super: QThreaddisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QThreaddisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQThread_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThread_disconnectNotify(self: ptr cQThread, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QThread_disconnectNotify ".} =
  type Cb = proc(super: QThreaddisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QThread(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QThread): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQThread_staticMetaObject())
proc delete*(self: QThread) =
  fcQThread_delete(self.h)
