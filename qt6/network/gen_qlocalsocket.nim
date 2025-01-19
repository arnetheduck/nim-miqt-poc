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
{.compile("gen_qlocalsocket.cpp", cflags).}


type QLocalSocketLocalSocketError* = cint
const
  QLocalSocketConnectionRefusedError* = 0
  QLocalSocketPeerClosedError* = 1
  QLocalSocketServerNotFoundError* = 2
  QLocalSocketSocketAccessError* = 3
  QLocalSocketSocketResourceError* = 4
  QLocalSocketSocketTimeoutError* = 5
  QLocalSocketDatagramTooLargeError* = 6
  QLocalSocketConnectionError* = 7
  QLocalSocketUnsupportedSocketOperationError* = 10
  QLocalSocketUnknownSocketError* = -1
  QLocalSocketOperationError* = 19



type QLocalSocketLocalSocketState* = cint
const
  QLocalSocketUnconnectedState* = 0
  QLocalSocketConnectingState* = 2
  QLocalSocketConnectedState* = 3
  QLocalSocketClosingState* = 6



type QLocalSocketSocketOption* = cint
const
  QLocalSocketNoOptions* = 0
  QLocalSocketAbstractNamespaceOption* = 1



import gen_qlocalsocket_types
export gen_qlocalsocket_types

import
  gen_qcoreevent,
  gen_qiodevice,
  gen_qiodevicebase,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qcoreevent,
  gen_qiodevice,
  gen_qiodevicebase,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQLocalSocket*{.exportc: "QLocalSocket", incompleteStruct.} = object

proc fcQLocalSocket_new(): ptr cQLocalSocket {.importc: "QLocalSocket_new".}
proc fcQLocalSocket_new2(parent: pointer): ptr cQLocalSocket {.importc: "QLocalSocket_new2".}
proc fcQLocalSocket_metaObject(self: pointer, ): pointer {.importc: "QLocalSocket_metaObject".}
proc fcQLocalSocket_metacast(self: pointer, param1: cstring): pointer {.importc: "QLocalSocket_metacast".}
proc fcQLocalSocket_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QLocalSocket_metacall".}
proc fcQLocalSocket_tr(s: cstring): struct_miqt_string {.importc: "QLocalSocket_tr".}
proc fcQLocalSocket_connectToServer(self: pointer, ): void {.importc: "QLocalSocket_connectToServer".}
proc fcQLocalSocket_connectToServerWithName(self: pointer, name: struct_miqt_string): void {.importc: "QLocalSocket_connectToServerWithName".}
proc fcQLocalSocket_disconnectFromServer(self: pointer, ): void {.importc: "QLocalSocket_disconnectFromServer".}
proc fcQLocalSocket_setServerName(self: pointer, name: struct_miqt_string): void {.importc: "QLocalSocket_setServerName".}
proc fcQLocalSocket_serverName(self: pointer, ): struct_miqt_string {.importc: "QLocalSocket_serverName".}
proc fcQLocalSocket_fullServerName(self: pointer, ): struct_miqt_string {.importc: "QLocalSocket_fullServerName".}
proc fcQLocalSocket_abort(self: pointer, ): void {.importc: "QLocalSocket_abort".}
proc fcQLocalSocket_isSequential(self: pointer, ): bool {.importc: "QLocalSocket_isSequential".}
proc fcQLocalSocket_bytesAvailable(self: pointer, ): clonglong {.importc: "QLocalSocket_bytesAvailable".}
proc fcQLocalSocket_bytesToWrite(self: pointer, ): clonglong {.importc: "QLocalSocket_bytesToWrite".}
proc fcQLocalSocket_canReadLine(self: pointer, ): bool {.importc: "QLocalSocket_canReadLine".}
proc fcQLocalSocket_open(self: pointer, openMode: cint): bool {.importc: "QLocalSocket_open".}
proc fcQLocalSocket_close(self: pointer, ): void {.importc: "QLocalSocket_close".}
proc fcQLocalSocket_error(self: pointer, ): cint {.importc: "QLocalSocket_error".}
proc fcQLocalSocket_flush(self: pointer, ): bool {.importc: "QLocalSocket_flush".}
proc fcQLocalSocket_isValid(self: pointer, ): bool {.importc: "QLocalSocket_isValid".}
proc fcQLocalSocket_readBufferSize(self: pointer, ): clonglong {.importc: "QLocalSocket_readBufferSize".}
proc fcQLocalSocket_setReadBufferSize(self: pointer, size: clonglong): void {.importc: "QLocalSocket_setReadBufferSize".}
proc fcQLocalSocket_setSocketDescriptor(self: pointer, socketDescriptor: uint): bool {.importc: "QLocalSocket_setSocketDescriptor".}
proc fcQLocalSocket_socketDescriptor(self: pointer, ): uint {.importc: "QLocalSocket_socketDescriptor".}
proc fcQLocalSocket_setSocketOptions(self: pointer, option: cint): void {.importc: "QLocalSocket_setSocketOptions".}
proc fcQLocalSocket_socketOptions(self: pointer, ): cint {.importc: "QLocalSocket_socketOptions".}
proc fcQLocalSocket_state(self: pointer, ): cint {.importc: "QLocalSocket_state".}
proc fcQLocalSocket_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QLocalSocket_waitForBytesWritten".}
proc fcQLocalSocket_waitForConnected(self: pointer, ): bool {.importc: "QLocalSocket_waitForConnected".}
proc fcQLocalSocket_waitForDisconnected(self: pointer, ): bool {.importc: "QLocalSocket_waitForDisconnected".}
proc fcQLocalSocket_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QLocalSocket_waitForReadyRead".}
proc fcQLocalSocket_connected(self: pointer, ): void {.importc: "QLocalSocket_connected".}
proc fQLocalSocket_connect_connected(self: pointer, slot: int) {.importc: "QLocalSocket_connect_connected".}
proc fcQLocalSocket_disconnected(self: pointer, ): void {.importc: "QLocalSocket_disconnected".}
proc fQLocalSocket_connect_disconnected(self: pointer, slot: int) {.importc: "QLocalSocket_connect_disconnected".}
proc fcQLocalSocket_errorOccurred(self: pointer, socketError: cint): void {.importc: "QLocalSocket_errorOccurred".}
proc fQLocalSocket_connect_errorOccurred(self: pointer, slot: int) {.importc: "QLocalSocket_connect_errorOccurred".}
proc fcQLocalSocket_stateChanged(self: pointer, socketState: cint): void {.importc: "QLocalSocket_stateChanged".}
proc fQLocalSocket_connect_stateChanged(self: pointer, slot: int) {.importc: "QLocalSocket_connect_stateChanged".}
proc fcQLocalSocket_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QLocalSocket_tr2".}
proc fcQLocalSocket_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QLocalSocket_tr3".}
proc fcQLocalSocket_connectToServer1(self: pointer, openMode: cint): void {.importc: "QLocalSocket_connectToServer1".}
proc fcQLocalSocket_connectToServer2(self: pointer, name: struct_miqt_string, openMode: cint): void {.importc: "QLocalSocket_connectToServer2".}
proc fcQLocalSocket_setSocketDescriptor2(self: pointer, socketDescriptor: uint, socketState: cint): bool {.importc: "QLocalSocket_setSocketDescriptor2".}
proc fcQLocalSocket_setSocketDescriptor3(self: pointer, socketDescriptor: uint, socketState: cint, openMode: cint): bool {.importc: "QLocalSocket_setSocketDescriptor3".}
proc fcQLocalSocket_waitForConnected1(self: pointer, msecs: cint): bool {.importc: "QLocalSocket_waitForConnected1".}
proc fcQLocalSocket_waitForDisconnected1(self: pointer, msecs: cint): bool {.importc: "QLocalSocket_waitForDisconnected1".}
proc fQLocalSocket_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QLocalSocket_virtualbase_metacall".}
proc fcQLocalSocket_override_virtual_metacall(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_metacall".}
proc fQLocalSocket_virtualbase_isSequential(self: pointer, ): bool{.importc: "QLocalSocket_virtualbase_isSequential".}
proc fcQLocalSocket_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_isSequential".}
proc fQLocalSocket_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QLocalSocket_virtualbase_bytesAvailable".}
proc fcQLocalSocket_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_bytesAvailable".}
proc fQLocalSocket_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QLocalSocket_virtualbase_bytesToWrite".}
proc fcQLocalSocket_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_bytesToWrite".}
proc fQLocalSocket_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QLocalSocket_virtualbase_canReadLine".}
proc fcQLocalSocket_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_canReadLine".}
proc fQLocalSocket_virtualbase_open(self: pointer, openMode: cint): bool{.importc: "QLocalSocket_virtualbase_open".}
proc fcQLocalSocket_override_virtual_open(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_open".}
proc fQLocalSocket_virtualbase_close(self: pointer, ): void{.importc: "QLocalSocket_virtualbase_close".}
proc fcQLocalSocket_override_virtual_close(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_close".}
proc fQLocalSocket_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QLocalSocket_virtualbase_waitForBytesWritten".}
proc fcQLocalSocket_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_waitForBytesWritten".}
proc fQLocalSocket_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QLocalSocket_virtualbase_waitForReadyRead".}
proc fcQLocalSocket_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_waitForReadyRead".}
proc fQLocalSocket_virtualbase_readData(self: pointer, param1: cstring, param2: clonglong): clonglong{.importc: "QLocalSocket_virtualbase_readData".}
proc fcQLocalSocket_override_virtual_readData(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_readData".}
proc fQLocalSocket_virtualbase_readLineData(self: pointer, data: cstring, maxSize: clonglong): clonglong{.importc: "QLocalSocket_virtualbase_readLineData".}
proc fcQLocalSocket_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_readLineData".}
proc fQLocalSocket_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong{.importc: "QLocalSocket_virtualbase_skipData".}
proc fcQLocalSocket_override_virtual_skipData(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_skipData".}
proc fQLocalSocket_virtualbase_writeData(self: pointer, param1: cstring, param2: clonglong): clonglong{.importc: "QLocalSocket_virtualbase_writeData".}
proc fcQLocalSocket_override_virtual_writeData(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_writeData".}
proc fQLocalSocket_virtualbase_pos(self: pointer, ): clonglong{.importc: "QLocalSocket_virtualbase_pos".}
proc fcQLocalSocket_override_virtual_pos(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_pos".}
proc fQLocalSocket_virtualbase_size(self: pointer, ): clonglong{.importc: "QLocalSocket_virtualbase_size".}
proc fcQLocalSocket_override_virtual_size(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_size".}
proc fQLocalSocket_virtualbase_seek(self: pointer, pos: clonglong): bool{.importc: "QLocalSocket_virtualbase_seek".}
proc fcQLocalSocket_override_virtual_seek(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_seek".}
proc fQLocalSocket_virtualbase_atEnd(self: pointer, ): bool{.importc: "QLocalSocket_virtualbase_atEnd".}
proc fcQLocalSocket_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_atEnd".}
proc fQLocalSocket_virtualbase_reset(self: pointer, ): bool{.importc: "QLocalSocket_virtualbase_reset".}
proc fcQLocalSocket_override_virtual_reset(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_reset".}
proc fQLocalSocket_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QLocalSocket_virtualbase_event".}
proc fcQLocalSocket_override_virtual_event(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_event".}
proc fQLocalSocket_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QLocalSocket_virtualbase_eventFilter".}
proc fcQLocalSocket_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_eventFilter".}
proc fQLocalSocket_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QLocalSocket_virtualbase_timerEvent".}
proc fcQLocalSocket_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_timerEvent".}
proc fQLocalSocket_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QLocalSocket_virtualbase_childEvent".}
proc fcQLocalSocket_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_childEvent".}
proc fQLocalSocket_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QLocalSocket_virtualbase_customEvent".}
proc fcQLocalSocket_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_customEvent".}
proc fQLocalSocket_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QLocalSocket_virtualbase_connectNotify".}
proc fcQLocalSocket_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_connectNotify".}
proc fQLocalSocket_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QLocalSocket_virtualbase_disconnectNotify".}
proc fcQLocalSocket_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QLocalSocket_override_virtual_disconnectNotify".}
proc fcQLocalSocket_staticMetaObject(): pointer {.importc: "QLocalSocket_staticMetaObject".}
proc fcQLocalSocket_delete(self: pointer) {.importc: "QLocalSocket_delete".}


func init*(T: type QLocalSocket, h: ptr cQLocalSocket): QLocalSocket =
  T(h: h)
proc create*(T: type QLocalSocket, ): QLocalSocket =

  QLocalSocket.init(fcQLocalSocket_new())
proc create*(T: type QLocalSocket, parent: gen_qobject.QObject): QLocalSocket =

  QLocalSocket.init(fcQLocalSocket_new2(parent.h))
proc metaObject*(self: QLocalSocket, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQLocalSocket_metaObject(self.h))

proc metacast*(self: QLocalSocket, param1: cstring): pointer =

  fcQLocalSocket_metacast(self.h, param1)

proc metacall*(self: QLocalSocket, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQLocalSocket_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QLocalSocket, s: cstring): string =

  let v_ms = fcQLocalSocket_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc connectToServer*(self: QLocalSocket, ): void =

  fcQLocalSocket_connectToServer(self.h)

proc connectToServerWithName*(self: QLocalSocket, name: string): void =

  fcQLocalSocket_connectToServerWithName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc disconnectFromServer*(self: QLocalSocket, ): void =

  fcQLocalSocket_disconnectFromServer(self.h)

proc setServerName*(self: QLocalSocket, name: string): void =

  fcQLocalSocket_setServerName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc serverName*(self: QLocalSocket, ): string =

  let v_ms = fcQLocalSocket_serverName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fullServerName*(self: QLocalSocket, ): string =

  let v_ms = fcQLocalSocket_fullServerName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc abort*(self: QLocalSocket, ): void =

  fcQLocalSocket_abort(self.h)

proc isSequential*(self: QLocalSocket, ): bool =

  fcQLocalSocket_isSequential(self.h)

proc bytesAvailable*(self: QLocalSocket, ): clonglong =

  fcQLocalSocket_bytesAvailable(self.h)

proc bytesToWrite*(self: QLocalSocket, ): clonglong =

  fcQLocalSocket_bytesToWrite(self.h)

proc canReadLine*(self: QLocalSocket, ): bool =

  fcQLocalSocket_canReadLine(self.h)

proc open*(self: QLocalSocket, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool =

  fcQLocalSocket_open(self.h, cint(openMode))

proc close*(self: QLocalSocket, ): void =

  fcQLocalSocket_close(self.h)

proc error*(self: QLocalSocket, ): QLocalSocketLocalSocketError =

  QLocalSocketLocalSocketError(fcQLocalSocket_error(self.h))

proc flush*(self: QLocalSocket, ): bool =

  fcQLocalSocket_flush(self.h)

proc isValid*(self: QLocalSocket, ): bool =

  fcQLocalSocket_isValid(self.h)

proc readBufferSize*(self: QLocalSocket, ): clonglong =

  fcQLocalSocket_readBufferSize(self.h)

proc setReadBufferSize*(self: QLocalSocket, size: clonglong): void =

  fcQLocalSocket_setReadBufferSize(self.h, size)

proc setSocketDescriptor*(self: QLocalSocket, socketDescriptor: uint): bool =

  fcQLocalSocket_setSocketDescriptor(self.h, socketDescriptor)

proc socketDescriptor*(self: QLocalSocket, ): uint =

  fcQLocalSocket_socketDescriptor(self.h)

proc setSocketOptions*(self: QLocalSocket, option: QLocalSocketSocketOption): void =

  fcQLocalSocket_setSocketOptions(self.h, cint(option))

proc socketOptions*(self: QLocalSocket, ): QLocalSocketSocketOption =

  QLocalSocketSocketOption(fcQLocalSocket_socketOptions(self.h))

proc state*(self: QLocalSocket, ): QLocalSocketLocalSocketState =

  QLocalSocketLocalSocketState(fcQLocalSocket_state(self.h))

proc waitForBytesWritten*(self: QLocalSocket, msecs: cint): bool =

  fcQLocalSocket_waitForBytesWritten(self.h, msecs)

proc waitForConnected*(self: QLocalSocket, ): bool =

  fcQLocalSocket_waitForConnected(self.h)

proc waitForDisconnected*(self: QLocalSocket, ): bool =

  fcQLocalSocket_waitForDisconnected(self.h)

proc waitForReadyRead*(self: QLocalSocket, msecs: cint): bool =

  fcQLocalSocket_waitForReadyRead(self.h, msecs)

proc connected*(self: QLocalSocket, ): void =

  fcQLocalSocket_connected(self.h)

proc miqt_exec_callback_QLocalSocket_connected(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onconnected*(self: QLocalSocket, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQLocalSocket_connect_connected(self.h, cast[int](addr tmp[]))
proc disconnected*(self: QLocalSocket, ): void =

  fcQLocalSocket_disconnected(self.h)

proc miqt_exec_callback_QLocalSocket_disconnected(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc ondisconnected*(self: QLocalSocket, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQLocalSocket_connect_disconnected(self.h, cast[int](addr tmp[]))
proc errorOccurred*(self: QLocalSocket, socketError: QLocalSocketLocalSocketError): void =

  fcQLocalSocket_errorOccurred(self.h, cint(socketError))

proc miqt_exec_callback_QLocalSocket_errorOccurred(slot: int, socketError: cint) {.exportc.} =
  type Cb = proc(socketError: QLocalSocketLocalSocketError)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QLocalSocketLocalSocketError(socketError)


  nimfunc[](slotval1)

proc onerrorOccurred*(self: QLocalSocket, slot: proc(socketError: QLocalSocketLocalSocketError)) =
  type Cb = proc(socketError: QLocalSocketLocalSocketError)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQLocalSocket_connect_errorOccurred(self.h, cast[int](addr tmp[]))
proc stateChanged*(self: QLocalSocket, socketState: QLocalSocketLocalSocketState): void =

  fcQLocalSocket_stateChanged(self.h, cint(socketState))

proc miqt_exec_callback_QLocalSocket_stateChanged(slot: int, socketState: cint) {.exportc.} =
  type Cb = proc(socketState: QLocalSocketLocalSocketState)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QLocalSocketLocalSocketState(socketState)


  nimfunc[](slotval1)

proc onstateChanged*(self: QLocalSocket, slot: proc(socketState: QLocalSocketLocalSocketState)) =
  type Cb = proc(socketState: QLocalSocketLocalSocketState)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQLocalSocket_connect_stateChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QLocalSocket, s: cstring, c: cstring): string =

  let v_ms = fcQLocalSocket_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QLocalSocket, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQLocalSocket_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc connectToServer1*(self: QLocalSocket, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): void =

  fcQLocalSocket_connectToServer1(self.h, cint(openMode))

proc connectToServer2*(self: QLocalSocket, name: string, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): void =

  fcQLocalSocket_connectToServer2(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), cint(openMode))

proc setSocketDescriptor2*(self: QLocalSocket, socketDescriptor: uint, socketState: QLocalSocketLocalSocketState): bool =

  fcQLocalSocket_setSocketDescriptor2(self.h, socketDescriptor, cint(socketState))

proc setSocketDescriptor3*(self: QLocalSocket, socketDescriptor: uint, socketState: QLocalSocketLocalSocketState, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool =

  fcQLocalSocket_setSocketDescriptor3(self.h, socketDescriptor, cint(socketState), cint(openMode))

proc waitForConnected1*(self: QLocalSocket, msecs: cint): bool =

  fcQLocalSocket_waitForConnected1(self.h, msecs)

proc waitForDisconnected1*(self: QLocalSocket, msecs: cint): bool =

  fcQLocalSocket_waitForDisconnected1(self.h, msecs)

proc callVirtualBase_metacall(self: QLocalSocket, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQLocalSocket_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QLocalSocketmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QLocalSocket, slot: proc(super: QLocalSocketmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_metacall(self: ptr cQLocalSocket, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QLocalSocket_metacall ".} =
  type Cb = proc(super: QLocalSocketmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QLocalSocket(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_isSequential(self: QLocalSocket, ): bool =


  fQLocalSocket_virtualbase_isSequential(self.h)

type QLocalSocketisSequentialBase* = proc(): bool
proc onisSequential*(self: QLocalSocket, slot: proc(super: QLocalSocketisSequentialBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketisSequentialBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_isSequential(self: ptr cQLocalSocket, slot: int): bool {.exportc: "miqt_exec_callback_QLocalSocket_isSequential ".} =
  type Cb = proc(super: QLocalSocketisSequentialBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isSequential(QLocalSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_bytesAvailable(self: QLocalSocket, ): clonglong =


  fQLocalSocket_virtualbase_bytesAvailable(self.h)

type QLocalSocketbytesAvailableBase* = proc(): clonglong
proc onbytesAvailable*(self: QLocalSocket, slot: proc(super: QLocalSocketbytesAvailableBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketbytesAvailableBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_bytesAvailable(self: ptr cQLocalSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QLocalSocket_bytesAvailable ".} =
  type Cb = proc(super: QLocalSocketbytesAvailableBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesAvailable(QLocalSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_bytesToWrite(self: QLocalSocket, ): clonglong =


  fQLocalSocket_virtualbase_bytesToWrite(self.h)

type QLocalSocketbytesToWriteBase* = proc(): clonglong
proc onbytesToWrite*(self: QLocalSocket, slot: proc(super: QLocalSocketbytesToWriteBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketbytesToWriteBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_bytesToWrite(self: ptr cQLocalSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QLocalSocket_bytesToWrite ".} =
  type Cb = proc(super: QLocalSocketbytesToWriteBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesToWrite(QLocalSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_canReadLine(self: QLocalSocket, ): bool =


  fQLocalSocket_virtualbase_canReadLine(self.h)

type QLocalSocketcanReadLineBase* = proc(): bool
proc oncanReadLine*(self: QLocalSocket, slot: proc(super: QLocalSocketcanReadLineBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketcanReadLineBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_canReadLine(self: ptr cQLocalSocket, slot: int): bool {.exportc: "miqt_exec_callback_QLocalSocket_canReadLine ".} =
  type Cb = proc(super: QLocalSocketcanReadLineBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_canReadLine(QLocalSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_open(self: QLocalSocket, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool =


  fQLocalSocket_virtualbase_open(self.h, cint(openMode))

type QLocalSocketopenBase* = proc(openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
proc onopen*(self: QLocalSocket, slot: proc(super: QLocalSocketopenBase, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketopenBase, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_open(self: ptr cQLocalSocket, slot: int, openMode: cint): bool {.exportc: "miqt_exec_callback_QLocalSocket_open ".} =
  type Cb = proc(super: QLocalSocketopenBase, openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(openMode: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): auto =
    callVirtualBase_open(QLocalSocket(h: self), openMode)
  let slotval1 = gen_qiodevicebase.QIODeviceBaseOpenModeFlag(openMode)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_close(self: QLocalSocket, ): void =


  fQLocalSocket_virtualbase_close(self.h)

type QLocalSocketcloseBase* = proc(): void
proc onclose*(self: QLocalSocket, slot: proc(super: QLocalSocketcloseBase): void) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketcloseBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_close(self: ptr cQLocalSocket, slot: int): void {.exportc: "miqt_exec_callback_QLocalSocket_close ".} =
  type Cb = proc(super: QLocalSocketcloseBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_close(QLocalSocket(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_waitForBytesWritten(self: QLocalSocket, msecs: cint): bool =


  fQLocalSocket_virtualbase_waitForBytesWritten(self.h, msecs)

type QLocalSocketwaitForBytesWrittenBase* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: QLocalSocket, slot: proc(super: QLocalSocketwaitForBytesWrittenBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketwaitForBytesWrittenBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_waitForBytesWritten(self: ptr cQLocalSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QLocalSocket_waitForBytesWritten ".} =
  type Cb = proc(super: QLocalSocketwaitForBytesWrittenBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForBytesWritten(QLocalSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForReadyRead(self: QLocalSocket, msecs: cint): bool =


  fQLocalSocket_virtualbase_waitForReadyRead(self.h, msecs)

type QLocalSocketwaitForReadyReadBase* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: QLocalSocket, slot: proc(super: QLocalSocketwaitForReadyReadBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketwaitForReadyReadBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_waitForReadyRead(self: ptr cQLocalSocket, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QLocalSocket_waitForReadyRead ".} =
  type Cb = proc(super: QLocalSocketwaitForReadyReadBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForReadyRead(QLocalSocket(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_readData(self: QLocalSocket, param1: cstring, param2: clonglong): clonglong =


  fQLocalSocket_virtualbase_readData(self.h, param1, param2)

type QLocalSocketreadDataBase* = proc(param1: cstring, param2: clonglong): clonglong
proc onreadData*(self: QLocalSocket, slot: proc(super: QLocalSocketreadDataBase, param1: cstring, param2: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketreadDataBase, param1: cstring, param2: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_readData(self: ptr cQLocalSocket, slot: int, param1: cstring, param2: clonglong): clonglong {.exportc: "miqt_exec_callback_QLocalSocket_readData ".} =
  type Cb = proc(super: QLocalSocketreadDataBase, param1: cstring, param2: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring, param2: clonglong): auto =
    callVirtualBase_readData(QLocalSocket(h: self), param1, param2)
  let slotval1 = (param1)

  let slotval2 = param2


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_readLineData(self: QLocalSocket, data: cstring, maxSize: clonglong): clonglong =


  fQLocalSocket_virtualbase_readLineData(self.h, data, maxSize)

type QLocalSocketreadLineDataBase* = proc(data: cstring, maxSize: clonglong): clonglong
proc onreadLineData*(self: QLocalSocket, slot: proc(super: QLocalSocketreadLineDataBase, data: cstring, maxSize: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketreadLineDataBase, data: cstring, maxSize: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_readLineData(self: ptr cQLocalSocket, slot: int, data: cstring, maxSize: clonglong): clonglong {.exportc: "miqt_exec_callback_QLocalSocket_readLineData ".} =
  type Cb = proc(super: QLocalSocketreadLineDataBase, data: cstring, maxSize: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxSize: clonglong): auto =
    callVirtualBase_readLineData(QLocalSocket(h: self), data, maxSize)
  let slotval1 = (data)

  let slotval2 = maxSize


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_skipData(self: QLocalSocket, maxSize: clonglong): clonglong =


  fQLocalSocket_virtualbase_skipData(self.h, maxSize)

type QLocalSocketskipDataBase* = proc(maxSize: clonglong): clonglong
proc onskipData*(self: QLocalSocket, slot: proc(super: QLocalSocketskipDataBase, maxSize: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketskipDataBase, maxSize: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_skipData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_skipData(self: ptr cQLocalSocket, slot: int, maxSize: clonglong): clonglong {.exportc: "miqt_exec_callback_QLocalSocket_skipData ".} =
  type Cb = proc(super: QLocalSocketskipDataBase, maxSize: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(maxSize: clonglong): auto =
    callVirtualBase_skipData(QLocalSocket(h: self), maxSize)
  let slotval1 = maxSize


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_writeData(self: QLocalSocket, param1: cstring, param2: clonglong): clonglong =


  fQLocalSocket_virtualbase_writeData(self.h, param1, param2)

type QLocalSocketwriteDataBase* = proc(param1: cstring, param2: clonglong): clonglong
proc onwriteData*(self: QLocalSocket, slot: proc(super: QLocalSocketwriteDataBase, param1: cstring, param2: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketwriteDataBase, param1: cstring, param2: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_writeData(self: ptr cQLocalSocket, slot: int, param1: cstring, param2: clonglong): clonglong {.exportc: "miqt_exec_callback_QLocalSocket_writeData ".} =
  type Cb = proc(super: QLocalSocketwriteDataBase, param1: cstring, param2: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring, param2: clonglong): auto =
    callVirtualBase_writeData(QLocalSocket(h: self), param1, param2)
  let slotval1 = (param1)

  let slotval2 = param2


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_pos(self: QLocalSocket, ): clonglong =


  fQLocalSocket_virtualbase_pos(self.h)

type QLocalSocketposBase* = proc(): clonglong
proc onpos*(self: QLocalSocket, slot: proc(super: QLocalSocketposBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketposBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_pos(self: ptr cQLocalSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QLocalSocket_pos ".} =
  type Cb = proc(super: QLocalSocketposBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_pos(QLocalSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_size(self: QLocalSocket, ): clonglong =


  fQLocalSocket_virtualbase_size(self.h)

type QLocalSocketsizeBase* = proc(): clonglong
proc onsize*(self: QLocalSocket, slot: proc(super: QLocalSocketsizeBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketsizeBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_size(self: ptr cQLocalSocket, slot: int): clonglong {.exportc: "miqt_exec_callback_QLocalSocket_size ".} =
  type Cb = proc(super: QLocalSocketsizeBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_size(QLocalSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_seek(self: QLocalSocket, pos: clonglong): bool =


  fQLocalSocket_virtualbase_seek(self.h, pos)

type QLocalSocketseekBase* = proc(pos: clonglong): bool
proc onseek*(self: QLocalSocket, slot: proc(super: QLocalSocketseekBase, pos: clonglong): bool) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketseekBase, pos: clonglong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_seek(self: ptr cQLocalSocket, slot: int, pos: clonglong): bool {.exportc: "miqt_exec_callback_QLocalSocket_seek ".} =
  type Cb = proc(super: QLocalSocketseekBase, pos: clonglong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pos: clonglong): auto =
    callVirtualBase_seek(QLocalSocket(h: self), pos)
  let slotval1 = pos


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_atEnd(self: QLocalSocket, ): bool =


  fQLocalSocket_virtualbase_atEnd(self.h)

type QLocalSocketatEndBase* = proc(): bool
proc onatEnd*(self: QLocalSocket, slot: proc(super: QLocalSocketatEndBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketatEndBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_atEnd(self: ptr cQLocalSocket, slot: int): bool {.exportc: "miqt_exec_callback_QLocalSocket_atEnd ".} =
  type Cb = proc(super: QLocalSocketatEndBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_atEnd(QLocalSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_reset(self: QLocalSocket, ): bool =


  fQLocalSocket_virtualbase_reset(self.h)

type QLocalSocketresetBase* = proc(): bool
proc onreset*(self: QLocalSocket, slot: proc(super: QLocalSocketresetBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketresetBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_reset(self: ptr cQLocalSocket, slot: int): bool {.exportc: "miqt_exec_callback_QLocalSocket_reset ".} =
  type Cb = proc(super: QLocalSocketresetBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QLocalSocket(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_event(self: QLocalSocket, event: gen_qcoreevent.QEvent): bool =


  fQLocalSocket_virtualbase_event(self.h, event.h)

type QLocalSocketeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QLocalSocket, slot: proc(super: QLocalSocketeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_event(self: ptr cQLocalSocket, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QLocalSocket_event ".} =
  type Cb = proc(super: QLocalSocketeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QLocalSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QLocalSocket, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQLocalSocket_virtualbase_eventFilter(self.h, watched.h, event.h)

type QLocalSocketeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QLocalSocket, slot: proc(super: QLocalSocketeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_eventFilter(self: ptr cQLocalSocket, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QLocalSocket_eventFilter ".} =
  type Cb = proc(super: QLocalSocketeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QLocalSocket(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QLocalSocket, event: gen_qcoreevent.QTimerEvent): void =


  fQLocalSocket_virtualbase_timerEvent(self.h, event.h)

type QLocalSockettimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QLocalSocket, slot: proc(super: QLocalSockettimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLocalSockettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_timerEvent(self: ptr cQLocalSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLocalSocket_timerEvent ".} =
  type Cb = proc(super: QLocalSockettimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QLocalSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QLocalSocket, event: gen_qcoreevent.QChildEvent): void =


  fQLocalSocket_virtualbase_childEvent(self.h, event.h)

type QLocalSocketchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QLocalSocket, slot: proc(super: QLocalSocketchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_childEvent(self: ptr cQLocalSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLocalSocket_childEvent ".} =
  type Cb = proc(super: QLocalSocketchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QLocalSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QLocalSocket, event: gen_qcoreevent.QEvent): void =


  fQLocalSocket_virtualbase_customEvent(self.h, event.h)

type QLocalSocketcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QLocalSocket, slot: proc(super: QLocalSocketcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_customEvent(self: ptr cQLocalSocket, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QLocalSocket_customEvent ".} =
  type Cb = proc(super: QLocalSocketcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QLocalSocket(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QLocalSocket, signal: gen_qmetaobject.QMetaMethod): void =


  fQLocalSocket_virtualbase_connectNotify(self.h, signal.h)

type QLocalSocketconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QLocalSocket, slot: proc(super: QLocalSocketconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_connectNotify(self: ptr cQLocalSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLocalSocket_connectNotify ".} =
  type Cb = proc(super: QLocalSocketconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QLocalSocket(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QLocalSocket, signal: gen_qmetaobject.QMetaMethod): void =


  fQLocalSocket_virtualbase_disconnectNotify(self.h, signal.h)

type QLocalSocketdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QLocalSocket, slot: proc(super: QLocalSocketdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QLocalSocketdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQLocalSocket_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QLocalSocket_disconnectNotify(self: ptr cQLocalSocket, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QLocalSocket_disconnectNotify ".} =
  type Cb = proc(super: QLocalSocketdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QLocalSocket(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QLocalSocket): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQLocalSocket_staticMetaObject())
proc delete*(self: QLocalSocket) =
  fcQLocalSocket_delete(self.h)
