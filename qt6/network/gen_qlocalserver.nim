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
{.compile("gen_qlocalserver.cpp", cflags).}


type QLocalServerSocketOption* = cint
const
  QLocalServerNoOptions* = 0
  QLocalServerUserAccessOption* = 1
  QLocalServerGroupAccessOption* = 2
  QLocalServerOtherAccessOption* = 4
  QLocalServerWorldAccessOption* = 7
  QLocalServerAbstractNamespaceOption* = 8



import gen_qlocalserver_types
export gen_qlocalserver_types

import
  gen_qabstractsocket,
  gen_qcoreevent,
  gen_qlocalsocket,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qabstractsocket,
  gen_qcoreevent,
  gen_qlocalsocket,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQLocalServer*{.exportc: "QLocalServer", incompleteStruct.} = object

proc fcQLocalServer_new(): ptr cQLocalServer {.importc: "QLocalServer_new".}
proc fcQLocalServer_new2(parent: pointer): ptr cQLocalServer {.importc: "QLocalServer_new2".}
proc fcQLocalServer_metaObject(self: pointer, ): pointer {.importc: "QLocalServer_metaObject".}
proc fcQLocalServer_metacast(self: pointer, param1: cstring): pointer {.importc: "QLocalServer_metacast".}
proc fcQLocalServer_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLocalServer_metacall".}
proc fcQLocalServer_tr(s: cstring): struct_miqt_string {.importc: "QLocalServer_tr".}
proc fcQLocalServer_newConnection(self: pointer, ): void {.importc: "QLocalServer_newConnection".}
proc fQLocalServer_connect_newConnection(self: pointer, slot: int) {.importc: "QLocalServer_connect_newConnection".}
proc fcQLocalServer_close(self: pointer, ): void {.importc: "QLocalServer_close".}
proc fcQLocalServer_errorString(self: pointer, ): struct_miqt_string {.importc: "QLocalServer_errorString".}
proc fcQLocalServer_hasPendingConnections(self: pointer, ): bool {.importc: "QLocalServer_hasPendingConnections".}
proc fcQLocalServer_isListening(self: pointer, ): bool {.importc: "QLocalServer_isListening".}
proc fcQLocalServer_listen(self: pointer, name: struct_miqt_string): bool {.importc: "QLocalServer_listen".}
proc fcQLocalServer_listenWithSocketDescriptor(self: pointer, socketDescriptor: uint): bool {.importc: "QLocalServer_listenWithSocketDescriptor".}
proc fcQLocalServer_maxPendingConnections(self: pointer, ): cint {.importc: "QLocalServer_maxPendingConnections".}
proc fcQLocalServer_nextPendingConnection(self: pointer, ): pointer {.importc: "QLocalServer_nextPendingConnection".}
proc fcQLocalServer_serverName(self: pointer, ): struct_miqt_string {.importc: "QLocalServer_serverName".}
proc fcQLocalServer_fullServerName(self: pointer, ): struct_miqt_string {.importc: "QLocalServer_fullServerName".}
proc fcQLocalServer_removeServer(name: struct_miqt_string): bool {.importc: "QLocalServer_removeServer".}
proc fcQLocalServer_serverError(self: pointer, ): cint {.importc: "QLocalServer_serverError".}
proc fcQLocalServer_setMaxPendingConnections(self: pointer, numConnections: cint): void {.importc: "QLocalServer_setMaxPendingConnections".}
proc fcQLocalServer_waitForNewConnection(self: pointer, ): bool {.importc: "QLocalServer_waitForNewConnection".}
proc fcQLocalServer_setListenBacklogSize(self: pointer, size: cint): void {.importc: "QLocalServer_setListenBacklogSize".}
proc fcQLocalServer_listenBacklogSize(self: pointer, ): cint {.importc: "QLocalServer_listenBacklogSize".}
proc fcQLocalServer_setSocketOptions(self: pointer, options: cint): void {.importc: "QLocalServer_setSocketOptions".}
proc fcQLocalServer_socketOptions(self: pointer, ): cint {.importc: "QLocalServer_socketOptions".}
proc fcQLocalServer_socketDescriptor(self: pointer, ): uint {.importc: "QLocalServer_socketDescriptor".}
proc fcQLocalServer_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QLocalServer_tr2".}
proc fcQLocalServer_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLocalServer_tr3".}
proc fcQLocalServer_waitForNewConnection1(self: pointer, msec: cint): bool {.importc: "QLocalServer_waitForNewConnection1".}
proc fcQLocalServer_waitForNewConnection2(self: pointer, msec: cint, timedOut: ptr bool): bool {.importc: "QLocalServer_waitForNewConnection2".}
proc fQLocalServer_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QLocalServer_virtualbase_metacall".}
proc fcQLocalServer_override_virtual_metacall(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_metacall".}
proc fQLocalServer_virtualbase_hasPendingConnections(self: pointer, ): bool{.importc: "QLocalServer_virtualbase_hasPendingConnections".}
proc fcQLocalServer_override_virtual_hasPendingConnections(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_hasPendingConnections".}
proc fQLocalServer_virtualbase_nextPendingConnection(self: pointer, ): pointer{.importc: "QLocalServer_virtualbase_nextPendingConnection".}
proc fcQLocalServer_override_virtual_nextPendingConnection(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_nextPendingConnection".}
proc fQLocalServer_virtualbase_incomingConnection(self: pointer, socketDescriptor: uint): void{.importc: "QLocalServer_virtualbase_incomingConnection".}
proc fcQLocalServer_override_virtual_incomingConnection(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_incomingConnection".}
proc fQLocalServer_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QLocalServer_virtualbase_event".}
proc fcQLocalServer_override_virtual_event(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_event".}
proc fQLocalServer_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QLocalServer_virtualbase_eventFilter".}
proc fcQLocalServer_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_eventFilter".}
proc fQLocalServer_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QLocalServer_virtualbase_timerEvent".}
proc fcQLocalServer_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_timerEvent".}
proc fQLocalServer_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QLocalServer_virtualbase_childEvent".}
proc fcQLocalServer_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_childEvent".}
proc fQLocalServer_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QLocalServer_virtualbase_customEvent".}
proc fcQLocalServer_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_customEvent".}
proc fQLocalServer_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QLocalServer_virtualbase_connectNotify".}
proc fcQLocalServer_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_connectNotify".}
proc fQLocalServer_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QLocalServer_virtualbase_disconnectNotify".}
proc fcQLocalServer_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QLocalServer_override_virtual_disconnectNotify".}
proc fcQLocalServer_staticMetaObject(): pointer {.importc: "QLocalServer_staticMetaObject".}
proc fcQLocalServer_delete(self: pointer) {.importc: "QLocalServer_delete".}


func init*(T: type QLocalServer, h: ptr cQLocalServer): QLocalServer =
  T(h: h)
proc create*(T: type QLocalServer, ): QLocalServer =

  QLocalServer.init(fcQLocalServer_new())
proc create*(T: type QLocalServer, parent: gen_qobject.QObject): QLocalServer =

  QLocalServer.init(fcQLocalServer_new2(parent.h))
proc metaObject*(self: QLocalServer, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQLocalServer_metaObject(self.h))

proc metacast*(self: QLocalServer, param1: cstring): pointer =

  fcQLocalServer_metacast(self.h, param1)

proc metacall*(self: QLocalServer, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQLocalServer_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QLocalServer, s: cstring): string =

  let v_ms = fcQLocalServer_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc newConnection*(self: QLocalServer, ): void =

  fcQLocalServer_newConnection(self.h)

proc miqt_exec_callback_QLocalServer_newConnection(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onnewConnection*(self: QLocalServer, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQLocalServer_connect_newConnection(self.h, cast[int](addr tmp[]))
proc close*(self: QLocalServer, ): void =

  fcQLocalServer_close(self.h)

proc errorString*(self: QLocalServer, ): string =

  let v_ms = fcQLocalServer_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc hasPendingConnections*(self: QLocalServer, ): bool =

  fcQLocalServer_hasPendingConnections(self.h)

proc isListening*(self: QLocalServer, ): bool =

  fcQLocalServer_isListening(self.h)

proc listen*(self: QLocalServer, name: string): bool =

  fcQLocalServer_listen(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc listenWithSocketDescriptor*(self: QLocalServer, socketDescriptor: uint): bool =

  fcQLocalServer_listenWithSocketDescriptor(self.h, socketDescriptor)

proc maxPendingConnections*(self: QLocalServer, ): cint =

  fcQLocalServer_maxPendingConnections(self.h)

proc nextPendingConnection*(self: QLocalServer, ): gen_qlocalsocket.QLocalSocket =

  gen_qlocalsocket.QLocalSocket(h: fcQLocalServer_nextPendingConnection(self.h))

proc serverName*(self: QLocalServer, ): string =

  let v_ms = fcQLocalServer_serverName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fullServerName*(self: QLocalServer, ): string =

  let v_ms = fcQLocalServer_fullServerName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc removeServer*(_: type QLocalServer, name: string): bool =

  fcQLocalServer_removeServer(struct_miqt_string(data: name, len: csize_t(len(name))))

proc serverError*(self: QLocalServer, ): gen_qabstractsocket.QAbstractSocketSocketError =

  gen_qabstractsocket.QAbstractSocketSocketError(fcQLocalServer_serverError(self.h))

proc setMaxPendingConnections*(self: QLocalServer, numConnections: cint): void =

  fcQLocalServer_setMaxPendingConnections(self.h, numConnections)

proc waitForNewConnection*(self: QLocalServer, ): bool =

  fcQLocalServer_waitForNewConnection(self.h)

proc setListenBacklogSize*(self: QLocalServer, size: cint): void =

  fcQLocalServer_setListenBacklogSize(self.h, size)

proc listenBacklogSize*(self: QLocalServer, ): cint =

  fcQLocalServer_listenBacklogSize(self.h)

proc setSocketOptions*(self: QLocalServer, options: QLocalServerSocketOption): void =

  fcQLocalServer_setSocketOptions(self.h, cint(options))

proc socketOptions*(self: QLocalServer, ): QLocalServerSocketOption =

  QLocalServerSocketOption(fcQLocalServer_socketOptions(self.h))

proc socketDescriptor*(self: QLocalServer, ): uint =

  fcQLocalServer_socketDescriptor(self.h)

proc tr2*(_: type QLocalServer, s: cstring, c: cstring): string =

  let v_ms = fcQLocalServer_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QLocalServer, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQLocalServer_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc waitForNewConnection1*(self: QLocalServer, msec: cint): bool =

  fcQLocalServer_waitForNewConnection1(self.h, msec)

proc waitForNewConnection2*(self: QLocalServer, msec: cint, timedOut: ptr bool): bool =

  fcQLocalServer_waitForNewConnection2(self.h, msec, timedOut)

proc callVirtualBase_metacall(self: QLocalServer, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQLocalServer_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QLocalServermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QLocalServer, slot: proc(super: QLocalServermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QLocalServermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_metacall(self: ptr cQLocalServer, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QLocalServer_metacall ".} =
  type Cb = proc(super: QLocalServermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QLocalServer(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_hasPendingConnections(self: QLocalServer, ): bool =


  fQLocalServer_virtualbase_hasPendingConnections(self.h)

type QLocalServerhasPendingConnectionsBase* = proc(): bool
proc onhasPendingConnections*(self: QLocalServer, slot: proc(super: QLocalServerhasPendingConnectionsBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QLocalServerhasPendingConnectionsBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_hasPendingConnections(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_hasPendingConnections(self: ptr cQLocalServer, slot: int): bool {.exportc: "miqt_exec_callback_QLocalServer_hasPendingConnections ".} =
  type Cb = proc(super: QLocalServerhasPendingConnectionsBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_hasPendingConnections(QLocalServer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_nextPendingConnection(self: QLocalServer, ): gen_qlocalsocket.QLocalSocket =


  gen_qlocalsocket.QLocalSocket(h: fQLocalServer_virtualbase_nextPendingConnection(self.h))

type QLocalServernextPendingConnectionBase* = proc(): gen_qlocalsocket.QLocalSocket
proc onnextPendingConnection*(self: QLocalServer, slot: proc(super: QLocalServernextPendingConnectionBase): gen_qlocalsocket.QLocalSocket) =
  # TODO check subclass
  type Cb = proc(super: QLocalServernextPendingConnectionBase): gen_qlocalsocket.QLocalSocket
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_nextPendingConnection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_nextPendingConnection(self: ptr cQLocalServer, slot: int): pointer {.exportc: "miqt_exec_callback_QLocalServer_nextPendingConnection ".} =
  type Cb = proc(super: QLocalServernextPendingConnectionBase): gen_qlocalsocket.QLocalSocket
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_nextPendingConnection(QLocalServer(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_incomingConnection(self: QLocalServer, socketDescriptor: uint): void =


  fQLocalServer_virtualbase_incomingConnection(self.h, socketDescriptor)

type QLocalServerincomingConnectionBase* = proc(socketDescriptor: uint): void
proc onincomingConnection*(self: QLocalServer, slot: proc(super: QLocalServerincomingConnectionBase, socketDescriptor: uint): void) =
  # TODO check subclass
  type Cb = proc(super: QLocalServerincomingConnectionBase, socketDescriptor: uint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_incomingConnection(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_incomingConnection(self: ptr cQLocalServer, slot: int, socketDescriptor: uint): void {.exportc: "miqt_exec_callback_QLocalServer_incomingConnection ".} =
  type Cb = proc(super: QLocalServerincomingConnectionBase, socketDescriptor: uint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(socketDescriptor: uint): auto =
    callVirtualBase_incomingConnection(QLocalServer(h: self), socketDescriptor)
  let slotval1 = socketDescriptor


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QLocalServer, event: gen_qcoreevent.QEvent): bool =


  fQLocalServer_virtualbase_event(self.h, event.h)

type QLocalServereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QLocalServer, slot: proc(super: QLocalServereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QLocalServereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_event(self: ptr cQLocalServer, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QLocalServer_event ".} =
  type Cb = proc(super: QLocalServereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QLocalServer(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QLocalServer, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQLocalServer_virtualbase_eventFilter(self.h, watched.h, event.h)

type QLocalServereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QLocalServer, slot: proc(super: QLocalServereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QLocalServereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_eventFilter(self: ptr cQLocalServer, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QLocalServer_eventFilter ".} =
  type Cb = proc(super: QLocalServereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QLocalServer(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QLocalServer, event: gen_qcoreevent.QTimerEvent): void =


  fQLocalServer_virtualbase_timerEvent(self.h, event.h)

type QLocalServertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QLocalServer, slot: proc(super: QLocalServertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLocalServertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_timerEvent(self: ptr cQLocalServer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLocalServer_timerEvent ".} =
  type Cb = proc(super: QLocalServertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QLocalServer(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QLocalServer, event: gen_qcoreevent.QChildEvent): void =


  fQLocalServer_virtualbase_childEvent(self.h, event.h)

type QLocalServerchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QLocalServer, slot: proc(super: QLocalServerchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLocalServerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_childEvent(self: ptr cQLocalServer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLocalServer_childEvent ".} =
  type Cb = proc(super: QLocalServerchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QLocalServer(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QLocalServer, event: gen_qcoreevent.QEvent): void =


  fQLocalServer_virtualbase_customEvent(self.h, event.h)

type QLocalServercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QLocalServer, slot: proc(super: QLocalServercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLocalServercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_customEvent(self: ptr cQLocalServer, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLocalServer_customEvent ".} =
  type Cb = proc(super: QLocalServercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QLocalServer(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QLocalServer, signal: gen_qmetaobject.QMetaMethod): void =


  fQLocalServer_virtualbase_connectNotify(self.h, signal.h)

type QLocalServerconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QLocalServer, slot: proc(super: QLocalServerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QLocalServerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_connectNotify(self: ptr cQLocalServer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLocalServer_connectNotify ".} =
  type Cb = proc(super: QLocalServerconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QLocalServer(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QLocalServer, signal: gen_qmetaobject.QMetaMethod): void =


  fQLocalServer_virtualbase_disconnectNotify(self.h, signal.h)

type QLocalServerdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QLocalServer, slot: proc(super: QLocalServerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QLocalServerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalServer_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalServer_disconnectNotify(self: ptr cQLocalServer, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLocalServer_disconnectNotify ".} =
  type Cb = proc(super: QLocalServerdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QLocalServer(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QLocalServer): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQLocalServer_staticMetaObject())
proc delete*(self: QLocalServer) =
  fcQLocalServer_delete(self.h)
