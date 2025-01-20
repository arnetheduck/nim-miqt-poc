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
{.compile("gen_qtcpserver.cpp", cflags).}


import gen_qtcpserver_types
export gen_qtcpserver_types

import
  gen_qabstractsocket,
  gen_qcoreevent,
  gen_qhostaddress,
  gen_qmetaobject,
  gen_qnetworkproxy,
  gen_qobject,
  gen_qobjectdefs,
  gen_qtcpsocket
export
  gen_qabstractsocket,
  gen_qcoreevent,
  gen_qhostaddress,
  gen_qmetaobject,
  gen_qnetworkproxy,
  gen_qobject,
  gen_qobjectdefs,
  gen_qtcpsocket

type cQTcpServer*{.exportc: "QTcpServer", incompleteStruct.} = object

proc fcQTcpServer_new(): ptr cQTcpServer {.importc: "QTcpServer_new".}
proc fcQTcpServer_new2(parent: pointer): ptr cQTcpServer {.importc: "QTcpServer_new2".}
proc fcQTcpServer_metaObject(self: pointer, ): pointer {.importc: "QTcpServer_metaObject".}
proc fcQTcpServer_metacast(self: pointer, param1: cstring): pointer {.importc: "QTcpServer_metacast".}
proc fcQTcpServer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTcpServer_metacall".}
proc fcQTcpServer_tr(s: cstring): struct_miqt_string {.importc: "QTcpServer_tr".}
proc fcQTcpServer_listen(self: pointer, ): bool {.importc: "QTcpServer_listen".}
proc fcQTcpServer_close(self: pointer, ): void {.importc: "QTcpServer_close".}
proc fcQTcpServer_isListening(self: pointer, ): bool {.importc: "QTcpServer_isListening".}
proc fcQTcpServer_setMaxPendingConnections(self: pointer, numConnections: cint): void {.importc: "QTcpServer_setMaxPendingConnections".}
proc fcQTcpServer_maxPendingConnections(self: pointer, ): cint {.importc: "QTcpServer_maxPendingConnections".}
proc fcQTcpServer_setListenBacklogSize(self: pointer, size: cint): void {.importc: "QTcpServer_setListenBacklogSize".}
proc fcQTcpServer_listenBacklogSize(self: pointer, ): cint {.importc: "QTcpServer_listenBacklogSize".}
proc fcQTcpServer_serverPort(self: pointer, ): cushort {.importc: "QTcpServer_serverPort".}
proc fcQTcpServer_serverAddress(self: pointer, ): pointer {.importc: "QTcpServer_serverAddress".}
proc fcQTcpServer_socketDescriptor(self: pointer, ): uint {.importc: "QTcpServer_socketDescriptor".}
proc fcQTcpServer_setSocketDescriptor(self: pointer, socketDescriptor: uint): bool {.importc: "QTcpServer_setSocketDescriptor".}
proc fcQTcpServer_waitForNewConnection(self: pointer, ): bool {.importc: "QTcpServer_waitForNewConnection".}
proc fcQTcpServer_hasPendingConnections(self: pointer, ): bool {.importc: "QTcpServer_hasPendingConnections".}
proc fcQTcpServer_nextPendingConnection(self: pointer, ): pointer {.importc: "QTcpServer_nextPendingConnection".}
proc fcQTcpServer_serverError(self: pointer, ): cint {.importc: "QTcpServer_serverError".}
proc fcQTcpServer_errorString(self: pointer, ): struct_miqt_string {.importc: "QTcpServer_errorString".}
proc fcQTcpServer_pauseAccepting(self: pointer, ): void {.importc: "QTcpServer_pauseAccepting".}
proc fcQTcpServer_resumeAccepting(self: pointer, ): void {.importc: "QTcpServer_resumeAccepting".}
proc fcQTcpServer_setProxy(self: pointer, networkProxy: pointer): void {.importc: "QTcpServer_setProxy".}
proc fcQTcpServer_proxy(self: pointer, ): pointer {.importc: "QTcpServer_proxy".}
proc fcQTcpServer_newConnection(self: pointer, ): void {.importc: "QTcpServer_newConnection".}
proc fQTcpServer_connect_newConnection(self: pointer, slot: int) {.importc: "QTcpServer_connect_newConnection".}
proc fcQTcpServer_acceptError(self: pointer, socketError: cint): void {.importc: "QTcpServer_acceptError".}
proc fQTcpServer_connect_acceptError(self: pointer, slot: int) {.importc: "QTcpServer_connect_acceptError".}
proc fcQTcpServer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTcpServer_tr2".}
proc fcQTcpServer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTcpServer_tr3".}
proc fcQTcpServer_listen1(self: pointer, address: pointer): bool {.importc: "QTcpServer_listen1".}
proc fcQTcpServer_listen2(self: pointer, address: pointer, port: cushort): bool {.importc: "QTcpServer_listen2".}
proc fcQTcpServer_waitForNewConnection1(self: pointer, msec: cint): bool {.importc: "QTcpServer_waitForNewConnection1".}
proc fcQTcpServer_waitForNewConnection2(self: pointer, msec: cint, timedOut: ptr bool): bool {.importc: "QTcpServer_waitForNewConnection2".}
proc fQTcpServer_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTcpServer_virtualbase_metaObject".}
proc fcQTcpServer_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_metaObject".}
proc fQTcpServer_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTcpServer_virtualbase_metacast".}
proc fcQTcpServer_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_metacast".}
proc fQTcpServer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTcpServer_virtualbase_metacall".}
proc fcQTcpServer_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_metacall".}
proc fQTcpServer_virtualbase_hasPendingConnections(self: pointer, ): bool{.importc: "QTcpServer_virtualbase_hasPendingConnections".}
proc fcQTcpServer_override_virtual_hasPendingConnections(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_hasPendingConnections".}
proc fQTcpServer_virtualbase_nextPendingConnection(self: pointer, ): pointer{.importc: "QTcpServer_virtualbase_nextPendingConnection".}
proc fcQTcpServer_override_virtual_nextPendingConnection(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_nextPendingConnection".}
proc fQTcpServer_virtualbase_incomingConnection(self: pointer, handle: uint): void{.importc: "QTcpServer_virtualbase_incomingConnection".}
proc fcQTcpServer_override_virtual_incomingConnection(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_incomingConnection".}
proc fQTcpServer_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTcpServer_virtualbase_event".}
proc fcQTcpServer_override_virtual_event(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_event".}
proc fQTcpServer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTcpServer_virtualbase_eventFilter".}
proc fcQTcpServer_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_eventFilter".}
proc fQTcpServer_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTcpServer_virtualbase_timerEvent".}
proc fcQTcpServer_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_timerEvent".}
proc fQTcpServer_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTcpServer_virtualbase_childEvent".}
proc fcQTcpServer_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_childEvent".}
proc fQTcpServer_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTcpServer_virtualbase_customEvent".}
proc fcQTcpServer_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_customEvent".}
proc fQTcpServer_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTcpServer_virtualbase_connectNotify".}
proc fcQTcpServer_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_connectNotify".}
proc fQTcpServer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTcpServer_virtualbase_disconnectNotify".}
proc fcQTcpServer_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTcpServer_override_virtual_disconnectNotify".}
proc fcQTcpServer_staticMetaObject(): pointer {.importc: "QTcpServer_staticMetaObject".}
proc fcQTcpServer_delete(self: pointer) {.importc: "QTcpServer_delete".}


func init*(T: type QTcpServer, h: ptr cQTcpServer): QTcpServer =
  T(h: h)
proc create*(T: type QTcpServer, ): QTcpServer =

  QTcpServer.init(fcQTcpServer_new())
proc create*(T: type QTcpServer, parent: gen_qobject.QObject): QTcpServer =

  QTcpServer.init(fcQTcpServer_new2(parent.h))
proc metaObject*(self: QTcpServer, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTcpServer_metaObject(self.h))

proc metacast*(self: QTcpServer, param1: cstring): pointer =

  fcQTcpServer_metacast(self.h, param1)

proc metacall*(self: QTcpServer, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTcpServer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTcpServer, s: cstring): string =

  let v_ms = fcQTcpServer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc listen*(self: QTcpServer, ): bool =

  fcQTcpServer_listen(self.h)

proc close*(self: QTcpServer, ): void =

  fcQTcpServer_close(self.h)

proc isListening*(self: QTcpServer, ): bool =

  fcQTcpServer_isListening(self.h)

proc setMaxPendingConnections*(self: QTcpServer, numConnections: cint): void =

  fcQTcpServer_setMaxPendingConnections(self.h, numConnections)

proc maxPendingConnections*(self: QTcpServer, ): cint =

  fcQTcpServer_maxPendingConnections(self.h)

proc setListenBacklogSize*(self: QTcpServer, size: cint): void =

  fcQTcpServer_setListenBacklogSize(self.h, size)

proc listenBacklogSize*(self: QTcpServer, ): cint =

  fcQTcpServer_listenBacklogSize(self.h)

proc serverPort*(self: QTcpServer, ): cushort =

  fcQTcpServer_serverPort(self.h)

proc serverAddress*(self: QTcpServer, ): gen_qhostaddress.QHostAddress =

  gen_qhostaddress.QHostAddress(h: fcQTcpServer_serverAddress(self.h))

proc socketDescriptor*(self: QTcpServer, ): uint =

  fcQTcpServer_socketDescriptor(self.h)

proc setSocketDescriptor*(self: QTcpServer, socketDescriptor: uint): bool =

  fcQTcpServer_setSocketDescriptor(self.h, socketDescriptor)

proc waitForNewConnection*(self: QTcpServer, ): bool =

  fcQTcpServer_waitForNewConnection(self.h)

proc hasPendingConnections*(self: QTcpServer, ): bool =

  fcQTcpServer_hasPendingConnections(self.h)

proc nextPendingConnection*(self: QTcpServer, ): gen_qtcpsocket.QTcpSocket =

  gen_qtcpsocket.QTcpSocket(h: fcQTcpServer_nextPendingConnection(self.h))

proc serverError*(self: QTcpServer, ): gen_qabstractsocket.QAbstractSocketSocketError =

  gen_qabstractsocket.QAbstractSocketSocketError(fcQTcpServer_serverError(self.h))

proc errorString*(self: QTcpServer, ): string =

  let v_ms = fcQTcpServer_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc pauseAccepting*(self: QTcpServer, ): void =

  fcQTcpServer_pauseAccepting(self.h)

proc resumeAccepting*(self: QTcpServer, ): void =

  fcQTcpServer_resumeAccepting(self.h)

proc setProxy*(self: QTcpServer, networkProxy: gen_qnetworkproxy.QNetworkProxy): void =

  fcQTcpServer_setProxy(self.h, networkProxy.h)

proc proxy*(self: QTcpServer, ): gen_qnetworkproxy.QNetworkProxy =

  gen_qnetworkproxy.QNetworkProxy(h: fcQTcpServer_proxy(self.h))

proc newConnection*(self: QTcpServer, ): void =

  fcQTcpServer_newConnection(self.h)

proc miqt_exec_callback_QTcpServer_newConnection(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onnewConnection*(self: QTcpServer, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTcpServer_connect_newConnection(self.h, cast[int](addr tmp[]))
proc acceptError*(self: QTcpServer, socketError: gen_qabstractsocket.QAbstractSocketSocketError): void =

  fcQTcpServer_acceptError(self.h, cint(socketError))

proc miqt_exec_callback_QTcpServer_acceptError(slot: int, socketError: cint) {.exportc.} =
  type Cb = proc(socketError: gen_qabstractsocket.QAbstractSocketSocketError)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractsocket.QAbstractSocketSocketError(socketError)


  nimfunc[](slotval1)

proc onacceptError*(self: QTcpServer, slot: proc(socketError: gen_qabstractsocket.QAbstractSocketSocketError)) =
  type Cb = proc(socketError: gen_qabstractsocket.QAbstractSocketSocketError)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQTcpServer_connect_acceptError(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QTcpServer, s: cstring, c: cstring): string =

  let v_ms = fcQTcpServer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTcpServer, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTcpServer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc listen1*(self: QTcpServer, address: gen_qhostaddress.QHostAddress): bool =

  fcQTcpServer_listen1(self.h, address.h)

proc listen2*(self: QTcpServer, address: gen_qhostaddress.QHostAddress, port: cushort): bool =

  fcQTcpServer_listen2(self.h, address.h, port)

proc waitForNewConnection1*(self: QTcpServer, msec: cint): bool =

  fcQTcpServer_waitForNewConnection1(self.h, msec)

proc waitForNewConnection2*(self: QTcpServer, msec: cint, timedOut: ptr bool): bool =

  fcQTcpServer_waitForNewConnection2(self.h, msec, timedOut)

proc callVirtualBase_metaObject(self: QTcpServer, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQTcpServer_virtualbase_metaObject(self.h))

type QTcpServermetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QTcpServer, slot: proc(super: QTcpServermetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QTcpServermetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_metaObject(self: ptr cQTcpServer, slot: int): pointer {.exportc: "miqt_exec_callback_QTcpServer_metaObject ".} =
  type Cb = proc(super: QTcpServermetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QTcpServer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QTcpServer, param1: cstring): pointer =


  fQTcpServer_virtualbase_metacast(self.h, param1)

type QTcpServermetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QTcpServer, slot: proc(super: QTcpServermetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QTcpServermetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_metacast(self: ptr cQTcpServer, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTcpServer_metacast ".} =
  type Cb = proc(super: QTcpServermetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QTcpServer(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QTcpServer, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTcpServer_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTcpServermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTcpServer, slot: proc(super: QTcpServermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTcpServermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_metacall(self: ptr cQTcpServer, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTcpServer_metacall ".} =
  type Cb = proc(super: QTcpServermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTcpServer(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_hasPendingConnections(self: QTcpServer, ): bool =


  fQTcpServer_virtualbase_hasPendingConnections(self.h)

type QTcpServerhasPendingConnectionsBase* = proc(): bool
proc onhasPendingConnections*(self: QTcpServer, slot: proc(super: QTcpServerhasPendingConnectionsBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTcpServerhasPendingConnectionsBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_hasPendingConnections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_hasPendingConnections(self: ptr cQTcpServer, slot: int): bool {.exportc: "miqt_exec_callback_QTcpServer_hasPendingConnections ".} =
  type Cb = proc(super: QTcpServerhasPendingConnectionsBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasPendingConnections(QTcpServer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_nextPendingConnection(self: QTcpServer, ): gen_qtcpsocket.QTcpSocket =


  gen_qtcpsocket.QTcpSocket(h: fQTcpServer_virtualbase_nextPendingConnection(self.h))

type QTcpServernextPendingConnectionBase* = proc(): gen_qtcpsocket.QTcpSocket
proc onnextPendingConnection*(self: QTcpServer, slot: proc(super: QTcpServernextPendingConnectionBase): gen_qtcpsocket.QTcpSocket) =
  # TODO check subclass
  type Cb = proc(super: QTcpServernextPendingConnectionBase): gen_qtcpsocket.QTcpSocket
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_nextPendingConnection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_nextPendingConnection(self: ptr cQTcpServer, slot: int): pointer {.exportc: "miqt_exec_callback_QTcpServer_nextPendingConnection ".} =
  type Cb = proc(super: QTcpServernextPendingConnectionBase): gen_qtcpsocket.QTcpSocket
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_nextPendingConnection(QTcpServer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_incomingConnection(self: QTcpServer, handle: uint): void =


  fQTcpServer_virtualbase_incomingConnection(self.h, handle)

type QTcpServerincomingConnectionBase* = proc(handle: uint): void
proc onincomingConnection*(self: QTcpServer, slot: proc(super: QTcpServerincomingConnectionBase, handle: uint): void) =
  # TODO check subclass
  type Cb = proc(super: QTcpServerincomingConnectionBase, handle: uint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_incomingConnection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_incomingConnection(self: ptr cQTcpServer, slot: int, handle: uint): void {.exportc: "miqt_exec_callback_QTcpServer_incomingConnection ".} =
  type Cb = proc(super: QTcpServerincomingConnectionBase, handle: uint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(handle: uint): auto =
    callVirtualBase_incomingConnection(QTcpServer(h: self), handle)
  let slotval1 = handle


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QTcpServer, event: gen_qcoreevent.QEvent): bool =


  fQTcpServer_virtualbase_event(self.h, event.h)

type QTcpServereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTcpServer, slot: proc(super: QTcpServereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTcpServereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_event(self: ptr cQTcpServer, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTcpServer_event ".} =
  type Cb = proc(super: QTcpServereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTcpServer(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QTcpServer, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQTcpServer_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTcpServereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTcpServer, slot: proc(super: QTcpServereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTcpServereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_eventFilter(self: ptr cQTcpServer, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTcpServer_eventFilter ".} =
  type Cb = proc(super: QTcpServereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTcpServer(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QTcpServer, event: gen_qcoreevent.QTimerEvent): void =


  fQTcpServer_virtualbase_timerEvent(self.h, event.h)

type QTcpServertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTcpServer, slot: proc(super: QTcpServertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTcpServertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_timerEvent(self: ptr cQTcpServer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTcpServer_timerEvent ".} =
  type Cb = proc(super: QTcpServertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTcpServer(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QTcpServer, event: gen_qcoreevent.QChildEvent): void =


  fQTcpServer_virtualbase_childEvent(self.h, event.h)

type QTcpServerchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTcpServer, slot: proc(super: QTcpServerchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTcpServerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_childEvent(self: ptr cQTcpServer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTcpServer_childEvent ".} =
  type Cb = proc(super: QTcpServerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTcpServer(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTcpServer, event: gen_qcoreevent.QEvent): void =


  fQTcpServer_virtualbase_customEvent(self.h, event.h)

type QTcpServercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTcpServer, slot: proc(super: QTcpServercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTcpServercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_customEvent(self: ptr cQTcpServer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTcpServer_customEvent ".} =
  type Cb = proc(super: QTcpServercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTcpServer(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTcpServer, signal: gen_qmetaobject.QMetaMethod): void =


  fQTcpServer_virtualbase_connectNotify(self.h, signal.h)

type QTcpServerconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTcpServer, slot: proc(super: QTcpServerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTcpServerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_connectNotify(self: ptr cQTcpServer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTcpServer_connectNotify ".} =
  type Cb = proc(super: QTcpServerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTcpServer(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTcpServer, signal: gen_qmetaobject.QMetaMethod): void =


  fQTcpServer_virtualbase_disconnectNotify(self.h, signal.h)

type QTcpServerdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTcpServer, slot: proc(super: QTcpServerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTcpServerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTcpServer_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTcpServer_disconnectNotify(self: ptr cQTcpServer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTcpServer_disconnectNotify ".} =
  type Cb = proc(super: QTcpServerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTcpServer(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QTcpServer): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQTcpServer_staticMetaObject())
proc delete*(self: QTcpServer) =
  fcQTcpServer_delete(self.h)
