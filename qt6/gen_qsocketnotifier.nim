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
{.compile("gen_qsocketnotifier.cpp", cflags).}


type QSocketNotifierType* = cint
const
  QSocketNotifierRead* = 0
  QSocketNotifierWrite* = 1
  QSocketNotifierException* = 2



import gen_qsocketnotifier_types
export gen_qsocketnotifier_types

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

type cQSocketNotifier*{.exportc: "QSocketNotifier", incompleteStruct.} = object
type cQSocketDescriptor*{.exportc: "QSocketDescriptor", incompleteStruct.} = object

proc fcQSocketNotifier_new(param1: cint): ptr cQSocketNotifier {.importc: "QSocketNotifier_new".}
proc fcQSocketNotifier_new2(socket: uint, param2: cint): ptr cQSocketNotifier {.importc: "QSocketNotifier_new2".}
proc fcQSocketNotifier_new3(param1: cint, parent: pointer): ptr cQSocketNotifier {.importc: "QSocketNotifier_new3".}
proc fcQSocketNotifier_new4(socket: uint, param2: cint, parent: pointer): ptr cQSocketNotifier {.importc: "QSocketNotifier_new4".}
proc fcQSocketNotifier_metaObject(self: pointer, ): pointer {.importc: "QSocketNotifier_metaObject".}
proc fcQSocketNotifier_metacast(self: pointer, param1: cstring): pointer {.importc: "QSocketNotifier_metacast".}
proc fcQSocketNotifier_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSocketNotifier_metacall".}
proc fcQSocketNotifier_tr(s: cstring): struct_miqt_string {.importc: "QSocketNotifier_tr".}
proc fcQSocketNotifier_setSocket(self: pointer, socket: uint): void {.importc: "QSocketNotifier_setSocket".}
proc fcQSocketNotifier_socket(self: pointer, ): uint {.importc: "QSocketNotifier_socket".}
proc fcQSocketNotifier_typeX(self: pointer, ): cint {.importc: "QSocketNotifier_type".}
proc fcQSocketNotifier_isValid(self: pointer, ): bool {.importc: "QSocketNotifier_isValid".}
proc fcQSocketNotifier_isEnabled(self: pointer, ): bool {.importc: "QSocketNotifier_isEnabled".}
proc fcQSocketNotifier_setEnabled(self: pointer, enabled: bool): void {.importc: "QSocketNotifier_setEnabled".}
proc fcQSocketNotifier_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSocketNotifier_tr2".}
proc fcQSocketNotifier_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSocketNotifier_tr3".}
proc fQSocketNotifier_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSocketNotifier_virtualbase_metacall".}
proc fcQSocketNotifier_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSocketNotifier_override_virtual_metacall".}
proc fQSocketNotifier_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QSocketNotifier_virtualbase_event".}
proc fcQSocketNotifier_override_virtual_event(self: pointer, slot: int) {.importc: "QSocketNotifier_override_virtual_event".}
proc fQSocketNotifier_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSocketNotifier_virtualbase_eventFilter".}
proc fcQSocketNotifier_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSocketNotifier_override_virtual_eventFilter".}
proc fQSocketNotifier_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSocketNotifier_virtualbase_timerEvent".}
proc fcQSocketNotifier_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSocketNotifier_override_virtual_timerEvent".}
proc fQSocketNotifier_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSocketNotifier_virtualbase_childEvent".}
proc fcQSocketNotifier_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSocketNotifier_override_virtual_childEvent".}
proc fQSocketNotifier_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSocketNotifier_virtualbase_customEvent".}
proc fcQSocketNotifier_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSocketNotifier_override_virtual_customEvent".}
proc fQSocketNotifier_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSocketNotifier_virtualbase_connectNotify".}
proc fcQSocketNotifier_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSocketNotifier_override_virtual_connectNotify".}
proc fQSocketNotifier_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSocketNotifier_virtualbase_disconnectNotify".}
proc fcQSocketNotifier_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSocketNotifier_override_virtual_disconnectNotify".}
proc fcQSocketNotifier_staticMetaObject(): pointer {.importc: "QSocketNotifier_staticMetaObject".}
proc fcQSocketNotifier_delete(self: pointer) {.importc: "QSocketNotifier_delete".}
proc fcQSocketDescriptor_new(): ptr cQSocketDescriptor {.importc: "QSocketDescriptor_new".}
proc fcQSocketDescriptor_new2(param1: pointer): ptr cQSocketDescriptor {.importc: "QSocketDescriptor_new2".}
proc fcQSocketDescriptor_new3(descriptor: cint): ptr cQSocketDescriptor {.importc: "QSocketDescriptor_new3".}
proc fcQSocketDescriptor_ToInt(self: pointer, ): cint {.importc: "QSocketDescriptor_ToInt".}
proc fcQSocketDescriptor_isValid(self: pointer, ): bool {.importc: "QSocketDescriptor_isValid".}
proc fcQSocketDescriptor_delete(self: pointer) {.importc: "QSocketDescriptor_delete".}


func init*(T: type QSocketNotifier, h: ptr cQSocketNotifier): QSocketNotifier =
  T(h: h)
proc create*(T: type QSocketNotifier, param1: QSocketNotifierType): QSocketNotifier =

  QSocketNotifier.init(fcQSocketNotifier_new(cint(param1)))
proc create*(T: type QSocketNotifier, socket: uint, param2: QSocketNotifierType): QSocketNotifier =

  QSocketNotifier.init(fcQSocketNotifier_new2(socket, cint(param2)))
proc create*(T: type QSocketNotifier, param1: QSocketNotifierType, parent: gen_qobject.QObject): QSocketNotifier =

  QSocketNotifier.init(fcQSocketNotifier_new3(cint(param1), parent.h))
proc create*(T: type QSocketNotifier, socket: uint, param2: QSocketNotifierType, parent: gen_qobject.QObject): QSocketNotifier =

  QSocketNotifier.init(fcQSocketNotifier_new4(socket, cint(param2), parent.h))
proc metaObject*(self: QSocketNotifier, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSocketNotifier_metaObject(self.h))

proc metacast*(self: QSocketNotifier, param1: cstring): pointer =

  fcQSocketNotifier_metacast(self.h, param1)

proc metacall*(self: QSocketNotifier, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSocketNotifier_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSocketNotifier, s: cstring): string =

  let v_ms = fcQSocketNotifier_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSocket*(self: QSocketNotifier, socket: uint): void =

  fcQSocketNotifier_setSocket(self.h, socket)

proc socket*(self: QSocketNotifier, ): uint =

  fcQSocketNotifier_socket(self.h)

proc typeX*(self: QSocketNotifier, ): QSocketNotifierType =

  QSocketNotifierType(fcQSocketNotifier_typeX(self.h))

proc isValid*(self: QSocketNotifier, ): bool =

  fcQSocketNotifier_isValid(self.h)

proc isEnabled*(self: QSocketNotifier, ): bool =

  fcQSocketNotifier_isEnabled(self.h)

proc setEnabled*(self: QSocketNotifier, enabled: bool): void =

  fcQSocketNotifier_setEnabled(self.h, enabled)

proc tr2*(_: type QSocketNotifier, s: cstring, c: cstring): string =

  let v_ms = fcQSocketNotifier_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSocketNotifier, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSocketNotifier_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QSocketNotifier, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSocketNotifier_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSocketNotifiermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSocketNotifier, slot: proc(super: QSocketNotifiermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSocketNotifiermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSocketNotifier_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSocketNotifier_metacall(self: ptr cQSocketNotifier, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSocketNotifier_metacall ".} =
  type Cb = proc(super: QSocketNotifiermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSocketNotifier(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QSocketNotifier, param1: gen_qcoreevent.QEvent): bool =


  fQSocketNotifier_virtualbase_event(self.h, param1.h)

type QSocketNotifiereventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSocketNotifier, slot: proc(super: QSocketNotifiereventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSocketNotifiereventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSocketNotifier_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSocketNotifier_event(self: ptr cQSocketNotifier, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QSocketNotifier_event ".} =
  type Cb = proc(super: QSocketNotifiereventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSocketNotifier(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSocketNotifier, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSocketNotifier_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSocketNotifiereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSocketNotifier, slot: proc(super: QSocketNotifiereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSocketNotifiereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSocketNotifier_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSocketNotifier_eventFilter(self: ptr cQSocketNotifier, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSocketNotifier_eventFilter ".} =
  type Cb = proc(super: QSocketNotifiereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSocketNotifier(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSocketNotifier, event: gen_qcoreevent.QTimerEvent): void =


  fQSocketNotifier_virtualbase_timerEvent(self.h, event.h)

type QSocketNotifiertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSocketNotifier, slot: proc(super: QSocketNotifiertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSocketNotifiertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSocketNotifier_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSocketNotifier_timerEvent(self: ptr cQSocketNotifier, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSocketNotifier_timerEvent ".} =
  type Cb = proc(super: QSocketNotifiertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSocketNotifier(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSocketNotifier, event: gen_qcoreevent.QChildEvent): void =


  fQSocketNotifier_virtualbase_childEvent(self.h, event.h)

type QSocketNotifierchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSocketNotifier, slot: proc(super: QSocketNotifierchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSocketNotifierchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSocketNotifier_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSocketNotifier_childEvent(self: ptr cQSocketNotifier, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSocketNotifier_childEvent ".} =
  type Cb = proc(super: QSocketNotifierchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSocketNotifier(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSocketNotifier, event: gen_qcoreevent.QEvent): void =


  fQSocketNotifier_virtualbase_customEvent(self.h, event.h)

type QSocketNotifiercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSocketNotifier, slot: proc(super: QSocketNotifiercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSocketNotifiercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSocketNotifier_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSocketNotifier_customEvent(self: ptr cQSocketNotifier, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSocketNotifier_customEvent ".} =
  type Cb = proc(super: QSocketNotifiercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSocketNotifier(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSocketNotifier, signal: gen_qmetaobject.QMetaMethod): void =


  fQSocketNotifier_virtualbase_connectNotify(self.h, signal.h)

type QSocketNotifierconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSocketNotifier, slot: proc(super: QSocketNotifierconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSocketNotifierconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSocketNotifier_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSocketNotifier_connectNotify(self: ptr cQSocketNotifier, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSocketNotifier_connectNotify ".} =
  type Cb = proc(super: QSocketNotifierconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSocketNotifier(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSocketNotifier, signal: gen_qmetaobject.QMetaMethod): void =


  fQSocketNotifier_virtualbase_disconnectNotify(self.h, signal.h)

type QSocketNotifierdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSocketNotifier, slot: proc(super: QSocketNotifierdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSocketNotifierdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSocketNotifier_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSocketNotifier_disconnectNotify(self: ptr cQSocketNotifier, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSocketNotifier_disconnectNotify ".} =
  type Cb = proc(super: QSocketNotifierdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSocketNotifier(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QSocketNotifier): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSocketNotifier_staticMetaObject())
proc delete*(self: QSocketNotifier) =
  fcQSocketNotifier_delete(self.h)

func init*(T: type QSocketDescriptor, h: ptr cQSocketDescriptor): QSocketDescriptor =
  T(h: h)
proc create*(T: type QSocketDescriptor, ): QSocketDescriptor =

  QSocketDescriptor.init(fcQSocketDescriptor_new())
proc create*(T: type QSocketDescriptor, param1: QSocketDescriptor): QSocketDescriptor =

  QSocketDescriptor.init(fcQSocketDescriptor_new2(param1.h))
proc create*(T: type QSocketDescriptor, descriptor: cint): QSocketDescriptor =

  QSocketDescriptor.init(fcQSocketDescriptor_new3(descriptor))
proc ToInt*(self: QSocketDescriptor, ): cint =

  fcQSocketDescriptor_ToInt(self.h)

proc isValid*(self: QSocketDescriptor, ): bool =

  fcQSocketDescriptor_isValid(self.h)

proc delete*(self: QSocketDescriptor) =
  fcQSocketDescriptor_delete(self.h)
