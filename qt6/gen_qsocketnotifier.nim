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


type QSocketNotifierTypeEnum* = distinct cint
template Read*(_: type QSocketNotifierTypeEnum): untyped = 0
template Write*(_: type QSocketNotifierTypeEnum): untyped = 1
template ExceptionVal*(_: type QSocketNotifierTypeEnum): untyped = 2


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
proc fQSocketNotifier_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QSocketNotifier_virtualbase_metaObject".}
proc fcQSocketNotifier_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QSocketNotifier_override_virtual_metaObject".}
proc fQSocketNotifier_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QSocketNotifier_virtualbase_metacast".}
proc fcQSocketNotifier_override_virtual_metacast(self: pointer, slot: int) {.importc: "QSocketNotifier_override_virtual_metacast".}
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


func init*(T: type gen_qsocketnotifier_types.QSocketNotifier, h: ptr cQSocketNotifier): gen_qsocketnotifier_types.QSocketNotifier =
  T(h: h)
proc create*(T: type gen_qsocketnotifier_types.QSocketNotifier, param1: cint): gen_qsocketnotifier_types.QSocketNotifier =

  gen_qsocketnotifier_types.QSocketNotifier.init(fcQSocketNotifier_new(cint(param1)))
proc create*(T: type gen_qsocketnotifier_types.QSocketNotifier, socket: uint, param2: cint): gen_qsocketnotifier_types.QSocketNotifier =

  gen_qsocketnotifier_types.QSocketNotifier.init(fcQSocketNotifier_new2(socket, cint(param2)))
proc create*(T: type gen_qsocketnotifier_types.QSocketNotifier, param1: cint, parent: gen_qobject.QObject): gen_qsocketnotifier_types.QSocketNotifier =

  gen_qsocketnotifier_types.QSocketNotifier.init(fcQSocketNotifier_new3(cint(param1), parent.h))
proc create*(T: type gen_qsocketnotifier_types.QSocketNotifier, socket: uint, param2: cint, parent: gen_qobject.QObject): gen_qsocketnotifier_types.QSocketNotifier =

  gen_qsocketnotifier_types.QSocketNotifier.init(fcQSocketNotifier_new4(socket, cint(param2), parent.h))
proc metaObject*(self: gen_qsocketnotifier_types.QSocketNotifier, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSocketNotifier_metaObject(self.h))

proc metacast*(self: gen_qsocketnotifier_types.QSocketNotifier, param1: cstring): pointer =

  fcQSocketNotifier_metacast(self.h, param1)

proc metacall*(self: gen_qsocketnotifier_types.QSocketNotifier, param1: cint, param2: cint, param3: pointer): cint =

  fcQSocketNotifier_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsocketnotifier_types.QSocketNotifier, s: cstring): string =

  let v_ms = fcQSocketNotifier_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSocket*(self: gen_qsocketnotifier_types.QSocketNotifier, socket: uint): void =

  fcQSocketNotifier_setSocket(self.h, socket)

proc socket*(self: gen_qsocketnotifier_types.QSocketNotifier, ): uint =

  fcQSocketNotifier_socket(self.h)

proc typeX*(self: gen_qsocketnotifier_types.QSocketNotifier, ): cint =

  cint(fcQSocketNotifier_typeX(self.h))

proc isValid*(self: gen_qsocketnotifier_types.QSocketNotifier, ): bool =

  fcQSocketNotifier_isValid(self.h)

proc isEnabled*(self: gen_qsocketnotifier_types.QSocketNotifier, ): bool =

  fcQSocketNotifier_isEnabled(self.h)

proc setEnabled*(self: gen_qsocketnotifier_types.QSocketNotifier, enabled: bool): void =

  fcQSocketNotifier_setEnabled(self.h, enabled)

proc tr2*(_: type gen_qsocketnotifier_types.QSocketNotifier, s: cstring, c: cstring): string =

  let v_ms = fcQSocketNotifier_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qsocketnotifier_types.QSocketNotifier, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSocketNotifier_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QSocketNotifiermetaObject*(self: gen_qsocketnotifier_types.QSocketNotifier, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQSocketNotifier_virtualbase_metaObject(self.h))

type QSocketNotifiermetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qsocketnotifier_types.QSocketNotifier, slot: QSocketNotifiermetaObjectProc) =
  # TODO check subclass
  var tmp = new QSocketNotifiermetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSocketNotifier_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSocketNotifier_metaObject(self: ptr cQSocketNotifier, slot: int): pointer {.exportc: "miqt_exec_callback_QSocketNotifier_metaObject ".} =
  var nimfunc = cast[ptr QSocketNotifiermetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QSocketNotifiermetacast*(self: gen_qsocketnotifier_types.QSocketNotifier, param1: cstring): pointer =

  fQSocketNotifier_virtualbase_metacast(self.h, param1)

type QSocketNotifiermetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qsocketnotifier_types.QSocketNotifier, slot: QSocketNotifiermetacastProc) =
  # TODO check subclass
  var tmp = new QSocketNotifiermetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSocketNotifier_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSocketNotifier_metacast(self: ptr cQSocketNotifier, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QSocketNotifier_metacast ".} =
  var nimfunc = cast[ptr QSocketNotifiermetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSocketNotifiermetacall*(self: gen_qsocketnotifier_types.QSocketNotifier, param1: cint, param2: cint, param3: pointer): cint =

  fQSocketNotifier_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSocketNotifiermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsocketnotifier_types.QSocketNotifier, slot: QSocketNotifiermetacallProc) =
  # TODO check subclass
  var tmp = new QSocketNotifiermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSocketNotifier_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSocketNotifier_metacall(self: ptr cQSocketNotifier, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSocketNotifier_metacall ".} =
  var nimfunc = cast[ptr QSocketNotifiermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSocketNotifierevent*(self: gen_qsocketnotifier_types.QSocketNotifier, param1: gen_qcoreevent.QEvent): bool =

  fQSocketNotifier_virtualbase_event(self.h, param1.h)

type QSocketNotifiereventProc* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qsocketnotifier_types.QSocketNotifier, slot: QSocketNotifiereventProc) =
  # TODO check subclass
  var tmp = new QSocketNotifiereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSocketNotifier_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSocketNotifier_event(self: ptr cQSocketNotifier, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QSocketNotifier_event ".} =
  var nimfunc = cast[ptr QSocketNotifiereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSocketNotifiereventFilter*(self: gen_qsocketnotifier_types.QSocketNotifier, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQSocketNotifier_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSocketNotifiereventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qsocketnotifier_types.QSocketNotifier, slot: QSocketNotifiereventFilterProc) =
  # TODO check subclass
  var tmp = new QSocketNotifiereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSocketNotifier_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSocketNotifier_eventFilter(self: ptr cQSocketNotifier, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSocketNotifier_eventFilter ".} =
  var nimfunc = cast[ptr QSocketNotifiereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSocketNotifiertimerEvent*(self: gen_qsocketnotifier_types.QSocketNotifier, event: gen_qcoreevent.QTimerEvent): void =

  fQSocketNotifier_virtualbase_timerEvent(self.h, event.h)

type QSocketNotifiertimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qsocketnotifier_types.QSocketNotifier, slot: QSocketNotifiertimerEventProc) =
  # TODO check subclass
  var tmp = new QSocketNotifiertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSocketNotifier_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSocketNotifier_timerEvent(self: ptr cQSocketNotifier, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSocketNotifier_timerEvent ".} =
  var nimfunc = cast[ptr QSocketNotifiertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSocketNotifierchildEvent*(self: gen_qsocketnotifier_types.QSocketNotifier, event: gen_qcoreevent.QChildEvent): void =

  fQSocketNotifier_virtualbase_childEvent(self.h, event.h)

type QSocketNotifierchildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qsocketnotifier_types.QSocketNotifier, slot: QSocketNotifierchildEventProc) =
  # TODO check subclass
  var tmp = new QSocketNotifierchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSocketNotifier_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSocketNotifier_childEvent(self: ptr cQSocketNotifier, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSocketNotifier_childEvent ".} =
  var nimfunc = cast[ptr QSocketNotifierchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSocketNotifiercustomEvent*(self: gen_qsocketnotifier_types.QSocketNotifier, event: gen_qcoreevent.QEvent): void =

  fQSocketNotifier_virtualbase_customEvent(self.h, event.h)

type QSocketNotifiercustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qsocketnotifier_types.QSocketNotifier, slot: QSocketNotifiercustomEventProc) =
  # TODO check subclass
  var tmp = new QSocketNotifiercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSocketNotifier_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSocketNotifier_customEvent(self: ptr cQSocketNotifier, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSocketNotifier_customEvent ".} =
  var nimfunc = cast[ptr QSocketNotifiercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QSocketNotifierconnectNotify*(self: gen_qsocketnotifier_types.QSocketNotifier, signal: gen_qmetaobject.QMetaMethod): void =

  fQSocketNotifier_virtualbase_connectNotify(self.h, signal.h)

type QSocketNotifierconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qsocketnotifier_types.QSocketNotifier, slot: QSocketNotifierconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSocketNotifierconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSocketNotifier_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSocketNotifier_connectNotify(self: ptr cQSocketNotifier, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSocketNotifier_connectNotify ".} =
  var nimfunc = cast[ptr QSocketNotifierconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSocketNotifierdisconnectNotify*(self: gen_qsocketnotifier_types.QSocketNotifier, signal: gen_qmetaobject.QMetaMethod): void =

  fQSocketNotifier_virtualbase_disconnectNotify(self.h, signal.h)

type QSocketNotifierdisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsocketnotifier_types.QSocketNotifier, slot: QSocketNotifierdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSocketNotifierdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSocketNotifier_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSocketNotifier_disconnectNotify(self: ptr cQSocketNotifier, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSocketNotifier_disconnectNotify ".} =
  var nimfunc = cast[ptr QSocketNotifierdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsocketnotifier_types.QSocketNotifier): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSocketNotifier_staticMetaObject())
proc delete*(self: gen_qsocketnotifier_types.QSocketNotifier) =
  fcQSocketNotifier_delete(self.h)

func init*(T: type gen_qsocketnotifier_types.QSocketDescriptor, h: ptr cQSocketDescriptor): gen_qsocketnotifier_types.QSocketDescriptor =
  T(h: h)
proc create*(T: type gen_qsocketnotifier_types.QSocketDescriptor, ): gen_qsocketnotifier_types.QSocketDescriptor =

  gen_qsocketnotifier_types.QSocketDescriptor.init(fcQSocketDescriptor_new())
proc create*(T: type gen_qsocketnotifier_types.QSocketDescriptor, param1: gen_qsocketnotifier_types.QSocketDescriptor): gen_qsocketnotifier_types.QSocketDescriptor =

  gen_qsocketnotifier_types.QSocketDescriptor.init(fcQSocketDescriptor_new2(param1.h))
proc create*(T: type gen_qsocketnotifier_types.QSocketDescriptor, descriptor: cint): gen_qsocketnotifier_types.QSocketDescriptor =

  gen_qsocketnotifier_types.QSocketDescriptor.init(fcQSocketDescriptor_new3(descriptor))
proc ToInt*(self: gen_qsocketnotifier_types.QSocketDescriptor, ): cint =

  fcQSocketDescriptor_ToInt(self.h)

proc isValid*(self: gen_qsocketnotifier_types.QSocketDescriptor, ): bool =

  fcQSocketDescriptor_isValid(self.h)

proc delete*(self: gen_qsocketnotifier_types.QSocketDescriptor) =
  fcQSocketDescriptor_delete(self.h)
