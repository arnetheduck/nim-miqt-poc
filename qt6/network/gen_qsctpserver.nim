import Qt6Network_libs

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

const cflags = gorge("pkg-config -cflags Qt6Network")
{.compile("gen_qsctpserver.cpp", cflags).}


import gen_qsctpserver_types
export gen_qsctpserver_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsctpsocket,
  gen_qtcpserver,
  gen_qtcpsocket
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qsctpsocket,
  gen_qtcpserver,
  gen_qtcpsocket

type cQSctpServer*{.exportc: "QSctpServer", incompleteStruct.} = object

proc fcQSctpServer_new(): ptr cQSctpServer {.importc: "QSctpServer_new".}
proc fcQSctpServer_new2(parent: pointer): ptr cQSctpServer {.importc: "QSctpServer_new2".}
proc fcQSctpServer_metaObject(self: pointer, ): pointer {.importc: "QSctpServer_metaObject".}
proc fcQSctpServer_metacast(self: pointer, param1: cstring): pointer {.importc: "QSctpServer_metacast".}
proc fcQSctpServer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSctpServer_metacall".}
proc fcQSctpServer_tr(s: cstring): struct_miqt_string {.importc: "QSctpServer_tr".}
proc fcQSctpServer_setMaximumChannelCount(self: pointer, count: cint): void {.importc: "QSctpServer_setMaximumChannelCount".}
proc fcQSctpServer_maximumChannelCount(self: pointer, ): cint {.importc: "QSctpServer_maximumChannelCount".}
proc fcQSctpServer_nextPendingDatagramConnection(self: pointer, ): pointer {.importc: "QSctpServer_nextPendingDatagramConnection".}
proc fcQSctpServer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSctpServer_tr2".}
proc fcQSctpServer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSctpServer_tr3".}
proc fQSctpServer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSctpServer_virtualbase_metacall".}
proc fcQSctpServer_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_metacall".}
proc fQSctpServer_virtualbase_incomingConnection(self: pointer, handle: uint): void{.importc: "QSctpServer_virtualbase_incomingConnection".}
proc fcQSctpServer_override_virtual_incomingConnection(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_incomingConnection".}
proc fQSctpServer_virtualbase_hasPendingConnections(self: pointer, ): bool{.importc: "QSctpServer_virtualbase_hasPendingConnections".}
proc fcQSctpServer_override_virtual_hasPendingConnections(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_hasPendingConnections".}
proc fQSctpServer_virtualbase_nextPendingConnection(self: pointer, ): pointer{.importc: "QSctpServer_virtualbase_nextPendingConnection".}
proc fcQSctpServer_override_virtual_nextPendingConnection(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_nextPendingConnection".}
proc fQSctpServer_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSctpServer_virtualbase_event".}
proc fcQSctpServer_override_virtual_event(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_event".}
proc fQSctpServer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSctpServer_virtualbase_eventFilter".}
proc fcQSctpServer_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_eventFilter".}
proc fQSctpServer_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSctpServer_virtualbase_timerEvent".}
proc fcQSctpServer_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_timerEvent".}
proc fQSctpServer_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSctpServer_virtualbase_childEvent".}
proc fcQSctpServer_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_childEvent".}
proc fQSctpServer_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSctpServer_virtualbase_customEvent".}
proc fcQSctpServer_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_customEvent".}
proc fQSctpServer_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSctpServer_virtualbase_connectNotify".}
proc fcQSctpServer_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_connectNotify".}
proc fQSctpServer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSctpServer_virtualbase_disconnectNotify".}
proc fcQSctpServer_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSctpServer_override_virtual_disconnectNotify".}
proc fcQSctpServer_delete(self: pointer) {.importc: "QSctpServer_delete".}


func init*(T: type QSctpServer, h: ptr cQSctpServer): QSctpServer =
  T(h: h)
proc create*(T: type QSctpServer, ): QSctpServer =

  QSctpServer.init(fcQSctpServer_new())
proc create*(T: type QSctpServer, parent: gen_qobject.QObject): QSctpServer =

  QSctpServer.init(fcQSctpServer_new2(parent.h))
proc metaObject*(self: QSctpServer, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSctpServer_metaObject(self.h))

proc metacast*(self: QSctpServer, param1: cstring): pointer =

  fcQSctpServer_metacast(self.h, param1)

proc metacall*(self: QSctpServer, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSctpServer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSctpServer, s: cstring): string =

  let v_ms = fcQSctpServer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setMaximumChannelCount*(self: QSctpServer, count: cint): void =

  fcQSctpServer_setMaximumChannelCount(self.h, count)

proc maximumChannelCount*(self: QSctpServer, ): cint =

  fcQSctpServer_maximumChannelCount(self.h)

proc nextPendingDatagramConnection*(self: QSctpServer, ): gen_qsctpsocket.QSctpSocket =

  gen_qsctpsocket.QSctpSocket(h: fcQSctpServer_nextPendingDatagramConnection(self.h))

proc tr2*(_: type QSctpServer, s: cstring, c: cstring): string =

  let v_ms = fcQSctpServer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSctpServer, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSctpServer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QSctpServer, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSctpServer_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSctpServermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSctpServer, slot: proc(super: QSctpServermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSctpServermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_metacall(self: ptr cQSctpServer, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSctpServer_metacall ".} =
  type Cb = proc(super: QSctpServermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSctpServer(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_incomingConnection(self: QSctpServer, handle: uint): void =


  fQSctpServer_virtualbase_incomingConnection(self.h, handle)

type QSctpServerincomingConnectionBase* = proc(handle: uint): void
proc onincomingConnection*(self: QSctpServer, slot: proc(super: QSctpServerincomingConnectionBase, handle: uint): void) =
  # TODO check subclass
  type Cb = proc(super: QSctpServerincomingConnectionBase, handle: uint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_incomingConnection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_incomingConnection(self: ptr cQSctpServer, slot: int, handle: uint): void {.exportc: "miqt_exec_callback_QSctpServer_incomingConnection ".} =
  type Cb = proc(super: QSctpServerincomingConnectionBase, handle: uint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(handle: uint): auto =
    callVirtualBase_incomingConnection(QSctpServer(h: self), handle)
  let slotval1 = handle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_hasPendingConnections(self: QSctpServer, ): bool =


  fQSctpServer_virtualbase_hasPendingConnections(self.h)

type QSctpServerhasPendingConnectionsBase* = proc(): bool
proc onhasPendingConnections*(self: QSctpServer, slot: proc(super: QSctpServerhasPendingConnectionsBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSctpServerhasPendingConnectionsBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_hasPendingConnections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_hasPendingConnections(self: ptr cQSctpServer, slot: int): bool {.exportc: "miqt_exec_callback_QSctpServer_hasPendingConnections ".} =
  type Cb = proc(super: QSctpServerhasPendingConnectionsBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasPendingConnections(QSctpServer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_nextPendingConnection(self: QSctpServer, ): gen_qtcpsocket.QTcpSocket =


  gen_qtcpsocket.QTcpSocket(h: fQSctpServer_virtualbase_nextPendingConnection(self.h))

type QSctpServernextPendingConnectionBase* = proc(): gen_qtcpsocket.QTcpSocket
proc onnextPendingConnection*(self: QSctpServer, slot: proc(super: QSctpServernextPendingConnectionBase): gen_qtcpsocket.QTcpSocket) =
  # TODO check subclass
  type Cb = proc(super: QSctpServernextPendingConnectionBase): gen_qtcpsocket.QTcpSocket
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_nextPendingConnection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_nextPendingConnection(self: ptr cQSctpServer, slot: int): pointer {.exportc: "miqt_exec_callback_QSctpServer_nextPendingConnection ".} =
  type Cb = proc(super: QSctpServernextPendingConnectionBase): gen_qtcpsocket.QTcpSocket
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_nextPendingConnection(QSctpServer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QSctpServer, event: gen_qcoreevent.QEvent): bool =


  fQSctpServer_virtualbase_event(self.h, event.h)

type QSctpServereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSctpServer, slot: proc(super: QSctpServereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSctpServereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_event(self: ptr cQSctpServer, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSctpServer_event ".} =
  type Cb = proc(super: QSctpServereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSctpServer(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSctpServer, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSctpServer_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSctpServereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSctpServer, slot: proc(super: QSctpServereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSctpServereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_eventFilter(self: ptr cQSctpServer, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSctpServer_eventFilter ".} =
  type Cb = proc(super: QSctpServereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSctpServer(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSctpServer, event: gen_qcoreevent.QTimerEvent): void =


  fQSctpServer_virtualbase_timerEvent(self.h, event.h)

type QSctpServertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSctpServer, slot: proc(super: QSctpServertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSctpServertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_timerEvent(self: ptr cQSctpServer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSctpServer_timerEvent ".} =
  type Cb = proc(super: QSctpServertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSctpServer(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSctpServer, event: gen_qcoreevent.QChildEvent): void =


  fQSctpServer_virtualbase_childEvent(self.h, event.h)

type QSctpServerchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSctpServer, slot: proc(super: QSctpServerchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSctpServerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_childEvent(self: ptr cQSctpServer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSctpServer_childEvent ".} =
  type Cb = proc(super: QSctpServerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSctpServer(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSctpServer, event: gen_qcoreevent.QEvent): void =


  fQSctpServer_virtualbase_customEvent(self.h, event.h)

type QSctpServercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSctpServer, slot: proc(super: QSctpServercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSctpServercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_customEvent(self: ptr cQSctpServer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSctpServer_customEvent ".} =
  type Cb = proc(super: QSctpServercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSctpServer(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSctpServer, signal: gen_qmetaobject.QMetaMethod): void =


  fQSctpServer_virtualbase_connectNotify(self.h, signal.h)

type QSctpServerconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSctpServer, slot: proc(super: QSctpServerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSctpServerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_connectNotify(self: ptr cQSctpServer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSctpServer_connectNotify ".} =
  type Cb = proc(super: QSctpServerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSctpServer(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSctpServer, signal: gen_qmetaobject.QMetaMethod): void =


  fQSctpServer_virtualbase_disconnectNotify(self.h, signal.h)

type QSctpServerdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSctpServer, slot: proc(super: QSctpServerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSctpServerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSctpServer_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSctpServer_disconnectNotify(self: ptr cQSctpServer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSctpServer_disconnectNotify ".} =
  type Cb = proc(super: QSctpServerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSctpServer(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QSctpServer) =
  fcQSctpServer_delete(self.h)
