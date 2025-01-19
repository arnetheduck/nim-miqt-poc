import Qt6WebChannel_libs

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

const cflags = gorge("pkg-config -cflags Qt6WebChannel")
{.compile("gen_qwebchannelabstracttransport.cpp", cflags).}


import gen_qwebchannelabstracttransport_types
export gen_qwebchannelabstracttransport_types

import
  gen_qcoreevent,
  gen_qjsonobject,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qcoreevent,
  gen_qjsonobject,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQWebChannelAbstractTransport*{.exportc: "QWebChannelAbstractTransport", incompleteStruct.} = object

proc fcQWebChannelAbstractTransport_new(): ptr cQWebChannelAbstractTransport {.importc: "QWebChannelAbstractTransport_new".}
proc fcQWebChannelAbstractTransport_new2(parent: pointer): ptr cQWebChannelAbstractTransport {.importc: "QWebChannelAbstractTransport_new2".}
proc fcQWebChannelAbstractTransport_metaObject(self: pointer, ): pointer {.importc: "QWebChannelAbstractTransport_metaObject".}
proc fcQWebChannelAbstractTransport_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebChannelAbstractTransport_metacast".}
proc fcQWebChannelAbstractTransport_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebChannelAbstractTransport_metacall".}
proc fcQWebChannelAbstractTransport_tr(s: cstring): struct_miqt_string {.importc: "QWebChannelAbstractTransport_tr".}
proc fcQWebChannelAbstractTransport_sendMessage(self: pointer, message: pointer): void {.importc: "QWebChannelAbstractTransport_sendMessage".}
proc fcQWebChannelAbstractTransport_messageReceived(self: pointer, message: pointer, transport: pointer): void {.importc: "QWebChannelAbstractTransport_messageReceived".}
proc fQWebChannelAbstractTransport_connect_messageReceived(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_connect_messageReceived".}
proc fcQWebChannelAbstractTransport_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebChannelAbstractTransport_tr2".}
proc fcQWebChannelAbstractTransport_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebChannelAbstractTransport_tr3".}
proc fQWebChannelAbstractTransport_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWebChannelAbstractTransport_virtualbase_metacall".}
proc fcQWebChannelAbstractTransport_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_override_virtual_metacall".}
proc fcQWebChannelAbstractTransport_override_virtual_sendMessage(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_override_virtual_sendMessage".}
proc fQWebChannelAbstractTransport_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWebChannelAbstractTransport_virtualbase_event".}
proc fcQWebChannelAbstractTransport_override_virtual_event(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_override_virtual_event".}
proc fQWebChannelAbstractTransport_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebChannelAbstractTransport_virtualbase_eventFilter".}
proc fcQWebChannelAbstractTransport_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_override_virtual_eventFilter".}
proc fQWebChannelAbstractTransport_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebChannelAbstractTransport_virtualbase_timerEvent".}
proc fcQWebChannelAbstractTransport_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_override_virtual_timerEvent".}
proc fQWebChannelAbstractTransport_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebChannelAbstractTransport_virtualbase_childEvent".}
proc fcQWebChannelAbstractTransport_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_override_virtual_childEvent".}
proc fQWebChannelAbstractTransport_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebChannelAbstractTransport_virtualbase_customEvent".}
proc fcQWebChannelAbstractTransport_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_override_virtual_customEvent".}
proc fQWebChannelAbstractTransport_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebChannelAbstractTransport_virtualbase_connectNotify".}
proc fcQWebChannelAbstractTransport_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_override_virtual_connectNotify".}
proc fQWebChannelAbstractTransport_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebChannelAbstractTransport_virtualbase_disconnectNotify".}
proc fcQWebChannelAbstractTransport_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebChannelAbstractTransport_override_virtual_disconnectNotify".}
proc fcQWebChannelAbstractTransport_staticMetaObject(): pointer {.importc: "QWebChannelAbstractTransport_staticMetaObject".}
proc fcQWebChannelAbstractTransport_delete(self: pointer) {.importc: "QWebChannelAbstractTransport_delete".}


func init*(T: type QWebChannelAbstractTransport, h: ptr cQWebChannelAbstractTransport): QWebChannelAbstractTransport =
  T(h: h)
proc create*(T: type QWebChannelAbstractTransport, ): QWebChannelAbstractTransport =

  QWebChannelAbstractTransport.init(fcQWebChannelAbstractTransport_new())
proc create*(T: type QWebChannelAbstractTransport, parent: gen_qobject.QObject): QWebChannelAbstractTransport =

  QWebChannelAbstractTransport.init(fcQWebChannelAbstractTransport_new2(parent.h))
proc metaObject*(self: QWebChannelAbstractTransport, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebChannelAbstractTransport_metaObject(self.h))

proc metacast*(self: QWebChannelAbstractTransport, param1: cstring): pointer =

  fcQWebChannelAbstractTransport_metacast(self.h, param1)

proc metacall*(self: QWebChannelAbstractTransport, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWebChannelAbstractTransport_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWebChannelAbstractTransport, s: cstring): string =

  let v_ms = fcQWebChannelAbstractTransport_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sendMessage*(self: QWebChannelAbstractTransport, message: gen_qjsonobject.QJsonObject): void =

  fcQWebChannelAbstractTransport_sendMessage(self.h, message.h)

proc messageReceived*(self: QWebChannelAbstractTransport, message: gen_qjsonobject.QJsonObject, transport: QWebChannelAbstractTransport): void =

  fcQWebChannelAbstractTransport_messageReceived(self.h, message.h, transport.h)

proc miqt_exec_callback_QWebChannelAbstractTransport_messageReceived(slot: int, message: pointer, transport: pointer) {.exportc.} =
  type Cb = proc(message: gen_qjsonobject.QJsonObject, transport: QWebChannelAbstractTransport)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qjsonobject.QJsonObject(h: message)

  let slotval2 = QWebChannelAbstractTransport(h: transport)


  nimfunc[](slotval1, slotval2)

proc onmessageReceived*(self: QWebChannelAbstractTransport, slot: proc(message: gen_qjsonobject.QJsonObject, transport: QWebChannelAbstractTransport)) =
  type Cb = proc(message: gen_qjsonobject.QJsonObject, transport: QWebChannelAbstractTransport)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQWebChannelAbstractTransport_connect_messageReceived(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QWebChannelAbstractTransport, s: cstring, c: cstring): string =

  let v_ms = fcQWebChannelAbstractTransport_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWebChannelAbstractTransport, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebChannelAbstractTransport_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QWebChannelAbstractTransport, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQWebChannelAbstractTransport_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWebChannelAbstractTransportmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QWebChannelAbstractTransport, slot: proc(super: QWebChannelAbstractTransportmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QWebChannelAbstractTransportmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannelAbstractTransport_metacall(self: ptr cQWebChannelAbstractTransport, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWebChannelAbstractTransport_metacall ".} =
  type Cb = proc(super: QWebChannelAbstractTransportmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QWebChannelAbstractTransport(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QWebChannelAbstractTransportsendMessageBase* = proc(message: gen_qjsonobject.QJsonObject): void
proc onsendMessage*(self: QWebChannelAbstractTransport, slot: proc(message: gen_qjsonobject.QJsonObject): void) =
  # TODO check subclass
  type Cb = proc(message: gen_qjsonobject.QJsonObject): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_override_virtual_sendMessage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannelAbstractTransport_sendMessage(self: ptr cQWebChannelAbstractTransport, slot: int, message: pointer): void {.exportc: "miqt_exec_callback_QWebChannelAbstractTransport_sendMessage ".} =
  type Cb = proc(message: gen_qjsonobject.QJsonObject): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qjsonobject.QJsonObject(h: message)


  nimfunc[](slotval1)
proc callVirtualBase_event(self: QWebChannelAbstractTransport, event: gen_qcoreevent.QEvent): bool =


  fQWebChannelAbstractTransport_virtualbase_event(self.h, event.h)

type QWebChannelAbstractTransporteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QWebChannelAbstractTransport, slot: proc(super: QWebChannelAbstractTransporteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebChannelAbstractTransporteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannelAbstractTransport_event(self: ptr cQWebChannelAbstractTransport, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWebChannelAbstractTransport_event ".} =
  type Cb = proc(super: QWebChannelAbstractTransporteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QWebChannelAbstractTransport(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QWebChannelAbstractTransport, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQWebChannelAbstractTransport_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebChannelAbstractTransporteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QWebChannelAbstractTransport, slot: proc(super: QWebChannelAbstractTransporteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebChannelAbstractTransporteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannelAbstractTransport_eventFilter(self: ptr cQWebChannelAbstractTransport, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebChannelAbstractTransport_eventFilter ".} =
  type Cb = proc(super: QWebChannelAbstractTransporteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QWebChannelAbstractTransport(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QWebChannelAbstractTransport, event: gen_qcoreevent.QTimerEvent): void =


  fQWebChannelAbstractTransport_virtualbase_timerEvent(self.h, event.h)

type QWebChannelAbstractTransporttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QWebChannelAbstractTransport, slot: proc(super: QWebChannelAbstractTransporttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebChannelAbstractTransporttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannelAbstractTransport_timerEvent(self: ptr cQWebChannelAbstractTransport, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebChannelAbstractTransport_timerEvent ".} =
  type Cb = proc(super: QWebChannelAbstractTransporttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QWebChannelAbstractTransport(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QWebChannelAbstractTransport, event: gen_qcoreevent.QChildEvent): void =


  fQWebChannelAbstractTransport_virtualbase_childEvent(self.h, event.h)

type QWebChannelAbstractTransportchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QWebChannelAbstractTransport, slot: proc(super: QWebChannelAbstractTransportchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebChannelAbstractTransportchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannelAbstractTransport_childEvent(self: ptr cQWebChannelAbstractTransport, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebChannelAbstractTransport_childEvent ".} =
  type Cb = proc(super: QWebChannelAbstractTransportchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QWebChannelAbstractTransport(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QWebChannelAbstractTransport, event: gen_qcoreevent.QEvent): void =


  fQWebChannelAbstractTransport_virtualbase_customEvent(self.h, event.h)

type QWebChannelAbstractTransportcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QWebChannelAbstractTransport, slot: proc(super: QWebChannelAbstractTransportcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebChannelAbstractTransportcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannelAbstractTransport_customEvent(self: ptr cQWebChannelAbstractTransport, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebChannelAbstractTransport_customEvent ".} =
  type Cb = proc(super: QWebChannelAbstractTransportcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QWebChannelAbstractTransport(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QWebChannelAbstractTransport, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebChannelAbstractTransport_virtualbase_connectNotify(self.h, signal.h)

type QWebChannelAbstractTransportconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QWebChannelAbstractTransport, slot: proc(super: QWebChannelAbstractTransportconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebChannelAbstractTransportconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannelAbstractTransport_connectNotify(self: ptr cQWebChannelAbstractTransport, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebChannelAbstractTransport_connectNotify ".} =
  type Cb = proc(super: QWebChannelAbstractTransportconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QWebChannelAbstractTransport(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QWebChannelAbstractTransport, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebChannelAbstractTransport_virtualbase_disconnectNotify(self.h, signal.h)

type QWebChannelAbstractTransportdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QWebChannelAbstractTransport, slot: proc(super: QWebChannelAbstractTransportdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebChannelAbstractTransportdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebChannelAbstractTransport_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebChannelAbstractTransport_disconnectNotify(self: ptr cQWebChannelAbstractTransport, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebChannelAbstractTransport_disconnectNotify ".} =
  type Cb = proc(super: QWebChannelAbstractTransportdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QWebChannelAbstractTransport(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QWebChannelAbstractTransport): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQWebChannelAbstractTransport_staticMetaObject())
proc delete*(self: QWebChannelAbstractTransport) =
  fcQWebChannelAbstractTransport_delete(self.h)
