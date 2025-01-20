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
{.compile("gen_qsharedmemory.cpp", cflags).}


type QSharedMemoryAccessMode* = cint
const
  QSharedMemoryReadOnly* = 0
  QSharedMemoryReadWrite* = 1



type QSharedMemorySharedMemoryError* = cint
const
  QSharedMemoryNoError* = 0
  QSharedMemoryPermissionDenied* = 1
  QSharedMemoryInvalidSize* = 2
  QSharedMemoryKeyError* = 3
  QSharedMemoryAlreadyExists* = 4
  QSharedMemoryNotFound* = 5
  QSharedMemoryLockError* = 6
  QSharedMemoryOutOfResources* = 7
  QSharedMemoryUnknownError* = 8



import gen_qsharedmemory_types
export gen_qsharedmemory_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQSharedMemory*{.exportc: "QSharedMemory", incompleteStruct.} = object

proc fcQSharedMemory_new(): ptr cQSharedMemory {.importc: "QSharedMemory_new".}
proc fcQSharedMemory_new2(key: struct_miqt_string): ptr cQSharedMemory {.importc: "QSharedMemory_new2".}
proc fcQSharedMemory_new3(parent: pointer): ptr cQSharedMemory {.importc: "QSharedMemory_new3".}
proc fcQSharedMemory_new4(key: struct_miqt_string, parent: pointer): ptr cQSharedMemory {.importc: "QSharedMemory_new4".}
proc fcQSharedMemory_metaObject(self: pointer, ): pointer {.importc: "QSharedMemory_metaObject".}
proc fcQSharedMemory_metacast(self: pointer, param1: cstring): pointer {.importc: "QSharedMemory_metacast".}
proc fcQSharedMemory_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSharedMemory_metacall".}
proc fcQSharedMemory_tr(s: cstring): struct_miqt_string {.importc: "QSharedMemory_tr".}
proc fcQSharedMemory_setKey(self: pointer, key: struct_miqt_string): void {.importc: "QSharedMemory_setKey".}
proc fcQSharedMemory_key(self: pointer, ): struct_miqt_string {.importc: "QSharedMemory_key".}
proc fcQSharedMemory_setNativeKey(self: pointer, key: struct_miqt_string): void {.importc: "QSharedMemory_setNativeKey".}
proc fcQSharedMemory_nativeKey(self: pointer, ): struct_miqt_string {.importc: "QSharedMemory_nativeKey".}
proc fcQSharedMemory_create(self: pointer, size: int64): bool {.importc: "QSharedMemory_create".}
proc fcQSharedMemory_size(self: pointer, ): int64 {.importc: "QSharedMemory_size".}
proc fcQSharedMemory_attach(self: pointer, ): bool {.importc: "QSharedMemory_attach".}
proc fcQSharedMemory_isAttached(self: pointer, ): bool {.importc: "QSharedMemory_isAttached".}
proc fcQSharedMemory_detach(self: pointer, ): bool {.importc: "QSharedMemory_detach".}
proc fcQSharedMemory_data(self: pointer, ): pointer {.importc: "QSharedMemory_data".}
proc fcQSharedMemory_constData(self: pointer, ): pointer {.importc: "QSharedMemory_constData".}
proc fcQSharedMemory_data2(self: pointer, ): pointer {.importc: "QSharedMemory_data2".}
proc fcQSharedMemory_lock(self: pointer, ): bool {.importc: "QSharedMemory_lock".}
proc fcQSharedMemory_unlock(self: pointer, ): bool {.importc: "QSharedMemory_unlock".}
proc fcQSharedMemory_error(self: pointer, ): cint {.importc: "QSharedMemory_error".}
proc fcQSharedMemory_errorString(self: pointer, ): struct_miqt_string {.importc: "QSharedMemory_errorString".}
proc fcQSharedMemory_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSharedMemory_tr2".}
proc fcQSharedMemory_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSharedMemory_tr3".}
proc fcQSharedMemory_create2(self: pointer, size: int64, mode: cint): bool {.importc: "QSharedMemory_create2".}
proc fcQSharedMemory_attach1(self: pointer, mode: cint): bool {.importc: "QSharedMemory_attach1".}
proc fQSharedMemory_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSharedMemory_virtualbase_metaObject".}
proc fcQSharedMemory_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSharedMemory_override_virtual_metaObject".}
proc fQSharedMemory_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSharedMemory_virtualbase_metacast".}
proc fcQSharedMemory_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSharedMemory_override_virtual_metacast".}
proc fQSharedMemory_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSharedMemory_virtualbase_metacall".}
proc fcQSharedMemory_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSharedMemory_override_virtual_metacall".}
proc fQSharedMemory_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSharedMemory_virtualbase_event".}
proc fcQSharedMemory_override_virtual_event(self: pointer, slot: int) {.importc: "QSharedMemory_override_virtual_event".}
proc fQSharedMemory_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSharedMemory_virtualbase_eventFilter".}
proc fcQSharedMemory_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSharedMemory_override_virtual_eventFilter".}
proc fQSharedMemory_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSharedMemory_virtualbase_timerEvent".}
proc fcQSharedMemory_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSharedMemory_override_virtual_timerEvent".}
proc fQSharedMemory_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSharedMemory_virtualbase_childEvent".}
proc fcQSharedMemory_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSharedMemory_override_virtual_childEvent".}
proc fQSharedMemory_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSharedMemory_virtualbase_customEvent".}
proc fcQSharedMemory_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSharedMemory_override_virtual_customEvent".}
proc fQSharedMemory_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSharedMemory_virtualbase_connectNotify".}
proc fcQSharedMemory_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSharedMemory_override_virtual_connectNotify".}
proc fQSharedMemory_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSharedMemory_virtualbase_disconnectNotify".}
proc fcQSharedMemory_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSharedMemory_override_virtual_disconnectNotify".}
proc fcQSharedMemory_staticMetaObject(): pointer {.importc: "QSharedMemory_staticMetaObject".}
proc fcQSharedMemory_delete(self: pointer) {.importc: "QSharedMemory_delete".}


func init*(T: type QSharedMemory, h: ptr cQSharedMemory): QSharedMemory =
  T(h: h)
proc create*(T: type QSharedMemory, ): QSharedMemory =

  QSharedMemory.init(fcQSharedMemory_new())
proc create*(T: type QSharedMemory, key: string): QSharedMemory =

  QSharedMemory.init(fcQSharedMemory_new2(struct_miqt_string(data: key, len: csize_t(len(key)))))
proc create*(T: type QSharedMemory, parent: gen_qobject.QObject): QSharedMemory =

  QSharedMemory.init(fcQSharedMemory_new3(parent.h))
proc create*(T: type QSharedMemory, key: string, parent: gen_qobject.QObject): QSharedMemory =

  QSharedMemory.init(fcQSharedMemory_new4(struct_miqt_string(data: key, len: csize_t(len(key))), parent.h))
proc metaObject*(self: QSharedMemory, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSharedMemory_metaObject(self.h))

proc metacast*(self: QSharedMemory, param1: cstring): pointer =

  fcQSharedMemory_metacast(self.h, param1)

proc metacall*(self: QSharedMemory, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSharedMemory_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSharedMemory, s: cstring): string =

  let v_ms = fcQSharedMemory_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setKey*(self: QSharedMemory, key: string): void =

  fcQSharedMemory_setKey(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))

proc key*(self: QSharedMemory, ): string =

  let v_ms = fcQSharedMemory_key(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setNativeKey*(self: QSharedMemory, key: string): void =

  fcQSharedMemory_setNativeKey(self.h, struct_miqt_string(data: key, len: csize_t(len(key))))

proc nativeKey*(self: QSharedMemory, ): string =

  let v_ms = fcQSharedMemory_nativeKey(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create*(self: QSharedMemory, size: int64): bool =

  fcQSharedMemory_create(self.h, size)

proc size*(self: QSharedMemory, ): int64 =

  fcQSharedMemory_size(self.h)

proc attach*(self: QSharedMemory, ): bool =

  fcQSharedMemory_attach(self.h)

proc isAttached*(self: QSharedMemory, ): bool =

  fcQSharedMemory_isAttached(self.h)

proc detach*(self: QSharedMemory, ): bool =

  fcQSharedMemory_detach(self.h)

proc data*(self: QSharedMemory, ): pointer =

  fcQSharedMemory_data(self.h)

proc constData*(self: QSharedMemory, ): pointer =

  fcQSharedMemory_constData(self.h)

proc data2*(self: QSharedMemory, ): pointer =

  fcQSharedMemory_data2(self.h)

proc lock*(self: QSharedMemory, ): bool =

  fcQSharedMemory_lock(self.h)

proc unlock*(self: QSharedMemory, ): bool =

  fcQSharedMemory_unlock(self.h)

proc error*(self: QSharedMemory, ): QSharedMemorySharedMemoryError =

  QSharedMemorySharedMemoryError(fcQSharedMemory_error(self.h))

proc errorString*(self: QSharedMemory, ): string =

  let v_ms = fcQSharedMemory_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type QSharedMemory, s: cstring, c: cstring): string =

  let v_ms = fcQSharedMemory_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSharedMemory, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSharedMemory_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc create2*(self: QSharedMemory, size: int64, mode: QSharedMemoryAccessMode): bool =

  fcQSharedMemory_create2(self.h, size, cint(mode))

proc attach1*(self: QSharedMemory, mode: QSharedMemoryAccessMode): bool =

  fcQSharedMemory_attach1(self.h, cint(mode))

proc callVirtualBase_metaObject(self: QSharedMemory, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQSharedMemory_virtualbase_metaObject(self.h))

type QSharedMemorymetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QSharedMemory, slot: proc(super: QSharedMemorymetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QSharedMemorymetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSharedMemory_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSharedMemory_metaObject(self: ptr cQSharedMemory, slot: int): pointer {.exportc: "miqt_exec_callback_QSharedMemory_metaObject ".} =
  type Cb = proc(super: QSharedMemorymetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QSharedMemory(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QSharedMemory, param1: cstring): pointer =


  fQSharedMemory_virtualbase_metacast(self.h, param1)

type QSharedMemorymetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QSharedMemory, slot: proc(super: QSharedMemorymetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QSharedMemorymetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSharedMemory_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSharedMemory_metacast(self: ptr cQSharedMemory, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSharedMemory_metacast ".} =
  type Cb = proc(super: QSharedMemorymetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QSharedMemory(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QSharedMemory, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSharedMemory_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSharedMemorymetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSharedMemory, slot: proc(super: QSharedMemorymetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSharedMemorymetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSharedMemory_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSharedMemory_metacall(self: ptr cQSharedMemory, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSharedMemory_metacall ".} =
  type Cb = proc(super: QSharedMemorymetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSharedMemory(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QSharedMemory, event: gen_qcoreevent.QEvent): bool =


  fQSharedMemory_virtualbase_event(self.h, event.h)

type QSharedMemoryeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSharedMemory, slot: proc(super: QSharedMemoryeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSharedMemoryeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSharedMemory_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSharedMemory_event(self: ptr cQSharedMemory, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSharedMemory_event ".} =
  type Cb = proc(super: QSharedMemoryeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSharedMemory(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSharedMemory, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSharedMemory_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSharedMemoryeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSharedMemory, slot: proc(super: QSharedMemoryeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSharedMemoryeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSharedMemory_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSharedMemory_eventFilter(self: ptr cQSharedMemory, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSharedMemory_eventFilter ".} =
  type Cb = proc(super: QSharedMemoryeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSharedMemory(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSharedMemory, event: gen_qcoreevent.QTimerEvent): void =


  fQSharedMemory_virtualbase_timerEvent(self.h, event.h)

type QSharedMemorytimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSharedMemory, slot: proc(super: QSharedMemorytimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSharedMemorytimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSharedMemory_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSharedMemory_timerEvent(self: ptr cQSharedMemory, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSharedMemory_timerEvent ".} =
  type Cb = proc(super: QSharedMemorytimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSharedMemory(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSharedMemory, event: gen_qcoreevent.QChildEvent): void =


  fQSharedMemory_virtualbase_childEvent(self.h, event.h)

type QSharedMemorychildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSharedMemory, slot: proc(super: QSharedMemorychildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSharedMemorychildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSharedMemory_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSharedMemory_childEvent(self: ptr cQSharedMemory, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSharedMemory_childEvent ".} =
  type Cb = proc(super: QSharedMemorychildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSharedMemory(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSharedMemory, event: gen_qcoreevent.QEvent): void =


  fQSharedMemory_virtualbase_customEvent(self.h, event.h)

type QSharedMemorycustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSharedMemory, slot: proc(super: QSharedMemorycustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSharedMemorycustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSharedMemory_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSharedMemory_customEvent(self: ptr cQSharedMemory, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSharedMemory_customEvent ".} =
  type Cb = proc(super: QSharedMemorycustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSharedMemory(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSharedMemory, signal: gen_qmetaobject.QMetaMethod): void =


  fQSharedMemory_virtualbase_connectNotify(self.h, signal.h)

type QSharedMemoryconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSharedMemory, slot: proc(super: QSharedMemoryconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSharedMemoryconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSharedMemory_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSharedMemory_connectNotify(self: ptr cQSharedMemory, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSharedMemory_connectNotify ".} =
  type Cb = proc(super: QSharedMemoryconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSharedMemory(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSharedMemory, signal: gen_qmetaobject.QMetaMethod): void =


  fQSharedMemory_virtualbase_disconnectNotify(self.h, signal.h)

type QSharedMemorydisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSharedMemory, slot: proc(super: QSharedMemorydisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSharedMemorydisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSharedMemory_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSharedMemory_disconnectNotify(self: ptr cQSharedMemory, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSharedMemory_disconnectNotify ".} =
  type Cb = proc(super: QSharedMemorydisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSharedMemory(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QSharedMemory): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSharedMemory_staticMetaObject())
proc delete*(self: QSharedMemory) =
  fcQSharedMemory_delete(self.h)
