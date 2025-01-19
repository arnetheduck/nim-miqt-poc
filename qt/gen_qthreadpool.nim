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
{.compile("gen_qthreadpool.cpp", cflags).}


import gen_qthreadpool_types
export gen_qthreadpool_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qrunnable,
  gen_qthread
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qrunnable,
  gen_qthread

type cQThreadPool*{.exportc: "QThreadPool", incompleteStruct.} = object

proc fcQThreadPool_new(): ptr cQThreadPool {.importc: "QThreadPool_new".}
proc fcQThreadPool_new2(parent: pointer): ptr cQThreadPool {.importc: "QThreadPool_new2".}
proc fcQThreadPool_metaObject(self: pointer, ): pointer {.importc: "QThreadPool_metaObject".}
proc fcQThreadPool_metacast(self: pointer, param1: cstring): pointer {.importc: "QThreadPool_metacast".}
proc fcQThreadPool_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QThreadPool_metacall".}
proc fcQThreadPool_tr(s: cstring): struct_miqt_string {.importc: "QThreadPool_tr".}
proc fcQThreadPool_trUtf8(s: cstring): struct_miqt_string {.importc: "QThreadPool_trUtf8".}
proc fcQThreadPool_globalInstance(): pointer {.importc: "QThreadPool_globalInstance".}
proc fcQThreadPool_start(self: pointer, runnable: pointer): void {.importc: "QThreadPool_start".}
proc fcQThreadPool_tryStart(self: pointer, runnable: pointer): bool {.importc: "QThreadPool_tryStart".}
proc fcQThreadPool_expiryTimeout(self: pointer, ): cint {.importc: "QThreadPool_expiryTimeout".}
proc fcQThreadPool_setExpiryTimeout(self: pointer, expiryTimeout: cint): void {.importc: "QThreadPool_setExpiryTimeout".}
proc fcQThreadPool_maxThreadCount(self: pointer, ): cint {.importc: "QThreadPool_maxThreadCount".}
proc fcQThreadPool_setMaxThreadCount(self: pointer, maxThreadCount: cint): void {.importc: "QThreadPool_setMaxThreadCount".}
proc fcQThreadPool_activeThreadCount(self: pointer, ): cint {.importc: "QThreadPool_activeThreadCount".}
proc fcQThreadPool_setStackSize(self: pointer, stackSize: cuint): void {.importc: "QThreadPool_setStackSize".}
proc fcQThreadPool_stackSize(self: pointer, ): cuint {.importc: "QThreadPool_stackSize".}
proc fcQThreadPool_reserveThread(self: pointer, ): void {.importc: "QThreadPool_reserveThread".}
proc fcQThreadPool_releaseThread(self: pointer, ): void {.importc: "QThreadPool_releaseThread".}
proc fcQThreadPool_waitForDone(self: pointer, ): bool {.importc: "QThreadPool_waitForDone".}
proc fcQThreadPool_clear(self: pointer, ): void {.importc: "QThreadPool_clear".}
proc fcQThreadPool_contains(self: pointer, thread: pointer): bool {.importc: "QThreadPool_contains".}
proc fcQThreadPool_cancel(self: pointer, runnable: pointer): void {.importc: "QThreadPool_cancel".}
proc fcQThreadPool_tryTake(self: pointer, runnable: pointer): bool {.importc: "QThreadPool_tryTake".}
proc fcQThreadPool_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QThreadPool_tr2".}
proc fcQThreadPool_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QThreadPool_tr3".}
proc fcQThreadPool_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QThreadPool_trUtf82".}
proc fcQThreadPool_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QThreadPool_trUtf83".}
proc fcQThreadPool_start2(self: pointer, runnable: pointer, priority: cint): void {.importc: "QThreadPool_start2".}
proc fcQThreadPool_waitForDone1(self: pointer, msecs: cint): bool {.importc: "QThreadPool_waitForDone1".}
proc fQThreadPool_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QThreadPool_virtualbase_metacall".}
proc fcQThreadPool_override_virtual_metacall(self: pointer, slot: int) {.importc: "QThreadPool_override_virtual_metacall".}
proc fQThreadPool_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QThreadPool_virtualbase_event".}
proc fcQThreadPool_override_virtual_event(self: pointer, slot: int) {.importc: "QThreadPool_override_virtual_event".}
proc fQThreadPool_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QThreadPool_virtualbase_eventFilter".}
proc fcQThreadPool_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QThreadPool_override_virtual_eventFilter".}
proc fQThreadPool_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QThreadPool_virtualbase_timerEvent".}
proc fcQThreadPool_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QThreadPool_override_virtual_timerEvent".}
proc fQThreadPool_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QThreadPool_virtualbase_childEvent".}
proc fcQThreadPool_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QThreadPool_override_virtual_childEvent".}
proc fQThreadPool_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QThreadPool_virtualbase_customEvent".}
proc fcQThreadPool_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QThreadPool_override_virtual_customEvent".}
proc fQThreadPool_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QThreadPool_virtualbase_connectNotify".}
proc fcQThreadPool_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QThreadPool_override_virtual_connectNotify".}
proc fQThreadPool_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QThreadPool_virtualbase_disconnectNotify".}
proc fcQThreadPool_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QThreadPool_override_virtual_disconnectNotify".}
proc fcQThreadPool_staticMetaObject(): pointer {.importc: "QThreadPool_staticMetaObject".}
proc fcQThreadPool_delete(self: pointer) {.importc: "QThreadPool_delete".}


func init*(T: type QThreadPool, h: ptr cQThreadPool): QThreadPool =
  T(h: h)
proc create*(T: type QThreadPool, ): QThreadPool =

  QThreadPool.init(fcQThreadPool_new())
proc create*(T: type QThreadPool, parent: gen_qobject.QObject): QThreadPool =

  QThreadPool.init(fcQThreadPool_new2(parent.h))
proc metaObject*(self: QThreadPool, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQThreadPool_metaObject(self.h))

proc metacast*(self: QThreadPool, param1: cstring): pointer =

  fcQThreadPool_metacast(self.h, param1)

proc metacall*(self: QThreadPool, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQThreadPool_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QThreadPool, s: cstring): string =

  let v_ms = fcQThreadPool_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QThreadPool, s: cstring): string =

  let v_ms = fcQThreadPool_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc globalInstance*(_: type QThreadPool, ): QThreadPool =

  QThreadPool(h: fcQThreadPool_globalInstance())

proc start*(self: QThreadPool, runnable: gen_qrunnable.QRunnable): void =

  fcQThreadPool_start(self.h, runnable.h)

proc tryStart*(self: QThreadPool, runnable: gen_qrunnable.QRunnable): bool =

  fcQThreadPool_tryStart(self.h, runnable.h)

proc expiryTimeout*(self: QThreadPool, ): cint =

  fcQThreadPool_expiryTimeout(self.h)

proc setExpiryTimeout*(self: QThreadPool, expiryTimeout: cint): void =

  fcQThreadPool_setExpiryTimeout(self.h, expiryTimeout)

proc maxThreadCount*(self: QThreadPool, ): cint =

  fcQThreadPool_maxThreadCount(self.h)

proc setMaxThreadCount*(self: QThreadPool, maxThreadCount: cint): void =

  fcQThreadPool_setMaxThreadCount(self.h, maxThreadCount)

proc activeThreadCount*(self: QThreadPool, ): cint =

  fcQThreadPool_activeThreadCount(self.h)

proc setStackSize*(self: QThreadPool, stackSize: cuint): void =

  fcQThreadPool_setStackSize(self.h, stackSize)

proc stackSize*(self: QThreadPool, ): cuint =

  fcQThreadPool_stackSize(self.h)

proc reserveThread*(self: QThreadPool, ): void =

  fcQThreadPool_reserveThread(self.h)

proc releaseThread*(self: QThreadPool, ): void =

  fcQThreadPool_releaseThread(self.h)

proc waitForDone*(self: QThreadPool, ): bool =

  fcQThreadPool_waitForDone(self.h)

proc clear*(self: QThreadPool, ): void =

  fcQThreadPool_clear(self.h)

proc contains*(self: QThreadPool, thread: gen_qthread.QThread): bool =

  fcQThreadPool_contains(self.h, thread.h)

proc cancel*(self: QThreadPool, runnable: gen_qrunnable.QRunnable): void =

  fcQThreadPool_cancel(self.h, runnable.h)

proc tryTake*(self: QThreadPool, runnable: gen_qrunnable.QRunnable): bool =

  fcQThreadPool_tryTake(self.h, runnable.h)

proc tr2*(_: type QThreadPool, s: cstring, c: cstring): string =

  let v_ms = fcQThreadPool_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QThreadPool, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQThreadPool_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QThreadPool, s: cstring, c: cstring): string =

  let v_ms = fcQThreadPool_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QThreadPool, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQThreadPool_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc start2*(self: QThreadPool, runnable: gen_qrunnable.QRunnable, priority: cint): void =

  fcQThreadPool_start2(self.h, runnable.h, priority)

proc waitForDone1*(self: QThreadPool, msecs: cint): bool =

  fcQThreadPool_waitForDone1(self.h, msecs)

proc callVirtualBase_metacall(self: QThreadPool, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQThreadPool_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QThreadPoolmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QThreadPool, slot: proc(super: QThreadPoolmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QThreadPoolmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQThreadPool_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThreadPool_metacall(self: ptr cQThreadPool, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QThreadPool_metacall ".} =
  type Cb = proc(super: QThreadPoolmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QThreadPool(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QThreadPool, event: gen_qcoreevent.QEvent): bool =


  fQThreadPool_virtualbase_event(self.h, event.h)

type QThreadPooleventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QThreadPool, slot: proc(super: QThreadPooleventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QThreadPooleventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQThreadPool_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThreadPool_event(self: ptr cQThreadPool, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QThreadPool_event ".} =
  type Cb = proc(super: QThreadPooleventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QThreadPool(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QThreadPool, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQThreadPool_virtualbase_eventFilter(self.h, watched.h, event.h)

type QThreadPooleventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QThreadPool, slot: proc(super: QThreadPooleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QThreadPooleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQThreadPool_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThreadPool_eventFilter(self: ptr cQThreadPool, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QThreadPool_eventFilter ".} =
  type Cb = proc(super: QThreadPooleventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QThreadPool(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QThreadPool, event: gen_qcoreevent.QTimerEvent): void =


  fQThreadPool_virtualbase_timerEvent(self.h, event.h)

type QThreadPooltimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QThreadPool, slot: proc(super: QThreadPooltimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QThreadPooltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQThreadPool_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThreadPool_timerEvent(self: ptr cQThreadPool, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QThreadPool_timerEvent ".} =
  type Cb = proc(super: QThreadPooltimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QThreadPool(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QThreadPool, event: gen_qcoreevent.QChildEvent): void =


  fQThreadPool_virtualbase_childEvent(self.h, event.h)

type QThreadPoolchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QThreadPool, slot: proc(super: QThreadPoolchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QThreadPoolchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQThreadPool_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThreadPool_childEvent(self: ptr cQThreadPool, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QThreadPool_childEvent ".} =
  type Cb = proc(super: QThreadPoolchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QThreadPool(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QThreadPool, event: gen_qcoreevent.QEvent): void =


  fQThreadPool_virtualbase_customEvent(self.h, event.h)

type QThreadPoolcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QThreadPool, slot: proc(super: QThreadPoolcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QThreadPoolcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQThreadPool_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThreadPool_customEvent(self: ptr cQThreadPool, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QThreadPool_customEvent ".} =
  type Cb = proc(super: QThreadPoolcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QThreadPool(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QThreadPool, signal: gen_qmetaobject.QMetaMethod): void =


  fQThreadPool_virtualbase_connectNotify(self.h, signal.h)

type QThreadPoolconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QThreadPool, slot: proc(super: QThreadPoolconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QThreadPoolconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQThreadPool_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThreadPool_connectNotify(self: ptr cQThreadPool, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QThreadPool_connectNotify ".} =
  type Cb = proc(super: QThreadPoolconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QThreadPool(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QThreadPool, signal: gen_qmetaobject.QMetaMethod): void =


  fQThreadPool_virtualbase_disconnectNotify(self.h, signal.h)

type QThreadPooldisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QThreadPool, slot: proc(super: QThreadPooldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QThreadPooldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQThreadPool_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QThreadPool_disconnectNotify(self: ptr cQThreadPool, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QThreadPool_disconnectNotify ".} =
  type Cb = proc(super: QThreadPooldisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QThreadPool(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QThreadPool): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQThreadPool_staticMetaObject())
proc delete*(self: QThreadPool) =
  fcQThreadPool_delete(self.h)
